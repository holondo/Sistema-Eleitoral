CREATE TABLE individuo
(
	nome VARCHAR(100) NOT NULL,
	CPF VARCHAR(11),
	status_ficha bool,
	
	CONSTRAINT pk_individuo PRIMARY KEY(CPF) 
);

CREATE TABLE processo_judicial
(
	num_processo SERIAL,
	CPF VARCHAR(11),
	status_procedente BOOL,
	status_julgamento BOOL,
	data_julgamento DATE,
	
	CONSTRAINT pk_processo_judicial PRIMARY KEY(num_processo),
	CONSTRAINT fk_individuo_processo FOREIGN KEY(CPF) REFERENCES individuo(CPF)
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
	CONSTRAINT fk_individuo_candidato FOREIGN KEY (CPF) REFERENCES individuo(CPF),
	CONSTRAINT fk_candidato_partido FOREIGN KEY (partido) REFERENCES partido(cod_partido)
	
);

CREATE TABLE programa_partido
(
	cod_partido integer,
	descricao VARCHAR(500),
	
	CONSTRAINT pk_programa PRIMARY KEY(cod_partido),
	CONSTRAINT fk_programa_partido FOREIGN KEY(cod_partido) REFERENCES partido(cod_partido)
);

CREATE TABLE individuo_juridico
(
	CNPJ VARCHAR(14),
	nome VARCHAR(100) NOT NULL,
	
	CONSTRAINT pk_juridico PRIMARY KEY(CNPJ)
);

-- CREATE TABLE doador_campanha
-- (
-- 	CPF VARCHAR(11),
-- 	CNPJ VARCHAR(14),
-- 	tipo BOOL,
	
-- 	CONSTRAINT pk_doador PRIMARY KEY(CPF),
-- 	CONSTRAINT fk_doador_fisico FOREIGN KEY(CPF) REFERENCES individuo(CPF),
-- 	CONSTRAINT fk_doador_juridico FOREIGN KEY(CNPJ) REFERENCES individuo_juridico(CNPJ),
-- 	CHECK((CPF != NULL and CNPJ = NULL and tipo = FALSE) or (CPF = NULL and CNPJ != NULL and tipo = TRUE))
-- );


CREATE DOMAIN tipo_localidade
as VARCHAR(9)
CHECK(VALUE in ('cidade', 'estado', 'federacao'));

CREATE TABLE localidade
(
	id serial,
	tipo tipo_localidade NOT NULL,
	num_habitantes integer,
	
	CONSTRAINT pk_localidade PRIMARY KEY(id)
);

CREATE TABLE federacao
(
	id integer,
	nome VARCHAR(100) NOT NULL,
	
	CONSTRAINT pk_federacao PRIMARY KEY(id),
	CONSTRAINT fk_federacao FOREIGN KEY(id) REFERENCES localidade(id),
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
	CONSTRAINT fk_estado FOREIGN KEY(id) REFERENCES localidade(id),
	CONSTRAINT un_UF UNIQUE(UF)
);

CREATE TABLE cidade
(
	id integer,
	nome VARCHAR(100),
	UF unidadefederativa,
	
	CONSTRAINT pk_cidade PRIMARY KEY(id),
	CONSTRAINT fk_id_cidade FOREIGN KEY(id) REFERENCES localidade(id),
	CONSTRAINT fk_uf_cidade FOREIGN KEY(UF) REFERENCES estado(UF),
	CONSTRAINT un_cidade_uf UNIQUE(nome, UF)
);

CREATE TABLE cargo
(
	nome VARCHAR(100),
	localidade integer,
	quant_eleitos integer DEFAULT 0,
	
	CONSTRAINT pk_cargo PRIMARY KEY(nome, localidade),
	CONSTRAINT fk_localidade_cargo FOREIGN KEY(localidade) references localidade(id)
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
	--vice?
	CONSTRAINT fk_candidatura_cargo FOREIGN KEY(nome_cargo, localidade) REFERENCES cargo(nome, localidade),
	CONSTRAINT fk_candidatura_vice FOREIGN KEY(vice) REFERENCES candidato(CPF)
);

-- CREATE TABLE doacao_campanha
-- (
-- 	cod_doacao serial,
-- 	cod_doador varchar(11),
-- 	cod_candidatura integer,
-- 	valor real,
	
-- 	CONSTRAINT pk_cod_doacao PRIMARY KEY (cod_doacao),
-- 	CONSTRAINT fk_cod_candidatura FOREIGN KEY (cod_candidatura) REFERENCES CANDIDATURA(cod_candidatura) ,
-- 	CONSTRAINT fk_cod_doador FOREIGN KEY(cod_doador) REFERENCES doador_campanha(CPF)
-- )

CREATE TABLE pleito
(
	cod_candidatura integer,
	num_votos integer,
	
	CONSTRAINT pk_cod_candidatura PRIMARY KEY(cod_candidatura),
	CONSTRAINT fk_candidatura FOREIGN KEY(cod_candidatura) REFERENCES CANDIDATURA(cod_candidatura)

)

-- CREATE TABLE equipe_apoio
-- (
-- 	cod_equipe_apoio serial,
-- 	cod_candidatura integer,
-- 	nome VARCHAR(100),
-- 	num_participantes integer,
-- 	ano integer,
	
-- 	CONSTRAINT pk_cod_equipe_apoio PRIMARY KEY(cod_equipe_apoio),
-- 	CONSTRAINT fk_cod_candidatura FOREIGN KEY(cod_candidatura) REFERENCES CANDIDATURA(cod_candidatura)
-- )

CREATE TABLE participante_equipe_apoio
(
	cod_participante serial,
	CPF VARCHAR(11),
	cod_candidatura integer,
	ano integer,
	
	CONSTRAINT pk_participante_apoio PRIMARY KEY (CPF),
	CONSTRAINT fk_participante_apoio FOREIGN KEY(CPF) REFERENCES individuo(CPF)
	CONSTRAINT fk_candidatura_ano FOREIGN KEY(cod_candidatura, ano) REFERENCES candidatura(cod_candidatura, ano)
)
	
	
-- --------------------------------TRIGGERS---------------------------------------

-- --1 -> VERIFICA SE CANDIDATO É FICHA LIMPA
CREATE OR REPLACE FUNCTION individuo_to_candidato() RETURNS TRIGGER AS $individuo_to_candidato$
DECLARE 
	ficha BOOL;
BEGIN
	SELECT status_ficha INTO ficha FROM individuo WHERE CPF = NEW.CPF;
	
	IF ficha = FALSE THEN
		RAISE EXCEPTION 'Um individuo  ficha suja não pode se candidatar';
	END IF;
	RETURN NEW;
END;
$individuo_to_candidato$ LANGUAGE plpgsql;

CREATE TRIGGER check_individuo_to_candidato
BEFORE INSERT ON candidato
FOR EACH ROW EXECUTE PROCEDURE individuo_to_candidato();
	

-- --2 -> ATUALIZA STATUS FICHA LIMPA DO INDIVIDUO
CREATE OR REPLACE FUNCTION processos_individuo() RETURNS TRIGGER AS $processos_individuo$
BEGIN
	
	IF(TG_OP = 'DELETE') THEN
		PERFORM * FROM processo_judicial WHERE CPF = OLD.CPF;
		IF NOT FOUND THEN
			UPDATE individuo SET status_ficha = TRUE WHERE CPF = OLD.CPF;
		END IF;
	ELSIF(TG_OP = 'UPDATE' OR TG_OP = 'INSERT') THEN
		IF OLD.status_julgamento = TRUE THEN
			IF OLD.data_julgamento >= (CURRENT_DATE - 5) THEN
				UPDATE individuo SET status_ficha = FALSE WHERE CPF = OLD.CPF;
			END IF;
		END IF;
	END IF;
	
	RETURN NULL;
END;
$processos_individuo$ LANGUAGE plpgsql;

CREATE TRIGGER processos_individuo
AFTER INSERT OR UPDATE OR DELETE ON processo_judicial
FOR EACH ROW EXECUTE PROCEDURE processos_individuo();

-- --3 VERIFICA SE INDIVIDUO JA PARTICIPA DE EQUIPE DE APOIO
CREATE OR REPLACE FUNCTION equipe_apoio_individuo() RETURNS TRIGGER AS $equipe_apoio_individuo$
BEGIN
	
	PERFORM * FROM participante_equipe_apoio WHERE CPF = NEW.CPF;
	IF FOUND THEN
		RAISE EXCEPTION 'Individuo ja participa de uma equipe de apoio';
	END IF
	RETURN NEW;
	
END;
$equipe_apoio_individuo$ LANGUAGE plpgsql;

CREATE TRIGGER equipe_apoio_individuo
BEFORE INSERT ON participante_equipe_apoio
FOR EACH ROW EXECUTE PROCEDURE equipe_apoio_individuo();
	
-- --4 VERIFICA SE DOADOR JA DOOU PARA CANDIDATURA
	CREATE OR REPLACE FUNCTION doacao_campanha() RETURNS TRIGGER AS $doacao_campanha$
BEGIN
	
	IF (SELECT tipo FROM doador_campanha WHERE cpf_doador = NEW.cod_doador) = FALSE THEN
		PERFORM * FROM doacao_campanha WHERE cod_doador = NEW.cod_doador;
		IF FOUND THEN
			RAISE EXCEPTION 'Individuo ja doou para uma campanha este ano';
		END IF;
	END IF;
	RETURN NEW;
	
END;
$doacao_campanha$ LANGUAGE plpgsql;

CREATE TRIGGER doacao_campanha
BEFORE INSERT ON doacao_campanha
FOR EACH ROW EXECUTE PROCEDURE doacao_campanha();

-- --5 ATUALIZA LOCALIDADE
CREATE OR REPLACE FUNCTION cidade_to_localidade() RETURNS TRIGGER AS $cidade_to_localidade$
BEGIN

	INSERT INTO localidade VALUES (DEFAULT, 'cidade', 1000);
	NEW.id = (select max(localidade.id) from localidade);
	
	RETURN NEW;
END;
$cidade_to_localidade$ LANGUAGE plpgsql;

CREATE TRIGGER cidade_to_localidade
BEFORE INSERT ON cidade
FOR EACH ROW EXECUTE PROCEDURE cidade_to_localidade();























