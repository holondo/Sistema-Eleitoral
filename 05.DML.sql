-------------------------------------------------temp div-----------------------------------

--cidades e estados chave para exemplificação
--BRASIL id:1

--SP id:27 - Sao Paulo id:31 , Campinas id:29 , São carlos id:30
--PR id:19 - Curitiba id:32
----------------------------------------------------temp div-----------------------------------

-- individuo (nome,CPF)
--adicionar mais exemplos de aplicantes para mesma cidade e mesmo cargo
--adicionar pessoa com nome sujo e criar query de inserçao que retorna erro 
INSERT INTO individuo VALUES('Dilma Vana Rousseff','13326724691',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Aecio Neves','66728983791',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Maria Aparecida De Bonfim','00052991954',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Alvaro Fernandes Dias','00274003953',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Antonio Martins Annibelli','00293091900',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Baptista Leite Cavalcante','02122748800',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Ã‰rika Luciana Andreassy','02470073901',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Bernardo Seixas Pilotto','04750591904',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Izildinha Souza Dos Santos','00016867807',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Odmir Alves Pereira','00049151860',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Walter Aparecido Amarante','00593280881',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Sergio Contente','02607820847',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Gilberto Maringoni De Oliveira','03304550879',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Joao Duarte Pestana Barreto','03597285880',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Edmilson Silva Costa','04497643387',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Aparecida Carlota','00001650696',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Eduardo Pimentel Slaviero','00476417970',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('XÃªnia Karoline Mello','04633274970',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Oscar Teixeira','00006903843',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Marcos Evangelista Da Silva','00177740710',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Mario Henrique Rogeri','00270667890',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Luiza Erundina De Sousa','00480584400',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Angelo Andrea Matarazzo','00752453882',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Diana Cury','02635658820',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Walcinyr Bragatto','02985812801',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Jonas Donizette Ferreira','09696450826',DEFAULT,DEFAULT);
INSERT INTO individuo VALUES('Benedita Rosa Santana E Silva','11936731860',DEFAULT,DEFAULT);



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
--adicionar mais exemplos de aplicantes para mesma cidade e mesmo cargo
--adicionar pessoa com nome sujo e criar query de inserçao que retorna erro
INSERT INTO candidato VALUES('13326724691',13);
INSERT INTO candidato VALUES('66728983791',45);
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
INSERT INTO cargo VALUES('presidente',1,1);
INSERT INTO cargo VALUES('vice-presidente',1,1);
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
--add example vice
--adicionar mais exemplos de aplicantes para mesma cidade e mesmo cargo
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'presidente',1,'13326724691',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'presidente',1,'66728983791',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',32,'1650696',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',31,'6903843',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado estadual',27,'16867807',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado federal',27,'49151860',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado federal',19,'52991954',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',29,'177740710',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',30,'270667890',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'senador',19,'274003953',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',32,'476417970',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',31,'480584400',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',31,'752453882',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-governador',19,'2470073901',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-governador',27,'2607820847',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',30,'2635658820',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',30,'2985812801',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'governador',27,'3304550879',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'senador',27,'4497643387',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',32,'4633274970',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'governador',19,'4750591904',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',29,'9696450826',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',29,'11936731860',2016);

--pleito(cod_candidatura,num_votos)
INSERT INTO pleito VALUES(1,54000000,'eleito');
INSERT INTO pleito VALUES(2,35000000,'nao eleito');
INSERT INTO pleito VALUES(3,54993,'eleito por qp');
INSERT INTO pleito VALUES(4,43446,'eleito por media');
INSERT INTO pleito VALUES(5,6176,'suplente');
INSERT INTO pleito VALUES(6,0,'nao eleito');
INSERT INTO pleito VALUES(7,82886,'eleito por qp');
INSERT INTO pleito VALUES(8,77699,'eleito por media');
INSERT INTO pleito VALUES(9,1634316,'nao eleito');
INSERT INTO pleito VALUES(10,3301322,'eleito');
INSERT INTO pleito VALUES(11,666438,'nao eleito');
INSERT INTO pleito VALUES(12,4101848,'eleito');
INSERT INTO pleito VALUES(13,888,'suplente');
INSERT INTO pleito VALUES(14,127373,'eleito por qp');
INSERT INTO pleito VALUES(15,79016,'eleito por media');
INSERT INTO pleito VALUES(16,0,'nao eleito');
INSERT INTO pleito VALUES(17,163,'suplente');
INSERT INTO pleito VALUES(18,134138,'eleito por qp');
INSERT INTO pleito VALUES(19,109708,'eleito por media');
INSERT INTO pleito VALUES(20,0,'nao eleito');
INSERT INTO pleito VALUES(21,12958,'nao eleito');
INSERT INTO pleito VALUES(22,12230807,'eleito');
INSERT INTO pleito VALUES(23,12102,'nao eleito');
/*
23 linhas, quantidade tem que ser igual a quantidade em candidatura
INSERT INTO pleito VALUES(24,11105874,'eleito');
INSERT INTO pleito VALUES(25,52017,'nao eleito');
INSERT INTO pleito VALUES(26,356539,'2º turno');
INSERT INTO pleito VALUES(27,185,'suplente');
INSERT INTO pleito VALUES(28,7618,'eleito por qp');
INSERT INTO pleito VALUES(29,0,'nao eleito');
INSERT INTO pleito VALUES(30,3728,'eleito por media');
INSERT INTO pleito VALUES(31,279,'nao eleito');
INSERT INTO pleito VALUES(32,323308,'eleito');
INSERT INTO pleito VALUES(33,28,'suplente');
INSERT INTO pleito VALUES(34,0,'nao eleito');
INSERT INTO pleito VALUES(35,3991,'eleito por qp');
INSERT INTO pleito VALUES(36,3561,'eleito por media');
INSERT INTO pleito VALUES(37,25016,'nao eleito');
INSERT INTO pleito VALUES(38,48951,'eleito');
INSERT INTO pleito VALUES(39,1702,'eleito por qp');
INSERT INTO pleito VALUES(40,88,'suplente');
INSERT INTO pleito VALUES(41,0,'nao eleito');
INSERT INTO pleito VALUES(42,1209,'eleito por media');
INSERT INTO pleito VALUES(43,6006,'nao eleito');
INSERT INTO pleito VALUES(44,3085187,'eleito');
INSERT INTO pleito VALUES(45,1103,'nao eleito');
INSERT INTO pleito VALUES(46,10918,'suplente');
INSERT INTO pleito VALUES(47,40113,'eleito por qp');
INSERT INTO pleito VALUES(48,24892,'eleito por media');
INSERT INTO pleito VALUES(49,461736,'eleito');
*/


--NAO TESTADO A PARTIR DAQUI

--individuos participantes de doaçao pessoa fisica
INSERT INTO individuo VALUES('Ingaberg Hauger','73827920794');
INSERT INTO individuo VALUES('Morton Reese','23416915458');
INSERT INTO individuo VALUES('Corina Gobeau','85210689971');
INSERT INTO individuo VALUES('Goldi Dumingo','26824311462');
INSERT INTO individuo VALUES('Chloe Earle','23576267455');
INSERT INTO individuo VALUES('Felicle Rosenboim','72405888850');
INSERT INTO individuo VALUES('Tailor Hanscomb','43076831900');
INSERT INTO individuo VALUES('Verge Chelley','45811330530');
INSERT INTO individuo VALUES('Christiano Tawton','14827911562');
INSERT INTO individuo VALUES('Thibaut Fuentes','46641217088');
INSERT INTO individuo VALUES('Lulita Pamment','36202824411');
INSERT INTO individuo VALUES('Milty McAlpine','25508004004');
INSERT INTO individuo VALUES('Callida Schimank','44353701015');
INSERT INTO individuo VALUES('Von Scutching','64420554583');
INSERT INTO individuo VALUES('Dore Maccaig','67274006931');
INSERT INTO individuo VALUES('Dolorita Drable','11740510164');
INSERT INTO individuo VALUES('Averil Vowells','68202825689');
INSERT INTO individuo VALUES('Mabel Kingett','51188916811');
INSERT INTO individuo VALUES('Dorene Rispine','58369930860');
INSERT INTO individuo VALUES('Blane Youhill','76749522675');
INSERT INTO individuo VALUES('Gwynne Richemond','47035551608');
INSERT INTO individuo VALUES('Benita Humpage','46517826673');
INSERT INTO individuo VALUES('Flossi Gorden','38321692423');
INSERT INTO individuo VALUES('Lola Spinley','56661397079');
INSERT INTO individuo VALUES('Brita Fine','57417731961');
INSERT INTO individuo VALUES('Tiler Folini','77370916607');
INSERT INTO individuo VALUES('Benyamin Ozanne','44312475404');
INSERT INTO individuo VALUES('Ric Oseman','53390012746');
INSERT INTO individuo VALUES('Laverna Coultas','59139206924');
INSERT INTO individuo VALUES('Franni Greatrex','30856157651');

--doacao_pf (default,CPF,cod_candidatura,valor)

INSERT INTO doacao_pf VALUES(DEFAULT,'73827920794',1,127053);
INSERT INTO doacao_pf VALUES(DEFAULT,'23416915458',1,939128);
INSERT INTO doacao_pf VALUES(DEFAULT,'85210689971',3,688865);
INSERT INTO doacao_pf VALUES(DEFAULT,'26824311462',3,200272);
INSERT INTO doacao_pf VALUES(DEFAULT,'23576267455',5,437915);
INSERT INTO doacao_pf VALUES(DEFAULT,'72405888850',6,537719);
INSERT INTO doacao_pf VALUES(DEFAULT,'43076831900',3,335004);
INSERT INTO doacao_pf VALUES(DEFAULT,'45811330530',3,944793);
INSERT INTO doacao_pf VALUES(DEFAULT,'14827911562',9,956434);
INSERT INTO doacao_pf VALUES(DEFAULT,'46641217088',10,580663);
INSERT INTO doacao_pf VALUES(DEFAULT,'36202824411',1,693246);
INSERT INTO doacao_pf VALUES(DEFAULT,'25508004004',12,514279);
INSERT INTO doacao_pf VALUES(DEFAULT,'44353701015',2,309308);
INSERT INTO doacao_pf VALUES(DEFAULT,'64420554583',14,527941);
INSERT INTO doacao_pf VALUES(DEFAULT,'67274006931',15,480067);
INSERT INTO doacao_pf VALUES(DEFAULT,'11740510164',16,252889);
INSERT INTO doacao_pf VALUES(DEFAULT,'68202825689',17,731144);
INSERT INTO doacao_pf VALUES(DEFAULT,'51188916811',18,98857);
INSERT INTO doacao_pf VALUES(DEFAULT,'58369930860',19,258776);
INSERT INTO doacao_pf VALUES(DEFAULT,'76749522675',3,395990);
INSERT INTO doacao_pf VALUES(DEFAULT,'47035551608',21,670464);
INSERT INTO doacao_pf VALUES(DEFAULT,'46517826673',22,272408);
INSERT INTO doacao_pf VALUES(DEFAULT,'38321692423',23,771766);
/*
23 linhas, tem que ser igual candidatura
INSERT INTO doacao_pf VALUES(DEFAULT,'56661397079',24,570595);
INSERT INTO doacao_pf VALUES(DEFAULT,'57417731961',25,91755);
INSERT INTO doacao_pf VALUES(DEFAULT,'77370916607',26,872647);
INSERT INTO doacao_pf VALUES(DEFAULT,'44312475404',27,982480);
INSERT INTO doacao_pf VALUES(DEFAULT,'53390012746',28,344292);
INSERT INTO doacao_pf VALUES(DEFAULT,'59139206924',29,280822);
INSERT INTO doacao_pf VALUES(DEFAULT,'30856157651',30,247862);
*/

--individuo_juridico (CNPJ,nome)
INSERT INTO individuo_juridico VALUES('51600824386310','Chatterbridge');
INSERT INTO individuo_juridico VALUES('67295932998179','Yodoo');
INSERT INTO individuo_juridico VALUES('22325800505587','Roombo');
INSERT INTO individuo_juridico VALUES('39880598059537','Quatz');
INSERT INTO individuo_juridico VALUES('36422135600388','Thoughtmix');
INSERT INTO individuo_juridico VALUES('44266236788856','Quamba');
INSERT INTO individuo_juridico VALUES('29920197926765','Cogidoo');
INSERT INTO individuo_juridico VALUES('14181677078850','Flashdog');
INSERT INTO individuo_juridico VALUES('16501681055879','Photofeed');
INSERT INTO individuo_juridico VALUES('82976827019724','Livetube');
INSERT INTO individuo_juridico VALUES('95069672113889','Mudo');
INSERT INTO individuo_juridico VALUES('47178754021398','Dabjam');
INSERT INTO individuo_juridico VALUES('78472140857131','Abata');
INSERT INTO individuo_juridico VALUES('70101951534677','Youbridge');
INSERT INTO individuo_juridico VALUES('69774326972003','Flipstorm');
INSERT INTO individuo_juridico VALUES('74863338166842','Mydeo');
INSERT INTO individuo_juridico VALUES('84568149183785','Jaxnation');
INSERT INTO individuo_juridico VALUES('95630551743587','Gabspot');
INSERT INTO individuo_juridico VALUES('45395447742641','Linklinks');
INSERT INTO individuo_juridico VALUES('58448842426007','Skajo');
INSERT INTO individuo_juridico VALUES('73773266290271','Quimba');
INSERT INTO individuo_juridico VALUES('55091205667694','Yakidoo');
INSERT INTO individuo_juridico VALUES('38036552818158','Topicware');
INSERT INTO individuo_juridico VALUES('14906912364335','Edgeclub');
INSERT INTO individuo_juridico VALUES('49476029298422','Quatz');
INSERT INTO individuo_juridico VALUES('97285995865873','Chatterpoint');
INSERT INTO individuo_juridico VALUES('69043568058372','Edgetag');
INSERT INTO individuo_juridico VALUES('32225976201342','Livetube');
INSERT INTO individuo_juridico VALUES('57202377836122','Centimia');
INSERT INTO individuo_juridico VALUES('63546082381116','Wikido');


--doacao_pj(CNPJ,cod_candidatura,valor)
--criar query que retornará erro pois um cnpj doa somente para uma candidatura
INSERT INTO doacao_pj VALUES('51600824386310',1,1421825);
INSERT INTO doacao_pj VALUES('67295932998179',2,7718201);
INSERT INTO doacao_pj VALUES('22325800505587',3,2440034);
INSERT INTO doacao_pj VALUES('39880598059537',4,5134779);
INSERT INTO doacao_pj VALUES('36422135600388',5,2899896);
INSERT INTO doacao_pj VALUES('44266236788856',6,3428515);
INSERT INTO doacao_pj VALUES('29920197926765',7,5926447);
INSERT INTO doacao_pj VALUES('14181677078850',8,7354192);
INSERT INTO doacao_pj VALUES('16501681055879',9,5890859);
INSERT INTO doacao_pj VALUES('82976827019724',10,2397764);
INSERT INTO doacao_pj VALUES('95069672113889',11,6612727);
INSERT INTO doacao_pj VALUES('47178754021398',12,994200);
INSERT INTO doacao_pj VALUES('78472140857131',13,29007);
INSERT INTO doacao_pj VALUES('70101951534677',14,8755123);
INSERT INTO doacao_pj VALUES('69774326972003',15,2309582);
INSERT INTO doacao_pj VALUES('74863338166842',16,1324814);
INSERT INTO doacao_pj VALUES('84568149183785',17,3921488);
INSERT INTO doacao_pj VALUES('95630551743587',18,9184302);
INSERT INTO doacao_pj VALUES('45395447742641',19,1153665);
INSERT INTO doacao_pj VALUES('58448842426007',20,8136734);
INSERT INTO doacao_pj VALUES('73773266290271',21,3341097);
INSERT INTO doacao_pj VALUES('55091205667694',22,4717205);
INSERT INTO doacao_pj VALUES('38036552818158',23,6443633);
/*
23 linhas, tem que ser igual candidatura
INSERT INTO doacao_pj VALUES('14906912364335',24,6419647);
INSERT INTO doacao_pj VALUES('49476029298422',25,8577540);
INSERT INTO doacao_pj VALUES('97285995865873',26,5118455);
INSERT INTO doacao_pj VALUES('69043568058372',27,2656877);
INSERT INTO doacao_pj VALUES('32225976201342',28,6423516);
INSERT INTO doacao_pj VALUES('57202377836122',29,9445129);
INSERT INTO doacao_pj VALUES('63546082381116',30,8736827);
*/


-- processo_judicial (default,CPF,status_procedente,data_julgamento)
--participante_equipe_apoio(default,CPF,cod_candidatura,ano)
