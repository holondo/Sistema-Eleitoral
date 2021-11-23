
CREATE DOMAIN papel AS VARCHAR(10)
CHECK (VALUE IN ('Apoio','Doador','Candidato','Sem função'));

CREATE TABLE individuo
(
	nome VARCHAR(100) NOT NULL,
	CPF VARCHAR(11),
	status_limpa bool default true,
	
	CONSTRAINT pk_individuo PRIMARY KEY(CPF) 
);


CREATE TABLE processo_judicial
(
	num_processo SERIAL,
	CPF VARCHAR(11),
	status_procedente BOOL default false,--True: Culpado, False= Inocente ate q se prove o contrario
	data_julgamento DATE,
	
	CONSTRAINT pk_processo_judicial PRIMARY KEY(num_processo),
	CONSTRAINT fk_individuo_processo FOREIGN KEY(CPF) REFERENCES individuo(CPF) on delete cascade
);

CREATE TABLE partido
(
	cod_partido integer,
	nome VARCHAR(100) NOT NULL,
	
	CONSTRAINT pk_partido PRIMARY KEY(cod_partido)
);

CREATE TABLE candidato
(
	CPF VARCHAR(11),
	partido integer,
	
	CONSTRAINT pk_candidato PRIMARY KEY(CPF),
	CONSTRAINT fk_individuo_candidato FOREIGN KEY (CPF) REFERENCES individuo(CPF) on delete cascade,
	CONSTRAINT fk_candidato_partido FOREIGN KEY (partido) REFERENCES partido(cod_partido) on delete set null	
);


CREATE TABLE programa_partido
(
	cod_partido integer,
	descricao VARCHAR(500),
	
	CONSTRAINT pk_programa PRIMARY KEY(cod_partido),
	CONSTRAINT fk_programa_partido FOREIGN KEY(cod_partido) REFERENCES partido(cod_partido) on delete cascade
);


CREATE TABLE individuo_juridico
(
	CNPJ VARCHAR(14),
	nome VARCHAR(100) NOT NULL,
	
	CONSTRAINT pk_juridico PRIMARY KEY(CNPJ)
);


CREATE DOMAIN tipo_localidade
as VARCHAR(9)
CHECK(VALUE in ('cidade', 'estado', 'federacao'));

CREATE TABLE localidade
(
	id serial,
	tipo tipo_localidade NOT NULL,
	
	CONSTRAINT pk_localidade PRIMARY KEY(id)
);

CREATE TABLE federacao
(
	id integer,
	nome VARCHAR(100) NOT NULL,
	
	CONSTRAINT pk_federacao PRIMARY KEY(id),
	CONSTRAINT fk_federacao FOREIGN KEY(id) REFERENCES localidade(id) on delete cascade,
	CONSTRAINT un_federacao UNIQUE(nome)
);

CREATE DOMAIN UnidadeFederativa AS VARCHAR(2)
CHECK (VALUE IN ('RJ','SP','ES','MG','PR','SC','RS','MS','GO','AC','AL','AP','AM','BA','CE','DF','MA','MT','PA','PB','PE','PI','RN','RO','RR','SE','TO'));


CREATE TABLE estado
(
	id integer,
	UF UnidadeFederativa,
	nome varchar(100),
	
	CONSTRAINT pk_estado PRIMARY KEY(id),
	CONSTRAINT fk_estado FOREIGN KEY(id) REFERENCES localidade(id) on delete cascade,
	CONSTRAINT un_UF UNIQUE(UF)
);


CREATE TABLE cidade
(
	id integer,
	nome VARCHAR(100),
	UF unidadefederativa,
	
	CONSTRAINT pk_cidade PRIMARY KEY(id),
	CONSTRAINT fk_id_cidade FOREIGN KEY(id) REFERENCES localidade(id) on delete cascade,
	CONSTRAINT fk_uf_cidade FOREIGN KEY(UF) REFERENCES estado(UF) on delete cascade,
	CONSTRAINT un_cidade_uf UNIQUE(nome, UF)
);


CREATE TABLE cargo
(
	nome VARCHAR(100),
	localidade integer,
	quant_eleitos integer DEFAULT 1,
	check (quant_eleitos > 0),
	CONSTRAINT pk_cargo PRIMARY KEY(nome, localidade),
	CONSTRAINT fk_localidade_cargo FOREIGN KEY(localidade) references localidade(id) on delete cascade
);

-- --------------------------CANDIDATURA------------------
CREATE TABLE CANDIDATURA
(
	cod_candidatura serial,
	nome_cargo varchar(100),
	localidade integer,
	CPF_candidato varchar(11),
	ano integer NOT NULL,
	vice varchar(11),
	
	CONSTRAINT pk_candidatura PRIMARY KEY(cod_candidatura),
	CONSTRAINT un_cadidato_ano UNIQUE(CPF_candidato, ano),
	CONSTRAINT fk_candidatura_cargo FOREIGN KEY(nome_cargo, localidade) REFERENCES cargo(nome, localidade) on delete cascade,
	CONSTRAINT fk_candidatura_vice FOREIGN KEY(vice) REFERENCES candidato(CPF) on delete set NULL
);


CREATE TABLE doacao_pf
(
	cod_doacao serial,
	CPF varchar(11),
	cod_candidatura integer,
	valor real,
	check(valor > 0),
	CONSTRAINT pk_cod_doacao PRIMARY KEY (cod_doacao),
	CONSTRAINT fk_doacao_pf_candidatura FOREIGN KEY (cod_candidatura) REFERENCES CANDIDATURA(cod_candidatura) on delete cascade,
	CONSTRAINT fk_CPF_doacao FOREIGN KEY(CPF) REFERENCES individuo(CPF) on delete cascade
);


CREATE TABLE doacao_pj
(
	CNPJ varchar(11),
	cod_candidatura integer,
	valor real,
	check(valor > 0),
	CONSTRAINT pk_CNPJ_candidatura PRIMARY KEY (CNPJ, cod_candidatura),
	CONSTRAINT fk_doacao_pj_candidatura FOREIGN KEY (cod_candidatura) REFERENCES CANDIDATURA(cod_candidatura) on delete cascade,
	CONSTRAINT fk_CNPJ_doacao FOREIGN KEY(CNPJ) REFERENCES individuo_juridico(CNPJ)
);


CREATE TABLE pleito
(
	cod_candidatura integer,
	num_votos integer,
	resultado bool default false,
	ANO integer,
	
	CONSTRAINT pk_cod_candidatura PRIMARY KEY(cod_candidatura),
	CONSTRAINT fk_candidatura FOREIGN KEY(cod_candidatura) REFERENCES CANDIDATURA(cod_candidatura) on delete cascade
);


CREATE TABLE participante_equipe_apoio
(
	cod_participante serial,
	CPF VARCHAR(11),
	cod_candidatura integer,
	ano integer DEFAULT 0,
	
	CONSTRAINT pk_participante_apoio PRIMARY KEY (CPF, ano),
	CONSTRAINT fk_participante_apoio FOREIGN KEY(CPF) REFERENCES individuo(CPF) ON delete cascade,
	CONSTRAINT fk_candidatura_ano FOREIGN KEY(cod_candidatura) REFERENCES candidatura(cod_candidatura) on delete cascade--trigger p/ ano
);
	
-- --------------------------------TRIGGERS---------------------------------------

-- --1 -> VERIFICA SE CANDIDATO É FICHA LIMPA
CREATE OR REPLACE FUNCTION individuo_to_candidato() RETURNS TRIGGER AS $individuo_to_candidato$
DECLARE 
	ficha BOOL;
BEGIN
	SELECT status_limpa INTO ficha FROM individuo WHERE CPF = NEW.CPF;
	
	IF ficha = FALSE THEN
		RAISE EXCEPTION 'Um individuo  ficha suja não pode se candidatar';
	END IF;
	RETURN NEW;
END;
$individuo_to_candidato$ LANGUAGE plpgsql;

CREATE TRIGGER check_individuo_to_candidato
BEFORE INSERT ON candidato
FOR EACH ROW EXECUTE PROCEDURE individuo_to_candidato();
	
--insere ano do pleito
CREATE OR REPLACE FUNCTION ano_pleito() RETURNS TRIGGER AS $ano_pleito$
DECLARE 
    ano_pleito integer;
BEGIN
    SELECT ano INTO ano_pleito FROM CANDIDATURA WHERE cod_candidatura = NEW.cod_candidatura;
    NEW.ano = ano_pleito;
    RETURN NEW;
END;
$ano_pleito$ LANGUAGE plpgsql;

CREATE TRIGGER ano_pleito
BEFORE INSERT ON pleito

FOR EACH ROW EXECUTE PROCEDURE ano_pleito();

--verifica quantidade de eleitos
CREATE OR REPLACE FUNCTION max_eleitos() RETURNS TRIGGER AS $max_eleitos$
DECLARE
	max_eleitos integer;
	total_eleitos integer;
	cargo_nome varchar(100);
	localidade_cargo integer;
BEGIN
	IF NEW.RESULTADO = TRUE THEN
		SELECT COUNT(*) INTO total_eleitos FROM PLEITO WHERE ANO = NEW.ANO AND RESULTADO = TRUE;
		SELECT nome_cargo, localidade into cargo_nome, localidade_cargo from CANDIDATURA WHERE cod_candidatura = NEW.cod_candidatura;

		select quant_eleitos into max_eleitos from cargo where nome = cargo_nome and localidade = localidade_cargo;

		IF (total_eleitos + 1) > max_eleitos THEN
			RAISE EXCEPTION 'Numero maximo de candidato eleitos para este cargo neste ano';
			NEW.RESULTADO = FALSE;
		END IF;
	END IF;
	RETURN NEW;
END
$max_eleitos$ LANGUAGE plpgsql;

CREATE TRIGGER max_eleitos
BEFORE INSERT or UPDATE ON pleito

FOR EACH ROW EXECUTE PROCEDURE max_eleitos();

-- --2 -> ATUALIZA STATUS FICHA LIMPA DO INDIVIDUO
CREATE OR REPLACE FUNCTION processos_individuo() RETURNS TRIGGER AS $processos_individuo$
BEGIN
	
	IF(TG_OP = 'DELETE') THEN
		PERFORM * FROM processo_judicial WHERE CPF = OLD.CPF;
		IF NOT FOUND THEN
			UPDATE individuo SET status_limpa = TRUE WHERE CPF = OLD.CPF;
		END IF;
	ELSIF(TG_OP = 'UPDATE' OR TG_OP = 'INSERT') THEN
		IF NEW.status_procedente = TRUE THEN
			IF NEW.data_julgamento >= (CURRENT_DATE - 5) THEN
				UPDATE individuo SET status_limpa = FALSE WHERE CPF = NEW.CPF;
			END IF;
		END IF;
	END IF;
	
	RETURN NULL;
END;
$processos_individuo$ LANGUAGE plpgsql;

CREATE TRIGGER processos_individuo
AFTER INSERT OR UPDATE OR DELETE ON processo_judicial
FOR EACH ROW EXECUTE PROCEDURE processos_individuo();


-- --5 ATUALIZA LOCALIDADE
CREATE OR REPLACE FUNCTION cidade_to_localidade() RETURNS TRIGGER AS $cidade_to_localidade$
BEGIN

	INSERT INTO localidade VALUES (DEFAULT, 'cidade');
	NEW.id = (select max(localidade.id) from localidade);
	
	RETURN NEW;
END;
$cidade_to_localidade$ LANGUAGE plpgsql;

CREATE TRIGGER cidade_to_localidade
BEFORE INSERT ON cidade
FOR EACH ROW EXECUTE PROCEDURE cidade_to_localidade();

-- --6 ATUALIZA LOCALIDADE
CREATE OR REPLACE FUNCTION estado_to_localidade() RETURNS TRIGGER AS $estado_to_localidade$
BEGIN

	INSERT INTO localidade VALUES (DEFAULT, 'estado');
	NEW.id = (select max(localidade.id) from localidade);
	
	RETURN NEW;
END;
$estado_to_localidade$ LANGUAGE plpgsql;

CREATE TRIGGER estado_to_localidade
BEFORE INSERT ON estado
FOR EACH ROW EXECUTE PROCEDURE estado_to_localidade();

-- --7 ATUALIZA LOCALIDADE
CREATE OR REPLACE FUNCTION federacao_to_localidade() RETURNS TRIGGER AS $federacao_to_localidade$
BEGIN

	INSERT INTO localidade VALUES (DEFAULT, 'federacao');
	NEW.id = (select max(localidade.id) from localidade);
	
	RETURN NEW;
END;
$federacao_to_localidade$ LANGUAGE plpgsql;

CREATE TRIGGER federacao_to_localidade
BEFORE INSERT ON federacao
FOR EACH ROW EXECUTE PROCEDURE federacao_to_localidade();

-- --8 SETA ANO DO APOIO DE ACORDO COM CANDIDATURA
CREATE OR REPLACE FUNCTION apoio_candidatura() RETURNS TRIGGER AS $apoio_candidatura$
DECLARE 
    ano_candidatura integer;
BEGIN
    SELECT ano INTO ano_candidatura FROM CANDIDATURA WHERE cod_candidatura = NEW.cod_candidatura;
    NEW.ano = ano_candidatura;
	
	--VERIFICA SE INDIVIDUO JA PARTICIPA DE EQUIPE DE APOIO NO ANO
	PERFORM * FROM participante_equipe_apoio WHERE CPF = NEW.CPF AND ANO = NEW.ANO;
	IF FOUND THEN
		RAISE EXCEPTION 'Individuo ja participa de uma equipe de apoio neste ano';
		RETURN NULL;
	END IF;
    RETURN NEW;
END;
$apoio_candidatura$ LANGUAGE plpgsql;

CREATE TRIGGER apoio_candidatura
BEFORE INSERT ON participante_equipe_apoio

FOR EACH ROW EXECUTE PROCEDURE apoio_candidatura();

/*
-----------------INSERT -------------------
INSERT INTO individuo VALUES('Joao', '11111');
INSERT INTO individuo VALUES('Maria', '11112');
INSERT INTO individuo VALUES('Jose', '11113');
INSERT INTO individuo VALUES('Antonio', '11114');

INSERT INTO processo_judicial VALUES(default, '11111', true, CURRENT_DATE - 2);
INSERT INTO processo_judicial VALUES(default, '11112', true, CURRENT_DATE - 6);
INSERT INTO processo_judicial VALUES(default, '11113', true, CURRENT_DATE);

INSERT INTO partido VALUES(133, 'PTC');
INSERT INTO partido VALUES(172, 'PTV');
INSERT INTO partido VALUES(321, 'PTA');

select * from individuo 
inner join processo_judicial pj on pj.CPF = individuo.CPF; 

INSERT INTO candidato VALUES('11112', 172);
INSERT INTO candidato VALUES('11114', 321);

INSERT INTO programa_partido VALUES(133, 'Partido Trabalho Comunista');
INSERT INTO programa_partido VALUES(172, 'Partido Trabalhador Verde');
INSERT INTO programa_partido VALUES(321, 'Partido Teologo Aspirante');

INSERT INTO individuo_juridico VALUES('000001', 'lojinha da esquina');
INSERT INTO individuo_juridico VALUES('000002', 'mecanico de autos');
INSERT INTO individuo_juridico VALUES('000003', 'cabeleleira leila');

INSERT INTO federacao VALUES(1, 'Brasil');

INSERT INTO estado VALUES(1, 'SP', 'Sao Paulo');
INSERT INTO estado VALUES(1, 'MG', 'Minas Gerais');
INSERT INTO estado VALUES(1, 'RJ', 'Rio de Janeiro');

INSERT INTO cidade VALUES(1, 'Americana','SP');
INSERT INTO cidade VALUES(1, 'Valinhos','MG');
INSERT INTO cidade VALUES(1, 'SBO', 'SP');

INSERT INTO cargo VALUES('presidente', 1);
INSERT INTO cargo VALUES('prefeito', 3);
INSERT INTO cargo VALUES('deputado', 6);

INSERT INTO CANDIDATURA VALUES(DEFAULT, 'presidente', 1, '11112', 2021, '11114');

INSERT INTO doacao_pf VALUES(DEFAULT, '11111', 1, 111.14);

INSERT INTO doacao_pj VALUES('000001', 1, 111.14);

INSERT INTO pleito VALUES(1, 1110);

INSERT INTO participante_equipe_apoio VALUES(DEFAULT, '11113', 1, 2019);




*/

