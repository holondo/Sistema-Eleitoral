INSERT INTO processo_judicial VALUES(default, '11111', true, CURRENT_DATE - 2);
INSERT INTO processo_judicial VALUES(default, '11112', true, CURRENT_DATE - 6);
INSERT INTO processo_judicial VALUES(default, '11113', true, CURRENT_DATE);

INSERT INTO candidato VALUES('11112', 172);
INSERT INTO candidato VALUES('11114', 321);

INSERT INTO individuo_juridico VALUES('000001', 'lojinha da esquina');
INSERT INTO individuo_juridico VALUES('000002', 'mecanico de autos');
INSERT INTO individuo_juridico VALUES('000003', 'cabeleleira leila');

INSERT INTO doacao_pf VALUES(DEFAULT, '11111', 1, 111.14);

INSERT INTO doacao_pj VALUES('000001', 1, 111.14);

INSERT INTO participante_equipe_apoio VALUES(DEFAULT, '11113', 1, 2019);
----------------------------------------------------temp div-----------------------------------

--cidades e estados chave para exemplificação
--BRASIL id:1

--SP - Sao Paulo, Campinas, São carlos
--PR - Curitiba
----------------------------------------------------temp div-----------------------------------

-- individuo (nome,CPF)
--add examplos from federation
INSERT INTO individuo VALUES('Maria Aparecida De Bonfim','00052991954');
INSERT INTO individuo VALUES('Alvaro Fernandes Dias','00274003953');
INSERT INTO individuo VALUES('Antonio Martins Annibelli','00293091900');
INSERT INTO individuo VALUES('Baptista Leite Cavalcante','02122748800');
INSERT INTO individuo VALUES('Ã‰rika Luciana Andreassy','02470073901');
INSERT INTO individuo VALUES('Bernardo Seixas Pilotto','04750591904');
INSERT INTO individuo VALUES('Izildinha Souza Dos Santos','00016867807');
INSERT INTO individuo VALUES('Odmir Alves Pereira','00049151860');
INSERT INTO individuo VALUES('Walter Aparecido Amarante','00593280881');
INSERT INTO individuo VALUES('Sergio Contente','02607820847');
INSERT INTO individuo VALUES('Gilberto Maringoni De Oliveira','03304550879');
INSERT INTO individuo VALUES('Joao Duarte Pestana Barreto','03597285880');
INSERT INTO individuo VALUES('Edmilson Silva Costa','04497643387');
INSERT INTO individuo VALUES('Aparecida Carlota','00001650696');
INSERT INTO individuo VALUES('Eduardo Pimentel Slaviero','00476417970');
INSERT INTO individuo VALUES('XÃªnia Karoline Mello','04633274970');
INSERT INTO individuo VALUES('Oscar Teixeira','00006903843');
INSERT INTO individuo VALUES('Marcos Evangelista Da Silva','00177740710');
INSERT INTO individuo VALUES('Mario Henrique Rogeri','00270667890');
INSERT INTO individuo VALUES('Luiza Erundina De Sousa','00480584400');
INSERT INTO individuo VALUES('Angelo Andrea Matarazzo','00752453882');
INSERT INTO individuo VALUES('Diana Cury','02635658820');
INSERT INTO individuo VALUES('Walcinyr Bragatto','02985812801');
INSERT INTO individuo VALUES('Jonas Donizette Ferreira','09696450826');
INSERT INTO individuo VALUES('Benedita Rosa Santana E Silva','11936731860');

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
--add examplos from federation
INSERT INTO candidato VALUES('00052991954',19);
INSERT INTO candidato VALUES('00274003953',45);
INSERT INTO candidato VALUES('00293091900',15);
INSERT INTO candidato VALUES('02122748800',28);
INSERT INTO candidato VALUES('02470073901',16);
INSERT INTO candidato VALUES('04750591904',50);
INSERT INTO candidato VALUES('00016867807',10);
INSERT INTO candidato VALUES('00049151860',40);
INSERT INTO candidato VALUES('00593280881',28);
INSERT INTO candidato VALUES('02607820847',31);
INSERT INTO candidato VALUES('03304550879',50);
INSERT INTO candidato VALUES('03597285880',31);
INSERT INTO candidato VALUES('04497643387',21);
INSERT INTO candidato VALUES('00001650696',27);
INSERT INTO candidato VALUES('00476417970',45);
INSERT INTO candidato VALUES('04633274970',50);
INSERT INTO candidato VALUES('00006903843',44);
INSERT INTO candidato VALUES('00177740710',10);
INSERT INTO candidato VALUES('00270667890',90);
INSERT INTO candidato VALUES('00480584400',50);
INSERT INTO candidato VALUES('00752453882',55);
INSERT INTO candidato VALUES('02635658820',15);
INSERT INTO candidato VALUES('02985812801',43);
INSERT INTO candidato VALUES('09696450826',40);
INSERT INTO candidato VALUES('11936731860',31);

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

--local
INSERT INTO federacao VALUES(1, 'Brasil');

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
--add federaçao
INSERT INTO cargo VALUES('governador',19,1);
INSERT INTO cargo VALUES('vice-governador',19,1);
INSERT INTO cargo VALUES('senador',19,1);
INSERT INTO cargo VALUES('deputado federal',19,30);
INSERT INTO cargo VALUES('deputado estadual',19,54);
INSERT INTO cargo VALUES('1 suplente',19,1);
INSERT INTO cargo VALUES('2 suplente',19,1);
INSERT INTO cargo VALUES('governador',27,1);
INSERT INTO cargo VALUES('vice-governador',27,1);
INSERT INTO cargo VALUES('senador',27,1);
INSERT INTO cargo VALUES('deputado federal',27,70);
INSERT INTO cargo VALUES('deputado estadual',27,94);
INSERT INTO cargo VALUES('1 suplente',27,1);
INSERT INTO cargo VALUES('2 suplente',27,1);
INSERT INTO cargo VALUES('prefeito',32,1);
INSERT INTO cargo VALUES('vice-prefeito',32,1);
INSERT INTO cargo VALUES('vereador',32,38);
INSERT INTO cargo VALUES('prefeito',29,1);
INSERT INTO cargo VALUES('vice-prefeito',29,1);
INSERT INTO cargo VALUES('vereador',29,33);
INSERT INTO cargo VALUES('prefeito',30,1);
INSERT INTO cargo VALUES('vice-prefeito',30,1);
INSERT INTO cargo VALUES('vereador',30,21);
INSERT INTO cargo VALUES('prefeito',31,1);
INSERT INTO cargo VALUES('vice-prefeito',31,1);
INSERT INTO cargo VALUES('vereador',31,55);

-- CANDIDATURA (default,nome_cargo,localidade,CPF_candidato,ano,vice)
--add example federation
--add example vice
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',32,'1650696',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',31,'6903843',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado estadual',27,'16867807',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado federal',27,'49151860',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado federal',19,'52991954',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',29,'177740710',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',30,'270667890',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'senador',19,'274003953',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, '1Âº suplente',19,'293091900',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',32,'476417970',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',31,'480584400',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, '1Âº suplente',27,'593280881',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',31,'752453882',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, '2Âº suplente',19,'2122748800',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-governador',19,'2470073901',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-governador',27,'2607820847',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',30,'2635658820',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',30,'2985812801',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'governador',27,'3304550879',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, '2Âº suplente',27,'3597285880',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'senador',27,'4497643387',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',32,'4633274970',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'governador',19,'4750591904',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',29,'9696450826',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',29,'11936731860',2016);

--pleito(cod_candidatura,num_votos)
INSERT INTO CANDIDATURA VALUES(1,374,'suplente');
INSERT INTO CANDIDATURA VALUES(2,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(3,54993,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(4,43446,'eleito por media');
INSERT INTO CANDIDATURA VALUES(5,6176,'suplente');
INSERT INTO CANDIDATURA VALUES(6,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(7,82886,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(8,77699,'eleito por media');
INSERT INTO CANDIDATURA VALUES(9,1634316,'nao eleito');
INSERT INTO CANDIDATURA VALUES(10,3301322,'eleito');
INSERT INTO CANDIDATURA VALUES(11,666438,'nao eleito');
INSERT INTO CANDIDATURA VALUES(12,4101848,'eleito');
INSERT INTO CANDIDATURA VALUES(13,888,'suplente');
INSERT INTO CANDIDATURA VALUES(14,127373,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(15,79016,'eleito por media');
INSERT INTO CANDIDATURA VALUES(16,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(17,163,'suplente');
INSERT INTO CANDIDATURA VALUES(18,134138,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(19,109708,'eleito por media');
INSERT INTO CANDIDATURA VALUES(20,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(21,12958,'nao eleito');
INSERT INTO CANDIDATURA VALUES(22,12230807,'eleito');
INSERT INTO CANDIDATURA VALUES(23,12102,'nao eleito');
INSERT INTO CANDIDATURA VALUES(24,11105874,'eleito');
/*
INSERT INTO CANDIDATURA VALUES(25,52017,'nao eleito');
INSERT INTO CANDIDATURA VALUES(26,356539,'2º turno');
INSERT INTO CANDIDATURA VALUES(27,185,'suplente');
INSERT INTO CANDIDATURA VALUES(28,7618,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(29,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(30,3728,'eleito por media');
INSERT INTO CANDIDATURA VALUES(31,279,'nao eleito');
INSERT INTO CANDIDATURA VALUES(32,323308,'eleito');
INSERT INTO CANDIDATURA VALUES(33,28,'suplente');
INSERT INTO CANDIDATURA VALUES(34,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(35,3991,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(36,3561,'eleito por media');
INSERT INTO CANDIDATURA VALUES(37,25016,'nao eleito');
INSERT INTO CANDIDATURA VALUES(38,48951,'eleito');
INSERT INTO CANDIDATURA VALUES(39,1702,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(40,88,'suplente');
INSERT INTO CANDIDATURA VALUES(41,0,'nao eleito');
INSERT INTO CANDIDATURA VALUES(42,1209,'eleito por media');
INSERT INTO CANDIDATURA VALUES(43,6006,'nao eleito');
INSERT INTO CANDIDATURA VALUES(44,3085187,'eleito');
INSERT INTO CANDIDATURA VALUES(45,1103,'nao eleito');
INSERT INTO CANDIDATURA VALUES(46,10918,'suplente');
INSERT INTO CANDIDATURA VALUES(47,40113,'eleito por qp');
INSERT INTO CANDIDATURA VALUES(48,24892,'eleito por media');
INSERT INTO CANDIDATURA VALUES(49,461736,'eleito');
*/



-- processo_judicial (default,CPF,status_procedente,data_julgamento)
--doacao_pf (default,CPF,cod_candidatura,valor)
--doacao_pj(CNPJ,cod_candidatura,valor)
--participante_equipe_apoio(default,CPF,cod_candidatura,ano)
--individuo_juridico (CNPJ,nome)