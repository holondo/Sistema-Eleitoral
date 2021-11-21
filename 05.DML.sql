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
----------------------------------------------------temp div-----------------------------------

--cidades e estados chave para exemplificação
--BRASIL id:1

--SP - Sao Paulo, Campinas, São carlos
--PR - Curitiba
----------------------------------------------------temp div-----------------------------------

-- individuo (nome,CPF)

-- processo_judicial (default,CPF,status_procedente,data_julgamento)

-- partido (cod_partido,nome)
INSERT INTO partido VALUES(19,'Partido Trabalhista Nacional');
INSERT INTO partido VALUES(50,'Partido Socialismo E Liberdade');
INSERT INTO partido VALUES(15,'Partido Do Movimento Democrático Brasileiro');
INSERT INTO partido VALUES(45,'Partido Da Social Democracia Brasileira');
INSERT INTO partido VALUES(14,'Partido Trabalhista Brasileiro');
INSERT INTO partido VALUES(36,'Partido Trabalhista Cristão');
INSERT INTO partido VALUES(23,'Partido Popular Socialista');
INSERT INTO partido VALUES(54,'Partido Pátria Livre');
INSERT INTO partido VALUES(11,'Partido Progressista');
INSERT INTO partido VALUES(43,'Partido Verde');
INSERT INTO partido VALUES(10,'Partido Republicano Brasileiro');
INSERT INTO partido VALUES(22,'Partido Da República');
INSERT INTO partido VALUES(65,'Partido Comunista Do Brasil');
INSERT INTO partido VALUES(44,'Partido Republicano Progressista');
INSERT INTO partido VALUES(70,'Partido Trabalhista Do Brasil');
INSERT INTO partido VALUES(25,'Democratas');
INSERT INTO partido VALUES(20,'Partido Social Cristão');
INSERT INTO partido VALUES(13,'Partido Dos Trabalhadores');
INSERT INTO partido VALUES(12,'Partido Democrático Trabalhista');
INSERT INTO partido VALUES(27,'Partido Social Democrata Cristão');
INSERT INTO partido VALUES(17,'Partido Social Liberal');
INSERT INTO partido VALUES(40,'Partido Socialista Brasileiro');
INSERT INTO partido VALUES(31,'Partido Humanista Da Solidariedade');
INSERT INTO partido VALUES(77,'Solidariedade');
INSERT INTO partido VALUES(55,'Partido Social Democrático');
INSERT INTO partido VALUES(90,'Partido Republicano Da Ordem Social');
INSERT INTO partido VALUES(33,'Partido Da Mobilização Nacional');
INSERT INTO partido VALUES(51,'Partido Ecológico Nacional');
INSERT INTO partido VALUES(28,'Partido Renovador Trabalhista Brasileiro');
INSERT INTO partido VALUES(16,'Partido Socialista Dos Trabalhadores Unificado');
INSERT INTO partido VALUES(21,'Partido Comunista Brasileiro');
INSERT INTO partido VALUES(29,'Partido Da Causa Operária');
INSERT INTO partido VALUES(35,'Partido Da Mulher Brasileira');
INSERT INTO partido VALUES(18,'Rede Sustentabilidade');
INSERT INTO partido VALUES(30,'Partido Novo');
INSERT INTO partido VALUES(80,'Unidade Popular');

-- candidato (CPF,partido(int))

-- programa_partido (cod_partido(int),descricao)
INSERT INTO programa_partido VALUES(19,'PODE :  Partido Trabalhista Nacional :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(50,'PSOL :  Partido Socialismo E Liberdade :  ');
INSERT INTO programa_partido VALUES(15,'PMDB :  Partido Do Movimento Democrático Brasileiro :  Aliança Por Um Acre Melhor');
INSERT INTO programa_partido VALUES(45,'PSDB :  Partido Da Social Democracia Brasileira :  Aliança Por Um Acre Melhor');
INSERT INTO programa_partido VALUES(14,'PTB :  Partido Trabalhista Brasileiro :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(36,'PTC :  Partido Trabalhista Cristão :  Aliança Por Um Acre Melhor I - Federal');
INSERT INTO programa_partido VALUES(23,'PPS :  Partido Popular Socialista :  Aliança Por Um Acre Melhor Iii');
INSERT INTO programa_partido VALUES(54,'PPL :  Partido Pátria Livre :  Frente Trabalhista Republicana Humanista Livre');
INSERT INTO programa_partido VALUES(11,'PP :  Partido Progressista :  Aliança Por Um Acre Melhor');
INSERT INTO programa_partido VALUES(43,'PV :  Partido Verde :  Produzir Para Empregar');
INSERT INTO programa_partido VALUES(10,'PRB :  Partido Republicano Brasileiro :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(22,'PR :  Partido Da República :  Aliança Por Um Acre Melhor');
INSERT INTO programa_partido VALUES(65,'PC do B :  Partido Comunista Do Brasil :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(44,'PRP :  Partido Republicano Progressista :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(70,'AVANTE :  Partido Trabalhista Do Brasil :  Aliança Por Um Acre Melhor Ii');
INSERT INTO programa_partido VALUES(25,'DEM :  Democratas :  Produzir Para Empregar');
INSERT INTO programa_partido VALUES(20,'PSC :  Partido Social Cristão :  Aliança Por Um Acre Melhor');
INSERT INTO programa_partido VALUES(13,'PT :  Partido Dos Trabalhadores :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(12,'PDT :  Partido Democrático Trabalhista :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(27,'PSDC :  Partido Social Democrata Cristão :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(17,'PSL :  Partido Social Liberal :  Frente Popular Do Acre Ii');
INSERT INTO programa_partido VALUES(40,'PSB :  Partido Socialista Brasileiro :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(31,'PHS :  Partido Humanista Da Solidariedade :  Frente Popular Do Acre');
INSERT INTO programa_partido VALUES(77,'SOLIDARIEDADE :  Solidariedade :  Aliança Por Um Acre Melhor I - Federal');
INSERT INTO programa_partido VALUES(55,'PSD :  Partido Social Democrático :  Aliança Por Um Acre Melhor');
INSERT INTO programa_partido VALUES(90,'PROS :  Partido Republicano Da Ordem Social :  Frente Popular Do Acre Ii');
INSERT INTO programa_partido VALUES(33,'PMN :  Partido Da Mobilização Nacional :  Produzir Para Empregar');
INSERT INTO programa_partido VALUES(51,'PATRIOTA :  Partido Ecológico Nacional :  Frente Popular Do Acre 5');
INSERT INTO programa_partido VALUES(28,'PRTB :  Partido Renovador Trabalhista Brasileiro :  O Futuro Começa Agora');
INSERT INTO programa_partido VALUES(16,'PSTU :  Partido Socialista Dos Trabalhadores Unificado :  ');
INSERT INTO programa_partido VALUES(21,'PCB :  Partido Comunista Brasileiro :  ');
INSERT INTO programa_partido VALUES(29,'PCO :  Partido Da Causa Operária :  ');
INSERT INTO programa_partido VALUES(35,'PMB :  Partido Da Mulher Brasileira :  Por Um Novo Amazonas');
INSERT INTO programa_partido VALUES(18,'REDE :  Rede Sustentabilidade :  O Começo De Uma Grande Mudança');
INSERT INTO programa_partido VALUES(30,'NOVO :  Partido Novo :  ');
INSERT INTO programa_partido VALUES(80,'UP :  Unidade Popular :  ');

--individuo_juridico (CNPJ,nome)

INSERT INTO federacao VALUES(1, 'Brasil');

INSERT INTO estado VALUES(1, 'SP', 'Sao Paulo');
INSERT INTO estado VALUES(1, 'MG', 'Minas Gerais');
INSERT INTO estado VALUES(1, 'RJ', 'Rio de Janeiro');
INSERT INTO estado VALUES(1, 'AC','Acre');
INSERT INTO estado VALUES(1, 'AL','Alagoas');
INSERT INTO estado VALUES(1, 'AM','Amazonas');
INSERT INTO estado VALUES(1, 'AP','Amapá');
INSERT INTO estado VALUES(1, 'BA','Bahia');
INSERT INTO estado VALUES(1, 'CE','Ceará');
INSERT INTO estado VALUES(1, 'DF','Distrito Federal');
INSERT INTO estado VALUES(1, 'ES','Espírito Santo');
INSERT INTO estado VALUES(1, 'GO','Goiás');
INSERT INTO estado VALUES(1, 'MA','Maranhão');
INSERT INTO estado VALUES(1, 'MG','Minas Gerais');
INSERT INTO estado VALUES(1, 'MS','Mato Grosso do Sul');
INSERT INTO estado VALUES(1, 'MT','Mato Grosso');
INSERT INTO estado VALUES(1, 'PA','Pará');
INSERT INTO estado VALUES(1, 'PB','Paraíba');
INSERT INTO estado VALUES(1, 'PE','Pernambuco');
INSERT INTO estado VALUES(1, 'PI','Piauí');
INSERT INTO estado VALUES(1, 'PR','Paraná');
INSERT INTO estado VALUES(1, 'RJ','Rio de Janeiro');
INSERT INTO estado VALUES(1, 'RN','Rio Grande do Norte');
INSERT INTO estado VALUES(1, 'RO','Rondônia');
INSERT INTO estado VALUES(1, 'RR','Roraima');
INSERT INTO estado VALUES(1, 'RS','Rio Grande do Sul');
INSERT INTO estado VALUES(1, 'SC','Santa Catarina');
INSERT INTO estado VALUES(1, 'SE','Sergipe');
INSERT INTO estado VALUES(1, 'SP','São Paulo');
INSERT INTO estado VALUES(1, 'TO','Tocantins');

INSERT INTO cidade VALUES(1, 'Campinas','SP');
INSERT INTO cidade VALUES(1, 'São Carlos','SP');
INSERT INTO cidade VALUES(1, 'São Paulo', 'SP');
INSERT INTO cidade VALUES(1, 'Curitiba', 'PR');


--cargo (nome,localidade,quant_eleitos)

-- CANDIDATURA (default,nome_cargo,localidade,CPF_candidato,ano,vice)

--doacao_pf (default,CPF,cod_candidatura,valor)

--doacao_pj(CNPJ,cod_candidatura,valor)

--pleito(cod_candidatura,num_votos)

--participante_equipe_apoio(default,CPF,cod_candidatura,ano)