-------------------------------------------------temp div-----------------------------------

--cidades e estados chave para exemplificação
--BRASIL id:1

--SP id:27 - Sao Paulo id:31 , Campinas id:29 , São carlos id:30
--PR id:19 - Curitiba id:32
----------------------------------------------------temp div-----------------------------------

-- individuo (nome,CPF)
--adicionar mais exemplos de aplicantes para mesma cidade e mesmo cargo
--adicionar pessoa com nome sujo e criar query de inserçao que retorna erro 
INSERT INTO individuo VALUES('Dilma Vana Rousseff','13326724691',DEFAULT);
INSERT INTO individuo VALUES('Aecio Neves','66728983791',DEFAULT);
INSERT INTO individuo VALUES('Maria Aparecida De Bonfim','00052991954',DEFAULT);
INSERT INTO individuo VALUES('Alvaro Fernandes Dias','00274003953',DEFAULT);
INSERT INTO individuo VALUES('Antonio Martins Annibelli','00293091900',DEFAULT);
INSERT INTO individuo VALUES('Baptista Leite Cavalcante','02122748800',DEFAULT);
INSERT INTO individuo VALUES('Erika Luciana Andreassy','02470073901',DEFAULT);
INSERT INTO individuo VALUES('Bernardo Seixas Pilotto','04750591904',DEFAULT);
INSERT INTO individuo VALUES('Izildinha Souza Dos Santos','00016867807',DEFAULT);
INSERT INTO individuo VALUES('Odmir Alves Pereira','00049151860',DEFAULT);
INSERT INTO individuo VALUES('Walter Aparecido Amarante','00593280881',DEFAULT);
INSERT INTO individuo VALUES('Sergio Contente','02607820847',DEFAULT);
INSERT INTO individuo VALUES('Gilberto Maringoni De Oliveira','03304550879',DEFAULT);
INSERT INTO individuo VALUES('Joao Duarte Pestana Barreto','03597285880',DEFAULT);
INSERT INTO individuo VALUES('Edmilson Silva Costa','04497643387',DEFAULT);
INSERT INTO individuo VALUES('Aparecida Carlota','00001650696',DEFAULT);
INSERT INTO individuo VALUES('Eduardo Pimentel Slaviero','00476417970',DEFAULT);
INSERT INTO individuo VALUES('Vania Karoline Mello','04633274970',DEFAULT);
INSERT INTO individuo VALUES('Oscar Teixeira','00006903843',DEFAULT);
INSERT INTO individuo VALUES('Marcos Evangelista Da Silva','00177740710',DEFAULT);
INSERT INTO individuo VALUES('Mario Henrique Rogeri','00270667890',DEFAULT);
INSERT INTO individuo VALUES('Luiza Erundina De Sousa','00480584400',DEFAULT);
INSERT INTO individuo VALUES('Angelo Andrea Matarazzo','00752453882',DEFAULT);
INSERT INTO individuo VALUES('Diana Cury','02635658820',DEFAULT);
INSERT INTO individuo VALUES('Walcinyr Bragatto','02985812801',DEFAULT);
INSERT INTO individuo VALUES('Jonas Donizette Ferreira','09696450826',DEFAULT);
INSERT INTO individuo VALUES('Benedita Rosa Santana E Silva','11936731860',DEFAULT);



-- partido (cod_partido,nome)
INSERT INTO partido VALUES(19,'Partido Trabalhista Nacional');
INSERT INTO partido VALUES(50,'Partido Socialismo E Liberdade');
INSERT INTO partido VALUES(15,'Partido Do Movimento Democrático Brasileiro');
INSERT INTO partido VALUES(45,'Partido Da Social Democracia Brasileira');
INSERT INTO partido VALUES(14,'Partido Trabalhista Brasileiro');
INSERT INTO partido VALUES(36,'Partido Trabalhista Cristao');
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
INSERT INTO partido VALUES(20,'Partido Social Cristao');
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
INSERT INTO partido VALUES(29,'Partido Da Causa Operaria');
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
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',32,'00001650696',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',31,'00006903843',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado estadual',27,'00016867807',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado federal',27,'00049151860',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'deputado federal',19,'00052991954',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',29,'00177740710',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vereador',30,'00270667890',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'senador',19,'00274003953',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',32,'00476417970',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',31,'00480584400',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',31,'00752453882',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-governador',19,'02470073901',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-governador',27,'02607820847',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',30,'02635658820',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',30,'02985812801',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'governador',27,'03304550879',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'senador',27,'04497643387',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',32,'04633274970',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'governador',19,'04750591904',2014);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'prefeito',29,'09696450826',2016);
INSERT INTO CANDIDATURA VALUES(DEFAULT, 'vice-prefeito',29,'11936731860',2016);

--pleito(cod_candidatura,num_votos)
INSERT INTO pleito VALUES(1,54000000,true);
INSERT INTO pleito VALUES(2,35000000,false);
INSERT INTO pleito VALUES(3,54993,false);
INSERT INTO pleito VALUES(4,43446,true);
INSERT INTO pleito VALUES(5,6176,false);
INSERT INTO pleito VALUES(6,0,false);
INSERT INTO pleito VALUES(7,82886,false);
INSERT INTO pleito VALUES(8,77699,true);
INSERT INTO pleito VALUES(9,1634316,false);
INSERT INTO pleito VALUES(10,3301322,true);
INSERT INTO pleito VALUES(11,666438,false);
INSERT INTO pleito VALUES(12,4101848,true);
INSERT INTO pleito VALUES(13,888,false);
INSERT INTO pleito VALUES(14,127373,false);
INSERT INTO pleito VALUES(15,79016,true);
INSERT INTO pleito VALUES(16,0,false);
INSERT INTO pleito VALUES(17,163,false);
INSERT INTO pleito VALUES(18,134138,false);
INSERT INTO pleito VALUES(19,109708,true);
INSERT INTO pleito VALUES(20,0,false);
INSERT INTO pleito VALUES(21,12958,false);
INSERT INTO pleito VALUES(22,12230807,true);
INSERT INTO pleito VALUES(23,12102,false);
/*
23 linhas, quantidade tem que ser igual a quantidade em candidatura
INSERT INTO pleito VALUES(24,11105874,true);
INSERT INTO pleito VALUES(25,52017,false);
INSERT INTO pleito VALUES(26,356539,'2º turno');
INSERT INTO pleito VALUES(27,185,false);
INSERT INTO pleito VALUES(28,7618,false);
INSERT INTO pleito VALUES(29,0,false);
INSERT INTO pleito VALUES(30,3728,true);
INSERT INTO pleito VALUES(31,279,false);
INSERT INTO pleito VALUES(32,323308,true);
INSERT INTO pleito VALUES(33,28,false);
INSERT INTO pleito VALUES(34,0,false);
INSERT INTO pleito VALUES(35,3991,false);
INSERT INTO pleito VALUES(36,3561,true);
INSERT INTO pleito VALUES(37,25016,false);
INSERT INTO pleito VALUES(38,48951,true);
INSERT INTO pleito VALUES(39,1702,false);
INSERT INTO pleito VALUES(40,88,false);
INSERT INTO pleito VALUES(41,0,false);
INSERT INTO pleito VALUES(42,1209,true);
INSERT INTO pleito VALUES(43,6006,false);
INSERT INTO pleito VALUES(44,3085187,true);
INSERT INTO pleito VALUES(45,1103,false);
INSERT INTO pleito VALUES(46,10918,false);
INSERT INTO pleito VALUES(47,40113,false);
INSERT INTO pleito VALUES(48,24892,true);
INSERT INTO pleito VALUES(49,461736,true);
*/


--NAO TESTADO A PARTIR DAQUI

--individuos participantes de doaçao pessoa fisica
INSERT INTO individuo VALUES('Ingaberg Hauger','73827920794',DEFAULT);
INSERT INTO individuo VALUES('Morton Reese','23416915458',DEFAULT);
INSERT INTO individuo VALUES('Corina Gobeau','85210689971',DEFAULT);
INSERT INTO individuo VALUES('Goldi Dumingo','26824311462',DEFAULT);
INSERT INTO individuo VALUES('Chloe Earle','23576267455',DEFAULT);
INSERT INTO individuo VALUES('Felicle Rosenboim','72405888850',DEFAULT);
INSERT INTO individuo VALUES('Tailor Hanscomb','43076831900',DEFAULT);
INSERT INTO individuo VALUES('Verge Chelley','45811330530',DEFAULT);
INSERT INTO individuo VALUES('Christiano Tawton','14827911562',DEFAULT);
INSERT INTO individuo VALUES('Thibaut Fuentes','46641217088',DEFAULT);
INSERT INTO individuo VALUES('Lulita Pamment','36202824411',DEFAULT);
INSERT INTO individuo VALUES('Milty McAlpine','25508004004',DEFAULT);
INSERT INTO individuo VALUES('Callida Schimank','44353701015',DEFAULT);
INSERT INTO individuo VALUES('Von Scutching','64420554583',DEFAULT);
INSERT INTO individuo VALUES('Dore Maccaig','67274006931',DEFAULT);
INSERT INTO individuo VALUES('Dolorita Drable','11740510164',DEFAULT);
INSERT INTO individuo VALUES('Averil Vowells','68202825689',DEFAULT);
INSERT INTO individuo VALUES('Mabel Kingett','51188916811',DEFAULT);
INSERT INTO individuo VALUES('Dorene Rispine','58369930860',DEFAULT);
INSERT INTO individuo VALUES('Blane Youhill','76749522675',DEFAULT);
INSERT INTO individuo VALUES('Gwynne Richemond','47035551608',DEFAULT);
INSERT INTO individuo VALUES('Benita Humpage','46517826673',DEFAULT);
INSERT INTO individuo VALUES('Flossi Gorden','38321692423',DEFAULT);
INSERT INTO individuo VALUES('Lola Spinley','56661397079',DEFAULT);
INSERT INTO individuo VALUES('Brita Fine','57417731961',DEFAULT);
INSERT INTO individuo VALUES('Tiler Folini','77370916607',DEFAULT);
INSERT INTO individuo VALUES('Benyamin Ozanne','44312475404',DEFAULT);
INSERT INTO individuo VALUES('Ric Oseman','53390012746',DEFAULT);
INSERT INTO individuo VALUES('Laverna Coultas','59139206924',DEFAULT);
INSERT INTO individuo VALUES('Franni Greatrex','30856157651',DEFAULT);

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
--participante_equipe_apoio(default,CPF,cod_candidatura,ano)
INSERT INTO individuo VALUES('Felita Paye','23843784655',DEFAULT);
INSERT INTO individuo VALUES('Reta Cray','88441571372',DEFAULT);
INSERT INTO individuo VALUES('Jenine Heild','34400179062',DEFAULT);
INSERT INTO individuo VALUES('Jock Ottawell','39408456786',DEFAULT);
INSERT INTO individuo VALUES('Hillel Caraher','58069210436',DEFAULT);
INSERT INTO individuo VALUES('Vallie Edwardson','49680985146',DEFAULT);
INSERT INTO individuo VALUES('Helaina Bergstrand','92492733709',DEFAULT);
INSERT INTO individuo VALUES('Jo Heskin','30922612349',DEFAULT);
INSERT INTO individuo VALUES('Charo Abernethy','87077869609',DEFAULT);
INSERT INTO individuo VALUES('Web Ever','46715740544',DEFAULT);
INSERT INTO individuo VALUES('Joya Sheaf','12206900022',DEFAULT);
INSERT INTO individuo VALUES('Pauly Gother','15156064984',DEFAULT);
INSERT INTO individuo VALUES('Lyn Imason','56049144370',DEFAULT);
INSERT INTO individuo VALUES('Dione Frye','20734812004',DEFAULT);
INSERT INTO individuo VALUES('Tanhya Okeshott','14264087095',DEFAULT);
INSERT INTO individuo VALUES('Fayina Summergill','46621689662',DEFAULT);
INSERT INTO individuo VALUES('Mikey Wilbor','44147848232',DEFAULT);
INSERT INTO individuo VALUES('Ransom Thyer','92017303420',DEFAULT);
INSERT INTO individuo VALUES('Brendon Albury','65955066341',DEFAULT);
INSERT INTO individuo VALUES('Cassy Cronshaw','19893987008',DEFAULT);
INSERT INTO individuo VALUES('Rosetta Hosier','17313027273',DEFAULT);
INSERT INTO individuo VALUES('Arlyn Readshaw','47837781142',DEFAULT);
INSERT INTO individuo VALUES('Melody Bleeze','77699246275',DEFAULT);
INSERT INTO individuo VALUES('Libbi Knowling','59966958001',DEFAULT);
INSERT INTO individuo VALUES('Stesha Folger','16256614222',DEFAULT);
INSERT INTO individuo VALUES('Marice Beinke','34722958829',DEFAULT);
INSERT INTO individuo VALUES('Augustine Marrill','92931093964',DEFAULT);
INSERT INTO individuo VALUES('Granger Humphrey','50180251416',DEFAULT);
INSERT INTO individuo VALUES('Vanni Golland','76155179930',DEFAULT);
INSERT INTO individuo VALUES('Aarika Cheyenne','27404990433',DEFAULT);


INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '23843784655' , 1 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '88441571372' , 2 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '34400179062' , 3 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '39408456786' , 4 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '58069210436' , 5 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '49680985146' , 6 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '92492733709' , 7 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '30922612349' , 8 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '87077869609' , 9 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '46715740544' , 10 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '12206900022' , 11 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '15156064984' , 12 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '56049144370' , 13 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '20734812004' , 14 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '14264087095' , 15 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '46621689662' , 16 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '44147848232' , 17 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '92017303420' , 18 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '65955066341' , 19 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '19893987008' , 20 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '17313027273' , 21 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '47837781142' , 22 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '77699246275' , 23 , 2014);
/*
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '59966958001' , 24 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '16256614222' , 25 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '34722958829' , 26 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '92931093964' , 27 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '50180251416' , 28 , 2016);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '76155179930' , 29 , 2014);
INSERT INTO participante_equipe_apoio VALUES(DEFAULT , '27404990433' , 30 , 2014);
--somente 23 linhas igual candidatura
*/
-- processo_judicial (default,CPF,status_procedente,data_julgamento)
INSERT INTO individuo VALUES('Bibby Ayree','50484484677',DEFAULT);
INSERT INTO individuo VALUES('Granville Josephson','82271867616',DEFAULT);
INSERT INTO individuo VALUES('Jamison Potteridge','88291689607',DEFAULT);
INSERT INTO individuo VALUES('Rosana Haselden','24694694486',DEFAULT);
INSERT INTO individuo VALUES('Inigo Farnall','54181935375',DEFAULT);
INSERT INTO individuo VALUES('Trumann Gabbatiss','61155174172',DEFAULT);
INSERT INTO individuo VALUES('Shaylynn Coggen','36771576559',DEFAULT);
INSERT INTO individuo VALUES('Moss Cargon','47191689896',DEFAULT);
INSERT INTO individuo VALUES('Morty Scoyne','56580882711',DEFAULT);
INSERT INTO individuo VALUES('Jackelyn Bogace','71895069867',DEFAULT);
INSERT INTO individuo VALUES('Langston Pugh','88420946376',DEFAULT);
INSERT INTO individuo VALUES('Dorolisa Bellard','73766071152',DEFAULT);
INSERT INTO individuo VALUES('Mac Hugle','89953518978',DEFAULT);
INSERT INTO individuo VALUES('Farleigh Henze','25050233763',DEFAULT);
INSERT INTO individuo VALUES('Steven Cartner','16987135950',DEFAULT);
INSERT INTO individuo VALUES('Hubie Hofner','94860366526',DEFAULT);
INSERT INTO individuo VALUES('Sandy Lindermann','65661329300',DEFAULT);
INSERT INTO individuo VALUES('Samson Moreby','47204734404',DEFAULT);
INSERT INTO individuo VALUES('Urson Furtado','67896122635',DEFAULT);
INSERT INTO individuo VALUES('Vittoria MacFadden','13629782953',DEFAULT);
INSERT INTO individuo VALUES('Carter Climie','86981921156',DEFAULT);
INSERT INTO individuo VALUES('Irvin Blakden','52675345687',DEFAULT);
INSERT INTO individuo VALUES('Etti Kisby','41833913388',DEFAULT);
INSERT INTO individuo VALUES('Rhoda Kittel','52233577997',DEFAULT);
INSERT INTO individuo VALUES('Lorianne Esbrook','16276379007',DEFAULT);
INSERT INTO individuo VALUES('Sidnee Exell','31743416662',DEFAULT);
INSERT INTO individuo VALUES('Auroora Vinall','28520313703',DEFAULT);
INSERT INTO individuo VALUES('Konstanze Dargavel','94760335267',DEFAULT);
INSERT INTO individuo VALUES('Lorens Dabernott','64781031758',DEFAULT);
INSERT INTO individuo VALUES('Olympe Griffitt','19332878131',DEFAULT);

INSERT INTO processo_judicial VALUES(DEFAULT,'50484484677',false,'2018-03-09');
INSERT INTO processo_judicial VALUES(DEFAULT,'82271867616',false,'2020-06-01');
INSERT INTO processo_judicial VALUES(DEFAULT,'88291689607',false,'2020-04-20');
INSERT INTO processo_judicial VALUES(DEFAULT,'24694694486',false,'2018-09-07');
INSERT INTO processo_judicial VALUES(DEFAULT,'54181935375',true,'2018-01-04');
INSERT INTO processo_judicial VALUES(DEFAULT,'61155174172',true,'2020-07-16');
INSERT INTO processo_judicial VALUES(DEFAULT,'36771576559',true,'2020-04-03');
INSERT INTO processo_judicial VALUES(DEFAULT,'47191689896',true,'2021-11-16');
INSERT INTO processo_judicial VALUES(DEFAULT,'56580882711',true,'2019-06-06');
INSERT INTO processo_judicial VALUES(DEFAULT,'71895069867',false,'2021-04-23');
INSERT INTO processo_judicial VALUES(DEFAULT,'88420946376',true,'2019-11-20');
INSERT INTO processo_judicial VALUES(DEFAULT,'73766071152',true,'2019-12-12');
INSERT INTO processo_judicial VALUES(DEFAULT,'89953518978',false,'2021-02-18');
INSERT INTO processo_judicial VALUES(DEFAULT,'25050233763',true,'2021-08-16');
INSERT INTO processo_judicial VALUES(DEFAULT,'16987135950',false,'2021-03-14');
INSERT INTO processo_judicial VALUES(DEFAULT,'94860366526',true,'2021-08-30');
INSERT INTO processo_judicial VALUES(DEFAULT,'65661329300',true,'2019-06-03');
INSERT INTO processo_judicial VALUES(DEFAULT,'47204734404',false,'2019-10-29');
INSERT INTO processo_judicial VALUES(DEFAULT,'67896122635',false,'2021-03-16');
INSERT INTO processo_judicial VALUES(DEFAULT,'13629782953',true,'2018-11-09');
INSERT INTO processo_judicial VALUES(DEFAULT,'86981921156',false,'2019-02-14');
INSERT INTO processo_judicial VALUES(DEFAULT,'52675345687',true,'2021-11-10');
INSERT INTO processo_judicial VALUES(DEFAULT,'41833913388',false,'2021-04-25');
INSERT INTO processo_judicial VALUES(DEFAULT,'52233577997',true,'2019-06-28');
INSERT INTO processo_judicial VALUES(DEFAULT,'16276379007',true,'2020-09-14');
INSERT INTO processo_judicial VALUES(DEFAULT,'31743416662',true,'2020-10-04');
INSERT INTO processo_judicial VALUES(DEFAULT,'28520313703',false,'2020-08-16');
INSERT INTO processo_judicial VALUES(DEFAULT,'94760335267',false,'2019-12-10');
INSERT INTO processo_judicial VALUES(DEFAULT,'64781031758',false,'2021-02-02');
INSERT INTO processo_judicial VALUES(DEFAULT,'19332878131',true,'2021-08-02');
