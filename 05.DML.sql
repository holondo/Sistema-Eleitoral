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

--cidades e estados chave para exemplificação
--BRASIL id:1

--SP - Sao Paulo, Campinas, São carlos
--PR - Curitiba
----------------------------------------------------temp div-----------------------------------

-- individuo (nome,CPF)

-- processo_judicial (default,CPF,status_procedente,data_julgamento)


-- partido (cod_partido,nome)

-- candidato (CPF,partido(int))

-- programa_partido (cod_partido(int),descricao)


--individuo_juridico (CNPJ,nome)

--CREATE DOMAIN tipo_localidade CHECK(VALUE in ('cidade', 'estado', 'federacao'));


--CHECK (VALUE IN ('RJ','SP','ES','MG','PR','SC','RS','MS','GO','AC','AL','AP','AM','BA','CE','DF','MA','MT','PA','PB','PE','PI','RN','RO','RR','SE','TO'));

INSERT INTO federacao VALUES(1, 'Brasil');

INSERT INTO estado VALUES(1, 'SP', 'Sao Paulo');
INSERT INTO estado VALUES(1, 'MG', 'Minas Gerais');
INSERT INTO estado VALUES(1, 'RJ', 'Rio de Janeiro');

INSERT INTO cidade VALUES(1, 'Americana','SP');
INSERT INTO cidade VALUES(1, 'Valinhos','MG');
INSERT INTO cidade VALUES(1, 'SBO', 'SP');
--cargo (nome,localidade,quant_eleitos)

-- CANDIDATURA (default,nome_cargo,localidade,CPF_candidato,ano,vice)

--doacao_pf (default,CPF,cod_candidatura,valor)

--doacao_pj(CNPJ,cod_candidatura,valor)

--pleito(cod_candidatura,num_votos)

--participante_equipe_apoio(default,CPF,cod_candidatura,ano)