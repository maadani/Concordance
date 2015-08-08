SET NAMES 'utf8';

--
-- Table structure for table `demo_city`
--


DROP TABLE IF EXISTS `demo_city`;
CREATE TABLE `demo_city` (
  `ID` int(11) NOT NULL auto_increment,
  `Name` char(35) NOT NULL default '',
  `CountryCode` char(3) NOT NULL default '',
  `District` char(20) NOT NULL default '',
  `Population` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `demo_city`
--
INSERT INTO `demo_city` VALUES (1,'Kabul','AFG','Kabol',1780000);
INSERT INTO `demo_city` VALUES (2,'Qandahar','AFG','Qandahar',237500);
INSERT INTO `demo_city` VALUES (3,'Herat','AFG','Herat',186800);
INSERT INTO `demo_city` VALUES (4,'Mazar-e-Sharif','AFG','Balkh',127800);
INSERT INTO `demo_city` VALUES (5,'Amsterdam','NLD','Noord-Holland',731200);
INSERT INTO `demo_city` VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321);
INSERT INTO `demo_city` VALUES (7,'Haag','NLD','Zuid-Holland',440900);
INSERT INTO `demo_city` VALUES (8,'Utrecht','NLD','Utrecht',234323);
INSERT INTO `demo_city` VALUES (9,'Eindhoven','NLD','Noord-Brabant',201843);
INSERT INTO `demo_city` VALUES (10,'Tilburg','NLD','Noord-Brabant',193238);
INSERT INTO `demo_city` VALUES (11,'Groningen','NLD','Groningen',172701);
INSERT INTO `demo_city` VALUES (12,'Breda','NLD','Noord-Brabant',160398);
INSERT INTO `demo_city` VALUES (13,'Apeldoorn','NLD','Gelderland',153491);
INSERT INTO `demo_city` VALUES (14,'Nijmegen','NLD','Gelderland',152463);
INSERT INTO `demo_city` VALUES (15,'Enschede','NLD','Overijssel',149544);
INSERT INTO `demo_city` VALUES (16,'Haarlem','NLD','Noord-Holland',148772);
INSERT INTO `demo_city` VALUES (17,'Almere','NLD','Flevoland',142465);
INSERT INTO `demo_city` VALUES (18,'Arnhem','NLD','Gelderland',138020);
INSERT INTO `demo_city` VALUES (19,'Zaanstad','NLD','Noord-Holland',135621);
INSERT INTO `demo_city` VALUES (20,'\'s-Hertogenbosch','NLD','Noord-Brabant',129170);
INSERT INTO `demo_city` VALUES (21,'Amersfoort','NLD','Utrecht',126270);
INSERT INTO `demo_city` VALUES (22,'Maastricht','NLD','Limburg',122087);
INSERT INTO `demo_city` VALUES (23,'Dordrecht','NLD','Zuid-Holland',119811);
INSERT INTO `demo_city` VALUES (24,'Leiden','NLD','Zuid-Holland',117196);
INSERT INTO `demo_city` VALUES (25,'Haarlemmermeer','NLD','Noord-Holland',110722);
INSERT INTO `demo_city` VALUES (26,'Zoetermeer','NLD','Zuid-Holland',110214);
INSERT INTO `demo_city` VALUES (27,'Emmen','NLD','Drenthe',105853);
INSERT INTO `demo_city` VALUES (28,'Zwolle','NLD','Overijssel',105819);
INSERT INTO `demo_city` VALUES (29,'Ede','NLD','Gelderland',101574);
INSERT INTO `demo_city` VALUES (30,'Delft','NLD','Zuid-Holland',95268);
INSERT INTO `demo_city` VALUES (31,'Heerlen','NLD','Limburg',95052);
INSERT INTO `demo_city` VALUES (32,'Alkmaar','NLD','Noord-Holland',92713);
INSERT INTO `demo_city` VALUES (33,'Willemstad','ANT','Curaçao',2345);
INSERT INTO `demo_city` VALUES (34,'Tirana','ALB','Tirana',270000);
INSERT INTO `demo_city` VALUES (35,'Alger','DZA','Alger',2168000);
INSERT INTO `demo_city` VALUES (36,'Oran','DZA','Oran',609823);
INSERT INTO `demo_city` VALUES (37,'Constantine','DZA','Constantine',443727);
INSERT INTO `demo_city` VALUES (38,'Annaba','DZA','Annaba',222518);
INSERT INTO `demo_city` VALUES (39,'Batna','DZA','Batna',183377);
INSERT INTO `demo_city` VALUES (40,'Sétif','DZA','Sétif',179055);
INSERT INTO `demo_city` VALUES (41,'Sidi Bel Abbès','DZA','Sidi Bel Abbès',153106);
INSERT INTO `demo_city` VALUES (42,'Skikda','DZA','Skikda',128747);
INSERT INTO `demo_city` VALUES (43,'Biskra','DZA','Biskra',128281);
INSERT INTO `demo_city` VALUES (44,'Blida (el-Boulaida)','DZA','Blida',127284);
INSERT INTO `demo_city` VALUES (45,'Béjaïa','DZA','Béjaïa',117162);
INSERT INTO `demo_city` VALUES (46,'Mostaganem','DZA','Mostaganem',115212);
INSERT INTO `demo_city` VALUES (47,'Tébessa','DZA','Tébessa',112007);
INSERT INTO `demo_city` VALUES (48,'Tlemcen (Tilimsen)','DZA','Tlemcen',110242);
INSERT INTO `demo_city` VALUES (49,'Béchar','DZA','Béchar',107311);
INSERT INTO `demo_city` VALUES (50,'Tiaret','DZA','Tiaret',100118);
INSERT INTO `demo_city` VALUES (51,'Ech-Chleff (el-Asnam)','DZA','Chlef',96794);
INSERT INTO `demo_city` VALUES (52,'Ghardaïa','DZA','Ghardaïa',89415);
INSERT INTO `demo_city` VALUES (53,'Tafuna','ASM','Tutuila',5200);
INSERT INTO `demo_city` VALUES (54,'Fagatogo','ASM','Tutuila',2323);
INSERT INTO `demo_city` VALUES (55,'Andorra la Vella','AND','Andorra la Vella',21189);
INSERT INTO `demo_city` VALUES (56,'Luanda','AGO','Luanda',2022000);
INSERT INTO `demo_city` VALUES (57,'Huambo','AGO','Huambo',163100);
INSERT INTO `demo_city` VALUES (58,'Lobito','AGO','Benguela',130000);
INSERT INTO `demo_city` VALUES (59,'Benguela','AGO','Benguela',128300);
INSERT INTO `demo_city` VALUES (60,'Namibe','AGO','Namibe',118200);
INSERT INTO `demo_city` VALUES (61,'South Hill','AIA','',961);
INSERT INTO `demo_city` VALUES (62,'The Valley','AIA','',595);
INSERT INTO `demo_city` VALUES (63,'Saint John´s','ATG','St John',24000);
INSERT INTO `demo_city` VALUES (64,'Dubai','ARE','Dubai',669181);
INSERT INTO `demo_city` VALUES (65,'Abu Dhabi','ARE','Abu Dhabi',398695);
INSERT INTO `demo_city` VALUES (66,'Sharja','ARE','Sharja',320095);
INSERT INTO `demo_city` VALUES (67,'al-Ayn','ARE','Abu Dhabi',225970);
INSERT INTO `demo_city` VALUES (68,'Ajman','ARE','Ajman',114395);
INSERT INTO `demo_city` VALUES (69,'Buenos Aires','ARG','Distrito Federal',2982146);
INSERT INTO `demo_city` VALUES (70,'La Matanza','ARG','Buenos Aires',1266461);
INSERT INTO `demo_city` VALUES (71,'Córdoba','ARG','Córdoba',1157507);
INSERT INTO `demo_city` VALUES (72,'Rosario','ARG','Santa Fé',907718);
INSERT INTO `demo_city` VALUES (73,'Lomas de Zamora','ARG','Buenos Aires',622013);
INSERT INTO `demo_city` VALUES (74,'Quilmes','ARG','Buenos Aires',559249);
INSERT INTO `demo_city` VALUES (75,'Almirante Brown','ARG','Buenos Aires',538918);
INSERT INTO `demo_city` VALUES (76,'La Plata','ARG','Buenos Aires',521936);
INSERT INTO `demo_city` VALUES (77,'Mar del Plata','ARG','Buenos Aires',512880);
INSERT INTO `demo_city` VALUES (78,'San Miguel de Tucumán','ARG','Tucumán',470809);
INSERT INTO `demo_city` VALUES (79,'Lanús','ARG','Buenos Aires',469735);
INSERT INTO `demo_city` VALUES (80,'Merlo','ARG','Buenos Aires',463846);
INSERT INTO `demo_city` VALUES (81,'General San Martín','ARG','Buenos Aires',422542);
INSERT INTO `demo_city` VALUES (82,'Salta','ARG','Salta',367550);
INSERT INTO `demo_city` VALUES (83,'Moreno','ARG','Buenos Aires',356993);
INSERT INTO `demo_city` VALUES (84,'Santa Fé','ARG','Santa Fé',353063);
INSERT INTO `demo_city` VALUES (85,'Avellaneda','ARG','Buenos Aires',353046);
INSERT INTO `demo_city` VALUES (86,'Tres de Febrero','ARG','Buenos Aires',352311);
INSERT INTO `demo_city` VALUES (87,'Morón','ARG','Buenos Aires',349246);
INSERT INTO `demo_city` VALUES (88,'Florencio Varela','ARG','Buenos Aires',315432);
INSERT INTO `demo_city` VALUES (89,'San Isidro','ARG','Buenos Aires',306341);
INSERT INTO `demo_city` VALUES (90,'Tigre','ARG','Buenos Aires',296226);
INSERT INTO `demo_city` VALUES (91,'Malvinas Argentinas','ARG','Buenos Aires',290335);
INSERT INTO `demo_city` VALUES (92,'Vicente López','ARG','Buenos Aires',288341);
INSERT INTO `demo_city` VALUES (93,'Berazategui','ARG','Buenos Aires',276916);
INSERT INTO `demo_city` VALUES (94,'Corrientes','ARG','Corrientes',258103);
INSERT INTO `demo_city` VALUES (95,'San Miguel','ARG','Buenos Aires',248700);
INSERT INTO `demo_city` VALUES (96,'Bahía Blanca','ARG','Buenos Aires',239810);
INSERT INTO `demo_city` VALUES (97,'Esteban Echeverría','ARG','Buenos Aires',235760);
INSERT INTO `demo_city` VALUES (98,'Resistencia','ARG','Chaco',229212);
INSERT INTO `demo_city` VALUES (99,'José C. Paz','ARG','Buenos Aires',221754);
INSERT INTO `demo_city` VALUES (100,'Paraná','ARG','Entre Rios',207041);
INSERT INTO `demo_city` VALUES (101,'Godoy Cruz','ARG','Mendoza',206998);
INSERT INTO `demo_city` VALUES (102,'Posadas','ARG','Misiones',201273);
INSERT INTO `demo_city` VALUES (103,'Guaymallén','ARG','Mendoza',200595);
INSERT INTO `demo_city` VALUES (104,'Santiago del Estero','ARG','Santiago del Estero',189947);
INSERT INTO `demo_city` VALUES (105,'San Salvador de Jujuy','ARG','Jujuy',178748);
INSERT INTO `demo_city` VALUES (106,'Hurlingham','ARG','Buenos Aires',170028);
INSERT INTO `demo_city` VALUES (107,'Neuquén','ARG','Neuquén',167296);
INSERT INTO `demo_city` VALUES (108,'Ituzaingó','ARG','Buenos Aires',158197);
INSERT INTO `demo_city` VALUES (109,'San Fernando','ARG','Buenos Aires',153036);
INSERT INTO `demo_city` VALUES (110,'Formosa','ARG','Formosa',147636);
INSERT INTO `demo_city` VALUES (111,'Las Heras','ARG','Mendoza',145823);
INSERT INTO `demo_city` VALUES (112,'La Rioja','ARG','La Rioja',138117);
INSERT INTO `demo_city` VALUES (113,'San Fernando del Valle de Cata','ARG','Catamarca',134935);
INSERT INTO `demo_city` VALUES (114,'Río Cuarto','ARG','Córdoba',134355);
INSERT INTO `demo_city` VALUES (115,'Comodoro Rivadavia','ARG','Chubut',124104);
INSERT INTO `demo_city` VALUES (116,'Mendoza','ARG','Mendoza',123027);
INSERT INTO `demo_city` VALUES (117,'San Nicolás de los Arroyos','ARG','Buenos Aires',119302);
INSERT INTO `demo_city` VALUES (118,'San Juan','ARG','San Juan',119152);
INSERT INTO `demo_city` VALUES (119,'Escobar','ARG','Buenos Aires',116675);
INSERT INTO `demo_city` VALUES (120,'Concordia','ARG','Entre Rios',116485);
INSERT INTO `demo_city` VALUES (121,'Pilar','ARG','Buenos Aires',113428);
INSERT INTO `demo_city` VALUES (122,'San Luis','ARG','San Luis',110136);
INSERT INTO `demo_city` VALUES (123,'Ezeiza','ARG','Buenos Aires',99578);
INSERT INTO `demo_city` VALUES (124,'San Rafael','ARG','Mendoza',94651);
INSERT INTO `demo_city` VALUES (125,'Tandil','ARG','Buenos Aires',91101);
INSERT INTO `demo_city` VALUES (126,'Yerevan','ARM','Yerevan',1248700);
INSERT INTO `demo_city` VALUES (127,'Gjumri','ARM','irak',211700);
INSERT INTO `demo_city` VALUES (128,'Vanadzor','ARM','Lori',172700);
INSERT INTO `demo_city` VALUES (129,'Oranjestad','ABW','',29034);
INSERT INTO `demo_city` VALUES (130,'Sydney','AUS','New South Wales',3276207);
INSERT INTO `demo_city` VALUES (131,'Melbourne','AUS','Victoria',2865329);
INSERT INTO `demo_city` VALUES (132,'Brisbane','AUS','Queensland',1291117);
INSERT INTO `demo_city` VALUES (133,'Perth','AUS','West Australia',1096829);
INSERT INTO `demo_city` VALUES (134,'Adelaide','AUS','South Australia',978100);
INSERT INTO `demo_city` VALUES (135,'Canberra','AUS','Capital Region',322723);
INSERT INTO `demo_city` VALUES (136,'Gold Coast','AUS','Queensland',311932);
INSERT INTO `demo_city` VALUES (137,'Newcastle','AUS','New South Wales',270324);
INSERT INTO `demo_city` VALUES (138,'Central Coast','AUS','New South Wales',227657);
INSERT INTO `demo_city` VALUES (139,'Wollongong','AUS','New South Wales',219761);
INSERT INTO `demo_city` VALUES (140,'Hobart','AUS','Tasmania',126118);
INSERT INTO `demo_city` VALUES (141,'Geelong','AUS','Victoria',125382);
INSERT INTO `demo_city` VALUES (142,'Townsville','AUS','Queensland',109914);
INSERT INTO `demo_city` VALUES (143,'Cairns','AUS','Queensland',92273);
INSERT INTO `demo_city` VALUES (144,'Baku','AZE','Baki',1787800);
INSERT INTO `demo_city` VALUES (145,'Gäncä','AZE','Gäncä',299300);
INSERT INTO `demo_city` VALUES (146,'Sumqayit','AZE','Sumqayit',283000);
INSERT INTO `demo_city` VALUES (147,'Mingäçevir','AZE','Mingäçevir',93900);
INSERT INTO `demo_city` VALUES (148,'Nassau','BHS','New Providence',172000);
INSERT INTO `demo_city` VALUES (149,'al-Manama','BHR','al-Manama',148000);
INSERT INTO `demo_city` VALUES (150,'Dhaka','BGD','Dhaka',3612850);
INSERT INTO `demo_city` VALUES (151,'Chittagong','BGD','Chittagong',1392860);
INSERT INTO `demo_city` VALUES (152,'Khulna','BGD','Khulna',663340);
INSERT INTO `demo_city` VALUES (153,'Rajshahi','BGD','Rajshahi',294056);
INSERT INTO `demo_city` VALUES (154,'Narayanganj','BGD','Dhaka',202134);
INSERT INTO `demo_city` VALUES (155,'Rangpur','BGD','Rajshahi',191398);
INSERT INTO `demo_city` VALUES (156,'Mymensingh','BGD','Dhaka',188713);
INSERT INTO `demo_city` VALUES (157,'Barisal','BGD','Barisal',170232);
INSERT INTO `demo_city` VALUES (158,'Tungi','BGD','Dhaka',168702);
INSERT INTO `demo_city` VALUES (159,'Jessore','BGD','Khulna',139710);
INSERT INTO `demo_city` VALUES (160,'Comilla','BGD','Chittagong',135313);
INSERT INTO `demo_city` VALUES (161,'Nawabganj','BGD','Rajshahi',130577);
INSERT INTO `demo_city` VALUES (162,'Dinajpur','BGD','Rajshahi',127815);
INSERT INTO `demo_city` VALUES (163,'Bogra','BGD','Rajshahi',120170);
INSERT INTO `demo_city` VALUES (164,'Sylhet','BGD','Sylhet',117396);
INSERT INTO `demo_city` VALUES (165,'Brahmanbaria','BGD','Chittagong',109032);
INSERT INTO `demo_city` VALUES (166,'Tangail','BGD','Dhaka',106004);
INSERT INTO `demo_city` VALUES (167,'Jamalpur','BGD','Dhaka',103556);
INSERT INTO `demo_city` VALUES (168,'Pabna','BGD','Rajshahi',103277);
INSERT INTO `demo_city` VALUES (169,'Naogaon','BGD','Rajshahi',101266);
INSERT INTO `demo_city` VALUES (170,'Sirajganj','BGD','Rajshahi',99669);
INSERT INTO `demo_city` VALUES (171,'Narsinghdi','BGD','Dhaka',98342);
INSERT INTO `demo_city` VALUES (172,'Saidpur','BGD','Rajshahi',96777);
INSERT INTO `demo_city` VALUES (173,'Gazipur','BGD','Dhaka',96717);
INSERT INTO `demo_city` VALUES (174,'Bridgetown','BRB','St Michael',6070);
INSERT INTO `demo_city` VALUES (175,'Antwerpen','BEL','Antwerpen',446525);
INSERT INTO `demo_city` VALUES (176,'Gent','BEL','East Flanderi',224180);
INSERT INTO `demo_city` VALUES (177,'Charleroi','BEL','Hainaut',200827);
INSERT INTO `demo_city` VALUES (178,'Liège','BEL','Liège',185639);
INSERT INTO `demo_city` VALUES (179,'Bruxelles [Brussel]','BEL','Bryssel',133859);
INSERT INTO `demo_city` VALUES (180,'Brugge','BEL','West Flanderi',116246);
INSERT INTO `demo_city` VALUES (181,'Schaerbeek','BEL','Bryssel',105692);
INSERT INTO `demo_city` VALUES (182,'Namur','BEL','Namur',105419);
INSERT INTO `demo_city` VALUES (183,'Mons','BEL','Hainaut',90935);
INSERT INTO `demo_city` VALUES (184,'Belize City','BLZ','Belize City',55810);
INSERT INTO `demo_city` VALUES (185,'Belmopan','BLZ','Cayo',7105);
INSERT INTO `demo_city` VALUES (186,'Cotonou','BEN','Atlantique',536827);
INSERT INTO `demo_city` VALUES (187,'Porto-Novo','BEN','Ouémé',194000);
INSERT INTO `demo_city` VALUES (188,'Djougou','BEN','Atacora',134099);
INSERT INTO `demo_city` VALUES (189,'Parakou','BEN','Borgou',103577);
INSERT INTO `demo_city` VALUES (190,'Saint George','BMU','Saint George´s',1800);
INSERT INTO `demo_city` VALUES (191,'Hamilton','BMU','Hamilton',1200);
INSERT INTO `demo_city` VALUES (192,'Thimphu','BTN','Thimphu',22000);
INSERT INTO `demo_city` VALUES (193,'Santa Cruz de la Sierra','BOL','Santa Cruz',935361);
INSERT INTO `demo_city` VALUES (194,'La Paz','BOL','La Paz',758141);
INSERT INTO `demo_city` VALUES (195,'El Alto','BOL','La Paz',534466);
INSERT INTO `demo_city` VALUES (196,'Cochabamba','BOL','Cochabamba',482800);
INSERT INTO `demo_city` VALUES (197,'Oruro','BOL','Oruro',223553);
INSERT INTO `demo_city` VALUES (198,'Sucre','BOL','Chuquisaca',178426);
INSERT INTO `demo_city` VALUES (199,'Potosí','BOL','Potosí',140642);
INSERT INTO `demo_city` VALUES (200,'Tarija','BOL','Tarija',125255);
INSERT INTO `demo_city` VALUES (201,'Sarajevo','BIH','Federaatio',360000);
INSERT INTO `demo_city` VALUES (202,'Banja Luka','BIH','Republika Srpska',143079);
INSERT INTO `demo_city` VALUES (203,'Zenica','BIH','Federaatio',96027);
INSERT INTO `demo_city` VALUES (204,'Gaborone','BWA','Gaborone',213017);
INSERT INTO `demo_city` VALUES (205,'Francistown','BWA','Francistown',101805);
INSERT INTO `demo_city` VALUES (206,'São Paulo','BRA','São Paulo',9968485);
INSERT INTO `demo_city` VALUES (207,'Rio de Janeiro','BRA','Rio de Janeiro',5598953);
INSERT INTO `demo_city` VALUES (208,'Salvador','BRA','Bahia',2302832);
INSERT INTO `demo_city` VALUES (209,'Belo Horizonte','BRA','Minas Gerais',2139125);
INSERT INTO `demo_city` VALUES (210,'Fortaleza','BRA','Ceará',2097757);
INSERT INTO `demo_city` VALUES (211,'Brasília','BRA','Distrito Federal',1969868);
INSERT INTO `demo_city` VALUES (212,'Curitiba','BRA','Paraná',1584232);
INSERT INTO `demo_city` VALUES (213,'Recife','BRA','Pernambuco',1378087);
INSERT INTO `demo_city` VALUES (214,'Porto Alegre','BRA','Rio Grande do Sul',1314032);
INSERT INTO `demo_city` VALUES (215,'Manaus','BRA','Amazonas',1255049);
INSERT INTO `demo_city` VALUES (216,'Belém','BRA','Pará',1186926);
INSERT INTO `demo_city` VALUES (217,'Guarulhos','BRA','São Paulo',1095874);
INSERT INTO `demo_city` VALUES (218,'Goiânia','BRA','Goiás',1056330);
INSERT INTO `demo_city` VALUES (219,'Campinas','BRA','São Paulo',950043);
INSERT INTO `demo_city` VALUES (220,'São Gonçalo','BRA','Rio de Janeiro',869254);
INSERT INTO `demo_city` VALUES (221,'Nova Iguaçu','BRA','Rio de Janeiro',862225);
INSERT INTO `demo_city` VALUES (222,'São Luís','BRA','Maranhão',837588);
INSERT INTO `demo_city` VALUES (223,'Maceió','BRA','Alagoas',786288);
INSERT INTO `demo_city` VALUES (224,'Duque de Caxias','BRA','Rio de Janeiro',746758);
INSERT INTO `demo_city` VALUES (225,'São Bernardo do Campo','BRA','São Paulo',723132);
INSERT INTO `demo_city` VALUES (226,'Teresina','BRA','Piauí',691942);
INSERT INTO `demo_city` VALUES (227,'Natal','BRA','Rio Grande do Norte',688955);
INSERT INTO `demo_city` VALUES (228,'Osasco','BRA','São Paulo',659604);
INSERT INTO `demo_city` VALUES (229,'Campo Grande','BRA','Mato Grosso do Sul',649593);
INSERT INTO `demo_city` VALUES (230,'Santo André','BRA','São Paulo',630073);
INSERT INTO `demo_city` VALUES (231,'João Pessoa','BRA','Paraíba',584029);
INSERT INTO `demo_city` VALUES (232,'Jaboatão dos Guararapes','BRA','Pernambuco',558680);
INSERT INTO `demo_city` VALUES (233,'Contagem','BRA','Minas Gerais',520801);
INSERT INTO `demo_city` VALUES (234,'São José dos Campos','BRA','São Paulo',515553);
INSERT INTO `demo_city` VALUES (235,'Uberlândia','BRA','Minas Gerais',487222);
INSERT INTO `demo_city` VALUES (236,'Feira de Santana','BRA','Bahia',479992);
INSERT INTO `demo_city` VALUES (237,'Ribeirão Preto','BRA','São Paulo',473276);
INSERT INTO `demo_city` VALUES (238,'Sorocaba','BRA','São Paulo',466823);
INSERT INTO `demo_city` VALUES (239,'Niterói','BRA','Rio de Janeiro',459884);
INSERT INTO `demo_city` VALUES (240,'Cuiabá','BRA','Mato Grosso',453813);
INSERT INTO `demo_city` VALUES (241,'Juiz de Fora','BRA','Minas Gerais',450288);
INSERT INTO `demo_city` VALUES (242,'Aracaju','BRA','Sergipe',445555);
INSERT INTO `demo_city` VALUES (243,'São João de Meriti','BRA','Rio de Janeiro',440052);
INSERT INTO `demo_city` VALUES (244,'Londrina','BRA','Paraná',432257);
INSERT INTO `demo_city` VALUES (245,'Joinville','BRA','Santa Catarina',428011);
INSERT INTO `demo_city` VALUES (246,'Belford Roxo','BRA','Rio de Janeiro',425194);
INSERT INTO `demo_city` VALUES (247,'Santos','BRA','São Paulo',408748);
INSERT INTO `demo_city` VALUES (248,'Ananindeua','BRA','Pará',400940);
INSERT INTO `demo_city` VALUES (249,'Campos dos Goytacazes','BRA','Rio de Janeiro',398418);
INSERT INTO `demo_city` VALUES (250,'Mauá','BRA','São Paulo',375055);
INSERT INTO `demo_city` VALUES (251,'Carapicuíba','BRA','São Paulo',357552);
INSERT INTO `demo_city` VALUES (252,'Olinda','BRA','Pernambuco',354732);
INSERT INTO `demo_city` VALUES (253,'Campina Grande','BRA','Paraíba',352497);
INSERT INTO `demo_city` VALUES (254,'São José do Rio Preto','BRA','São Paulo',351944);
INSERT INTO `demo_city` VALUES (255,'Caxias do Sul','BRA','Rio Grande do Sul',349581);
INSERT INTO `demo_city` VALUES (256,'Moji das Cruzes','BRA','São Paulo',339194);
INSERT INTO `demo_city` VALUES (257,'Diadema','BRA','São Paulo',335078);
INSERT INTO `demo_city` VALUES (258,'Aparecida de Goiânia','BRA','Goiás',324662);
INSERT INTO `demo_city` VALUES (259,'Piracicaba','BRA','São Paulo',319104);
INSERT INTO `demo_city` VALUES (260,'Cariacica','BRA','Espírito Santo',319033);
INSERT INTO `demo_city` VALUES (261,'Vila Velha','BRA','Espírito Santo',318758);
INSERT INTO `demo_city` VALUES (262,'Pelotas','BRA','Rio Grande do Sul',315415);
INSERT INTO `demo_city` VALUES (263,'Bauru','BRA','São Paulo',313670);
INSERT INTO `demo_city` VALUES (264,'Porto Velho','BRA','Rondônia',309750);
INSERT INTO `demo_city` VALUES (265,'Serra','BRA','Espírito Santo',302666);
INSERT INTO `demo_city` VALUES (266,'Betim','BRA','Minas Gerais',302108);
INSERT INTO `demo_city` VALUES (267,'Jundíaí','BRA','São Paulo',296127);
INSERT INTO `demo_city` VALUES (268,'Canoas','BRA','Rio Grande do Sul',294125);
INSERT INTO `demo_city` VALUES (269,'Franca','BRA','São Paulo',290139);
INSERT INTO `demo_city` VALUES (270,'São Vicente','BRA','São Paulo',286848);
INSERT INTO `demo_city` VALUES (271,'Maringá','BRA','Paraná',286461);
INSERT INTO `demo_city` VALUES (272,'Montes Claros','BRA','Minas Gerais',286058);
INSERT INTO `demo_city` VALUES (273,'Anápolis','BRA','Goiás',282197);
INSERT INTO `demo_city` VALUES (274,'Florianópolis','BRA','Santa Catarina',281928);
INSERT INTO `demo_city` VALUES (275,'Petrópolis','BRA','Rio de Janeiro',279183);
INSERT INTO `demo_city` VALUES (276,'Itaquaquecetuba','BRA','São Paulo',270874);
INSERT INTO `demo_city` VALUES (277,'Vitória','BRA','Espírito Santo',270626);
INSERT INTO `demo_city` VALUES (278,'Ponta Grossa','BRA','Paraná',268013);
INSERT INTO `demo_city` VALUES (279,'Rio Branco','BRA','Acre',259537);
INSERT INTO `demo_city` VALUES (280,'Foz do Iguaçu','BRA','Paraná',259425);
INSERT INTO `demo_city` VALUES (281,'Macapá','BRA','Amapá',256033);
INSERT INTO `demo_city` VALUES (282,'Ilhéus','BRA','Bahia',254970);
INSERT INTO `demo_city` VALUES (283,'Vitória da Conquista','BRA','Bahia',253587);
INSERT INTO `demo_city` VALUES (284,'Uberaba','BRA','Minas Gerais',249225);
INSERT INTO `demo_city` VALUES (285,'Paulista','BRA','Pernambuco',248473);
INSERT INTO `demo_city` VALUES (286,'Limeira','BRA','São Paulo',245497);
INSERT INTO `demo_city` VALUES (287,'Blumenau','BRA','Santa Catarina',244379);
INSERT INTO `demo_city` VALUES (288,'Caruaru','BRA','Pernambuco',244247);
INSERT INTO `demo_city` VALUES (289,'Santarém','BRA','Pará',241771);
INSERT INTO `demo_city` VALUES (290,'Volta Redonda','BRA','Rio de Janeiro',240315);
INSERT INTO `demo_city` VALUES (291,'Novo Hamburgo','BRA','Rio Grande do Sul',239940);
INSERT INTO `demo_city` VALUES (292,'Caucaia','BRA','Ceará',238738);
INSERT INTO `demo_city` VALUES (293,'Santa Maria','BRA','Rio Grande do Sul',238473);
INSERT INTO `demo_city` VALUES (294,'Cascavel','BRA','Paraná',237510);
INSERT INTO `demo_city` VALUES (295,'Guarujá','BRA','São Paulo',237206);
INSERT INTO `demo_city` VALUES (296,'Ribeirão das Neves','BRA','Minas Gerais',232685);
INSERT INTO `demo_city` VALUES (297,'Governador Valadares','BRA','Minas Gerais',231724);
INSERT INTO `demo_city` VALUES (298,'Taubaté','BRA','São Paulo',229130);
INSERT INTO `demo_city` VALUES (299,'Imperatriz','BRA','Maranhão',224564);
INSERT INTO `demo_city` VALUES (300,'Gravataí','BRA','Rio Grande do Sul',223011);
INSERT INTO `demo_city` VALUES (301,'Embu','BRA','São Paulo',222223);
INSERT INTO `demo_city` VALUES (302,'Mossoró','BRA','Rio Grande do Norte',214901);
INSERT INTO `demo_city` VALUES (303,'Várzea Grande','BRA','Mato Grosso',214435);
INSERT INTO `demo_city` VALUES (304,'Petrolina','BRA','Pernambuco',210540);
INSERT INTO `demo_city` VALUES (305,'Barueri','BRA','São Paulo',208426);
INSERT INTO `demo_city` VALUES (306,'Viamão','BRA','Rio Grande do Sul',207557);
INSERT INTO `demo_city` VALUES (307,'Ipatinga','BRA','Minas Gerais',206338);
INSERT INTO `demo_city` VALUES (308,'Juazeiro','BRA','Bahia',201073);
INSERT INTO `demo_city` VALUES (309,'Juazeiro do Norte','BRA','Ceará',199636);
INSERT INTO `demo_city` VALUES (310,'Taboão da Serra','BRA','São Paulo',197550);
INSERT INTO `demo_city` VALUES (311,'São José dos Pinhais','BRA','Paraná',196884);
INSERT INTO `demo_city` VALUES (312,'Magé','BRA','Rio de Janeiro',196147);
INSERT INTO `demo_city` VALUES (313,'Suzano','BRA','São Paulo',195434);
INSERT INTO `demo_city` VALUES (314,'São Leopoldo','BRA','Rio Grande do Sul',189258);
INSERT INTO `demo_city` VALUES (315,'Marília','BRA','São Paulo',188691);
INSERT INTO `demo_city` VALUES (316,'São Carlos','BRA','São Paulo',187122);
INSERT INTO `demo_city` VALUES (317,'Sumaré','BRA','São Paulo',186205);
INSERT INTO `demo_city` VALUES (318,'Presidente Prudente','BRA','São Paulo',185340);
INSERT INTO `demo_city` VALUES (319,'Divinópolis','BRA','Minas Gerais',185047);
INSERT INTO `demo_city` VALUES (320,'Sete Lagoas','BRA','Minas Gerais',182984);
INSERT INTO `demo_city` VALUES (321,'Rio Grande','BRA','Rio Grande do Sul',182222);
INSERT INTO `demo_city` VALUES (322,'Itabuna','BRA','Bahia',182148);
INSERT INTO `demo_city` VALUES (323,'Jequié','BRA','Bahia',179128);
INSERT INTO `demo_city` VALUES (324,'Arapiraca','BRA','Alagoas',178988);
INSERT INTO `demo_city` VALUES (325,'Colombo','BRA','Paraná',177764);
INSERT INTO `demo_city` VALUES (326,'Americana','BRA','São Paulo',177409);
INSERT INTO `demo_city` VALUES (327,'Alvorada','BRA','Rio Grande do Sul',175574);
INSERT INTO `demo_city` VALUES (328,'Araraquara','BRA','São Paulo',174381);
INSERT INTO `demo_city` VALUES (329,'Itaboraí','BRA','Rio de Janeiro',173977);
INSERT INTO `demo_city` VALUES (330,'Santa Bárbara d´Oeste','BRA','São Paulo',171657);
INSERT INTO `demo_city` VALUES (331,'Nova Friburgo','BRA','Rio de Janeiro',170697);
INSERT INTO `demo_city` VALUES (332,'Jacareí','BRA','São Paulo',170356);
INSERT INTO `demo_city` VALUES (333,'Araçatuba','BRA','São Paulo',169303);
INSERT INTO `demo_city` VALUES (334,'Barra Mansa','BRA','Rio de Janeiro',168953);
INSERT INTO `demo_city` VALUES (335,'Praia Grande','BRA','São Paulo',168434);
INSERT INTO `demo_city` VALUES (336,'Marabá','BRA','Pará',167795);
INSERT INTO `demo_city` VALUES (337,'Criciúma','BRA','Santa Catarina',167661);
INSERT INTO `demo_city` VALUES (338,'Boa Vista','BRA','Roraima',167185);
INSERT INTO `demo_city` VALUES (339,'Passo Fundo','BRA','Rio Grande do Sul',166343);
INSERT INTO `demo_city` VALUES (340,'Dourados','BRA','Mato Grosso do Sul',164716);
INSERT INTO `demo_city` VALUES (341,'Santa Luzia','BRA','Minas Gerais',164704);
INSERT INTO `demo_city` VALUES (342,'Rio Claro','BRA','São Paulo',163551);
INSERT INTO `demo_city` VALUES (343,'Maracanaú','BRA','Ceará',162022);
INSERT INTO `demo_city` VALUES (344,'Guarapuava','BRA','Paraná',160510);
INSERT INTO `demo_city` VALUES (345,'Rondonópolis','BRA','Mato Grosso',155115);
INSERT INTO `demo_city` VALUES (346,'São José','BRA','Santa Catarina',155105);
INSERT INTO `demo_city` VALUES (347,'Cachoeiro de Itapemirim','BRA','Espírito Santo',155024);
INSERT INTO `demo_city` VALUES (348,'Nilópolis','BRA','Rio de Janeiro',153383);
INSERT INTO `demo_city` VALUES (349,'Itapevi','BRA','São Paulo',150664);
INSERT INTO `demo_city` VALUES (350,'Cabo de Santo Agostinho','BRA','Pernambuco',149964);
INSERT INTO `demo_city` VALUES (351,'Camaçari','BRA','Bahia',149146);
INSERT INTO `demo_city` VALUES (352,'Sobral','BRA','Ceará',146005);
INSERT INTO `demo_city` VALUES (353,'Itajaí','BRA','Santa Catarina',145197);
INSERT INTO `demo_city` VALUES (354,'Chapecó','BRA','Santa Catarina',144158);
INSERT INTO `demo_city` VALUES (355,'Cotia','BRA','São Paulo',140042);
INSERT INTO `demo_city` VALUES (356,'Lages','BRA','Santa Catarina',139570);
INSERT INTO `demo_city` VALUES (357,'Ferraz de Vasconcelos','BRA','São Paulo',139283);
INSERT INTO `demo_city` VALUES (358,'Indaiatuba','BRA','São Paulo',135968);
INSERT INTO `demo_city` VALUES (359,'Hortolândia','BRA','São Paulo',135755);
INSERT INTO `demo_city` VALUES (360,'Caxias','BRA','Maranhão',133980);
INSERT INTO `demo_city` VALUES (361,'São Caetano do Sul','BRA','São Paulo',133321);
INSERT INTO `demo_city` VALUES (362,'Itu','BRA','São Paulo',132736);
INSERT INTO `demo_city` VALUES (363,'Nossa Senhora do Socorro','BRA','Sergipe',131351);
INSERT INTO `demo_city` VALUES (364,'Parnaíba','BRA','Piauí',129756);
INSERT INTO `demo_city` VALUES (365,'Poços de Caldas','BRA','Minas Gerais',129683);
INSERT INTO `demo_city` VALUES (366,'Teresópolis','BRA','Rio de Janeiro',128079);
INSERT INTO `demo_city` VALUES (367,'Barreiras','BRA','Bahia',127801);
INSERT INTO `demo_city` VALUES (368,'Castanhal','BRA','Pará',127634);
INSERT INTO `demo_city` VALUES (369,'Alagoinhas','BRA','Bahia',126820);
INSERT INTO `demo_city` VALUES (370,'Itapecerica da Serra','BRA','São Paulo',126672);
INSERT INTO `demo_city` VALUES (371,'Uruguaiana','BRA','Rio Grande do Sul',126305);
INSERT INTO `demo_city` VALUES (372,'Paranaguá','BRA','Paraná',126076);
INSERT INTO `demo_city` VALUES (373,'Ibirité','BRA','Minas Gerais',125982);
INSERT INTO `demo_city` VALUES (374,'Timon','BRA','Maranhão',125812);
INSERT INTO `demo_city` VALUES (375,'Luziânia','BRA','Goiás',125597);
INSERT INTO `demo_city` VALUES (376,'Macaé','BRA','Rio de Janeiro',125597);
INSERT INTO `demo_city` VALUES (377,'Teófilo Otoni','BRA','Minas Gerais',124489);
INSERT INTO `demo_city` VALUES (378,'Moji-Guaçu','BRA','São Paulo',123782);
INSERT INTO `demo_city` VALUES (379,'Palmas','BRA','Tocantins',121919);
INSERT INTO `demo_city` VALUES (380,'Pindamonhangaba','BRA','São Paulo',121904);
INSERT INTO `demo_city` VALUES (381,'Francisco Morato','BRA','São Paulo',121197);
INSERT INTO `demo_city` VALUES (382,'Bagé','BRA','Rio Grande do Sul',120793);
INSERT INTO `demo_city` VALUES (383,'Sapucaia do Sul','BRA','Rio Grande do Sul',120217);
INSERT INTO `demo_city` VALUES (384,'Cabo Frio','BRA','Rio de Janeiro',119503);
INSERT INTO `demo_city` VALUES (385,'Itapetininga','BRA','São Paulo',119391);
INSERT INTO `demo_city` VALUES (386,'Patos de Minas','BRA','Minas Gerais',119262);
INSERT INTO `demo_city` VALUES (387,'Camaragibe','BRA','Pernambuco',118968);
INSERT INTO `demo_city` VALUES (388,'Bragança Paulista','BRA','São Paulo',116929);
INSERT INTO `demo_city` VALUES (389,'Queimados','BRA','Rio de Janeiro',115020);
INSERT INTO `demo_city` VALUES (390,'Araguaína','BRA','Tocantins',114948);
INSERT INTO `demo_city` VALUES (391,'Garanhuns','BRA','Pernambuco',114603);
INSERT INTO `demo_city` VALUES (392,'Vitória de Santo Antão','BRA','Pernambuco',113595);
INSERT INTO `demo_city` VALUES (393,'Santa Rita','BRA','Paraíba',113135);
INSERT INTO `demo_city` VALUES (394,'Barbacena','BRA','Minas Gerais',113079);
INSERT INTO `demo_city` VALUES (395,'Abaetetuba','BRA','Pará',111258);
INSERT INTO `demo_city` VALUES (396,'Jaú','BRA','São Paulo',109965);
INSERT INTO `demo_city` VALUES (397,'Lauro de Freitas','BRA','Bahia',109236);
INSERT INTO `demo_city` VALUES (398,'Franco da Rocha','BRA','São Paulo',108964);
INSERT INTO `demo_city` VALUES (399,'Teixeira de Freitas','BRA','Bahia',108441);
INSERT INTO `demo_city` VALUES (400,'Varginha','BRA','Minas Gerais',108314);
INSERT INTO `demo_city` VALUES (401,'Ribeirão Pires','BRA','São Paulo',108121);
INSERT INTO `demo_city` VALUES (402,'Sabará','BRA','Minas Gerais',107781);
INSERT INTO `demo_city` VALUES (403,'Catanduva','BRA','São Paulo',107761);
INSERT INTO `demo_city` VALUES (404,'Rio Verde','BRA','Goiás',107755);
INSERT INTO `demo_city` VALUES (405,'Botucatu','BRA','São Paulo',107663);
INSERT INTO `demo_city` VALUES (406,'Colatina','BRA','Espírito Santo',107354);
INSERT INTO `demo_city` VALUES (407,'Santa Cruz do Sul','BRA','Rio Grande do Sul',106734);
INSERT INTO `demo_city` VALUES (408,'Linhares','BRA','Espírito Santo',106278);
INSERT INTO `demo_city` VALUES (409,'Apucarana','BRA','Paraná',105114);
INSERT INTO `demo_city` VALUES (410,'Barretos','BRA','São Paulo',104156);
INSERT INTO `demo_city` VALUES (411,'Guaratinguetá','BRA','São Paulo',103433);
INSERT INTO `demo_city` VALUES (412,'Cachoeirinha','BRA','Rio Grande do Sul',103240);
INSERT INTO `demo_city` VALUES (413,'Codó','BRA','Maranhão',103153);
INSERT INTO `demo_city` VALUES (414,'Jaraguá do Sul','BRA','Santa Catarina',102580);
INSERT INTO `demo_city` VALUES (415,'Cubatão','BRA','São Paulo',102372);
INSERT INTO `demo_city` VALUES (416,'Itabira','BRA','Minas Gerais',102217);
INSERT INTO `demo_city` VALUES (417,'Itaituba','BRA','Pará',101320);
INSERT INTO `demo_city` VALUES (418,'Araras','BRA','São Paulo',101046);
INSERT INTO `demo_city` VALUES (419,'Resende','BRA','Rio de Janeiro',100627);
INSERT INTO `demo_city` VALUES (420,'Atibaia','BRA','São Paulo',100356);
INSERT INTO `demo_city` VALUES (421,'Pouso Alegre','BRA','Minas Gerais',100028);
INSERT INTO `demo_city` VALUES (422,'Toledo','BRA','Paraná',99387);
INSERT INTO `demo_city` VALUES (423,'Crato','BRA','Ceará',98965);
INSERT INTO `demo_city` VALUES (424,'Passos','BRA','Minas Gerais',98570);
INSERT INTO `demo_city` VALUES (425,'Araguari','BRA','Minas Gerais',98399);
INSERT INTO `demo_city` VALUES (426,'São José de Ribamar','BRA','Maranhão',98318);
INSERT INTO `demo_city` VALUES (427,'Pinhais','BRA','Paraná',98198);
INSERT INTO `demo_city` VALUES (428,'Sertãozinho','BRA','São Paulo',98140);
INSERT INTO `demo_city` VALUES (429,'Conselheiro Lafaiete','BRA','Minas Gerais',97507);
INSERT INTO `demo_city` VALUES (430,'Paulo Afonso','BRA','Bahia',97291);
INSERT INTO `demo_city` VALUES (431,'Angra dos Reis','BRA','Rio de Janeiro',96864);
INSERT INTO `demo_city` VALUES (432,'Eunápolis','BRA','Bahia',96610);
INSERT INTO `demo_city` VALUES (433,'Salto','BRA','São Paulo',96348);
INSERT INTO `demo_city` VALUES (434,'Ourinhos','BRA','São Paulo',96291);
INSERT INTO `demo_city` VALUES (435,'Parnamirim','BRA','Rio Grande do Norte',96210);
INSERT INTO `demo_city` VALUES (436,'Jacobina','BRA','Bahia',96131);
INSERT INTO `demo_city` VALUES (437,'Coronel Fabriciano','BRA','Minas Gerais',95933);
INSERT INTO `demo_city` VALUES (438,'Birigui','BRA','São Paulo',94685);
INSERT INTO `demo_city` VALUES (439,'Tatuí','BRA','São Paulo',93897);
INSERT INTO `demo_city` VALUES (440,'Ji-Paraná','BRA','Rondônia',93346);
INSERT INTO `demo_city` VALUES (441,'Bacabal','BRA','Maranhão',93121);
INSERT INTO `demo_city` VALUES (442,'Cametá','BRA','Pará',92779);
INSERT INTO `demo_city` VALUES (443,'Guaíba','BRA','Rio Grande do Sul',92224);
INSERT INTO `demo_city` VALUES (444,'São Lourenço da Mata','BRA','Pernambuco',91999);
INSERT INTO `demo_city` VALUES (445,'Santana do Livramento','BRA','Rio Grande do Sul',91779);
INSERT INTO `demo_city` VALUES (446,'Votorantim','BRA','São Paulo',91777);
INSERT INTO `demo_city` VALUES (447,'Campo Largo','BRA','Paraná',91203);
INSERT INTO `demo_city` VALUES (448,'Patos','BRA','Paraíba',90519);
INSERT INTO `demo_city` VALUES (449,'Ituiutaba','BRA','Minas Gerais',90507);
INSERT INTO `demo_city` VALUES (450,'Corumbá','BRA','Mato Grosso do Sul',90111);
INSERT INTO `demo_city` VALUES (451,'Palhoça','BRA','Santa Catarina',89465);
INSERT INTO `demo_city` VALUES (452,'Barra do Piraí','BRA','Rio de Janeiro',89388);
INSERT INTO `demo_city` VALUES (453,'Bento Gonçalves','BRA','Rio Grande do Sul',89254);
INSERT INTO `demo_city` VALUES (454,'Poá','BRA','São Paulo',89236);
INSERT INTO `demo_city` VALUES (455,'Águas Lindas de Goiás','BRA','Goiás',89200);
INSERT INTO `demo_city` VALUES (456,'London','GBR','England',7285000);
INSERT INTO `demo_city` VALUES (457,'Birmingham','GBR','England',1013000);
INSERT INTO `demo_city` VALUES (458,'Glasgow','GBR','Scotland',619680);
INSERT INTO `demo_city` VALUES (459,'Liverpool','GBR','England',461000);
INSERT INTO `demo_city` VALUES (460,'Edinburgh','GBR','Scotland',450180);
INSERT INTO `demo_city` VALUES (461,'Sheffield','GBR','England',431607);
INSERT INTO `demo_city` VALUES (462,'Manchester','GBR','England',430000);
INSERT INTO `demo_city` VALUES (463,'Leeds','GBR','England',424194);
INSERT INTO `demo_city` VALUES (464,'Bristol','GBR','England',402000);
INSERT INTO `demo_city` VALUES (465,'Cardiff','GBR','Wales',321000);
INSERT INTO `demo_city` VALUES (466,'Coventry','GBR','England',304000);
INSERT INTO `demo_city` VALUES (467,'Leicester','GBR','England',294000);
INSERT INTO `demo_city` VALUES (468,'Bradford','GBR','England',289376);
INSERT INTO `demo_city` VALUES (469,'Belfast','GBR','North Ireland',287500);
INSERT INTO `demo_city` VALUES (470,'Nottingham','GBR','England',287000);
INSERT INTO `demo_city` VALUES (471,'Kingston upon Hull','GBR','England',262000);
INSERT INTO `demo_city` VALUES (472,'Plymouth','GBR','England',253000);
INSERT INTO `demo_city` VALUES (473,'Stoke-on-Trent','GBR','England',252000);
INSERT INTO `demo_city` VALUES (474,'Wolverhampton','GBR','England',242000);
INSERT INTO `demo_city` VALUES (475,'Derby','GBR','England',236000);
INSERT INTO `demo_city` VALUES (476,'Swansea','GBR','Wales',230000);
INSERT INTO `demo_city` VALUES (477,'Southampton','GBR','England',216000);
INSERT INTO `demo_city` VALUES (478,'Aberdeen','GBR','Scotland',213070);
INSERT INTO `demo_city` VALUES (479,'Northampton','GBR','England',196000);
INSERT INTO `demo_city` VALUES (480,'Dudley','GBR','England',192171);
INSERT INTO `demo_city` VALUES (481,'Portsmouth','GBR','England',190000);
INSERT INTO `demo_city` VALUES (482,'Newcastle upon Tyne','GBR','England',189150);
INSERT INTO `demo_city` VALUES (483,'Sunderland','GBR','England',183310);
INSERT INTO `demo_city` VALUES (484,'Luton','GBR','England',183000);
INSERT INTO `demo_city` VALUES (485,'Swindon','GBR','England',180000);
INSERT INTO `demo_city` VALUES (486,'Southend-on-Sea','GBR','England',176000);
INSERT INTO `demo_city` VALUES (487,'Walsall','GBR','England',174739);
INSERT INTO `demo_city` VALUES (488,'Bournemouth','GBR','England',162000);
INSERT INTO `demo_city` VALUES (489,'Peterborough','GBR','England',156000);
INSERT INTO `demo_city` VALUES (490,'Brighton','GBR','England',156124);
INSERT INTO `demo_city` VALUES (491,'Blackpool','GBR','England',151000);
INSERT INTO `demo_city` VALUES (492,'Dundee','GBR','Scotland',146690);
INSERT INTO `demo_city` VALUES (493,'West Bromwich','GBR','England',146386);
INSERT INTO `demo_city` VALUES (494,'Reading','GBR','England',148000);
INSERT INTO `demo_city` VALUES (495,'Oldbury/Smethwick (Warley)','GBR','England',145542);
INSERT INTO `demo_city` VALUES (496,'Middlesbrough','GBR','England',145000);
INSERT INTO `demo_city` VALUES (497,'Huddersfield','GBR','England',143726);
INSERT INTO `demo_city` VALUES (498,'Oxford','GBR','England',144000);
INSERT INTO `demo_city` VALUES (499,'Poole','GBR','England',141000);
INSERT INTO `demo_city` VALUES (500,'Bolton','GBR','England',139020);
INSERT INTO `demo_city` VALUES (501,'Blackburn','GBR','England',140000);
INSERT INTO `demo_city` VALUES (502,'Newport','GBR','Wales',139000);
INSERT INTO `demo_city` VALUES (503,'Preston','GBR','England',135000);
INSERT INTO `demo_city` VALUES (504,'Stockport','GBR','England',132813);
INSERT INTO `demo_city` VALUES (505,'Norwich','GBR','England',124000);
INSERT INTO `demo_city` VALUES (506,'Rotherham','GBR','England',121380);
INSERT INTO `demo_city` VALUES (507,'Cambridge','GBR','England',121000);
INSERT INTO `demo_city` VALUES (508,'Watford','GBR','England',113080);
INSERT INTO `demo_city` VALUES (509,'Ipswich','GBR','England',114000);
INSERT INTO `demo_city` VALUES (510,'Slough','GBR','England',112000);
INSERT INTO `demo_city` VALUES (511,'Exeter','GBR','England',111000);
INSERT INTO `demo_city` VALUES (512,'Cheltenham','GBR','England',106000);
INSERT INTO `demo_city` VALUES (513,'Gloucester','GBR','England',107000);
INSERT INTO `demo_city` VALUES (514,'Saint Helens','GBR','England',106293);
INSERT INTO `demo_city` VALUES (515,'Sutton Coldfield','GBR','England',106001);
INSERT INTO `demo_city` VALUES (516,'York','GBR','England',104425);
INSERT INTO `demo_city` VALUES (517,'Oldham','GBR','England',103931);
INSERT INTO `demo_city` VALUES (518,'Basildon','GBR','England',100924);
INSERT INTO `demo_city` VALUES (519,'Worthing','GBR','England',100000);
INSERT INTO `demo_city` VALUES (520,'Chelmsford','GBR','England',97451);
INSERT INTO `demo_city` VALUES (521,'Colchester','GBR','England',96063);
INSERT INTO `demo_city` VALUES (522,'Crawley','GBR','England',97000);
INSERT INTO `demo_city` VALUES (523,'Gillingham','GBR','England',92000);
INSERT INTO `demo_city` VALUES (524,'Solihull','GBR','England',94531);
INSERT INTO `demo_city` VALUES (525,'Rochdale','GBR','England',94313);
INSERT INTO `demo_city` VALUES (526,'Birkenhead','GBR','England',93087);
INSERT INTO `demo_city` VALUES (527,'Worcester','GBR','England',95000);
INSERT INTO `demo_city` VALUES (528,'Hartlepool','GBR','England',92000);
INSERT INTO `demo_city` VALUES (529,'Halifax','GBR','England',91069);
INSERT INTO `demo_city` VALUES (530,'Woking/Byfleet','GBR','England',92000);
INSERT INTO `demo_city` VALUES (531,'Southport','GBR','England',90959);
INSERT INTO `demo_city` VALUES (532,'Maidstone','GBR','England',90878);
INSERT INTO `demo_city` VALUES (533,'Eastbourne','GBR','England',90000);
INSERT INTO `demo_city` VALUES (534,'Grimsby','GBR','England',89000);
INSERT INTO `demo_city` VALUES (535,'Saint Helier','GBR','Jersey',27523);
INSERT INTO `demo_city` VALUES (536,'Douglas','GBR','',23487);
INSERT INTO `demo_city` VALUES (537,'Road Town','VGB','Tortola',8000);
INSERT INTO `demo_city` VALUES (538,'Bandar Seri Begawan','BRN','Brunei and Muara',21484);
INSERT INTO `demo_city` VALUES (539,'Sofija','BGR','Grad Sofija',1122302);
INSERT INTO `demo_city` VALUES (540,'Plovdiv','BGR','Plovdiv',342584);
INSERT INTO `demo_city` VALUES (541,'Varna','BGR','Varna',299801);
INSERT INTO `demo_city` VALUES (542,'Burgas','BGR','Burgas',195255);
INSERT INTO `demo_city` VALUES (543,'Ruse','BGR','Ruse',166467);
INSERT INTO `demo_city` VALUES (544,'Stara Zagora','BGR','Haskovo',147939);
INSERT INTO `demo_city` VALUES (545,'Pleven','BGR','Lovec',121952);
INSERT INTO `demo_city` VALUES (546,'Sliven','BGR','Burgas',105530);
INSERT INTO `demo_city` VALUES (547,'Dobric','BGR','Varna',100399);
INSERT INTO `demo_city` VALUES (548,'umen','BGR','Varna',94686);
INSERT INTO `demo_city` VALUES (549,'Ouagadougou','BFA','Kadiogo',824000);
INSERT INTO `demo_city` VALUES (550,'Bobo-Dioulasso','BFA','Houet',300000);
INSERT INTO `demo_city` VALUES (551,'Koudougou','BFA','Boulkiemdé',105000);
INSERT INTO `demo_city` VALUES (552,'Bujumbura','BDI','Bujumbura',300000);
INSERT INTO `demo_city` VALUES (553,'George Town','CYM','Grand Cayman',19600);
INSERT INTO `demo_city` VALUES (554,'Santiago de Chile','CHL','Santiago',4703954);
INSERT INTO `demo_city` VALUES (555,'Puente Alto','CHL','Santiago',386236);
INSERT INTO `demo_city` VALUES (556,'Viña del Mar','CHL','Valparaíso',312493);
INSERT INTO `demo_city` VALUES (557,'Valparaíso','CHL','Valparaíso',293800);
INSERT INTO `demo_city` VALUES (558,'Talcahuano','CHL','Bíobío',277752);
INSERT INTO `demo_city` VALUES (559,'Antofagasta','CHL','Antofagasta',251429);
INSERT INTO `demo_city` VALUES (560,'San Bernardo','CHL','Santiago',241910);
INSERT INTO `demo_city` VALUES (561,'Temuco','CHL','La Araucanía',233041);
INSERT INTO `demo_city` VALUES (562,'Concepción','CHL','Bíobío',217664);
INSERT INTO `demo_city` VALUES (563,'Rancagua','CHL','O´Higgins',212977);
INSERT INTO `demo_city` VALUES (564,'Arica','CHL','Tarapacá',189036);
INSERT INTO `demo_city` VALUES (565,'Talca','CHL','Maule',187557);
INSERT INTO `demo_city` VALUES (566,'Chillán','CHL','Bíobío',178182);
INSERT INTO `demo_city` VALUES (567,'Iquique','CHL','Tarapacá',177892);
INSERT INTO `demo_city` VALUES (568,'Los Angeles','CHL','Bíobío',158215);
INSERT INTO `demo_city` VALUES (569,'Puerto Montt','CHL','Los Lagos',152194);
INSERT INTO `demo_city` VALUES (570,'Coquimbo','CHL','Coquimbo',143353);
INSERT INTO `demo_city` VALUES (571,'Osorno','CHL','Los Lagos',141468);
INSERT INTO `demo_city` VALUES (572,'La Serena','CHL','Coquimbo',137409);
INSERT INTO `demo_city` VALUES (573,'Calama','CHL','Antofagasta',137265);
INSERT INTO `demo_city` VALUES (574,'Valdivia','CHL','Los Lagos',133106);
INSERT INTO `demo_city` VALUES (575,'Punta Arenas','CHL','Magallanes',125631);
INSERT INTO `demo_city` VALUES (576,'Copiapó','CHL','Atacama',120128);
INSERT INTO `demo_city` VALUES (577,'Quilpué','CHL','Valparaíso',118857);
INSERT INTO `demo_city` VALUES (578,'Curicó','CHL','Maule',115766);
INSERT INTO `demo_city` VALUES (579,'Ovalle','CHL','Coquimbo',94854);
INSERT INTO `demo_city` VALUES (580,'Coronel','CHL','Bíobío',93061);
INSERT INTO `demo_city` VALUES (581,'San Pedro de la Paz','CHL','Bíobío',91684);
INSERT INTO `demo_city` VALUES (582,'Melipilla','CHL','Santiago',91056);
INSERT INTO `demo_city` VALUES (583,'Avarua','COK','Rarotonga',11900);
INSERT INTO `demo_city` VALUES (584,'San José','CRI','San José',339131);
INSERT INTO `demo_city` VALUES (585,'Djibouti','DJI','Djibouti',383000);
INSERT INTO `demo_city` VALUES (586,'Roseau','DMA','St George',16243);
INSERT INTO `demo_city` VALUES (587,'Santo Domingo de Guzmán','DOM','Distrito Nacional',1609966);
INSERT INTO `demo_city` VALUES (588,'Santiago de los Caballeros','DOM','Santiago',365463);
INSERT INTO `demo_city` VALUES (589,'La Romana','DOM','La Romana',140204);
INSERT INTO `demo_city` VALUES (590,'San Pedro de Macorís','DOM','San Pedro de Macorís',124735);
INSERT INTO `demo_city` VALUES (591,'San Francisco de Macorís','DOM','Duarte',108485);
INSERT INTO `demo_city` VALUES (592,'San Felipe de Puerto Plata','DOM','Puerto Plata',89423);
INSERT INTO `demo_city` VALUES (593,'Guayaquil','ECU','Guayas',2070040);
INSERT INTO `demo_city` VALUES (594,'Quito','ECU','Pichincha',1573458);
INSERT INTO `demo_city` VALUES (595,'Cuenca','ECU','Azuay',270353);
INSERT INTO `demo_city` VALUES (596,'Machala','ECU','El Oro',210368);
INSERT INTO `demo_city` VALUES (597,'Santo Domingo de los Colorados','ECU','Pichincha',202111);
INSERT INTO `demo_city` VALUES (598,'Portoviejo','ECU','Manabí',176413);
INSERT INTO `demo_city` VALUES (599,'Ambato','ECU','Tungurahua',169612);
INSERT INTO `demo_city` VALUES (600,'Manta','ECU','Manabí',164739);
INSERT INTO `demo_city` VALUES (601,'Duran [Eloy Alfaro]','ECU','Guayas',152514);
INSERT INTO `demo_city` VALUES (602,'Ibarra','ECU','Imbabura',130643);
INSERT INTO `demo_city` VALUES (603,'Quevedo','ECU','Los Ríos',129631);
INSERT INTO `demo_city` VALUES (604,'Milagro','ECU','Guayas',124177);
INSERT INTO `demo_city` VALUES (605,'Loja','ECU','Loja',123875);
INSERT INTO `demo_city` VALUES (606,'Ríobamba','ECU','Chimborazo',123163);
INSERT INTO `demo_city` VALUES (607,'Esmeraldas','ECU','Esmeraldas',123045);
INSERT INTO `demo_city` VALUES (608,'Cairo','EGY','Kairo',6789479);
INSERT INTO `demo_city` VALUES (609,'Alexandria','EGY','Aleksandria',3328196);
INSERT INTO `demo_city` VALUES (610,'Giza','EGY','Giza',2221868);
INSERT INTO `demo_city` VALUES (611,'Shubra al-Khayma','EGY','al-Qalyubiya',870716);
INSERT INTO `demo_city` VALUES (612,'Port Said','EGY','Port Said',469533);
INSERT INTO `demo_city` VALUES (613,'Suez','EGY','Suez',417610);
INSERT INTO `demo_city` VALUES (614,'al-Mahallat al-Kubra','EGY','al-Gharbiya',395402);
INSERT INTO `demo_city` VALUES (615,'Tanta','EGY','al-Gharbiya',371010);
INSERT INTO `demo_city` VALUES (616,'al-Mansura','EGY','al-Daqahliya',369621);
INSERT INTO `demo_city` VALUES (617,'Luxor','EGY','Luxor',360503);
INSERT INTO `demo_city` VALUES (618,'Asyut','EGY','Asyut',343498);
INSERT INTO `demo_city` VALUES (619,'Bahtim','EGY','al-Qalyubiya',275807);
INSERT INTO `demo_city` VALUES (620,'Zagazig','EGY','al-Sharqiya',267351);
INSERT INTO `demo_city` VALUES (621,'al-Faiyum','EGY','al-Faiyum',260964);
INSERT INTO `demo_city` VALUES (622,'Ismailia','EGY','Ismailia',254477);
INSERT INTO `demo_city` VALUES (623,'Kafr al-Dawwar','EGY','al-Buhayra',231978);
INSERT INTO `demo_city` VALUES (624,'Assuan','EGY','Assuan',219017);
INSERT INTO `demo_city` VALUES (625,'Damanhur','EGY','al-Buhayra',212203);
INSERT INTO `demo_city` VALUES (626,'al-Minya','EGY','al-Minya',201360);
INSERT INTO `demo_city` VALUES (627,'Bani Suwayf','EGY','Bani Suwayf',172032);
INSERT INTO `demo_city` VALUES (628,'Qina','EGY','Qina',171275);
INSERT INTO `demo_city` VALUES (629,'Sawhaj','EGY','Sawhaj',170125);
INSERT INTO `demo_city` VALUES (630,'Shibin al-Kawm','EGY','al-Minufiya',159909);
INSERT INTO `demo_city` VALUES (631,'Bulaq al-Dakrur','EGY','Giza',148787);
INSERT INTO `demo_city` VALUES (632,'Banha','EGY','al-Qalyubiya',145792);
INSERT INTO `demo_city` VALUES (633,'Warraq al-Arab','EGY','Giza',127108);
INSERT INTO `demo_city` VALUES (634,'Kafr al-Shaykh','EGY','Kafr al-Shaykh',124819);
INSERT INTO `demo_city` VALUES (635,'Mallawi','EGY','al-Minya',119283);
INSERT INTO `demo_city` VALUES (636,'Bilbays','EGY','al-Sharqiya',113608);
INSERT INTO `demo_city` VALUES (637,'Mit Ghamr','EGY','al-Daqahliya',101801);
INSERT INTO `demo_city` VALUES (638,'al-Arish','EGY','Shamal Sina',100447);
INSERT INTO `demo_city` VALUES (639,'Talkha','EGY','al-Daqahliya',97700);
INSERT INTO `demo_city` VALUES (640,'Qalyub','EGY','al-Qalyubiya',97200);
INSERT INTO `demo_city` VALUES (641,'Jirja','EGY','Sawhaj',95400);
INSERT INTO `demo_city` VALUES (642,'Idfu','EGY','Qina',94200);
INSERT INTO `demo_city` VALUES (643,'al-Hawamidiya','EGY','Giza',91700);
INSERT INTO `demo_city` VALUES (644,'Disuq','EGY','Kafr al-Shaykh',91300);
INSERT INTO `demo_city` VALUES (645,'San Salvador','SLV','San Salvador',415346);
INSERT INTO `demo_city` VALUES (646,'Santa Ana','SLV','Santa Ana',139389);
INSERT INTO `demo_city` VALUES (647,'Mejicanos','SLV','San Salvador',138800);
INSERT INTO `demo_city` VALUES (648,'Soyapango','SLV','San Salvador',129800);
INSERT INTO `demo_city` VALUES (649,'San Miguel','SLV','San Miguel',127696);
INSERT INTO `demo_city` VALUES (650,'Nueva San Salvador','SLV','La Libertad',98400);
INSERT INTO `demo_city` VALUES (651,'Apopa','SLV','San Salvador',88800);
INSERT INTO `demo_city` VALUES (652,'Asmara','ERI','Maekel',431000);
INSERT INTO `demo_city` VALUES (653,'Madrid','ESP','Madrid',2879052);
INSERT INTO `demo_city` VALUES (654,'Barcelona','ESP','Katalonia',1503451);
INSERT INTO `demo_city` VALUES (655,'Valencia','ESP','Valencia',739412);
INSERT INTO `demo_city` VALUES (656,'Sevilla','ESP','Andalusia',701927);
INSERT INTO `demo_city` VALUES (657,'Zaragoza','ESP','Aragonia',603367);
INSERT INTO `demo_city` VALUES (658,'Málaga','ESP','Andalusia',530553);
INSERT INTO `demo_city` VALUES (659,'Bilbao','ESP','Baskimaa',357589);
INSERT INTO `demo_city` VALUES (660,'Las Palmas de Gran Canaria','ESP','Canary Islands',354757);
INSERT INTO `demo_city` VALUES (661,'Murcia','ESP','Murcia',353504);
INSERT INTO `demo_city` VALUES (662,'Palma de Mallorca','ESP','Balears',326993);
INSERT INTO `demo_city` VALUES (663,'Valladolid','ESP','Castilla and León',319998);
INSERT INTO `demo_city` VALUES (664,'Córdoba','ESP','Andalusia',311708);
INSERT INTO `demo_city` VALUES (665,'Vigo','ESP','Galicia',283670);
INSERT INTO `demo_city` VALUES (666,'Alicante [Alacant]','ESP','Valencia',272432);
INSERT INTO `demo_city` VALUES (667,'Gijón','ESP','Asturia',267980);
INSERT INTO `demo_city` VALUES (668,'L´Hospitalet de Llobregat','ESP','Katalonia',247986);
INSERT INTO `demo_city` VALUES (669,'Granada','ESP','Andalusia',244767);
INSERT INTO `demo_city` VALUES (670,'A Coruña (La Coruña)','ESP','Galicia',243402);
INSERT INTO `demo_city` VALUES (671,'Vitoria-Gasteiz','ESP','Baskimaa',217154);
INSERT INTO `demo_city` VALUES (672,'Santa Cruz de Tenerife','ESP','Canary Islands',213050);
INSERT INTO `demo_city` VALUES (673,'Badalona','ESP','Katalonia',209635);
INSERT INTO `demo_city` VALUES (674,'Oviedo','ESP','Asturia',200453);
INSERT INTO `demo_city` VALUES (675,'Móstoles','ESP','Madrid',195351);
INSERT INTO `demo_city` VALUES (676,'Elche [Elx]','ESP','Valencia',193174);
INSERT INTO `demo_city` VALUES (677,'Sabadell','ESP','Katalonia',184859);
INSERT INTO `demo_city` VALUES (678,'Santander','ESP','Cantabria',184165);
INSERT INTO `demo_city` VALUES (679,'Jerez de la Frontera','ESP','Andalusia',182660);
INSERT INTO `demo_city` VALUES (680,'Pamplona [Iruña]','ESP','Navarra',180483);
INSERT INTO `demo_city` VALUES (681,'Donostia-San Sebastián','ESP','Baskimaa',179208);
INSERT INTO `demo_city` VALUES (682,'Cartagena','ESP','Murcia',177709);
INSERT INTO `demo_city` VALUES (683,'Leganés','ESP','Madrid',173163);
INSERT INTO `demo_city` VALUES (684,'Fuenlabrada','ESP','Madrid',171173);
INSERT INTO `demo_city` VALUES (685,'Almería','ESP','Andalusia',169027);
INSERT INTO `demo_city` VALUES (686,'Terrassa','ESP','Katalonia',168695);
INSERT INTO `demo_city` VALUES (687,'Alcalá de Henares','ESP','Madrid',164463);
INSERT INTO `demo_city` VALUES (688,'Burgos','ESP','Castilla and León',162802);
INSERT INTO `demo_city` VALUES (689,'Salamanca','ESP','Castilla and León',158720);
INSERT INTO `demo_city` VALUES (690,'Albacete','ESP','Kastilia-La Mancha',147527);
INSERT INTO `demo_city` VALUES (691,'Getafe','ESP','Madrid',145371);
INSERT INTO `demo_city` VALUES (692,'Cádiz','ESP','Andalusia',142449);
INSERT INTO `demo_city` VALUES (693,'Alcorcón','ESP','Madrid',142048);
INSERT INTO `demo_city` VALUES (694,'Huelva','ESP','Andalusia',140583);
INSERT INTO `demo_city` VALUES (695,'León','ESP','Castilla and León',139809);
INSERT INTO `demo_city` VALUES (696,'Castellón de la Plana [Castell','ESP','Valencia',139712);
INSERT INTO `demo_city` VALUES (697,'Badajoz','ESP','Extremadura',136613);
INSERT INTO `demo_city` VALUES (698,'[San Cristóbal de] la Laguna','ESP','Canary Islands',127945);
INSERT INTO `demo_city` VALUES (699,'Logroño','ESP','La Rioja',127093);
INSERT INTO `demo_city` VALUES (700,'Santa Coloma de Gramenet','ESP','Katalonia',120802);
INSERT INTO `demo_city` VALUES (701,'Tarragona','ESP','Katalonia',113016);
INSERT INTO `demo_city` VALUES (702,'Lleida (Lérida)','ESP','Katalonia',112207);
INSERT INTO `demo_city` VALUES (703,'Jaén','ESP','Andalusia',109247);
INSERT INTO `demo_city` VALUES (704,'Ourense (Orense)','ESP','Galicia',109120);
INSERT INTO `demo_city` VALUES (705,'Mataró','ESP','Katalonia',104095);
INSERT INTO `demo_city` VALUES (706,'Algeciras','ESP','Andalusia',103106);
INSERT INTO `demo_city` VALUES (707,'Marbella','ESP','Andalusia',101144);
INSERT INTO `demo_city` VALUES (708,'Barakaldo','ESP','Baskimaa',98212);
INSERT INTO `demo_city` VALUES (709,'Dos Hermanas','ESP','Andalusia',94591);
INSERT INTO `demo_city` VALUES (710,'Santiago de Compostela','ESP','Galicia',93745);
INSERT INTO `demo_city` VALUES (711,'Torrejón de Ardoz','ESP','Madrid',92262);
INSERT INTO `demo_city` VALUES (712,'Cape Town','ZAF','Western Cape',2352121);
INSERT INTO `demo_city` VALUES (713,'Soweto','ZAF','Gauteng',904165);
INSERT INTO `demo_city` VALUES (714,'Johannesburg','ZAF','Gauteng',756653);
INSERT INTO `demo_city` VALUES (715,'Port Elizabeth','ZAF','Eastern Cape',752319);
INSERT INTO `demo_city` VALUES (716,'Pretoria','ZAF','Gauteng',658630);
INSERT INTO `demo_city` VALUES (717,'Inanda','ZAF','KwaZulu-Natal',634065);
INSERT INTO `demo_city` VALUES (718,'Durban','ZAF','KwaZulu-Natal',566120);
INSERT INTO `demo_city` VALUES (719,'Vanderbijlpark','ZAF','Gauteng',468931);
INSERT INTO `demo_city` VALUES (720,'Kempton Park','ZAF','Gauteng',442633);
INSERT INTO `demo_city` VALUES (721,'Alberton','ZAF','Gauteng',410102);
INSERT INTO `demo_city` VALUES (722,'Pinetown','ZAF','KwaZulu-Natal',378810);
INSERT INTO `demo_city` VALUES (723,'Pietermaritzburg','ZAF','KwaZulu-Natal',370190);
INSERT INTO `demo_city` VALUES (724,'Benoni','ZAF','Gauteng',365467);
INSERT INTO `demo_city` VALUES (725,'Randburg','ZAF','Gauteng',341288);
INSERT INTO `demo_city` VALUES (726,'Umlazi','ZAF','KwaZulu-Natal',339233);
INSERT INTO `demo_city` VALUES (727,'Bloemfontein','ZAF','Free State',334341);
INSERT INTO `demo_city` VALUES (728,'Vereeniging','ZAF','Gauteng',328535);
INSERT INTO `demo_city` VALUES (729,'Wonderboom','ZAF','Gauteng',283289);
INSERT INTO `demo_city` VALUES (730,'Roodepoort','ZAF','Gauteng',279340);
INSERT INTO `demo_city` VALUES (731,'Boksburg','ZAF','Gauteng',262648);
INSERT INTO `demo_city` VALUES (732,'Klerksdorp','ZAF','North West',261911);
INSERT INTO `demo_city` VALUES (733,'Soshanguve','ZAF','Gauteng',242727);
INSERT INTO `demo_city` VALUES (734,'Newcastle','ZAF','KwaZulu-Natal',222993);
INSERT INTO `demo_city` VALUES (735,'East London','ZAF','Eastern Cape',221047);
INSERT INTO `demo_city` VALUES (736,'Welkom','ZAF','Free State',203296);
INSERT INTO `demo_city` VALUES (737,'Kimberley','ZAF','Northern Cape',197254);
INSERT INTO `demo_city` VALUES (738,'Uitenhage','ZAF','Eastern Cape',192120);
INSERT INTO `demo_city` VALUES (739,'Chatsworth','ZAF','KwaZulu-Natal',189885);
INSERT INTO `demo_city` VALUES (740,'Mdantsane','ZAF','Eastern Cape',182639);
INSERT INTO `demo_city` VALUES (741,'Krugersdorp','ZAF','Gauteng',181503);
INSERT INTO `demo_city` VALUES (742,'Botshabelo','ZAF','Free State',177971);
INSERT INTO `demo_city` VALUES (743,'Brakpan','ZAF','Gauteng',171363);
INSERT INTO `demo_city` VALUES (744,'Witbank','ZAF','Mpumalanga',167183);
INSERT INTO `demo_city` VALUES (745,'Oberholzer','ZAF','Gauteng',164367);
INSERT INTO `demo_city` VALUES (746,'Germiston','ZAF','Gauteng',164252);
INSERT INTO `demo_city` VALUES (747,'Springs','ZAF','Gauteng',162072);
INSERT INTO `demo_city` VALUES (748,'Westonaria','ZAF','Gauteng',159632);
INSERT INTO `demo_city` VALUES (749,'Randfontein','ZAF','Gauteng',120838);
INSERT INTO `demo_city` VALUES (750,'Paarl','ZAF','Western Cape',105768);
INSERT INTO `demo_city` VALUES (751,'Potchefstroom','ZAF','North West',101817);
INSERT INTO `demo_city` VALUES (752,'Rustenburg','ZAF','North West',97008);
INSERT INTO `demo_city` VALUES (753,'Nigel','ZAF','Gauteng',96734);
INSERT INTO `demo_city` VALUES (754,'George','ZAF','Western Cape',93818);
INSERT INTO `demo_city` VALUES (755,'Ladysmith','ZAF','KwaZulu-Natal',89292);
INSERT INTO `demo_city` VALUES (756,'Addis Abeba','ETH','Addis Abeba',2495000);
INSERT INTO `demo_city` VALUES (757,'Dire Dawa','ETH','Dire Dawa',164851);
INSERT INTO `demo_city` VALUES (758,'Nazret','ETH','Oromia',127842);
INSERT INTO `demo_city` VALUES (759,'Gonder','ETH','Amhara',112249);
INSERT INTO `demo_city` VALUES (760,'Dese','ETH','Amhara',97314);
INSERT INTO `demo_city` VALUES (761,'Mekele','ETH','Tigray',96938);
INSERT INTO `demo_city` VALUES (762,'Bahir Dar','ETH','Amhara',96140);
INSERT INTO `demo_city` VALUES (763,'Stanley','FLK','East Falkland',1636);
INSERT INTO `demo_city` VALUES (764,'Suva','FJI','Central',77366);
INSERT INTO `demo_city` VALUES (765,'Quezon','PHL','National Capital Reg',2173831);
INSERT INTO `demo_city` VALUES (766,'Manila','PHL','National Capital Reg',1581082);
INSERT INTO `demo_city` VALUES (767,'Kalookan','PHL','National Capital Reg',1177604);
INSERT INTO `demo_city` VALUES (768,'Davao','PHL','Southern Mindanao',1147116);
INSERT INTO `demo_city` VALUES (769,'Cebu','PHL','Central Visayas',718821);
INSERT INTO `demo_city` VALUES (770,'Zamboanga','PHL','Western Mindanao',601794);
INSERT INTO `demo_city` VALUES (771,'Pasig','PHL','National Capital Reg',505058);
INSERT INTO `demo_city` VALUES (772,'Valenzuela','PHL','National Capital Reg',485433);
INSERT INTO `demo_city` VALUES (773,'Las Piñas','PHL','National Capital Reg',472780);
INSERT INTO `demo_city` VALUES (774,'Antipolo','PHL','Southern Tagalog',470866);
INSERT INTO `demo_city` VALUES (775,'Taguig','PHL','National Capital Reg',467375);
INSERT INTO `demo_city` VALUES (776,'Cagayan de Oro','PHL','Northern Mindanao',461877);
INSERT INTO `demo_city` VALUES (777,'Parañaque','PHL','National Capital Reg',449811);
INSERT INTO `demo_city` VALUES (778,'Makati','PHL','National Capital Reg',444867);
INSERT INTO `demo_city` VALUES (779,'Bacolod','PHL','Western Visayas',429076);
INSERT INTO `demo_city` VALUES (780,'General Santos','PHL','Southern Mindanao',411822);
INSERT INTO `demo_city` VALUES (781,'Marikina','PHL','National Capital Reg',391170);
INSERT INTO `demo_city` VALUES (782,'Dasmariñas','PHL','Southern Tagalog',379520);
INSERT INTO `demo_city` VALUES (783,'Muntinlupa','PHL','National Capital Reg',379310);
INSERT INTO `demo_city` VALUES (784,'Iloilo','PHL','Western Visayas',365820);
INSERT INTO `demo_city` VALUES (785,'Pasay','PHL','National Capital Reg',354908);
INSERT INTO `demo_city` VALUES (786,'Malabon','PHL','National Capital Reg',338855);
INSERT INTO `demo_city` VALUES (787,'San José del Monte','PHL','Central Luzon',315807);
INSERT INTO `demo_city` VALUES (788,'Bacoor','PHL','Southern Tagalog',305699);
INSERT INTO `demo_city` VALUES (789,'Iligan','PHL','Central Mindanao',285061);
INSERT INTO `demo_city` VALUES (790,'Calamba','PHL','Southern Tagalog',281146);
INSERT INTO `demo_city` VALUES (791,'Mandaluyong','PHL','National Capital Reg',278474);
INSERT INTO `demo_city` VALUES (792,'Butuan','PHL','Caraga',267279);
INSERT INTO `demo_city` VALUES (793,'Angeles','PHL','Central Luzon',263971);
INSERT INTO `demo_city` VALUES (794,'Tarlac','PHL','Central Luzon',262481);
INSERT INTO `demo_city` VALUES (795,'Mandaue','PHL','Central Visayas',259728);
INSERT INTO `demo_city` VALUES (796,'Baguio','PHL','CAR',252386);
INSERT INTO `demo_city` VALUES (797,'Batangas','PHL','Southern Tagalog',247588);
INSERT INTO `demo_city` VALUES (798,'Cainta','PHL','Southern Tagalog',242511);
INSERT INTO `demo_city` VALUES (799,'San Pedro','PHL','Southern Tagalog',231403);
INSERT INTO `demo_city` VALUES (800,'Navotas','PHL','National Capital Reg',230403);
INSERT INTO `demo_city` VALUES (801,'Cabanatuan','PHL','Central Luzon',222859);
INSERT INTO `demo_city` VALUES (802,'San Fernando','PHL','Central Luzon',221857);
INSERT INTO `demo_city` VALUES (803,'Lipa','PHL','Southern Tagalog',218447);
INSERT INTO `demo_city` VALUES (804,'Lapu-Lapu','PHL','Central Visayas',217019);
INSERT INTO `demo_city` VALUES (805,'San Pablo','PHL','Southern Tagalog',207927);
INSERT INTO `demo_city` VALUES (806,'Biñan','PHL','Southern Tagalog',201186);
INSERT INTO `demo_city` VALUES (807,'Taytay','PHL','Southern Tagalog',198183);
INSERT INTO `demo_city` VALUES (808,'Lucena','PHL','Southern Tagalog',196075);
INSERT INTO `demo_city` VALUES (809,'Imus','PHL','Southern Tagalog',195482);
INSERT INTO `demo_city` VALUES (810,'Olongapo','PHL','Central Luzon',194260);
INSERT INTO `demo_city` VALUES (811,'Binangonan','PHL','Southern Tagalog',187691);
INSERT INTO `demo_city` VALUES (812,'Santa Rosa','PHL','Southern Tagalog',185633);
INSERT INTO `demo_city` VALUES (813,'Tagum','PHL','Southern Mindanao',179531);
INSERT INTO `demo_city` VALUES (814,'Tacloban','PHL','Eastern Visayas',178639);
INSERT INTO `demo_city` VALUES (815,'Malolos','PHL','Central Luzon',175291);
INSERT INTO `demo_city` VALUES (816,'Mabalacat','PHL','Central Luzon',171045);
INSERT INTO `demo_city` VALUES (817,'Cotabato','PHL','Central Mindanao',163849);
INSERT INTO `demo_city` VALUES (818,'Meycauayan','PHL','Central Luzon',163037);
INSERT INTO `demo_city` VALUES (819,'Puerto Princesa','PHL','Southern Tagalog',161912);
INSERT INTO `demo_city` VALUES (820,'Legazpi','PHL','Bicol',157010);
INSERT INTO `demo_city` VALUES (821,'Silang','PHL','Southern Tagalog',156137);
INSERT INTO `demo_city` VALUES (822,'Ormoc','PHL','Eastern Visayas',154297);
INSERT INTO `demo_city` VALUES (823,'San Carlos','PHL','Ilocos',154264);
INSERT INTO `demo_city` VALUES (824,'Kabankalan','PHL','Western Visayas',149769);
INSERT INTO `demo_city` VALUES (825,'Talisay','PHL','Central Visayas',148110);
INSERT INTO `demo_city` VALUES (826,'Valencia','PHL','Northern Mindanao',147924);
INSERT INTO `demo_city` VALUES (827,'Calbayog','PHL','Eastern Visayas',147187);
INSERT INTO `demo_city` VALUES (828,'Santa Maria','PHL','Central Luzon',144282);
INSERT INTO `demo_city` VALUES (829,'Pagadian','PHL','Western Mindanao',142515);
INSERT INTO `demo_city` VALUES (830,'Cadiz','PHL','Western Visayas',141954);
INSERT INTO `demo_city` VALUES (831,'Bago','PHL','Western Visayas',141721);
INSERT INTO `demo_city` VALUES (832,'Toledo','PHL','Central Visayas',141174);
INSERT INTO `demo_city` VALUES (833,'Naga','PHL','Bicol',137810);
INSERT INTO `demo_city` VALUES (834,'San Mateo','PHL','Southern Tagalog',135603);
INSERT INTO `demo_city` VALUES (835,'Panabo','PHL','Southern Mindanao',133950);
INSERT INTO `demo_city` VALUES (836,'Koronadal','PHL','Southern Mindanao',133786);
INSERT INTO `demo_city` VALUES (837,'Marawi','PHL','Central Mindanao',131090);
INSERT INTO `demo_city` VALUES (838,'Dagupan','PHL','Ilocos',130328);
INSERT INTO `demo_city` VALUES (839,'Sagay','PHL','Western Visayas',129765);
INSERT INTO `demo_city` VALUES (840,'Roxas','PHL','Western Visayas',126352);
INSERT INTO `demo_city` VALUES (841,'Lubao','PHL','Central Luzon',125699);
INSERT INTO `demo_city` VALUES (842,'Digos','PHL','Southern Mindanao',125171);
INSERT INTO `demo_city` VALUES (843,'San Miguel','PHL','Central Luzon',123824);
INSERT INTO `demo_city` VALUES (844,'Malaybalay','PHL','Northern Mindanao',123672);
INSERT INTO `demo_city` VALUES (845,'Tuguegarao','PHL','Cagayan Valley',120645);
INSERT INTO `demo_city` VALUES (846,'Ilagan','PHL','Cagayan Valley',119990);
INSERT INTO `demo_city` VALUES (847,'Baliuag','PHL','Central Luzon',119675);
INSERT INTO `demo_city` VALUES (848,'Surigao','PHL','Caraga',118534);
INSERT INTO `demo_city` VALUES (849,'San Carlos','PHL','Western Visayas',118259);
INSERT INTO `demo_city` VALUES (850,'San Juan del Monte','PHL','National Capital Reg',117680);
INSERT INTO `demo_city` VALUES (851,'Tanauan','PHL','Southern Tagalog',117539);
INSERT INTO `demo_city` VALUES (852,'Concepcion','PHL','Central Luzon',115171);
INSERT INTO `demo_city` VALUES (853,'Rodriguez (Montalban)','PHL','Southern Tagalog',115167);
INSERT INTO `demo_city` VALUES (854,'Sariaya','PHL','Southern Tagalog',114568);
INSERT INTO `demo_city` VALUES (855,'Malasiqui','PHL','Ilocos',113190);
INSERT INTO `demo_city` VALUES (856,'General Mariano Alvarez','PHL','Southern Tagalog',112446);
INSERT INTO `demo_city` VALUES (857,'Urdaneta','PHL','Ilocos',111582);
INSERT INTO `demo_city` VALUES (858,'Hagonoy','PHL','Central Luzon',111425);
INSERT INTO `demo_city` VALUES (859,'San Jose','PHL','Southern Tagalog',111009);
INSERT INTO `demo_city` VALUES (860,'Polomolok','PHL','Southern Mindanao',110709);
INSERT INTO `demo_city` VALUES (861,'Santiago','PHL','Cagayan Valley',110531);
INSERT INTO `demo_city` VALUES (862,'Tanza','PHL','Southern Tagalog',110517);
INSERT INTO `demo_city` VALUES (863,'Ozamis','PHL','Northern Mindanao',110420);
INSERT INTO `demo_city` VALUES (864,'Mexico','PHL','Central Luzon',109481);
INSERT INTO `demo_city` VALUES (865,'San Jose','PHL','Central Luzon',108254);
INSERT INTO `demo_city` VALUES (866,'Silay','PHL','Western Visayas',107722);
INSERT INTO `demo_city` VALUES (867,'General Trias','PHL','Southern Tagalog',107691);
INSERT INTO `demo_city` VALUES (868,'Tabaco','PHL','Bicol',107166);
INSERT INTO `demo_city` VALUES (869,'Cabuyao','PHL','Southern Tagalog',106630);
INSERT INTO `demo_city` VALUES (870,'Calapan','PHL','Southern Tagalog',105910);
INSERT INTO `demo_city` VALUES (871,'Mati','PHL','Southern Mindanao',105908);
INSERT INTO `demo_city` VALUES (872,'Midsayap','PHL','Central Mindanao',105760);
INSERT INTO `demo_city` VALUES (873,'Cauayan','PHL','Cagayan Valley',103952);
INSERT INTO `demo_city` VALUES (874,'Gingoog','PHL','Northern Mindanao',102379);
INSERT INTO `demo_city` VALUES (875,'Dumaguete','PHL','Central Visayas',102265);
INSERT INTO `demo_city` VALUES (876,'San Fernando','PHL','Ilocos',102082);
INSERT INTO `demo_city` VALUES (877,'Arayat','PHL','Central Luzon',101792);
INSERT INTO `demo_city` VALUES (878,'Bayawan (Tulong)','PHL','Central Visayas',101391);
INSERT INTO `demo_city` VALUES (879,'Kidapawan','PHL','Central Mindanao',101205);
INSERT INTO `demo_city` VALUES (880,'Daraga (Locsin)','PHL','Bicol',101031);
INSERT INTO `demo_city` VALUES (881,'Marilao','PHL','Central Luzon',101017);
INSERT INTO `demo_city` VALUES (882,'Malita','PHL','Southern Mindanao',100000);
INSERT INTO `demo_city` VALUES (883,'Dipolog','PHL','Western Mindanao',99862);
INSERT INTO `demo_city` VALUES (884,'Cavite','PHL','Southern Tagalog',99367);
INSERT INTO `demo_city` VALUES (885,'Danao','PHL','Central Visayas',98781);
INSERT INTO `demo_city` VALUES (886,'Bislig','PHL','Caraga',97860);
INSERT INTO `demo_city` VALUES (887,'Talavera','PHL','Central Luzon',97329);
INSERT INTO `demo_city` VALUES (888,'Guagua','PHL','Central Luzon',96858);
INSERT INTO `demo_city` VALUES (889,'Bayambang','PHL','Ilocos',96609);
INSERT INTO `demo_city` VALUES (890,'Nasugbu','PHL','Southern Tagalog',96113);
INSERT INTO `demo_city` VALUES (891,'Baybay','PHL','Eastern Visayas',95630);
INSERT INTO `demo_city` VALUES (892,'Capas','PHL','Central Luzon',95219);
INSERT INTO `demo_city` VALUES (893,'Sultan Kudarat','PHL','ARMM',94861);
INSERT INTO `demo_city` VALUES (894,'Laoag','PHL','Ilocos',94466);
INSERT INTO `demo_city` VALUES (895,'Bayugan','PHL','Caraga',93623);
INSERT INTO `demo_city` VALUES (896,'Malungon','PHL','Southern Mindanao',93232);
INSERT INTO `demo_city` VALUES (897,'Santa Cruz','PHL','Southern Tagalog',92694);
INSERT INTO `demo_city` VALUES (898,'Sorsogon','PHL','Bicol',92512);
INSERT INTO `demo_city` VALUES (899,'Candelaria','PHL','Southern Tagalog',92429);
INSERT INTO `demo_city` VALUES (900,'Ligao','PHL','Bicol',90603);
INSERT INTO `demo_city` VALUES (901,'Tórshavn','FRO','Streymoyar',14542);
INSERT INTO `demo_city` VALUES (902,'Libreville','GAB','Estuaire',419000);
INSERT INTO `demo_city` VALUES (903,'Serekunda','GMB','Kombo St Mary',102600);
INSERT INTO `demo_city` VALUES (904,'Banjul','GMB','Banjul',42326);
INSERT INTO `demo_city` VALUES (905,'Tbilisi','GEO','Tbilisi',1235200);
INSERT INTO `demo_city` VALUES (906,'Kutaisi','GEO','Imereti',240900);
INSERT INTO `demo_city` VALUES (907,'Rustavi','GEO','Kvemo Kartli',155400);
INSERT INTO `demo_city` VALUES (908,'Batumi','GEO','Adzaria [Atšara]',137700);
INSERT INTO `demo_city` VALUES (909,'Sohumi','GEO','Abhasia [Aphazeti]',111700);
INSERT INTO `demo_city` VALUES (910,'Accra','GHA','Greater Accra',1070000);
INSERT INTO `demo_city` VALUES (911,'Kumasi','GHA','Ashanti',385192);
INSERT INTO `demo_city` VALUES (912,'Tamale','GHA','Northern',151069);
INSERT INTO `demo_city` VALUES (913,'Tema','GHA','Greater Accra',109975);
INSERT INTO `demo_city` VALUES (914,'Sekondi-Takoradi','GHA','Western',103653);
INSERT INTO `demo_city` VALUES (915,'Gibraltar','GIB','',27025);
INSERT INTO `demo_city` VALUES (916,'Saint George´s','GRD','St George',4621);
INSERT INTO `demo_city` VALUES (917,'Nuuk','GRL','Kitaa',13445);
INSERT INTO `demo_city` VALUES (918,'Les Abymes','GLP','Grande-Terre',62947);
INSERT INTO `demo_city` VALUES (919,'Basse-Terre','GLP','Basse-Terre',12433);
INSERT INTO `demo_city` VALUES (920,'Tamuning','GUM','',9500);
INSERT INTO `demo_city` VALUES (921,'Agaña','GUM','',1139);
INSERT INTO `demo_city` VALUES (922,'Ciudad de Guatemala','GTM','Guatemala',823301);
INSERT INTO `demo_city` VALUES (923,'Mixco','GTM','Guatemala',209791);
INSERT INTO `demo_city` VALUES (924,'Villa Nueva','GTM','Guatemala',101295);
INSERT INTO `demo_city` VALUES (925,'Quetzaltenango','GTM','Quetzaltenango',90801);
INSERT INTO `demo_city` VALUES (926,'Conakry','GIN','Conakry',1090610);
INSERT INTO `demo_city` VALUES (927,'Bissau','GNB','Bissau',241000);
INSERT INTO `demo_city` VALUES (928,'Georgetown','GUY','Georgetown',254000);
INSERT INTO `demo_city` VALUES (929,'Port-au-Prince','HTI','Ouest',884472);
INSERT INTO `demo_city` VALUES (930,'Carrefour','HTI','Ouest',290204);
INSERT INTO `demo_city` VALUES (931,'Delmas','HTI','Ouest',240429);
INSERT INTO `demo_city` VALUES (932,'Le-Cap-Haïtien','HTI','Nord',102233);
INSERT INTO `demo_city` VALUES (933,'Tegucigalpa','HND','Distrito Central',813900);
INSERT INTO `demo_city` VALUES (934,'San Pedro Sula','HND','Cortés',383900);
INSERT INTO `demo_city` VALUES (935,'La Ceiba','HND','Atlántida',89200);
INSERT INTO `demo_city` VALUES (936,'Kowloon and New Kowloon','HKG','Kowloon and New Kowl',1987996);
INSERT INTO `demo_city` VALUES (937,'Victoria','HKG','Hongkong',1312637);
INSERT INTO `demo_city` VALUES (938,'Longyearbyen','SJM','Länsimaa',1438);
INSERT INTO `demo_city` VALUES (939,'Jakarta','IDN','Jakarta Raya',9604900);
INSERT INTO `demo_city` VALUES (940,'Surabaya','IDN','East Java',2663820);
INSERT INTO `demo_city` VALUES (941,'Bandung','IDN','West Java',2429000);
INSERT INTO `demo_city` VALUES (942,'Medan','IDN','Sumatera Utara',1843919);
INSERT INTO `demo_city` VALUES (943,'Palembang','IDN','Sumatera Selatan',1222764);
INSERT INTO `demo_city` VALUES (944,'Tangerang','IDN','West Java',1198300);
INSERT INTO `demo_city` VALUES (945,'Semarang','IDN','Central Java',1104405);
INSERT INTO `demo_city` VALUES (946,'Ujung Pandang','IDN','Sulawesi Selatan',1060257);
INSERT INTO `demo_city` VALUES (947,'Malang','IDN','East Java',716862);
INSERT INTO `demo_city` VALUES (948,'Bandar Lampung','IDN','Lampung',680332);
INSERT INTO `demo_city` VALUES (949,'Bekasi','IDN','West Java',644300);
INSERT INTO `demo_city` VALUES (950,'Padang','IDN','Sumatera Barat',534474);
INSERT INTO `demo_city` VALUES (951,'Surakarta','IDN','Central Java',518600);
INSERT INTO `demo_city` VALUES (952,'Banjarmasin','IDN','Kalimantan Selatan',482931);
INSERT INTO `demo_city` VALUES (953,'Pekan Baru','IDN','Riau',438638);
INSERT INTO `demo_city` VALUES (954,'Denpasar','IDN','Bali',435000);
INSERT INTO `demo_city` VALUES (955,'Yogyakarta','IDN','Yogyakarta',418944);
INSERT INTO `demo_city` VALUES (956,'Pontianak','IDN','Kalimantan Barat',409632);
INSERT INTO `demo_city` VALUES (957,'Samarinda','IDN','Kalimantan Timur',399175);
INSERT INTO `demo_city` VALUES (958,'Jambi','IDN','Jambi',385201);
INSERT INTO `demo_city` VALUES (959,'Depok','IDN','West Java',365200);
INSERT INTO `demo_city` VALUES (960,'Cimahi','IDN','West Java',344600);
INSERT INTO `demo_city` VALUES (961,'Balikpapan','IDN','Kalimantan Timur',338752);
INSERT INTO `demo_city` VALUES (962,'Manado','IDN','Sulawesi Utara',332288);
INSERT INTO `demo_city` VALUES (963,'Mataram','IDN','Nusa Tenggara Barat',306600);
INSERT INTO `demo_city` VALUES (964,'Pekalongan','IDN','Central Java',301504);
INSERT INTO `demo_city` VALUES (965,'Tegal','IDN','Central Java',289744);
INSERT INTO `demo_city` VALUES (966,'Bogor','IDN','West Java',285114);
INSERT INTO `demo_city` VALUES (967,'Ciputat','IDN','West Java',270800);
INSERT INTO `demo_city` VALUES (968,'Pondokgede','IDN','West Java',263200);
INSERT INTO `demo_city` VALUES (969,'Cirebon','IDN','West Java',254406);
INSERT INTO `demo_city` VALUES (970,'Kediri','IDN','East Java',253760);
INSERT INTO `demo_city` VALUES (971,'Ambon','IDN','Molukit',249312);
INSERT INTO `demo_city` VALUES (972,'Jember','IDN','East Java',218500);
INSERT INTO `demo_city` VALUES (973,'Cilacap','IDN','Central Java',206900);
INSERT INTO `demo_city` VALUES (974,'Cimanggis','IDN','West Java',205100);
INSERT INTO `demo_city` VALUES (975,'Pematang Siantar','IDN','Sumatera Utara',203056);
INSERT INTO `demo_city` VALUES (976,'Purwokerto','IDN','Central Java',202500);
INSERT INTO `demo_city` VALUES (977,'Ciomas','IDN','West Java',187400);
INSERT INTO `demo_city` VALUES (978,'Tasikmalaya','IDN','West Java',179800);
INSERT INTO `demo_city` VALUES (979,'Madiun','IDN','East Java',171532);
INSERT INTO `demo_city` VALUES (980,'Bengkulu','IDN','Bengkulu',146439);
INSERT INTO `demo_city` VALUES (981,'Karawang','IDN','West Java',145000);
INSERT INTO `demo_city` VALUES (982,'Banda Aceh','IDN','Aceh',143409);
INSERT INTO `demo_city` VALUES (983,'Palu','IDN','Sulawesi Tengah',142800);
INSERT INTO `demo_city` VALUES (984,'Pasuruan','IDN','East Java',134019);
INSERT INTO `demo_city` VALUES (985,'Kupang','IDN','Nusa Tenggara Timur',129300);
INSERT INTO `demo_city` VALUES (986,'Tebing Tinggi','IDN','Sumatera Utara',129300);
INSERT INTO `demo_city` VALUES (987,'Percut Sei Tuan','IDN','Sumatera Utara',129000);
INSERT INTO `demo_city` VALUES (988,'Binjai','IDN','Sumatera Utara',127222);
INSERT INTO `demo_city` VALUES (989,'Sukabumi','IDN','West Java',125766);
INSERT INTO `demo_city` VALUES (990,'Waru','IDN','East Java',124300);
INSERT INTO `demo_city` VALUES (991,'Pangkal Pinang','IDN','Sumatera Selatan',124000);
INSERT INTO `demo_city` VALUES (992,'Magelang','IDN','Central Java',123800);
INSERT INTO `demo_city` VALUES (993,'Blitar','IDN','East Java',122600);
INSERT INTO `demo_city` VALUES (994,'Serang','IDN','West Java',122400);
INSERT INTO `demo_city` VALUES (995,'Probolinggo','IDN','East Java',120770);
INSERT INTO `demo_city` VALUES (996,'Cilegon','IDN','West Java',117000);
INSERT INTO `demo_city` VALUES (997,'Cianjur','IDN','West Java',114300);
INSERT INTO `demo_city` VALUES (998,'Ciparay','IDN','West Java',111500);
INSERT INTO `demo_city` VALUES (999,'Lhokseumawe','IDN','Aceh',109600);
INSERT INTO `demo_city` VALUES (1000,'Taman','IDN','East Java',107000);

DELIMITER ;

INSERT INTO `demo_city` VALUES (1001,'Depok','IDN','Yogyakarta',106800);
INSERT INTO `demo_city` VALUES (1002,'Citeureup','IDN','West Java',105100);
INSERT INTO `demo_city` VALUES (1003,'Pemalang','IDN','Central Java',103500);
INSERT INTO `demo_city` VALUES (1004,'Klaten','IDN','Central Java',103300);
INSERT INTO `demo_city` VALUES (1005,'Salatiga','IDN','Central Java',103000);
INSERT INTO `demo_city` VALUES (1006,'Cibinong','IDN','West Java',101300);
INSERT INTO `demo_city` VALUES (1007,'Palangka Raya','IDN','Kalimantan Tengah',99693);
INSERT INTO `demo_city` VALUES (1008,'Mojokerto','IDN','East Java',96626);
INSERT INTO `demo_city` VALUES (1009,'Purwakarta','IDN','West Java',95900);
INSERT INTO `demo_city` VALUES (1010,'Garut','IDN','West Java',95800);
INSERT INTO `demo_city` VALUES (1011,'Kudus','IDN','Central Java',95300);
INSERT INTO `demo_city` VALUES (1012,'Kendari','IDN','Sulawesi Tenggara',94800);
INSERT INTO `demo_city` VALUES (1013,'Jaya Pura','IDN','West Irian',94700);
INSERT INTO `demo_city` VALUES (1014,'Gorontalo','IDN','Sulawesi Utara',94058);
INSERT INTO `demo_city` VALUES (1015,'Majalaya','IDN','West Java',93200);
INSERT INTO `demo_city` VALUES (1016,'Pondok Aren','IDN','West Java',92700);
INSERT INTO `demo_city` VALUES (1017,'Jombang','IDN','East Java',92600);
INSERT INTO `demo_city` VALUES (1018,'Sunggal','IDN','Sumatera Utara',92300);
INSERT INTO `demo_city` VALUES (1019,'Batam','IDN','Riau',91871);
INSERT INTO `demo_city` VALUES (1020,'Padang Sidempuan','IDN','Sumatera Utara',91200);
INSERT INTO `demo_city` VALUES (1021,'Sawangan','IDN','West Java',91100);
INSERT INTO `demo_city` VALUES (1022,'Banyuwangi','IDN','East Java',89900);
INSERT INTO `demo_city` VALUES (1023,'Tanjung Pinang','IDN','Riau',89900);
INSERT INTO `demo_city` VALUES (1024,'Mumbai (Bombay)','IND','Maharashtra',10500000);
INSERT INTO `demo_city` VALUES (1025,'Delhi','IND','Delhi',7206704);
INSERT INTO `demo_city` VALUES (1026,'Calcutta [Kolkata]','IND','West Bengali',4399819);
INSERT INTO `demo_city` VALUES (1027,'Chennai (Madras)','IND','Tamil Nadu',3841396);
INSERT INTO `demo_city` VALUES (1028,'Hyderabad','IND','Andhra Pradesh',2964638);
INSERT INTO `demo_city` VALUES (1029,'Ahmedabad','IND','Gujarat',2876710);
INSERT INTO `demo_city` VALUES (1030,'Bangalore','IND','Karnataka',2660088);
INSERT INTO `demo_city` VALUES (1031,'Kanpur','IND','Uttar Pradesh',1874409);
INSERT INTO `demo_city` VALUES (1032,'Nagpur','IND','Maharashtra',1624752);
INSERT INTO `demo_city` VALUES (1033,'Lucknow','IND','Uttar Pradesh',1619115);
INSERT INTO `demo_city` VALUES (1034,'Pune','IND','Maharashtra',1566651);
INSERT INTO `demo_city` VALUES (1035,'Surat','IND','Gujarat',1498817);
INSERT INTO `demo_city` VALUES (1036,'Jaipur','IND','Rajasthan',1458483);
INSERT INTO `demo_city` VALUES (1037,'Indore','IND','Madhya Pradesh',1091674);
INSERT INTO `demo_city` VALUES (1038,'Bhopal','IND','Madhya Pradesh',1062771);
INSERT INTO `demo_city` VALUES (1039,'Ludhiana','IND','Punjab',1042740);
INSERT INTO `demo_city` VALUES (1040,'Vadodara (Baroda)','IND','Gujarat',1031346);
INSERT INTO `demo_city` VALUES (1041,'Kalyan','IND','Maharashtra',1014557);
INSERT INTO `demo_city` VALUES (1042,'Madurai','IND','Tamil Nadu',977856);
INSERT INTO `demo_city` VALUES (1043,'Haora (Howrah)','IND','West Bengali',950435);
INSERT INTO `demo_city` VALUES (1044,'Varanasi (Benares)','IND','Uttar Pradesh',929270);
INSERT INTO `demo_city` VALUES (1045,'Patna','IND','Bihar',917243);
INSERT INTO `demo_city` VALUES (1046,'Srinagar','IND','Jammu and Kashmir',892506);
INSERT INTO `demo_city` VALUES (1047,'Agra','IND','Uttar Pradesh',891790);
INSERT INTO `demo_city` VALUES (1048,'Coimbatore','IND','Tamil Nadu',816321);
INSERT INTO `demo_city` VALUES (1049,'Thane (Thana)','IND','Maharashtra',803389);
INSERT INTO `demo_city` VALUES (1050,'Allahabad','IND','Uttar Pradesh',792858);
INSERT INTO `demo_city` VALUES (1051,'Meerut','IND','Uttar Pradesh',753778);
INSERT INTO `demo_city` VALUES (1052,'Vishakhapatnam','IND','Andhra Pradesh',752037);
INSERT INTO `demo_city` VALUES (1053,'Jabalpur','IND','Madhya Pradesh',741927);
INSERT INTO `demo_city` VALUES (1054,'Amritsar','IND','Punjab',708835);
INSERT INTO `demo_city` VALUES (1055,'Faridabad','IND','Haryana',703592);
INSERT INTO `demo_city` VALUES (1056,'Vijayawada','IND','Andhra Pradesh',701827);
INSERT INTO `demo_city` VALUES (1057,'Gwalior','IND','Madhya Pradesh',690765);
INSERT INTO `demo_city` VALUES (1058,'Jodhpur','IND','Rajasthan',666279);
INSERT INTO `demo_city` VALUES (1059,'Nashik (Nasik)','IND','Maharashtra',656925);
INSERT INTO `demo_city` VALUES (1060,'Hubli-Dharwad','IND','Karnataka',648298);
INSERT INTO `demo_city` VALUES (1061,'Solapur (Sholapur)','IND','Maharashtra',604215);
INSERT INTO `demo_city` VALUES (1062,'Ranchi','IND','Jharkhand',599306);
INSERT INTO `demo_city` VALUES (1063,'Bareilly','IND','Uttar Pradesh',587211);
INSERT INTO `demo_city` VALUES (1064,'Guwahati (Gauhati)','IND','Assam',584342);
INSERT INTO `demo_city` VALUES (1065,'Shambajinagar (Aurangabad)','IND','Maharashtra',573272);
INSERT INTO `demo_city` VALUES (1066,'Cochin (Kochi)','IND','Kerala',564589);
INSERT INTO `demo_city` VALUES (1067,'Rajkot','IND','Gujarat',559407);
INSERT INTO `demo_city` VALUES (1068,'Kota','IND','Rajasthan',537371);
INSERT INTO `demo_city` VALUES (1069,'Thiruvananthapuram (Trivandrum','IND','Kerala',524006);
INSERT INTO `demo_city` VALUES (1070,'Pimpri-Chinchwad','IND','Maharashtra',517083);
INSERT INTO `demo_city` VALUES (1071,'Jalandhar (Jullundur)','IND','Punjab',509510);
INSERT INTO `demo_city` VALUES (1072,'Gorakhpur','IND','Uttar Pradesh',505566);
INSERT INTO `demo_city` VALUES (1073,'Chandigarh','IND','Chandigarh',504094);
INSERT INTO `demo_city` VALUES (1074,'Mysore','IND','Karnataka',480692);
INSERT INTO `demo_city` VALUES (1075,'Aligarh','IND','Uttar Pradesh',480520);
INSERT INTO `demo_city` VALUES (1076,'Guntur','IND','Andhra Pradesh',471051);
INSERT INTO `demo_city` VALUES (1077,'Jamshedpur','IND','Jharkhand',460577);
INSERT INTO `demo_city` VALUES (1078,'Ghaziabad','IND','Uttar Pradesh',454156);
INSERT INTO `demo_city` VALUES (1079,'Warangal','IND','Andhra Pradesh',447657);
INSERT INTO `demo_city` VALUES (1080,'Raipur','IND','Chhatisgarh',438639);
INSERT INTO `demo_city` VALUES (1081,'Moradabad','IND','Uttar Pradesh',429214);
INSERT INTO `demo_city` VALUES (1082,'Durgapur','IND','West Bengali',425836);
INSERT INTO `demo_city` VALUES (1083,'Amravati','IND','Maharashtra',421576);
INSERT INTO `demo_city` VALUES (1084,'Calicut (Kozhikode)','IND','Kerala',419831);
INSERT INTO `demo_city` VALUES (1085,'Bikaner','IND','Rajasthan',416289);
INSERT INTO `demo_city` VALUES (1086,'Bhubaneswar','IND','Orissa',411542);
INSERT INTO `demo_city` VALUES (1087,'Kolhapur','IND','Maharashtra',406370);
INSERT INTO `demo_city` VALUES (1088,'Kataka (Cuttack)','IND','Orissa',403418);
INSERT INTO `demo_city` VALUES (1089,'Ajmer','IND','Rajasthan',402700);
INSERT INTO `demo_city` VALUES (1090,'Bhavnagar','IND','Gujarat',402338);
INSERT INTO `demo_city` VALUES (1091,'Tiruchirapalli','IND','Tamil Nadu',387223);
INSERT INTO `demo_city` VALUES (1092,'Bhilai','IND','Chhatisgarh',386159);
INSERT INTO `demo_city` VALUES (1093,'Bhiwandi','IND','Maharashtra',379070);
INSERT INTO `demo_city` VALUES (1094,'Saharanpur','IND','Uttar Pradesh',374945);
INSERT INTO `demo_city` VALUES (1095,'Ulhasnagar','IND','Maharashtra',369077);
INSERT INTO `demo_city` VALUES (1096,'Salem','IND','Tamil Nadu',366712);
INSERT INTO `demo_city` VALUES (1097,'Ujjain','IND','Madhya Pradesh',362266);
INSERT INTO `demo_city` VALUES (1098,'Malegaon','IND','Maharashtra',342595);
INSERT INTO `demo_city` VALUES (1099,'Jamnagar','IND','Gujarat',341637);
INSERT INTO `demo_city` VALUES (1100,'Bokaro Steel City','IND','Jharkhand',333683);
INSERT INTO `demo_city` VALUES (1101,'Akola','IND','Maharashtra',328034);
INSERT INTO `demo_city` VALUES (1102,'Belgaum','IND','Karnataka',326399);
INSERT INTO `demo_city` VALUES (1103,'Rajahmundry','IND','Andhra Pradesh',324851);
INSERT INTO `demo_city` VALUES (1104,'Nellore','IND','Andhra Pradesh',316606);
INSERT INTO `demo_city` VALUES (1105,'Udaipur','IND','Rajasthan',308571);
INSERT INTO `demo_city` VALUES (1106,'New Bombay','IND','Maharashtra',307297);
INSERT INTO `demo_city` VALUES (1107,'Bhatpara','IND','West Bengali',304952);
INSERT INTO `demo_city` VALUES (1108,'Gulbarga','IND','Karnataka',304099);
INSERT INTO `demo_city` VALUES (1109,'New Delhi','IND','Delhi',301297);
INSERT INTO `demo_city` VALUES (1110,'Jhansi','IND','Uttar Pradesh',300850);
INSERT INTO `demo_city` VALUES (1111,'Gaya','IND','Bihar',291675);
INSERT INTO `demo_city` VALUES (1112,'Kakinada','IND','Andhra Pradesh',279980);
INSERT INTO `demo_city` VALUES (1113,'Dhule (Dhulia)','IND','Maharashtra',278317);
INSERT INTO `demo_city` VALUES (1114,'Panihati','IND','West Bengali',275990);
INSERT INTO `demo_city` VALUES (1115,'Nanded (Nander)','IND','Maharashtra',275083);
INSERT INTO `demo_city` VALUES (1116,'Mangalore','IND','Karnataka',273304);
INSERT INTO `demo_city` VALUES (1117,'Dehra Dun','IND','Uttaranchal',270159);
INSERT INTO `demo_city` VALUES (1118,'Kamarhati','IND','West Bengali',266889);
INSERT INTO `demo_city` VALUES (1119,'Davangere','IND','Karnataka',266082);
INSERT INTO `demo_city` VALUES (1120,'Asansol','IND','West Bengali',262188);
INSERT INTO `demo_city` VALUES (1121,'Bhagalpur','IND','Bihar',253225);
INSERT INTO `demo_city` VALUES (1122,'Bellary','IND','Karnataka',245391);
INSERT INTO `demo_city` VALUES (1123,'Barddhaman (Burdwan)','IND','West Bengali',245079);
INSERT INTO `demo_city` VALUES (1124,'Rampur','IND','Uttar Pradesh',243742);
INSERT INTO `demo_city` VALUES (1125,'Jalgaon','IND','Maharashtra',242193);
INSERT INTO `demo_city` VALUES (1126,'Muzaffarpur','IND','Bihar',241107);
INSERT INTO `demo_city` VALUES (1127,'Nizamabad','IND','Andhra Pradesh',241034);
INSERT INTO `demo_city` VALUES (1128,'Muzaffarnagar','IND','Uttar Pradesh',240609);
INSERT INTO `demo_city` VALUES (1129,'Patiala','IND','Punjab',238368);
INSERT INTO `demo_city` VALUES (1130,'Shahjahanpur','IND','Uttar Pradesh',237713);
INSERT INTO `demo_city` VALUES (1131,'Kurnool','IND','Andhra Pradesh',236800);
INSERT INTO `demo_city` VALUES (1132,'Tiruppur (Tirupper)','IND','Tamil Nadu',235661);
INSERT INTO `demo_city` VALUES (1133,'Rohtak','IND','Haryana',233400);
INSERT INTO `demo_city` VALUES (1134,'South Dum Dum','IND','West Bengali',232811);
INSERT INTO `demo_city` VALUES (1135,'Mathura','IND','Uttar Pradesh',226691);
INSERT INTO `demo_city` VALUES (1136,'Chandrapur','IND','Maharashtra',226105);
INSERT INTO `demo_city` VALUES (1137,'Barahanagar (Baranagar)','IND','West Bengali',224821);
INSERT INTO `demo_city` VALUES (1138,'Darbhanga','IND','Bihar',218391);
INSERT INTO `demo_city` VALUES (1139,'Siliguri (Shiliguri)','IND','West Bengali',216950);
INSERT INTO `demo_city` VALUES (1140,'Raurkela','IND','Orissa',215489);
INSERT INTO `demo_city` VALUES (1141,'Ambattur','IND','Tamil Nadu',215424);
INSERT INTO `demo_city` VALUES (1142,'Panipat','IND','Haryana',215218);
INSERT INTO `demo_city` VALUES (1143,'Firozabad','IND','Uttar Pradesh',215128);
INSERT INTO `demo_city` VALUES (1144,'Ichalkaranji','IND','Maharashtra',214950);
INSERT INTO `demo_city` VALUES (1145,'Jammu','IND','Jammu and Kashmir',214737);
INSERT INTO `demo_city` VALUES (1146,'Ramagundam','IND','Andhra Pradesh',214384);
INSERT INTO `demo_city` VALUES (1147,'Eluru','IND','Andhra Pradesh',212866);
INSERT INTO `demo_city` VALUES (1148,'Brahmapur','IND','Orissa',210418);
INSERT INTO `demo_city` VALUES (1149,'Alwar','IND','Rajasthan',205086);
INSERT INTO `demo_city` VALUES (1150,'Pondicherry','IND','Pondicherry',203065);
INSERT INTO `demo_city` VALUES (1151,'Thanjavur','IND','Tamil Nadu',202013);
INSERT INTO `demo_city` VALUES (1152,'Bihar Sharif','IND','Bihar',201323);
INSERT INTO `demo_city` VALUES (1153,'Tuticorin','IND','Tamil Nadu',199854);
INSERT INTO `demo_city` VALUES (1154,'Imphal','IND','Manipur',198535);
INSERT INTO `demo_city` VALUES (1155,'Latur','IND','Maharashtra',197408);
INSERT INTO `demo_city` VALUES (1156,'Sagar','IND','Madhya Pradesh',195346);
INSERT INTO `demo_city` VALUES (1157,'Farrukhabad-cum-Fatehgarh','IND','Uttar Pradesh',194567);
INSERT INTO `demo_city` VALUES (1158,'Sangli','IND','Maharashtra',193197);
INSERT INTO `demo_city` VALUES (1159,'Parbhani','IND','Maharashtra',190255);
INSERT INTO `demo_city` VALUES (1160,'Nagar Coil','IND','Tamil Nadu',190084);
INSERT INTO `demo_city` VALUES (1161,'Bijapur','IND','Karnataka',186939);
INSERT INTO `demo_city` VALUES (1162,'Kukatpalle','IND','Andhra Pradesh',185378);
INSERT INTO `demo_city` VALUES (1163,'Bally','IND','West Bengali',184474);
INSERT INTO `demo_city` VALUES (1164,'Bhilwara','IND','Rajasthan',183965);
INSERT INTO `demo_city` VALUES (1165,'Ratlam','IND','Madhya Pradesh',183375);
INSERT INTO `demo_city` VALUES (1166,'Avadi','IND','Tamil Nadu',183215);
INSERT INTO `demo_city` VALUES (1167,'Dindigul','IND','Tamil Nadu',182477);
INSERT INTO `demo_city` VALUES (1168,'Ahmadnagar','IND','Maharashtra',181339);
INSERT INTO `demo_city` VALUES (1169,'Bilaspur','IND','Chhatisgarh',179833);
INSERT INTO `demo_city` VALUES (1170,'Shimoga','IND','Karnataka',179258);
INSERT INTO `demo_city` VALUES (1171,'Kharagpur','IND','West Bengali',177989);
INSERT INTO `demo_city` VALUES (1172,'Mira Bhayandar','IND','Maharashtra',175372);
INSERT INTO `demo_city` VALUES (1173,'Vellore','IND','Tamil Nadu',175061);
INSERT INTO `demo_city` VALUES (1174,'Jalna','IND','Maharashtra',174985);
INSERT INTO `demo_city` VALUES (1175,'Burnpur','IND','West Bengali',174933);
INSERT INTO `demo_city` VALUES (1176,'Anantapur','IND','Andhra Pradesh',174924);
INSERT INTO `demo_city` VALUES (1177,'Allappuzha (Alleppey)','IND','Kerala',174666);
INSERT INTO `demo_city` VALUES (1178,'Tirupati','IND','Andhra Pradesh',174369);
INSERT INTO `demo_city` VALUES (1179,'Karnal','IND','Haryana',173751);
INSERT INTO `demo_city` VALUES (1180,'Burhanpur','IND','Madhya Pradesh',172710);
INSERT INTO `demo_city` VALUES (1181,'Hisar (Hissar)','IND','Haryana',172677);
INSERT INTO `demo_city` VALUES (1182,'Tiruvottiyur','IND','Tamil Nadu',172562);
INSERT INTO `demo_city` VALUES (1183,'Mirzapur-cum-Vindhyachal','IND','Uttar Pradesh',169336);
INSERT INTO `demo_city` VALUES (1184,'Secunderabad','IND','Andhra Pradesh',167461);
INSERT INTO `demo_city` VALUES (1185,'Nadiad','IND','Gujarat',167051);
INSERT INTO `demo_city` VALUES (1186,'Dewas','IND','Madhya Pradesh',164364);
INSERT INTO `demo_city` VALUES (1187,'Murwara (Katni)','IND','Madhya Pradesh',163431);
INSERT INTO `demo_city` VALUES (1188,'Ganganagar','IND','Rajasthan',161482);
INSERT INTO `demo_city` VALUES (1189,'Vizianagaram','IND','Andhra Pradesh',160359);
INSERT INTO `demo_city` VALUES (1190,'Erode','IND','Tamil Nadu',159232);
INSERT INTO `demo_city` VALUES (1191,'Machilipatnam (Masulipatam)','IND','Andhra Pradesh',159110);
INSERT INTO `demo_city` VALUES (1192,'Bhatinda (Bathinda)','IND','Punjab',159042);
INSERT INTO `demo_city` VALUES (1193,'Raichur','IND','Karnataka',157551);
INSERT INTO `demo_city` VALUES (1194,'Agartala','IND','Tripura',157358);
INSERT INTO `demo_city` VALUES (1195,'Arrah (Ara)','IND','Bihar',157082);
INSERT INTO `demo_city` VALUES (1196,'Satna','IND','Madhya Pradesh',156630);
INSERT INTO `demo_city` VALUES (1197,'Lalbahadur Nagar','IND','Andhra Pradesh',155500);
INSERT INTO `demo_city` VALUES (1198,'Aizawl','IND','Mizoram',155240);
INSERT INTO `demo_city` VALUES (1199,'Uluberia','IND','West Bengali',155172);
INSERT INTO `demo_city` VALUES (1200,'Katihar','IND','Bihar',154367);
INSERT INTO `demo_city` VALUES (1201,'Cuddalore','IND','Tamil Nadu',153086);
INSERT INTO `demo_city` VALUES (1202,'Hugli-Chinsurah','IND','West Bengali',151806);
INSERT INTO `demo_city` VALUES (1203,'Dhanbad','IND','Jharkhand',151789);
INSERT INTO `demo_city` VALUES (1204,'Raiganj','IND','West Bengali',151045);
INSERT INTO `demo_city` VALUES (1205,'Sambhal','IND','Uttar Pradesh',150869);
INSERT INTO `demo_city` VALUES (1206,'Durg','IND','Chhatisgarh',150645);
INSERT INTO `demo_city` VALUES (1207,'Munger (Monghyr)','IND','Bihar',150112);
INSERT INTO `demo_city` VALUES (1208,'Kanchipuram','IND','Tamil Nadu',150100);
INSERT INTO `demo_city` VALUES (1209,'North Dum Dum','IND','West Bengali',149965);
INSERT INTO `demo_city` VALUES (1210,'Karimnagar','IND','Andhra Pradesh',148583);
INSERT INTO `demo_city` VALUES (1211,'Bharatpur','IND','Rajasthan',148519);
INSERT INTO `demo_city` VALUES (1212,'Sikar','IND','Rajasthan',148272);
INSERT INTO `demo_city` VALUES (1213,'Hardwar (Haridwar)','IND','Uttaranchal',147305);
INSERT INTO `demo_city` VALUES (1214,'Dabgram','IND','West Bengali',147217);
INSERT INTO `demo_city` VALUES (1215,'Morena','IND','Madhya Pradesh',147124);
INSERT INTO `demo_city` VALUES (1216,'Noida','IND','Uttar Pradesh',146514);
INSERT INTO `demo_city` VALUES (1217,'Hapur','IND','Uttar Pradesh',146262);
INSERT INTO `demo_city` VALUES (1218,'Bhusawal','IND','Maharashtra',145143);
INSERT INTO `demo_city` VALUES (1219,'Khandwa','IND','Madhya Pradesh',145133);
INSERT INTO `demo_city` VALUES (1220,'Yamuna Nagar','IND','Haryana',144346);
INSERT INTO `demo_city` VALUES (1221,'Sonipat (Sonepat)','IND','Haryana',143922);
INSERT INTO `demo_city` VALUES (1222,'Tenali','IND','Andhra Pradesh',143726);
INSERT INTO `demo_city` VALUES (1223,'Raurkela Civil Township','IND','Orissa',140408);
INSERT INTO `demo_city` VALUES (1224,'Kollam (Quilon)','IND','Kerala',139852);
INSERT INTO `demo_city` VALUES (1225,'Kumbakonam','IND','Tamil Nadu',139483);
INSERT INTO `demo_city` VALUES (1226,'Ingraj Bazar (English Bazar)','IND','West Bengali',139204);
INSERT INTO `demo_city` VALUES (1227,'Timkur','IND','Karnataka',138903);
INSERT INTO `demo_city` VALUES (1228,'Amroha','IND','Uttar Pradesh',137061);
INSERT INTO `demo_city` VALUES (1229,'Serampore','IND','West Bengali',137028);
INSERT INTO `demo_city` VALUES (1230,'Chapra','IND','Bihar',136877);
INSERT INTO `demo_city` VALUES (1231,'Pali','IND','Rajasthan',136842);
INSERT INTO `demo_city` VALUES (1232,'Maunath Bhanjan','IND','Uttar Pradesh',136697);
INSERT INTO `demo_city` VALUES (1233,'Adoni','IND','Andhra Pradesh',136182);
INSERT INTO `demo_city` VALUES (1234,'Jaunpur','IND','Uttar Pradesh',136062);
INSERT INTO `demo_city` VALUES (1235,'Tirunelveli','IND','Tamil Nadu',135825);
INSERT INTO `demo_city` VALUES (1236,'Bahraich','IND','Uttar Pradesh',135400);
INSERT INTO `demo_city` VALUES (1237,'Gadag Betigeri','IND','Karnataka',134051);
INSERT INTO `demo_city` VALUES (1238,'Proddatur','IND','Andhra Pradesh',133914);
INSERT INTO `demo_city` VALUES (1239,'Chittoor','IND','Andhra Pradesh',133462);
INSERT INTO `demo_city` VALUES (1240,'Barrackpur','IND','West Bengali',133265);
INSERT INTO `demo_city` VALUES (1241,'Bharuch (Broach)','IND','Gujarat',133102);
INSERT INTO `demo_city` VALUES (1242,'Naihati','IND','West Bengali',132701);
INSERT INTO `demo_city` VALUES (1243,'Shillong','IND','Meghalaya',131719);
INSERT INTO `demo_city` VALUES (1244,'Sambalpur','IND','Orissa',131138);
INSERT INTO `demo_city` VALUES (1245,'Junagadh','IND','Gujarat',130484);
INSERT INTO `demo_city` VALUES (1246,'Rae Bareli','IND','Uttar Pradesh',129904);
INSERT INTO `demo_city` VALUES (1247,'Rewa','IND','Madhya Pradesh',128981);
INSERT INTO `demo_city` VALUES (1248,'Gurgaon','IND','Haryana',128608);
INSERT INTO `demo_city` VALUES (1249,'Khammam','IND','Andhra Pradesh',127992);
INSERT INTO `demo_city` VALUES (1250,'Bulandshahr','IND','Uttar Pradesh',127201);
INSERT INTO `demo_city` VALUES (1251,'Navsari','IND','Gujarat',126089);
INSERT INTO `demo_city` VALUES (1252,'Malkajgiri','IND','Andhra Pradesh',126066);
INSERT INTO `demo_city` VALUES (1253,'Midnapore (Medinipur)','IND','West Bengali',125498);
INSERT INTO `demo_city` VALUES (1254,'Miraj','IND','Maharashtra',125407);
INSERT INTO `demo_city` VALUES (1255,'Raj Nandgaon','IND','Chhatisgarh',125371);
INSERT INTO `demo_city` VALUES (1256,'Alandur','IND','Tamil Nadu',125244);
INSERT INTO `demo_city` VALUES (1257,'Puri','IND','Orissa',125199);
INSERT INTO `demo_city` VALUES (1258,'Navadwip','IND','West Bengali',125037);
INSERT INTO `demo_city` VALUES (1259,'Sirsa','IND','Haryana',125000);
INSERT INTO `demo_city` VALUES (1260,'Korba','IND','Chhatisgarh',124501);
INSERT INTO `demo_city` VALUES (1261,'Faizabad','IND','Uttar Pradesh',124437);
INSERT INTO `demo_city` VALUES (1262,'Etawah','IND','Uttar Pradesh',124072);
INSERT INTO `demo_city` VALUES (1263,'Pathankot','IND','Punjab',123930);
INSERT INTO `demo_city` VALUES (1264,'Gandhinagar','IND','Gujarat',123359);
INSERT INTO `demo_city` VALUES (1265,'Palghat (Palakkad)','IND','Kerala',123289);
INSERT INTO `demo_city` VALUES (1266,'Veraval','IND','Gujarat',123000);
INSERT INTO `demo_city` VALUES (1267,'Hoshiarpur','IND','Punjab',122705);
INSERT INTO `demo_city` VALUES (1268,'Ambala','IND','Haryana',122596);
INSERT INTO `demo_city` VALUES (1269,'Sitapur','IND','Uttar Pradesh',121842);
INSERT INTO `demo_city` VALUES (1270,'Bhiwani','IND','Haryana',121629);
INSERT INTO `demo_city` VALUES (1271,'Cuddapah','IND','Andhra Pradesh',121463);
INSERT INTO `demo_city` VALUES (1272,'Bhimavaram','IND','Andhra Pradesh',121314);
INSERT INTO `demo_city` VALUES (1273,'Krishnanagar','IND','West Bengali',121110);
INSERT INTO `demo_city` VALUES (1274,'Chandannagar','IND','West Bengali',120378);
INSERT INTO `demo_city` VALUES (1275,'Mandya','IND','Karnataka',120265);
INSERT INTO `demo_city` VALUES (1276,'Dibrugarh','IND','Assam',120127);
INSERT INTO `demo_city` VALUES (1277,'Nandyal','IND','Andhra Pradesh',119813);
INSERT INTO `demo_city` VALUES (1278,'Balurghat','IND','West Bengali',119796);
INSERT INTO `demo_city` VALUES (1279,'Neyveli','IND','Tamil Nadu',118080);
INSERT INTO `demo_city` VALUES (1280,'Fatehpur','IND','Uttar Pradesh',117675);
INSERT INTO `demo_city` VALUES (1281,'Mahbubnagar','IND','Andhra Pradesh',116833);
INSERT INTO `demo_city` VALUES (1282,'Budaun','IND','Uttar Pradesh',116695);
INSERT INTO `demo_city` VALUES (1283,'Porbandar','IND','Gujarat',116671);
INSERT INTO `demo_city` VALUES (1284,'Silchar','IND','Assam',115483);
INSERT INTO `demo_city` VALUES (1285,'Berhampore (Baharampur)','IND','West Bengali',115144);
INSERT INTO `demo_city` VALUES (1286,'Purnea (Purnia)','IND','Jharkhand',114912);
INSERT INTO `demo_city` VALUES (1287,'Bankura','IND','West Bengali',114876);
INSERT INTO `demo_city` VALUES (1288,'Rajapalaiyam','IND','Tamil Nadu',114202);
INSERT INTO `demo_city` VALUES (1289,'Titagarh','IND','West Bengali',114085);
INSERT INTO `demo_city` VALUES (1290,'Halisahar','IND','West Bengali',114028);
INSERT INTO `demo_city` VALUES (1291,'Hathras','IND','Uttar Pradesh',113285);
INSERT INTO `demo_city` VALUES (1292,'Bhir (Bid)','IND','Maharashtra',112434);
INSERT INTO `demo_city` VALUES (1293,'Pallavaram','IND','Tamil Nadu',111866);
INSERT INTO `demo_city` VALUES (1294,'Anand','IND','Gujarat',110266);
INSERT INTO `demo_city` VALUES (1295,'Mango','IND','Jharkhand',110024);
INSERT INTO `demo_city` VALUES (1296,'Santipur','IND','West Bengali',109956);
INSERT INTO `demo_city` VALUES (1297,'Bhind','IND','Madhya Pradesh',109755);
INSERT INTO `demo_city` VALUES (1298,'Gondiya','IND','Maharashtra',109470);
INSERT INTO `demo_city` VALUES (1299,'Tiruvannamalai','IND','Tamil Nadu',109196);
INSERT INTO `demo_city` VALUES (1300,'Yeotmal (Yavatmal)','IND','Maharashtra',108578);
INSERT INTO `demo_city` VALUES (1301,'Kulti-Barakar','IND','West Bengali',108518);
INSERT INTO `demo_city` VALUES (1302,'Moga','IND','Punjab',108304);
INSERT INTO `demo_city` VALUES (1303,'Shivapuri','IND','Madhya Pradesh',108277);
INSERT INTO `demo_city` VALUES (1304,'Bidar','IND','Karnataka',108016);
INSERT INTO `demo_city` VALUES (1305,'Guntakal','IND','Andhra Pradesh',107592);
INSERT INTO `demo_city` VALUES (1306,'Unnao','IND','Uttar Pradesh',107425);
INSERT INTO `demo_city` VALUES (1307,'Barasat','IND','West Bengali',107365);
INSERT INTO `demo_city` VALUES (1308,'Tambaram','IND','Tamil Nadu',107187);
INSERT INTO `demo_city` VALUES (1309,'Abohar','IND','Punjab',107163);
INSERT INTO `demo_city` VALUES (1310,'Pilibhit','IND','Uttar Pradesh',106605);
INSERT INTO `demo_city` VALUES (1311,'Valparai','IND','Tamil Nadu',106523);
INSERT INTO `demo_city` VALUES (1312,'Gonda','IND','Uttar Pradesh',106078);
INSERT INTO `demo_city` VALUES (1313,'Surendranagar','IND','Gujarat',105973);
INSERT INTO `demo_city` VALUES (1314,'Qutubullapur','IND','Andhra Pradesh',105380);
INSERT INTO `demo_city` VALUES (1315,'Beawar','IND','Rajasthan',105363);
INSERT INTO `demo_city` VALUES (1316,'Hindupur','IND','Andhra Pradesh',104651);
INSERT INTO `demo_city` VALUES (1317,'Gandhidham','IND','Gujarat',104585);
INSERT INTO `demo_city` VALUES (1318,'Haldwani-cum-Kathgodam','IND','Uttaranchal',104195);
INSERT INTO `demo_city` VALUES (1319,'Tellicherry (Thalassery)','IND','Kerala',103579);
INSERT INTO `demo_city` VALUES (1320,'Wardha','IND','Maharashtra',102985);
INSERT INTO `demo_city` VALUES (1321,'Rishra','IND','West Bengali',102649);
INSERT INTO `demo_city` VALUES (1322,'Bhuj','IND','Gujarat',102176);
INSERT INTO `demo_city` VALUES (1323,'Modinagar','IND','Uttar Pradesh',101660);
INSERT INTO `demo_city` VALUES (1324,'Gudivada','IND','Andhra Pradesh',101656);
INSERT INTO `demo_city` VALUES (1325,'Basirhat','IND','West Bengali',101409);
INSERT INTO `demo_city` VALUES (1326,'Uttarpara-Kotrung','IND','West Bengali',100867);
INSERT INTO `demo_city` VALUES (1327,'Ongole','IND','Andhra Pradesh',100836);
INSERT INTO `demo_city` VALUES (1328,'North Barrackpur','IND','West Bengali',100513);
INSERT INTO `demo_city` VALUES (1329,'Guna','IND','Madhya Pradesh',100490);
INSERT INTO `demo_city` VALUES (1330,'Haldia','IND','West Bengali',100347);
INSERT INTO `demo_city` VALUES (1331,'Habra','IND','West Bengali',100223);
INSERT INTO `demo_city` VALUES (1332,'Kanchrapara','IND','West Bengali',100194);
INSERT INTO `demo_city` VALUES (1333,'Tonk','IND','Rajasthan',100079);
INSERT INTO `demo_city` VALUES (1334,'Champdani','IND','West Bengali',98818);
INSERT INTO `demo_city` VALUES (1335,'Orai','IND','Uttar Pradesh',98640);
INSERT INTO `demo_city` VALUES (1336,'Pudukkottai','IND','Tamil Nadu',98619);
INSERT INTO `demo_city` VALUES (1337,'Sasaram','IND','Bihar',98220);
INSERT INTO `demo_city` VALUES (1338,'Hazaribag','IND','Jharkhand',97712);
INSERT INTO `demo_city` VALUES (1339,'Palayankottai','IND','Tamil Nadu',97662);
INSERT INTO `demo_city` VALUES (1340,'Banda','IND','Uttar Pradesh',97227);
INSERT INTO `demo_city` VALUES (1341,'Godhra','IND','Gujarat',96813);
INSERT INTO `demo_city` VALUES (1342,'Hospet','IND','Karnataka',96322);
INSERT INTO `demo_city` VALUES (1343,'Ashoknagar-Kalyangarh','IND','West Bengali',96315);
INSERT INTO `demo_city` VALUES (1344,'Achalpur','IND','Maharashtra',96216);
INSERT INTO `demo_city` VALUES (1345,'Patan','IND','Gujarat',96109);
INSERT INTO `demo_city` VALUES (1346,'Mandasor','IND','Madhya Pradesh',95758);
INSERT INTO `demo_city` VALUES (1347,'Damoh','IND','Madhya Pradesh',95661);
INSERT INTO `demo_city` VALUES (1348,'Satara','IND','Maharashtra',95133);
INSERT INTO `demo_city` VALUES (1349,'Meerut Cantonment','IND','Uttar Pradesh',94876);
INSERT INTO `demo_city` VALUES (1350,'Dehri','IND','Bihar',94526);
INSERT INTO `demo_city` VALUES (1351,'Delhi Cantonment','IND','Delhi',94326);
INSERT INTO `demo_city` VALUES (1352,'Chhindwara','IND','Madhya Pradesh',93731);
INSERT INTO `demo_city` VALUES (1353,'Bansberia','IND','West Bengali',93447);
INSERT INTO `demo_city` VALUES (1354,'Nagaon','IND','Assam',93350);
INSERT INTO `demo_city` VALUES (1355,'Kanpur Cantonment','IND','Uttar Pradesh',93109);
INSERT INTO `demo_city` VALUES (1356,'Vidisha','IND','Madhya Pradesh',92917);
INSERT INTO `demo_city` VALUES (1357,'Bettiah','IND','Bihar',92583);
INSERT INTO `demo_city` VALUES (1358,'Purulia','IND','Jharkhand',92574);
INSERT INTO `demo_city` VALUES (1359,'Hassan','IND','Karnataka',90803);
INSERT INTO `demo_city` VALUES (1360,'Ambala Sadar','IND','Haryana',90712);
INSERT INTO `demo_city` VALUES (1361,'Baidyabati','IND','West Bengali',90601);
INSERT INTO `demo_city` VALUES (1362,'Morvi','IND','Gujarat',90357);
INSERT INTO `demo_city` VALUES (1363,'Raigarh','IND','Chhatisgarh',89166);
INSERT INTO `demo_city` VALUES (1364,'Vejalpur','IND','Gujarat',89053);
INSERT INTO `demo_city` VALUES (1365,'Baghdad','IRQ','Baghdad',4336000);
INSERT INTO `demo_city` VALUES (1366,'Mosul','IRQ','Ninawa',879000);
INSERT INTO `demo_city` VALUES (1367,'Irbil','IRQ','Irbil',485968);
INSERT INTO `demo_city` VALUES (1368,'Kirkuk','IRQ','al-Tamim',418624);
INSERT INTO `demo_city` VALUES (1369,'Basra','IRQ','Basra',406296);
INSERT INTO `demo_city` VALUES (1370,'al-Sulaymaniya','IRQ','al-Sulaymaniya',364096);
INSERT INTO `demo_city` VALUES (1371,'al-Najaf','IRQ','al-Najaf',309010);
INSERT INTO `demo_city` VALUES (1372,'Karbala','IRQ','Karbala',296705);
INSERT INTO `demo_city` VALUES (1373,'al-Hilla','IRQ','Babil',268834);
INSERT INTO `demo_city` VALUES (1374,'al-Nasiriya','IRQ','DhiQar',265937);
INSERT INTO `demo_city` VALUES (1375,'al-Amara','IRQ','Maysan',208797);
INSERT INTO `demo_city` VALUES (1376,'al-Diwaniya','IRQ','al-Qadisiya',196519);
INSERT INTO `demo_city` VALUES (1377,'al-Ramadi','IRQ','al-Anbar',192556);
INSERT INTO `demo_city` VALUES (1378,'al-Kut','IRQ','Wasit',183183);
INSERT INTO `demo_city` VALUES (1379,'Baquba','IRQ','Diyala',114516);
INSERT INTO `demo_city` VALUES (1380,'Teheran','IRN','Teheran',6758845);
INSERT INTO `demo_city` VALUES (1381,'Mashhad','IRN','Khorasan',1887405);
INSERT INTO `demo_city` VALUES (1382,'Esfahan','IRN','Esfahan',1266072);
INSERT INTO `demo_city` VALUES (1383,'Tabriz','IRN','East Azerbaidzan',1191043);
INSERT INTO `demo_city` VALUES (1384,'Shiraz','IRN','Fars',1053025);
INSERT INTO `demo_city` VALUES (1385,'Karaj','IRN','Teheran',940968);
INSERT INTO `demo_city` VALUES (1386,'Ahvaz','IRN','Khuzestan',804980);
INSERT INTO `demo_city` VALUES (1387,'Qom','IRN','Qom',777677);
INSERT INTO `demo_city` VALUES (1388,'Kermanshah','IRN','Kermanshah',692986);
INSERT INTO `demo_city` VALUES (1389,'Urmia','IRN','West Azerbaidzan',435200);
INSERT INTO `demo_city` VALUES (1390,'Zahedan','IRN','Sistan va Baluchesta',419518);
INSERT INTO `demo_city` VALUES (1391,'Rasht','IRN','Gilan',417748);
INSERT INTO `demo_city` VALUES (1392,'Hamadan','IRN','Hamadan',401281);
INSERT INTO `demo_city` VALUES (1393,'Kerman','IRN','Kerman',384991);
INSERT INTO `demo_city` VALUES (1394,'Arak','IRN','Markazi',380755);
INSERT INTO `demo_city` VALUES (1395,'Ardebil','IRN','Ardebil',340386);
INSERT INTO `demo_city` VALUES (1396,'Yazd','IRN','Yazd',326776);
INSERT INTO `demo_city` VALUES (1397,'Qazvin','IRN','Qazvin',291117);
INSERT INTO `demo_city` VALUES (1398,'Zanjan','IRN','Zanjan',286295);
INSERT INTO `demo_city` VALUES (1399,'Sanandaj','IRN','Kordestan',277808);
INSERT INTO `demo_city` VALUES (1400,'Bandar-e-Abbas','IRN','Hormozgan',273578);
INSERT INTO `demo_city` VALUES (1401,'Khorramabad','IRN','Lorestan',272815);
INSERT INTO `demo_city` VALUES (1402,'Eslamshahr','IRN','Teheran',265450);
INSERT INTO `demo_city` VALUES (1403,'Borujerd','IRN','Lorestan',217804);
INSERT INTO `demo_city` VALUES (1404,'Abadan','IRN','Khuzestan',206073);
INSERT INTO `demo_city` VALUES (1405,'Dezful','IRN','Khuzestan',202639);
INSERT INTO `demo_city` VALUES (1406,'Kashan','IRN','Esfahan',201372);
INSERT INTO `demo_city` VALUES (1407,'Sari','IRN','Mazandaran',195882);
INSERT INTO `demo_city` VALUES (1408,'Gorgan','IRN','Golestan',188710);
INSERT INTO `demo_city` VALUES (1409,'Najafabad','IRN','Esfahan',178498);
INSERT INTO `demo_city` VALUES (1410,'Sabzevar','IRN','Khorasan',170738);
INSERT INTO `demo_city` VALUES (1411,'Khomeynishahr','IRN','Esfahan',165888);
INSERT INTO `demo_city` VALUES (1412,'Amol','IRN','Mazandaran',159092);
INSERT INTO `demo_city` VALUES (1413,'Neyshabur','IRN','Khorasan',158847);
INSERT INTO `demo_city` VALUES (1414,'Babol','IRN','Mazandaran',158346);
INSERT INTO `demo_city` VALUES (1415,'Khoy','IRN','West Azerbaidzan',148944);
INSERT INTO `demo_city` VALUES (1416,'Malayer','IRN','Hamadan',144373);
INSERT INTO `demo_city` VALUES (1417,'Bushehr','IRN','Bushehr',143641);
INSERT INTO `demo_city` VALUES (1418,'Qaemshahr','IRN','Mazandaran',143286);
INSERT INTO `demo_city` VALUES (1419,'Qarchak','IRN','Teheran',142690);
INSERT INTO `demo_city` VALUES (1420,'Qods','IRN','Teheran',138278);
INSERT INTO `demo_city` VALUES (1421,'Sirjan','IRN','Kerman',135024);
INSERT INTO `demo_city` VALUES (1422,'Bojnurd','IRN','Khorasan',134835);
INSERT INTO `demo_city` VALUES (1423,'Maragheh','IRN','East Azerbaidzan',132318);
INSERT INTO `demo_city` VALUES (1424,'Birjand','IRN','Khorasan',127608);
INSERT INTO `demo_city` VALUES (1425,'Ilam','IRN','Ilam',126346);
INSERT INTO `demo_city` VALUES (1426,'Bukan','IRN','West Azerbaidzan',120020);
INSERT INTO `demo_city` VALUES (1427,'Masjed-e-Soleyman','IRN','Khuzestan',116883);
INSERT INTO `demo_city` VALUES (1428,'Saqqez','IRN','Kordestan',115394);
INSERT INTO `demo_city` VALUES (1429,'Gonbad-e Qabus','IRN','Mazandaran',111253);
INSERT INTO `demo_city` VALUES (1430,'Saveh','IRN','Qom',111245);
INSERT INTO `demo_city` VALUES (1431,'Mahabad','IRN','West Azerbaidzan',107799);
INSERT INTO `demo_city` VALUES (1432,'Varamin','IRN','Teheran',107233);
INSERT INTO `demo_city` VALUES (1433,'Andimeshk','IRN','Khuzestan',106923);
INSERT INTO `demo_city` VALUES (1434,'Khorramshahr','IRN','Khuzestan',105636);
INSERT INTO `demo_city` VALUES (1435,'Shahrud','IRN','Semnan',104765);
INSERT INTO `demo_city` VALUES (1436,'Marv Dasht','IRN','Fars',103579);
INSERT INTO `demo_city` VALUES (1437,'Zabol','IRN','Sistan va Baluchesta',100887);
INSERT INTO `demo_city` VALUES (1438,'Shahr-e Kord','IRN','Chaharmahal va Bakht',100477);
INSERT INTO `demo_city` VALUES (1439,'Bandar-e Anzali','IRN','Gilan',98500);
INSERT INTO `demo_city` VALUES (1440,'Rafsanjan','IRN','Kerman',98300);
INSERT INTO `demo_city` VALUES (1441,'Marand','IRN','East Azerbaidzan',96400);
INSERT INTO `demo_city` VALUES (1442,'Torbat-e Heydariyeh','IRN','Khorasan',94600);
INSERT INTO `demo_city` VALUES (1443,'Jahrom','IRN','Fars',94200);
INSERT INTO `demo_city` VALUES (1444,'Semnan','IRN','Semnan',91045);
INSERT INTO `demo_city` VALUES (1445,'Miandoab','IRN','West Azerbaidzan',90100);
INSERT INTO `demo_city` VALUES (1446,'Qomsheh','IRN','Esfahan',89800);
INSERT INTO `demo_city` VALUES (1447,'Dublin','IRL','Leinster',481854);
INSERT INTO `demo_city` VALUES (1448,'Cork','IRL','Munster',127187);
INSERT INTO `demo_city` VALUES (1449,'Reykjavík','ISL','Höfuðborgarsvæði',109184);
INSERT INTO `demo_city` VALUES (1450,'Jerusalem','ISR','Jerusalem',633700);
INSERT INTO `demo_city` VALUES (1451,'Tel Aviv-Jaffa','ISR','Tel Aviv',348100);
INSERT INTO `demo_city` VALUES (1452,'Haifa','ISR','Haifa',265700);
INSERT INTO `demo_city` VALUES (1453,'Rishon Le Ziyyon','ISR','Ha Merkaz',188200);
INSERT INTO `demo_city` VALUES (1454,'Beerseba','ISR','Ha Darom',163700);
INSERT INTO `demo_city` VALUES (1455,'Holon','ISR','Tel Aviv',163100);
INSERT INTO `demo_city` VALUES (1456,'Petah Tiqwa','ISR','Ha Merkaz',159400);
INSERT INTO `demo_city` VALUES (1457,'Ashdod','ISR','Ha Darom',155800);
INSERT INTO `demo_city` VALUES (1458,'Netanya','ISR','Ha Merkaz',154900);
INSERT INTO `demo_city` VALUES (1459,'Bat Yam','ISR','Tel Aviv',137000);
INSERT INTO `demo_city` VALUES (1460,'Bene Beraq','ISR','Tel Aviv',133900);
INSERT INTO `demo_city` VALUES (1461,'Ramat Gan','ISR','Tel Aviv',126900);
INSERT INTO `demo_city` VALUES (1462,'Ashqelon','ISR','Ha Darom',92300);
INSERT INTO `demo_city` VALUES (1463,'Rehovot','ISR','Ha Merkaz',90300);
INSERT INTO `demo_city` VALUES (1464,'Roma','ITA','Latium',2643581);
INSERT INTO `demo_city` VALUES (1465,'Milano','ITA','Lombardia',1300977);
INSERT INTO `demo_city` VALUES (1466,'Napoli','ITA','Campania',1002619);
INSERT INTO `demo_city` VALUES (1467,'Torino','ITA','Piemonte',903705);
INSERT INTO `demo_city` VALUES (1468,'Palermo','ITA','Sisilia',683794);
INSERT INTO `demo_city` VALUES (1469,'Genova','ITA','Liguria',636104);
INSERT INTO `demo_city` VALUES (1470,'Bologna','ITA','Emilia-Romagna',381161);
INSERT INTO `demo_city` VALUES (1471,'Firenze','ITA','Toscana',376662);
INSERT INTO `demo_city` VALUES (1472,'Catania','ITA','Sisilia',337862);
INSERT INTO `demo_city` VALUES (1473,'Bari','ITA','Apulia',331848);
INSERT INTO `demo_city` VALUES (1474,'Venezia','ITA','Veneto',277305);
INSERT INTO `demo_city` VALUES (1475,'Messina','ITA','Sisilia',259156);
INSERT INTO `demo_city` VALUES (1476,'Verona','ITA','Veneto',255268);
INSERT INTO `demo_city` VALUES (1477,'Trieste','ITA','Friuli-Venezia Giuli',216459);
INSERT INTO `demo_city` VALUES (1478,'Padova','ITA','Veneto',211391);
INSERT INTO `demo_city` VALUES (1479,'Taranto','ITA','Apulia',208214);
INSERT INTO `demo_city` VALUES (1480,'Brescia','ITA','Lombardia',191317);
INSERT INTO `demo_city` VALUES (1481,'Reggio di Calabria','ITA','Calabria',179617);
INSERT INTO `demo_city` VALUES (1482,'Modena','ITA','Emilia-Romagna',176022);
INSERT INTO `demo_city` VALUES (1483,'Prato','ITA','Toscana',172473);
INSERT INTO `demo_city` VALUES (1484,'Parma','ITA','Emilia-Romagna',168717);
INSERT INTO `demo_city` VALUES (1485,'Cagliari','ITA','Sardinia',165926);
INSERT INTO `demo_city` VALUES (1486,'Livorno','ITA','Toscana',161673);
INSERT INTO `demo_city` VALUES (1487,'Perugia','ITA','Umbria',156673);
INSERT INTO `demo_city` VALUES (1488,'Foggia','ITA','Apulia',154891);
INSERT INTO `demo_city` VALUES (1489,'Reggio nell´ Emilia','ITA','Emilia-Romagna',143664);
INSERT INTO `demo_city` VALUES (1490,'Salerno','ITA','Campania',142055);
INSERT INTO `demo_city` VALUES (1491,'Ravenna','ITA','Emilia-Romagna',138418);
INSERT INTO `demo_city` VALUES (1492,'Ferrara','ITA','Emilia-Romagna',132127);
INSERT INTO `demo_city` VALUES (1493,'Rimini','ITA','Emilia-Romagna',131062);
INSERT INTO `demo_city` VALUES (1494,'Syrakusa','ITA','Sisilia',126282);
INSERT INTO `demo_city` VALUES (1495,'Sassari','ITA','Sardinia',120803);
INSERT INTO `demo_city` VALUES (1496,'Monza','ITA','Lombardia',119516);
INSERT INTO `demo_city` VALUES (1497,'Bergamo','ITA','Lombardia',117837);
INSERT INTO `demo_city` VALUES (1498,'Pescara','ITA','Abruzzit',115698);
INSERT INTO `demo_city` VALUES (1499,'Latina','ITA','Latium',114099);
INSERT INTO `demo_city` VALUES (1500,'Vicenza','ITA','Veneto',109738);
INSERT INTO `demo_city` VALUES (1501,'Terni','ITA','Umbria',107770);
INSERT INTO `demo_city` VALUES (1502,'Forlì','ITA','Emilia-Romagna',107475);
INSERT INTO `demo_city` VALUES (1503,'Trento','ITA','Trentino-Alto Adige',104906);
INSERT INTO `demo_city` VALUES (1504,'Novara','ITA','Piemonte',102037);
INSERT INTO `demo_city` VALUES (1505,'Piacenza','ITA','Emilia-Romagna',98384);
INSERT INTO `demo_city` VALUES (1506,'Ancona','ITA','Marche',98329);
INSERT INTO `demo_city` VALUES (1507,'Lecce','ITA','Apulia',98208);
INSERT INTO `demo_city` VALUES (1508,'Bolzano','ITA','Trentino-Alto Adige',97232);
INSERT INTO `demo_city` VALUES (1509,'Catanzaro','ITA','Calabria',96700);
INSERT INTO `demo_city` VALUES (1510,'La Spezia','ITA','Liguria',95504);
INSERT INTO `demo_city` VALUES (1511,'Udine','ITA','Friuli-Venezia Giuli',94932);
INSERT INTO `demo_city` VALUES (1512,'Torre del Greco','ITA','Campania',94505);
INSERT INTO `demo_city` VALUES (1513,'Andria','ITA','Apulia',94443);
INSERT INTO `demo_city` VALUES (1514,'Brindisi','ITA','Apulia',93454);
INSERT INTO `demo_city` VALUES (1515,'Giugliano in Campania','ITA','Campania',93286);
INSERT INTO `demo_city` VALUES (1516,'Pisa','ITA','Toscana',92379);
INSERT INTO `demo_city` VALUES (1517,'Barletta','ITA','Apulia',91904);
INSERT INTO `demo_city` VALUES (1518,'Arezzo','ITA','Toscana',91729);
INSERT INTO `demo_city` VALUES (1519,'Alessandria','ITA','Piemonte',90289);
INSERT INTO `demo_city` VALUES (1520,'Cesena','ITA','Emilia-Romagna',89852);
INSERT INTO `demo_city` VALUES (1521,'Pesaro','ITA','Marche',88987);
INSERT INTO `demo_city` VALUES (1522,'Dili','TMP','Dili',47900);
INSERT INTO `demo_city` VALUES (1523,'Wien','AUT','Wien',1608144);
INSERT INTO `demo_city` VALUES (1524,'Graz','AUT','Steiermark',240967);
INSERT INTO `demo_city` VALUES (1525,'Linz','AUT','North Austria',188022);
INSERT INTO `demo_city` VALUES (1526,'Salzburg','AUT','Salzburg',144247);
INSERT INTO `demo_city` VALUES (1527,'Innsbruck','AUT','Tiroli',111752);
INSERT INTO `demo_city` VALUES (1528,'Klagenfurt','AUT','Kärnten',91141);
INSERT INTO `demo_city` VALUES (1529,'Spanish Town','JAM','St. Catherine',110379);
INSERT INTO `demo_city` VALUES (1530,'Kingston','JAM','St. Andrew',103962);
INSERT INTO `demo_city` VALUES (1531,'Portmore','JAM','St. Andrew',99799);
INSERT INTO `demo_city` VALUES (1532,'Tokyo','JPN','Tokyo-to',7980230);
INSERT INTO `demo_city` VALUES (1533,'Jokohama [Yokohama]','JPN','Kanagawa',3339594);
INSERT INTO `demo_city` VALUES (1534,'Osaka','JPN','Osaka',2595674);
INSERT INTO `demo_city` VALUES (1535,'Nagoya','JPN','Aichi',2154376);
INSERT INTO `demo_city` VALUES (1536,'Sapporo','JPN','Hokkaido',1790886);
INSERT INTO `demo_city` VALUES (1537,'Kioto','JPN','Kyoto',1461974);
INSERT INTO `demo_city` VALUES (1538,'Kobe','JPN','Hyogo',1425139);
INSERT INTO `demo_city` VALUES (1539,'Fukuoka','JPN','Fukuoka',1308379);
INSERT INTO `demo_city` VALUES (1540,'Kawasaki','JPN','Kanagawa',1217359);
INSERT INTO `demo_city` VALUES (1541,'Hiroshima','JPN','Hiroshima',1119117);
INSERT INTO `demo_city` VALUES (1542,'Kitakyushu','JPN','Fukuoka',1016264);
INSERT INTO `demo_city` VALUES (1543,'Sendai','JPN','Miyagi',989975);
INSERT INTO `demo_city` VALUES (1544,'Chiba','JPN','Chiba',863930);
INSERT INTO `demo_city` VALUES (1545,'Sakai','JPN','Osaka',797735);
INSERT INTO `demo_city` VALUES (1546,'Kumamoto','JPN','Kumamoto',656734);
INSERT INTO `demo_city` VALUES (1547,'Okayama','JPN','Okayama',624269);
INSERT INTO `demo_city` VALUES (1548,'Sagamihara','JPN','Kanagawa',586300);
INSERT INTO `demo_city` VALUES (1549,'Hamamatsu','JPN','Shizuoka',568796);
INSERT INTO `demo_city` VALUES (1550,'Kagoshima','JPN','Kagoshima',549977);
INSERT INTO `demo_city` VALUES (1551,'Funabashi','JPN','Chiba',545299);
INSERT INTO `demo_city` VALUES (1552,'Higashiosaka','JPN','Osaka',517785);
INSERT INTO `demo_city` VALUES (1553,'Hachioji','JPN','Tokyo-to',513451);
INSERT INTO `demo_city` VALUES (1554,'Niigata','JPN','Niigata',497464);
INSERT INTO `demo_city` VALUES (1555,'Amagasaki','JPN','Hyogo',481434);
INSERT INTO `demo_city` VALUES (1556,'Himeji','JPN','Hyogo',475167);
INSERT INTO `demo_city` VALUES (1557,'Shizuoka','JPN','Shizuoka',473854);
INSERT INTO `demo_city` VALUES (1558,'Urawa','JPN','Saitama',469675);
INSERT INTO `demo_city` VALUES (1559,'Matsuyama','JPN','Ehime',466133);
INSERT INTO `demo_city` VALUES (1560,'Matsudo','JPN','Chiba',461126);
INSERT INTO `demo_city` VALUES (1561,'Kanazawa','JPN','Ishikawa',455386);
INSERT INTO `demo_city` VALUES (1562,'Kawaguchi','JPN','Saitama',452155);
INSERT INTO `demo_city` VALUES (1563,'Ichikawa','JPN','Chiba',441893);
INSERT INTO `demo_city` VALUES (1564,'Omiya','JPN','Saitama',441649);
INSERT INTO `demo_city` VALUES (1565,'Utsunomiya','JPN','Tochigi',440353);
INSERT INTO `demo_city` VALUES (1566,'Oita','JPN','Oita',433401);
INSERT INTO `demo_city` VALUES (1567,'Nagasaki','JPN','Nagasaki',432759);
INSERT INTO `demo_city` VALUES (1568,'Yokosuka','JPN','Kanagawa',430200);
INSERT INTO `demo_city` VALUES (1569,'Kurashiki','JPN','Okayama',425103);
INSERT INTO `demo_city` VALUES (1570,'Gifu','JPN','Gifu',408007);
INSERT INTO `demo_city` VALUES (1571,'Hirakata','JPN','Osaka',403151);
INSERT INTO `demo_city` VALUES (1572,'Nishinomiya','JPN','Hyogo',397618);
INSERT INTO `demo_city` VALUES (1573,'Toyonaka','JPN','Osaka',396689);
INSERT INTO `demo_city` VALUES (1574,'Wakayama','JPN','Wakayama',391233);
INSERT INTO `demo_city` VALUES (1575,'Fukuyama','JPN','Hiroshima',376921);
INSERT INTO `demo_city` VALUES (1576,'Fujisawa','JPN','Kanagawa',372840);
INSERT INTO `demo_city` VALUES (1577,'Asahikawa','JPN','Hokkaido',364813);
INSERT INTO `demo_city` VALUES (1578,'Machida','JPN','Tokyo-to',364197);
INSERT INTO `demo_city` VALUES (1579,'Nara','JPN','Nara',362812);
INSERT INTO `demo_city` VALUES (1580,'Takatsuki','JPN','Osaka',361747);
INSERT INTO `demo_city` VALUES (1581,'Iwaki','JPN','Fukushima',361737);
INSERT INTO `demo_city` VALUES (1582,'Nagano','JPN','Nagano',361391);
INSERT INTO `demo_city` VALUES (1583,'Toyohashi','JPN','Aichi',360066);
INSERT INTO `demo_city` VALUES (1584,'Toyota','JPN','Aichi',346090);
INSERT INTO `demo_city` VALUES (1585,'Suita','JPN','Osaka',345750);
INSERT INTO `demo_city` VALUES (1586,'Takamatsu','JPN','Kagawa',332471);
INSERT INTO `demo_city` VALUES (1587,'Koriyama','JPN','Fukushima',330335);
INSERT INTO `demo_city` VALUES (1588,'Okazaki','JPN','Aichi',328711);
INSERT INTO `demo_city` VALUES (1589,'Kawagoe','JPN','Saitama',327211);
INSERT INTO `demo_city` VALUES (1590,'Tokorozawa','JPN','Saitama',325809);
INSERT INTO `demo_city` VALUES (1591,'Toyama','JPN','Toyama',325790);
INSERT INTO `demo_city` VALUES (1592,'Kochi','JPN','Kochi',324710);
INSERT INTO `demo_city` VALUES (1593,'Kashiwa','JPN','Chiba',320296);
INSERT INTO `demo_city` VALUES (1594,'Akita','JPN','Akita',314440);
INSERT INTO `demo_city` VALUES (1595,'Miyazaki','JPN','Miyazaki',303784);
INSERT INTO `demo_city` VALUES (1596,'Koshigaya','JPN','Saitama',301446);
INSERT INTO `demo_city` VALUES (1597,'Naha','JPN','Okinawa',299851);
INSERT INTO `demo_city` VALUES (1598,'Aomori','JPN','Aomori',295969);
INSERT INTO `demo_city` VALUES (1599,'Hakodate','JPN','Hokkaido',294788);
INSERT INTO `demo_city` VALUES (1600,'Akashi','JPN','Hyogo',292253);
INSERT INTO `demo_city` VALUES (1601,'Yokkaichi','JPN','Mie',288173);
INSERT INTO `demo_city` VALUES (1602,'Fukushima','JPN','Fukushima',287525);
INSERT INTO `demo_city` VALUES (1603,'Morioka','JPN','Iwate',287353);
INSERT INTO `demo_city` VALUES (1604,'Maebashi','JPN','Gumma',284473);
INSERT INTO `demo_city` VALUES (1605,'Kasugai','JPN','Aichi',282348);
INSERT INTO `demo_city` VALUES (1606,'Otsu','JPN','Shiga',282070);
INSERT INTO `demo_city` VALUES (1607,'Ichihara','JPN','Chiba',279280);
INSERT INTO `demo_city` VALUES (1608,'Yao','JPN','Osaka',276421);
INSERT INTO `demo_city` VALUES (1609,'Ichinomiya','JPN','Aichi',270828);
INSERT INTO `demo_city` VALUES (1610,'Tokushima','JPN','Tokushima',269649);
INSERT INTO `demo_city` VALUES (1611,'Kakogawa','JPN','Hyogo',266281);
INSERT INTO `demo_city` VALUES (1612,'Ibaraki','JPN','Osaka',261020);
INSERT INTO `demo_city` VALUES (1613,'Neyagawa','JPN','Osaka',257315);
INSERT INTO `demo_city` VALUES (1614,'Shimonoseki','JPN','Yamaguchi',257263);
INSERT INTO `demo_city` VALUES (1615,'Yamagata','JPN','Yamagata',255617);
INSERT INTO `demo_city` VALUES (1616,'Fukui','JPN','Fukui',254818);
INSERT INTO `demo_city` VALUES (1617,'Hiratsuka','JPN','Kanagawa',254207);
INSERT INTO `demo_city` VALUES (1618,'Mito','JPN','Ibaragi',246559);
INSERT INTO `demo_city` VALUES (1619,'Sasebo','JPN','Nagasaki',244240);
INSERT INTO `demo_city` VALUES (1620,'Hachinohe','JPN','Aomori',242979);
INSERT INTO `demo_city` VALUES (1621,'Takasaki','JPN','Gumma',239124);
INSERT INTO `demo_city` VALUES (1622,'Shimizu','JPN','Shizuoka',239123);
INSERT INTO `demo_city` VALUES (1623,'Kurume','JPN','Fukuoka',235611);
INSERT INTO `demo_city` VALUES (1624,'Fuji','JPN','Shizuoka',231527);
INSERT INTO `demo_city` VALUES (1625,'Soka','JPN','Saitama',222768);
INSERT INTO `demo_city` VALUES (1626,'Fuchu','JPN','Tokyo-to',220576);
INSERT INTO `demo_city` VALUES (1627,'Chigasaki','JPN','Kanagawa',216015);
INSERT INTO `demo_city` VALUES (1628,'Atsugi','JPN','Kanagawa',212407);
INSERT INTO `demo_city` VALUES (1629,'Numazu','JPN','Shizuoka',211382);
INSERT INTO `demo_city` VALUES (1630,'Ageo','JPN','Saitama',209442);
INSERT INTO `demo_city` VALUES (1631,'Yamato','JPN','Kanagawa',208234);
INSERT INTO `demo_city` VALUES (1632,'Matsumoto','JPN','Nagano',206801);
INSERT INTO `demo_city` VALUES (1633,'Kure','JPN','Hiroshima',206504);
INSERT INTO `demo_city` VALUES (1634,'Takarazuka','JPN','Hyogo',205993);
INSERT INTO `demo_city` VALUES (1635,'Kasukabe','JPN','Saitama',201838);
INSERT INTO `demo_city` VALUES (1636,'Chofu','JPN','Tokyo-to',201585);
INSERT INTO `demo_city` VALUES (1637,'Odawara','JPN','Kanagawa',200171);
INSERT INTO `demo_city` VALUES (1638,'Kofu','JPN','Yamanashi',199753);
INSERT INTO `demo_city` VALUES (1639,'Kushiro','JPN','Hokkaido',197608);
INSERT INTO `demo_city` VALUES (1640,'Kishiwada','JPN','Osaka',197276);
INSERT INTO `demo_city` VALUES (1641,'Hitachi','JPN','Ibaragi',196622);
INSERT INTO `demo_city` VALUES (1642,'Nagaoka','JPN','Niigata',192407);
INSERT INTO `demo_city` VALUES (1643,'Itami','JPN','Hyogo',190886);
INSERT INTO `demo_city` VALUES (1644,'Uji','JPN','Kyoto',188735);
INSERT INTO `demo_city` VALUES (1645,'Suzuka','JPN','Mie',184061);
INSERT INTO `demo_city` VALUES (1646,'Hirosaki','JPN','Aomori',177522);
INSERT INTO `demo_city` VALUES (1647,'Ube','JPN','Yamaguchi',175206);
INSERT INTO `demo_city` VALUES (1648,'Kodaira','JPN','Tokyo-to',174984);
INSERT INTO `demo_city` VALUES (1649,'Takaoka','JPN','Toyama',174380);
INSERT INTO `demo_city` VALUES (1650,'Obihiro','JPN','Hokkaido',173685);
INSERT INTO `demo_city` VALUES (1651,'Tomakomai','JPN','Hokkaido',171958);
INSERT INTO `demo_city` VALUES (1652,'Saga','JPN','Saga',170034);
INSERT INTO `demo_city` VALUES (1653,'Sakura','JPN','Chiba',168072);
INSERT INTO `demo_city` VALUES (1654,'Kamakura','JPN','Kanagawa',167661);
INSERT INTO `demo_city` VALUES (1655,'Mitaka','JPN','Tokyo-to',167268);
INSERT INTO `demo_city` VALUES (1656,'Izumi','JPN','Osaka',166979);
INSERT INTO `demo_city` VALUES (1657,'Hino','JPN','Tokyo-to',166770);
INSERT INTO `demo_city` VALUES (1658,'Hadano','JPN','Kanagawa',166512);
INSERT INTO `demo_city` VALUES (1659,'Ashikaga','JPN','Tochigi',165243);
INSERT INTO `demo_city` VALUES (1660,'Tsu','JPN','Mie',164543);
INSERT INTO `demo_city` VALUES (1661,'Sayama','JPN','Saitama',162472);
INSERT INTO `demo_city` VALUES (1662,'Yachiyo','JPN','Chiba',161222);
INSERT INTO `demo_city` VALUES (1663,'Tsukuba','JPN','Ibaragi',160768);
INSERT INTO `demo_city` VALUES (1664,'Tachikawa','JPN','Tokyo-to',159430);
INSERT INTO `demo_city` VALUES (1665,'Kumagaya','JPN','Saitama',157171);
INSERT INTO `demo_city` VALUES (1666,'Moriguchi','JPN','Osaka',155941);
INSERT INTO `demo_city` VALUES (1667,'Otaru','JPN','Hokkaido',155784);
INSERT INTO `demo_city` VALUES (1668,'Anjo','JPN','Aichi',153823);
INSERT INTO `demo_city` VALUES (1669,'Narashino','JPN','Chiba',152849);
INSERT INTO `demo_city` VALUES (1670,'Oyama','JPN','Tochigi',152820);
INSERT INTO `demo_city` VALUES (1671,'Ogaki','JPN','Gifu',151758);
INSERT INTO `demo_city` VALUES (1672,'Matsue','JPN','Shimane',149821);
INSERT INTO `demo_city` VALUES (1673,'Kawanishi','JPN','Hyogo',149794);
INSERT INTO `demo_city` VALUES (1674,'Hitachinaka','JPN','Tokyo-to',148006);
INSERT INTO `demo_city` VALUES (1675,'Niiza','JPN','Saitama',147744);
INSERT INTO `demo_city` VALUES (1676,'Nagareyama','JPN','Chiba',147738);
INSERT INTO `demo_city` VALUES (1677,'Tottori','JPN','Tottori',147523);
INSERT INTO `demo_city` VALUES (1678,'Tama','JPN','Ibaragi',146712);
INSERT INTO `demo_city` VALUES (1679,'Iruma','JPN','Saitama',145922);
INSERT INTO `demo_city` VALUES (1680,'Ota','JPN','Gumma',145317);
INSERT INTO `demo_city` VALUES (1681,'Omuta','JPN','Fukuoka',142889);
INSERT INTO `demo_city` VALUES (1682,'Komaki','JPN','Aichi',139827);
INSERT INTO `demo_city` VALUES (1683,'Ome','JPN','Tokyo-to',139216);
INSERT INTO `demo_city` VALUES (1684,'Kadoma','JPN','Osaka',138953);
INSERT INTO `demo_city` VALUES (1685,'Yamaguchi','JPN','Yamaguchi',138210);
INSERT INTO `demo_city` VALUES (1686,'Higashimurayama','JPN','Tokyo-to',136970);
INSERT INTO `demo_city` VALUES (1687,'Yonago','JPN','Tottori',136461);
INSERT INTO `demo_city` VALUES (1688,'Matsubara','JPN','Osaka',135010);
INSERT INTO `demo_city` VALUES (1689,'Musashino','JPN','Tokyo-to',134426);
INSERT INTO `demo_city` VALUES (1690,'Tsuchiura','JPN','Ibaragi',134072);
INSERT INTO `demo_city` VALUES (1691,'Joetsu','JPN','Niigata',133505);
INSERT INTO `demo_city` VALUES (1692,'Miyakonojo','JPN','Miyazaki',133183);
INSERT INTO `demo_city` VALUES (1693,'Misato','JPN','Saitama',132957);
INSERT INTO `demo_city` VALUES (1694,'Kakamigahara','JPN','Gifu',131831);
INSERT INTO `demo_city` VALUES (1695,'Daito','JPN','Osaka',130594);
INSERT INTO `demo_city` VALUES (1696,'Seto','JPN','Aichi',130470);
INSERT INTO `demo_city` VALUES (1697,'Kariya','JPN','Aichi',127969);
INSERT INTO `demo_city` VALUES (1698,'Urayasu','JPN','Chiba',127550);
INSERT INTO `demo_city` VALUES (1699,'Beppu','JPN','Oita',127486);
INSERT INTO `demo_city` VALUES (1700,'Niihama','JPN','Ehime',127207);
INSERT INTO `demo_city` VALUES (1701,'Minoo','JPN','Osaka',127026);
INSERT INTO `demo_city` VALUES (1702,'Fujieda','JPN','Shizuoka',126897);
INSERT INTO `demo_city` VALUES (1703,'Abiko','JPN','Chiba',126670);
INSERT INTO `demo_city` VALUES (1704,'Nobeoka','JPN','Miyazaki',125547);
INSERT INTO `demo_city` VALUES (1705,'Tondabayashi','JPN','Osaka',125094);
INSERT INTO `demo_city` VALUES (1706,'Ueda','JPN','Nagano',124217);
INSERT INTO `demo_city` VALUES (1707,'Kashihara','JPN','Nara',124013);
INSERT INTO `demo_city` VALUES (1708,'Matsusaka','JPN','Mie',123582);
INSERT INTO `demo_city` VALUES (1709,'Isesaki','JPN','Gumma',123285);
INSERT INTO `demo_city` VALUES (1710,'Zama','JPN','Kanagawa',122046);
INSERT INTO `demo_city` VALUES (1711,'Kisarazu','JPN','Chiba',121967);
INSERT INTO `demo_city` VALUES (1712,'Noda','JPN','Chiba',121030);
INSERT INTO `demo_city` VALUES (1713,'Ishinomaki','JPN','Miyagi',120963);
INSERT INTO `demo_city` VALUES (1714,'Fujinomiya','JPN','Shizuoka',119714);
INSERT INTO `demo_city` VALUES (1715,'Kawachinagano','JPN','Osaka',119666);
INSERT INTO `demo_city` VALUES (1716,'Imabari','JPN','Ehime',119357);
INSERT INTO `demo_city` VALUES (1717,'Aizuwakamatsu','JPN','Fukushima',119287);
INSERT INTO `demo_city` VALUES (1718,'Higashihiroshima','JPN','Hiroshima',119166);
INSERT INTO `demo_city` VALUES (1719,'Habikino','JPN','Osaka',118968);
INSERT INTO `demo_city` VALUES (1720,'Ebetsu','JPN','Hokkaido',118805);
INSERT INTO `demo_city` VALUES (1721,'Hofu','JPN','Yamaguchi',118751);
INSERT INTO `demo_city` VALUES (1722,'Kiryu','JPN','Gumma',118326);
INSERT INTO `demo_city` VALUES (1723,'Okinawa','JPN','Okinawa',117748);
INSERT INTO `demo_city` VALUES (1724,'Yaizu','JPN','Shizuoka',117258);
INSERT INTO `demo_city` VALUES (1725,'Toyokawa','JPN','Aichi',115781);
INSERT INTO `demo_city` VALUES (1726,'Ebina','JPN','Kanagawa',115571);
INSERT INTO `demo_city` VALUES (1727,'Asaka','JPN','Saitama',114815);
INSERT INTO `demo_city` VALUES (1728,'Higashikurume','JPN','Tokyo-to',111666);
INSERT INTO `demo_city` VALUES (1729,'Ikoma','JPN','Nara',111645);
INSERT INTO `demo_city` VALUES (1730,'Kitami','JPN','Hokkaido',111295);
INSERT INTO `demo_city` VALUES (1731,'Koganei','JPN','Tokyo-to',110969);
INSERT INTO `demo_city` VALUES (1732,'Iwatsuki','JPN','Saitama',110034);
INSERT INTO `demo_city` VALUES (1733,'Mishima','JPN','Shizuoka',109699);
INSERT INTO `demo_city` VALUES (1734,'Handa','JPN','Aichi',108600);
INSERT INTO `demo_city` VALUES (1735,'Muroran','JPN','Hokkaido',108275);
INSERT INTO `demo_city` VALUES (1736,'Komatsu','JPN','Ishikawa',107937);
INSERT INTO `demo_city` VALUES (1737,'Yatsushiro','JPN','Kumamoto',107661);
INSERT INTO `demo_city` VALUES (1738,'Iida','JPN','Nagano',107583);
INSERT INTO `demo_city` VALUES (1739,'Tokuyama','JPN','Yamaguchi',107078);
INSERT INTO `demo_city` VALUES (1740,'Kokubunji','JPN','Tokyo-to',106996);
INSERT INTO `demo_city` VALUES (1741,'Akishima','JPN','Tokyo-to',106914);
INSERT INTO `demo_city` VALUES (1742,'Iwakuni','JPN','Yamaguchi',106647);
INSERT INTO `demo_city` VALUES (1743,'Kusatsu','JPN','Shiga',106232);
INSERT INTO `demo_city` VALUES (1744,'Kuwana','JPN','Mie',106121);
INSERT INTO `demo_city` VALUES (1745,'Sanda','JPN','Hyogo',105643);
INSERT INTO `demo_city` VALUES (1746,'Hikone','JPN','Shiga',105508);
INSERT INTO `demo_city` VALUES (1747,'Toda','JPN','Saitama',103969);
INSERT INTO `demo_city` VALUES (1748,'Tajimi','JPN','Gifu',103171);
INSERT INTO `demo_city` VALUES (1749,'Ikeda','JPN','Osaka',102710);
INSERT INTO `demo_city` VALUES (1750,'Fukaya','JPN','Saitama',102156);
INSERT INTO `demo_city` VALUES (1751,'Ise','JPN','Mie',101732);
INSERT INTO `demo_city` VALUES (1752,'Sakata','JPN','Yamagata',101651);
INSERT INTO `demo_city` VALUES (1753,'Kasuga','JPN','Fukuoka',101344);
INSERT INTO `demo_city` VALUES (1754,'Kamagaya','JPN','Chiba',100821);
INSERT INTO `demo_city` VALUES (1755,'Tsuruoka','JPN','Yamagata',100713);
INSERT INTO `demo_city` VALUES (1756,'Hoya','JPN','Tokyo-to',100313);
INSERT INTO `demo_city` VALUES (1757,'Nishio','JPN','Chiba',100032);
INSERT INTO `demo_city` VALUES (1758,'Tokai','JPN','Aichi',99738);
INSERT INTO `demo_city` VALUES (1759,'Inazawa','JPN','Aichi',98746);
INSERT INTO `demo_city` VALUES (1760,'Sakado','JPN','Saitama',98221);
INSERT INTO `demo_city` VALUES (1761,'Isehara','JPN','Kanagawa',98123);
INSERT INTO `demo_city` VALUES (1762,'Takasago','JPN','Hyogo',97632);
INSERT INTO `demo_city` VALUES (1763,'Fujimi','JPN','Saitama',96972);
INSERT INTO `demo_city` VALUES (1764,'Urasoe','JPN','Okinawa',96002);
INSERT INTO `demo_city` VALUES (1765,'Yonezawa','JPN','Yamagata',95592);
INSERT INTO `demo_city` VALUES (1766,'Konan','JPN','Aichi',95521);
INSERT INTO `demo_city` VALUES (1767,'Yamatokoriyama','JPN','Nara',95165);
INSERT INTO `demo_city` VALUES (1768,'Maizuru','JPN','Kyoto',94784);
INSERT INTO `demo_city` VALUES (1769,'Onomichi','JPN','Hiroshima',93756);
INSERT INTO `demo_city` VALUES (1770,'Higashimatsuyama','JPN','Saitama',93342);
INSERT INTO `demo_city` VALUES (1771,'Kimitsu','JPN','Chiba',93216);
INSERT INTO `demo_city` VALUES (1772,'Isahaya','JPN','Nagasaki',93058);
INSERT INTO `demo_city` VALUES (1773,'Kanuma','JPN','Tochigi',93053);
INSERT INTO `demo_city` VALUES (1774,'Izumisano','JPN','Osaka',92583);
INSERT INTO `demo_city` VALUES (1775,'Kameoka','JPN','Kyoto',92398);
INSERT INTO `demo_city` VALUES (1776,'Mobara','JPN','Chiba',91664);
INSERT INTO `demo_city` VALUES (1777,'Narita','JPN','Chiba',91470);
INSERT INTO `demo_city` VALUES (1778,'Kashiwazaki','JPN','Niigata',91229);
INSERT INTO `demo_city` VALUES (1779,'Tsuyama','JPN','Okayama',91170);
INSERT INTO `demo_city` VALUES (1780,'Sanaa','YEM','Sanaa',503600);
INSERT INTO `demo_city` VALUES (1781,'Aden','YEM','Aden',398300);
INSERT INTO `demo_city` VALUES (1782,'Taizz','YEM','Taizz',317600);
INSERT INTO `demo_city` VALUES (1783,'Hodeida','YEM','Hodeida',298500);
INSERT INTO `demo_city` VALUES (1784,'al-Mukalla','YEM','Hadramawt',122400);
INSERT INTO `demo_city` VALUES (1785,'Ibb','YEM','Ibb',103300);
INSERT INTO `demo_city` VALUES (1786,'Amman','JOR','Amman',1000000);
INSERT INTO `demo_city` VALUES (1787,'al-Zarqa','JOR','al-Zarqa',389815);
INSERT INTO `demo_city` VALUES (1788,'Irbid','JOR','Irbid',231511);
INSERT INTO `demo_city` VALUES (1789,'al-Rusayfa','JOR','al-Zarqa',137247);
INSERT INTO `demo_city` VALUES (1790,'Wadi al-Sir','JOR','Amman',89104);
INSERT INTO `demo_city` VALUES (1791,'Flying Fish Cove','CXR','',700);
INSERT INTO `demo_city` VALUES (1792,'Beograd','YUG','Central Serbia',1204000);
INSERT INTO `demo_city` VALUES (1793,'Novi Sad','YUG','Vojvodina',179626);
INSERT INTO `demo_city` VALUES (1794,'Niš','YUG','Central Serbia',175391);
INSERT INTO `demo_city` VALUES (1795,'Priština','YUG','Kosovo and Metohija',155496);
INSERT INTO `demo_city` VALUES (1796,'Kragujevac','YUG','Central Serbia',147305);
INSERT INTO `demo_city` VALUES (1797,'Podgorica','YUG','Montenegro',135000);
INSERT INTO `demo_city` VALUES (1798,'Subotica','YUG','Vojvodina',100386);
INSERT INTO `demo_city` VALUES (1799,'Prizren','YUG','Kosovo and Metohija',92303);
INSERT INTO `demo_city` VALUES (1800,'Phnom Penh','KHM','Phnom Penh',570155);
INSERT INTO `demo_city` VALUES (1801,'Battambang','KHM','Battambang',129800);
INSERT INTO `demo_city` VALUES (1802,'Siem Reap','KHM','Siem Reap',105100);
INSERT INTO `demo_city` VALUES (1803,'Douala','CMR','Littoral',1448300);
INSERT INTO `demo_city` VALUES (1804,'Yaoundé','CMR','Centre',1372800);
INSERT INTO `demo_city` VALUES (1805,'Garoua','CMR','Nord',177000);
INSERT INTO `demo_city` VALUES (1806,'Maroua','CMR','Extrême-Nord',143000);
INSERT INTO `demo_city` VALUES (1807,'Bamenda','CMR','Nord-Ouest',138000);
INSERT INTO `demo_city` VALUES (1808,'Bafoussam','CMR','Ouest',131000);
INSERT INTO `demo_city` VALUES (1809,'Nkongsamba','CMR','Littoral',112454);
INSERT INTO `demo_city` VALUES (1810,'Montréal','CAN','Québec',1016376);
INSERT INTO `demo_city` VALUES (1811,'Calgary','CAN','Alberta',768082);
INSERT INTO `demo_city` VALUES (1812,'Toronto','CAN','Ontario',688275);
INSERT INTO `demo_city` VALUES (1813,'North York','CAN','Ontario',622632);
INSERT INTO `demo_city` VALUES (1814,'Winnipeg','CAN','Manitoba',618477);
INSERT INTO `demo_city` VALUES (1815,'Edmonton','CAN','Alberta',616306);
INSERT INTO `demo_city` VALUES (1816,'Mississauga','CAN','Ontario',608072);
INSERT INTO `demo_city` VALUES (1817,'Scarborough','CAN','Ontario',594501);
INSERT INTO `demo_city` VALUES (1818,'Vancouver','CAN','British Colombia',514008);
INSERT INTO `demo_city` VALUES (1819,'Etobicoke','CAN','Ontario',348845);
INSERT INTO `demo_city` VALUES (1820,'London','CAN','Ontario',339917);
INSERT INTO `demo_city` VALUES (1821,'Hamilton','CAN','Ontario',335614);
INSERT INTO `demo_city` VALUES (1822,'Ottawa','CAN','Ontario',335277);
INSERT INTO `demo_city` VALUES (1823,'Laval','CAN','Québec',330393);
INSERT INTO `demo_city` VALUES (1824,'Surrey','CAN','British Colombia',304477);
INSERT INTO `demo_city` VALUES (1825,'Brampton','CAN','Ontario',296711);
INSERT INTO `demo_city` VALUES (1826,'Windsor','CAN','Ontario',207588);
INSERT INTO `demo_city` VALUES (1827,'Saskatoon','CAN','Saskatchewan',193647);
INSERT INTO `demo_city` VALUES (1828,'Kitchener','CAN','Ontario',189959);
INSERT INTO `demo_city` VALUES (1829,'Markham','CAN','Ontario',189098);
INSERT INTO `demo_city` VALUES (1830,'Regina','CAN','Saskatchewan',180400);
INSERT INTO `demo_city` VALUES (1831,'Burnaby','CAN','British Colombia',179209);
INSERT INTO `demo_city` VALUES (1832,'Québec','CAN','Québec',167264);
INSERT INTO `demo_city` VALUES (1833,'York','CAN','Ontario',154980);
INSERT INTO `demo_city` VALUES (1834,'Richmond','CAN','British Colombia',148867);
INSERT INTO `demo_city` VALUES (1835,'Vaughan','CAN','Ontario',147889);
INSERT INTO `demo_city` VALUES (1836,'Burlington','CAN','Ontario',145150);
INSERT INTO `demo_city` VALUES (1837,'Oshawa','CAN','Ontario',140173);
INSERT INTO `demo_city` VALUES (1838,'Oakville','CAN','Ontario',139192);
INSERT INTO `demo_city` VALUES (1839,'Saint Catharines','CAN','Ontario',136216);
INSERT INTO `demo_city` VALUES (1840,'Longueuil','CAN','Québec',127977);
INSERT INTO `demo_city` VALUES (1841,'Richmond Hill','CAN','Ontario',116428);
INSERT INTO `demo_city` VALUES (1842,'Thunder Bay','CAN','Ontario',115913);
INSERT INTO `demo_city` VALUES (1843,'Nepean','CAN','Ontario',115100);
INSERT INTO `demo_city` VALUES (1844,'Cape Breton','CAN','Nova Scotia',114733);
INSERT INTO `demo_city` VALUES (1845,'East York','CAN','Ontario',114034);
INSERT INTO `demo_city` VALUES (1846,'Halifax','CAN','Nova Scotia',113910);
INSERT INTO `demo_city` VALUES (1847,'Cambridge','CAN','Ontario',109186);
INSERT INTO `demo_city` VALUES (1848,'Gloucester','CAN','Ontario',107314);
INSERT INTO `demo_city` VALUES (1849,'Abbotsford','CAN','British Colombia',105403);
INSERT INTO `demo_city` VALUES (1850,'Guelph','CAN','Ontario',103593);
INSERT INTO `demo_city` VALUES (1851,'Saint John´s','CAN','Newfoundland',101936);
INSERT INTO `demo_city` VALUES (1852,'Coquitlam','CAN','British Colombia',101820);
INSERT INTO `demo_city` VALUES (1853,'Saanich','CAN','British Colombia',101388);
INSERT INTO `demo_city` VALUES (1854,'Gatineau','CAN','Québec',100702);
INSERT INTO `demo_city` VALUES (1855,'Delta','CAN','British Colombia',95411);
INSERT INTO `demo_city` VALUES (1856,'Sudbury','CAN','Ontario',92686);
INSERT INTO `demo_city` VALUES (1857,'Kelowna','CAN','British Colombia',89442);
INSERT INTO `demo_city` VALUES (1858,'Barrie','CAN','Ontario',89269);
INSERT INTO `demo_city` VALUES (1859,'Praia','CPV','São Tiago',94800);
INSERT INTO `demo_city` VALUES (1860,'Almaty','KAZ','Almaty Qalasy',1129400);
INSERT INTO `demo_city` VALUES (1861,'Qaraghandy','KAZ','Qaraghandy',436900);
INSERT INTO `demo_city` VALUES (1862,'Shymkent','KAZ','South Kazakstan',360100);
INSERT INTO `demo_city` VALUES (1863,'Taraz','KAZ','Taraz',330100);
INSERT INTO `demo_city` VALUES (1864,'Astana','KAZ','Astana',311200);
INSERT INTO `demo_city` VALUES (1865,'Öskemen','KAZ','East Kazakstan',311000);
INSERT INTO `demo_city` VALUES (1866,'Pavlodar','KAZ','Pavlodar',300500);
INSERT INTO `demo_city` VALUES (1867,'Semey','KAZ','East Kazakstan',269600);
INSERT INTO `demo_city` VALUES (1868,'Aqtöbe','KAZ','Aqtöbe',253100);
INSERT INTO `demo_city` VALUES (1869,'Qostanay','KAZ','Qostanay',221400);
INSERT INTO `demo_city` VALUES (1870,'Petropavl','KAZ','North Kazakstan',203500);
INSERT INTO `demo_city` VALUES (1871,'Oral','KAZ','West Kazakstan',195500);
INSERT INTO `demo_city` VALUES (1872,'Temirtau','KAZ','Qaraghandy',170500);
INSERT INTO `demo_city` VALUES (1873,'Qyzylorda','KAZ','Qyzylorda',157400);
INSERT INTO `demo_city` VALUES (1874,'Aqtau','KAZ','Mangghystau',143400);
INSERT INTO `demo_city` VALUES (1875,'Atyrau','KAZ','Atyrau',142500);
INSERT INTO `demo_city` VALUES (1876,'Ekibastuz','KAZ','Pavlodar',127200);
INSERT INTO `demo_city` VALUES (1877,'Kökshetau','KAZ','North Kazakstan',123400);
INSERT INTO `demo_city` VALUES (1878,'Rudnyy','KAZ','Qostanay',109500);
INSERT INTO `demo_city` VALUES (1879,'Taldyqorghan','KAZ','Almaty',98000);
INSERT INTO `demo_city` VALUES (1880,'Zhezqazghan','KAZ','Qaraghandy',90000);
INSERT INTO `demo_city` VALUES (1881,'Nairobi','KEN','Nairobi',2290000);
INSERT INTO `demo_city` VALUES (1882,'Mombasa','KEN','Coast',461753);
INSERT INTO `demo_city` VALUES (1883,'Kisumu','KEN','Nyanza',192733);
INSERT INTO `demo_city` VALUES (1884,'Nakuru','KEN','Rift Valley',163927);
INSERT INTO `demo_city` VALUES (1885,'Machakos','KEN','Eastern',116293);
INSERT INTO `demo_city` VALUES (1886,'Eldoret','KEN','Rift Valley',111882);
INSERT INTO `demo_city` VALUES (1887,'Meru','KEN','Eastern',94947);
INSERT INTO `demo_city` VALUES (1888,'Nyeri','KEN','Central',91258);
INSERT INTO `demo_city` VALUES (1889,'Bangui','CAF','Bangui',524000);
INSERT INTO `demo_city` VALUES (1890,'Shanghai','CHN','Shanghai',9696300);
INSERT INTO `demo_city` VALUES (1891,'Peking','CHN','Peking',7472000);
INSERT INTO `demo_city` VALUES (1892,'Chongqing','CHN','Chongqing',6351600);
INSERT INTO `demo_city` VALUES (1893,'Tianjin','CHN','Tianjin',5286800);
INSERT INTO `demo_city` VALUES (1894,'Wuhan','CHN','Hubei',4344600);
INSERT INTO `demo_city` VALUES (1895,'Harbin','CHN','Heilongjiang',4289800);
INSERT INTO `demo_city` VALUES (1896,'Shenyang','CHN','Liaoning',4265200);
INSERT INTO `demo_city` VALUES (1897,'Kanton [Guangzhou]','CHN','Guangdong',4256300);
INSERT INTO `demo_city` VALUES (1898,'Chengdu','CHN','Sichuan',3361500);
INSERT INTO `demo_city` VALUES (1899,'Nanking [Nanjing]','CHN','Jiangsu',2870300);
INSERT INTO `demo_city` VALUES (1900,'Changchun','CHN','Jilin',2812000);
INSERT INTO `demo_city` VALUES (1901,'Xi´an','CHN','Shaanxi',2761400);
INSERT INTO `demo_city` VALUES (1902,'Dalian','CHN','Liaoning',2697000);
INSERT INTO `demo_city` VALUES (1903,'Qingdao','CHN','Shandong',2596000);
INSERT INTO `demo_city` VALUES (1904,'Jinan','CHN','Shandong',2278100);
INSERT INTO `demo_city` VALUES (1905,'Hangzhou','CHN','Zhejiang',2190500);
INSERT INTO `demo_city` VALUES (1906,'Zhengzhou','CHN','Henan',2107200);
INSERT INTO `demo_city` VALUES (1907,'Shijiazhuang','CHN','Hebei',2041500);
INSERT INTO `demo_city` VALUES (1908,'Taiyuan','CHN','Shanxi',1968400);
INSERT INTO `demo_city` VALUES (1909,'Kunming','CHN','Yunnan',1829500);
INSERT INTO `demo_city` VALUES (1910,'Changsha','CHN','Hunan',1809800);
INSERT INTO `demo_city` VALUES (1911,'Nanchang','CHN','Jiangxi',1691600);
INSERT INTO `demo_city` VALUES (1912,'Fuzhou','CHN','Fujian',1593800);
INSERT INTO `demo_city` VALUES (1913,'Lanzhou','CHN','Gansu',1565800);
INSERT INTO `demo_city` VALUES (1914,'Guiyang','CHN','Guizhou',1465200);
INSERT INTO `demo_city` VALUES (1915,'Ningbo','CHN','Zhejiang',1371200);
INSERT INTO `demo_city` VALUES (1916,'Hefei','CHN','Anhui',1369100);
INSERT INTO `demo_city` VALUES (1917,'Urumtši [Ürümqi]','CHN','Xinxiang',1310100);
INSERT INTO `demo_city` VALUES (1918,'Anshan','CHN','Liaoning',1200000);
INSERT INTO `demo_city` VALUES (1919,'Fushun','CHN','Liaoning',1200000);
INSERT INTO `demo_city` VALUES (1920,'Nanning','CHN','Guangxi',1161800);
INSERT INTO `demo_city` VALUES (1921,'Zibo','CHN','Shandong',1140000);
INSERT INTO `demo_city` VALUES (1922,'Qiqihar','CHN','Heilongjiang',1070000);
INSERT INTO `demo_city` VALUES (1923,'Jilin','CHN','Jilin',1040000);
INSERT INTO `demo_city` VALUES (1924,'Tangshan','CHN','Hebei',1040000);
INSERT INTO `demo_city` VALUES (1925,'Baotou','CHN','Inner Mongolia',980000);
INSERT INTO `demo_city` VALUES (1926,'Shenzhen','CHN','Guangdong',950500);
INSERT INTO `demo_city` VALUES (1927,'Hohhot','CHN','Inner Mongolia',916700);
INSERT INTO `demo_city` VALUES (1928,'Handan','CHN','Hebei',840000);
INSERT INTO `demo_city` VALUES (1929,'Wuxi','CHN','Jiangsu',830000);
INSERT INTO `demo_city` VALUES (1930,'Xuzhou','CHN','Jiangsu',810000);
INSERT INTO `demo_city` VALUES (1931,'Datong','CHN','Shanxi',800000);
INSERT INTO `demo_city` VALUES (1932,'Yichun','CHN','Heilongjiang',800000);
INSERT INTO `demo_city` VALUES (1933,'Benxi','CHN','Liaoning',770000);
INSERT INTO `demo_city` VALUES (1934,'Luoyang','CHN','Henan',760000);
INSERT INTO `demo_city` VALUES (1935,'Suzhou','CHN','Jiangsu',710000);
INSERT INTO `demo_city` VALUES (1936,'Xining','CHN','Qinghai',700200);
INSERT INTO `demo_city` VALUES (1937,'Huainan','CHN','Anhui',700000);
INSERT INTO `demo_city` VALUES (1938,'Jixi','CHN','Heilongjiang',683885);
INSERT INTO `demo_city` VALUES (1939,'Daqing','CHN','Heilongjiang',660000);
INSERT INTO `demo_city` VALUES (1940,'Fuxin','CHN','Liaoning',640000);
INSERT INTO `demo_city` VALUES (1941,'Amoy [Xiamen]','CHN','Fujian',627500);
INSERT INTO `demo_city` VALUES (1942,'Liuzhou','CHN','Guangxi',610000);
INSERT INTO `demo_city` VALUES (1943,'Shantou','CHN','Guangdong',580000);
INSERT INTO `demo_city` VALUES (1944,'Jinzhou','CHN','Liaoning',570000);
INSERT INTO `demo_city` VALUES (1945,'Mudanjiang','CHN','Heilongjiang',570000);
INSERT INTO `demo_city` VALUES (1946,'Yinchuan','CHN','Ningxia',544500);
INSERT INTO `demo_city` VALUES (1947,'Changzhou','CHN','Jiangsu',530000);
INSERT INTO `demo_city` VALUES (1948,'Zhangjiakou','CHN','Hebei',530000);
INSERT INTO `demo_city` VALUES (1949,'Dandong','CHN','Liaoning',520000);
INSERT INTO `demo_city` VALUES (1950,'Hegang','CHN','Heilongjiang',520000);
INSERT INTO `demo_city` VALUES (1951,'Kaifeng','CHN','Henan',510000);
INSERT INTO `demo_city` VALUES (1952,'Jiamusi','CHN','Heilongjiang',493409);
INSERT INTO `demo_city` VALUES (1953,'Liaoyang','CHN','Liaoning',492559);
INSERT INTO `demo_city` VALUES (1954,'Hengyang','CHN','Hunan',487148);
INSERT INTO `demo_city` VALUES (1955,'Baoding','CHN','Hebei',483155);
INSERT INTO `demo_city` VALUES (1956,'Hunjiang','CHN','Jilin',482043);
INSERT INTO `demo_city` VALUES (1957,'Xinxiang','CHN','Henan',473762);
INSERT INTO `demo_city` VALUES (1958,'Huangshi','CHN','Hubei',457601);
INSERT INTO `demo_city` VALUES (1959,'Haikou','CHN','Hainan',454300);
INSERT INTO `demo_city` VALUES (1960,'Yantai','CHN','Shandong',452127);
INSERT INTO `demo_city` VALUES (1961,'Bengbu','CHN','Anhui',449245);
INSERT INTO `demo_city` VALUES (1962,'Xiangtan','CHN','Hunan',441968);
INSERT INTO `demo_city` VALUES (1963,'Weifang','CHN','Shandong',428522);
INSERT INTO `demo_city` VALUES (1964,'Wuhu','CHN','Anhui',425740);
INSERT INTO `demo_city` VALUES (1965,'Pingxiang','CHN','Jiangxi',425579);
INSERT INTO `demo_city` VALUES (1966,'Yingkou','CHN','Liaoning',421589);
INSERT INTO `demo_city` VALUES (1967,'Anyang','CHN','Henan',420332);
INSERT INTO `demo_city` VALUES (1968,'Panzhihua','CHN','Sichuan',415466);
INSERT INTO `demo_city` VALUES (1969,'Pingdingshan','CHN','Henan',410775);
INSERT INTO `demo_city` VALUES (1970,'Xiangfan','CHN','Hubei',410407);
INSERT INTO `demo_city` VALUES (1971,'Zhuzhou','CHN','Hunan',409924);
INSERT INTO `demo_city` VALUES (1972,'Jiaozuo','CHN','Henan',409100);
INSERT INTO `demo_city` VALUES (1973,'Wenzhou','CHN','Zhejiang',401871);
INSERT INTO `demo_city` VALUES (1974,'Zhangjiang','CHN','Guangdong',400997);
INSERT INTO `demo_city` VALUES (1975,'Zigong','CHN','Sichuan',393184);
INSERT INTO `demo_city` VALUES (1976,'Shuangyashan','CHN','Heilongjiang',386081);
INSERT INTO `demo_city` VALUES (1977,'Zaozhuang','CHN','Shandong',380846);
INSERT INTO `demo_city` VALUES (1978,'Yakeshi','CHN','Inner Mongolia',377869);
INSERT INTO `demo_city` VALUES (1979,'Yichang','CHN','Hubei',371601);
INSERT INTO `demo_city` VALUES (1980,'Zhenjiang','CHN','Jiangsu',368316);
INSERT INTO `demo_city` VALUES (1981,'Huaibei','CHN','Anhui',366549);
INSERT INTO `demo_city` VALUES (1982,'Qinhuangdao','CHN','Hebei',364972);
INSERT INTO `demo_city` VALUES (1983,'Guilin','CHN','Guangxi',364130);
INSERT INTO `demo_city` VALUES (1984,'Liupanshui','CHN','Guizhou',363954);
INSERT INTO `demo_city` VALUES (1985,'Panjin','CHN','Liaoning',362773);
INSERT INTO `demo_city` VALUES (1986,'Yangquan','CHN','Shanxi',362268);
INSERT INTO `demo_city` VALUES (1987,'Jinxi','CHN','Liaoning',357052);
INSERT INTO `demo_city` VALUES (1988,'Liaoyuan','CHN','Jilin',354141);
INSERT INTO `demo_city` VALUES (1989,'Lianyungang','CHN','Jiangsu',354139);
INSERT INTO `demo_city` VALUES (1990,'Xianyang','CHN','Shaanxi',352125);
INSERT INTO `demo_city` VALUES (1991,'Tai´an','CHN','Shandong',350696);
INSERT INTO `demo_city` VALUES (1992,'Chifeng','CHN','Inner Mongolia',350077);
INSERT INTO `demo_city` VALUES (1993,'Shaoguan','CHN','Guangdong',350043);
INSERT INTO `demo_city` VALUES (1994,'Nantong','CHN','Jiangsu',343341);
INSERT INTO `demo_city` VALUES (1995,'Leshan','CHN','Sichuan',341128);
INSERT INTO `demo_city` VALUES (1996,'Baoji','CHN','Shaanxi',337765);
INSERT INTO `demo_city` VALUES (1997,'Linyi','CHN','Shandong',324720);
INSERT INTO `demo_city` VALUES (1998,'Tonghua','CHN','Jilin',324600);
INSERT INTO `demo_city` VALUES (1999,'Siping','CHN','Jilin',317223);

DELIMITER ;

INSERT INTO `demo_city` VALUES (2000,'Changzhi','CHN','Shanxi',317144);
INSERT INTO `demo_city` VALUES (2001,'Tengzhou','CHN','Shandong',315083);
INSERT INTO `demo_city` VALUES (2002,'Chaozhou','CHN','Guangdong',313469);
INSERT INTO `demo_city` VALUES (2003,'Yangzhou','CHN','Jiangsu',312892);
INSERT INTO `demo_city` VALUES (2004,'Dongwan','CHN','Guangdong',308669);
INSERT INTO `demo_city` VALUES (2005,'Ma´anshan','CHN','Anhui',305421);
INSERT INTO `demo_city` VALUES (2006,'Foshan','CHN','Guangdong',303160);
INSERT INTO `demo_city` VALUES (2007,'Yueyang','CHN','Hunan',302800);
INSERT INTO `demo_city` VALUES (2008,'Xingtai','CHN','Hebei',302789);
INSERT INTO `demo_city` VALUES (2009,'Changde','CHN','Hunan',301276);
INSERT INTO `demo_city` VALUES (2010,'Shihezi','CHN','Xinxiang',299676);
INSERT INTO `demo_city` VALUES (2011,'Yancheng','CHN','Jiangsu',296831);
INSERT INTO `demo_city` VALUES (2012,'Jiujiang','CHN','Jiangxi',291187);
INSERT INTO `demo_city` VALUES (2013,'Dongying','CHN','Shandong',281728);
INSERT INTO `demo_city` VALUES (2014,'Shashi','CHN','Hubei',281352);
INSERT INTO `demo_city` VALUES (2015,'Xintai','CHN','Shandong',281248);
INSERT INTO `demo_city` VALUES (2016,'Jingdezhen','CHN','Jiangxi',281183);
INSERT INTO `demo_city` VALUES (2017,'Tongchuan','CHN','Shaanxi',280657);
INSERT INTO `demo_city` VALUES (2018,'Zhongshan','CHN','Guangdong',278829);
INSERT INTO `demo_city` VALUES (2019,'Shiyan','CHN','Hubei',273786);
INSERT INTO `demo_city` VALUES (2020,'Tieli','CHN','Heilongjiang',265683);
INSERT INTO `demo_city` VALUES (2021,'Jining','CHN','Shandong',265248);
INSERT INTO `demo_city` VALUES (2022,'Wuhai','CHN','Inner Mongolia',264081);
INSERT INTO `demo_city` VALUES (2023,'Mianyang','CHN','Sichuan',262947);
INSERT INTO `demo_city` VALUES (2024,'Luzhou','CHN','Sichuan',262892);
INSERT INTO `demo_city` VALUES (2025,'Zunyi','CHN','Guizhou',261862);
INSERT INTO `demo_city` VALUES (2026,'Shizuishan','CHN','Ningxia',257862);
INSERT INTO `demo_city` VALUES (2027,'Neijiang','CHN','Sichuan',256012);
INSERT INTO `demo_city` VALUES (2028,'Tongliao','CHN','Inner Mongolia',255129);
INSERT INTO `demo_city` VALUES (2029,'Tieling','CHN','Liaoning',254842);
INSERT INTO `demo_city` VALUES (2030,'Wafangdian','CHN','Liaoning',251733);
INSERT INTO `demo_city` VALUES (2031,'Anqing','CHN','Anhui',250718);
INSERT INTO `demo_city` VALUES (2032,'Shaoyang','CHN','Hunan',247227);
INSERT INTO `demo_city` VALUES (2033,'Laiwu','CHN','Shandong',246833);
INSERT INTO `demo_city` VALUES (2034,'Chengde','CHN','Hebei',246799);
INSERT INTO `demo_city` VALUES (2035,'Tianshui','CHN','Gansu',244974);
INSERT INTO `demo_city` VALUES (2036,'Nanyang','CHN','Henan',243303);
INSERT INTO `demo_city` VALUES (2037,'Cangzhou','CHN','Hebei',242708);
INSERT INTO `demo_city` VALUES (2038,'Yibin','CHN','Sichuan',241019);
INSERT INTO `demo_city` VALUES (2039,'Huaiyin','CHN','Jiangsu',239675);
INSERT INTO `demo_city` VALUES (2040,'Dunhua','CHN','Jilin',235100);
INSERT INTO `demo_city` VALUES (2041,'Yanji','CHN','Jilin',230892);
INSERT INTO `demo_city` VALUES (2042,'Jiangmen','CHN','Guangdong',230587);
INSERT INTO `demo_city` VALUES (2043,'Tongling','CHN','Anhui',228017);
INSERT INTO `demo_city` VALUES (2044,'Suihua','CHN','Heilongjiang',227881);
INSERT INTO `demo_city` VALUES (2045,'Gongziling','CHN','Jilin',226569);
INSERT INTO `demo_city` VALUES (2046,'Xiantao','CHN','Hubei',222884);
INSERT INTO `demo_city` VALUES (2047,'Chaoyang','CHN','Liaoning',222394);
INSERT INTO `demo_city` VALUES (2048,'Ganzhou','CHN','Jiangxi',220129);
INSERT INTO `demo_city` VALUES (2049,'Huzhou','CHN','Zhejiang',218071);
INSERT INTO `demo_city` VALUES (2050,'Baicheng','CHN','Jilin',217987);
INSERT INTO `demo_city` VALUES (2051,'Shangzi','CHN','Heilongjiang',215373);
INSERT INTO `demo_city` VALUES (2052,'Yangjiang','CHN','Guangdong',215196);
INSERT INTO `demo_city` VALUES (2053,'Qitaihe','CHN','Heilongjiang',214957);
INSERT INTO `demo_city` VALUES (2054,'Gejiu','CHN','Yunnan',214294);
INSERT INTO `demo_city` VALUES (2055,'Jiangyin','CHN','Jiangsu',213659);
INSERT INTO `demo_city` VALUES (2056,'Hebi','CHN','Henan',212976);
INSERT INTO `demo_city` VALUES (2057,'Jiaxing','CHN','Zhejiang',211526);
INSERT INTO `demo_city` VALUES (2058,'Wuzhou','CHN','Guangxi',210452);
INSERT INTO `demo_city` VALUES (2059,'Meihekou','CHN','Jilin',209038);
INSERT INTO `demo_city` VALUES (2060,'Xuchang','CHN','Henan',208815);
INSERT INTO `demo_city` VALUES (2061,'Liaocheng','CHN','Shandong',207844);
INSERT INTO `demo_city` VALUES (2062,'Haicheng','CHN','Liaoning',205560);
INSERT INTO `demo_city` VALUES (2063,'Qianjiang','CHN','Hubei',205504);
INSERT INTO `demo_city` VALUES (2064,'Baiyin','CHN','Gansu',204970);
INSERT INTO `demo_city` VALUES (2065,'Bei´an','CHN','Heilongjiang',204899);
INSERT INTO `demo_city` VALUES (2066,'Yixing','CHN','Jiangsu',200824);
INSERT INTO `demo_city` VALUES (2067,'Laizhou','CHN','Shandong',198664);
INSERT INTO `demo_city` VALUES (2068,'Qaramay','CHN','Xinxiang',197602);
INSERT INTO `demo_city` VALUES (2069,'Acheng','CHN','Heilongjiang',197595);
INSERT INTO `demo_city` VALUES (2070,'Dezhou','CHN','Shandong',195485);
INSERT INTO `demo_city` VALUES (2071,'Nanping','CHN','Fujian',195064);
INSERT INTO `demo_city` VALUES (2072,'Zhaoqing','CHN','Guangdong',194784);
INSERT INTO `demo_city` VALUES (2073,'Beipiao','CHN','Liaoning',194301);
INSERT INTO `demo_city` VALUES (2074,'Fengcheng','CHN','Jiangxi',193784);
INSERT INTO `demo_city` VALUES (2075,'Fuyu','CHN','Jilin',192981);
INSERT INTO `demo_city` VALUES (2076,'Xinyang','CHN','Henan',192509);
INSERT INTO `demo_city` VALUES (2077,'Dongtai','CHN','Jiangsu',192247);
INSERT INTO `demo_city` VALUES (2078,'Yuci','CHN','Shanxi',191356);
INSERT INTO `demo_city` VALUES (2079,'Honghu','CHN','Hubei',190772);
INSERT INTO `demo_city` VALUES (2080,'Ezhou','CHN','Hubei',190123);
INSERT INTO `demo_city` VALUES (2081,'Heze','CHN','Shandong',189293);
INSERT INTO `demo_city` VALUES (2082,'Daxian','CHN','Sichuan',188101);
INSERT INTO `demo_city` VALUES (2083,'Linfen','CHN','Shanxi',187309);
INSERT INTO `demo_city` VALUES (2084,'Tianmen','CHN','Hubei',186332);
INSERT INTO `demo_city` VALUES (2085,'Yiyang','CHN','Hunan',185818);
INSERT INTO `demo_city` VALUES (2086,'Quanzhou','CHN','Fujian',185154);
INSERT INTO `demo_city` VALUES (2087,'Rizhao','CHN','Shandong',185048);
INSERT INTO `demo_city` VALUES (2088,'Deyang','CHN','Sichuan',182488);
INSERT INTO `demo_city` VALUES (2089,'Guangyuan','CHN','Sichuan',182241);
INSERT INTO `demo_city` VALUES (2090,'Changshu','CHN','Jiangsu',181805);
INSERT INTO `demo_city` VALUES (2091,'Zhangzhou','CHN','Fujian',181424);
INSERT INTO `demo_city` VALUES (2092,'Hailar','CHN','Inner Mongolia',180650);
INSERT INTO `demo_city` VALUES (2093,'Nanchong','CHN','Sichuan',180273);
INSERT INTO `demo_city` VALUES (2094,'Jiutai','CHN','Jilin',180130);
INSERT INTO `demo_city` VALUES (2095,'Zhaodong','CHN','Heilongjiang',179976);
INSERT INTO `demo_city` VALUES (2096,'Shaoxing','CHN','Zhejiang',179818);
INSERT INTO `demo_city` VALUES (2097,'Fuyang','CHN','Anhui',179572);
INSERT INTO `demo_city` VALUES (2098,'Maoming','CHN','Guangdong',178683);
INSERT INTO `demo_city` VALUES (2099,'Qujing','CHN','Yunnan',178669);
INSERT INTO `demo_city` VALUES (2100,'Ghulja','CHN','Xinxiang',177193);
INSERT INTO `demo_city` VALUES (2101,'Jiaohe','CHN','Jilin',176367);
INSERT INTO `demo_city` VALUES (2102,'Puyang','CHN','Henan',175988);
INSERT INTO `demo_city` VALUES (2103,'Huadian','CHN','Jilin',175873);
INSERT INTO `demo_city` VALUES (2104,'Jiangyou','CHN','Sichuan',175753);
INSERT INTO `demo_city` VALUES (2105,'Qashqar','CHN','Xinxiang',174570);
INSERT INTO `demo_city` VALUES (2106,'Anshun','CHN','Guizhou',174142);
INSERT INTO `demo_city` VALUES (2107,'Fuling','CHN','Sichuan',173878);
INSERT INTO `demo_city` VALUES (2108,'Xinyu','CHN','Jiangxi',173524);
INSERT INTO `demo_city` VALUES (2109,'Hanzhong','CHN','Shaanxi',169930);
INSERT INTO `demo_city` VALUES (2110,'Danyang','CHN','Jiangsu',169603);
INSERT INTO `demo_city` VALUES (2111,'Chenzhou','CHN','Hunan',169400);
INSERT INTO `demo_city` VALUES (2112,'Xiaogan','CHN','Hubei',166280);
INSERT INTO `demo_city` VALUES (2113,'Shangqiu','CHN','Henan',164880);
INSERT INTO `demo_city` VALUES (2114,'Zhuhai','CHN','Guangdong',164747);
INSERT INTO `demo_city` VALUES (2115,'Qingyuan','CHN','Guangdong',164641);
INSERT INTO `demo_city` VALUES (2116,'Aqsu','CHN','Xinxiang',164092);
INSERT INTO `demo_city` VALUES (2117,'Jining','CHN','Inner Mongolia',163552);
INSERT INTO `demo_city` VALUES (2118,'Xiaoshan','CHN','Zhejiang',162930);
INSERT INTO `demo_city` VALUES (2119,'Zaoyang','CHN','Hubei',162198);
INSERT INTO `demo_city` VALUES (2120,'Xinghua','CHN','Jiangsu',161910);
INSERT INTO `demo_city` VALUES (2121,'Hami','CHN','Xinxiang',161315);
INSERT INTO `demo_city` VALUES (2122,'Huizhou','CHN','Guangdong',161023);
INSERT INTO `demo_city` VALUES (2123,'Jinmen','CHN','Hubei',160794);
INSERT INTO `demo_city` VALUES (2124,'Sanming','CHN','Fujian',160691);
INSERT INTO `demo_city` VALUES (2125,'Ulanhot','CHN','Inner Mongolia',159538);
INSERT INTO `demo_city` VALUES (2126,'Korla','CHN','Xinxiang',159344);
INSERT INTO `demo_city` VALUES (2127,'Wanxian','CHN','Sichuan',156823);
INSERT INTO `demo_city` VALUES (2128,'Rui´an','CHN','Zhejiang',156468);
INSERT INTO `demo_city` VALUES (2129,'Zhoushan','CHN','Zhejiang',156317);
INSERT INTO `demo_city` VALUES (2130,'Liangcheng','CHN','Shandong',156307);
INSERT INTO `demo_city` VALUES (2131,'Jiaozhou','CHN','Shandong',153364);
INSERT INTO `demo_city` VALUES (2132,'Taizhou','CHN','Jiangsu',152442);
INSERT INTO `demo_city` VALUES (2133,'Suzhou','CHN','Anhui',151862);
INSERT INTO `demo_city` VALUES (2134,'Yichun','CHN','Jiangxi',151585);
INSERT INTO `demo_city` VALUES (2135,'Taonan','CHN','Jilin',150168);
INSERT INTO `demo_city` VALUES (2136,'Pingdu','CHN','Shandong',150123);
INSERT INTO `demo_city` VALUES (2137,'Ji´an','CHN','Jiangxi',148583);
INSERT INTO `demo_city` VALUES (2138,'Longkou','CHN','Shandong',148362);
INSERT INTO `demo_city` VALUES (2139,'Langfang','CHN','Hebei',148105);
INSERT INTO `demo_city` VALUES (2140,'Zhoukou','CHN','Henan',146288);
INSERT INTO `demo_city` VALUES (2141,'Suining','CHN','Sichuan',146086);
INSERT INTO `demo_city` VALUES (2142,'Yulin','CHN','Guangxi',144467);
INSERT INTO `demo_city` VALUES (2143,'Jinhua','CHN','Zhejiang',144280);
INSERT INTO `demo_city` VALUES (2144,'Liu´an','CHN','Anhui',144248);
INSERT INTO `demo_city` VALUES (2145,'Shuangcheng','CHN','Heilongjiang',142659);
INSERT INTO `demo_city` VALUES (2146,'Suizhou','CHN','Hubei',142302);
INSERT INTO `demo_city` VALUES (2147,'Ankang','CHN','Shaanxi',142170);
INSERT INTO `demo_city` VALUES (2148,'Weinan','CHN','Shaanxi',140169);
INSERT INTO `demo_city` VALUES (2149,'Longjing','CHN','Jilin',139417);
INSERT INTO `demo_city` VALUES (2150,'Da´an','CHN','Jilin',138963);
INSERT INTO `demo_city` VALUES (2151,'Lengshuijiang','CHN','Hunan',137994);
INSERT INTO `demo_city` VALUES (2152,'Laiyang','CHN','Shandong',137080);
INSERT INTO `demo_city` VALUES (2153,'Xianning','CHN','Hubei',136811);
INSERT INTO `demo_city` VALUES (2154,'Dali','CHN','Yunnan',136554);
INSERT INTO `demo_city` VALUES (2155,'Anda','CHN','Heilongjiang',136446);
INSERT INTO `demo_city` VALUES (2156,'Jincheng','CHN','Shanxi',136396);
INSERT INTO `demo_city` VALUES (2157,'Longyan','CHN','Fujian',134481);
INSERT INTO `demo_city` VALUES (2158,'Xichang','CHN','Sichuan',134419);
INSERT INTO `demo_city` VALUES (2159,'Wendeng','CHN','Shandong',133910);
INSERT INTO `demo_city` VALUES (2160,'Hailun','CHN','Heilongjiang',133565);
INSERT INTO `demo_city` VALUES (2161,'Binzhou','CHN','Shandong',133555);
INSERT INTO `demo_city` VALUES (2162,'Linhe','CHN','Inner Mongolia',133183);
INSERT INTO `demo_city` VALUES (2163,'Wuwei','CHN','Gansu',133101);
INSERT INTO `demo_city` VALUES (2164,'Duyun','CHN','Guizhou',132971);
INSERT INTO `demo_city` VALUES (2165,'Mishan','CHN','Heilongjiang',132744);
INSERT INTO `demo_city` VALUES (2166,'Shangrao','CHN','Jiangxi',132455);
INSERT INTO `demo_city` VALUES (2167,'Changji','CHN','Xinxiang',132260);
INSERT INTO `demo_city` VALUES (2168,'Meixian','CHN','Guangdong',132156);
INSERT INTO `demo_city` VALUES (2169,'Yushu','CHN','Jilin',131861);
INSERT INTO `demo_city` VALUES (2170,'Tiefa','CHN','Liaoning',131807);
INSERT INTO `demo_city` VALUES (2171,'Huai´an','CHN','Jiangsu',131149);
INSERT INTO `demo_city` VALUES (2172,'Leiyang','CHN','Hunan',130115);
INSERT INTO `demo_city` VALUES (2173,'Zalantun','CHN','Inner Mongolia',130031);
INSERT INTO `demo_city` VALUES (2174,'Weihai','CHN','Shandong',128888);
INSERT INTO `demo_city` VALUES (2175,'Loudi','CHN','Hunan',128418);
INSERT INTO `demo_city` VALUES (2176,'Qingzhou','CHN','Shandong',128258);
INSERT INTO `demo_city` VALUES (2177,'Qidong','CHN','Jiangsu',126872);
INSERT INTO `demo_city` VALUES (2178,'Huaihua','CHN','Hunan',126785);
INSERT INTO `demo_city` VALUES (2179,'Luohe','CHN','Henan',126438);
INSERT INTO `demo_city` VALUES (2180,'Chuzhou','CHN','Anhui',125341);
INSERT INTO `demo_city` VALUES (2181,'Kaiyuan','CHN','Liaoning',124219);
INSERT INTO `demo_city` VALUES (2182,'Linqing','CHN','Shandong',123958);
INSERT INTO `demo_city` VALUES (2183,'Chaohu','CHN','Anhui',123676);
INSERT INTO `demo_city` VALUES (2184,'Laohekou','CHN','Hubei',123366);
INSERT INTO `demo_city` VALUES (2185,'Dujiangyan','CHN','Sichuan',123357);
INSERT INTO `demo_city` VALUES (2186,'Zhumadian','CHN','Henan',123232);
INSERT INTO `demo_city` VALUES (2187,'Linchuan','CHN','Jiangxi',121949);
INSERT INTO `demo_city` VALUES (2188,'Jiaonan','CHN','Shandong',121397);
INSERT INTO `demo_city` VALUES (2189,'Sanmenxia','CHN','Henan',120523);
INSERT INTO `demo_city` VALUES (2190,'Heyuan','CHN','Guangdong',120101);
INSERT INTO `demo_city` VALUES (2191,'Manzhouli','CHN','Inner Mongolia',120023);
INSERT INTO `demo_city` VALUES (2192,'Lhasa','CHN','Tibet',120000);
INSERT INTO `demo_city` VALUES (2193,'Lianyuan','CHN','Hunan',118858);
INSERT INTO `demo_city` VALUES (2194,'Kuytun','CHN','Xinxiang',118553);
INSERT INTO `demo_city` VALUES (2195,'Puqi','CHN','Hubei',117264);
INSERT INTO `demo_city` VALUES (2196,'Hongjiang','CHN','Hunan',116188);
INSERT INTO `demo_city` VALUES (2197,'Qinzhou','CHN','Guangxi',114586);
INSERT INTO `demo_city` VALUES (2198,'Renqiu','CHN','Hebei',114256);
INSERT INTO `demo_city` VALUES (2199,'Yuyao','CHN','Zhejiang',114065);
INSERT INTO `demo_city` VALUES (2200,'Guigang','CHN','Guangxi',114025);
INSERT INTO `demo_city` VALUES (2201,'Kaili','CHN','Guizhou',113958);
INSERT INTO `demo_city` VALUES (2202,'Yan´an','CHN','Shaanxi',113277);
INSERT INTO `demo_city` VALUES (2203,'Beihai','CHN','Guangxi',112673);
INSERT INTO `demo_city` VALUES (2204,'Xuangzhou','CHN','Anhui',112673);
INSERT INTO `demo_city` VALUES (2205,'Quzhou','CHN','Zhejiang',112373);
INSERT INTO `demo_city` VALUES (2206,'Yong´an','CHN','Fujian',111762);
INSERT INTO `demo_city` VALUES (2207,'Zixing','CHN','Hunan',110048);
INSERT INTO `demo_city` VALUES (2208,'Liyang','CHN','Jiangsu',109520);
INSERT INTO `demo_city` VALUES (2209,'Yizheng','CHN','Jiangsu',109268);
INSERT INTO `demo_city` VALUES (2210,'Yumen','CHN','Gansu',109234);
INSERT INTO `demo_city` VALUES (2211,'Liling','CHN','Hunan',108504);
INSERT INTO `demo_city` VALUES (2212,'Yuncheng','CHN','Shanxi',108359);
INSERT INTO `demo_city` VALUES (2213,'Shanwei','CHN','Guangdong',107847);
INSERT INTO `demo_city` VALUES (2214,'Cixi','CHN','Zhejiang',107329);
INSERT INTO `demo_city` VALUES (2215,'Yuanjiang','CHN','Hunan',107004);
INSERT INTO `demo_city` VALUES (2216,'Bozhou','CHN','Anhui',106346);
INSERT INTO `demo_city` VALUES (2217,'Jinchang','CHN','Gansu',105287);
INSERT INTO `demo_city` VALUES (2218,'Fu´an','CHN','Fujian',105265);
INSERT INTO `demo_city` VALUES (2219,'Suqian','CHN','Jiangsu',105021);
INSERT INTO `demo_city` VALUES (2220,'Shishou','CHN','Hubei',104571);
INSERT INTO `demo_city` VALUES (2221,'Hengshui','CHN','Hebei',104269);
INSERT INTO `demo_city` VALUES (2222,'Danjiangkou','CHN','Hubei',103211);
INSERT INTO `demo_city` VALUES (2223,'Fujin','CHN','Heilongjiang',103104);
INSERT INTO `demo_city` VALUES (2224,'Sanya','CHN','Hainan',102820);
INSERT INTO `demo_city` VALUES (2225,'Guangshui','CHN','Hubei',102770);
INSERT INTO `demo_city` VALUES (2226,'Huangshan','CHN','Anhui',102628);
INSERT INTO `demo_city` VALUES (2227,'Xingcheng','CHN','Liaoning',102384);
INSERT INTO `demo_city` VALUES (2228,'Zhucheng','CHN','Shandong',102134);
INSERT INTO `demo_city` VALUES (2229,'Kunshan','CHN','Jiangsu',102052);
INSERT INTO `demo_city` VALUES (2230,'Haining','CHN','Zhejiang',100478);
INSERT INTO `demo_city` VALUES (2231,'Pingliang','CHN','Gansu',99265);
INSERT INTO `demo_city` VALUES (2232,'Fuqing','CHN','Fujian',99193);
INSERT INTO `demo_city` VALUES (2233,'Xinzhou','CHN','Shanxi',98667);
INSERT INTO `demo_city` VALUES (2234,'Jieyang','CHN','Guangdong',98531);
INSERT INTO `demo_city` VALUES (2235,'Zhangjiagang','CHN','Jiangsu',97994);
INSERT INTO `demo_city` VALUES (2236,'Tong Xian','CHN','Peking',97168);
INSERT INTO `demo_city` VALUES (2237,'Ya´an','CHN','Sichuan',95900);
INSERT INTO `demo_city` VALUES (2238,'Jinzhou','CHN','Liaoning',95761);
INSERT INTO `demo_city` VALUES (2239,'Emeishan','CHN','Sichuan',94000);
INSERT INTO `demo_city` VALUES (2240,'Enshi','CHN','Hubei',93056);
INSERT INTO `demo_city` VALUES (2241,'Bose','CHN','Guangxi',93009);
INSERT INTO `demo_city` VALUES (2242,'Yuzhou','CHN','Henan',92889);
INSERT INTO `demo_city` VALUES (2243,'Kaiyuan','CHN','Yunnan',91999);
INSERT INTO `demo_city` VALUES (2244,'Tumen','CHN','Jilin',91471);
INSERT INTO `demo_city` VALUES (2245,'Putian','CHN','Fujian',91030);
INSERT INTO `demo_city` VALUES (2246,'Linhai','CHN','Zhejiang',90870);
INSERT INTO `demo_city` VALUES (2247,'Xilin Hot','CHN','Inner Mongolia',90646);
INSERT INTO `demo_city` VALUES (2248,'Shaowu','CHN','Fujian',90286);
INSERT INTO `demo_city` VALUES (2249,'Junan','CHN','Shandong',90222);
INSERT INTO `demo_city` VALUES (2250,'Huaying','CHN','Sichuan',89400);
INSERT INTO `demo_city` VALUES (2251,'Pingyi','CHN','Shandong',89373);
INSERT INTO `demo_city` VALUES (2252,'Huangyan','CHN','Zhejiang',89288);
INSERT INTO `demo_city` VALUES (2253,'Bishkek','KGZ','Bishkek shaary',589400);
INSERT INTO `demo_city` VALUES (2254,'Osh','KGZ','Osh',222700);
INSERT INTO `demo_city` VALUES (2255,'Bikenibeu','KIR','South Tarawa',5055);
INSERT INTO `demo_city` VALUES (2256,'Bairiki','KIR','South Tarawa',2226);
INSERT INTO `demo_city` VALUES (2257,'Santafé de Bogotá','COL','Santafé de Bogotá',6260862);
INSERT INTO `demo_city` VALUES (2258,'Cali','COL','Valle',2077386);
INSERT INTO `demo_city` VALUES (2259,'Medellín','COL','Antioquia',1861265);
INSERT INTO `demo_city` VALUES (2260,'Barranquilla','COL','Atlántico',1223260);
INSERT INTO `demo_city` VALUES (2261,'Cartagena','COL','Bolívar',805757);
INSERT INTO `demo_city` VALUES (2262,'Cúcuta','COL','Norte de Santander',606932);
INSERT INTO `demo_city` VALUES (2263,'Bucaramanga','COL','Santander',515555);
INSERT INTO `demo_city` VALUES (2264,'Ibagué','COL','Tolima',393664);
INSERT INTO `demo_city` VALUES (2265,'Pereira','COL','Risaralda',381725);
INSERT INTO `demo_city` VALUES (2266,'Santa Marta','COL','Magdalena',359147);
INSERT INTO `demo_city` VALUES (2267,'Manizales','COL','Caldas',337580);
INSERT INTO `demo_city` VALUES (2268,'Bello','COL','Antioquia',333470);
INSERT INTO `demo_city` VALUES (2269,'Pasto','COL','Nariño',332396);
INSERT INTO `demo_city` VALUES (2270,'Neiva','COL','Huila',300052);
INSERT INTO `demo_city` VALUES (2271,'Soledad','COL','Atlántico',295058);
INSERT INTO `demo_city` VALUES (2272,'Armenia','COL','Quindío',288977);
INSERT INTO `demo_city` VALUES (2273,'Villavicencio','COL','Meta',273140);
INSERT INTO `demo_city` VALUES (2274,'Soacha','COL','Cundinamarca',272058);
INSERT INTO `demo_city` VALUES (2275,'Valledupar','COL','Cesar',263247);
INSERT INTO `demo_city` VALUES (2276,'Montería','COL','Córdoba',248245);
INSERT INTO `demo_city` VALUES (2277,'Itagüí','COL','Antioquia',228985);
INSERT INTO `demo_city` VALUES (2278,'Palmira','COL','Valle',226509);
INSERT INTO `demo_city` VALUES (2279,'Buenaventura','COL','Valle',224336);
INSERT INTO `demo_city` VALUES (2280,'Floridablanca','COL','Santander',221913);
INSERT INTO `demo_city` VALUES (2281,'Sincelejo','COL','Sucre',220704);
INSERT INTO `demo_city` VALUES (2282,'Popayán','COL','Cauca',200719);
INSERT INTO `demo_city` VALUES (2283,'Barrancabermeja','COL','Santander',178020);
INSERT INTO `demo_city` VALUES (2284,'Dos Quebradas','COL','Risaralda',159363);
INSERT INTO `demo_city` VALUES (2285,'Tuluá','COL','Valle',152488);
INSERT INTO `demo_city` VALUES (2286,'Envigado','COL','Antioquia',135848);
INSERT INTO `demo_city` VALUES (2287,'Cartago','COL','Valle',125884);
INSERT INTO `demo_city` VALUES (2288,'Girardot','COL','Cundinamarca',110963);
INSERT INTO `demo_city` VALUES (2289,'Buga','COL','Valle',110699);
INSERT INTO `demo_city` VALUES (2290,'Tunja','COL','Boyacá',109740);
INSERT INTO `demo_city` VALUES (2291,'Florencia','COL','Caquetá',108574);
INSERT INTO `demo_city` VALUES (2292,'Maicao','COL','La Guajira',108053);
INSERT INTO `demo_city` VALUES (2293,'Sogamoso','COL','Boyacá',107728);
INSERT INTO `demo_city` VALUES (2294,'Giron','COL','Santander',90688);
INSERT INTO `demo_city` VALUES (2295,'Moroni','COM','Njazidja',36000);
INSERT INTO `demo_city` VALUES (2296,'Brazzaville','COG','Brazzaville',950000);
INSERT INTO `demo_city` VALUES (2297,'Pointe-Noire','COG','Kouilou',500000);
INSERT INTO `demo_city` VALUES (2298,'Kinshasa','COD','Kinshasa',5064000);
INSERT INTO `demo_city` VALUES (2299,'Lubumbashi','COD','Shaba',851381);
INSERT INTO `demo_city` VALUES (2300,'Mbuji-Mayi','COD','East Kasai',806475);
INSERT INTO `demo_city` VALUES (2301,'Kolwezi','COD','Shaba',417810);
INSERT INTO `demo_city` VALUES (2302,'Kisangani','COD','Haute-Zaïre',417517);
INSERT INTO `demo_city` VALUES (2303,'Kananga','COD','West Kasai',393030);
INSERT INTO `demo_city` VALUES (2304,'Likasi','COD','Shaba',299118);
INSERT INTO `demo_city` VALUES (2305,'Bukavu','COD','South Kivu',201569);
INSERT INTO `demo_city` VALUES (2306,'Kikwit','COD','Bandundu',182142);
INSERT INTO `demo_city` VALUES (2307,'Tshikapa','COD','West Kasai',180860);
INSERT INTO `demo_city` VALUES (2308,'Matadi','COD','Bas-Zaïre',172730);
INSERT INTO `demo_city` VALUES (2309,'Mbandaka','COD','Equateur',169841);
INSERT INTO `demo_city` VALUES (2310,'Mwene-Ditu','COD','East Kasai',137459);
INSERT INTO `demo_city` VALUES (2311,'Boma','COD','Bas-Zaïre',135284);
INSERT INTO `demo_city` VALUES (2312,'Uvira','COD','South Kivu',115590);
INSERT INTO `demo_city` VALUES (2313,'Butembo','COD','North Kivu',109406);
INSERT INTO `demo_city` VALUES (2314,'Goma','COD','North Kivu',109094);
INSERT INTO `demo_city` VALUES (2315,'Kalemie','COD','Shaba',101309);
INSERT INTO `demo_city` VALUES (2316,'Bantam','CCK','Home Island',503);
INSERT INTO `demo_city` VALUES (2317,'West Island','CCK','West Island',167);
INSERT INTO `demo_city` VALUES (2318,'Pyongyang','PRK','Pyongyang-si',2484000);
INSERT INTO `demo_city` VALUES (2319,'Hamhung','PRK','Hamgyong N',709730);
INSERT INTO `demo_city` VALUES (2320,'Chongjin','PRK','Hamgyong P',582480);
INSERT INTO `demo_city` VALUES (2321,'Nampo','PRK','Nampo-si',566200);
INSERT INTO `demo_city` VALUES (2322,'Sinuiju','PRK','Pyongan P',326011);
INSERT INTO `demo_city` VALUES (2323,'Wonsan','PRK','Kangwon',300148);
INSERT INTO `demo_city` VALUES (2324,'Phyongsong','PRK','Pyongan N',272934);
INSERT INTO `demo_city` VALUES (2325,'Sariwon','PRK','Hwanghae P',254146);
INSERT INTO `demo_city` VALUES (2326,'Haeju','PRK','Hwanghae N',229172);
INSERT INTO `demo_city` VALUES (2327,'Kanggye','PRK','Chagang',223410);
INSERT INTO `demo_city` VALUES (2328,'Kimchaek','PRK','Hamgyong P',179000);
INSERT INTO `demo_city` VALUES (2329,'Hyesan','PRK','Yanggang',178020);
INSERT INTO `demo_city` VALUES (2330,'Kaesong','PRK','Kaesong-si',171500);
INSERT INTO `demo_city` VALUES (2331,'Seoul','KOR','Seoul',9981619);
INSERT INTO `demo_city` VALUES (2332,'Pusan','KOR','Pusan',3804522);
INSERT INTO `demo_city` VALUES (2333,'Inchon','KOR','Inchon',2559424);
INSERT INTO `demo_city` VALUES (2334,'Taegu','KOR','Taegu',2548568);
INSERT INTO `demo_city` VALUES (2335,'Taejon','KOR','Taejon',1425835);
INSERT INTO `demo_city` VALUES (2336,'Kwangju','KOR','Kwangju',1368341);
INSERT INTO `demo_city` VALUES (2337,'Ulsan','KOR','Kyongsangnam',1084891);
INSERT INTO `demo_city` VALUES (2338,'Songnam','KOR','Kyonggi',869094);
INSERT INTO `demo_city` VALUES (2339,'Puchon','KOR','Kyonggi',779412);
INSERT INTO `demo_city` VALUES (2340,'Suwon','KOR','Kyonggi',755550);
INSERT INTO `demo_city` VALUES (2341,'Anyang','KOR','Kyonggi',591106);
INSERT INTO `demo_city` VALUES (2342,'Chonju','KOR','Chollabuk',563153);
INSERT INTO `demo_city` VALUES (2343,'Chongju','KOR','Chungchongbuk',531376);
INSERT INTO `demo_city` VALUES (2344,'Koyang','KOR','Kyonggi',518282);
INSERT INTO `demo_city` VALUES (2345,'Ansan','KOR','Kyonggi',510314);
INSERT INTO `demo_city` VALUES (2346,'Pohang','KOR','Kyongsangbuk',508899);
INSERT INTO `demo_city` VALUES (2347,'Chang-won','KOR','Kyongsangnam',481694);
INSERT INTO `demo_city` VALUES (2348,'Masan','KOR','Kyongsangnam',441242);
INSERT INTO `demo_city` VALUES (2349,'Kwangmyong','KOR','Kyonggi',350914);
INSERT INTO `demo_city` VALUES (2350,'Chonan','KOR','Chungchongnam',330259);
INSERT INTO `demo_city` VALUES (2351,'Chinju','KOR','Kyongsangnam',329886);
INSERT INTO `demo_city` VALUES (2352,'Iksan','KOR','Chollabuk',322685);
INSERT INTO `demo_city` VALUES (2353,'Pyongtaek','KOR','Kyonggi',312927);
INSERT INTO `demo_city` VALUES (2354,'Kumi','KOR','Kyongsangbuk',311431);
INSERT INTO `demo_city` VALUES (2355,'Uijongbu','KOR','Kyonggi',276111);
INSERT INTO `demo_city` VALUES (2356,'Kyongju','KOR','Kyongsangbuk',272968);
INSERT INTO `demo_city` VALUES (2357,'Kunsan','KOR','Chollabuk',266569);
INSERT INTO `demo_city` VALUES (2358,'Cheju','KOR','Cheju',258511);
INSERT INTO `demo_city` VALUES (2359,'Kimhae','KOR','Kyongsangnam',256370);
INSERT INTO `demo_city` VALUES (2360,'Sunchon','KOR','Chollanam',249263);
INSERT INTO `demo_city` VALUES (2361,'Mokpo','KOR','Chollanam',247452);
INSERT INTO `demo_city` VALUES (2362,'Yong-in','KOR','Kyonggi',242643);
INSERT INTO `demo_city` VALUES (2363,'Wonju','KOR','Kang-won',237460);
INSERT INTO `demo_city` VALUES (2364,'Kunpo','KOR','Kyonggi',235233);
INSERT INTO `demo_city` VALUES (2365,'Chunchon','KOR','Kang-won',234528);
INSERT INTO `demo_city` VALUES (2366,'Namyangju','KOR','Kyonggi',229060);
INSERT INTO `demo_city` VALUES (2367,'Kangnung','KOR','Kang-won',220403);
INSERT INTO `demo_city` VALUES (2368,'Chungju','KOR','Chungchongbuk',205206);
INSERT INTO `demo_city` VALUES (2369,'Andong','KOR','Kyongsangbuk',188443);
INSERT INTO `demo_city` VALUES (2370,'Yosu','KOR','Chollanam',183596);
INSERT INTO `demo_city` VALUES (2371,'Kyongsan','KOR','Kyongsangbuk',173746);
INSERT INTO `demo_city` VALUES (2372,'Paju','KOR','Kyonggi',163379);
INSERT INTO `demo_city` VALUES (2373,'Yangsan','KOR','Kyongsangnam',163351);
INSERT INTO `demo_city` VALUES (2374,'Ichon','KOR','Kyonggi',155332);
INSERT INTO `demo_city` VALUES (2375,'Asan','KOR','Chungchongnam',154663);
INSERT INTO `demo_city` VALUES (2376,'Koje','KOR','Kyongsangnam',147562);
INSERT INTO `demo_city` VALUES (2377,'Kimchon','KOR','Kyongsangbuk',147027);
INSERT INTO `demo_city` VALUES (2378,'Nonsan','KOR','Chungchongnam',146619);
INSERT INTO `demo_city` VALUES (2379,'Kuri','KOR','Kyonggi',142173);
INSERT INTO `demo_city` VALUES (2380,'Chong-up','KOR','Chollabuk',139111);
INSERT INTO `demo_city` VALUES (2381,'Chechon','KOR','Chungchongbuk',137070);
INSERT INTO `demo_city` VALUES (2382,'Sosan','KOR','Chungchongnam',134746);
INSERT INTO `demo_city` VALUES (2383,'Shihung','KOR','Kyonggi',133443);
INSERT INTO `demo_city` VALUES (2384,'Tong-yong','KOR','Kyongsangnam',131717);
INSERT INTO `demo_city` VALUES (2385,'Kongju','KOR','Chungchongnam',131229);
INSERT INTO `demo_city` VALUES (2386,'Yongju','KOR','Kyongsangbuk',131097);
INSERT INTO `demo_city` VALUES (2387,'Chinhae','KOR','Kyongsangnam',125997);
INSERT INTO `demo_city` VALUES (2388,'Sangju','KOR','Kyongsangbuk',124116);
INSERT INTO `demo_city` VALUES (2389,'Poryong','KOR','Chungchongnam',122604);
INSERT INTO `demo_city` VALUES (2390,'Kwang-yang','KOR','Chollanam',122052);
INSERT INTO `demo_city` VALUES (2391,'Miryang','KOR','Kyongsangnam',121501);
INSERT INTO `demo_city` VALUES (2392,'Hanam','KOR','Kyonggi',115812);
INSERT INTO `demo_city` VALUES (2393,'Kimje','KOR','Chollabuk',115427);
INSERT INTO `demo_city` VALUES (2394,'Yongchon','KOR','Kyongsangbuk',113511);
INSERT INTO `demo_city` VALUES (2395,'Sachon','KOR','Kyongsangnam',113494);
INSERT INTO `demo_city` VALUES (2396,'Uiwang','KOR','Kyonggi',108788);
INSERT INTO `demo_city` VALUES (2397,'Naju','KOR','Chollanam',107831);
INSERT INTO `demo_city` VALUES (2398,'Namwon','KOR','Chollabuk',103544);
INSERT INTO `demo_city` VALUES (2399,'Tonghae','KOR','Kang-won',95472);
INSERT INTO `demo_city` VALUES (2400,'Mun-gyong','KOR','Kyongsangbuk',92239);
INSERT INTO `demo_city` VALUES (2401,'Athenai','GRC','Attika',772072);
INSERT INTO `demo_city` VALUES (2402,'Thessaloniki','GRC','Central Macedonia',383967);
INSERT INTO `demo_city` VALUES (2403,'Pireus','GRC','Attika',182671);
INSERT INTO `demo_city` VALUES (2404,'Patras','GRC','West Greece',153344);
INSERT INTO `demo_city` VALUES (2405,'Peristerion','GRC','Attika',137288);
INSERT INTO `demo_city` VALUES (2406,'Herakleion','GRC','Crete',116178);
INSERT INTO `demo_city` VALUES (2407,'Kallithea','GRC','Attika',114233);
INSERT INTO `demo_city` VALUES (2408,'Larisa','GRC','Thessalia',113090);
INSERT INTO `demo_city` VALUES (2409,'Zagreb','HRV','Grad Zagreb',706770);
INSERT INTO `demo_city` VALUES (2410,'Split','HRV','Split-Dalmatia',189388);
INSERT INTO `demo_city` VALUES (2411,'Rijeka','HRV','Primorje-Gorski Kota',167964);
INSERT INTO `demo_city` VALUES (2412,'Osijek','HRV','Osijek-Baranja',104761);
INSERT INTO `demo_city` VALUES (2413,'La Habana','CUB','La Habana',2256000);
INSERT INTO `demo_city` VALUES (2414,'Santiago de Cuba','CUB','Santiago de Cuba',433180);
INSERT INTO `demo_city` VALUES (2415,'Camagüey','CUB','Camagüey',298726);
INSERT INTO `demo_city` VALUES (2416,'Holguín','CUB','Holguín',249492);
INSERT INTO `demo_city` VALUES (2417,'Santa Clara','CUB','Villa Clara',207350);
INSERT INTO `demo_city` VALUES (2418,'Guantánamo','CUB','Guantánamo',205078);
INSERT INTO `demo_city` VALUES (2419,'Pinar del Río','CUB','Pinar del Río',142100);
INSERT INTO `demo_city` VALUES (2420,'Bayamo','CUB','Granma',141000);
INSERT INTO `demo_city` VALUES (2421,'Cienfuegos','CUB','Cienfuegos',132770);
INSERT INTO `demo_city` VALUES (2422,'Victoria de las Tunas','CUB','Las Tunas',132350);
INSERT INTO `demo_city` VALUES (2423,'Matanzas','CUB','Matanzas',123273);
INSERT INTO `demo_city` VALUES (2424,'Manzanillo','CUB','Granma',109350);
INSERT INTO `demo_city` VALUES (2425,'Sancti-Spíritus','CUB','Sancti-Spíritus',100751);
INSERT INTO `demo_city` VALUES (2426,'Ciego de Ávila','CUB','Ciego de Ávila',98505);
INSERT INTO `demo_city` VALUES (2427,'al-Salimiya','KWT','Hawalli',130215);
INSERT INTO `demo_city` VALUES (2428,'Jalib al-Shuyukh','KWT','Hawalli',102178);
INSERT INTO `demo_city` VALUES (2429,'Kuwait','KWT','al-Asima',28859);
INSERT INTO `demo_city` VALUES (2430,'Nicosia','CYP','Nicosia',195000);
INSERT INTO `demo_city` VALUES (2431,'Limassol','CYP','Limassol',154400);
INSERT INTO `demo_city` VALUES (2432,'Vientiane','LAO','Viangchan',531800);
INSERT INTO `demo_city` VALUES (2433,'Savannakhet','LAO','Savannakhet',96652);
INSERT INTO `demo_city` VALUES (2434,'Riga','LVA','Riika',764328);
INSERT INTO `demo_city` VALUES (2435,'Daugavpils','LVA','Daugavpils',114829);
INSERT INTO `demo_city` VALUES (2436,'Liepaja','LVA','Liepaja',89439);
INSERT INTO `demo_city` VALUES (2437,'Maseru','LSO','Maseru',297000);
INSERT INTO `demo_city` VALUES (2438,'Beirut','LBN','Beirut',1100000);
INSERT INTO `demo_city` VALUES (2439,'Tripoli','LBN','al-Shamal',240000);
INSERT INTO `demo_city` VALUES (2440,'Monrovia','LBR','Montserrado',850000);
INSERT INTO `demo_city` VALUES (2441,'Tripoli','LBY','Tripoli',1682000);
INSERT INTO `demo_city` VALUES (2442,'Bengasi','LBY','Bengasi',804000);
INSERT INTO `demo_city` VALUES (2443,'Misrata','LBY','Misrata',121669);
INSERT INTO `demo_city` VALUES (2444,'al-Zawiya','LBY','al-Zawiya',89338);
INSERT INTO `demo_city` VALUES (2445,'Schaan','LIE','Schaan',5346);
INSERT INTO `demo_city` VALUES (2446,'Vaduz','LIE','Vaduz',5043);
INSERT INTO `demo_city` VALUES (2447,'Vilnius','LTU','Vilna',577969);
INSERT INTO `demo_city` VALUES (2448,'Kaunas','LTU','Kaunas',412639);
INSERT INTO `demo_city` VALUES (2449,'Klaipeda','LTU','Klaipeda',202451);
INSERT INTO `demo_city` VALUES (2450,'iauliai','LTU','iauliai',146563);
INSERT INTO `demo_city` VALUES (2451,'Panevezys','LTU','Panevezys',133695);
INSERT INTO `demo_city` VALUES (2452,'Luxembourg [Luxemburg/Lëtzebuerg]','LUX','Luxembourg',80700);
INSERT INTO `demo_city` VALUES (2453,'El-Aaiún','ESH','El-Aaiún',169000);
INSERT INTO `demo_city` VALUES (2454,'Macao','MAC','Macau',437500);
INSERT INTO `demo_city` VALUES (2455,'Antananarivo','MDG','Antananarivo',675669);
INSERT INTO `demo_city` VALUES (2456,'Toamasina','MDG','Toamasina',127441);
INSERT INTO `demo_city` VALUES (2457,'Antsirabé','MDG','Antananarivo',120239);
INSERT INTO `demo_city` VALUES (2458,'Mahajanga','MDG','Mahajanga',100807);
INSERT INTO `demo_city` VALUES (2459,'Fianarantsoa','MDG','Fianarantsoa',99005);
INSERT INTO `demo_city` VALUES (2460,'Skopje','MKD','Skopje',444299);
INSERT INTO `demo_city` VALUES (2461,'Blantyre','MWI','Blantyre',478155);
INSERT INTO `demo_city` VALUES (2462,'Lilongwe','MWI','Lilongwe',435964);
INSERT INTO `demo_city` VALUES (2463,'Male','MDV','Maale',71000);
INSERT INTO `demo_city` VALUES (2464,'Kuala Lumpur','MYS','Wilayah Persekutuan',1297526);
INSERT INTO `demo_city` VALUES (2465,'Ipoh','MYS','Perak',382853);
INSERT INTO `demo_city` VALUES (2466,'Johor Baharu','MYS','Johor',328436);
INSERT INTO `demo_city` VALUES (2467,'Petaling Jaya','MYS','Selangor',254350);
INSERT INTO `demo_city` VALUES (2468,'Kelang','MYS','Selangor',243355);
INSERT INTO `demo_city` VALUES (2469,'Kuala Terengganu','MYS','Terengganu',228119);
INSERT INTO `demo_city` VALUES (2470,'Pinang','MYS','Pulau Pinang',219603);
INSERT INTO `demo_city` VALUES (2471,'Kota Bharu','MYS','Kelantan',219582);
INSERT INTO `demo_city` VALUES (2472,'Kuantan','MYS','Pahang',199484);
INSERT INTO `demo_city` VALUES (2473,'Taiping','MYS','Perak',183261);
INSERT INTO `demo_city` VALUES (2474,'Seremban','MYS','Negeri Sembilan',182869);
INSERT INTO `demo_city` VALUES (2475,'Kuching','MYS','Sarawak',148059);
INSERT INTO `demo_city` VALUES (2476,'Sibu','MYS','Sarawak',126381);
INSERT INTO `demo_city` VALUES (2477,'Sandakan','MYS','Sabah',125841);
INSERT INTO `demo_city` VALUES (2478,'Alor Setar','MYS','Kedah',124412);
INSERT INTO `demo_city` VALUES (2479,'Selayang Baru','MYS','Selangor',124228);
INSERT INTO `demo_city` VALUES (2480,'Sungai Petani','MYS','Kedah',114763);
INSERT INTO `demo_city` VALUES (2481,'Shah Alam','MYS','Selangor',102019);
INSERT INTO `demo_city` VALUES (2482,'Bamako','MLI','Bamako',809552);
INSERT INTO `demo_city` VALUES (2483,'Birkirkara','MLT','Outer Harbour',21445);
INSERT INTO `demo_city` VALUES (2484,'Valletta','MLT','Inner Harbour',7073);
INSERT INTO `demo_city` VALUES (2485,'Casablanca','MAR','Casablanca',2940623);
INSERT INTO `demo_city` VALUES (2486,'Rabat','MAR','Rabat-Salé-Zammour-Z',623457);
INSERT INTO `demo_city` VALUES (2487,'Marrakech','MAR','Marrakech-Tensift-Al',621914);
INSERT INTO `demo_city` VALUES (2488,'Fès','MAR','Fès-Boulemane',541162);
INSERT INTO `demo_city` VALUES (2489,'Tanger','MAR','Tanger-Tétouan',521735);
INSERT INTO `demo_city` VALUES (2490,'Salé','MAR','Rabat-Salé-Zammour-Z',504420);
INSERT INTO `demo_city` VALUES (2491,'Meknès','MAR','Meknès-Tafilalet',460000);
INSERT INTO `demo_city` VALUES (2492,'Oujda','MAR','Oriental',365382);
INSERT INTO `demo_city` VALUES (2493,'Kénitra','MAR','Gharb-Chrarda-Béni H',292600);
INSERT INTO `demo_city` VALUES (2494,'Tétouan','MAR','Tanger-Tétouan',277516);
INSERT INTO `demo_city` VALUES (2495,'Safi','MAR','Doukkala-Abda',262300);
INSERT INTO `demo_city` VALUES (2496,'Agadir','MAR','Souss Massa-Draâ',155244);
INSERT INTO `demo_city` VALUES (2497,'Mohammedia','MAR','Casablanca',154706);
INSERT INTO `demo_city` VALUES (2498,'Khouribga','MAR','Chaouia-Ouardigha',152090);
INSERT INTO `demo_city` VALUES (2499,'Beni-Mellal','MAR','Tadla-Azilal',140212);
INSERT INTO `demo_city` VALUES (2500,'Témara','MAR','Rabat-Salé-Zammour-Z',126303);
INSERT INTO `demo_city` VALUES (2501,'El Jadida','MAR','Doukkala-Abda',119083);
INSERT INTO `demo_city` VALUES (2502,'Nador','MAR','Oriental',112450);
INSERT INTO `demo_city` VALUES (2503,'Ksar el Kebir','MAR','Tanger-Tétouan',107065);
INSERT INTO `demo_city` VALUES (2504,'Settat','MAR','Chaouia-Ouardigha',96200);
INSERT INTO `demo_city` VALUES (2505,'Taza','MAR','Taza-Al Hoceima-Taou',92700);
INSERT INTO `demo_city` VALUES (2506,'El Araich','MAR','Tanger-Tétouan',90400);
INSERT INTO `demo_city` VALUES (2507,'Dalap-Uliga-Darrit','MHL','Majuro',28000);
INSERT INTO `demo_city` VALUES (2508,'Fort-de-France','MTQ','Fort-de-France',94050);
INSERT INTO `demo_city` VALUES (2509,'Nouakchott','MRT','Nouakchott',667300);
INSERT INTO `demo_city` VALUES (2510,'Nouâdhibou','MRT','Dakhlet Nouâdhibou',97600);
INSERT INTO `demo_city` VALUES (2511,'Port-Louis','MUS','Port-Louis',138200);
INSERT INTO `demo_city` VALUES (2512,'Beau Bassin-Rose Hill','MUS','Plaines Wilhelms',100616);
INSERT INTO `demo_city` VALUES (2513,'Vacoas-Phoenix','MUS','Plaines Wilhelms',98464);
INSERT INTO `demo_city` VALUES (2514,'Mamoutzou','MYT','Mamoutzou',12000);
INSERT INTO `demo_city` VALUES (2515,'Ciudad de México','MEX','Distrito Federal',8591309);
INSERT INTO `demo_city` VALUES (2516,'Guadalajara','MEX','Jalisco',1647720);
INSERT INTO `demo_city` VALUES (2517,'Ecatepec de Morelos','MEX','México',1620303);
INSERT INTO `demo_city` VALUES (2518,'Puebla','MEX','Puebla',1346176);
INSERT INTO `demo_city` VALUES (2519,'Nezahualcóyotl','MEX','México',1224924);
INSERT INTO `demo_city` VALUES (2520,'Juárez','MEX','Chihuahua',1217818);
INSERT INTO `demo_city` VALUES (2521,'Tijuana','MEX','Baja California',1212232);
INSERT INTO `demo_city` VALUES (2522,'León','MEX','Guanajuato',1133576);
INSERT INTO `demo_city` VALUES (2523,'Monterrey','MEX','Nuevo León',1108499);
INSERT INTO `demo_city` VALUES (2524,'Zapopan','MEX','Jalisco',1002239);
INSERT INTO `demo_city` VALUES (2525,'Naucalpan de Juárez','MEX','México',857511);
INSERT INTO `demo_city` VALUES (2526,'Mexicali','MEX','Baja California',764902);
INSERT INTO `demo_city` VALUES (2527,'Culiacán','MEX','Sinaloa',744859);
INSERT INTO `demo_city` VALUES (2528,'Acapulco de Juárez','MEX','Guerrero',721011);
INSERT INTO `demo_city` VALUES (2529,'Tlalnepantla de Baz','MEX','México',720755);
INSERT INTO `demo_city` VALUES (2530,'Mérida','MEX','Yucatán',703324);
INSERT INTO `demo_city` VALUES (2531,'Chihuahua','MEX','Chihuahua',670208);
INSERT INTO `demo_city` VALUES (2532,'San Luis Potosí','MEX','San Luis Potosí',669353);
INSERT INTO `demo_city` VALUES (2533,'Guadalupe','MEX','Nuevo León',668780);
INSERT INTO `demo_city` VALUES (2534,'Toluca','MEX','México',665617);
INSERT INTO `demo_city` VALUES (2535,'Aguascalientes','MEX','Aguascalientes',643360);
INSERT INTO `demo_city` VALUES (2536,'Querétaro','MEX','Querétaro de Arteaga',639839);
INSERT INTO `demo_city` VALUES (2537,'Morelia','MEX','Michoacán de Ocampo',619958);
INSERT INTO `demo_city` VALUES (2538,'Hermosillo','MEX','Sonora',608697);
INSERT INTO `demo_city` VALUES (2539,'Saltillo','MEX','Coahuila de Zaragoza',577352);
INSERT INTO `demo_city` VALUES (2540,'Torreón','MEX','Coahuila de Zaragoza',529093);
INSERT INTO `demo_city` VALUES (2541,'Centro (Villahermosa)','MEX','Tabasco',519873);
INSERT INTO `demo_city` VALUES (2542,'San Nicolás de los Garza','MEX','Nuevo León',495540);
INSERT INTO `demo_city` VALUES (2543,'Durango','MEX','Durango',490524);
INSERT INTO `demo_city` VALUES (2544,'Chimalhuacán','MEX','México',490245);
INSERT INTO `demo_city` VALUES (2545,'Tlaquepaque','MEX','Jalisco',475472);
INSERT INTO `demo_city` VALUES (2546,'Atizapán de Zaragoza','MEX','México',467262);
INSERT INTO `demo_city` VALUES (2547,'Veracruz','MEX','Veracruz',457119);
INSERT INTO `demo_city` VALUES (2548,'Cuautitlán Izcalli','MEX','México',452976);
INSERT INTO `demo_city` VALUES (2549,'Irapuato','MEX','Guanajuato',440039);
INSERT INTO `demo_city` VALUES (2550,'Tuxtla Gutiérrez','MEX','Chiapas',433544);
INSERT INTO `demo_city` VALUES (2551,'Tultitlán','MEX','México',432411);
INSERT INTO `demo_city` VALUES (2552,'Reynosa','MEX','Tamaulipas',419776);
INSERT INTO `demo_city` VALUES (2553,'Benito Juárez','MEX','Quintana Roo',419276);
INSERT INTO `demo_city` VALUES (2554,'Matamoros','MEX','Tamaulipas',416428);
INSERT INTO `demo_city` VALUES (2555,'Xalapa','MEX','Veracruz',390058);
INSERT INTO `demo_city` VALUES (2556,'Celaya','MEX','Guanajuato',382140);
INSERT INTO `demo_city` VALUES (2557,'Mazatlán','MEX','Sinaloa',380265);
INSERT INTO `demo_city` VALUES (2558,'Ensenada','MEX','Baja California',369573);
INSERT INTO `demo_city` VALUES (2559,'Ahome','MEX','Sinaloa',358663);
INSERT INTO `demo_city` VALUES (2560,'Cajeme','MEX','Sonora',355679);
INSERT INTO `demo_city` VALUES (2561,'Cuernavaca','MEX','Morelos',337966);
INSERT INTO `demo_city` VALUES (2562,'Tonalá','MEX','Jalisco',336109);
INSERT INTO `demo_city` VALUES (2563,'Valle de Chalco Solidaridad','MEX','México',323113);
INSERT INTO `demo_city` VALUES (2564,'Nuevo Laredo','MEX','Tamaulipas',310277);
INSERT INTO `demo_city` VALUES (2565,'Tepic','MEX','Nayarit',305025);
INSERT INTO `demo_city` VALUES (2566,'Tampico','MEX','Tamaulipas',294789);
INSERT INTO `demo_city` VALUES (2567,'Ixtapaluca','MEX','México',293160);
INSERT INTO `demo_city` VALUES (2568,'Apodaca','MEX','Nuevo León',282941);
INSERT INTO `demo_city` VALUES (2569,'Guasave','MEX','Sinaloa',277201);
INSERT INTO `demo_city` VALUES (2570,'Gómez Palacio','MEX','Durango',272806);
INSERT INTO `demo_city` VALUES (2571,'Tapachula','MEX','Chiapas',271141);
INSERT INTO `demo_city` VALUES (2572,'Nicolás Romero','MEX','México',269393);
INSERT INTO `demo_city` VALUES (2573,'Coatzacoalcos','MEX','Veracruz',267037);
INSERT INTO `demo_city` VALUES (2574,'Uruapan','MEX','Michoacán de Ocampo',265211);
INSERT INTO `demo_city` VALUES (2575,'Victoria','MEX','Tamaulipas',262686);
INSERT INTO `demo_city` VALUES (2576,'Oaxaca de Juárez','MEX','Oaxaca',256848);
INSERT INTO `demo_city` VALUES (2577,'Coacalco de Berriozábal','MEX','México',252270);
INSERT INTO `demo_city` VALUES (2578,'Pachuca de Soto','MEX','Hidalgo',244688);
INSERT INTO `demo_city` VALUES (2579,'General Escobedo','MEX','Nuevo León',232961);
INSERT INTO `demo_city` VALUES (2580,'Salamanca','MEX','Guanajuato',226864);
INSERT INTO `demo_city` VALUES (2581,'Santa Catarina','MEX','Nuevo León',226573);
INSERT INTO `demo_city` VALUES (2582,'Tehuacán','MEX','Puebla',225943);
INSERT INTO `demo_city` VALUES (2583,'Chalco','MEX','México',222201);
INSERT INTO `demo_city` VALUES (2584,'Cárdenas','MEX','Tabasco',216903);
INSERT INTO `demo_city` VALUES (2585,'Campeche','MEX','Campeche',216735);
INSERT INTO `demo_city` VALUES (2586,'La Paz','MEX','México',213045);
INSERT INTO `demo_city` VALUES (2587,'Othón P. Blanco (Chetumal)','MEX','Quintana Roo',208014);
INSERT INTO `demo_city` VALUES (2588,'Texcoco','MEX','México',203681);
INSERT INTO `demo_city` VALUES (2589,'La Paz','MEX','Baja California Sur',196708);
INSERT INTO `demo_city` VALUES (2590,'Metepec','MEX','México',194265);
INSERT INTO `demo_city` VALUES (2591,'Monclova','MEX','Coahuila de Zaragoza',193657);
INSERT INTO `demo_city` VALUES (2592,'Huixquilucan','MEX','México',193156);
INSERT INTO `demo_city` VALUES (2593,'Chilpancingo de los Bravo','MEX','Guerrero',192509);
INSERT INTO `demo_city` VALUES (2594,'Puerto Vallarta','MEX','Jalisco',183741);
INSERT INTO `demo_city` VALUES (2595,'Fresnillo','MEX','Zacatecas',182744);
INSERT INTO `demo_city` VALUES (2596,'Ciudad Madero','MEX','Tamaulipas',182012);
INSERT INTO `demo_city` VALUES (2597,'Soledad de Graciano Sánchez','MEX','San Luis Potosí',179956);
INSERT INTO `demo_city` VALUES (2598,'San Juan del Río','MEX','Querétaro',179300);
INSERT INTO `demo_city` VALUES (2599,'San Felipe del Progreso','MEX','México',177330);
INSERT INTO `demo_city` VALUES (2600,'Córdoba','MEX','Veracruz',176952);
INSERT INTO `demo_city` VALUES (2601,'Tecámac','MEX','México',172410);
INSERT INTO `demo_city` VALUES (2602,'Ocosingo','MEX','Chiapas',171495);
INSERT INTO `demo_city` VALUES (2603,'Carmen','MEX','Campeche',171367);
INSERT INTO `demo_city` VALUES (2604,'Lázaro Cárdenas','MEX','Michoacán de Ocampo',170878);
INSERT INTO `demo_city` VALUES (2605,'Jiutepec','MEX','Morelos',170428);
INSERT INTO `demo_city` VALUES (2606,'Papantla','MEX','Veracruz',170123);
INSERT INTO `demo_city` VALUES (2607,'Comalcalco','MEX','Tabasco',164640);
INSERT INTO `demo_city` VALUES (2608,'Zamora','MEX','Michoacán de Ocampo',161191);
INSERT INTO `demo_city` VALUES (2609,'Nogales','MEX','Sonora',159103);
INSERT INTO `demo_city` VALUES (2610,'Huimanguillo','MEX','Tabasco',158335);
INSERT INTO `demo_city` VALUES (2611,'Cuautla','MEX','Morelos',153132);
INSERT INTO `demo_city` VALUES (2612,'Minatitlán','MEX','Veracruz',152983);
INSERT INTO `demo_city` VALUES (2613,'Poza Rica de Hidalgo','MEX','Veracruz',152678);
INSERT INTO `demo_city` VALUES (2614,'Ciudad Valles','MEX','San Luis Potosí',146411);
INSERT INTO `demo_city` VALUES (2615,'Navolato','MEX','Sinaloa',145396);
INSERT INTO `demo_city` VALUES (2616,'San Luis Río Colorado','MEX','Sonora',145276);
INSERT INTO `demo_city` VALUES (2617,'Pénjamo','MEX','Guanajuato',143927);
INSERT INTO `demo_city` VALUES (2618,'San Andrés Tuxtla','MEX','Veracruz',142251);
INSERT INTO `demo_city` VALUES (2619,'Guanajuato','MEX','Guanajuato',141215);
INSERT INTO `demo_city` VALUES (2620,'Navojoa','MEX','Sonora',140495);
INSERT INTO `demo_city` VALUES (2621,'Zitácuaro','MEX','Michoacán de Ocampo',137970);
INSERT INTO `demo_city` VALUES (2622,'Boca del Río','MEX','Veracruz-Llave',135721);
INSERT INTO `demo_city` VALUES (2623,'Allende','MEX','Guanajuato',134645);
INSERT INTO `demo_city` VALUES (2624,'Silao','MEX','Guanajuato',134037);
INSERT INTO `demo_city` VALUES (2625,'Macuspana','MEX','Tabasco',133795);
INSERT INTO `demo_city` VALUES (2626,'San Juan Bautista Tuxtepec','MEX','Oaxaca',133675);
INSERT INTO `demo_city` VALUES (2627,'San Cristóbal de las Casas','MEX','Chiapas',132317);
INSERT INTO `demo_city` VALUES (2628,'Valle de Santiago','MEX','Guanajuato',130557);
INSERT INTO `demo_city` VALUES (2629,'Guaymas','MEX','Sonora',130108);
INSERT INTO `demo_city` VALUES (2630,'Colima','MEX','Colima',129454);
INSERT INTO `demo_city` VALUES (2631,'Dolores Hidalgo','MEX','Guanajuato',128675);
INSERT INTO `demo_city` VALUES (2632,'Lagos de Moreno','MEX','Jalisco',127949);
INSERT INTO `demo_city` VALUES (2633,'Piedras Negras','MEX','Coahuila de Zaragoza',127898);
INSERT INTO `demo_city` VALUES (2634,'Altamira','MEX','Tamaulipas',127490);
INSERT INTO `demo_city` VALUES (2635,'Túxpam','MEX','Veracruz',126475);
INSERT INTO `demo_city` VALUES (2636,'San Pedro Garza García','MEX','Nuevo León',126147);
INSERT INTO `demo_city` VALUES (2637,'Cuauhtémoc','MEX','Chihuahua',124279);
INSERT INTO `demo_city` VALUES (2638,'Manzanillo','MEX','Colima',124014);
INSERT INTO `demo_city` VALUES (2639,'Iguala de la Independencia','MEX','Guerrero',123883);
INSERT INTO `demo_city` VALUES (2640,'Zacatecas','MEX','Zacatecas',123700);
INSERT INTO `demo_city` VALUES (2641,'Tlajomulco de Zúñiga','MEX','Jalisco',123220);
INSERT INTO `demo_city` VALUES (2642,'Tulancingo de Bravo','MEX','Hidalgo',121946);
INSERT INTO `demo_city` VALUES (2643,'Zinacantepec','MEX','México',121715);
INSERT INTO `demo_city` VALUES (2644,'San Martín Texmelucan','MEX','Puebla',121093);
INSERT INTO `demo_city` VALUES (2645,'Tepatitlán de Morelos','MEX','Jalisco',118948);
INSERT INTO `demo_city` VALUES (2646,'Martínez de la Torre','MEX','Veracruz',118815);
INSERT INTO `demo_city` VALUES (2647,'Orizaba','MEX','Veracruz',118488);
INSERT INTO `demo_city` VALUES (2648,'Apatzingán','MEX','Michoacán de Ocampo',117849);
INSERT INTO `demo_city` VALUES (2649,'Atlixco','MEX','Puebla',117019);
INSERT INTO `demo_city` VALUES (2650,'Delicias','MEX','Chihuahua',116132);
INSERT INTO `demo_city` VALUES (2651,'Ixtlahuaca','MEX','México',115548);
INSERT INTO `demo_city` VALUES (2652,'El Mante','MEX','Tamaulipas',112453);
INSERT INTO `demo_city` VALUES (2653,'Lerdo','MEX','Durango',112272);
INSERT INTO `demo_city` VALUES (2654,'Almoloya de Juárez','MEX','México',110550);
INSERT INTO `demo_city` VALUES (2655,'Acámbaro','MEX','Guanajuato',110487);
INSERT INTO `demo_city` VALUES (2656,'Acuña','MEX','Coahuila de Zaragoza',110388);
INSERT INTO `demo_city` VALUES (2657,'Guadalupe','MEX','Zacatecas',108881);
INSERT INTO `demo_city` VALUES (2658,'Huejutla de Reyes','MEX','Hidalgo',108017);
INSERT INTO `demo_city` VALUES (2659,'Hidalgo','MEX','Michoacán de Ocampo',106198);
INSERT INTO `demo_city` VALUES (2660,'Los Cabos','MEX','Baja California Sur',105199);
INSERT INTO `demo_city` VALUES (2661,'Comitán de Domínguez','MEX','Chiapas',104986);
INSERT INTO `demo_city` VALUES (2662,'Cunduacán','MEX','Tabasco',104164);
INSERT INTO `demo_city` VALUES (2663,'Río Bravo','MEX','Tamaulipas',103901);
INSERT INTO `demo_city` VALUES (2664,'Temapache','MEX','Veracruz',102824);
INSERT INTO `demo_city` VALUES (2665,'Chilapa de Alvarez','MEX','Guerrero',102716);
INSERT INTO `demo_city` VALUES (2666,'Hidalgo del Parral','MEX','Chihuahua',100881);
INSERT INTO `demo_city` VALUES (2667,'San Francisco del Rincón','MEX','Guanajuato',100149);
INSERT INTO `demo_city` VALUES (2668,'Taxco de Alarcón','MEX','Guerrero',99907);
INSERT INTO `demo_city` VALUES (2669,'Zumpango','MEX','México',99781);
INSERT INTO `demo_city` VALUES (2670,'San Pedro Cholula','MEX','Puebla',99734);
INSERT INTO `demo_city` VALUES (2671,'Lerma','MEX','México',99714);
INSERT INTO `demo_city` VALUES (2672,'Tecomán','MEX','Colima',99296);
INSERT INTO `demo_city` VALUES (2673,'Las Margaritas','MEX','Chiapas',97389);
INSERT INTO `demo_city` VALUES (2674,'Cosoleacaque','MEX','Veracruz',97199);
INSERT INTO `demo_city` VALUES (2675,'San Luis de la Paz','MEX','Guanajuato',96763);
INSERT INTO `demo_city` VALUES (2676,'José Azueta','MEX','Guerrero',95448);
INSERT INTO `demo_city` VALUES (2677,'Santiago Ixcuintla','MEX','Nayarit',95311);
INSERT INTO `demo_city` VALUES (2678,'San Felipe','MEX','Guanajuato',95305);
INSERT INTO `demo_city` VALUES (2679,'Tejupilco','MEX','México',94934);
INSERT INTO `demo_city` VALUES (2680,'Tantoyuca','MEX','Veracruz',94709);
INSERT INTO `demo_city` VALUES (2681,'Salvatierra','MEX','Guanajuato',94322);
INSERT INTO `demo_city` VALUES (2682,'Tultepec','MEX','México',93364);
INSERT INTO `demo_city` VALUES (2683,'Temixco','MEX','Morelos',92686);
INSERT INTO `demo_city` VALUES (2684,'Matamoros','MEX','Coahuila de Zaragoza',91858);
INSERT INTO `demo_city` VALUES (2685,'Pánuco','MEX','Veracruz',90551);
INSERT INTO `demo_city` VALUES (2686,'El Fuerte','MEX','Sinaloa',89556);
INSERT INTO `demo_city` VALUES (2687,'Tierra Blanca','MEX','Veracruz',89143);
INSERT INTO `demo_city` VALUES (2688,'Weno','FSM','Chuuk',22000);
INSERT INTO `demo_city` VALUES (2689,'Palikir','FSM','Pohnpei',8600);
INSERT INTO `demo_city` VALUES (2690,'Chisinau','MDA','Chisinau',719900);
INSERT INTO `demo_city` VALUES (2691,'Tiraspol','MDA','Dnjestria',194300);
INSERT INTO `demo_city` VALUES (2692,'Balti','MDA','Balti',153400);
INSERT INTO `demo_city` VALUES (2693,'Bender (Tîghina)','MDA','Bender (Tîghina)',125700);
INSERT INTO `demo_city` VALUES (2694,'Monte-Carlo','MCO','',13154);
INSERT INTO `demo_city` VALUES (2695,'Monaco-Ville','MCO','',1234);
INSERT INTO `demo_city` VALUES (2696,'Ulan Bator','MNG','Ulaanbaatar',773700);
INSERT INTO `demo_city` VALUES (2697,'Plymouth','MSR','Plymouth',2000);
INSERT INTO `demo_city` VALUES (2698,'Maputo','MOZ','Maputo',1018938);
INSERT INTO `demo_city` VALUES (2699,'Matola','MOZ','Maputo',424662);
INSERT INTO `demo_city` VALUES (2700,'Beira','MOZ','Sofala',397368);
INSERT INTO `demo_city` VALUES (2701,'Nampula','MOZ','Nampula',303346);
INSERT INTO `demo_city` VALUES (2702,'Chimoio','MOZ','Manica',171056);
INSERT INTO `demo_city` VALUES (2703,'Naçala-Porto','MOZ','Nampula',158248);
INSERT INTO `demo_city` VALUES (2704,'Quelimane','MOZ','Zambézia',150116);
INSERT INTO `demo_city` VALUES (2705,'Mocuba','MOZ','Zambézia',124700);
INSERT INTO `demo_city` VALUES (2706,'Tete','MOZ','Tete',101984);
INSERT INTO `demo_city` VALUES (2707,'Xai-Xai','MOZ','Gaza',99442);
INSERT INTO `demo_city` VALUES (2708,'Gurue','MOZ','Zambézia',99300);
INSERT INTO `demo_city` VALUES (2709,'Maxixe','MOZ','Inhambane',93985);
INSERT INTO `demo_city` VALUES (2710,'Rangoon (Yangon)','MMR','Rangoon [Yangon]',3361700);
INSERT INTO `demo_city` VALUES (2711,'Mandalay','MMR','Mandalay',885300);
INSERT INTO `demo_city` VALUES (2712,'Moulmein (Mawlamyine)','MMR','Mon',307900);
INSERT INTO `demo_city` VALUES (2713,'Pegu (Bago)','MMR','Pegu [Bago]',190900);
INSERT INTO `demo_city` VALUES (2714,'Bassein (Pathein)','MMR','Irrawaddy [Ayeyarwad',183900);
INSERT INTO `demo_city` VALUES (2715,'Monywa','MMR','Sagaing',138600);
INSERT INTO `demo_city` VALUES (2716,'Sittwe (Akyab)','MMR','Rakhine',137600);
INSERT INTO `demo_city` VALUES (2717,'Taunggyi (Taunggye)','MMR','Shan',131500);
INSERT INTO `demo_city` VALUES (2718,'Meikhtila','MMR','Mandalay',129700);
INSERT INTO `demo_city` VALUES (2719,'Mergui (Myeik)','MMR','Tenasserim [Tanintha',122700);
INSERT INTO `demo_city` VALUES (2720,'Lashio (Lasho)','MMR','Shan',107600);
INSERT INTO `demo_city` VALUES (2721,'Prome (Pyay)','MMR','Pegu [Bago]',105700);
INSERT INTO `demo_city` VALUES (2722,'Henzada (Hinthada)','MMR','Irrawaddy [Ayeyarwad',104700);
INSERT INTO `demo_city` VALUES (2723,'Myingyan','MMR','Mandalay',103600);
INSERT INTO `demo_city` VALUES (2724,'Tavoy (Dawei)','MMR','Tenasserim [Tanintha',96800);
INSERT INTO `demo_city` VALUES (2725,'Pagakku (Pakokku)','MMR','Magwe [Magway]',94800);
INSERT INTO `demo_city` VALUES (2726,'Windhoek','NAM','Khomas',169000);
INSERT INTO `demo_city` VALUES (2727,'Yangor','NRU','',4050);
INSERT INTO `demo_city` VALUES (2728,'Yaren','NRU','',559);
INSERT INTO `demo_city` VALUES (2729,'Kathmandu','NPL','Central',591835);
INSERT INTO `demo_city` VALUES (2730,'Biratnagar','NPL','Eastern',157764);
INSERT INTO `demo_city` VALUES (2731,'Pokhara','NPL','Western',146318);
INSERT INTO `demo_city` VALUES (2732,'Lalitapur','NPL','Central',145847);
INSERT INTO `demo_city` VALUES (2733,'Birgunj','NPL','Central',90639);
INSERT INTO `demo_city` VALUES (2734,'Managua','NIC','Managua',959000);
INSERT INTO `demo_city` VALUES (2735,'León','NIC','León',123865);
INSERT INTO `demo_city` VALUES (2736,'Chinandega','NIC','Chinandega',97387);
INSERT INTO `demo_city` VALUES (2737,'Masaya','NIC','Masaya',88971);
INSERT INTO `demo_city` VALUES (2738,'Niamey','NER','Niamey',420000);
INSERT INTO `demo_city` VALUES (2739,'Zinder','NER','Zinder',120892);
INSERT INTO `demo_city` VALUES (2740,'Maradi','NER','Maradi',112965);
INSERT INTO `demo_city` VALUES (2741,'Lagos','NGA','Lagos',1518000);
INSERT INTO `demo_city` VALUES (2742,'Ibadan','NGA','Oyo & Osun',1432000);
INSERT INTO `demo_city` VALUES (2743,'Ogbomosho','NGA','Oyo & Osun',730000);
INSERT INTO `demo_city` VALUES (2744,'Kano','NGA','Kano & Jigawa',674100);
INSERT INTO `demo_city` VALUES (2745,'Oshogbo','NGA','Oyo & Osun',476800);
INSERT INTO `demo_city` VALUES (2746,'Ilorin','NGA','Kwara & Kogi',475800);
INSERT INTO `demo_city` VALUES (2747,'Abeokuta','NGA','Ogun',427400);
INSERT INTO `demo_city` VALUES (2748,'Port Harcourt','NGA','Rivers & Bayelsa',410000);
INSERT INTO `demo_city` VALUES (2749,'Zaria','NGA','Kaduna',379200);
INSERT INTO `demo_city` VALUES (2750,'Ilesha','NGA','Oyo & Osun',378400);
INSERT INTO `demo_city` VALUES (2751,'Onitsha','NGA','Anambra & Enugu & Eb',371900);
INSERT INTO `demo_city` VALUES (2752,'Iwo','NGA','Oyo & Osun',362000);
INSERT INTO `demo_city` VALUES (2753,'Ado-Ekiti','NGA','Ondo & Ekiti',359400);
INSERT INTO `demo_city` VALUES (2754,'Abuja','NGA','Federal Capital Dist',350100);
INSERT INTO `demo_city` VALUES (2755,'Kaduna','NGA','Kaduna',342200);
INSERT INTO `demo_city` VALUES (2756,'Mushin','NGA','Lagos',333200);
INSERT INTO `demo_city` VALUES (2757,'Maiduguri','NGA','Borno & Yobe',320000);
INSERT INTO `demo_city` VALUES (2758,'Enugu','NGA','Anambra & Enugu & Eb',316100);
INSERT INTO `demo_city` VALUES (2759,'Ede','NGA','Oyo & Osun',307100);
INSERT INTO `demo_city` VALUES (2760,'Aba','NGA','Imo & Abia',298900);
INSERT INTO `demo_city` VALUES (2761,'Ife','NGA','Oyo & Osun',296800);
INSERT INTO `demo_city` VALUES (2762,'Ila','NGA','Oyo & Osun',264000);
INSERT INTO `demo_city` VALUES (2763,'Oyo','NGA','Oyo & Osun',256400);
INSERT INTO `demo_city` VALUES (2764,'Ikerre','NGA','Ondo & Ekiti',244600);
INSERT INTO `demo_city` VALUES (2765,'Benin City','NGA','Edo & Delta',229400);
INSERT INTO `demo_city` VALUES (2766,'Iseyin','NGA','Oyo & Osun',217300);
INSERT INTO `demo_city` VALUES (2767,'Katsina','NGA','Katsina',206500);
INSERT INTO `demo_city` VALUES (2768,'Jos','NGA','Plateau & Nassarawa',206300);
INSERT INTO `demo_city` VALUES (2769,'Sokoto','NGA','Sokoto & Kebbi & Zam',204900);
INSERT INTO `demo_city` VALUES (2770,'Ilobu','NGA','Oyo & Osun',199000);
INSERT INTO `demo_city` VALUES (2771,'Offa','NGA','Kwara & Kogi',197200);
INSERT INTO `demo_city` VALUES (2772,'Ikorodu','NGA','Lagos',184900);
INSERT INTO `demo_city` VALUES (2773,'Ilawe-Ekiti','NGA','Ondo & Ekiti',184500);
INSERT INTO `demo_city` VALUES (2774,'Owo','NGA','Ondo & Ekiti',183500);
INSERT INTO `demo_city` VALUES (2775,'Ikirun','NGA','Oyo & Osun',181400);
INSERT INTO `demo_city` VALUES (2776,'Shaki','NGA','Oyo & Osun',174500);
INSERT INTO `demo_city` VALUES (2777,'Calabar','NGA','Cross River',174400);
INSERT INTO `demo_city` VALUES (2778,'Ondo','NGA','Ondo & Ekiti',173600);
INSERT INTO `demo_city` VALUES (2779,'Akure','NGA','Ondo & Ekiti',162300);
INSERT INTO `demo_city` VALUES (2780,'Gusau','NGA','Sokoto & Kebbi & Zam',158000);
INSERT INTO `demo_city` VALUES (2781,'Ijebu-Ode','NGA','Ogun',156400);
INSERT INTO `demo_city` VALUES (2782,'Effon-Alaiye','NGA','Oyo & Osun',153100);
INSERT INTO `demo_city` VALUES (2783,'Kumo','NGA','Bauchi & Gombe',148000);
INSERT INTO `demo_city` VALUES (2784,'Shomolu','NGA','Lagos',147700);
INSERT INTO `demo_city` VALUES (2785,'Oka-Akoko','NGA','Ondo & Ekiti',142900);
INSERT INTO `demo_city` VALUES (2786,'Ikare','NGA','Ondo & Ekiti',140800);
INSERT INTO `demo_city` VALUES (2787,'Sapele','NGA','Edo & Delta',139200);
INSERT INTO `demo_city` VALUES (2788,'Deba Habe','NGA','Bauchi & Gombe',138600);
INSERT INTO `demo_city` VALUES (2789,'Minna','NGA','Niger',136900);
INSERT INTO `demo_city` VALUES (2790,'Warri','NGA','Edo & Delta',126100);
INSERT INTO `demo_city` VALUES (2791,'Bida','NGA','Niger',125500);
INSERT INTO `demo_city` VALUES (2792,'Ikire','NGA','Oyo & Osun',123300);
INSERT INTO `demo_city` VALUES (2793,'Makurdi','NGA','Benue',123100);
INSERT INTO `demo_city` VALUES (2794,'Lafia','NGA','Plateau & Nassarawa',122500);
INSERT INTO `demo_city` VALUES (2795,'Inisa','NGA','Oyo & Osun',119800);
INSERT INTO `demo_city` VALUES (2796,'Shagamu','NGA','Ogun',117200);
INSERT INTO `demo_city` VALUES (2797,'Awka','NGA','Anambra & Enugu & Eb',111200);
INSERT INTO `demo_city` VALUES (2798,'Gombe','NGA','Bauchi & Gombe',107800);
INSERT INTO `demo_city` VALUES (2799,'Igboho','NGA','Oyo & Osun',106800);
INSERT INTO `demo_city` VALUES (2800,'Ejigbo','NGA','Oyo & Osun',105900);
INSERT INTO `demo_city` VALUES (2801,'Agege','NGA','Lagos',105000);
INSERT INTO `demo_city` VALUES (2802,'Ise-Ekiti','NGA','Ondo & Ekiti',103400);
INSERT INTO `demo_city` VALUES (2803,'Ugep','NGA','Cross River',102600);
INSERT INTO `demo_city` VALUES (2804,'Epe','NGA','Lagos',101000);
INSERT INTO `demo_city` VALUES (2805,'Alofi','NIU','',682);
INSERT INTO `demo_city` VALUES (2806,'Kingston','NFK','',800);
INSERT INTO `demo_city` VALUES (2807,'Oslo','NOR','Oslo',508726);
INSERT INTO `demo_city` VALUES (2808,'Bergen','NOR','Hordaland',230948);
INSERT INTO `demo_city` VALUES (2809,'Trondheim','NOR','Sør-Trøndelag',150166);
INSERT INTO `demo_city` VALUES (2810,'Stavanger','NOR','Rogaland',108848);
INSERT INTO `demo_city` VALUES (2811,'Bærum','NOR','Akershus',101340);
INSERT INTO `demo_city` VALUES (2812,'Abidjan','CIV','Abidjan',2500000);
INSERT INTO `demo_city` VALUES (2813,'Bouaké','CIV','Bouaké',329850);
INSERT INTO `demo_city` VALUES (2814,'Yamoussoukro','CIV','Yamoussoukro',130000);
INSERT INTO `demo_city` VALUES (2815,'Daloa','CIV','Daloa',121842);
INSERT INTO `demo_city` VALUES (2816,'Korhogo','CIV','Korhogo',109445);
INSERT INTO `demo_city` VALUES (2817,'al-Sib','OMN','Masqat',155000);
INSERT INTO `demo_city` VALUES (2818,'Salala','OMN','Zufar',131813);
INSERT INTO `demo_city` VALUES (2819,'Bawshar','OMN','Masqat',107500);
INSERT INTO `demo_city` VALUES (2820,'Suhar','OMN','al-Batina',90814);
INSERT INTO `demo_city` VALUES (2821,'Masqat','OMN','Masqat',51969);
INSERT INTO `demo_city` VALUES (2822,'Karachi','PAK','Sindh',9269265);
INSERT INTO `demo_city` VALUES (2823,'Lahore','PAK','Punjab',5063499);
INSERT INTO `demo_city` VALUES (2824,'Faisalabad','PAK','Punjab',1977246);
INSERT INTO `demo_city` VALUES (2825,'Rawalpindi','PAK','Punjab',1406214);
INSERT INTO `demo_city` VALUES (2826,'Multan','PAK','Punjab',1182441);
INSERT INTO `demo_city` VALUES (2827,'Hyderabad','PAK','Sindh',1151274);
INSERT INTO `demo_city` VALUES (2828,'Gujranwala','PAK','Punjab',1124749);
INSERT INTO `demo_city` VALUES (2829,'Peshawar','PAK','Nothwest Border Prov',988005);
INSERT INTO `demo_city` VALUES (2830,'Quetta','PAK','Baluchistan',560307);
INSERT INTO `demo_city` VALUES (2831,'Islamabad','PAK','Islamabad',524500);
INSERT INTO `demo_city` VALUES (2832,'Sargodha','PAK','Punjab',455360);
INSERT INTO `demo_city` VALUES (2833,'Sialkot','PAK','Punjab',417597);
INSERT INTO `demo_city` VALUES (2834,'Bahawalpur','PAK','Punjab',403408);
INSERT INTO `demo_city` VALUES (2835,'Sukkur','PAK','Sindh',329176);
INSERT INTO `demo_city` VALUES (2836,'Jhang','PAK','Punjab',292214);
INSERT INTO `demo_city` VALUES (2837,'Sheikhupura','PAK','Punjab',271875);
INSERT INTO `demo_city` VALUES (2838,'Larkana','PAK','Sindh',270366);
INSERT INTO `demo_city` VALUES (2839,'Gujrat','PAK','Punjab',250121);
INSERT INTO `demo_city` VALUES (2840,'Mardan','PAK','Nothwest Border Prov',244511);
INSERT INTO `demo_city` VALUES (2841,'Kasur','PAK','Punjab',241649);
INSERT INTO `demo_city` VALUES (2842,'Rahim Yar Khan','PAK','Punjab',228479);
INSERT INTO `demo_city` VALUES (2843,'Sahiwal','PAK','Punjab',207388);
INSERT INTO `demo_city` VALUES (2844,'Okara','PAK','Punjab',200901);
INSERT INTO `demo_city` VALUES (2845,'Wah','PAK','Punjab',198400);
INSERT INTO `demo_city` VALUES (2846,'Dera Ghazi Khan','PAK','Punjab',188100);
INSERT INTO `demo_city` VALUES (2847,'Mirpur Khas','PAK','Sind',184500);
INSERT INTO `demo_city` VALUES (2848,'Nawabshah','PAK','Sind',183100);
INSERT INTO `demo_city` VALUES (2849,'Mingora','PAK','Nothwest Border Prov',174500);
INSERT INTO `demo_city` VALUES (2850,'Chiniot','PAK','Punjab',169300);
INSERT INTO `demo_city` VALUES (2851,'Kamoke','PAK','Punjab',151000);
INSERT INTO `demo_city` VALUES (2852,'Mandi Burewala','PAK','Punjab',149900);
INSERT INTO `demo_city` VALUES (2853,'Jhelum','PAK','Punjab',145800);
INSERT INTO `demo_city` VALUES (2854,'Sadiqabad','PAK','Punjab',141500);
INSERT INTO `demo_city` VALUES (2855,'Jacobabad','PAK','Sind',137700);
INSERT INTO `demo_city` VALUES (2856,'Shikarpur','PAK','Sind',133300);
INSERT INTO `demo_city` VALUES (2857,'Khanewal','PAK','Punjab',133000);
INSERT INTO `demo_city` VALUES (2858,'Hafizabad','PAK','Punjab',130200);
INSERT INTO `demo_city` VALUES (2859,'Kohat','PAK','Nothwest Border Prov',125300);
INSERT INTO `demo_city` VALUES (2860,'Muzaffargarh','PAK','Punjab',121600);
INSERT INTO `demo_city` VALUES (2861,'Khanpur','PAK','Punjab',117800);
INSERT INTO `demo_city` VALUES (2862,'Gojra','PAK','Punjab',115000);
INSERT INTO `demo_city` VALUES (2863,'Bahawalnagar','PAK','Punjab',109600);
INSERT INTO `demo_city` VALUES (2864,'Muridke','PAK','Punjab',108600);
INSERT INTO `demo_city` VALUES (2865,'Pak Pattan','PAK','Punjab',107800);
INSERT INTO `demo_city` VALUES (2866,'Abottabad','PAK','Nothwest Border Prov',106000);
INSERT INTO `demo_city` VALUES (2867,'Tando Adam','PAK','Sind',103400);
INSERT INTO `demo_city` VALUES (2868,'Jaranwala','PAK','Punjab',103300);
INSERT INTO `demo_city` VALUES (2869,'Khairpur','PAK','Sind',102200);
INSERT INTO `demo_city` VALUES (2870,'Chishtian Mandi','PAK','Punjab',101700);
INSERT INTO `demo_city` VALUES (2871,'Daska','PAK','Punjab',101500);
INSERT INTO `demo_city` VALUES (2872,'Dadu','PAK','Sind',98600);
INSERT INTO `demo_city` VALUES (2873,'Mandi Bahauddin','PAK','Punjab',97300);
INSERT INTO `demo_city` VALUES (2874,'Ahmadpur East','PAK','Punjab',96000);
INSERT INTO `demo_city` VALUES (2875,'Kamalia','PAK','Punjab',95300);
INSERT INTO `demo_city` VALUES (2876,'Khuzdar','PAK','Baluchistan',93100);
INSERT INTO `demo_city` VALUES (2877,'Vihari','PAK','Punjab',92300);
INSERT INTO `demo_city` VALUES (2878,'Dera Ismail Khan','PAK','Nothwest Border Prov',90400);
INSERT INTO `demo_city` VALUES (2879,'Wazirabad','PAK','Punjab',89700);
INSERT INTO `demo_city` VALUES (2880,'Nowshera','PAK','Nothwest Border Prov',89400);
INSERT INTO `demo_city` VALUES (2881,'Koror','PLW','Koror',12000);
INSERT INTO `demo_city` VALUES (2882,'Ciudad de Panamá','PAN','Panamá',471373);
INSERT INTO `demo_city` VALUES (2883,'San Miguelito','PAN','San Miguelito',315382);
INSERT INTO `demo_city` VALUES (2884,'Port Moresby','PNG','National Capital Dis',247000);
INSERT INTO `demo_city` VALUES (2885,'Asunción','PRY','Asunción',557776);
INSERT INTO `demo_city` VALUES (2886,'Ciudad del Este','PRY','Alto Paraná',133881);
INSERT INTO `demo_city` VALUES (2887,'San Lorenzo','PRY','Central',133395);
INSERT INTO `demo_city` VALUES (2888,'Lambaré','PRY','Central',99681);
INSERT INTO `demo_city` VALUES (2889,'Fernando de la Mora','PRY','Central',95287);
INSERT INTO `demo_city` VALUES (2890,'Lima','PER','Lima',6464693);
INSERT INTO `demo_city` VALUES (2891,'Arequipa','PER','Arequipa',762000);
INSERT INTO `demo_city` VALUES (2892,'Trujillo','PER','La Libertad',652000);
INSERT INTO `demo_city` VALUES (2893,'Chiclayo','PER','Lambayeque',517000);
INSERT INTO `demo_city` VALUES (2894,'Callao','PER','Callao',424294);
INSERT INTO `demo_city` VALUES (2895,'Iquitos','PER','Loreto',367000);
INSERT INTO `demo_city` VALUES (2896,'Chimbote','PER','Ancash',336000);
INSERT INTO `demo_city` VALUES (2897,'Huancayo','PER','Junín',327000);
INSERT INTO `demo_city` VALUES (2898,'Piura','PER','Piura',325000);
INSERT INTO `demo_city` VALUES (2899,'Cusco','PER','Cusco',291000);
INSERT INTO `demo_city` VALUES (2900,'Pucallpa','PER','Ucayali',220866);
INSERT INTO `demo_city` VALUES (2901,'Tacna','PER','Tacna',215683);
INSERT INTO `demo_city` VALUES (2902,'Ica','PER','Ica',194820);
INSERT INTO `demo_city` VALUES (2903,'Sullana','PER','Piura',147361);
INSERT INTO `demo_city` VALUES (2904,'Juliaca','PER','Puno',142576);
INSERT INTO `demo_city` VALUES (2905,'Huánuco','PER','Huanuco',129688);
INSERT INTO `demo_city` VALUES (2906,'Ayacucho','PER','Ayacucho',118960);
INSERT INTO `demo_city` VALUES (2907,'Chincha Alta','PER','Ica',110016);
INSERT INTO `demo_city` VALUES (2908,'Cajamarca','PER','Cajamarca',108009);
INSERT INTO `demo_city` VALUES (2909,'Puno','PER','Puno',101578);
INSERT INTO `demo_city` VALUES (2910,'Ventanilla','PER','Callao',101056);
INSERT INTO `demo_city` VALUES (2911,'Castilla','PER','Piura',90642);
INSERT INTO `demo_city` VALUES (2912,'Adamstown','PCN','',42);
INSERT INTO `demo_city` VALUES (2913,'Garapan','MNP','Saipan',9200);
INSERT INTO `demo_city` VALUES (2914,'Lisboa','PRT','Lisboa',563210);
INSERT INTO `demo_city` VALUES (2915,'Porto','PRT','Porto',273060);
INSERT INTO `demo_city` VALUES (2916,'Amadora','PRT','Lisboa',122106);
INSERT INTO `demo_city` VALUES (2917,'Coímbra','PRT','Coímbra',96100);
INSERT INTO `demo_city` VALUES (2918,'Braga','PRT','Braga',90535);
INSERT INTO `demo_city` VALUES (2919,'San Juan','PRI','San Juan',434374);
INSERT INTO `demo_city` VALUES (2920,'Bayamón','PRI','Bayamón',224044);
INSERT INTO `demo_city` VALUES (2921,'Ponce','PRI','Ponce',186475);
INSERT INTO `demo_city` VALUES (2922,'Carolina','PRI','Carolina',186076);
INSERT INTO `demo_city` VALUES (2923,'Caguas','PRI','Caguas',140502);
INSERT INTO `demo_city` VALUES (2924,'Arecibo','PRI','Arecibo',100131);
INSERT INTO `demo_city` VALUES (2925,'Guaynabo','PRI','Guaynabo',100053);
INSERT INTO `demo_city` VALUES (2926,'Mayagüez','PRI','Mayagüez',98434);
INSERT INTO `demo_city` VALUES (2927,'Toa Baja','PRI','Toa Baja',94085);
INSERT INTO `demo_city` VALUES (2928,'Warszawa','POL','Mazowieckie',1615369);
INSERT INTO `demo_city` VALUES (2929,'Lódz','POL','Lodzkie',800110);
INSERT INTO `demo_city` VALUES (2930,'Kraków','POL','Malopolskie',738150);
INSERT INTO `demo_city` VALUES (2931,'Wroclaw','POL','Dolnoslaskie',636765);
INSERT INTO `demo_city` VALUES (2932,'Poznan','POL','Wielkopolskie',576899);
INSERT INTO `demo_city` VALUES (2933,'Gdansk','POL','Pomorskie',458988);
INSERT INTO `demo_city` VALUES (2934,'Szczecin','POL','Zachodnio-Pomorskie',416988);
INSERT INTO `demo_city` VALUES (2935,'Bydgoszcz','POL','Kujawsko-Pomorskie',386855);
INSERT INTO `demo_city` VALUES (2936,'Lublin','POL','Lubelskie',356251);
INSERT INTO `demo_city` VALUES (2937,'Katowice','POL','Slaskie',345934);
INSERT INTO `demo_city` VALUES (2938,'Bialystok','POL','Podlaskie',283937);
INSERT INTO `demo_city` VALUES (2939,'Czestochowa','POL','Slaskie',257812);
INSERT INTO `demo_city` VALUES (2940,'Gdynia','POL','Pomorskie',253521);
INSERT INTO `demo_city` VALUES (2941,'Sosnowiec','POL','Slaskie',244102);
INSERT INTO `demo_city` VALUES (2942,'Radom','POL','Mazowieckie',232262);
INSERT INTO `demo_city` VALUES (2943,'Kielce','POL','Swietokrzyskie',212383);
INSERT INTO `demo_city` VALUES (2944,'Gliwice','POL','Slaskie',212164);
INSERT INTO `demo_city` VALUES (2945,'Torun','POL','Kujawsko-Pomorskie',206158);
INSERT INTO `demo_city` VALUES (2946,'Bytom','POL','Slaskie',205560);
INSERT INTO `demo_city` VALUES (2947,'Zabrze','POL','Slaskie',200177);
INSERT INTO `demo_city` VALUES (2948,'Bielsko-Biala','POL','Slaskie',180307);
INSERT INTO `demo_city` VALUES (2949,'Olsztyn','POL','Warminsko-Mazurskie',170904);
INSERT INTO `demo_city` VALUES (2950,'Rzeszów','POL','Podkarpackie',162049);
INSERT INTO `demo_city` VALUES (2951,'Ruda Slaska','POL','Slaskie',159665);
INSERT INTO `demo_city` VALUES (2952,'Rybnik','POL','Slaskie',144582);
INSERT INTO `demo_city` VALUES (2953,'Walbrzych','POL','Dolnoslaskie',136923);
INSERT INTO `demo_city` VALUES (2954,'Tychy','POL','Slaskie',133178);
INSERT INTO `demo_city` VALUES (2955,'Dabrowa Górnicza','POL','Slaskie',131037);
INSERT INTO `demo_city` VALUES (2956,'Plock','POL','Mazowieckie',131011);
INSERT INTO `demo_city` VALUES (2957,'Elblag','POL','Warminsko-Mazurskie',129782);
INSERT INTO `demo_city` VALUES (2958,'Opole','POL','Opolskie',129553);
INSERT INTO `demo_city` VALUES (2959,'Gorzów Wielkopolski','POL','Lubuskie',126019);
INSERT INTO `demo_city` VALUES (2960,'Wloclawek','POL','Kujawsko-Pomorskie',123373);
INSERT INTO `demo_city` VALUES (2961,'Chorzów','POL','Slaskie',121708);
INSERT INTO `demo_city` VALUES (2962,'Tarnów','POL','Malopolskie',121494);
INSERT INTO `demo_city` VALUES (2963,'Zielona Góra','POL','Lubuskie',118182);
INSERT INTO `demo_city` VALUES (2964,'Koszalin','POL','Zachodnio-Pomorskie',112375);
INSERT INTO `demo_city` VALUES (2965,'Legnica','POL','Dolnoslaskie',109335);
INSERT INTO `demo_city` VALUES (2966,'Kalisz','POL','Wielkopolskie',106641);
INSERT INTO `demo_city` VALUES (2967,'Grudziadz','POL','Kujawsko-Pomorskie',102434);
INSERT INTO `demo_city` VALUES (2968,'Slupsk','POL','Pomorskie',102370);
INSERT INTO `demo_city` VALUES (2969,'Jastrzebie-Zdrój','POL','Slaskie',102294);
INSERT INTO `demo_city` VALUES (2970,'Jaworzno','POL','Slaskie',97929);
INSERT INTO `demo_city` VALUES (2971,'Jelenia Góra','POL','Dolnoslaskie',93901);
INSERT INTO `demo_city` VALUES (2972,'Malabo','GNQ','Bioko',40000);
INSERT INTO `demo_city` VALUES (2973,'Doha','QAT','Doha',355000);
INSERT INTO `demo_city` VALUES (2974,'Paris','FRA','Île-de-France',2125246);
INSERT INTO `demo_city` VALUES (2975,'Marseille','FRA','Provence-Alpes-Côte',798430);
INSERT INTO `demo_city` VALUES (2976,'Lyon','FRA','Rhône-Alpes',445452);
INSERT INTO `demo_city` VALUES (2977,'Toulouse','FRA','Midi-Pyrénées',390350);
INSERT INTO `demo_city` VALUES (2978,'Nice','FRA','Provence-Alpes-Côte',342738);
INSERT INTO `demo_city` VALUES (2979,'Nantes','FRA','Pays de la Loire',270251);
INSERT INTO `demo_city` VALUES (2980,'Strasbourg','FRA','Alsace',264115);
INSERT INTO `demo_city` VALUES (2981,'Montpellier','FRA','Languedoc-Roussillon',225392);
INSERT INTO `demo_city` VALUES (2982,'Bordeaux','FRA','Aquitaine',215363);
INSERT INTO `demo_city` VALUES (2983,'Rennes','FRA','Haute-Normandie',206229);
INSERT INTO `demo_city` VALUES (2984,'Le Havre','FRA','Champagne-Ardenne',190905);
INSERT INTO `demo_city` VALUES (2985,'Reims','FRA','Nord-Pas-de-Calais',187206);
INSERT INTO `demo_city` VALUES (2986,'Lille','FRA','Rhône-Alpes',184657);
INSERT INTO `demo_city` VALUES (2987,'St-Étienne','FRA','Bretagne',180210);
INSERT INTO `demo_city` VALUES (2988,'Toulon','FRA','Provence-Alpes-Côte',160639);
INSERT INTO `demo_city` VALUES (2989,'Grenoble','FRA','Rhône-Alpes',153317);
INSERT INTO `demo_city` VALUES (2990,'Angers','FRA','Pays de la Loire',151279);
INSERT INTO `demo_city` VALUES (2991,'Dijon','FRA','Bourgogne',149867);
INSERT INTO `demo_city` VALUES (2992,'Brest','FRA','Bretagne',149634);
INSERT INTO `demo_city` VALUES (2993,'Le Mans','FRA','Pays de la Loire',146105);
INSERT INTO `demo_city` VALUES (2994,'Clermont-Ferrand','FRA','Auvergne',137140);
INSERT INTO `demo_city` VALUES (2995,'Amiens','FRA','Picardie',135501);
INSERT INTO `demo_city` VALUES (2996,'Aix-en-Provence','FRA','Provence-Alpes-Côte',134222);
INSERT INTO `demo_city` VALUES (2997,'Limoges','FRA','Limousin',133968);
INSERT INTO `demo_city` VALUES (2998,'Nîmes','FRA','Languedoc-Roussillon',133424);
INSERT INTO `demo_city` VALUES (2999,'Tours','FRA','Centre',132820);

DELIMITER ;

INSERT INTO `demo_city` VALUES (3000,'Villeurbanne','FRA','Rhône-Alpes',124215);
INSERT INTO `demo_city` VALUES (3001,'Metz','FRA','Lorraine',123776);
INSERT INTO `demo_city` VALUES (3002,'Besançon','FRA','Franche-Comté',117733);
INSERT INTO `demo_city` VALUES (3003,'Caen','FRA','Basse-Normandie',113987);
INSERT INTO `demo_city` VALUES (3004,'Orléans','FRA','Centre',113126);
INSERT INTO `demo_city` VALUES (3005,'Mulhouse','FRA','Alsace',110359);
INSERT INTO `demo_city` VALUES (3006,'Rouen','FRA','Haute-Normandie',106592);
INSERT INTO `demo_city` VALUES (3007,'Boulogne-Billancourt','FRA','Île-de-France',106367);
INSERT INTO `demo_city` VALUES (3008,'Perpignan','FRA','Languedoc-Roussillon',105115);
INSERT INTO `demo_city` VALUES (3009,'Nancy','FRA','Lorraine',103605);
INSERT INTO `demo_city` VALUES (3010,'Roubaix','FRA','Nord-Pas-de-Calais',96984);
INSERT INTO `demo_city` VALUES (3011,'Argenteuil','FRA','Île-de-France',93961);
INSERT INTO `demo_city` VALUES (3012,'Tourcoing','FRA','Nord-Pas-de-Calais',93540);
INSERT INTO `demo_city` VALUES (3013,'Montreuil','FRA','Île-de-France',90674);
INSERT INTO `demo_city` VALUES (3014,'Cayenne','GUF','Cayenne',50699);
INSERT INTO `demo_city` VALUES (3015,'Faaa','PYF','Tahiti',25888);
INSERT INTO `demo_city` VALUES (3016,'Papeete','PYF','Tahiti',25553);
INSERT INTO `demo_city` VALUES (3017,'Saint-Denis','REU','Saint-Denis',131480);
INSERT INTO `demo_city` VALUES (3018,'Bucuresti','ROM','Bukarest',2016131);
INSERT INTO `demo_city` VALUES (3019,'Iasi','ROM','Iasi',348070);
INSERT INTO `demo_city` VALUES (3020,'Constanta','ROM','Constanta',342264);
INSERT INTO `demo_city` VALUES (3021,'Cluj-Napoca','ROM','Cluj',332498);
INSERT INTO `demo_city` VALUES (3022,'Galati','ROM','Galati',330276);
INSERT INTO `demo_city` VALUES (3023,'Timisoara','ROM','Timis',324304);
INSERT INTO `demo_city` VALUES (3024,'Brasov','ROM','Brasov',314225);
INSERT INTO `demo_city` VALUES (3025,'Craiova','ROM','Dolj',313530);
INSERT INTO `demo_city` VALUES (3026,'Ploiesti','ROM','Prahova',251348);
INSERT INTO `demo_city` VALUES (3027,'Braila','ROM','Braila',233756);
INSERT INTO `demo_city` VALUES (3028,'Oradea','ROM','Bihor',222239);
INSERT INTO `demo_city` VALUES (3029,'Bacau','ROM','Bacau',209235);
INSERT INTO `demo_city` VALUES (3030,'Pitesti','ROM','Arges',187170);
INSERT INTO `demo_city` VALUES (3031,'Arad','ROM','Arad',184408);
INSERT INTO `demo_city` VALUES (3032,'Sibiu','ROM','Sibiu',169611);
INSERT INTO `demo_city` VALUES (3033,'Târgu Mures','ROM','Mures',165153);
INSERT INTO `demo_city` VALUES (3034,'Baia Mare','ROM','Maramures',149665);
INSERT INTO `demo_city` VALUES (3035,'Buzau','ROM','Buzau',148372);
INSERT INTO `demo_city` VALUES (3036,'Satu Mare','ROM','Satu Mare',130059);
INSERT INTO `demo_city` VALUES (3037,'Botosani','ROM','Botosani',128730);
INSERT INTO `demo_city` VALUES (3038,'Piatra Neamt','ROM','Neamt',125070);
INSERT INTO `demo_city` VALUES (3039,'Râmnicu Vâlcea','ROM','Vâlcea',119741);
INSERT INTO `demo_city` VALUES (3040,'Suceava','ROM','Suceava',118549);
INSERT INTO `demo_city` VALUES (3041,'Drobeta-Turnu Severin','ROM','Mehedinti',117865);
INSERT INTO `demo_city` VALUES (3042,'Târgoviste','ROM','Dâmbovita',98980);
INSERT INTO `demo_city` VALUES (3043,'Focsani','ROM','Vrancea',98979);
INSERT INTO `demo_city` VALUES (3044,'Târgu Jiu','ROM','Gorj',98524);
INSERT INTO `demo_city` VALUES (3045,'Tulcea','ROM','Tulcea',96278);
INSERT INTO `demo_city` VALUES (3046,'Resita','ROM','Caras-Severin',93976);
INSERT INTO `demo_city` VALUES (3047,'Kigali','RWA','Kigali',286000);
INSERT INTO `demo_city` VALUES (3048,'Stockholm','SWE','Lisboa',750348);
INSERT INTO `demo_city` VALUES (3049,'Gothenburg [Göteborg]','SWE','West Götanmaan län',466990);
INSERT INTO `demo_city` VALUES (3050,'Malmö','SWE','Skåne län',259579);
INSERT INTO `demo_city` VALUES (3051,'Uppsala','SWE','Uppsala län',189569);
INSERT INTO `demo_city` VALUES (3052,'Linköping','SWE','East Götanmaan län',133168);
INSERT INTO `demo_city` VALUES (3053,'Västerås','SWE','Västmanlands län',126328);
INSERT INTO `demo_city` VALUES (3054,'Örebro','SWE','Örebros län',124207);
INSERT INTO `demo_city` VALUES (3055,'Norrköping','SWE','East Götanmaan län',122199);
INSERT INTO `demo_city` VALUES (3056,'Helsingborg','SWE','Skåne län',117737);
INSERT INTO `demo_city` VALUES (3057,'Jönköping','SWE','Jönköpings län',117095);
INSERT INTO `demo_city` VALUES (3058,'Umeå','SWE','Västerbottens län',104512);
INSERT INTO `demo_city` VALUES (3059,'Lund','SWE','Skåne län',98948);
INSERT INTO `demo_city` VALUES (3060,'Borås','SWE','West Götanmaan län',96883);
INSERT INTO `demo_city` VALUES (3061,'Sundsvall','SWE','Västernorrlands län',93126);
INSERT INTO `demo_city` VALUES (3062,'Gävle','SWE','Gävleborgs län',90742);
INSERT INTO `demo_city` VALUES (3063,'Jamestown','SHN','Saint Helena',1500);
INSERT INTO `demo_city` VALUES (3064,'Basseterre','KNA','St George Basseterre',11600);
INSERT INTO `demo_city` VALUES (3065,'Castries','LCA','Castries',2301);
INSERT INTO `demo_city` VALUES (3066,'Kingstown','VCT','St George',17100);
INSERT INTO `demo_city` VALUES (3067,'Saint-Pierre','SPM','Saint-Pierre',5808);
INSERT INTO `demo_city` VALUES (3068,'Berlin','DEU','Berliini',3386667);
INSERT INTO `demo_city` VALUES (3069,'Hamburg','DEU','Hamburg',1704735);
INSERT INTO `demo_city` VALUES (3070,'Munich [München]','DEU','Baijeri',1194560);
INSERT INTO `demo_city` VALUES (3071,'Köln','DEU','Nordrhein-Westfalen',962507);
INSERT INTO `demo_city` VALUES (3072,'Frankfurt am Main','DEU','Hessen',643821);
INSERT INTO `demo_city` VALUES (3073,'Essen','DEU','Nordrhein-Westfalen',599515);
INSERT INTO `demo_city` VALUES (3074,'Dortmund','DEU','Nordrhein-Westfalen',590213);
INSERT INTO `demo_city` VALUES (3075,'Stuttgart','DEU','Baden-Württemberg',582443);
INSERT INTO `demo_city` VALUES (3076,'Düsseldorf','DEU','Nordrhein-Westfalen',568855);
INSERT INTO `demo_city` VALUES (3077,'Bremen','DEU','Bremen',540330);
INSERT INTO `demo_city` VALUES (3078,'Duisburg','DEU','Nordrhein-Westfalen',519793);
INSERT INTO `demo_city` VALUES (3079,'Hannover','DEU','Niedersachsen',514718);
INSERT INTO `demo_city` VALUES (3080,'Leipzig','DEU','Saksi',489532);
INSERT INTO `demo_city` VALUES (3081,'Nürnberg','DEU','Baijeri',486628);
INSERT INTO `demo_city` VALUES (3082,'Dresden','DEU','Saksi',476668);
INSERT INTO `demo_city` VALUES (3083,'Bochum','DEU','Nordrhein-Westfalen',392830);
INSERT INTO `demo_city` VALUES (3084,'Wuppertal','DEU','Nordrhein-Westfalen',368993);
INSERT INTO `demo_city` VALUES (3085,'Bielefeld','DEU','Nordrhein-Westfalen',321125);
INSERT INTO `demo_city` VALUES (3086,'Mannheim','DEU','Baden-Württemberg',307730);
INSERT INTO `demo_city` VALUES (3087,'Bonn','DEU','Nordrhein-Westfalen',301048);
INSERT INTO `demo_city` VALUES (3088,'Gelsenkirchen','DEU','Nordrhein-Westfalen',281979);
INSERT INTO `demo_city` VALUES (3089,'Karlsruhe','DEU','Baden-Württemberg',277204);
INSERT INTO `demo_city` VALUES (3090,'Wiesbaden','DEU','Hessen',268716);
INSERT INTO `demo_city` VALUES (3091,'Münster','DEU','Nordrhein-Westfalen',264670);
INSERT INTO `demo_city` VALUES (3092,'Mönchengladbach','DEU','Nordrhein-Westfalen',263697);
INSERT INTO `demo_city` VALUES (3093,'Chemnitz','DEU','Saksi',263222);
INSERT INTO `demo_city` VALUES (3094,'Augsburg','DEU','Baijeri',254867);
INSERT INTO `demo_city` VALUES (3095,'Halle/Saale','DEU','Anhalt Sachsen',254360);
INSERT INTO `demo_city` VALUES (3096,'Braunschweig','DEU','Niedersachsen',246322);
INSERT INTO `demo_city` VALUES (3097,'Aachen','DEU','Nordrhein-Westfalen',243825);
INSERT INTO `demo_city` VALUES (3098,'Krefeld','DEU','Nordrhein-Westfalen',241769);
INSERT INTO `demo_city` VALUES (3099,'Magdeburg','DEU','Anhalt Sachsen',235073);
INSERT INTO `demo_city` VALUES (3100,'Kiel','DEU','Schleswig-Holstein',233795);
INSERT INTO `demo_city` VALUES (3101,'Oberhausen','DEU','Nordrhein-Westfalen',222349);
INSERT INTO `demo_city` VALUES (3102,'Lübeck','DEU','Schleswig-Holstein',213326);
INSERT INTO `demo_city` VALUES (3103,'Hagen','DEU','Nordrhein-Westfalen',205201);
INSERT INTO `demo_city` VALUES (3104,'Rostock','DEU','Mecklenburg-Vorpomme',203279);
INSERT INTO `demo_city` VALUES (3105,'Freiburg im Breisgau','DEU','Baden-Württemberg',202455);
INSERT INTO `demo_city` VALUES (3106,'Erfurt','DEU','Thüringen',201267);
INSERT INTO `demo_city` VALUES (3107,'Kassel','DEU','Hessen',196211);
INSERT INTO `demo_city` VALUES (3108,'Saarbrücken','DEU','Saarland',183836);
INSERT INTO `demo_city` VALUES (3109,'Mainz','DEU','Rheinland-Pfalz',183134);
INSERT INTO `demo_city` VALUES (3110,'Hamm','DEU','Nordrhein-Westfalen',181804);
INSERT INTO `demo_city` VALUES (3111,'Herne','DEU','Nordrhein-Westfalen',175661);
INSERT INTO `demo_city` VALUES (3112,'Mülheim an der Ruhr','DEU','Nordrhein-Westfalen',173895);
INSERT INTO `demo_city` VALUES (3113,'Solingen','DEU','Nordrhein-Westfalen',165583);
INSERT INTO `demo_city` VALUES (3114,'Osnabrück','DEU','Niedersachsen',164539);
INSERT INTO `demo_city` VALUES (3115,'Ludwigshafen am Rhein','DEU','Rheinland-Pfalz',163771);
INSERT INTO `demo_city` VALUES (3116,'Leverkusen','DEU','Nordrhein-Westfalen',160841);
INSERT INTO `demo_city` VALUES (3117,'Oldenburg','DEU','Niedersachsen',154125);
INSERT INTO `demo_city` VALUES (3118,'Neuss','DEU','Nordrhein-Westfalen',149702);
INSERT INTO `demo_city` VALUES (3119,'Heidelberg','DEU','Baden-Württemberg',139672);
INSERT INTO `demo_city` VALUES (3120,'Darmstadt','DEU','Hessen',137776);
INSERT INTO `demo_city` VALUES (3121,'Paderborn','DEU','Nordrhein-Westfalen',137647);
INSERT INTO `demo_city` VALUES (3122,'Potsdam','DEU','Brandenburg',128983);
INSERT INTO `demo_city` VALUES (3123,'Würzburg','DEU','Baijeri',127350);
INSERT INTO `demo_city` VALUES (3124,'Regensburg','DEU','Baijeri',125236);
INSERT INTO `demo_city` VALUES (3125,'Recklinghausen','DEU','Nordrhein-Westfalen',125022);
INSERT INTO `demo_city` VALUES (3126,'Göttingen','DEU','Niedersachsen',124775);
INSERT INTO `demo_city` VALUES (3127,'Bremerhaven','DEU','Bremen',122735);
INSERT INTO `demo_city` VALUES (3128,'Wolfsburg','DEU','Niedersachsen',121954);
INSERT INTO `demo_city` VALUES (3129,'Bottrop','DEU','Nordrhein-Westfalen',121097);
INSERT INTO `demo_city` VALUES (3130,'Remscheid','DEU','Nordrhein-Westfalen',120125);
INSERT INTO `demo_city` VALUES (3131,'Heilbronn','DEU','Baden-Württemberg',119526);
INSERT INTO `demo_city` VALUES (3132,'Pforzheim','DEU','Baden-Württemberg',117227);
INSERT INTO `demo_city` VALUES (3133,'Offenbach am Main','DEU','Hessen',116627);
INSERT INTO `demo_city` VALUES (3134,'Ulm','DEU','Baden-Württemberg',116103);
INSERT INTO `demo_city` VALUES (3135,'Ingolstadt','DEU','Baijeri',114826);
INSERT INTO `demo_city` VALUES (3136,'Gera','DEU','Thüringen',114718);
INSERT INTO `demo_city` VALUES (3137,'Salzgitter','DEU','Niedersachsen',112934);
INSERT INTO `demo_city` VALUES (3138,'Cottbus','DEU','Brandenburg',110894);
INSERT INTO `demo_city` VALUES (3139,'Reutlingen','DEU','Baden-Württemberg',110343);
INSERT INTO `demo_city` VALUES (3140,'Fürth','DEU','Baijeri',109771);
INSERT INTO `demo_city` VALUES (3141,'Siegen','DEU','Nordrhein-Westfalen',109225);
INSERT INTO `demo_city` VALUES (3142,'Koblenz','DEU','Rheinland-Pfalz',108003);
INSERT INTO `demo_city` VALUES (3143,'Moers','DEU','Nordrhein-Westfalen',106837);
INSERT INTO `demo_city` VALUES (3144,'Bergisch Gladbach','DEU','Nordrhein-Westfalen',106150);
INSERT INTO `demo_city` VALUES (3145,'Zwickau','DEU','Saksi',104146);
INSERT INTO `demo_city` VALUES (3146,'Hildesheim','DEU','Niedersachsen',104013);
INSERT INTO `demo_city` VALUES (3147,'Witten','DEU','Nordrhein-Westfalen',103384);
INSERT INTO `demo_city` VALUES (3148,'Schwerin','DEU','Mecklenburg-Vorpomme',102878);
INSERT INTO `demo_city` VALUES (3149,'Erlangen','DEU','Baijeri',100750);
INSERT INTO `demo_city` VALUES (3150,'Kaiserslautern','DEU','Rheinland-Pfalz',100025);
INSERT INTO `demo_city` VALUES (3151,'Trier','DEU','Rheinland-Pfalz',99891);
INSERT INTO `demo_city` VALUES (3152,'Jena','DEU','Thüringen',99779);
INSERT INTO `demo_city` VALUES (3153,'Iserlohn','DEU','Nordrhein-Westfalen',99474);
INSERT INTO `demo_city` VALUES (3154,'Gütersloh','DEU','Nordrhein-Westfalen',95028);
INSERT INTO `demo_city` VALUES (3155,'Marl','DEU','Nordrhein-Westfalen',93735);
INSERT INTO `demo_city` VALUES (3156,'Lünen','DEU','Nordrhein-Westfalen',92044);
INSERT INTO `demo_city` VALUES (3157,'Düren','DEU','Nordrhein-Westfalen',91092);
INSERT INTO `demo_city` VALUES (3158,'Ratingen','DEU','Nordrhein-Westfalen',90951);
INSERT INTO `demo_city` VALUES (3159,'Velbert','DEU','Nordrhein-Westfalen',89881);
INSERT INTO `demo_city` VALUES (3160,'Esslingen am Neckar','DEU','Baden-Württemberg',89667);
INSERT INTO `demo_city` VALUES (3161,'Honiara','SLB','Honiara',50100);
INSERT INTO `demo_city` VALUES (3162,'Lusaka','ZMB','Lusaka',1317000);
INSERT INTO `demo_city` VALUES (3163,'Ndola','ZMB','Copperbelt',329200);
INSERT INTO `demo_city` VALUES (3164,'Kitwe','ZMB','Copperbelt',288600);
INSERT INTO `demo_city` VALUES (3165,'Kabwe','ZMB','Central',154300);
INSERT INTO `demo_city` VALUES (3166,'Chingola','ZMB','Copperbelt',142400);
INSERT INTO `demo_city` VALUES (3167,'Mufulira','ZMB','Copperbelt',123900);
INSERT INTO `demo_city` VALUES (3168,'Luanshya','ZMB','Copperbelt',118100);
INSERT INTO `demo_city` VALUES (3169,'Apia','WSM','Upolu',35900);
INSERT INTO `demo_city` VALUES (3170,'Serravalle','SMR','Serravalle/Dogano',4802);
INSERT INTO `demo_city` VALUES (3171,'San Marino','SMR','San Marino',2294);
INSERT INTO `demo_city` VALUES (3172,'São Tomé','STP','Aqua Grande',49541);
INSERT INTO `demo_city` VALUES (3173,'Riyadh','SAU','Riyadh',3324000);
INSERT INTO `demo_city` VALUES (3174,'Jedda','SAU','Mekka',2046300);
INSERT INTO `demo_city` VALUES (3175,'Mekka','SAU','Mekka',965700);
INSERT INTO `demo_city` VALUES (3176,'Medina','SAU','Medina',608300);
INSERT INTO `demo_city` VALUES (3177,'al-Dammam','SAU','al-Sharqiya',482300);
INSERT INTO `demo_city` VALUES (3178,'al-Taif','SAU','Mekka',416100);
INSERT INTO `demo_city` VALUES (3179,'Tabuk','SAU','Tabuk',292600);
INSERT INTO `demo_city` VALUES (3180,'Burayda','SAU','al-Qasim',248600);
INSERT INTO `demo_city` VALUES (3181,'al-Hufuf','SAU','al-Sharqiya',225800);
INSERT INTO `demo_city` VALUES (3182,'al-Mubarraz','SAU','al-Sharqiya',219100);
INSERT INTO `demo_city` VALUES (3183,'Khamis Mushayt','SAU','Asir',217900);
INSERT INTO `demo_city` VALUES (3184,'Hail','SAU','Hail',176800);
INSERT INTO `demo_city` VALUES (3185,'al-Kharj','SAU','Riad',152100);
INSERT INTO `demo_city` VALUES (3186,'al-Khubar','SAU','al-Sharqiya',141700);
INSERT INTO `demo_city` VALUES (3187,'Jubayl','SAU','al-Sharqiya',140800);
INSERT INTO `demo_city` VALUES (3188,'Hafar al-Batin','SAU','al-Sharqiya',137800);
INSERT INTO `demo_city` VALUES (3189,'al-Tuqba','SAU','al-Sharqiya',125700);
INSERT INTO `demo_city` VALUES (3190,'Yanbu','SAU','Medina',119800);
INSERT INTO `demo_city` VALUES (3191,'Abha','SAU','Asir',112300);
INSERT INTO `demo_city` VALUES (3192,'Ara´ar','SAU','al-Khudud al-Samaliy',108100);
INSERT INTO `demo_city` VALUES (3193,'al-Qatif','SAU','al-Sharqiya',98900);
INSERT INTO `demo_city` VALUES (3194,'al-Hawiya','SAU','Mekka',93900);
INSERT INTO `demo_city` VALUES (3195,'Unayza','SAU','Qasim',91100);
INSERT INTO `demo_city` VALUES (3196,'Najran','SAU','Najran',91000);
INSERT INTO `demo_city` VALUES (3197,'Pikine','SEN','Cap-Vert',855287);
INSERT INTO `demo_city` VALUES (3198,'Dakar','SEN','Cap-Vert',785071);
INSERT INTO `demo_city` VALUES (3199,'Thiès','SEN','Thiès',248000);
INSERT INTO `demo_city` VALUES (3200,'Kaolack','SEN','Kaolack',199000);
INSERT INTO `demo_city` VALUES (3201,'Ziguinchor','SEN','Ziguinchor',192000);
INSERT INTO `demo_city` VALUES (3202,'Rufisque','SEN','Cap-Vert',150000);
INSERT INTO `demo_city` VALUES (3203,'Saint-Louis','SEN','Saint-Louis',132400);
INSERT INTO `demo_city` VALUES (3204,'Mbour','SEN','Thiès',109300);
INSERT INTO `demo_city` VALUES (3205,'Diourbel','SEN','Diourbel',99400);
INSERT INTO `demo_city` VALUES (3206,'Victoria','SYC','Mahé',41000);
INSERT INTO `demo_city` VALUES (3207,'Freetown','SLE','Western',850000);
INSERT INTO `demo_city` VALUES (3208,'Singapore','SGP','',4017733);
INSERT INTO `demo_city` VALUES (3209,'Bratislava','SVK','Bratislava',448292);
INSERT INTO `demo_city` VALUES (3210,'Košice','SVK','Východné Slovensko',241874);
INSERT INTO `demo_city` VALUES (3211,'Prešov','SVK','Východné Slovensko',93977);
INSERT INTO `demo_city` VALUES (3212,'Ljubljana','SVN','Osrednjeslovenska',270986);
INSERT INTO `demo_city` VALUES (3213,'Maribor','SVN','Podravska',115532);
INSERT INTO `demo_city` VALUES (3214,'Mogadishu','SOM','Banaadir',997000);
INSERT INTO `demo_city` VALUES (3215,'Hargeysa','SOM','Woqooyi Galbeed',90000);
INSERT INTO `demo_city` VALUES (3216,'Kismaayo','SOM','Jubbada Hoose',90000);
INSERT INTO `demo_city` VALUES (3217,'Colombo','LKA','Western',645000);
INSERT INTO `demo_city` VALUES (3218,'Dehiwala','LKA','Western',203000);
INSERT INTO `demo_city` VALUES (3219,'Moratuwa','LKA','Western',190000);
INSERT INTO `demo_city` VALUES (3220,'Jaffna','LKA','Northern',149000);
INSERT INTO `demo_city` VALUES (3221,'Kandy','LKA','Central',140000);
INSERT INTO `demo_city` VALUES (3222,'Sri Jayawardenepura Kotte','LKA','Western',118000);
INSERT INTO `demo_city` VALUES (3223,'Negombo','LKA','Western',100000);
INSERT INTO `demo_city` VALUES (3224,'Omdurman','SDN','Khartum',1271403);
INSERT INTO `demo_city` VALUES (3225,'Khartum','SDN','Khartum',947483);
INSERT INTO `demo_city` VALUES (3226,'Sharq al-Nil','SDN','Khartum',700887);
INSERT INTO `demo_city` VALUES (3227,'Port Sudan','SDN','al-Bahr al-Ahmar',308195);
INSERT INTO `demo_city` VALUES (3228,'Kassala','SDN','Kassala',234622);
INSERT INTO `demo_city` VALUES (3229,'Obeid','SDN','Kurdufan al-Shamaliy',229425);
INSERT INTO `demo_city` VALUES (3230,'Nyala','SDN','Darfur al-Janubiya',227183);
INSERT INTO `demo_city` VALUES (3231,'Wad Madani','SDN','al-Jazira',211362);
INSERT INTO `demo_city` VALUES (3232,'al-Qadarif','SDN','al-Qadarif',191164);
INSERT INTO `demo_city` VALUES (3233,'Kusti','SDN','al-Bahr al-Abyad',173599);
INSERT INTO `demo_city` VALUES (3234,'al-Fashir','SDN','Darfur al-Shamaliya',141884);
INSERT INTO `demo_city` VALUES (3235,'Juba','SDN','Bahr al-Jabal',114980);
INSERT INTO `demo_city` VALUES (3236,'Helsinki [Helsingfors]','FIN','Newmaa',555474);
INSERT INTO `demo_city` VALUES (3237,'Espoo','FIN','Newmaa',213271);
INSERT INTO `demo_city` VALUES (3238,'Tampere','FIN','Pirkanmaa',195468);
INSERT INTO `demo_city` VALUES (3239,'Vantaa','FIN','Newmaa',178471);
INSERT INTO `demo_city` VALUES (3240,'Turku [Åbo]','FIN','Varsinais-Suomi',172561);
INSERT INTO `demo_city` VALUES (3241,'Oulu','FIN','Pohjois-Pohjanmaa',120753);
INSERT INTO `demo_city` VALUES (3242,'Lahti','FIN','Päijät-Häme',96921);
INSERT INTO `demo_city` VALUES (3243,'Paramaribo','SUR','Paramaribo',112000);
INSERT INTO `demo_city` VALUES (3244,'Mbabane','SWZ','Hhohho',61000);
INSERT INTO `demo_city` VALUES (3245,'Zürich','CHE','Zürich',336800);
INSERT INTO `demo_city` VALUES (3246,'Geneve','CHE','Geneve',173500);
INSERT INTO `demo_city` VALUES (3247,'Basel','CHE','Basel-Stadt',166700);
INSERT INTO `demo_city` VALUES (3248,'Bern','CHE','Bern',122700);
INSERT INTO `demo_city` VALUES (3249,'Lausanne','CHE','Vaud',114500);
INSERT INTO `demo_city` VALUES (3250,'Damascus','SYR','Damascus',1347000);
INSERT INTO `demo_city` VALUES (3251,'Aleppo','SYR','Aleppo',1261983);
INSERT INTO `demo_city` VALUES (3252,'Hims','SYR','Hims',507404);
INSERT INTO `demo_city` VALUES (3253,'Hama','SYR','Hama',343361);
INSERT INTO `demo_city` VALUES (3254,'Latakia','SYR','Latakia',264563);
INSERT INTO `demo_city` VALUES (3255,'al-Qamishliya','SYR','al-Hasaka',144286);
INSERT INTO `demo_city` VALUES (3256,'Dayr al-Zawr','SYR','Dayr al-Zawr',140459);
INSERT INTO `demo_city` VALUES (3257,'Jaramana','SYR','Damaskos',138469);
INSERT INTO `demo_city` VALUES (3258,'Duma','SYR','Damaskos',131158);
INSERT INTO `demo_city` VALUES (3259,'al-Raqqa','SYR','al-Raqqa',108020);
INSERT INTO `demo_city` VALUES (3260,'Idlib','SYR','Idlib',91081);
INSERT INTO `demo_city` VALUES (3261,'Dushanbe','TJK','Karotegin',524000);
INSERT INTO `demo_city` VALUES (3262,'Khujand','TJK','Khujand',161500);
INSERT INTO `demo_city` VALUES (3263,'Taipei','TWN','Taipei',2641312);
INSERT INTO `demo_city` VALUES (3264,'Kaohsiung','TWN','Kaohsiung',1475505);
INSERT INTO `demo_city` VALUES (3265,'Taichung','TWN','Taichung',940589);
INSERT INTO `demo_city` VALUES (3266,'Tainan','TWN','Tainan',728060);
INSERT INTO `demo_city` VALUES (3267,'Panchiao','TWN','Taipei',523850);
INSERT INTO `demo_city` VALUES (3268,'Chungho','TWN','Taipei',392176);
INSERT INTO `demo_city` VALUES (3269,'Keelung (Chilung)','TWN','Keelung',385201);
INSERT INTO `demo_city` VALUES (3270,'Sanchung','TWN','Taipei',380084);
INSERT INTO `demo_city` VALUES (3271,'Hsinchuang','TWN','Taipei',365048);
INSERT INTO `demo_city` VALUES (3272,'Hsinchu','TWN','Hsinchu',361958);
INSERT INTO `demo_city` VALUES (3273,'Chungli','TWN','Taoyuan',318649);
INSERT INTO `demo_city` VALUES (3274,'Fengshan','TWN','Kaohsiung',318562);
INSERT INTO `demo_city` VALUES (3275,'Taoyuan','TWN','Taoyuan',316438);
INSERT INTO `demo_city` VALUES (3276,'Chiayi','TWN','Chiayi',265109);
INSERT INTO `demo_city` VALUES (3277,'Hsintien','TWN','Taipei',263603);
INSERT INTO `demo_city` VALUES (3278,'Changhwa','TWN','Changhwa',227715);
INSERT INTO `demo_city` VALUES (3279,'Yungho','TWN','Taipei',227700);
INSERT INTO `demo_city` VALUES (3280,'Tucheng','TWN','Taipei',224897);
INSERT INTO `demo_city` VALUES (3281,'Pingtung','TWN','Pingtung',214727);
INSERT INTO `demo_city` VALUES (3282,'Yungkang','TWN','Tainan',193005);
INSERT INTO `demo_city` VALUES (3283,'Pingchen','TWN','Taoyuan',188344);
INSERT INTO `demo_city` VALUES (3284,'Tali','TWN','Taichung',171940);
INSERT INTO `demo_city` VALUES (3285,'Taiping','TWN','',165524);
INSERT INTO `demo_city` VALUES (3286,'Pate','TWN','Taoyuan',161700);
INSERT INTO `demo_city` VALUES (3287,'Fengyuan','TWN','Taichung',161032);
INSERT INTO `demo_city` VALUES (3288,'Luchou','TWN','Taipei',160516);
INSERT INTO `demo_city` VALUES (3289,'Hsichuh','TWN','Taipei',154976);
INSERT INTO `demo_city` VALUES (3290,'Shulin','TWN','Taipei',151260);
INSERT INTO `demo_city` VALUES (3291,'Yuanlin','TWN','Changhwa',126402);
INSERT INTO `demo_city` VALUES (3292,'Yangmei','TWN','Taoyuan',126323);
INSERT INTO `demo_city` VALUES (3293,'Taliao','TWN','',115897);
INSERT INTO `demo_city` VALUES (3294,'Kueishan','TWN','',112195);
INSERT INTO `demo_city` VALUES (3295,'Tanshui','TWN','Taipei',111882);
INSERT INTO `demo_city` VALUES (3296,'Taitung','TWN','Taitung',111039);
INSERT INTO `demo_city` VALUES (3297,'Hualien','TWN','Hualien',108407);
INSERT INTO `demo_city` VALUES (3298,'Nantou','TWN','Nantou',104723);
INSERT INTO `demo_city` VALUES (3299,'Lungtan','TWN','Taipei',103088);
INSERT INTO `demo_city` VALUES (3300,'Touliu','TWN','Yünlin',98900);
INSERT INTO `demo_city` VALUES (3301,'Tsaotun','TWN','Nantou',96800);
INSERT INTO `demo_city` VALUES (3302,'Kangshan','TWN','Kaohsiung',92200);
INSERT INTO `demo_city` VALUES (3303,'Ilan','TWN','Ilan',92000);
INSERT INTO `demo_city` VALUES (3304,'Miaoli','TWN','Miaoli',90000);
INSERT INTO `demo_city` VALUES (3305,'Dar es Salaam','TZA','Dar es Salaam',1747000);
INSERT INTO `demo_city` VALUES (3306,'Dodoma','TZA','Dodoma',189000);
INSERT INTO `demo_city` VALUES (3307,'Mwanza','TZA','Mwanza',172300);
INSERT INTO `demo_city` VALUES (3308,'Zanzibar','TZA','Zanzibar West',157634);
INSERT INTO `demo_city` VALUES (3309,'Tanga','TZA','Tanga',137400);
INSERT INTO `demo_city` VALUES (3310,'Mbeya','TZA','Mbeya',130800);
INSERT INTO `demo_city` VALUES (3311,'Morogoro','TZA','Morogoro',117800);
INSERT INTO `demo_city` VALUES (3312,'Arusha','TZA','Arusha',102500);
INSERT INTO `demo_city` VALUES (3313,'Moshi','TZA','Kilimanjaro',96800);
INSERT INTO `demo_city` VALUES (3314,'Tabora','TZA','Tabora',92800);
INSERT INTO `demo_city` VALUES (3315,'København','DNK','København',495699);
INSERT INTO `demo_city` VALUES (3316,'Århus','DNK','Århus',284846);
INSERT INTO `demo_city` VALUES (3317,'Odense','DNK','Fyn',183912);
INSERT INTO `demo_city` VALUES (3318,'Aalborg','DNK','Nordjylland',161161);
INSERT INTO `demo_city` VALUES (3319,'Frederiksberg','DNK','Frederiksberg',90327);
INSERT INTO `demo_city` VALUES (3320,'Bangkok','THA','Bangkok',6320174);
INSERT INTO `demo_city` VALUES (3321,'Nonthaburi','THA','Nonthaburi',292100);
INSERT INTO `demo_city` VALUES (3322,'Nakhon Ratchasima','THA','Nakhon Ratchasima',181400);
INSERT INTO `demo_city` VALUES (3323,'Chiang Mai','THA','Chiang Mai',171100);
INSERT INTO `demo_city` VALUES (3324,'Udon Thani','THA','Udon Thani',158100);
INSERT INTO `demo_city` VALUES (3325,'Hat Yai','THA','Songkhla',148632);
INSERT INTO `demo_city` VALUES (3326,'Khon Kaen','THA','Khon Kaen',126500);
INSERT INTO `demo_city` VALUES (3327,'Pak Kret','THA','Nonthaburi',126055);
INSERT INTO `demo_city` VALUES (3328,'Nakhon Sawan','THA','Nakhon Sawan',123800);
INSERT INTO `demo_city` VALUES (3329,'Ubon Ratchathani','THA','Ubon Ratchathani',116300);
INSERT INTO `demo_city` VALUES (3330,'Songkhla','THA','Songkhla',94900);
INSERT INTO `demo_city` VALUES (3331,'Nakhon Pathom','THA','Nakhon Pathom',94100);
INSERT INTO `demo_city` VALUES (3332,'Lomé','TGO','Maritime',375000);
INSERT INTO `demo_city` VALUES (3333,'Fakaofo','TKL','Fakaofo',300);
INSERT INTO `demo_city` VALUES (3334,'Nuku´alofa','TON','Tongatapu',22400);
INSERT INTO `demo_city` VALUES (3335,'Chaguanas','TTO','Caroni',56601);
INSERT INTO `demo_city` VALUES (3336,'Port-of-Spain','TTO','Port-of-Spain',43396);
INSERT INTO `demo_city` VALUES (3337,'N´Djaména','TCD','Chari-Baguirmi',530965);
INSERT INTO `demo_city` VALUES (3338,'Moundou','TCD','Logone Occidental',99500);
INSERT INTO `demo_city` VALUES (3339,'Praha','CZE','Hlavní mesto Praha',1181126);
INSERT INTO `demo_city` VALUES (3340,'Brno','CZE','Jizní Morava',381862);
INSERT INTO `demo_city` VALUES (3341,'Ostrava','CZE','Severní Morava',320041);
INSERT INTO `demo_city` VALUES (3342,'Plzen','CZE','Zapadní Cechy',166759);
INSERT INTO `demo_city` VALUES (3343,'Olomouc','CZE','Severní Morava',102702);
INSERT INTO `demo_city` VALUES (3344,'Liberec','CZE','Severní Cechy',99155);
INSERT INTO `demo_city` VALUES (3345,'Ceské Budejovice','CZE','Jizní Cechy',98186);
INSERT INTO `demo_city` VALUES (3346,'Hradec Králové','CZE','Východní Cechy',98080);
INSERT INTO `demo_city` VALUES (3347,'Åstí nad Labem','CZE','Severní Cechy',95491);
INSERT INTO `demo_city` VALUES (3348,'Pardubice','CZE','Východní Cechy',91309);
INSERT INTO `demo_city` VALUES (3349,'Tunis','TUN','Tunis',690600);
INSERT INTO `demo_city` VALUES (3350,'Sfax','TUN','Sfax',257800);
INSERT INTO `demo_city` VALUES (3351,'Ariana','TUN','Ariana',197000);
INSERT INTO `demo_city` VALUES (3352,'Ettadhamen','TUN','Ariana',178600);
INSERT INTO `demo_city` VALUES (3353,'Sousse','TUN','Sousse',145900);
INSERT INTO `demo_city` VALUES (3354,'Kairouan','TUN','Kairouan',113100);
INSERT INTO `demo_city` VALUES (3355,'Biserta','TUN','Biserta',108900);
INSERT INTO `demo_city` VALUES (3356,'Gabès','TUN','Gabès',106600);
INSERT INTO `demo_city` VALUES (3357,'Istanbul','TUR','Istanbul',8787958);
INSERT INTO `demo_city` VALUES (3358,'Ankara','TUR','Ankara',3038159);
INSERT INTO `demo_city` VALUES (3359,'Izmir','TUR','Izmir',2130359);
INSERT INTO `demo_city` VALUES (3360,'Adana','TUR','Adana',1131198);
INSERT INTO `demo_city` VALUES (3361,'Bursa','TUR','Bursa',1095842);
INSERT INTO `demo_city` VALUES (3362,'Gaziantep','TUR','Gaziantep',789056);
INSERT INTO `demo_city` VALUES (3363,'Konya','TUR','Konya',628364);
INSERT INTO `demo_city` VALUES (3364,'Mersin (Içel)','TUR','Içel',587212);
INSERT INTO `demo_city` VALUES (3365,'Antalya','TUR','Antalya',564914);
INSERT INTO `demo_city` VALUES (3366,'Diyarbakir','TUR','Diyarbakir',479884);
INSERT INTO `demo_city` VALUES (3367,'Kayseri','TUR','Kayseri',475657);
INSERT INTO `demo_city` VALUES (3368,'Eskisehir','TUR','Eskisehir',470781);
INSERT INTO `demo_city` VALUES (3369,'Sanliurfa','TUR','Sanliurfa',405905);
INSERT INTO `demo_city` VALUES (3370,'Samsun','TUR','Samsun',339871);
INSERT INTO `demo_city` VALUES (3371,'Malatya','TUR','Malatya',330312);
INSERT INTO `demo_city` VALUES (3372,'Gebze','TUR','Kocaeli',264170);
INSERT INTO `demo_city` VALUES (3373,'Denizli','TUR','Denizli',253848);
INSERT INTO `demo_city` VALUES (3374,'Sivas','TUR','Sivas',246642);
INSERT INTO `demo_city` VALUES (3375,'Erzurum','TUR','Erzurum',246535);
INSERT INTO `demo_city` VALUES (3376,'Tarsus','TUR','Adana',246206);
INSERT INTO `demo_city` VALUES (3377,'Kahramanmaras','TUR','Kahramanmaras',245772);
INSERT INTO `demo_city` VALUES (3378,'Elâzig','TUR','Elâzig',228815);
INSERT INTO `demo_city` VALUES (3379,'Van','TUR','Van',219319);
INSERT INTO `demo_city` VALUES (3380,'Sultanbeyli','TUR','Istanbul',211068);
INSERT INTO `demo_city` VALUES (3381,'Izmit (Kocaeli)','TUR','Kocaeli',210068);
INSERT INTO `demo_city` VALUES (3382,'Manisa','TUR','Manisa',207148);
INSERT INTO `demo_city` VALUES (3383,'Batman','TUR','Batman',203793);
INSERT INTO `demo_city` VALUES (3384,'Balikesir','TUR','Balikesir',196382);
INSERT INTO `demo_city` VALUES (3385,'Sakarya (Adapazari)','TUR','Sakarya',190641);
INSERT INTO `demo_city` VALUES (3386,'Iskenderun','TUR','Hatay',153022);
INSERT INTO `demo_city` VALUES (3387,'Osmaniye','TUR','Osmaniye',146003);
INSERT INTO `demo_city` VALUES (3388,'Çorum','TUR','Çorum',145495);
INSERT INTO `demo_city` VALUES (3389,'Kütahya','TUR','Kütahya',144761);
INSERT INTO `demo_city` VALUES (3390,'Hatay (Antakya)','TUR','Hatay',143982);
INSERT INTO `demo_city` VALUES (3391,'Kirikkale','TUR','Kirikkale',142044);
INSERT INTO `demo_city` VALUES (3392,'Adiyaman','TUR','Adiyaman',141529);
INSERT INTO `demo_city` VALUES (3393,'Trabzon','TUR','Trabzon',138234);
INSERT INTO `demo_city` VALUES (3394,'Ordu','TUR','Ordu',133642);
INSERT INTO `demo_city` VALUES (3395,'Aydin','TUR','Aydin',128651);
INSERT INTO `demo_city` VALUES (3396,'Usak','TUR','Usak',128162);
INSERT INTO `demo_city` VALUES (3397,'Edirne','TUR','Edirne',123383);
INSERT INTO `demo_city` VALUES (3398,'Çorlu','TUR','Tekirdag',123300);
INSERT INTO `demo_city` VALUES (3399,'Isparta','TUR','Isparta',121911);
INSERT INTO `demo_city` VALUES (3400,'Karabük','TUR','Karabük',118285);
INSERT INTO `demo_city` VALUES (3401,'Kilis','TUR','Kilis',118245);
INSERT INTO `demo_city` VALUES (3402,'Alanya','TUR','Antalya',117300);
INSERT INTO `demo_city` VALUES (3403,'Kiziltepe','TUR','Mardin',112000);
INSERT INTO `demo_city` VALUES (3404,'Zonguldak','TUR','Zonguldak',111542);
INSERT INTO `demo_city` VALUES (3405,'Siirt','TUR','Siirt',107100);
INSERT INTO `demo_city` VALUES (3406,'Viransehir','TUR','Sanliurfa',106400);
INSERT INTO `demo_city` VALUES (3407,'Tekirdag','TUR','Tekirdag',106077);
INSERT INTO `demo_city` VALUES (3408,'Karaman','TUR','Karaman',104200);
INSERT INTO `demo_city` VALUES (3409,'Afyon','TUR','Afyon',103984);
INSERT INTO `demo_city` VALUES (3410,'Aksaray','TUR','Aksaray',102681);
INSERT INTO `demo_city` VALUES (3411,'Ceyhan','TUR','Adana',102412);
INSERT INTO `demo_city` VALUES (3412,'Erzincan','TUR','Erzincan',102304);
INSERT INTO `demo_city` VALUES (3413,'Bismil','TUR','Diyarbakir',101400);
INSERT INTO `demo_city` VALUES (3414,'Nazilli','TUR','Aydin',99900);
INSERT INTO `demo_city` VALUES (3415,'Tokat','TUR','Tokat',99500);
INSERT INTO `demo_city` VALUES (3416,'Kars','TUR','Kars',93000);
INSERT INTO `demo_city` VALUES (3417,'Inegöl','TUR','Bursa',90500);
INSERT INTO `demo_city` VALUES (3418,'Bandirma','TUR','Balikesir',90200);
INSERT INTO `demo_city` VALUES (3419,'Ashgabat','TKM','Ahal',540600);
INSERT INTO `demo_city` VALUES (3420,'Chärjew','TKM','Lebap',189200);
INSERT INTO `demo_city` VALUES (3421,'Dashhowuz','TKM','Dashhowuz',141800);
INSERT INTO `demo_city` VALUES (3422,'Mary','TKM','Mary',101000);
INSERT INTO `demo_city` VALUES (3423,'Cockburn Town','TCA','Grand Turk',4800);
INSERT INTO `demo_city` VALUES (3424,'Funafuti','TUV','Funafuti',4600);
INSERT INTO `demo_city` VALUES (3425,'Kampala','UGA','Central',890800);
INSERT INTO `demo_city` VALUES (3426,'Kyiv','UKR','Kiova',2624000);
INSERT INTO `demo_city` VALUES (3427,'Harkova [Harkiv]','UKR','Harkova',1500000);
INSERT INTO `demo_city` VALUES (3428,'Dnipropetrovsk','UKR','Dnipropetrovsk',1103000);
INSERT INTO `demo_city` VALUES (3429,'Donetsk','UKR','Donetsk',1050000);
INSERT INTO `demo_city` VALUES (3430,'Odesa','UKR','Odesa',1011000);
INSERT INTO `demo_city` VALUES (3431,'Zaporizzja','UKR','Zaporizzja',848000);
INSERT INTO `demo_city` VALUES (3432,'Lviv','UKR','Lviv',788000);
INSERT INTO `demo_city` VALUES (3433,'Kryvyi Rig','UKR','Dnipropetrovsk',703000);
INSERT INTO `demo_city` VALUES (3434,'Mykolajiv','UKR','Mykolajiv',508000);
INSERT INTO `demo_city` VALUES (3435,'Mariupol','UKR','Donetsk',490000);
INSERT INTO `demo_city` VALUES (3436,'Lugansk','UKR','Lugansk',469000);
INSERT INTO `demo_city` VALUES (3437,'Vinnytsja','UKR','Vinnytsja',391000);
INSERT INTO `demo_city` VALUES (3438,'Makijivka','UKR','Donetsk',384000);
INSERT INTO `demo_city` VALUES (3439,'Herson','UKR','Herson',353000);
INSERT INTO `demo_city` VALUES (3440,'Sevastopol','UKR','Krim',348000);
INSERT INTO `demo_city` VALUES (3441,'Simferopol','UKR','Krim',339000);
INSERT INTO `demo_city` VALUES (3442,'Pultava [Poltava]','UKR','Pultava',313000);
INSERT INTO `demo_city` VALUES (3443,'Tšernigiv','UKR','Tšernigiv',313000);
INSERT INTO `demo_city` VALUES (3444,'Tšerkasy','UKR','Tšerkasy',309000);
INSERT INTO `demo_city` VALUES (3445,'Gorlivka','UKR','Donetsk',299000);
INSERT INTO `demo_city` VALUES (3446,'Zytomyr','UKR','Zytomyr',297000);
INSERT INTO `demo_city` VALUES (3447,'Sumy','UKR','Sumy',294000);
INSERT INTO `demo_city` VALUES (3448,'Dniprodzerzynsk','UKR','Dnipropetrovsk',270000);
INSERT INTO `demo_city` VALUES (3449,'Kirovograd','UKR','Kirovograd',265000);
INSERT INTO `demo_city` VALUES (3450,'Hmelnytskyi','UKR','Hmelnytskyi',262000);
INSERT INTO `demo_city` VALUES (3451,'Tšernivtsi','UKR','Tšernivtsi',259000);
INSERT INTO `demo_city` VALUES (3452,'Rivne','UKR','Rivne',245000);
INSERT INTO `demo_city` VALUES (3453,'Krementšuk','UKR','Pultava',239000);
INSERT INTO `demo_city` VALUES (3454,'Ivano-Frankivsk','UKR','Ivano-Frankivsk',237000);
INSERT INTO `demo_city` VALUES (3455,'Ternopil','UKR','Ternopil',236000);
INSERT INTO `demo_city` VALUES (3456,'Lutsk','UKR','Volynia',217000);
INSERT INTO `demo_city` VALUES (3457,'Bila Tserkva','UKR','Kiova',215000);
INSERT INTO `demo_city` VALUES (3458,'Kramatorsk','UKR','Donetsk',186000);
INSERT INTO `demo_city` VALUES (3459,'Melitopol','UKR','Zaporizzja',169000);
INSERT INTO `demo_city` VALUES (3460,'Kertš','UKR','Krim',162000);
INSERT INTO `demo_city` VALUES (3461,'Nikopol','UKR','Dnipropetrovsk',149000);
INSERT INTO `demo_city` VALUES (3462,'Berdjansk','UKR','Zaporizzja',130000);
INSERT INTO `demo_city` VALUES (3463,'Pavlograd','UKR','Dnipropetrovsk',127000);
INSERT INTO `demo_city` VALUES (3464,'Sjeverodonetsk','UKR','Lugansk',127000);
INSERT INTO `demo_city` VALUES (3465,'Slovjansk','UKR','Donetsk',127000);
INSERT INTO `demo_city` VALUES (3466,'Uzgorod','UKR','Taka-Karpatia',127000);
INSERT INTO `demo_city` VALUES (3467,'Altševsk','UKR','Lugansk',119000);
INSERT INTO `demo_city` VALUES (3468,'Lysytšansk','UKR','Lugansk',116000);
INSERT INTO `demo_city` VALUES (3469,'Jevpatorija','UKR','Krim',112000);
INSERT INTO `demo_city` VALUES (3470,'Kamjanets-Podilskyi','UKR','Hmelnytskyi',109000);
INSERT INTO `demo_city` VALUES (3471,'Jenakijeve','UKR','Donetsk',105000);
INSERT INTO `demo_city` VALUES (3472,'Krasnyi Lutš','UKR','Lugansk',101000);
INSERT INTO `demo_city` VALUES (3473,'Stahanov','UKR','Lugansk',101000);
INSERT INTO `demo_city` VALUES (3474,'Oleksandrija','UKR','Kirovograd',99000);
INSERT INTO `demo_city` VALUES (3475,'Konotop','UKR','Sumy',96000);
INSERT INTO `demo_city` VALUES (3476,'Kostjantynivka','UKR','Donetsk',95000);
INSERT INTO `demo_city` VALUES (3477,'Berdytšiv','UKR','Zytomyr',90000);
INSERT INTO `demo_city` VALUES (3478,'Izmajil','UKR','Odesa',90000);
INSERT INTO `demo_city` VALUES (3479,'ostka','UKR','Sumy',90000);
INSERT INTO `demo_city` VALUES (3480,'Uman','UKR','Tšerkasy',90000);
INSERT INTO `demo_city` VALUES (3481,'Brovary','UKR','Kiova',89000);
INSERT INTO `demo_city` VALUES (3482,'Mukatševe','UKR','Taka-Karpatia',89000);
INSERT INTO `demo_city` VALUES (3483,'Budapest','HUN','Budapest',1811552);
INSERT INTO `demo_city` VALUES (3484,'Debrecen','HUN','Hajdú-Bihar',203648);
INSERT INTO `demo_city` VALUES (3485,'Miskolc','HUN','Borsod-Abaúj-Zemplén',172357);
INSERT INTO `demo_city` VALUES (3486,'Szeged','HUN','Csongrád',158158);
INSERT INTO `demo_city` VALUES (3487,'Pécs','HUN','Baranya',157332);
INSERT INTO `demo_city` VALUES (3488,'Györ','HUN','Györ-Moson-Sopron',127119);
INSERT INTO `demo_city` VALUES (3489,'Nyiregyháza','HUN','Szabolcs-Szatmár-Ber',112419);
INSERT INTO `demo_city` VALUES (3490,'Kecskemét','HUN','Bács-Kiskun',105606);
INSERT INTO `demo_city` VALUES (3491,'Székesfehérvár','HUN','Fejér',105119);
INSERT INTO `demo_city` VALUES (3492,'Montevideo','URY','Montevideo',1236000);
INSERT INTO `demo_city` VALUES (3493,'Nouméa','NCL','',76293);
INSERT INTO `demo_city` VALUES (3494,'Auckland','NZL','Auckland',381800);
INSERT INTO `demo_city` VALUES (3495,'Christchurch','NZL','Canterbury',324200);
INSERT INTO `demo_city` VALUES (3496,'Manukau','NZL','Auckland',281800);
INSERT INTO `demo_city` VALUES (3497,'North Shore','NZL','Auckland',187700);
INSERT INTO `demo_city` VALUES (3498,'Waitakere','NZL','Auckland',170600);
INSERT INTO `demo_city` VALUES (3499,'Wellington','NZL','Wellington',166700);
INSERT INTO `demo_city` VALUES (3500,'Dunedin','NZL','Dunedin',119600);
INSERT INTO `demo_city` VALUES (3501,'Hamilton','NZL','Hamilton',117100);
INSERT INTO `demo_city` VALUES (3502,'Lower Hutt','NZL','Wellington',98100);
INSERT INTO `demo_city` VALUES (3503,'Toskent','UZB','Toskent Shahri',2117500);
INSERT INTO `demo_city` VALUES (3504,'Namangan','UZB','Namangan',370500);
INSERT INTO `demo_city` VALUES (3505,'Samarkand','UZB','Samarkand',361800);
INSERT INTO `demo_city` VALUES (3506,'Andijon','UZB','Andijon',318600);
INSERT INTO `demo_city` VALUES (3507,'Buhoro','UZB','Buhoro',237100);
INSERT INTO `demo_city` VALUES (3508,'Karsi','UZB','Qashqadaryo',194100);
INSERT INTO `demo_city` VALUES (3509,'Nukus','UZB','Karakalpakistan',194100);
INSERT INTO `demo_city` VALUES (3510,'Kükon','UZB','Fargona',190100);
INSERT INTO `demo_city` VALUES (3511,'Fargona','UZB','Fargona',180500);
INSERT INTO `demo_city` VALUES (3512,'Circik','UZB','Toskent',146400);
INSERT INTO `demo_city` VALUES (3513,'Margilon','UZB','Fargona',140800);
INSERT INTO `demo_city` VALUES (3514,'Ürgenc','UZB','Khorazm',138900);
INSERT INTO `demo_city` VALUES (3515,'Angren','UZB','Toskent',128000);
INSERT INTO `demo_city` VALUES (3516,'Cizah','UZB','Cizah',124800);
INSERT INTO `demo_city` VALUES (3517,'Navoi','UZB','Navoi',116300);
INSERT INTO `demo_city` VALUES (3518,'Olmalik','UZB','Toskent',114900);
INSERT INTO `demo_city` VALUES (3519,'Termiz','UZB','Surkhondaryo',109500);
INSERT INTO `demo_city` VALUES (3520,'Minsk','BLR','Horad Minsk',1674000);
INSERT INTO `demo_city` VALUES (3521,'Gomel','BLR','Gomel',475000);
INSERT INTO `demo_city` VALUES (3522,'Mogiljov','BLR','Mogiljov',356000);
INSERT INTO `demo_city` VALUES (3523,'Vitebsk','BLR','Vitebsk',340000);
INSERT INTO `demo_city` VALUES (3524,'Grodno','BLR','Grodno',302000);
INSERT INTO `demo_city` VALUES (3525,'Brest','BLR','Brest',286000);
INSERT INTO `demo_city` VALUES (3526,'Bobruisk','BLR','Mogiljov',221000);
INSERT INTO `demo_city` VALUES (3527,'Baranovitši','BLR','Brest',167000);
INSERT INTO `demo_city` VALUES (3528,'Borisov','BLR','Minsk',151000);
INSERT INTO `demo_city` VALUES (3529,'Pinsk','BLR','Brest',130000);
INSERT INTO `demo_city` VALUES (3530,'Orša','BLR','Vitebsk',124000);
INSERT INTO `demo_city` VALUES (3531,'Mozyr','BLR','Gomel',110000);
INSERT INTO `demo_city` VALUES (3532,'Novopolotsk','BLR','Vitebsk',106000);
INSERT INTO `demo_city` VALUES (3533,'Lida','BLR','Grodno',101000);
INSERT INTO `demo_city` VALUES (3534,'Soligorsk','BLR','Minsk',101000);
INSERT INTO `demo_city` VALUES (3535,'Molodetšno','BLR','Minsk',97000);
INSERT INTO `demo_city` VALUES (3536,'Mata-Utu','WLF','Wallis',1137);
INSERT INTO `demo_city` VALUES (3537,'Port-Vila','VUT','Shefa',33700);
INSERT INTO `demo_city` VALUES (3538,'Città del Vaticano','VAT','',455);
INSERT INTO `demo_city` VALUES (3539,'Caracas','VEN','Distrito Federal',1975294);
INSERT INTO `demo_city` VALUES (3540,'Maracaíbo','VEN','Zulia',1304776);
INSERT INTO `demo_city` VALUES (3541,'Barquisimeto','VEN','Lara',877239);
INSERT INTO `demo_city` VALUES (3542,'Valencia','VEN','Carabobo',794246);
INSERT INTO `demo_city` VALUES (3543,'Ciudad Guayana','VEN','Bolívar',663713);
INSERT INTO `demo_city` VALUES (3544,'Petare','VEN','Miranda',488868);
INSERT INTO `demo_city` VALUES (3545,'Maracay','VEN','Aragua',444443);
INSERT INTO `demo_city` VALUES (3546,'Barcelona','VEN','Anzoátegui',322267);
INSERT INTO `demo_city` VALUES (3547,'Maturín','VEN','Monagas',319726);
INSERT INTO `demo_city` VALUES (3548,'San Cristóbal','VEN','Táchira',319373);
INSERT INTO `demo_city` VALUES (3549,'Ciudad Bolívar','VEN','Bolívar',301107);
INSERT INTO `demo_city` VALUES (3550,'Cumaná','VEN','Sucre',293105);
INSERT INTO `demo_city` VALUES (3551,'Mérida','VEN','Mérida',224887);
INSERT INTO `demo_city` VALUES (3552,'Cabimas','VEN','Zulia',221329);
INSERT INTO `demo_city` VALUES (3553,'Barinas','VEN','Barinas',217831);
INSERT INTO `demo_city` VALUES (3554,'Turmero','VEN','Aragua',217499);
INSERT INTO `demo_city` VALUES (3555,'Baruta','VEN','Miranda',207290);
INSERT INTO `demo_city` VALUES (3556,'Puerto Cabello','VEN','Carabobo',187722);
INSERT INTO `demo_city` VALUES (3557,'Santa Ana de Coro','VEN','Falcón',185766);
INSERT INTO `demo_city` VALUES (3558,'Los Teques','VEN','Miranda',178784);
INSERT INTO `demo_city` VALUES (3559,'Punto Fijo','VEN','Falcón',167215);
INSERT INTO `demo_city` VALUES (3560,'Guarenas','VEN','Miranda',165889);
INSERT INTO `demo_city` VALUES (3561,'Acarigua','VEN','Portuguesa',158954);
INSERT INTO `demo_city` VALUES (3562,'Puerto La Cruz','VEN','Anzoátegui',155700);
INSERT INTO `demo_city` VALUES (3563,'Ciudad Losada','VEN','',134501);
INSERT INTO `demo_city` VALUES (3564,'Guacara','VEN','Carabobo',131334);
INSERT INTO `demo_city` VALUES (3565,'Valera','VEN','Trujillo',130281);
INSERT INTO `demo_city` VALUES (3566,'Guanare','VEN','Portuguesa',125621);
INSERT INTO `demo_city` VALUES (3567,'Carúpano','VEN','Sucre',119639);
INSERT INTO `demo_city` VALUES (3568,'Catia La Mar','VEN','Distrito Federal',117012);
INSERT INTO `demo_city` VALUES (3569,'El Tigre','VEN','Anzoátegui',116256);
INSERT INTO `demo_city` VALUES (3570,'Guatire','VEN','Miranda',109121);
INSERT INTO `demo_city` VALUES (3571,'Calabozo','VEN','Guárico',107146);
INSERT INTO `demo_city` VALUES (3572,'Pozuelos','VEN','Anzoátegui',105690);
INSERT INTO `demo_city` VALUES (3573,'Ciudad Ojeda','VEN','Zulia',99354);
INSERT INTO `demo_city` VALUES (3574,'Ocumare del Tuy','VEN','Miranda',97168);
INSERT INTO `demo_city` VALUES (3575,'Valle de la Pascua','VEN','Guárico',95927);
INSERT INTO `demo_city` VALUES (3576,'Araure','VEN','Portuguesa',94269);
INSERT INTO `demo_city` VALUES (3577,'San Fernando de Apure','VEN','Apure',93809);
INSERT INTO `demo_city` VALUES (3578,'San Felipe','VEN','Yaracuy',90940);
INSERT INTO `demo_city` VALUES (3579,'El Limón','VEN','Aragua',90000);
INSERT INTO `demo_city` VALUES (3580,'Moscow','RUS','Moscow (City)',8389200);
INSERT INTO `demo_city` VALUES (3581,'St Petersburg','RUS','Pietari',4694000);
INSERT INTO `demo_city` VALUES (3582,'Novosibirsk','RUS','Novosibirsk',1398800);
INSERT INTO `demo_city` VALUES (3583,'Nizni Novgorod','RUS','Nizni Novgorod',1357000);
INSERT INTO `demo_city` VALUES (3584,'Jekaterinburg','RUS','Sverdlovsk',1266300);
INSERT INTO `demo_city` VALUES (3585,'Samara','RUS','Samara',1156100);
INSERT INTO `demo_city` VALUES (3586,'Omsk','RUS','Omsk',1148900);
INSERT INTO `demo_city` VALUES (3587,'Kazan','RUS','Tatarstan',1101000);
INSERT INTO `demo_city` VALUES (3588,'Ufa','RUS','Baškortostan',1091200);
INSERT INTO `demo_city` VALUES (3589,'Tšeljabinsk','RUS','Tšeljabinsk',1083200);
INSERT INTO `demo_city` VALUES (3590,'Rostov-na-Donu','RUS','Rostov-na-Donu',1012700);
INSERT INTO `demo_city` VALUES (3591,'Perm','RUS','Perm',1009700);
INSERT INTO `demo_city` VALUES (3592,'Volgograd','RUS','Volgograd',993400);
INSERT INTO `demo_city` VALUES (3593,'Voronez','RUS','Voronez',907700);
INSERT INTO `demo_city` VALUES (3594,'Krasnojarsk','RUS','Krasnojarsk',875500);
INSERT INTO `demo_city` VALUES (3595,'Saratov','RUS','Saratov',874000);
INSERT INTO `demo_city` VALUES (3596,'Toljatti','RUS','Samara',722900);
INSERT INTO `demo_city` VALUES (3597,'Uljanovsk','RUS','Uljanovsk',667400);
INSERT INTO `demo_city` VALUES (3598,'Izevsk','RUS','Udmurtia',652800);
INSERT INTO `demo_city` VALUES (3599,'Krasnodar','RUS','Krasnodar',639000);
INSERT INTO `demo_city` VALUES (3600,'Jaroslavl','RUS','Jaroslavl',616700);
INSERT INTO `demo_city` VALUES (3601,'Habarovsk','RUS','Habarovsk',609400);
INSERT INTO `demo_city` VALUES (3602,'Vladivostok','RUS','Primorje',606200);
INSERT INTO `demo_city` VALUES (3603,'Irkutsk','RUS','Irkutsk',593700);
INSERT INTO `demo_city` VALUES (3604,'Barnaul','RUS','Altai',580100);
INSERT INTO `demo_city` VALUES (3605,'Novokuznetsk','RUS','Kemerovo',561600);
INSERT INTO `demo_city` VALUES (3606,'Penza','RUS','Penza',532200);
INSERT INTO `demo_city` VALUES (3607,'Rjazan','RUS','Rjazan',529900);
INSERT INTO `demo_city` VALUES (3608,'Orenburg','RUS','Orenburg',523600);
INSERT INTO `demo_city` VALUES (3609,'Lipetsk','RUS','Lipetsk',521000);
INSERT INTO `demo_city` VALUES (3610,'Nabereznyje Tšelny','RUS','Tatarstan',514700);
INSERT INTO `demo_city` VALUES (3611,'Tula','RUS','Tula',506100);
INSERT INTO `demo_city` VALUES (3612,'Tjumen','RUS','Tjumen',503400);
INSERT INTO `demo_city` VALUES (3613,'Kemerovo','RUS','Kemerovo',492700);
INSERT INTO `demo_city` VALUES (3614,'Astrahan','RUS','Astrahan',486100);
INSERT INTO `demo_city` VALUES (3615,'Tomsk','RUS','Tomsk',482100);
INSERT INTO `demo_city` VALUES (3616,'Kirov','RUS','Kirov',466200);
INSERT INTO `demo_city` VALUES (3617,'Ivanovo','RUS','Ivanovo',459200);
INSERT INTO `demo_city` VALUES (3618,'Tšeboksary','RUS','Tšuvassia',459200);
INSERT INTO `demo_city` VALUES (3619,'Brjansk','RUS','Brjansk',457400);
INSERT INTO `demo_city` VALUES (3620,'Tver','RUS','Tver',454900);
INSERT INTO `demo_city` VALUES (3621,'Kursk','RUS','Kursk',443500);
INSERT INTO `demo_city` VALUES (3622,'Magnitogorsk','RUS','Tšeljabinsk',427900);
INSERT INTO `demo_city` VALUES (3623,'Kaliningrad','RUS','Kaliningrad',424400);
INSERT INTO `demo_city` VALUES (3624,'Nizni Tagil','RUS','Sverdlovsk',390900);
INSERT INTO `demo_city` VALUES (3625,'Murmansk','RUS','Murmansk',376300);
INSERT INTO `demo_city` VALUES (3626,'Ulan-Ude','RUS','Burjatia',370400);
INSERT INTO `demo_city` VALUES (3627,'Kurgan','RUS','Kurgan',364700);
INSERT INTO `demo_city` VALUES (3628,'Arkangeli','RUS','Arkangeli',361800);
INSERT INTO `demo_city` VALUES (3629,'Sotši','RUS','Krasnodar',358600);
INSERT INTO `demo_city` VALUES (3630,'Smolensk','RUS','Smolensk',353400);
INSERT INTO `demo_city` VALUES (3631,'Orjol','RUS','Orjol',344500);
INSERT INTO `demo_city` VALUES (3632,'Stavropol','RUS','Stavropol',343300);
INSERT INTO `demo_city` VALUES (3633,'Belgorod','RUS','Belgorod',342000);
INSERT INTO `demo_city` VALUES (3634,'Kaluga','RUS','Kaluga',339300);
INSERT INTO `demo_city` VALUES (3635,'Vladimir','RUS','Vladimir',337100);
INSERT INTO `demo_city` VALUES (3636,'Mahatškala','RUS','Dagestan',332800);
INSERT INTO `demo_city` VALUES (3637,'Tšerepovets','RUS','Vologda',324400);
INSERT INTO `demo_city` VALUES (3638,'Saransk','RUS','Mordva',314800);
INSERT INTO `demo_city` VALUES (3639,'Tambov','RUS','Tambov',312000);
INSERT INTO `demo_city` VALUES (3640,'Vladikavkaz','RUS','North Ossetia-Alania',310100);
INSERT INTO `demo_city` VALUES (3641,'Tšita','RUS','Tšita',309900);
INSERT INTO `demo_city` VALUES (3642,'Vologda','RUS','Vologda',302500);
INSERT INTO `demo_city` VALUES (3643,'Veliki Novgorod','RUS','Novgorod',299500);
INSERT INTO `demo_city` VALUES (3644,'Komsomolsk-na-Amure','RUS','Habarovsk',291600);
INSERT INTO `demo_city` VALUES (3645,'Kostroma','RUS','Kostroma',288100);
INSERT INTO `demo_city` VALUES (3646,'Volzski','RUS','Volgograd',286900);
INSERT INTO `demo_city` VALUES (3647,'Taganrog','RUS','Rostov-na-Donu',284400);
INSERT INTO `demo_city` VALUES (3648,'Petroskoi','RUS','Karjala',282100);
INSERT INTO `demo_city` VALUES (3649,'Bratsk','RUS','Irkutsk',277600);
INSERT INTO `demo_city` VALUES (3650,'Dzerzinsk','RUS','Nizni Novgorod',277100);
INSERT INTO `demo_city` VALUES (3651,'Surgut','RUS','Hanti-Mansia',274900);
INSERT INTO `demo_city` VALUES (3652,'Orsk','RUS','Orenburg',273900);
INSERT INTO `demo_city` VALUES (3653,'Sterlitamak','RUS','Baškortostan',265200);
INSERT INTO `demo_city` VALUES (3654,'Angarsk','RUS','Irkutsk',264700);
INSERT INTO `demo_city` VALUES (3655,'Joškar-Ola','RUS','Marinmaa',249200);
INSERT INTO `demo_city` VALUES (3656,'Rybinsk','RUS','Jaroslavl',239600);
INSERT INTO `demo_city` VALUES (3657,'Prokopjevsk','RUS','Kemerovo',237300);
INSERT INTO `demo_city` VALUES (3658,'Niznevartovsk','RUS','Hanti-Mansia',233900);
INSERT INTO `demo_city` VALUES (3659,'Naltšik','RUS','Kabardi-Balkaria',233400);
INSERT INTO `demo_city` VALUES (3660,'Syktyvkar','RUS','Komi',229700);
INSERT INTO `demo_city` VALUES (3661,'Severodvinsk','RUS','Arkangeli',229300);
INSERT INTO `demo_city` VALUES (3662,'Bijsk','RUS','Altai',225000);
INSERT INTO `demo_city` VALUES (3663,'Niznekamsk','RUS','Tatarstan',223400);
INSERT INTO `demo_city` VALUES (3664,'Blagoveštšensk','RUS','Amur',222000);
INSERT INTO `demo_city` VALUES (3665,'ahty','RUS','Rostov-na-Donu',221800);
INSERT INTO `demo_city` VALUES (3666,'Staryi Oskol','RUS','Belgorod',213800);
INSERT INTO `demo_city` VALUES (3667,'Zelenograd','RUS','Moscow (City)',207100);
INSERT INTO `demo_city` VALUES (3668,'Balakovo','RUS','Saratov',206000);
INSERT INTO `demo_city` VALUES (3669,'Novorossijsk','RUS','Krasnodar',203300);
INSERT INTO `demo_city` VALUES (3670,'Pihkova','RUS','Pihkova',201500);
INSERT INTO `demo_city` VALUES (3671,'Zlatoust','RUS','Tšeljabinsk',196900);
INSERT INTO `demo_city` VALUES (3672,'Jakutsk','RUS','Saha (Jakutia)',195400);
INSERT INTO `demo_city` VALUES (3673,'Podolsk','RUS','Moskova',194300);
INSERT INTO `demo_city` VALUES (3674,'Petropavlovsk-Kamtšatski','RUS','Kamtšatka',194100);
INSERT INTO `demo_city` VALUES (3675,'Kamensk-Uralski','RUS','Sverdlovsk',190600);
INSERT INTO `demo_city` VALUES (3676,'Engels','RUS','Saratov',189000);
INSERT INTO `demo_city` VALUES (3677,'Syzran','RUS','Samara',186900);
INSERT INTO `demo_city` VALUES (3678,'Grozny','RUS','Tšetšenia',186000);
INSERT INTO `demo_city` VALUES (3679,'Novotšerkassk','RUS','Rostov-na-Donu',184400);
INSERT INTO `demo_city` VALUES (3680,'Berezniki','RUS','Perm',181900);
INSERT INTO `demo_city` VALUES (3681,'Juzno-Sahalinsk','RUS','Sahalin',179200);
INSERT INTO `demo_city` VALUES (3682,'Volgodonsk','RUS','Rostov-na-Donu',178200);
INSERT INTO `demo_city` VALUES (3683,'Abakan','RUS','Hakassia',169200);
INSERT INTO `demo_city` VALUES (3684,'Maikop','RUS','Adygea',167300);
INSERT INTO `demo_city` VALUES (3685,'Miass','RUS','Tšeljabinsk',166200);
INSERT INTO `demo_city` VALUES (3686,'Armavir','RUS','Krasnodar',164900);
INSERT INTO `demo_city` VALUES (3687,'Ljubertsy','RUS','Moskova',163900);
INSERT INTO `demo_city` VALUES (3688,'Rubtsovsk','RUS','Altai',162600);
INSERT INTO `demo_city` VALUES (3689,'Kovrov','RUS','Vladimir',159900);
INSERT INTO `demo_city` VALUES (3690,'Nahodka','RUS','Primorje',157700);
INSERT INTO `demo_city` VALUES (3691,'Ussurijsk','RUS','Primorje',157300);
INSERT INTO `demo_city` VALUES (3692,'Salavat','RUS','Baškortostan',156800);
INSERT INTO `demo_city` VALUES (3693,'Mytištši','RUS','Moskova',155700);
INSERT INTO `demo_city` VALUES (3694,'Kolomna','RUS','Moskova',150700);
INSERT INTO `demo_city` VALUES (3695,'Elektrostal','RUS','Moskova',147000);
INSERT INTO `demo_city` VALUES (3696,'Murom','RUS','Vladimir',142400);
INSERT INTO `demo_city` VALUES (3697,'Kolpino','RUS','Pietari',141200);
INSERT INTO `demo_city` VALUES (3698,'Norilsk','RUS','Krasnojarsk',140800);
INSERT INTO `demo_city` VALUES (3699,'Almetjevsk','RUS','Tatarstan',140700);
INSERT INTO `demo_city` VALUES (3700,'Novomoskovsk','RUS','Tula',138100);
INSERT INTO `demo_city` VALUES (3701,'Dimitrovgrad','RUS','Uljanovsk',137000);
INSERT INTO `demo_city` VALUES (3702,'Pervouralsk','RUS','Sverdlovsk',136100);
INSERT INTO `demo_city` VALUES (3703,'Himki','RUS','Moskova',133700);
INSERT INTO `demo_city` VALUES (3704,'Balašiha','RUS','Moskova',132900);
INSERT INTO `demo_city` VALUES (3705,'Nevinnomyssk','RUS','Stavropol',132600);
INSERT INTO `demo_city` VALUES (3706,'Pjatigorsk','RUS','Stavropol',132500);
INSERT INTO `demo_city` VALUES (3707,'Korolev','RUS','Moskova',132400);
INSERT INTO `demo_city` VALUES (3708,'Serpuhov','RUS','Moskova',132000);
INSERT INTO `demo_city` VALUES (3709,'Odintsovo','RUS','Moskova',127400);
INSERT INTO `demo_city` VALUES (3710,'Orehovo-Zujevo','RUS','Moskova',124900);
INSERT INTO `demo_city` VALUES (3711,'Kamyšin','RUS','Volgograd',124600);
INSERT INTO `demo_city` VALUES (3712,'Novotšeboksarsk','RUS','Tšuvassia',123400);
INSERT INTO `demo_city` VALUES (3713,'Tšerkessk','RUS','Karatšai-Tšerkessia',121700);
INSERT INTO `demo_city` VALUES (3714,'Atšinsk','RUS','Krasnojarsk',121600);
INSERT INTO `demo_city` VALUES (3715,'Magadan','RUS','Magadan',121000);
INSERT INTO `demo_city` VALUES (3716,'Mitšurinsk','RUS','Tambov',120700);
INSERT INTO `demo_city` VALUES (3717,'Kislovodsk','RUS','Stavropol',120400);
INSERT INTO `demo_city` VALUES (3718,'Jelets','RUS','Lipetsk',119400);
INSERT INTO `demo_city` VALUES (3719,'Seversk','RUS','Tomsk',118600);
INSERT INTO `demo_city` VALUES (3720,'Noginsk','RUS','Moskova',117200);
INSERT INTO `demo_city` VALUES (3721,'Velikije Luki','RUS','Pihkova',116300);
INSERT INTO `demo_city` VALUES (3722,'Novokuibyševsk','RUS','Samara',116200);
INSERT INTO `demo_city` VALUES (3723,'Neftekamsk','RUS','Baškortostan',115700);
INSERT INTO `demo_city` VALUES (3724,'Leninsk-Kuznetski','RUS','Kemerovo',113800);
INSERT INTO `demo_city` VALUES (3725,'Oktjabrski','RUS','Baškortostan',111500);
INSERT INTO `demo_city` VALUES (3726,'Sergijev Posad','RUS','Moskova',111100);
INSERT INTO `demo_city` VALUES (3727,'Arzamas','RUS','Nizni Novgorod',110700);
INSERT INTO `demo_city` VALUES (3728,'Kiseljovsk','RUS','Kemerovo',110000);
INSERT INTO `demo_city` VALUES (3729,'Novotroitsk','RUS','Orenburg',109600);
INSERT INTO `demo_city` VALUES (3730,'Obninsk','RUS','Kaluga',108300);
INSERT INTO `demo_city` VALUES (3731,'Kansk','RUS','Krasnojarsk',107400);
INSERT INTO `demo_city` VALUES (3732,'Glazov','RUS','Udmurtia',106300);
INSERT INTO `demo_city` VALUES (3733,'Solikamsk','RUS','Perm',106000);
INSERT INTO `demo_city` VALUES (3734,'Sarapul','RUS','Udmurtia',105700);
INSERT INTO `demo_city` VALUES (3735,'Ust-Ilimsk','RUS','Irkutsk',105200);
INSERT INTO `demo_city` VALUES (3736,'tšolkovo','RUS','Moskova',104900);
INSERT INTO `demo_city` VALUES (3737,'Mezduretšensk','RUS','Kemerovo',104400);
INSERT INTO `demo_city` VALUES (3738,'Usolje-Sibirskoje','RUS','Irkutsk',103500);
INSERT INTO `demo_city` VALUES (3739,'Elista','RUS','Kalmykia',103300);
INSERT INTO `demo_city` VALUES (3740,'Novošahtinsk','RUS','Rostov-na-Donu',101900);
INSERT INTO `demo_city` VALUES (3741,'Votkinsk','RUS','Udmurtia',101700);
INSERT INTO `demo_city` VALUES (3742,'Kyzyl','RUS','Tyva',101100);
INSERT INTO `demo_city` VALUES (3743,'Serov','RUS','Sverdlovsk',100400);
INSERT INTO `demo_city` VALUES (3744,'Zelenodolsk','RUS','Tatarstan',100200);
INSERT INTO `demo_city` VALUES (3745,'Zeleznodoroznyi','RUS','Moskova',100100);
INSERT INTO `demo_city` VALUES (3746,'Kinešma','RUS','Ivanovo',100000);
INSERT INTO `demo_city` VALUES (3747,'Kuznetsk','RUS','Penza',98200);
INSERT INTO `demo_city` VALUES (3748,'Uhta','RUS','Komi',98000);
INSERT INTO `demo_city` VALUES (3749,'Jessentuki','RUS','Stavropol',97900);
INSERT INTO `demo_city` VALUES (3750,'Tobolsk','RUS','Tjumen',97600);
INSERT INTO `demo_city` VALUES (3751,'Neftejugansk','RUS','Hanti-Mansia',97400);
INSERT INTO `demo_city` VALUES (3752,'Bataisk','RUS','Rostov-na-Donu',97300);
INSERT INTO `demo_city` VALUES (3753,'Nojabrsk','RUS','Yamalin Nenetsia',97300);
INSERT INTO `demo_city` VALUES (3754,'Balašov','RUS','Saratov',97100);
INSERT INTO `demo_city` VALUES (3755,'Zeleznogorsk','RUS','Kursk',96900);
INSERT INTO `demo_city` VALUES (3756,'Zukovski','RUS','Moskova',96500);
INSERT INTO `demo_city` VALUES (3757,'Anzero-Sudzensk','RUS','Kemerovo',96100);
INSERT INTO `demo_city` VALUES (3758,'Bugulma','RUS','Tatarstan',94100);
INSERT INTO `demo_city` VALUES (3759,'Zeleznogorsk','RUS','Krasnojarsk',94000);
INSERT INTO `demo_city` VALUES (3760,'Novouralsk','RUS','Sverdlovsk',93300);
INSERT INTO `demo_city` VALUES (3761,'Puškin','RUS','Pietari',92900);
INSERT INTO `demo_city` VALUES (3762,'Vorkuta','RUS','Komi',92600);
INSERT INTO `demo_city` VALUES (3763,'Derbent','RUS','Dagestan',92300);
INSERT INTO `demo_city` VALUES (3764,'Kirovo-Tšepetsk','RUS','Kirov',91600);
INSERT INTO `demo_city` VALUES (3765,'Krasnogorsk','RUS','Moskova',91000);
INSERT INTO `demo_city` VALUES (3766,'Klin','RUS','Moskova',90000);
INSERT INTO `demo_city` VALUES (3767,'Tšaikovski','RUS','Perm',90000);
INSERT INTO `demo_city` VALUES (3768,'Novyi Urengoi','RUS','Yamalin Nenetsia',89800);
INSERT INTO `demo_city` VALUES (3769,'Ho Chi Minh City','VNM','Ho Chi Minh City',3980000);
INSERT INTO `demo_city` VALUES (3770,'Hanoi','VNM','Hanoi',1410000);
INSERT INTO `demo_city` VALUES (3771,'Haiphong','VNM','Haiphong',783133);
INSERT INTO `demo_city` VALUES (3772,'Da Nang','VNM','Quang Nam-Da Nang',382674);
INSERT INTO `demo_city` VALUES (3773,'Biên Hoa','VNM','Dong Nai',282095);
INSERT INTO `demo_city` VALUES (3774,'Nha Trang','VNM','Khanh Hoa',221331);
INSERT INTO `demo_city` VALUES (3775,'Hue','VNM','Thua Thien-Hue',219149);
INSERT INTO `demo_city` VALUES (3776,'Can Tho','VNM','Can Tho',215587);
INSERT INTO `demo_city` VALUES (3777,'Cam Pha','VNM','Quang Binh',209086);
INSERT INTO `demo_city` VALUES (3778,'Nam Dinh','VNM','Nam Ha',171699);
INSERT INTO `demo_city` VALUES (3779,'Quy Nhon','VNM','Binh Dinh',163385);
INSERT INTO `demo_city` VALUES (3780,'Vung Tau','VNM','Ba Ria-Vung Tau',145145);
INSERT INTO `demo_city` VALUES (3781,'Rach Gia','VNM','Kien Giang',141132);
INSERT INTO `demo_city` VALUES (3782,'Long Xuyen','VNM','An Giang',132681);
INSERT INTO `demo_city` VALUES (3783,'Thai Nguyen','VNM','Bac Thai',127643);
INSERT INTO `demo_city` VALUES (3784,'Hong Gai','VNM','Quang Ninh',127484);
INSERT INTO `demo_city` VALUES (3785,'Phan Thiêt','VNM','Binh Thuan',114236);
INSERT INTO `demo_city` VALUES (3786,'Cam Ranh','VNM','Khanh Hoa',114041);
INSERT INTO `demo_city` VALUES (3787,'Vinh','VNM','Nghe An',112455);
INSERT INTO `demo_city` VALUES (3788,'My Tho','VNM','Tien Giang',108404);
INSERT INTO `demo_city` VALUES (3789,'Da Lat','VNM','Lam Dong',106409);
INSERT INTO `demo_city` VALUES (3790,'Buon Ma Thuot','VNM','Dac Lac',97044);
INSERT INTO `demo_city` VALUES (3791,'Tallinn','EST','Harjumaa',403981);
INSERT INTO `demo_city` VALUES (3792,'Tartu','EST','Tartumaa',101246);
INSERT INTO `demo_city` VALUES (3793,'New York','USA','New York',8008278);
INSERT INTO `demo_city` VALUES (3794,'Los Angeles','USA','California',3694820);
INSERT INTO `demo_city` VALUES (3795,'Chicago','USA','Illinois',2896016);
INSERT INTO `demo_city` VALUES (3796,'Houston','USA','Texas',1953631);
INSERT INTO `demo_city` VALUES (3797,'Philadelphia','USA','Pennsylvania',1517550);
INSERT INTO `demo_city` VALUES (3798,'Phoenix','USA','Arizona',1321045);
INSERT INTO `demo_city` VALUES (3799,'San Diego','USA','California',1223400);
INSERT INTO `demo_city` VALUES (3800,'Dallas','USA','Texas',1188580);
INSERT INTO `demo_city` VALUES (3801,'San Antonio','USA','Texas',1144646);
INSERT INTO `demo_city` VALUES (3802,'Detroit','USA','Michigan',951270);
INSERT INTO `demo_city` VALUES (3803,'San Jose','USA','California',894943);
INSERT INTO `demo_city` VALUES (3804,'Indianapolis','USA','Indiana',791926);
INSERT INTO `demo_city` VALUES (3805,'San Francisco','USA','California',776733);
INSERT INTO `demo_city` VALUES (3806,'Jacksonville','USA','Florida',735167);
INSERT INTO `demo_city` VALUES (3807,'Columbus','USA','Ohio',711470);
INSERT INTO `demo_city` VALUES (3808,'Austin','USA','Texas',656562);
INSERT INTO `demo_city` VALUES (3809,'Baltimore','USA','Maryland',651154);
INSERT INTO `demo_city` VALUES (3810,'Memphis','USA','Tennessee',650100);
INSERT INTO `demo_city` VALUES (3811,'Milwaukee','USA','Wisconsin',596974);
INSERT INTO `demo_city` VALUES (3812,'Boston','USA','Massachusetts',589141);
INSERT INTO `demo_city` VALUES (3813,'Washington','USA','District of Columbia',572059);
INSERT INTO `demo_city` VALUES (3814,'Nashville-Davidson','USA','Tennessee',569891);
INSERT INTO `demo_city` VALUES (3815,'El Paso','USA','Texas',563662);
INSERT INTO `demo_city` VALUES (3816,'Seattle','USA','Washington',563374);
INSERT INTO `demo_city` VALUES (3817,'Denver','USA','Colorado',554636);
INSERT INTO `demo_city` VALUES (3818,'Charlotte','USA','North Carolina',540828);
INSERT INTO `demo_city` VALUES (3819,'Fort Worth','USA','Texas',534694);
INSERT INTO `demo_city` VALUES (3820,'Portland','USA','Oregon',529121);
INSERT INTO `demo_city` VALUES (3821,'Oklahoma City','USA','Oklahoma',506132);
INSERT INTO `demo_city` VALUES (3822,'Tucson','USA','Arizona',486699);
INSERT INTO `demo_city` VALUES (3823,'New Orleans','USA','Louisiana',484674);
INSERT INTO `demo_city` VALUES (3824,'Las Vegas','USA','Nevada',478434);
INSERT INTO `demo_city` VALUES (3825,'Cleveland','USA','Ohio',478403);
INSERT INTO `demo_city` VALUES (3826,'Long Beach','USA','California',461522);
INSERT INTO `demo_city` VALUES (3827,'Albuquerque','USA','New Mexico',448607);
INSERT INTO `demo_city` VALUES (3828,'Kansas City','USA','Missouri',441545);
INSERT INTO `demo_city` VALUES (3829,'Fresno','USA','California',427652);
INSERT INTO `demo_city` VALUES (3830,'Virginia Beach','USA','Virginia',425257);
INSERT INTO `demo_city` VALUES (3831,'Atlanta','USA','Georgia',416474);
INSERT INTO `demo_city` VALUES (3832,'Sacramento','USA','California',407018);
INSERT INTO `demo_city` VALUES (3833,'Oakland','USA','California',399484);
INSERT INTO `demo_city` VALUES (3834,'Mesa','USA','Arizona',396375);
INSERT INTO `demo_city` VALUES (3835,'Tulsa','USA','Oklahoma',393049);
INSERT INTO `demo_city` VALUES (3836,'Omaha','USA','Nebraska',390007);
INSERT INTO `demo_city` VALUES (3837,'Minneapolis','USA','Minnesota',382618);
INSERT INTO `demo_city` VALUES (3838,'Honolulu','USA','Hawaii',371657);
INSERT INTO `demo_city` VALUES (3839,'Miami','USA','Florida',362470);
INSERT INTO `demo_city` VALUES (3840,'Colorado Springs','USA','Colorado',360890);
INSERT INTO `demo_city` VALUES (3841,'Saint Louis','USA','Missouri',348189);
INSERT INTO `demo_city` VALUES (3842,'Wichita','USA','Kansas',344284);
INSERT INTO `demo_city` VALUES (3843,'Santa Ana','USA','California',337977);
INSERT INTO `demo_city` VALUES (3844,'Pittsburgh','USA','Pennsylvania',334563);
INSERT INTO `demo_city` VALUES (3845,'Arlington','USA','Texas',332969);
INSERT INTO `demo_city` VALUES (3846,'Cincinnati','USA','Ohio',331285);
INSERT INTO `demo_city` VALUES (3847,'Anaheim','USA','California',328014);
INSERT INTO `demo_city` VALUES (3848,'Toledo','USA','Ohio',313619);
INSERT INTO `demo_city` VALUES (3849,'Tampa','USA','Florida',303447);
INSERT INTO `demo_city` VALUES (3850,'Buffalo','USA','New York',292648);
INSERT INTO `demo_city` VALUES (3851,'Saint Paul','USA','Minnesota',287151);
INSERT INTO `demo_city` VALUES (3852,'Corpus Christi','USA','Texas',277454);
INSERT INTO `demo_city` VALUES (3853,'Aurora','USA','Colorado',276393);
INSERT INTO `demo_city` VALUES (3854,'Raleigh','USA','North Carolina',276093);
INSERT INTO `demo_city` VALUES (3855,'Newark','USA','New Jersey',273546);
INSERT INTO `demo_city` VALUES (3856,'Lexington-Fayette','USA','Kentucky',260512);
INSERT INTO `demo_city` VALUES (3857,'Anchorage','USA','Alaska',260283);
INSERT INTO `demo_city` VALUES (3858,'Louisville','USA','Kentucky',256231);
INSERT INTO `demo_city` VALUES (3859,'Riverside','USA','California',255166);
INSERT INTO `demo_city` VALUES (3860,'Saint Petersburg','USA','Florida',248232);
INSERT INTO `demo_city` VALUES (3861,'Bakersfield','USA','California',247057);
INSERT INTO `demo_city` VALUES (3862,'Stockton','USA','California',243771);
INSERT INTO `demo_city` VALUES (3863,'Birmingham','USA','Alabama',242820);
INSERT INTO `demo_city` VALUES (3864,'Jersey City','USA','New Jersey',240055);
INSERT INTO `demo_city` VALUES (3865,'Norfolk','USA','Virginia',234403);
INSERT INTO `demo_city` VALUES (3866,'Baton Rouge','USA','Louisiana',227818);
INSERT INTO `demo_city` VALUES (3867,'Hialeah','USA','Florida',226419);
INSERT INTO `demo_city` VALUES (3868,'Lincoln','USA','Nebraska',225581);
INSERT INTO `demo_city` VALUES (3869,'Greensboro','USA','North Carolina',223891);
INSERT INTO `demo_city` VALUES (3870,'Plano','USA','Texas',222030);
INSERT INTO `demo_city` VALUES (3871,'Rochester','USA','New York',219773);
INSERT INTO `demo_city` VALUES (3872,'Glendale','USA','Arizona',218812);
INSERT INTO `demo_city` VALUES (3873,'Akron','USA','Ohio',217074);
INSERT INTO `demo_city` VALUES (3874,'Garland','USA','Texas',215768);
INSERT INTO `demo_city` VALUES (3875,'Madison','USA','Wisconsin',208054);
INSERT INTO `demo_city` VALUES (3876,'Fort Wayne','USA','Indiana',205727);
INSERT INTO `demo_city` VALUES (3877,'Fremont','USA','California',203413);
INSERT INTO `demo_city` VALUES (3878,'Scottsdale','USA','Arizona',202705);
INSERT INTO `demo_city` VALUES (3879,'Montgomery','USA','Alabama',201568);
INSERT INTO `demo_city` VALUES (3880,'Shreveport','USA','Louisiana',200145);
INSERT INTO `demo_city` VALUES (3881,'Augusta-Richmond County','USA','Georgia',199775);
INSERT INTO `demo_city` VALUES (3882,'Lubbock','USA','Texas',199564);
INSERT INTO `demo_city` VALUES (3883,'Chesapeake','USA','Virginia',199184);
INSERT INTO `demo_city` VALUES (3884,'Mobile','USA','Alabama',198915);
INSERT INTO `demo_city` VALUES (3885,'Des Moines','USA','Iowa',198682);
INSERT INTO `demo_city` VALUES (3886,'Grand Rapids','USA','Michigan',197800);
INSERT INTO `demo_city` VALUES (3887,'Richmond','USA','Virginia',197790);
INSERT INTO `demo_city` VALUES (3888,'Yonkers','USA','New York',196086);
INSERT INTO `demo_city` VALUES (3889,'Spokane','USA','Washington',195629);
INSERT INTO `demo_city` VALUES (3890,'Glendale','USA','California',194973);
INSERT INTO `demo_city` VALUES (3891,'Tacoma','USA','Washington',193556);
INSERT INTO `demo_city` VALUES (3892,'Irving','USA','Texas',191615);
INSERT INTO `demo_city` VALUES (3893,'Huntington Beach','USA','California',189594);
INSERT INTO `demo_city` VALUES (3894,'Modesto','USA','California',188856);
INSERT INTO `demo_city` VALUES (3895,'Durham','USA','North Carolina',187035);
INSERT INTO `demo_city` VALUES (3896,'Columbus','USA','Georgia',186291);
INSERT INTO `demo_city` VALUES (3897,'Orlando','USA','Florida',185951);
INSERT INTO `demo_city` VALUES (3898,'Boise City','USA','Idaho',185787);
INSERT INTO `demo_city` VALUES (3899,'Winston-Salem','USA','North Carolina',185776);
INSERT INTO `demo_city` VALUES (3900,'San Bernardino','USA','California',185401);
INSERT INTO `demo_city` VALUES (3901,'Jackson','USA','Mississippi',184256);
INSERT INTO `demo_city` VALUES (3902,'Little Rock','USA','Arkansas',183133);
INSERT INTO `demo_city` VALUES (3903,'Salt Lake City','USA','Utah',181743);
INSERT INTO `demo_city` VALUES (3904,'Reno','USA','Nevada',180480);
INSERT INTO `demo_city` VALUES (3905,'Newport News','USA','Virginia',180150);
INSERT INTO `demo_city` VALUES (3906,'Chandler','USA','Arizona',176581);
INSERT INTO `demo_city` VALUES (3907,'Laredo','USA','Texas',176576);
INSERT INTO `demo_city` VALUES (3908,'Henderson','USA','Nevada',175381);
INSERT INTO `demo_city` VALUES (3909,'Arlington','USA','Virginia',174838);
INSERT INTO `demo_city` VALUES (3910,'Knoxville','USA','Tennessee',173890);
INSERT INTO `demo_city` VALUES (3911,'Amarillo','USA','Texas',173627);
INSERT INTO `demo_city` VALUES (3912,'Providence','USA','Rhode Island',173618);
INSERT INTO `demo_city` VALUES (3913,'Chula Vista','USA','California',173556);
INSERT INTO `demo_city` VALUES (3914,'Worcester','USA','Massachusetts',172648);
INSERT INTO `demo_city` VALUES (3915,'Oxnard','USA','California',170358);
INSERT INTO `demo_city` VALUES (3916,'Dayton','USA','Ohio',166179);
INSERT INTO `demo_city` VALUES (3917,'Garden Grove','USA','California',165196);
INSERT INTO `demo_city` VALUES (3918,'Oceanside','USA','California',161029);
INSERT INTO `demo_city` VALUES (3919,'Tempe','USA','Arizona',158625);
INSERT INTO `demo_city` VALUES (3920,'Huntsville','USA','Alabama',158216);
INSERT INTO `demo_city` VALUES (3921,'Ontario','USA','California',158007);
INSERT INTO `demo_city` VALUES (3922,'Chattanooga','USA','Tennessee',155554);
INSERT INTO `demo_city` VALUES (3923,'Fort Lauderdale','USA','Florida',152397);
INSERT INTO `demo_city` VALUES (3924,'Springfield','USA','Massachusetts',152082);
INSERT INTO `demo_city` VALUES (3925,'Springfield','USA','Missouri',151580);
INSERT INTO `demo_city` VALUES (3926,'Santa Clarita','USA','California',151088);
INSERT INTO `demo_city` VALUES (3927,'Salinas','USA','California',151060);
INSERT INTO `demo_city` VALUES (3928,'Tallahassee','USA','Florida',150624);
INSERT INTO `demo_city` VALUES (3929,'Rockford','USA','Illinois',150115);
INSERT INTO `demo_city` VALUES (3930,'Pomona','USA','California',149473);
INSERT INTO `demo_city` VALUES (3931,'Metairie','USA','Louisiana',149428);
INSERT INTO `demo_city` VALUES (3932,'Paterson','USA','New Jersey',149222);
INSERT INTO `demo_city` VALUES (3933,'Overland Park','USA','Kansas',149080);
INSERT INTO `demo_city` VALUES (3934,'Santa Rosa','USA','California',147595);
INSERT INTO `demo_city` VALUES (3935,'Syracuse','USA','New York',147306);
INSERT INTO `demo_city` VALUES (3936,'Kansas City','USA','Kansas',146866);
INSERT INTO `demo_city` VALUES (3937,'Hampton','USA','Virginia',146437);
INSERT INTO `demo_city` VALUES (3938,'Lakewood','USA','Colorado',144126);
INSERT INTO `demo_city` VALUES (3939,'Vancouver','USA','Washington',143560);
INSERT INTO `demo_city` VALUES (3940,'Irvine','USA','California',143072);
INSERT INTO `demo_city` VALUES (3941,'Aurora','USA','Illinois',142990);
INSERT INTO `demo_city` VALUES (3942,'Moreno Valley','USA','California',142381);
INSERT INTO `demo_city` VALUES (3943,'Pasadena','USA','California',141674);
INSERT INTO `demo_city` VALUES (3944,'Hayward','USA','California',140030);
INSERT INTO `demo_city` VALUES (3945,'Brownsville','USA','Texas',139722);
INSERT INTO `demo_city` VALUES (3946,'Bridgeport','USA','Connecticut',139529);
INSERT INTO `demo_city` VALUES (3947,'Hollywood','USA','Florida',139357);
INSERT INTO `demo_city` VALUES (3948,'Warren','USA','Michigan',138247);
INSERT INTO `demo_city` VALUES (3949,'Torrance','USA','California',137946);
INSERT INTO `demo_city` VALUES (3950,'Eugene','USA','Oregon',137893);
INSERT INTO `demo_city` VALUES (3951,'Pembroke Pines','USA','Florida',137427);
INSERT INTO `demo_city` VALUES (3952,'Salem','USA','Oregon',136924);
INSERT INTO `demo_city` VALUES (3953,'Pasadena','USA','Texas',133936);
INSERT INTO `demo_city` VALUES (3954,'Escondido','USA','California',133559);
INSERT INTO `demo_city` VALUES (3955,'Sunnyvale','USA','California',131760);
INSERT INTO `demo_city` VALUES (3956,'Savannah','USA','Georgia',131510);
INSERT INTO `demo_city` VALUES (3957,'Fontana','USA','California',128929);
INSERT INTO `demo_city` VALUES (3958,'Orange','USA','California',128821);
INSERT INTO `demo_city` VALUES (3959,'Naperville','USA','Illinois',128358);
INSERT INTO `demo_city` VALUES (3960,'Alexandria','USA','Virginia',128283);
INSERT INTO `demo_city` VALUES (3961,'Rancho Cucamonga','USA','California',127743);
INSERT INTO `demo_city` VALUES (3962,'Grand Prairie','USA','Texas',127427);
INSERT INTO `demo_city` VALUES (3963,'East Los Angeles','USA','California',126379);
INSERT INTO `demo_city` VALUES (3964,'Fullerton','USA','California',126003);
INSERT INTO `demo_city` VALUES (3965,'Corona','USA','California',124966);
INSERT INTO `demo_city` VALUES (3966,'Flint','USA','Michigan',124943);
INSERT INTO `demo_city` VALUES (3967,'Paradise','USA','Nevada',124682);
INSERT INTO `demo_city` VALUES (3968,'Mesquite','USA','Texas',124523);
INSERT INTO `demo_city` VALUES (3969,'Sterling Heights','USA','Michigan',124471);
INSERT INTO `demo_city` VALUES (3970,'Sioux Falls','USA','South Dakota',123975);
INSERT INTO `demo_city` VALUES (3971,'New Haven','USA','Connecticut',123626);
INSERT INTO `demo_city` VALUES (3972,'Topeka','USA','Kansas',122377);
INSERT INTO `demo_city` VALUES (3973,'Concord','USA','California',121780);
INSERT INTO `demo_city` VALUES (3974,'Evansville','USA','Indiana',121582);
INSERT INTO `demo_city` VALUES (3975,'Hartford','USA','Connecticut',121578);
INSERT INTO `demo_city` VALUES (3976,'Fayetteville','USA','North Carolina',121015);
INSERT INTO `demo_city` VALUES (3977,'Cedar Rapids','USA','Iowa',120758);
INSERT INTO `demo_city` VALUES (3978,'Elizabeth','USA','New Jersey',120568);
INSERT INTO `demo_city` VALUES (3979,'Lansing','USA','Michigan',119128);
INSERT INTO `demo_city` VALUES (3980,'Lancaster','USA','California',118718);
INSERT INTO `demo_city` VALUES (3981,'Fort Collins','USA','Colorado',118652);
INSERT INTO `demo_city` VALUES (3982,'Coral Springs','USA','Florida',117549);
INSERT INTO `demo_city` VALUES (3983,'Stamford','USA','Connecticut',117083);
INSERT INTO `demo_city` VALUES (3984,'Thousand Oaks','USA','California',117005);
INSERT INTO `demo_city` VALUES (3985,'Vallejo','USA','California',116760);
INSERT INTO `demo_city` VALUES (3986,'Palmdale','USA','California',116670);
INSERT INTO `demo_city` VALUES (3987,'Columbia','USA','South Carolina',116278);
INSERT INTO `demo_city` VALUES (3988,'El Monte','USA','California',115965);
INSERT INTO `demo_city` VALUES (3989,'Abilene','USA','Texas',115930);
INSERT INTO `demo_city` VALUES (3990,'North Las Vegas','USA','Nevada',115488);
INSERT INTO `demo_city` VALUES (3991,'Ann Arbor','USA','Michigan',114024);
INSERT INTO `demo_city` VALUES (3992,'Beaumont','USA','Texas',113866);
INSERT INTO `demo_city` VALUES (3993,'Waco','USA','Texas',113726);
INSERT INTO `demo_city` VALUES (3994,'Macon','USA','Georgia',113336);
INSERT INTO `demo_city` VALUES (3995,'Independence','USA','Missouri',113288);
INSERT INTO `demo_city` VALUES (3996,'Peoria','USA','Illinois',112936);
INSERT INTO `demo_city` VALUES (3997,'Inglewood','USA','California',112580);
INSERT INTO `demo_city` VALUES (3998,'Springfield','USA','Illinois',111454);
INSERT INTO `demo_city` VALUES (3999,'Simi Valley','USA','California',111351);

DELIMITER ;

INSERT INTO `demo_city` VALUES (4000,'Lafayette','USA','Louisiana',110257);
INSERT INTO `demo_city` VALUES (4001,'Gilbert','USA','Arizona',109697);
INSERT INTO `demo_city` VALUES (4002,'Carrollton','USA','Texas',109576);
INSERT INTO `demo_city` VALUES (4003,'Bellevue','USA','Washington',109569);
INSERT INTO `demo_city` VALUES (4004,'West Valley City','USA','Utah',108896);
INSERT INTO `demo_city` VALUES (4005,'Clarksville','USA','Tennessee',108787);
INSERT INTO `demo_city` VALUES (4006,'Costa Mesa','USA','California',108724);
INSERT INTO `demo_city` VALUES (4007,'Peoria','USA','Arizona',108364);
INSERT INTO `demo_city` VALUES (4008,'South Bend','USA','Indiana',107789);
INSERT INTO `demo_city` VALUES (4009,'Downey','USA','California',107323);
INSERT INTO `demo_city` VALUES (4010,'Waterbury','USA','Connecticut',107271);
INSERT INTO `demo_city` VALUES (4011,'Manchester','USA','New Hampshire',107006);
INSERT INTO `demo_city` VALUES (4012,'Allentown','USA','Pennsylvania',106632);
INSERT INTO `demo_city` VALUES (4013,'McAllen','USA','Texas',106414);
INSERT INTO `demo_city` VALUES (4014,'Joliet','USA','Illinois',106221);
INSERT INTO `demo_city` VALUES (4015,'Lowell','USA','Massachusetts',105167);
INSERT INTO `demo_city` VALUES (4016,'Provo','USA','Utah',105166);
INSERT INTO `demo_city` VALUES (4017,'West Covina','USA','California',105080);
INSERT INTO `demo_city` VALUES (4018,'Wichita Falls','USA','Texas',104197);
INSERT INTO `demo_city` VALUES (4019,'Erie','USA','Pennsylvania',103717);
INSERT INTO `demo_city` VALUES (4020,'Daly City','USA','California',103621);
INSERT INTO `demo_city` VALUES (4021,'Citrus Heights','USA','California',103455);
INSERT INTO `demo_city` VALUES (4022,'Norwalk','USA','California',103298);
INSERT INTO `demo_city` VALUES (4023,'Gary','USA','Indiana',102746);
INSERT INTO `demo_city` VALUES (4024,'Berkeley','USA','California',102743);
INSERT INTO `demo_city` VALUES (4025,'Santa Clara','USA','California',102361);
INSERT INTO `demo_city` VALUES (4026,'Green Bay','USA','Wisconsin',102313);
INSERT INTO `demo_city` VALUES (4027,'Cape Coral','USA','Florida',102286);
INSERT INTO `demo_city` VALUES (4028,'Arvada','USA','Colorado',102153);
INSERT INTO `demo_city` VALUES (4029,'Pueblo','USA','Colorado',102121);
INSERT INTO `demo_city` VALUES (4030,'Sandy','USA','Utah',101853);
INSERT INTO `demo_city` VALUES (4031,'Athens-Clarke County','USA','Georgia',101489);
INSERT INTO `demo_city` VALUES (4032,'Cambridge','USA','Massachusetts',101355);
INSERT INTO `demo_city` VALUES (4033,'Westminster','USA','Colorado',100940);
INSERT INTO `demo_city` VALUES (4034,'San Buenaventura','USA','California',100916);
INSERT INTO `demo_city` VALUES (4035,'Portsmouth','USA','Virginia',100565);
INSERT INTO `demo_city` VALUES (4036,'Livonia','USA','Michigan',100545);
INSERT INTO `demo_city` VALUES (4037,'Burbank','USA','California',100316);
INSERT INTO `demo_city` VALUES (4038,'Clearwater','USA','Florida',99936);
INSERT INTO `demo_city` VALUES (4039,'Midland','USA','Texas',98293);
INSERT INTO `demo_city` VALUES (4040,'Davenport','USA','Iowa',98256);
INSERT INTO `demo_city` VALUES (4041,'Mission Viejo','USA','California',98049);
INSERT INTO `demo_city` VALUES (4042,'Miami Beach','USA','Florida',97855);
INSERT INTO `demo_city` VALUES (4043,'Sunrise Manor','USA','Nevada',95362);
INSERT INTO `demo_city` VALUES (4044,'New Bedford','USA','Massachusetts',94780);
INSERT INTO `demo_city` VALUES (4045,'El Cajon','USA','California',94578);
INSERT INTO `demo_city` VALUES (4046,'Norman','USA','Oklahoma',94193);
INSERT INTO `demo_city` VALUES (4047,'Richmond','USA','California',94100);
INSERT INTO `demo_city` VALUES (4048,'Albany','USA','New York',93994);
INSERT INTO `demo_city` VALUES (4049,'Brockton','USA','Massachusetts',93653);
INSERT INTO `demo_city` VALUES (4050,'Roanoke','USA','Virginia',93357);
INSERT INTO `demo_city` VALUES (4051,'Billings','USA','Montana',92988);
INSERT INTO `demo_city` VALUES (4052,'Compton','USA','California',92864);
INSERT INTO `demo_city` VALUES (4053,'Gainesville','USA','Florida',92291);
INSERT INTO `demo_city` VALUES (4054,'Fairfield','USA','California',92256);
INSERT INTO `demo_city` VALUES (4055,'Arden-Arcade','USA','California',92040);
INSERT INTO `demo_city` VALUES (4056,'San Mateo','USA','California',91799);
INSERT INTO `demo_city` VALUES (4057,'Visalia','USA','California',91762);
INSERT INTO `demo_city` VALUES (4058,'Boulder','USA','Colorado',91238);
INSERT INTO `demo_city` VALUES (4059,'Cary','USA','North Carolina',91213);
INSERT INTO `demo_city` VALUES (4060,'Santa Monica','USA','California',91084);
INSERT INTO `demo_city` VALUES (4061,'Fall River','USA','Massachusetts',90555);
INSERT INTO `demo_city` VALUES (4062,'Kenosha','USA','Wisconsin',89447);
INSERT INTO `demo_city` VALUES (4063,'Elgin','USA','Illinois',89408);
INSERT INTO `demo_city` VALUES (4064,'Odessa','USA','Texas',89293);
INSERT INTO `demo_city` VALUES (4065,'Carson','USA','California',89089);
INSERT INTO `demo_city` VALUES (4066,'Charleston','USA','South Carolina',89063);
INSERT INTO `demo_city` VALUES (4067,'Charlotte Amalie','VIR','St Thomas',13000);
INSERT INTO `demo_city` VALUES (4068,'Harare','ZWE','Harare',1410000);
INSERT INTO `demo_city` VALUES (4069,'Bulawayo','ZWE','Bulawayo',621742);
INSERT INTO `demo_city` VALUES (4070,'Chitungwiza','ZWE','Harare',274912);
INSERT INTO `demo_city` VALUES (4071,'Mount Darwin','ZWE','Harare',164362);
INSERT INTO `demo_city` VALUES (4072,'Mutare','ZWE','Manicaland',131367);
INSERT INTO `demo_city` VALUES (4073,'Gweru','ZWE','Midlands',128037);
INSERT INTO `demo_city` VALUES (4074,'Gaza','PSE','Gaza',353632);
INSERT INTO `demo_city` VALUES (4075,'Khan Yunis','PSE','Khan Yunis',123175);
INSERT INTO `demo_city` VALUES (4076,'Hebron','PSE','Hebron',119401);
INSERT INTO `demo_city` VALUES (4077,'Jabaliya','PSE','North Gaza',113901);
INSERT INTO `demo_city` VALUES (4078,'Nablus','PSE','Nablus',100231);
INSERT INTO `demo_city` VALUES (4079,'Rafah','PSE','Rafah',92020);

--
-- Table structure for table `demo_country`
--

DROP TABLE IF EXISTS `demo_country`;
CREATE TABLE `demo_country` (
  `Code` char(3) NOT NULL default '',
  `Name` char(52) NOT NULL default '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL default 'Asia',
  `Region` char(26) NOT NULL default '',
  `SurfaceArea` float(10,2) NOT NULL default '0.00',
  `IndepYear` smallint(6) default NULL,
  `Population` int(11) NOT NULL default '0',
  `LifeExpectancy` float(3,1) default NULL,
  `GNP` float(10,2) default NULL,
  `GNPOld` float(10,2) default NULL,
  `LocalName` char(45) NOT NULL default '',
  `GovernmentForm` char(45) NOT NULL default '',
  `HeadOfState` char(60) default NULL,
  `Capital` int(11) default NULL,
  `Code2` char(2) NOT NULL default '',
  PRIMARY KEY  (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `demo_country`
--

INSERT INTO `demo_country` VALUES ('AFG','Afghanistan','Asia','Southern and Central Asia',652090.00,1919,22720000,45.9,5976.00,NULL,'Afganistan/Afqanestan','Islamic Emirate','Mohammad Omar',1,'AF');
INSERT INTO `demo_country` VALUES ('NLD','Netherlands','Europe','Western Europe',41526.00,1581,15864000,78.3,371362.00,360478.00,'Nederland','Constitutional Monarchy','Beatrix',5,'NL');
INSERT INTO `demo_country` VALUES ('ANT','Netherlands Antilles','North America','Caribbean',800.00,NULL,217000,74.7,1941.00,NULL,'Nederlandse Antillen','Nonmetropolitan Territory of The Netherlands','Beatrix',33,'AN');
INSERT INTO `demo_country` VALUES ('ALB','Albania','Europe','Southern Europe',28748.00,1912,3401200,71.6,3205.00,2500.00,'Shqipëria','Republic','Rexhep Mejdani',34,'AL');
INSERT INTO `demo_country` VALUES ('DZA','Algeria','Africa','Northern Africa',2381741.00,1962,31471000,69.7,49982.00,46966.00,'Al-Jazašir/Algérie','Republic','Abdelaziz Bouteflika',35,'DZ');
INSERT INTO `demo_country` VALUES ('ASM','American Samoa','Oceania','Polynesia',199.00,NULL,68000,75.1,334.00,NULL,'Amerika Samoa','US Territory','George W. Bush',54,'AS');
INSERT INTO `demo_country` VALUES ('AND','Andorra','Europe','Southern Europe',468.00,1278,78000,83.5,1630.00,NULL,'Andorra','Parliamentary Coprincipality','',55,'AD');
INSERT INTO `demo_country` VALUES ('AGO','Angola','Africa','Central Africa',1246700.00,1975,12878000,38.3,6648.00,7984.00,'Angola','Republic','José Eduardo dos Santos',56,'AO');
INSERT INTO `demo_country` VALUES ('AIA','Anguilla','North America','Caribbean',96.00,NULL,8000,76.1,63.20,NULL,'Anguilla','Dependent Territory of the UK','Elisabeth II',62,'AI');
INSERT INTO `demo_country` VALUES ('ATG','Antigua and Barbuda','North America','Caribbean',442.00,1981,68000,70.5,612.00,584.00,'Antigua and Barbuda','Constitutional Monarchy','Elisabeth II',63,'AG');
INSERT INTO `demo_country` VALUES ('ARE','United Arab Emirates','Asia','Middle East',83600.00,1971,2441000,74.1,37966.00,36846.00,'Al-Imarat al-´Arabiya al-Muttahida','Emirate Federation','Zayid bin Sultan al-Nahayan',65,'AE');
INSERT INTO `demo_country` VALUES ('ARG','Argentina','South America','South America',2780400.00,1816,37032000,75.1,340238.00,323310.00,'Argentina','Federal Republic','Fernando de la Rúa',69,'AR');
INSERT INTO `demo_country` VALUES ('ARM','Armenia','Asia','Middle East',29800.00,1991,3520000,66.4,1813.00,1627.00,'Hajastan','Republic','Robert Kotšarjan',126,'AM');
INSERT INTO `demo_country` VALUES ('ABW','Aruba','North America','Caribbean',193.00,NULL,103000,78.4,828.00,793.00,'Aruba','Nonmetropolitan Territory of The Netherlands','Beatrix',129,'AW');
INSERT INTO `demo_country` VALUES ('AUS','Australia','Oceania','Australia and New Zealand',7741220.00,1901,18886000,79.8,351182.00,392911.00,'Australia','Constitutional Monarchy, Federation','Elisabeth II',135,'AU');
INSERT INTO `demo_country` VALUES ('AZE','Azerbaijan','Asia','Middle East',86600.00,1991,7734000,62.9,4127.00,4100.00,'Azärbaycan','Federal Republic','Heydär Öliyev',144,'AZ');
INSERT INTO `demo_country` VALUES ('BHS','Bahamas','North America','Caribbean',13878.00,1973,307000,71.1,3527.00,3347.00,'The Bahamas','Constitutional Monarchy','Elisabeth II',148,'BS');
INSERT INTO `demo_country` VALUES ('BHR','Bahrain','Asia','Middle East',694.00,1971,617000,73.0,6366.00,6097.00,'Al-Bahrayn','Monarchy (Emirate)','Hamad ibn Isa al-Khalifa',149,'BH');
INSERT INTO `demo_country` VALUES ('BGD','Bangladesh','Asia','Southern and Central Asia',143998.00,1971,129155000,60.2,32852.00,31966.00,'Bangladesh','Republic','Shahabuddin Ahmad',150,'BD');
INSERT INTO `demo_country` VALUES ('BRB','Barbados','North America','Caribbean',430.00,1966,270000,73.0,2223.00,2186.00,'Barbados','Constitutional Monarchy','Elisabeth II',174,'BB');
INSERT INTO `demo_country` VALUES ('BEL','Belgium','Europe','Western Europe',30518.00,1830,10239000,77.8,249704.00,243948.00,'België/Belgique','Constitutional Monarchy, Federation','Albert II',179,'BE');
INSERT INTO `demo_country` VALUES ('BLZ','Belize','North America','Central America',22696.00,1981,241000,70.9,630.00,616.00,'Belize','Constitutional Monarchy','Elisabeth II',185,'BZ');
INSERT INTO `demo_country` VALUES ('BEN','Benin','Africa','Western Africa',112622.00,1960,6097000,50.2,2357.00,2141.00,'Bénin','Republic','Mathieu Kérékou',187,'BJ');
INSERT INTO `demo_country` VALUES ('BMU','Bermuda','North America','North America',53.00,NULL,65000,76.9,2328.00,2190.00,'Bermuda','Dependent Territory of the UK','Elisabeth II',191,'BM');
INSERT INTO `demo_country` VALUES ('BTN','Bhutan','Asia','Southern and Central Asia',47000.00,1910,2124000,52.4,372.00,383.00,'Druk-Yul','Monarchy','Jigme Singye Wangchuk',192,'BT');
INSERT INTO `demo_country` VALUES ('BOL','Bolivia','South America','South America',1098581.00,1825,8329000,63.7,8571.00,7967.00,'Bolivia','Republic','Hugo Bánzer Suárez',194,'BO');
INSERT INTO `demo_country` VALUES ('BIH','Bosnia and Herzegovina','Europe','Southern Europe',51197.00,1992,3972000,71.5,2841.00,NULL,'Bosna i Hercegovina','Federal Republic','Ante Jelavic',201,'BA');
INSERT INTO `demo_country` VALUES ('BWA','Botswana','Africa','Southern Africa',581730.00,1966,1622000,39.3,4834.00,4935.00,'Botswana','Republic','Festus G. Mogae',204,'BW');
INSERT INTO `demo_country` VALUES ('BRA','Brazil','South America','South America',8547403.00,1822,170115000,62.9,776739.00,804108.00,'Brasil','Federal Republic','Fernando Henrique Cardoso',211,'BR');
INSERT INTO `demo_country` VALUES ('GBR','United Kingdom','Europe','British Islands',242900.00,1066,59623400,77.7,1378330.00,1296830.00,'United Kingdom','Constitutional Monarchy','Elisabeth II',456,'GB');
INSERT INTO `demo_country` VALUES ('VGB','Virgin Islands, British','North America','Caribbean',151.00,NULL,21000,75.4,612.00,573.00,'British Virgin Islands','Dependent Territory of the UK','Elisabeth II',537,'VG');
INSERT INTO `demo_country` VALUES ('BRN','Brunei','Asia','Southeast Asia',5765.00,1984,328000,73.6,11705.00,12460.00,'Brunei Darussalam','Monarchy (Sultanate)','Haji Hassan al-Bolkiah',538,'BN');
INSERT INTO `demo_country` VALUES ('BGR','Bulgaria','Europe','Eastern Europe',110994.00,1908,8190900,70.9,12178.00,10169.00,'Balgarija','Republic','Petar Stojanov',539,'BG');
INSERT INTO `demo_country` VALUES ('BFA','Burkina Faso','Africa','Western Africa',274000.00,1960,11937000,46.7,2425.00,2201.00,'Burkina Faso','Republic','Blaise Compaoré',549,'BF');
INSERT INTO `demo_country` VALUES ('BDI','Burundi','Africa','Eastern Africa',27834.00,1962,6695000,46.2,903.00,982.00,'Burundi/Uburundi','Republic','Pierre Buyoya',552,'BI');
INSERT INTO `demo_country` VALUES ('CYM','Cayman Islands','North America','Caribbean',264.00,NULL,38000,78.9,1263.00,1186.00,'Cayman Islands','Dependent Territory of the UK','Elisabeth II',553,'KY');
INSERT INTO `demo_country` VALUES ('CHL','Chile','South America','South America',756626.00,1810,15211000,75.7,72949.00,75780.00,'Chile','Republic','Ricardo Lagos Escobar',554,'CL');
INSERT INTO `demo_country` VALUES ('COK','Cook Islands','Oceania','Polynesia',236.00,NULL,20000,71.1,100.00,NULL,'The Cook Islands','Nonmetropolitan Territory of New Zealand','Elisabeth II',583,'CK');
INSERT INTO `demo_country` VALUES ('CRI','Costa Rica','North America','Central America',51100.00,1821,4023000,75.8,10226.00,9757.00,'Costa Rica','Republic','Miguel Ángel Rodríguez Echeverría',584,'CR');
INSERT INTO `demo_country` VALUES ('DJI','Djibouti','Africa','Eastern Africa',23200.00,1977,638000,50.8,382.00,373.00,'Djibouti/Jibuti','Republic','Ismail Omar Guelleh',585,'DJ');
INSERT INTO `demo_country` VALUES ('DMA','Dominica','North America','Caribbean',751.00,1978,71000,73.4,256.00,243.00,'Dominica','Republic','Vernon Shaw',586,'DM');
INSERT INTO `demo_country` VALUES ('DOM','Dominican Republic','North America','Caribbean',48511.00,1844,8495000,73.2,15846.00,15076.00,'República Dominicana','Republic','Hipólito Mejía Domínguez',587,'DO');
INSERT INTO `demo_country` VALUES ('ECU','Ecuador','South America','South America',283561.00,1822,12646000,71.1,19770.00,19769.00,'Ecuador','Republic','Gustavo Noboa Bejarano',594,'EC');
INSERT INTO `demo_country` VALUES ('EGY','Egypt','Africa','Northern Africa',1001449.00,1922,68470000,63.3,82710.00,75617.00,'Misr','Republic','Hosni Mubarak',608,'EG');
INSERT INTO `demo_country` VALUES ('SLV','El Salvador','North America','Central America',21041.00,1841,6276000,69.7,11863.00,11203.00,'El Salvador','Republic','Francisco Guillermo Flores Pérez',645,'SV');
INSERT INTO `demo_country` VALUES ('ERI','Eritrea','Africa','Eastern Africa',117600.00,1993,3850000,55.8,650.00,755.00,'Ertra','Republic','Isayas Afewerki [Isaias Afwerki]',652,'ER');
INSERT INTO `demo_country` VALUES ('ESP','Spain','Europe','Southern Europe',505992.00,1492,39441700,78.8,553233.00,532031.00,'España','Constitutional Monarchy','Juan Carlos I',653,'ES');
INSERT INTO `demo_country` VALUES ('ZAF','South Africa','Africa','Southern Africa',1221037.00,1910,40377000,51.1,116729.00,129092.00,'South Africa','Republic','Thabo Mbeki',716,'ZA');
INSERT INTO `demo_country` VALUES ('ETH','Ethiopia','Africa','Eastern Africa',1104300.00,-1000,62565000,45.2,6353.00,6180.00,'YeItyop´iya','Republic','Negasso Gidada',756,'ET');
INSERT INTO `demo_country` VALUES ('FLK','Falkland Islands','South America','South America',12173.00,NULL,2000,NULL,0.00,NULL,'Falkland Islands','Dependent Territory of the UK','Elisabeth II',763,'FK');
INSERT INTO `demo_country` VALUES ('FJI','Fiji Islands','Oceania','Melanesia',18274.00,1970,817000,67.9,1536.00,2149.00,'Fiji Islands','Republic','Josefa Iloilo',764,'FJ');
INSERT INTO `demo_country` VALUES ('PHL','Philippines','Asia','Southeast Asia',300000.00,1946,75967000,67.5,65107.00,82239.00,'Pilipinas','Republic','Gloria Macapagal-Arroyo',766,'PH');
INSERT INTO `demo_country` VALUES ('FRO','Faroe Islands','Europe','Nordic Countries',1399.00,NULL,43000,78.4,0.00,NULL,'Føroyar','Part of Denmark','Margrethe II',901,'FO');
INSERT INTO `demo_country` VALUES ('GAB','Gabon','Africa','Central Africa',267668.00,1960,1226000,50.1,5493.00,5279.00,'Le Gabon','Republic','Omar Bongo',902,'GA');
INSERT INTO `demo_country` VALUES ('GMB','Gambia','Africa','Western Africa',11295.00,1965,1305000,53.2,320.00,325.00,'The Gambia','Republic','Yahya Jammeh',904,'GM');
INSERT INTO `demo_country` VALUES ('GEO','Georgia','Asia','Middle East',69700.00,1991,4968000,64.5,6064.00,5924.00,'Sakartvelo','Republic','Eduard evardnadze',905,'GE');
INSERT INTO `demo_country` VALUES ('GHA','Ghana','Africa','Western Africa',238533.00,1957,20212000,57.4,7137.00,6884.00,'Ghana','Republic','John Kufuor',910,'GH');
INSERT INTO `demo_country` VALUES ('GIB','Gibraltar','Europe','Southern Europe',6.00,NULL,25000,79.0,258.00,NULL,'Gibraltar','Dependent Territory of the UK','Elisabeth II',915,'GI');
INSERT INTO `demo_country` VALUES ('GRD','Grenada','North America','Caribbean',344.00,1974,94000,64.5,318.00,NULL,'Grenada','Constitutional Monarchy','Elisabeth II',916,'GD');
INSERT INTO `demo_country` VALUES ('GRL','Greenland','North America','North America',2166090.00,NULL,56000,68.1,0.00,NULL,'Kalaallit Nunaat/Grønland','Part of Denmark','Margrethe II',917,'GL');
INSERT INTO `demo_country` VALUES ('GLP','Guadeloupe','North America','Caribbean',1705.00,NULL,456000,77.0,3501.00,NULL,'Guadeloupe','Overseas Department of France','Jacques Chirac',919,'GP');
INSERT INTO `demo_country` VALUES ('GUM','Guam','Oceania','Micronesia',549.00,NULL,168000,77.8,1197.00,1136.00,'Guam','US Territory','George W. Bush',921,'GU');
INSERT INTO `demo_country` VALUES ('GTM','Guatemala','North America','Central America',108889.00,1821,11385000,66.2,19008.00,17797.00,'Guatemala','Republic','Alfonso Portillo Cabrera',922,'GT');
INSERT INTO `demo_country` VALUES ('GIN','Guinea','Africa','Western Africa',245857.00,1958,7430000,45.6,2352.00,2383.00,'Guinée','Republic','Lansana Conté',926,'GN');
INSERT INTO `demo_country` VALUES ('GNB','Guinea-Bissau','Africa','Western Africa',36125.00,1974,1213000,49.0,293.00,272.00,'Guiné-Bissau','Republic','Kumba Ialá',927,'GW');
INSERT INTO `demo_country` VALUES ('GUY','Guyana','South America','South America',214969.00,1966,861000,64.0,722.00,743.00,'Guyana','Republic','Bharrat Jagdeo',928,'GY');
INSERT INTO `demo_country` VALUES ('HTI','Haiti','North America','Caribbean',27750.00,1804,8222000,49.2,3459.00,3107.00,'Haïti/Dayti','Republic','Jean-Bertrand Aristide',929,'HT');
INSERT INTO `demo_country` VALUES ('HND','Honduras','North America','Central America',112088.00,1838,6485000,69.9,5333.00,4697.00,'Honduras','Republic','Carlos Roberto Flores Facussé',933,'HN');
INSERT INTO `demo_country` VALUES ('HKG','Hong Kong','Asia','Eastern Asia',1075.00,NULL,6782000,79.5,166448.00,173610.00,'Xianggang/Hong Kong','Special Administrative Region of China','Jiang Zemin',937,'HK');
INSERT INTO `demo_country` VALUES ('SJM','Svalbard and Jan Mayen','Europe','Nordic Countries',62422.00,NULL,3200,NULL,0.00,NULL,'Svalbard og Jan Mayen','Dependent Territory of Norway','Harald V',938,'SJ');
INSERT INTO `demo_country` VALUES ('IDN','Indonesia','Asia','Southeast Asia',1904569.00,1945,212107000,68.0,84982.00,215002.00,'Indonesia','Republic','Abdurrahman Wahid',939,'ID');
INSERT INTO `demo_country` VALUES ('IND','India','Asia','Southern and Central Asia',3287263.00,1947,1013662000,62.5,447114.00,430572.00,'Bharat/India','Federal Republic','Kocheril Raman Narayanan',1109,'IN');
INSERT INTO `demo_country` VALUES ('IRQ','Iraq','Asia','Middle East',438317.00,1932,23115000,66.5,11500.00,NULL,'Al-´Iraq','Republic','Saddam Hussein al-Takriti',1365,'IQ');
INSERT INTO `demo_country` VALUES ('IRN','Iran','Asia','Southern and Central Asia',1648195.00,1906,67702000,69.7,195746.00,160151.00,'Iran','Islamic Republic','Ali Mohammad Khatami-Ardakani',1380,'IR');
INSERT INTO `demo_country` VALUES ('IRL','Ireland','Europe','British Islands',70273.00,1921,3775100,76.8,75921.00,73132.00,'Ireland/Éire','Republic','Mary McAleese',1447,'IE');
INSERT INTO `demo_country` VALUES ('ISL','Iceland','Europe','Nordic Countries',103000.00,1944,279000,79.4,8255.00,7474.00,'Ísland','Republic','Ólafur Ragnar Grímsson',1449,'IS');
INSERT INTO `demo_country` VALUES ('ISR','Israel','Asia','Middle East',21056.00,1948,6217000,78.6,97477.00,98577.00,'Yisrašel/Israšil','Republic','Moshe Katzav',1450,'IL');
INSERT INTO `demo_country` VALUES ('ITA','Italy','Europe','Southern Europe',301316.00,1861,57680000,79.0,1161755.00,1145372.00,'Italia','Republic','Carlo Azeglio Ciampi',1464,'IT');
INSERT INTO `demo_country` VALUES ('TMP','East Timor','Asia','Southeast Asia',14874.00,NULL,885000,46.0,0.00,NULL,'Timor Timur','Administrated by the UN','José Alexandre Gusmão',1522,'TP');
INSERT INTO `demo_country` VALUES ('AUT','Austria','Europe','Western Europe',83859.00,1918,8091800,77.7,211860.00,206025.00,'Österreich','Federal Republic','Thomas Klestil',1523,'AT');
INSERT INTO `demo_country` VALUES ('JAM','Jamaica','North America','Caribbean',10990.00,1962,2583000,75.2,6871.00,6722.00,'Jamaica','Constitutional Monarchy','Elisabeth II',1530,'JM');
INSERT INTO `demo_country` VALUES ('JPN','Japan','Asia','Eastern Asia',377829.00,-660,126714000,80.7,3787042.00,4192638.00,'Nihon/Nippon','Constitutional Monarchy','Akihito',1532,'JP');
INSERT INTO `demo_country` VALUES ('YEM','Yemen','Asia','Middle East',527968.00,1918,18112000,59.8,6041.00,5729.00,'Al-Yaman','Republic','Ali Abdallah Salih',1780,'YE');
INSERT INTO `demo_country` VALUES ('JOR','Jordan','Asia','Middle East',88946.00,1946,5083000,77.4,7526.00,7051.00,'Al-Urdunn','Constitutional Monarchy','Abdullah II',1786,'JO');
INSERT INTO `demo_country` VALUES ('CXR','Christmas Island','Oceania','Australia and New Zealand',135.00,NULL,2500,NULL,0.00,NULL,'Christmas Island','Territory of Australia','Elisabeth II',1791,'CX');
INSERT INTO `demo_country` VALUES ('YUG','Yugoslavia','Europe','Southern Europe',102173.00,1918,10640000,72.4,17000.00,NULL,'Jugoslavija','Federal Republic','Vojislav Koštunica',1792,'YU');
INSERT INTO `demo_country` VALUES ('KHM','Cambodia','Asia','Southeast Asia',181035.00,1953,11168000,56.5,5121.00,5670.00,'Kâmpuchéa','Constitutional Monarchy','Norodom Sihanouk',1800,'KH');
INSERT INTO `demo_country` VALUES ('CMR','Cameroon','Africa','Central Africa',475442.00,1960,15085000,54.8,9174.00,8596.00,'Cameroun/Cameroon','Republic','Paul Biya',1804,'CM');
INSERT INTO `demo_country` VALUES ('CAN','Canada','North America','North America',9970610.00,1867,31147000,79.4,598862.00,625626.00,'Canada','Constitutional Monarchy, Federation','Elisabeth II',1822,'CA');
INSERT INTO `demo_country` VALUES ('CPV','Cape Verde','Africa','Western Africa',4033.00,1975,428000,68.9,435.00,420.00,'Cabo Verde','Republic','António Mascarenhas Monteiro',1859,'CV');
INSERT INTO `demo_country` VALUES ('KAZ','Kazakstan','Asia','Southern and Central Asia',2724900.00,1991,16223000,63.2,24375.00,23383.00,'Qazaqstan','Republic','Nursultan Nazarbajev',1864,'KZ');
INSERT INTO `demo_country` VALUES ('KEN','Kenya','Africa','Eastern Africa',580367.00,1963,30080000,48.0,9217.00,10241.00,'Kenya','Republic','Daniel arap Moi',1881,'KE');
INSERT INTO `demo_country` VALUES ('CAF','Central African Republic','Africa','Central Africa',622984.00,1960,3615000,44.0,1054.00,993.00,'Centrafrique/Bê-Afrîka','Republic','Ange-Félix Patassé',1889,'CF');
INSERT INTO `demo_country` VALUES ('CHN','China','Asia','Eastern Asia',9572900.00,-1523,1277558000,71.4,982268.00,917719.00,'Zhongquo','People\'sRepublic','Jiang Zemin',1891,'CN');
INSERT INTO `demo_country` VALUES ('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',199900.00,1991,4699000,63.4,1626.00,1767.00,'Kyrgyzstan','Republic','Askar Akajev',2253,'KG');
INSERT INTO `demo_country` VALUES ('KIR','Kiribati','Oceania','Micronesia',726.00,1979,83000,59.8,40.70,NULL,'Kiribati','Republic','Teburoro Tito',2256,'KI');
INSERT INTO `demo_country` VALUES ('COL','Colombia','South America','South America',1138914.00,1810,42321000,70.3,102896.00,105116.00,'Colombia','Republic','Andrés Pastrana Arango',2257,'CO');
INSERT INTO `demo_country` VALUES ('COM','Comoros','Africa','Eastern Africa',1862.00,1975,578000,60.0,4401.00,4361.00,'Komori/Comores','Republic','Azali Assoumani',2295,'KM');
INSERT INTO `demo_country` VALUES ('COG','Congo','Africa','Central Africa',342000.00,1960,2943000,47.4,2108.00,2287.00,'Congo','Republic','Denis Sassou-Nguesso',2296,'CG');
INSERT INTO `demo_country` VALUES ('COD','Congo, The Democratic Republic of the','Africa','Central Africa',2344858.00,1960,51654000,48.8,6964.00,2474.00,'République Démocratique du Congo','Republic','Joseph Kabila',2298,'CD');
INSERT INTO `demo_country` VALUES ('CCK','Cocos (Keeling) Islands','Oceania','Australia and New Zealand',14.00,NULL,600,NULL,0.00,NULL,'Cocos (Keeling) Islands','Territory of Australia','Elisabeth II',2317,'CC');
INSERT INTO `demo_country` VALUES ('PRK','North Korea','Asia','Eastern Asia',120538.00,1948,24039000,70.7,5332.00,NULL,'Choson Minjujuui In´min Konghwaguk (Bukhan)','Socialistic Republic','Kim Jong-il',2318,'KP');
INSERT INTO `demo_country` VALUES ('KOR','South Korea','Asia','Eastern Asia',99434.00,1948,46844000,74.4,320749.00,442544.00,'Taehan Minšguk (Namhan)','Republic','Kim Dae-jung',2331,'KR');
INSERT INTO `demo_country` VALUES ('GRC','Greece','Europe','Southern Europe',131626.00,1830,10545700,78.4,120724.00,119946.00,'Elláda','Republic','Kostis Stefanopoulos',2401,'GR');
INSERT INTO `demo_country` VALUES ('HRV','Croatia','Europe','Southern Europe',56538.00,1991,4473000,73.7,20208.00,19300.00,'Hrvatska','Republic','tipe Mesic',2409,'HR');
INSERT INTO `demo_country` VALUES ('CUB','Cuba','North America','Caribbean',110861.00,1902,11201000,76.2,17843.00,18862.00,'Cuba','Socialistic Republic','Fidel Castro Ruz',2413,'CU');
INSERT INTO `demo_country` VALUES ('KWT','Kuwait','Asia','Middle East',17818.00,1961,1972000,76.1,27037.00,30373.00,'Al-Kuwayt','Constitutional Monarchy (Emirate)','Jabir al-Ahmad al-Jabir al-Sabah',2429,'KW');
INSERT INTO `demo_country` VALUES ('CYP','Cyprus','Asia','Middle East',9251.00,1960,754700,76.7,9333.00,8246.00,'Kýpros/Kibris','Republic','Glafkos Klerides',2430,'CY');
INSERT INTO `demo_country` VALUES ('LAO','Laos','Asia','Southeast Asia',236800.00,1953,5433000,53.1,1292.00,1746.00,'Lao','Republic','Khamtay Siphandone',2432,'LA');
INSERT INTO `demo_country` VALUES ('LVA','Latvia','Europe','Baltic Countries',64589.00,1991,2424200,68.4,6398.00,5639.00,'Latvija','Republic','Vaira Vike-Freiberga',2434,'LV');
INSERT INTO `demo_country` VALUES ('LSO','Lesotho','Africa','Southern Africa',30355.00,1966,2153000,50.8,1061.00,1161.00,'Lesotho','Constitutional Monarchy','Letsie III',2437,'LS');
INSERT INTO `demo_country` VALUES ('LBN','Lebanon','Asia','Middle East',10400.00,1941,3282000,71.3,17121.00,15129.00,'Lubnan','Republic','Émile Lahoud',2438,'LB');
INSERT INTO `demo_country` VALUES ('LBR','Liberia','Africa','Western Africa',111369.00,1847,3154000,51.0,2012.00,NULL,'Liberia','Republic','Charles Taylor',2440,'LR');
INSERT INTO `demo_country` VALUES ('LBY','Libyan Arab Jamahiriya','Africa','Northern Africa',1759540.00,1951,5605000,75.5,44806.00,40562.00,'Libiya','Socialistic State','Muammar al-Qadhafi',2441,'LY');
INSERT INTO `demo_country` VALUES ('LIE','Liechtenstein','Europe','Western Europe',160.00,1806,32300,78.8,1119.00,1084.00,'Liechtenstein','Constitutional Monarchy','Hans-Adam II',2446,'LI');
INSERT INTO `demo_country` VALUES ('LTU','Lithuania','Europe','Baltic Countries',65301.00,1991,3698500,69.1,10692.00,9585.00,'Lietuva','Republic','Valdas Adamkus',2447,'LT');
INSERT INTO `demo_country` VALUES ('LUX','Luxembourg','Europe','Western Europe',2586.00,1867,435700,77.1,16321.00,15519.00,'Luxembourg/Lëtzebuerg','Constitutional Monarchy','Henri',2452,'LU');
INSERT INTO `demo_country` VALUES ('ESH','Western Sahara','Africa','Northern Africa',266000.00,NULL,293000,49.8,60.00,NULL,'As-Sahrawiya','Occupied by Marocco','Mohammed Abdel Aziz',2453,'EH');
INSERT INTO `demo_country` VALUES ('MAC','Macao','Asia','Eastern Asia',18.00,NULL,473000,81.6,5749.00,5940.00,'Macau/Aomen','Special Administrative Region of China','Jiang Zemin',2454,'MO');
INSERT INTO `demo_country` VALUES ('MDG','Madagascar','Africa','Eastern Africa',587041.00,1960,15942000,55.0,3750.00,3545.00,'Madagasikara/Madagascar','Federal Republic','Didier Ratsiraka',2455,'MG');
INSERT INTO `demo_country` VALUES ('MKD','Macedonia','Europe','Southern Europe',25713.00,1991,2024000,73.8,1694.00,1915.00,'Makedonija','Republic','Boris Trajkovski',2460,'MK');
INSERT INTO `demo_country` VALUES ('MWI','Malawi','Africa','Eastern Africa',118484.00,1964,10925000,37.6,1687.00,2527.00,'Malawi','Republic','Bakili Muluzi',2462,'MW');
INSERT INTO `demo_country` VALUES ('MDV','Maldives','Asia','Southern and Central Asia',298.00,1965,286000,62.2,199.00,NULL,'Dhivehi Raajje/Maldives','Republic','Maumoon Abdul Gayoom',2463,'MV');
INSERT INTO `demo_country` VALUES ('MYS','Malaysia','Asia','Southeast Asia',329758.00,1957,22244000,70.8,69213.00,97884.00,'Malaysia','Constitutional Monarchy, Federation','Salahuddin Abdul Aziz Shah Alhaj',2464,'MY');
INSERT INTO `demo_country` VALUES ('MLI','Mali','Africa','Western Africa',1240192.00,1960,11234000,46.7,2642.00,2453.00,'Mali','Republic','Alpha Oumar Konaré',2482,'ML');
INSERT INTO `demo_country` VALUES ('MLT','Malta','Europe','Southern Europe',316.00,1964,380200,77.9,3512.00,3338.00,'Malta','Republic','Guido de Marco',2484,'MT');
INSERT INTO `demo_country` VALUES ('MAR','Morocco','Africa','Northern Africa',446550.00,1956,28351000,69.1,36124.00,33514.00,'Al-Maghrib','Constitutional Monarchy','Mohammed VI',2486,'MA');
INSERT INTO `demo_country` VALUES ('MHL','Marshall Islands','Oceania','Micronesia',181.00,1990,64000,65.5,97.00,NULL,'Marshall Islands/Majol','Republic','Kessai Note',2507,'MH');
INSERT INTO `demo_country` VALUES ('MTQ','Martinique','North America','Caribbean',1102.00,NULL,395000,78.3,2731.00,2559.00,'Martinique','Overseas Department of France','Jacques Chirac',2508,'MQ');
INSERT INTO `demo_country` VALUES ('MRT','Mauritania','Africa','Western Africa',1025520.00,1960,2670000,50.8,998.00,1081.00,'Muritaniya/Mauritanie','Republic','Maaouiya Ould Sid´Ahmad Taya',2509,'MR');
INSERT INTO `demo_country` VALUES ('MUS','Mauritius','Africa','Eastern Africa',2040.00,1968,1158000,71.0,4251.00,4186.00,'Mauritius','Republic','Cassam Uteem',2511,'MU');
INSERT INTO `demo_country` VALUES ('MYT','Mayotte','Africa','Eastern Africa',373.00,NULL,149000,59.5,0.00,NULL,'Mayotte','Territorial Collectivity of France','Jacques Chirac',2514,'YT');
INSERT INTO `demo_country` VALUES ('MEX','Mexico','North America','Central America',1958201.00,1810,98881000,71.5,414972.00,401461.00,'México','Federal Republic','Vicente Fox Quesada',2515,'MX');
INSERT INTO `demo_country` VALUES ('FSM','Micronesia, Federated States of','Oceania','Micronesia',702.00,1990,119000,68.6,212.00,NULL,'Micronesia','Federal Republic','Leo A. Falcam',2689,'FM');
INSERT INTO `demo_country` VALUES ('MDA','Moldova','Europe','Eastern Europe',33851.00,1991,4380000,64.5,1579.00,1872.00,'Moldova','Republic','Vladimir Voronin',2690,'MD');
INSERT INTO `demo_country` VALUES ('MCO','Monaco','Europe','Western Europe',1.50,1861,34000,78.8,776.00,NULL,'Monaco','Constitutional Monarchy','Rainier III',2695,'MC');
INSERT INTO `demo_country` VALUES ('MNG','Mongolia','Asia','Eastern Asia',1566500.00,1921,2662000,67.3,1043.00,933.00,'Mongol Uls','Republic','Natsagiin Bagabandi',2696,'MN');
INSERT INTO `demo_country` VALUES ('MSR','Montserrat','North America','Caribbean',102.00,NULL,11000,78.0,109.00,NULL,'Montserrat','Dependent Territory of the UK','Elisabeth II',2697,'MS');
INSERT INTO `demo_country` VALUES ('MOZ','Mozambique','Africa','Eastern Africa',801590.00,1975,19680000,37.5,2891.00,2711.00,'Moçambique','Republic','Joaquím A. Chissano',2698,'MZ');
INSERT INTO `demo_country` VALUES ('MMR','Myanmar','Asia','Southeast Asia',676578.00,1948,45611000,54.9,180375.00,171028.00,'Myanma Pye','Republic','kenraali Than Shwe',2710,'MM');
INSERT INTO `demo_country` VALUES ('NAM','Namibia','Africa','Southern Africa',824292.00,1990,1726000,42.5,3101.00,3384.00,'Namibia','Republic','Sam Nujoma',2726,'NA');
INSERT INTO `demo_country` VALUES ('NRU','Nauru','Oceania','Micronesia',21.00,1968,12000,60.8,197.00,NULL,'Naoero/Nauru','Republic','Bernard Dowiyogo',2728,'NR');
INSERT INTO `demo_country` VALUES ('NPL','Nepal','Asia','Southern and Central Asia',147181.00,1769,23930000,57.8,4768.00,4837.00,'Nepal','Constitutional Monarchy','Gyanendra Bir Bikram',2729,'NP');
INSERT INTO `demo_country` VALUES ('NIC','Nicaragua','North America','Central America',130000.00,1838,5074000,68.7,1988.00,2023.00,'Nicaragua','Republic','Arnoldo Alemán Lacayo',2734,'NI');
INSERT INTO `demo_country` VALUES ('NER','Niger','Africa','Western Africa',1267000.00,1960,10730000,41.3,1706.00,1580.00,'Niger','Republic','Mamadou Tandja',2738,'NE');
INSERT INTO `demo_country` VALUES ('NGA','Nigeria','Africa','Western Africa',923768.00,1960,111506000,51.6,65707.00,58623.00,'Nigeria','Federal Republic','Olusegun Obasanjo',2754,'NG');
INSERT INTO `demo_country` VALUES ('NIU','Niue','Oceania','Polynesia',260.00,NULL,2000,NULL,0.00,NULL,'Niue','Nonmetropolitan Territory of New Zealand','Elisabeth II',2805,'NU');
INSERT INTO `demo_country` VALUES ('NFK','Norfolk Island','Oceania','Australia and New Zealand',36.00,NULL,2000,NULL,0.00,NULL,'Norfolk Island','Territory of Australia','Elisabeth II',2806,'NF');
INSERT INTO `demo_country` VALUES ('NOR','Norway','Europe','Nordic Countries',323877.00,1905,4478500,78.7,145895.00,153370.00,'Norge','Constitutional Monarchy','Harald V',2807,'NO');
INSERT INTO `demo_country` VALUES ('CIV','Côte dšIvoire','Africa','Western Africa',322463.00,1960,14786000,45.2,11345.00,10285.00,'Côte dšIvoire','Republic','Laurent Gbagbo',2814,'CI');
INSERT INTO `demo_country` VALUES ('OMN','Oman','Asia','Middle East',309500.00,1951,2542000,71.8,16904.00,16153.00,'´Uman','Monarchy (Sultanate)','Qabus ibn Sa´id',2821,'OM');
INSERT INTO `demo_country` VALUES ('PAK','Pakistan','Asia','Southern and Central Asia',796095.00,1947,156483000,61.1,61289.00,58549.00,'Pakistan','Republic','Mohammad Rafiq Tarar',2831,'PK');
INSERT INTO `demo_country` VALUES ('PLW','Palau','Oceania','Micronesia',459.00,1994,19000,68.6,105.00,NULL,'Belau/Palau','Republic','Kuniwo Nakamura',2881,'PW');
INSERT INTO `demo_country` VALUES ('PAN','Panama','North America','Central America',75517.00,1903,2856000,75.5,9131.00,8700.00,'Panamá','Republic','Mireya Elisa Moscoso Rodríguez',2882,'PA');
INSERT INTO `demo_country` VALUES ('PNG','Papua New Guinea','Oceania','Melanesia',462840.00,1975,4807000,63.1,4988.00,6328.00,'Papua New Guinea/Papua Niugini','Constitutional Monarchy','Elisabeth II',2884,'PG');
INSERT INTO `demo_country` VALUES ('PRY','Paraguay','South America','South America',406752.00,1811,5496000,73.7,8444.00,9555.00,'Paraguay','Republic','Luis Ángel González Macchi',2885,'PY');
INSERT INTO `demo_country` VALUES ('PER','Peru','South America','South America',1285216.00,1821,25662000,70.0,64140.00,65186.00,'Perú/Piruw','Republic','Valentin Paniagua Corazao',2890,'PE');
INSERT INTO `demo_country` VALUES ('PCN','Pitcairn','Oceania','Polynesia',49.00,NULL,50,NULL,0.00,NULL,'Pitcairn','Dependent Territory of the UK','Elisabeth II',2912,'PN');
INSERT INTO `demo_country` VALUES ('MNP','Northern Mariana Islands','Oceania','Micronesia',464.00,NULL,78000,75.5,0.00,NULL,'Northern Mariana Islands','Commonwealth of the US','George W. Bush',2913,'MP');
INSERT INTO `demo_country` VALUES ('PRT','Portugal','Europe','Southern Europe',91982.00,1143,9997600,75.8,105954.00,102133.00,'Portugal','Republic','Jorge Sampãio',2914,'PT');
INSERT INTO `demo_country` VALUES ('PRI','Puerto Rico','North America','Caribbean',8875.00,NULL,3869000,75.6,34100.00,32100.00,'Puerto Rico','Commonwealth of the US','George W. Bush',2919,'PR');
INSERT INTO `demo_country` VALUES ('POL','Poland','Europe','Eastern Europe',323250.00,1918,38653600,73.2,151697.00,135636.00,'Polska','Republic','Aleksander Kwasniewski',2928,'PL');
INSERT INTO `demo_country` VALUES ('GNQ','Equatorial Guinea','Africa','Central Africa',28051.00,1968,453000,53.6,283.00,542.00,'Guinea Ecuatorial','Republic','Teodoro Obiang Nguema Mbasogo',2972,'GQ');
INSERT INTO `demo_country` VALUES ('QAT','Qatar','Asia','Middle East',11000.00,1971,599000,72.4,9472.00,8920.00,'Qatar','Monarchy','Hamad ibn Khalifa al-Thani',2973,'QA');
INSERT INTO `demo_country` VALUES ('FRA','France','Europe','Western Europe',551500.00,843,59225700,78.8,1424285.00,1392448.00,'France','Republic','Jacques Chirac',2974,'FR');
INSERT INTO `demo_country` VALUES ('GUF','French Guiana','South America','South America',90000.00,NULL,181000,76.1,681.00,NULL,'Guyane française','Overseas Department of France','Jacques Chirac',3014,'GF');
INSERT INTO `demo_country` VALUES ('PYF','French Polynesia','Oceania','Polynesia',4000.00,NULL,235000,74.8,818.00,781.00,'Polynésie française','Nonmetropolitan Territory of France','Jacques Chirac',3016,'PF');
INSERT INTO `demo_country` VALUES ('REU','Réunion','Africa','Eastern Africa',2510.00,NULL,699000,72.7,8287.00,7988.00,'Réunion','Overseas Department of France','Jacques Chirac',3017,'RE');
INSERT INTO `demo_country` VALUES ('ROM','Romania','Europe','Eastern Europe',238391.00,1878,22455500,69.9,38158.00,34843.00,'România','Republic','Ion Iliescu',3018,'RO');
INSERT INTO `demo_country` VALUES ('RWA','Rwanda','Africa','Eastern Africa',26338.00,1962,7733000,39.3,2036.00,1863.00,'Rwanda/Urwanda','Republic','Paul Kagame',3047,'RW');
INSERT INTO `demo_country` VALUES ('SWE','Sweden','Europe','Nordic Countries',449964.00,836,8861400,79.6,226492.00,227757.00,'Sverige','Constitutional Monarchy','Carl XVI Gustaf',3048,'SE');
INSERT INTO `demo_country` VALUES ('SHN','Saint Helena','Africa','Western Africa',314.00,NULL,6000,76.8,0.00,NULL,'Saint Helena','Dependent Territory of the UK','Elisabeth II',3063,'SH');
INSERT INTO `demo_country` VALUES ('KNA','Saint Kitts and Nevis','North America','Caribbean',261.00,1983,38000,70.7,299.00,NULL,'Saint Kitts and Nevis','Constitutional Monarchy','Elisabeth II',3064,'KN');
INSERT INTO `demo_country` VALUES ('LCA','Saint Lucia','North America','Caribbean',622.00,1979,154000,72.3,571.00,NULL,'Saint Lucia','Constitutional Monarchy','Elisabeth II',3065,'LC');
INSERT INTO `demo_country` VALUES ('VCT','Saint Vincent and the Grenadines','North America','Caribbean',388.00,1979,114000,72.3,285.00,NULL,'Saint Vincent and the Grenadines','Constitutional Monarchy','Elisabeth II',3066,'VC');
INSERT INTO `demo_country` VALUES ('SPM','Saint Pierre and Miquelon','North America','North America',242.00,NULL,7000,77.6,0.00,NULL,'Saint-Pierre-et-Miquelon','Territorial Collectivity of France','Jacques Chirac',3067,'PM');
INSERT INTO `demo_country` VALUES ('DEU','Germany','Europe','Western Europe',357022.00,1955,82164700,77.4,2133367.00,2102826.00,'Deutschland','Federal Republic','Johannes Rau',3068,'DE');
INSERT INTO `demo_country` VALUES ('SLB','Solomon Islands','Oceania','Melanesia',28896.00,1978,444000,71.3,182.00,220.00,'Solomon Islands','Constitutional Monarchy','Elisabeth II',3161,'SB');
INSERT INTO `demo_country` VALUES ('ZMB','Zambia','Africa','Eastern Africa',752618.00,1964,9169000,37.2,3377.00,3922.00,'Zambia','Republic','Frederick Chiluba',3162,'ZM');
INSERT INTO `demo_country` VALUES ('WSM','Samoa','Oceania','Polynesia',2831.00,1962,180000,69.2,141.00,157.00,'Samoa','Parlementary Monarchy','Malietoa Tanumafili II',3169,'WS');
INSERT INTO `demo_country` VALUES ('SMR','San Marino','Europe','Southern Europe',61.00,885,27000,81.1,510.00,NULL,'San Marino','Republic',NULL,3171,'SM');
INSERT INTO `demo_country` VALUES ('STP','Sao Tome and Principe','Africa','Central Africa',964.00,1975,147000,65.3,6.00,NULL,'São Tomé e Príncipe','Republic','Miguel Trovoada',3172,'ST');
INSERT INTO `demo_country` VALUES ('SAU','Saudi Arabia','Asia','Middle East',2149690.00,1932,21607000,67.8,137635.00,146171.00,'Al-´Arabiya as-Sa´udiya','Monarchy','Fahd ibn Abdul-Aziz al-Sa´ud',3173,'SA');
INSERT INTO `demo_country` VALUES ('SEN','Senegal','Africa','Western Africa',196722.00,1960,9481000,62.2,4787.00,4542.00,'Sénégal/Sounougal','Republic','Abdoulaye Wade',3198,'SN');
INSERT INTO `demo_country` VALUES ('SYC','Seychelles','Africa','Eastern Africa',455.00,1976,77000,70.4,536.00,539.00,'Sesel/Seychelles','Republic','France-Albert René',3206,'SC');
INSERT INTO `demo_country` VALUES ('SLE','Sierra Leone','Africa','Western Africa',71740.00,1961,4854000,45.3,746.00,858.00,'Sierra Leone','Republic','Ahmed Tejan Kabbah',3207,'SL');
INSERT INTO `demo_country` VALUES ('SGP','Singapore','Asia','Southeast Asia',618.00,1965,3567000,80.1,86503.00,96318.00,'Singapore/Singapura/Xinjiapo/Singapur','Republic','Sellapan Rama Nathan',3208,'SG');
INSERT INTO `demo_country` VALUES ('SVK','Slovakia','Europe','Eastern Europe',49012.00,1993,5398700,73.7,20594.00,19452.00,'Slovensko','Republic','Rudolf Schuster',3209,'SK');
INSERT INTO `demo_country` VALUES ('SVN','Slovenia','Europe','Southern Europe',20256.00,1991,1987800,74.9,19756.00,18202.00,'Slovenija','Republic','Milan Kucan',3212,'SI');
INSERT INTO `demo_country` VALUES ('SOM','Somalia','Africa','Eastern Africa',637657.00,1960,10097000,46.2,935.00,NULL,'Soomaaliya','Republic','Abdiqassim Salad Hassan',3214,'SO');
INSERT INTO `demo_country` VALUES ('LKA','Sri Lanka','Asia','Southern and Central Asia',65610.00,1948,18827000,71.8,15706.00,15091.00,'Sri Lanka/Ilankai','Republic','Chandrika Kumaratunga',3217,'LK');
INSERT INTO `demo_country` VALUES ('SDN','Sudan','Africa','Northern Africa',2505813.00,1956,29490000,56.6,10162.00,NULL,'As-Sudan','Islamic Republic','Omar Hassan Ahmad al-Bashir',3225,'SD');
INSERT INTO `demo_country` VALUES ('FIN','Finland','Europe','Nordic Countries',338145.00,1917,5171300,77.4,121914.00,119833.00,'Suomi','Republic','Tarja Halonen',3236,'FI');
INSERT INTO `demo_country` VALUES ('SUR','Suriname','South America','South America',163265.00,1975,417000,71.4,870.00,706.00,'Suriname','Republic','Ronald Venetiaan',3243,'SR');
INSERT INTO `demo_country` VALUES ('SWZ','Swaziland','Africa','Southern Africa',17364.00,1968,1008000,40.4,1206.00,1312.00,'kaNgwane','Monarchy','Mswati III',3244,'SZ');
INSERT INTO `demo_country` VALUES ('CHE','Switzerland','Europe','Western Europe',41284.00,1499,7160400,79.6,264478.00,256092.00,'Schweiz/Suisse/Svizzera/Svizra','Federation','Adolf Ogi',3248,'CH');
INSERT INTO `demo_country` VALUES ('SYR','Syria','Asia','Middle East',185180.00,1941,16125000,68.5,65984.00,64926.00,'Suriya','Republic','Bashar al-Assad',3250,'SY');
INSERT INTO `demo_country` VALUES ('TJK','Tajikistan','Asia','Southern and Central Asia',143100.00,1991,6188000,64.1,1990.00,1056.00,'Toçikiston','Republic','Emomali Rahmonov',3261,'TJ');
INSERT INTO `demo_country` VALUES ('TWN','Taiwan','Asia','Eastern Asia',36188.00,1945,22256000,76.4,256254.00,263451.00,'Tšai-wan','Republic','Chen Shui-bian',3263,'TW');
INSERT INTO `demo_country` VALUES ('TZA','Tanzania','Africa','Eastern Africa',883749.00,1961,33517000,52.3,8005.00,7388.00,'Tanzania','Republic','Benjamin William Mkapa',3306,'TZ');
INSERT INTO `demo_country` VALUES ('DNK','Denmark','Europe','Nordic Countries',43094.00,800,5330000,76.5,174099.00,169264.00,'Danmark','Constitutional Monarchy','Margrethe II',3315,'DK');
INSERT INTO `demo_country` VALUES ('THA','Thailand','Asia','Southeast Asia',513115.00,1350,61399000,68.6,116416.00,153907.00,'Prathet Thai','Constitutional Monarchy','Bhumibol Adulyadej',3320,'TH');
INSERT INTO `demo_country` VALUES ('TGO','Togo','Africa','Western Africa',56785.00,1960,4629000,54.7,1449.00,1400.00,'Togo','Republic','Gnassingbé Eyadéma',3332,'TG');
INSERT INTO `demo_country` VALUES ('TKL','Tokelau','Oceania','Polynesia',12.00,NULL,2000,NULL,0.00,NULL,'Tokelau','Nonmetropolitan Territory of New Zealand','Elisabeth II',3333,'TK');
INSERT INTO `demo_country` VALUES ('TON','Tonga','Oceania','Polynesia',650.00,1970,99000,67.9,146.00,170.00,'Tonga','Monarchy','Taufa\'ahau Tupou IV',3334,'TO');
INSERT INTO `demo_country` VALUES ('TTO','Trinidad and Tobago','North America','Caribbean',5130.00,1962,1295000,68.0,6232.00,5867.00,'Trinidad and Tobago','Republic','Arthur N. R. Robinson',3336,'TT');
INSERT INTO `demo_country` VALUES ('TCD','Chad','Africa','Central Africa',1284000.00,1960,7651000,50.5,1208.00,1102.00,'Tchad/Tshad','Republic','Idriss Déby',3337,'TD');
INSERT INTO `demo_country` VALUES ('CZE','Czech Republic','Europe','Eastern Europe',78866.00,1993,10278100,74.5,55017.00,52037.00,'Česko','Republic','Václav Havel',3339,'CZ');
INSERT INTO `demo_country` VALUES ('TUN','Tunisia','Africa','Northern Africa',163610.00,1956,9586000,73.7,20026.00,18898.00,'Tunis/Tunisie','Republic','Zine al-Abidine Ben Ali',3349,'TN');
INSERT INTO `demo_country` VALUES ('TUR','Turkey','Asia','Middle East',774815.00,1923,66591000,71.0,210721.00,189122.00,'Türkiye','Republic','Ahmet Necdet Sezer',3358,'TR');
INSERT INTO `demo_country` VALUES ('TKM','Turkmenistan','Asia','Southern and Central Asia',488100.00,1991,4459000,60.9,4397.00,2000.00,'Türkmenostan','Republic','Saparmurad Nijazov',3419,'TM');
INSERT INTO `demo_country` VALUES ('TCA','Turks and Caicos Islands','North America','Caribbean',430.00,NULL,17000,73.3,96.00,NULL,'The Turks and Caicos Islands','Dependent Territory of the UK','Elisabeth II',3423,'TC');
INSERT INTO `demo_country` VALUES ('TUV','Tuvalu','Oceania','Polynesia',26.00,1978,12000,66.3,6.00,NULL,'Tuvalu','Constitutional Monarchy','Elisabeth II',3424,'TV');
INSERT INTO `demo_country` VALUES ('UGA','Uganda','Africa','Eastern Africa',241038.00,1962,21778000,42.9,6313.00,6887.00,'Uganda','Republic','Yoweri Museveni',3425,'UG');
INSERT INTO `demo_country` VALUES ('UKR','Ukraine','Europe','Eastern Europe',603700.00,1991,50456000,66.0,42168.00,49677.00,'Ukrajina','Republic','Leonid Kutšma',3426,'UA');
INSERT INTO `demo_country` VALUES ('HUN','Hungary','Europe','Eastern Europe',93030.00,1918,10043200,71.4,48267.00,45914.00,'Magyarország','Republic','Ferenc Mádl',3483,'HU');
INSERT INTO `demo_country` VALUES ('URY','Uruguay','South America','South America',175016.00,1828,3337000,75.2,20831.00,19967.00,'Uruguay','Republic','Jorge Batlle Ibáñez',3492,'UY');
INSERT INTO `demo_country` VALUES ('NCL','New Caledonia','Oceania','Melanesia',18575.00,NULL,214000,72.8,3563.00,NULL,'Nouvelle-Calédonie','Nonmetropolitan Territory of France','Jacques Chirac',3493,'NC');
INSERT INTO `demo_country` VALUES ('NZL','New Zealand','Oceania','Australia and New Zealand',270534.00,1907,3862000,77.8,54669.00,64960.00,'New Zealand/Aotearoa','Constitutional Monarchy','Elisabeth II',3499,'NZ');
INSERT INTO `demo_country` VALUES ('UZB','Uzbekistan','Asia','Southern and Central Asia',447400.00,1991,24318000,63.7,14194.00,21300.00,'Uzbekiston','Republic','Islam Karimov',3503,'UZ');
INSERT INTO `demo_country` VALUES ('BLR','Belarus','Europe','Eastern Europe',207600.00,1991,10236000,68.0,13714.00,NULL,'Belarus','Republic','Aljaksandr Lukašenka',3520,'BY');
INSERT INTO `demo_country` VALUES ('WLF','Wallis and Futuna','Oceania','Polynesia',200.00,NULL,15000,NULL,0.00,NULL,'Wallis-et-Futuna','Nonmetropolitan Territory of France','Jacques Chirac',3536,'WF');
INSERT INTO `demo_country` VALUES ('VUT','Vanuatu','Oceania','Melanesia',12189.00,1980,190000,60.6,261.00,246.00,'Vanuatu','Republic','John Bani',3537,'VU');
INSERT INTO `demo_country` VALUES ('VAT','Holy See (Vatican City State)','Europe','Southern Europe',0.40,1929,1000,NULL,9.00,NULL,'Santa Sede/Città del Vaticano','Independent Church State','Johannes Paavali II',3538,'VA');
INSERT INTO `demo_country` VALUES ('VEN','Venezuela','South America','South America',912050.00,1811,24170000,73.1,95023.00,88434.00,'Venezuela','Federal Republic','Hugo Chávez Frías',3539,'VE');
INSERT INTO `demo_country` VALUES ('RUS','Russian Federation','Europe','Eastern Europe',17075400.00,1991,146934000,67.2,276608.00,442989.00,'Rossija','Federal Republic','Vladimir Putin',3580,'RU');
INSERT INTO `demo_country` VALUES ('VNM','Vietnam','Asia','Southeast Asia',331689.00,1945,79832000,69.3,21929.00,22834.00,'Viêt Nam','Socialistic Republic','Trân Duc Luong',3770,'VN');
INSERT INTO `demo_country` VALUES ('EST','Estonia','Europe','Baltic Countries',45227.00,1991,1439200,69.5,5328.00,3371.00,'Eesti','Republic','Lennart Meri',3791,'EE');
INSERT INTO `demo_country` VALUES ('USA','United States','North America','North America',9363520.00,1776,278357000,77.1,8510700.00,8110900.00,'United States','Federal Republic','George W. Bush',3813,'US');
INSERT INTO `demo_country` VALUES ('VIR','Virgin Islands, U.S.','North America','Caribbean',347.00,NULL,93000,78.1,0.00,NULL,'Virgin Islands of the United States','US Territory','George W. Bush',4067,'VI');
INSERT INTO `demo_country` VALUES ('ZWE','Zimbabwe','Africa','Eastern Africa',390757.00,1980,11669000,37.8,5951.00,8670.00,'Zimbabwe','Republic','Robert G. Mugabe',4068,'ZW');
INSERT INTO `demo_country` VALUES ('PSE','Palestine','Asia','Middle East',6257.00,NULL,3101000,71.4,4173.00,NULL,'Filastin','Autonomous Area','Yasser (Yasir) Arafat',4074,'PS');
INSERT INTO `demo_country` VALUES ('ATA','Antarctica','Antarctica','Antarctica',13120000.00,NULL,0,NULL,0.00,NULL,'','Co-administrated','',NULL,'AQ');
INSERT INTO `demo_country` VALUES ('BVT','Bouvet Island','Antarctica','Antarctica',59.00,NULL,0,NULL,0.00,NULL,'Bouvetøya','Dependent Territory of Norway','Harald V',NULL,'BV');
INSERT INTO `demo_country` VALUES ('IOT','British Indian Ocean Territory','Africa','Eastern Africa',78.00,NULL,0,NULL,0.00,NULL,'British Indian Ocean Territory','Dependent Territory of the UK','Elisabeth II',NULL,'IO');
INSERT INTO `demo_country` VALUES ('SGS','South Georgia and the South Sandwich Islands','Antarctica','Antarctica',3903.00,NULL,0,NULL,0.00,NULL,'South Georgia and the South Sandwich Islands','Dependent Territory of the UK','Elisabeth II',NULL,'GS');
INSERT INTO `demo_country` VALUES ('HMD','Heard Island and McDonald Islands','Antarctica','Antarctica',359.00,NULL,0,NULL,0.00,NULL,'Heard and McDonald Islands','Territory of Australia','Elisabeth II',NULL,'HM');
INSERT INTO `demo_country` VALUES ('ATF','French Southern territories','Antarctica','Antarctica',7780.00,NULL,0,NULL,0.00,NULL,'Terres australes françaises','Nonmetropolitan Territory of France','Jacques Chirac',NULL,'TF');
INSERT INTO `demo_country` VALUES ('UMI','United States Minor Outlying Islands','Oceania','Micronesia/Caribbean',16.00,NULL,0,NULL,0.00,NULL,'United States Minor Outlying Islands','Dependent Territory of the US','George W. Bush',NULL,'UM');

DELIMITER $$

DROP TABLE IF EXISTS demo_atom
$$
CREATE TABLE demo_atom (
id INT, 
color VARCHAR(15)
) ENGINE=InnoDB
$$

insert into demo_atom values (2,'white')
$$
insert into demo_atom values (2,'white')
$$
insert into demo_atom values (3,'white')
$$
insert into demo_atom values (4,'white')
$$
insert into demo_atom values (5,'blue')
$$
insert into demo_atom values (6,'blue')
$$
insert into demo_atom values (7,'blue')
$$
insert into demo_atom values (8,'blue')
$$
insert into demo_atom values (9,'blue')
$$
insert into demo_atom values (10,'blue')
$$
insert into demo_atom values (11,'lightblue')
$$
insert into demo_atom values (12,'lightblue')
$$
insert into demo_atom values (13,'lightblue')
$$
insert into demo_atom values (14,'lightblue')
$$
insert into demo_atom values (15,'red')
$$
insert into demo_atom values (16,'red')
$$
insert into demo_atom values (17,'red')
$$
insert into demo_atom values (18,'red')
$$
insert into demo_atom values (19,'red')
$$
insert into demo_atom values (20,'red')
$$


DROP TABLE IF EXISTS demo_molecule
$$
CREATE TABLE demo_molecule (
id_1 INT,
id_2 INT
) ENGINE=InnoDB
$$

insert into demo_molecule values (1,2)
$$
insert into demo_molecule values (2,5)
$$
insert into demo_molecule values (5,3)
$$
insert into demo_molecule values (3,4)
$$
insert into demo_molecule values (4,6)
$$
insert into demo_molecule values (6,1)
$$
insert into demo_molecule values (1,7)
$$
insert into demo_molecule values (2,8)
$$
insert into demo_molecule values (3,9)
$$
insert into demo_molecule values (4,10)
$$
insert into demo_molecule values (7,11)
$$
insert into demo_molecule values (7,12)
$$
insert into demo_molecule values (9,13)
$$
insert into demo_molecule values (9,14)
$$
insert into demo_molecule values (8,15)
$$
insert into demo_molecule values (8,16)
$$
insert into demo_molecule values (10,17)
$$
insert into demo_molecule values (10,18)
$$
insert into demo_molecule values (6,19)
$$
insert into demo_molecule values (6,20)
$$


DROP TABLE IF EXISTS demo_production
$$
CREATE TABLE demo_production (
  SupplierID int NOT NULL,
  Name VARCHAR(100) NOT NULL,
  InsertDate DATETIME NOT NULL,
  Items FLOAT NOT NULL,
  Weight FLOAT default NULL,
  ItemsSold FLOAT default NULL,
  ItemID INT default NULL,
  UNIQUE KEY demo_production_ind USING BTREE (SupplierID,InsertDate,ItemID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
$$


INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-19 00:54:41', 18, 27.01, 34, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-27 18:52:37', 12, 10.96, 41, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-12-02 05:46:20', -15, 23.01, 28, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-04-12 10:08:39', 11, 32.34, 104, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-03 03:36:20', 7, 34.99, 83, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-26 18:54:20', 3, 8.9, 59, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-09-11 04:12:06', 0, 11.84, 34, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-04-16 02:24:03', -4, 40.58, 95, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-07-15 10:44:13', 10, 28.59, 79, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-10-10 00:44:02', 5, 39.5, 69, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-07-09 11:40:11', 0, 30.75, 32, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-08-01 17:03:57', 15, 0.43, 83, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-25 13:21:18', 18, 39.21, 78, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-04-03 16:14:23', -15, 27.35, 78, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-31 11:44:41', 12, 21.66, 56, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-10-18 12:00:45', 9, 13.12, 6, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-09-25 20:01:28', 13, 38.28, 30, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-06-04 04:52:40', 7, 10.6, 8, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-04-10 03:34:29', 11, 30.29, 76, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-26 06:02:43', 5, 30.13, 66, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-15 05:19:21', 18, 26.02, 13, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-05 21:53:35', 5, 28.4, 41, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-04 04:03:57', 5, 11.04, 47, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-04 06:25:12', 7, 0.38, 114, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-06-13 03:06:31', 15, 3.92, 16, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-01 19:45:33', 2, 26.76, 75, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-25 11:00:23', 1, 28.45, 104, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-11-18 15:24:08', 7, 23.4, 54, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-12 08:52:01', 13, 1.82, 21, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-04 20:21:17', 14, 24.63, 63, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-12-02 21:42:33', -7, 22, 30, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-08-08 20:52:07', 5, 20.33, 56, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-11-26 05:17:53', 1, 36.25, 95, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-01-22 21:14:12', 0, 24.83, 73, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-12 10:44:42', 8, 42.79, 49, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-06-03 01:55:57', 4, 21.49, 81, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-11-12 21:35:42', 9, 33.01, 25, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-09 17:51:56', 1, 14.08, 42, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-08-01 01:09:43', -16, 42.89, 26, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-06-19 08:01:22', 6, 32.13, 73, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-10-05 17:46:44', 17, 5.38, 115, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-12-02 03:57:24', 15, 31.73, 26, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-21 12:28:06', 18, 44.02, 6, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-30 08:02:18', 11, 38.91, 79, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-05-29 13:27:13', 5, 26.62, 17, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-08 19:53:36', 15, 12.84, 7, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-12-01 09:47:07', 3, 38.49, 90, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-20 19:30:14', 10, 44.54, 37, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-06 05:04:33', 18, 16.89, 20, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-06-13 12:19:01', 8, 13.03, 19, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-11-04 15:08:43', 17, 16.04, 11, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-19 21:45:41', 1, 5.15, 48, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-05-03 13:06:37', 9, 6.28, 37, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-12 22:39:13', 5, 4.26, 76, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-10-04 12:25:13', 12, 6.39, 98, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-26 06:55:50', 19, 33.53, 89, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-12-25 17:13:19', 1, 33.98, 72, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-06-30 01:43:22', 5, 34.16, 108, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-06-25 07:19:11', 19, 7.98, 108, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-01-06 18:54:21', 12, 44.1, 115, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-02 00:54:57', 0, 38.71, 27, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-24 03:53:18', 3, 0.47, 63, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-15 05:45:46', 0, 43.73, 90, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-28 11:31:07', -7, 23.58, 59, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-10 04:38:52', 4, 3.18, 75, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-20 20:55:07', 3, 43.05, 29, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-09-06 01:34:29', 8, 17.85, 79, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-07 16:57:15', 10, 39.05, 97, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-04 07:23:54', 11, 21.41, 85, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-14 11:01:33', 5, 36.97, 34, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-12 07:51:44', 1, 26.58, 79, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-24 20:38:49', 8, 12.37, 20, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-15 11:21:34', 11, 33.36, 115, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-13 00:07:07', -10, 6, 16, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-07-16 10:23:26', 8, 20.2, 110, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-07-05 08:20:00', 1, 23.1, 34, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-09-21 10:22:37', 18, 28.72, 54, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-09-14 02:34:18', 0, 23.63, 67, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-14 04:26:05', 16, 39.71, 115, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-24 06:39:13', 4, 4.22, 88, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-19 01:54:14', 10, 30.77, 96, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-16 00:29:48', 8, 19.14, 109, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-27 19:02:06', 4, 24.09, 114, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-18 05:38:25', 0, 1.55, 4, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-02-23 15:59:58', 15, 27.44, 91, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-12-06 16:09:00', 16, 42.09, 23, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-09 18:56:15', 6, 24.91, 102, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-25 00:33:25', 11, 27.13, 27, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-29 00:37:28', 7, 6.36, 76, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-06-17 02:16:46', 9, 29.13, 102, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-08-27 06:56:47', 8, 30.02, 16, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-04-24 09:31:41', 8, 5.39, 34, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-02-22 06:14:24', 8, 36.37, 97, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-27 20:23:01', 10, 26.89, 46, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-04-28 15:03:20', 3, 43.34, 42, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-10 18:07:26', -1, 43.22, 64, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-08-07 05:12:52', 18, 28.06, 37, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-05-02 05:27:34', 12, 35.27, 6, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-10-17 02:50:39', 2, 29.95, 0, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-01-11 04:10:47', 1, 28.43, 108, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-03-24 01:59:20', 14, 33.56, 74, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-25 23:18:10', 3, 6.94, 23, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-10 02:55:17', 4, 43.53, 17, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-07-27 12:19:56', 18, 27.38, 36, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-04-26 04:58:59', 12, 26.63, 2, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-08-21 10:34:46', -6, 11.33, 34, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-04-27 07:41:15', 17, 3.54, 88, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-13 01:35:48', 7, 41.35, 52, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-14 06:14:47', 18, 3.37, 72, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-07-30 14:20:24', -4, 42.19, 115, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-11-29 02:19:23', 11, 26.96, 28, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-09-26 11:22:05', 8, 13.1, 14, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-06-04 18:12:03', 19, 35.68, 115, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-11-15 21:05:36', 12, 39.3, 67, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-05-06 12:31:55', -16, 35.52, 53, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-09-08 11:05:14', 5, 41.75, 100, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-24 10:12:09', 19, 5.65, 91, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-10-26 01:06:21', 5, 3.74, 73, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-08-10 17:34:02', -15, 21.39, 117, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-12-02 01:23:25', 8, 0.15, 94, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-22 17:07:03', 13, 5.4, 73, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-28 21:35:31', 1, 29.57, 13, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-17 10:16:15', 3, 44.11, 48, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-03-08 15:07:35', 2, 23.96, 33, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-07-29 12:27:08', 17, 33.89, 13, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-14 14:57:02', 18, 32.27, 106, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-07-11 17:36:32', -18, 11.95, 67, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-01-02 20:02:36', 16, 23.99, 18, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-04-24 21:02:42', 8, 8.42, 75, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-02-19 02:06:09', 14, 17.99, 97, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-09-14 07:41:23', 7, 23.45, 56, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-17 08:50:20', 1, 14.87, 44, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-26 08:42:33', 2, 23.56, 31, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-06-11 06:45:06', 7, 16.48, 78, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-30 04:30:40', -7, 19.3, 8, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-02-11 05:07:10', 4, 17.77, 35, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-08-01 12:13:26', 15, 43.78, 64, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-06-27 13:05:24', 19, 16.94, 110, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-12 15:47:20', 11, 6.81, 8, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-09-27 15:45:45', 10, 41.16, 115, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-02-05 22:34:02', 8, 38.09, 2, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-02-14 00:28:35', 9, 0.46, 76, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-05-04 08:19:05', 16, 35.13, 45, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-01-28 13:38:12', -19, 29.04, 30, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-31 08:03:55', 5, 17.6, 15, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-29 09:07:00', 3, 2.62, 94, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-06-28 03:58:11', 5, 15.37, 97, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-01-27 20:41:42', 6, 18.38, 16, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-03 08:28:38', 9, 24.55, 37, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-19 17:04:45', 11, 39.3, 68, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-06-27 07:49:57', 11, 11.61, 70, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-04-18 11:40:50', 2, 37.67, 94, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-07 00:45:40', 0, 42.8, 78, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-10-16 05:02:46', 0, 1.97, 14, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-18 06:35:51', 6, 40.69, 57, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-19 06:05:01', 18, 26.3, 14, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-09-09 09:39:05', 0, 35.97, 115, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-19 10:34:06', 9, 37.61, 91, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-17 19:00:11', 9, 3.53, 115, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-13 10:55:22', 3, 30.26, 91, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-30 21:10:43', 2, 21.49, 115, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-20 09:49:31', 0, 19.45, 16, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-07 09:25:46', 9, 32.65, 20, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-04-18 00:54:08', 2, 37.94, 97, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-01-11 12:59:39', 7, 7.23, 84, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-01-31 05:59:53', 12, 5.71, 93, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-12-26 12:25:52', -18, 9.14, 27, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-01-13 10:10:38', 6, 12.68, 58, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-03-06 09:21:09', 16, 29.76, 91, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-13 03:34:10', 2, 38.68, 115, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-06-01 11:45:45', 1, 43.33, 70, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-01-26 00:56:09', 6, 43.04, 91, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-19 21:05:40', 19, 39.94, 67, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-24 06:32:59', 16, 42.57, 22, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-03-12 07:34:51', 1, 30.06, 14, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-13 18:20:16', 3, 31.96, 117, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-08 08:44:40', 0, 28.42, 13, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-04-12 08:52:40', 16, 38.86, 95, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-05 10:04:24', -13, 5.76, 67, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-11-04 04:22:48', 3, 29.37, 94, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-11-18 04:46:53', 11, 32.86, 104, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-04-12 07:18:56', 13, 6.59, 93, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-11-09 03:53:44', 16, 20.29, 90, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-28 02:29:28', -2, 9.19, 77, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-05 05:33:36', 11, 7.61, 15, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-20 22:45:56', 17, 2.86, 79, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-04-06 16:31:07', 19, 44.91, 5, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-06-14 01:47:47', 15, 18.77, 100, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-10-14 05:28:56', 10, 23.04, 117, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-02 23:43:01', 19, 26.38, 114, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-03 09:31:07', 19, 15.59, 92, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-02 21:45:35', 12, 7.99, 119, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-21 18:00:33', 18, 44.42, 18, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-08-03 12:45:15', 0, 5.23, 57, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-02-12 02:31:17', 2, 39.41, 6, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-03-31 02:37:23', 4, 20.58, 82, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-02-10 13:29:50', 18, 30.06, 69, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-09-19 16:38:02', -13, 1.2, 7, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-15 10:07:32', 7, 20.4, 23, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-03-03 01:38:44', 11, 3.37, 73, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-08-31 01:55:33', 14, 1.01, 110, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-09 03:55:20', 11, 1.71, 53, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-03-27 16:08:02', 3, 14.51, 18, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-26 09:43:07', 7, 10.62, 118, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-06-03 08:05:23', 19, 28.97, 35, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-01-11 22:13:37', 4, 17.09, 26, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-11-15 09:30:02', 19, 33.29, 85, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-04 11:35:39', 17, 36.93, 65, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-07-01 14:41:53', 2, 9.25, 85, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-11-09 13:35:35', 8, 20.9, 1, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-04-13 16:05:08', 10, 41.9, 8, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-02 11:23:13', 9, 13.16, 2, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-09 04:00:49', 0, 32.56, 67, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-04-13 11:49:19', 7, 6.47, 76, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-06-08 23:16:00', -17, 2.2, 68, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-05-23 03:00:51', 8, 7.53, 58, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-10-31 15:01:34', 10, 44.11, 46, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-12-11 01:28:07', 18, 5.07, 98, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-13 16:51:36', 4, 35.14, 30, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-10-17 02:47:45', 15, 40.98, 30, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-29 11:41:08', 3, 0.58, 56, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-08-16 11:28:55', 12, 13.54, 71, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-02-28 13:03:14', 6, 33.49, 92, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-14 09:00:06', 1, 30.61, 25, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-01-22 06:00:55', 10, 29.38, 83, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-16 10:53:21', 3, 5.45, 16, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-25 15:12:49', 7, 37.22, 2, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-03-16 02:24:38', 13, 28.43, 23, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-03-13 06:05:01', 4, 3.21, 75, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-10 17:13:00', 17, 9.46, 57, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-06-30 00:13:47', 1, 22.22, 29, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-12 10:29:52', 6, 33.57, 82, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-31 10:57:34', 19, 17.59, 8, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-21 21:56:44', 17, 12.2, 86, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-07-29 03:52:12', 9, 37.29, 88, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-05-24 23:49:31', 8, 43.1, 62, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-05-20 11:56:20', 5, 9.93, 33, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-24 21:23:29', 2, 43.81, 56, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-16 01:15:36', 19, 26.84, 14, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-08-01 18:11:55', -19, 15.69, 101, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-05-08 22:11:20', -12, 22.28, 80, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-09-12 21:16:12', 17, 18.31, 49, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-25 00:01:42', 7, 35.21, 91, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-13 08:45:57', 6, 2, 22, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-08-02 06:21:22', 12, 16.93, 116, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-05-24 16:24:17', 6, 26.47, 108, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-06-19 03:45:02', -8, 36.35, 89, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-07-24 13:12:22', 9, 0.24, 71, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-11 11:41:22', 10, 17.02, 32, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-06-14 20:51:40', 11, 5.25, 99, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-07-17 04:39:15', 8, 43.33, 64, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-07-19 22:14:48', 13, 19.87, 17, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-10-19 12:37:25', 14, 38.83, 19, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-06-09 13:55:45', 14, 34.89, 86, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-20 14:59:27', 9, 15.26, 24, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-01-02 23:46:05', 11, 13.66, 93, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-12-05 12:55:30', 3, 32.39, 12, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-09-22 08:32:48', 14, 37.65, 114, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-19 07:43:52', 6, 16.82, 114, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-04-17 03:02:29', 19, 41.1, 82, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-05-17 03:57:47', 3, 43.67, 41, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-08-07 04:29:53', 1, 41.13, 47, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-06-16 10:54:58', 1, 32.34, 46, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-07-16 23:10:33', 3, 18.76, 64, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-15 13:22:17', 18, 41.42, 98, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-09-08 18:14:46', 5, 41.45, 95, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-06-11 20:33:43', 18, 1.31, 42, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-22 18:25:22', 17, 2.32, 76, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-13 10:54:47', -10, 8.35, 40, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-04-17 19:23:13', 3, 17.18, 44, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-06-02 07:13:47', 2, 23.76, 39, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-02-15 19:56:09', 11, 42.81, 0, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-21 22:29:48', 8, 6.75, 61, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-03-15 10:39:10', -16, 29.91, 101, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-06-30 19:21:44', 1, 36.15, 93, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-30 01:32:35', 6, 21.29, 51, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-05-23 18:01:32', 13, 30.46, 38, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-02-08 04:24:25', 16, 12.76, 117, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-27 15:14:43', 5, 14.27, 94, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-12-06 11:50:38', 7, 9.17, 107, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-08-25 09:47:06', 13, 36.36, 118, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-19 07:49:45', 8, 13.05, 19, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-11-01 13:53:45', 13, 13.28, 53, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-09-01 23:00:13', 13, 14.59, 68, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-10 14:27:30', 8, 26.15, 73, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-23 00:06:14', 2, 10, 93, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-06-20 02:57:45', 8, 9.76, 101, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-02-28 02:03:22', 12, 16.31, 0, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-10-23 14:33:32', 11, 3.19, 70, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-06-05 05:28:46', 0, 0.62, 115, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-07-04 10:27:35', 6, 40.07, 58, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-06-29 22:32:45', 16, 6.97, 30, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-07-12 10:55:15', 5, 10.36, 39, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-11-25 04:36:05', 11, 10.81, 49, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-09-02 04:49:02', 8, 19.47, 98, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-07-28 10:31:27', 2, 24.66, 46, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-07-13 13:09:43', 12, 34.31, 0, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-06-15 18:47:58', 18, 5.51, 105, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-01-29 09:00:15', 18, 22.46, 89, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-06-15 07:05:22', 13, 18.21, 3, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-10-28 11:52:07', 4, 17.52, 36, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-09-16 05:49:29', 7, 7.76, 85, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-27 03:17:56', 15, 25, 62, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-10-15 02:52:50', 8, 27.08, 88, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-26 14:51:33', 13, 30.19, 40, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-30 23:57:00', 9, 0.26, 66, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-06-23 08:00:14', 19, 14.32, 80, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-10-13 00:10:00', 2, 32.96, 34, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-06-28 23:41:02', 6, 11.09, 29, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-20 20:39:08', 12, 26.66, 3, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-21 22:07:33', 9, 41.88, 23, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-16 22:03:30', 14, 41.07, 37, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-08-20 15:40:14', 17, 30.41, 87, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-15 05:49:35', 2, 6.7, 38, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-04-24 01:47:55', 4, 1.55, 57, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-07-26 01:26:37', 10, 31.63, 108, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-15 19:30:03', 19, 34.18, 108, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-22 06:07:29', 1, 21.14, 9, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-06 22:55:34', 1, 32.04, 41, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-08-25 09:29:32', 16, 7.08, 31, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-05 19:34:19', 12, 22.5, 81, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-10-10 06:34:29', 13, 28.38, 12, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-03-30 04:09:56', 18, 1.51, 48, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-10-20 00:58:48', 4, 39.74, 91, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-07 11:44:12', 14, 13.8, 36, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-02-20 01:42:06', 8, 12.16, 2, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-12 18:48:15', 9, 43.75, 58, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-25 04:30:18', 11, 26.4, 27, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-19 10:06:52', 14, 28.3, 0, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-04-18 19:54:32', 6, 36.97, 24, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-26 08:55:11', 11, 31.84, 100, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-07 21:00:41', 6, 38.46, 39, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-02-22 23:06:49', 11, 33.34, 111, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-12 14:18:32', 15, 25.3, 64, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-10 02:18:38', 1, 28.85, 0, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-03-12 05:05:31', 17, 42.91, 16, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-08-06 17:43:43', 9, 32.26, 19, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-04-02 20:23:16', 4, 33.09, 114, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-02-01 07:39:29', 12, 0.5, 25, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-01-27 08:07:43', 18, 44.6, 24, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-26 10:08:52', 16, 40, 111, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-12-08 10:52:23', 6, 4.5, 66, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-11-26 15:39:57', 3, 13.85, 2, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-05-09 01:59:32', 15, 36.31, 88, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-11 08:15:26', 3, 11.9, 92, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-02-15 11:34:48', 13, 25.32, 89, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-31 09:56:59', 9, 2.1, 104, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-04 04:33:26', 9, 43.29, 43, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-11-02 13:14:10', 17, 13.19, 105, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-01-14 01:36:26', 9, 26.31, 67, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-02-08 10:56:54', 0, 27.41, 2, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-07-26 23:28:43', 12, 22.75, 82, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-10-21 10:15:33', 3, 39.81, 101, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-31 15:45:11', -6, 18.29, 118, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-14 09:27:47', 0, 3.56, 46, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-05-24 00:30:52', 0, 16.92, 104, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-05-27 01:59:10', 3, 21.92, 102, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-07-28 04:39:28', 2, 17.23, 70, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-07-03 06:47:50', 18, 22.01, 78, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-23 02:57:23', 10, 17.08, 42, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-03-10 00:29:29', 0, 37.73, 19, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-07-26 09:52:12', 19, 12.55, 59, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-03-22 15:28:33', -6, 13, 58, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-03 21:31:02', 2, 40.77, 23, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-06-22 14:27:32', 14, 7.47, 80, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-08-24 13:34:13', 4, 11.05, 70, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-05-14 11:18:33', 5, 5.46, 87, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-07-16 12:24:00', 3, 1.81, 86, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-09 15:31:52', 15, 6.37, 37, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-13 22:49:40', 1, 19.43, 119, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-05-03 02:44:28', 9, 15.49, 39, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-03-12 05:11:22', 1, 23.11, 41, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-05-03 01:34:42', 6, 40.95, 69, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-04-28 05:48:05', -18, 10.82, 43, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-03-20 03:20:39', 14, 35.85, 92, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-27 01:22:03', 1, 22.46, 28, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-05-05 19:58:21', -7, 22.7, 41, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-06 04:11:51', 4, 14.85, 108, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-07 05:59:47', 9, 5.5, 23, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-25 23:27:06', 14, 36.39, 98, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-04-17 03:40:42', 6, 18.55, 11, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-16 04:54:23', 6, 16.8, 108, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-20 20:50:25', 4, 42.98, 15, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-07-17 10:04:17', 7, 42.48, 72, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-27 12:43:14', 13, 44.25, 105, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-21 14:19:40', 2, 0.12, 74, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-03-24 18:14:01', 18, 44.41, 13, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-03-05 16:36:10', 18, 3.7, 82, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-05-10 02:46:41', 13, 43.53, 94, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-01-26 00:09:26', -19, 23, 82, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-09-21 22:58:31', 15, 21.21, 117, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-20 08:30:06', 13, 24.78, 88, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-01-20 07:11:35', 0, 42.01, 73, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-17 08:31:11', -9, 42.08, 29, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-05 01:33:56', 11, 17.87, 29, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-28 03:06:26', 19, 28.45, 27, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-29 10:20:16', 2, 27.11, 68, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-01-26 03:57:12', 15, 44.52, 66, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-07-11 16:30:33', 13, 20.78, 35, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-03-18 14:28:04', 12, 26.95, 19, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-11 11:00:33', 13, 34.81, 106, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-03 10:30:52', -1, 1.12, 105, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-08-20 11:08:45', 10, 44.42, 48, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-02-17 07:01:02', 15, 39.73, 2, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-20 13:27:01', -5, 0.57, 34, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-10-22 12:32:48', 17, 6.05, 12, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-03-10 11:15:30', 18, 16.9, 20, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-06-05 09:15:08', 16, 27.17, 60, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-05-20 02:45:07', 16, 2.71, 97, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-09-17 09:25:39', 1, 23.4, 47, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-10-25 06:09:23', -1, 36.47, 104, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-10-10 08:54:58', 7, 44.09, 84, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-17 23:26:43', 19, 18.27, 16, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-26 06:17:53', 4, 42.78, 0, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-16 07:14:34', 13, 19.56, 16, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-09-23 03:50:11', 1, 16.47, 64, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-02-11 16:01:46', 12, 33.72, 98, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-26 23:08:44', 9, 19.49, 93, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-08 17:46:00', 7, 40.54, 45, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-06-01 06:39:12', 2, 2.61, 105, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-06-02 02:21:04', 9, 33.94, 36, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-06-28 21:05:27', 18, 13.9, 96, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-03-02 01:32:53', 16, 41.43, 18, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-12-04 05:37:47', 2, 30.99, 8, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-08-04 18:00:28', 19, 24.34, 100, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-02-11 21:15:12', 2, 18.8, 87, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-09-29 19:39:59', 16, 18.44, 61, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-08-22 06:54:31', -19, 24.17, 83, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-15 17:59:24', 3, 17.85, 57, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-23 10:11:23', 15, 14.97, 35, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-09 07:31:31', 5, 15.26, 96, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-12-09 10:16:52', 17, 28.47, 71, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-02-20 10:11:47', 1, 42.92, 57, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-01-08 11:53:39', -2, 12.34, 2, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-12 18:16:35', 18, 39.01, 58, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-08-22 21:03:05', 13, 22.55, 50, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-02-27 18:49:15', 9, 28.28, 90, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-09-15 07:51:52', 8, 26.29, 77, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-11-30 00:44:11', 18, 0.37, 32, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-08-10 21:26:24', 17, 11.52, 80, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-02-25 08:16:16', -4, 39.77, 82, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-09 02:30:17', 18, 9.59, 33, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-05 01:51:16', 9, 6.23, 38, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-05-22 02:04:40', 18, 20.78, 69, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-16 20:07:31', 8, 5.63, 35, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-03-13 13:12:57', 16, 15.48, 34, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-09 07:59:43', 19, 33.35, 96, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-07-06 05:06:38', 18, 15.46, 104, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-25 03:07:40', 0, 25.86, 87, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-10-15 00:27:16', 17, 4.39, 104, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-02-27 22:37:30', 19, 13.65, 69, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-11-24 08:57:42', 17, 1.77, 73, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-10-23 00:47:46', 1, 16.79, 78, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-04-06 19:14:11', 7, 3.81, 41, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-11-20 15:35:25', 18, 6.88, 116, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-10-16 07:10:48', 13, 2.07, 24, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-24 01:37:10', 19, 7.79, 109, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-02-08 07:16:31', 1, 17.03, 75, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-01-01 07:25:43', 6, 20.48, 44, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-16 21:19:11', -9, 41.2, 22, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-11 21:58:26', 0, 20.21, 16, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-10 21:48:46', 17, 18.8, 62, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-09-05 11:22:55', 14, 42.22, 62, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-07-01 18:03:32', 10, 15.48, 21, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-09-08 23:32:57', -4, 35.07, 28, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-18 04:47:05', 13, 18.32, 118, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-05-17 10:36:25', -9, 41.76, 26, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-07 04:43:59', 1, 24.42, 63, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-25 09:58:41', 6, 33.72, 87, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-04 21:50:25', 10, 40.92, 1, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-08-26 13:55:01', 6, 25.17, 103, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-30 12:21:26', 12, 0.3, 19, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-07-27 08:02:18', 14, 41.68, 61, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-01 19:39:56', 2, 2.41, 103, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-04-09 07:14:38', 7, 14.79, 56, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-18 01:09:55', 3, 37.32, 76, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-05 08:30:34', 0, 13.03, 43, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-11-08 16:13:23', 13, 44.54, 107, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-12-17 23:36:11', 12, 37.23, 35, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-01-02 07:13:14', 11, 5.02, 92, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-11 19:53:48', 10, 8.98, 41, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-04-14 16:48:46', 15, 38.65, 111, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-02-15 07:57:13', 15, 25.41, 65, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-01-21 06:16:11', -9, 5.71, 19, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-30 14:42:05', -8, 32.98, 37, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-09-30 09:55:21', 14, 9.85, 117, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-04 10:03:39', 5, 40.34, 76, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-01 15:03:39', 11, 10.82, 57, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-05-05 11:35:24', 4, 5.48, 0, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-04-23 20:55:50', 8, 8.63, 88, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-03-23 22:03:12', 2, 37.6, 105, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-09-14 20:55:55', 14, 22.87, 49, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-01-25 05:57:21', 16, 21.47, 108, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-03-21 01:30:01', -1, 3.06, 10, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-06-23 08:40:04', 3, 28.81, 87, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-06-02 03:16:54', 4, 37.79, 65, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-14 19:23:35', 2, 1.84, 102, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-04-07 07:53:02', 11, 24.07, 2, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-12-23 02:43:41', 2, 6.15, 30, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-18 13:37:10', 11, 17.29, 30, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-03-27 01:48:42', 14, 26.71, 88, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-10-18 23:59:45', 0, 14.19, 54, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-08-04 10:18:01', 8, 25.9, 65, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-03 22:50:07', 11, 8.08, 19, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-07 02:04:00', 6, 35.22, 1, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-05-21 07:30:03', 14, 2.37, 8, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-06-02 02:47:48', 5, 18.26, 29, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-01-01 16:31:35', 5, 2.95, 66, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-09 11:52:38', 19, 35.59, 115, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-03 16:52:24', -12, 31.14, 71, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-09-26 16:52:22', 4, 36.67, 39, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-05-24 01:32:57', 14, 22.08, 29, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-28 05:23:01', 4, 14.94, 118, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-10-29 19:48:49', 5, 3.16, 59, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-08 02:00:55', 15, 24.84, 49, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-10-20 00:43:00', 2, 22.41, 12, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-09 20:51:14', 18, 19.7, 57, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-03-07 01:26:07', -1, 9.64, 93, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-06-20 03:45:43', 18, 42.19, 109, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-28 05:18:54', 10, 15.81, 19, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-17 16:26:04', 17, 2.4, 80, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-05-11 06:26:50', -1, 1.26, 101, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-11 10:45:15', 10, 39.37, 96, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-09-25 04:57:55', 1, 17.8, 89, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-20 04:19:00', 12, 35.62, 18, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-09-27 02:38:02', -9, 38.4, 109, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-12-04 13:20:58', 13, 3.63, 47, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-06-09 06:18:51', 1, 33.83, 57, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-04-04 14:02:10', 12, 44.26, 117, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-11-01 22:46:11', 0, 28.16, 13, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-04-24 02:37:41', 10, 32.83, 14, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-11-02 22:53:02', 17, 37.63, 74, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-26 00:30:18', 5, 42.33, 101, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-05 01:37:48', 5, 43.45, 7, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-10-25 05:56:47', 14, 3.74, 27, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-15 18:20:10', 17, 31.32, 108, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-11-02 02:33:32', 5, 19.96, 52, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-11 02:18:28', -4, 31.73, 110, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-24 20:36:32', 15, 20.52, 2, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-05-24 07:54:50', 6, 43.46, 98, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-19 07:15:48', 8, 13.7, 30, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-09-06 11:14:06', 6, 18.87, 9, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-07 02:33:19', 6, 15.29, 89, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-05-14 17:07:40', 2, 32.62, 23, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-09 07:20:01', 12, 26.17, 119, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-06-20 12:57:18', 9, 26.43, 67, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-02-11 11:30:17', 17, 42.5, 11, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-04-14 00:42:00', 3, 24.93, 31, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-31 01:09:49', 1, 26.22, 84, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-07-10 23:39:08', 15, 26.89, 70, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-04-20 11:47:36', 0, 19.01, 0, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-06-18 20:52:41', 12, 34.38, 119, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-22 23:06:58', 15, 19.3, 89, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-11-13 11:05:00', 0, 20.55, 30, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-28 18:56:41', 13, 27.44, 1, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-09 05:42:49', -12, 29.94, 54, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-07-26 05:08:13', 17, 33.84, 14, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-09-17 03:24:48', 10, 43.34, 23, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-03-15 06:52:40', 0, 33.7, 71, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-06-07 05:04:23', 7, 15.51, 64, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-19 18:39:31', 17, 35.7, 32, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-11-14 11:42:03', -8, 24.91, 61, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-10-05 10:42:46', 14, 30.8, 25, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-01-08 00:31:01', 9, 36.73, 74, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-27 19:35:01', 8, 38.67, 5, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-19 11:40:07', 0, 2.41, 23, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-06 06:53:45', 13, 5.16, 68, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-12-16 21:28:30', 15, 12.99, 13, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-09 08:50:50', 12, 7.75, 115, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-18 07:04:36', 6, 6.76, 101, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-07-11 23:14:32', 9, 23.61, 27, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-02-07 09:13:45', -1, 0.93, 101, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-22 15:44:54', 0, 33.52, 83, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-06-19 06:54:48', -14, 13.95, 44, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-27 09:37:21', 8, 35.33, 75, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-11 02:38:44', 1, 17.26, 84, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-09-24 21:39:03', 4, 26.71, 35, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-02 08:50:32', 10, 15.09, 12, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-07 18:15:05', 18, 33.41, 116, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-03-11 09:51:19', 4, 40.61, 97, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-25 14:48:29', 12, 1.44, 32, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-06-22 00:51:08', 19, 1.72, 34, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-12 18:58:49', 4, 17.4, 25, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-10-18 09:33:09', 12, 16.11, 100, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-04-04 08:37:36', 13, 43.37, 89, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-06 04:17:18', 16, 2.43, 95, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-07-25 14:23:07', 11, 26.86, 39, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-09-04 19:25:21', 7, 22.46, 47, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-16 16:24:58', 4, 36.84, 55, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-09-04 06:28:30', 7, 17.81, 94, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-06-27 02:46:48', 19, 37.97, 34, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-09-21 10:35:21', 9, 12.12, 118, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-04 17:40:16', 10, 34.22, 27, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-06 13:48:36', 13, 31.26, 56, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-12 08:05:12', 11, 31.45, 99, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-02-06 21:32:43', 7, 16.78, 84, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-22 08:49:36', 11, 37.2, 45, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-24 08:31:29', 14, 27.86, 102, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-10 01:58:13', 16, 20.54, 93, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-01-05 16:27:57', 10, 30.33, 100, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-19 15:58:01', 16, 40.6, 0, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-26 14:44:32', 17, 25.58, 20, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-04-15 13:41:38', 2, 42.38, 37, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-11 22:12:11', -8, 30.65, 10, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-09-27 14:49:19', 5, 10.28, 40, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-12-04 08:12:06', 9, 4.16, 3, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-03 13:31:16', 10, 6.52, 10, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-08 22:54:22', 19, 0.43, 13, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-12 19:29:11', 2, 22.44, 11, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-11-17 09:12:03', 19, 19.71, 33, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-03-12 14:48:30', 6, 43.35, 94, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-17 08:49:06', 2, 12.47, 9, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-31 09:09:43', 5, 2.83, 67, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-13 23:59:37', 16, 9.17, 68, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-22 06:08:07', 3, 38.03, 83, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-11-10 16:55:33', 14, 12.74, 36, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-04-17 00:40:47', 0, 14.06, 61, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-03-17 10:02:07', 3, 3.37, 100, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-19 20:04:34', 5, 11.46, 46, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-04-23 14:10:28', 4, 43.7, 28, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-27 20:21:42', 0, 11.17, 26, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-09-21 11:41:25', 6, 2.26, 28, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-01-19 01:13:09', 14, 38.05, 4, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-13 10:53:32', 3, 36.1, 58, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-01-10 12:30:33', 9, 12.95, 4, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-08-04 01:06:50', 12, 42.62, 105, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-03 10:11:47', 4, 43.79, 28, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-07-21 17:48:17', 2, 6.58, 48, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-02-27 21:14:25', 16, 4.79, 1, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-05-28 11:11:28', 0, 41.28, 67, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-02-06 10:16:55', 5, 20.24, 59, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-03-24 06:23:57', 3, 33.67, 23, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-05-27 01:48:13', 10, 43.19, 31, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-11-02 22:08:26', 1, 21.08, 21, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-12-13 05:51:29', -9, 35.28, 67, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-11-20 11:47:04', 17, 37.25, 55, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-13 21:39:10', 14, 43.71, 89, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-08-02 01:53:12', 3, 43.61, 42, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-28 12:16:35', 16, 24.22, 25, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-21 14:22:40', 10, 29.23, 85, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-08 05:54:17', 13, 13.68, 64, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-06-25 12:38:59', 14, 26.77, 100, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-10-08 03:59:51', 6, 32.52, 84, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-08-29 11:11:04', 9, 11.6, 98, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-27 13:12:42', 18, 28.67, 51, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-06-02 23:50:01', 18, 37.78, 55, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-07-09 07:27:21', 17, 27.56, 49, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-06-01 01:39:00', 4, 2.87, 82, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-25 10:41:28', 1, 33.71, 65, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-02 19:43:36', 10, 13.45, 118, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-30 14:45:52', 14, 34.14, 75, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-09-13 04:42:40', 14, 6.51, 72, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-05 12:07:12', 2, 44.39, 58, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-12-20 01:10:31', 16, 14.08, 11, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-27 03:38:39', 8, 41.05, 33, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-04-09 01:48:17', 17, 44.48, 42, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-08-01 11:43:30', 11, 0.71, 45, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-08-16 03:04:16', 11, 41.46, 102, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-01-02 01:18:52', 4, 27.31, 35, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-04-21 03:23:09', -13, 42.67, 89, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-09-19 10:50:50', 2, 3.64, 0, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-07-14 07:03:48', 0, 17.91, 111, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-22 05:56:17', -10, 6.98, 21, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-20 07:58:00', 10, 17.69, 41, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-06 22:52:16', 5, 33.6, 109, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-12 02:05:46', 3, 40.39, 1, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-20 00:26:57', 2, 21.8, 9, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-10 07:51:37', 18, 22.42, 80, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-09-08 19:23:47', 15, 27.2, 87, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-16 10:47:11', 3, 25.94, 51, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-14 20:25:22', 12, 10.59, 28, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-11 18:42:28', 15, 9.81, 84, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-07 13:11:48', 0, 40.35, 57, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-05-07 02:17:32', 18, 44.64, 30, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-18 14:29:10', 17, 33.76, 17, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-12-08 09:32:18', 11, 22.64, 94, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-07 00:34:32', -1, 32.99, 60, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-08-12 04:06:58', 2, 25.38, 52, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-12-19 10:28:40', 11, 28.72, 57, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-01 07:05:15', 12, 19.86, 42, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-21 13:17:09', 19, 23.84, 83, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-10-05 01:48:05', -16, 38.86, 99, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-02-09 21:28:37', 13, 16.74, 103, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-05-19 23:49:06', 4, 0.01, 38, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-23 11:13:26', 2, 30.37, 5, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-05-22 03:13:38', 18, 17.12, 16, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-14 16:09:32', 13, 20.2, 34, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-03-15 14:52:08', 8, 1.64, 107, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-09-06 04:54:31', 4, 18.34, 46, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-01 04:06:24', 3, 22, 108, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-02-19 13:01:59', -3, 14.75, 15, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-27 11:24:38', 18, 27.13, 24, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-24 00:17:14', -17, 7.49, 18, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-02 01:33:00', 17, 25.43, 31, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-03-11 16:42:38', 5, 18.73, 23, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-05-24 00:38:05', 12, 18.11, 9, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-26 22:48:59', 10, 44.49, 42, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-07-15 05:21:29', 0, 36.05, 110, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-09 09:47:34', 11, 27.56, 40, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-20 12:00:32', 0, 32.78, 66, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-02-10 12:37:32', -14, 4.12, 37, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-07-18 03:53:18', 9, 5.63, 32, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-12-01 06:59:13', 7, 7.57, 78, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-07-11 08:28:24', 17, 4.41, 105, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-03-01 23:21:47', 2, 9.73, 78, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-12 06:59:25', 7, 20.34, 15, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-07-19 01:42:32', 3, 34.14, 24, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-06-13 06:52:53', 8, 1.08, 104, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-07-15 21:56:07', 16, 12.84, 118, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-13 21:20:45', 1, 0.34, 104, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-31 05:39:46', 18, 22.76, 97, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-14 14:31:34', 12, 44.98, 14, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-17 19:46:49', 13, 7.21, 98, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-11 12:22:45', -8, 27.81, 96, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-04-15 20:19:34', 7, 28.97, 10, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-12-17 13:09:03', -11, 15.86, 9, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-09-06 06:27:31', 14, 14.71, 57, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-10-16 12:02:38', 15, 11.66, 111, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-20 13:19:32', 11, 20.3, 72, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-17 06:34:59', 4, 15.11, 0, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-06 01:52:20', 8, 42.39, 45, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-02-05 07:37:14', 10, 18.13, 56, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-11 18:04:10', 11, 15.31, 109, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-26 11:59:42', 14, 4.77, 50, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-07-01 11:37:00', 11, 41.43, 111, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-09-13 11:10:32', 16, 44.9, 61, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-18 22:29:02', 14, 25.73, 78, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-29 00:05:32', 7, 38.28, 13, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-01-05 17:22:06', 12, 29.71, 44, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-03 12:05:06', 17, 25.87, 26, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-24 13:14:28', 0, 30.87, 46, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-09-10 11:50:49', 10, 36.81, 61, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-03-05 06:58:19', 10, 2.67, 83, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-19 20:13:02', 4, 4.57, 98, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-07-16 05:55:52', -9, 0.49, 66, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-06-11 02:58:11', 9, 20.18, 93, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-25 00:19:27', 10, 28.67, 75, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-13 16:15:27', 17, 44.38, 35, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-12-28 15:46:10', 2, 19.38, 93, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-03-16 21:00:52', 6, 17.4, 119, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-08-13 09:54:31', 7, 29.32, 9, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-21 02:42:09', 14, 22.88, 50, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-02-22 16:29:34', 5, 22.82, 91, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-07-15 06:21:07', 6, 19.15, 9, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-03-27 22:00:41', 10, 43.94, 43, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-09-11 17:01:01', 3, 44.09, 39, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-05-09 05:42:22', -7, 15.82, 81, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-20 12:12:42', 15, 28.14, 88, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-07-16 21:20:11', 11, 3.16, 83, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-04 13:24:49', 18, 34.97, 4, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-09-10 13:55:46', 16, 10.74, 95, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-06-23 02:15:29', 9, 25.46, 57, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-04-28 09:54:21', 9, 25.06, 45, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-05-30 07:03:47', 14, 24.56, 62, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-11-13 14:51:15', 5, 6.07, 104, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-29 05:42:55', 18, 28.6, 53, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-03 11:21:12', 0, 6.31, 80, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-10-14 11:11:27', -5, 38.8, 67, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-06-01 23:44:01', 7, 39.26, 22, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-23 05:21:03', 18, 38.26, 61, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-12-06 02:12:58', 15, 0.48, 79, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-07-08 21:07:43', 2, 2.84, 107, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-20 19:44:34', 13, 22.48, 59, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-13 19:58:08', -19, 23.81, 82, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-29 12:29:07', 10, 23.03, 1, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-12-27 06:35:34', 0, 5.41, 70, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-02-17 08:52:35', 8, 11.19, 4, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-11-04 03:53:45', 13, 41.46, 71, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-18 11:53:04', 10, 31.09, 108, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-11-07 04:42:41', 4, 8.07, 31, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-06-27 02:35:40', 12, 16.03, 103, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-07-01 16:56:41', 6, 28.24, 25, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-17 19:09:56', 12, 14.43, 86, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-04-11 06:52:56', 11, 15.11, 114, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-06-26 08:53:36', 13, 42.3, 85, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-06-08 09:07:04', 12, 37.65, 33, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-03 15:44:45', 17, 8.98, 42, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-04-28 21:57:44', 6, 44.32, 110, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-04-13 07:17:50', -17, 40.02, 104, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-04-19 19:50:13', 18, 17.89, 19, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-03-25 15:43:40', 17, 29.88, 84, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-11 07:47:07', 1, 42.7, 68, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-12-08 16:44:17', 18, 23.22, 99, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-02-16 01:26:14', 0, 8.41, 103, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-06-11 07:50:14', 16, 36.27, 74, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-05-11 13:16:57', 2, 39.27, 112, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-02-17 07:11:12', 14, 31.26, 27, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-02-11 11:59:02', 1, 34.66, 70, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-28 00:33:43', 6, 36.36, 5, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-20 02:33:13', 1, 28.58, 113, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-08-01 14:35:55', 3, 2.37, 79, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-04-28 01:42:18', 19, 12.27, 56, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-25 19:48:15', 3, 35.41, 46, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-02-19 21:05:06', 19, 14.12, 75, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-05-28 09:18:28', 17, 21.68, 99, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-05-24 05:23:44', -5, 34.38, 4, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-09-25 20:59:42', 17, 8.79, 49, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-28 06:30:39', 18, 18.23, 31, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-02-26 12:48:35', -14, 6.2, 66, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-18 10:29:26', 7, 5.2, 51, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-08-04 23:30:00', 12, 20.47, 50, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-06-21 06:14:56', 18, 26.83, 16, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-08 07:52:16', 5, 4.65, 90, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-11-12 09:53:40', 5, 8.69, 15, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-02-07 04:30:17', 9, 0.23, 72, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-12-01 07:57:34', 0, 27.69, 7, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-22 06:46:39', 6, 12.31, 54, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-04 00:33:54', 16, 6.03, 16, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-07-22 01:14:15', 13, 16.34, 89, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-01 09:54:33', 3, 27.39, 65, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-02 03:40:52', 19, 20.76, 45, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-13 06:39:09', 5, 9.46, 22, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-07-24 04:47:10', 6, 22.11, 59, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-01-09 09:36:59', 4, 24.54, 0, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-12 10:35:23', 9, 12.22, 107, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-04-03 08:49:04', 0, 37.28, 10, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-10-27 01:32:31', 8, 3.73, 16, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-11-03 21:09:49', 13, 15.26, 88, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-15 06:20:04', 5, 27.77, 23, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-04-04 04:26:24', 7, 6.62, 70, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-09 15:22:57', 0, 28.69, 5, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-03 23:08:34', 7, 1.44, 118, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-11 11:19:49', 0, 18.53, 117, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-04-27 02:31:41', 11, 8.62, 22, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-09-23 18:31:32', 3, 12.89, 109, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-05-07 19:55:16', 19, 18.3, 12, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-15 16:28:37', 3, 43.78, 37, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-03-22 13:05:20', 16, 29.06, 85, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-23 00:28:44', 16, 18.67, 80, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-03-11 04:51:17', 19, 4.64, 68, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-01-17 10:14:25', 7, 12.3, 28, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-27 11:01:10', 11, 42.76, 2, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-23 10:17:58', 2, 14.75, 37, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-02-05 05:04:26', 9, 30.56, 114, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-05-21 18:44:11', 5, 16.76, 10, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-04 16:12:56', 13, 34.45, 90, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-05 07:41:18', 19, 7.25, 104, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-08-28 15:26:41', 2, 43.56, 51, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-18 05:35:30', 4, 9.52, 42, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-21 18:09:11', 1, 40.01, 27, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-12-10 19:38:53', 14, 42.88, 77, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-10-03 11:04:45', 12, 41.49, 93, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-04-08 21:13:27', 19, 24.25, 101, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-02-27 02:57:26', 1, 13.84, 29, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-14 02:20:12', 18, 6.1, 113, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-08-10 19:46:11', 7, 35.88, 103, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-03 07:36:29', 8, 12.87, 18, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-10-03 03:48:26', 5, 10.23, 44, 7)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-25 17:57:41', 2, 11.33, 102, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-25 09:36:44', 6, 30.23, 39, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-03-19 08:20:27', 16, 10.74, 82, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-05-21 06:08:09', 11, 26.27, 29, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-07 15:26:13', 5, 38.95, 64, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-03-16 05:43:53', 17, 26.67, 38, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-08-21 14:28:22', 9, 21.44, 116, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-19 09:09:38', 3, 39.39, 98, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-12-16 10:59:54', 6, 22.12, 62, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-03-19 00:09:43', 10, 31.76, 1, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-11-16 22:22:58', 6, 7.33, 108, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-25 03:19:16', 12, 43.2, 116, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-12-02 00:57:42', 3, 33.87, 31, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-22 09:44:17', 8, 9.99, 94, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-07-06 09:01:44', 4, 3.41, 79, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-17 21:30:32', 10, 30.37, 100, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-04-12 13:10:16', 13, 16.18, 93, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-08-14 00:24:49', 6, 1.99, 34, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-07-31 13:41:51', 4, 0.18, 35, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-12 08:11:25', 11, 16.09, 14, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-08 16:14:18', 15, 43.15, 51, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-29 10:42:46', 13, 7.76, 102, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-06-22 13:41:26', 1, 25.21, 70, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-07-13 11:33:21', 11, 1.87, 57, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-07-07 04:57:01', 19, 19.02, 24, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-06-20 09:57:26', 7, 11.68, 23, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-05-26 02:10:32', 18, 39.5, 78, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-04-02 15:06:54', 11, 26.77, 24, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-06-29 14:28:27', 4, 20.12, 65, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-09-23 14:58:13', 17, 33.52, 10, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-05-13 16:48:14', 19, 44.21, 119, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-01-28 12:13:33', 3, 27.02, 53, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-11-10 03:20:47', 11, 4.38, 93, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-12 19:32:50', 17, 5.78, 118, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-01-29 00:03:56', 1, 25.56, 71, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-30 05:53:00', 2, 5.68, 28, 2)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-08-05 23:06:38', 11, 24.8, 11, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-08-05 00:24:14', 16, 10.43, 76, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-12-28 13:24:58', 17, 26.15, 27, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-19 22:06:03', 2, 10.4, 99, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-12 20:27:32', 5, 14.16, 86, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-24 12:13:28', 18, 10.14, 42, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-03-13 02:16:59', 8, 7.27, 70, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-12-02 11:19:23', 1, 10.82, 112, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-11-08 09:19:19', 9, 21.2, 118, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-19 19:44:50', 4, 13.16, 95, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-03-14 07:52:18', 0, 11.09, 25, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-11 07:34:03', 1, 44.67, 94, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-05 23:29:43', 9, 41.25, 11, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-02 21:56:50', 5, 43.51, 112, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-07-09 06:14:33', 8, 22.18, 22, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-11-20 19:05:42', -16, 35.84, 52, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-07-25 18:16:14', 19, 9.6, 24, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-09-28 17:44:41', 2, 44.58, 66, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-06 14:34:42', 8, 4.44, 24, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-24 10:02:17', 18, 19.42, 48, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-06-02 01:55:23', 17, 25.1, 25, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-12 21:56:04', -17, 38.36, 74, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-02-08 09:42:17', 13, 24.68, 90, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-03-31 22:24:28', 8, 41.94, 45, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-03-09 20:46:50', 3, 12.12, 97, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-07-08 04:44:14', 1, 15.46, 52, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-04 08:43:06', 10, 30.99, 97, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-12-03 06:23:53', 13, 29.58, 24, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-02-18 18:28:59', 14, 41, 47, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-07 07:41:13', 14, 33.47, 60, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-25 07:37:47', 3, 32.97, 7, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-03-29 01:31:33', 14, 42.97, 66, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-09-27 00:27:59', 0, 27.05, 113, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-11 20:05:46', 7, 12.04, 19, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-01-16 12:34:41', 8, 22.66, 27, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-04-10 10:25:57', 2, 33.69, 40, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-11-03 09:21:58', 10, 37.53, 69, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-10-08 14:31:31', 1, 39.81, 20, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-05-17 03:21:55', 11, 3.41, 78, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-02-03 16:15:42', 7, 2.66, 15, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-11-17 04:19:21', -10, 1.84, 81, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-07-26 00:25:55', 11, 19.92, 60, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-05-18 03:19:06', 0, 30.49, 40, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-04-01 12:34:05', 8, 30.24, 15, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-03-26 22:23:55', 0, 40.62, 57, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-05-10 02:46:55', 0, 7.06, 82, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-11-08 18:31:18', 7, 22.79, 48, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-31 21:17:15', 5, 14.78, 93, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-10-02 10:44:37', 1, 41.97, 58, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-28 19:09:23', 18, 27.26, 26, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-07-27 23:33:40', 1, 9.44, 99, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-29 04:39:27', 13, 29.1, 32, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-10-19 14:51:11', 17, 18.73, 50, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-09-04 02:35:44', 0, 21.41, 36, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-02-24 04:40:25', 15, 37.64, 94, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-11 02:16:50', 16, 37.68, 80, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-10 08:09:49', 13, 20.02, 31, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-12-02 08:45:19', 2, 27.11, 80, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-13 15:14:27', 0, 39.45, 44, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-29 08:04:17', 1, 8.68, 83, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-09-23 22:04:57', 18, 37.29, 52, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-04-28 06:23:24', -6, 13.15, 51, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-20 07:27:33', 16, 1.12, 74, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-01-21 16:58:16', 7, 5.78, 54, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-09-19 03:18:51', 16, 15.86, 29, 8)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-06 08:59:23', 9, 42.42, 36, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-05-20 13:56:26', -18, 11.13, 54, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-01-02 13:46:28', 10, 29.59, 79, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-20 14:55:10', -10, 6.47, 23, 4)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-10 04:02:11', 16, 32.02, 4, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-01-28 05:23:07', 12, 15.47, 93, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-08-26 06:39:45', 0, 13.51, 52, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-02 11:24:13', -10, 19.18, 60, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-06-20 17:12:21', 12, 35.38, 9, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-02-05 11:30:44', -4, 37.98, 60, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-12-07 03:10:00', 19, 28.97, 30, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-10 11:56:31', 13, 37.64, 13, 6)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-02-05 06:10:14', 14, 37.11, 105, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-10-05 05:17:53', 19, 25.54, 103, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-03-05 01:50:44', -7, 20.02, 13, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-26 05:01:50', 4, 1.26, 57, 6)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-06 06:23:02', 12, 37.61, 38, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-03-21 11:10:13', 18, 34.12, 114, 2)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-27 16:13:45', -8, 29.4, 117, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-11-02 22:53:51', 7, 7.08, 83, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-01-20 02:09:04', 18, 36.79, 34, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-12-06 06:05:32', 5, 6.86, 118, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-12-07 02:05:12', 3, 43.83, 35, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-01-23 02:23:28', 9, 31.36, 9, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-07-21 11:49:46', 11, 40.74, 104, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-03-25 09:00:58', 19, 9.74, 14, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-10-31 21:34:32', 6, 33.84, 102, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-01-11 06:23:03', 4, 22.49, 99, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-03-31 18:56:20', 6, 20.89, 33, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-01-04 11:12:43', 19, 24.65, 104, 1)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-05-20 07:54:01', 1, 10.63, 109, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-08-22 05:11:47', 11, 15.01, 105, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-03 18:50:29', -7, 22.03, 42, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-07 04:29:52', 8, 33.23, 53, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-01-20 23:10:25', 1, 24, 50, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-12-30 17:55:56', 18, 0.32, 38, 7)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-02-27 11:58:14', 11, 26.32, 23, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-06-13 09:29:20', 16, 19.1, 86, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-08-22 04:52:20', 3, 37.2, 69, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-24 21:09:15', 19, 10.49, 28, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-01 15:05:51', 6, 10.53, 15, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-11-01 19:51:04', -7, 15.36, 76, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-12 11:32:11', -11, 20.03, 55, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-11-18 03:18:18', 8, 44.93, 83, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-11 20:27:06', 18, 29.61, 64, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-05-29 11:25:59', 9, 40.92, 17, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-13 14:02:02', -13, 40.63, 58, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-06-09 13:48:52', 5, 14.3, 87, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-05-16 20:12:46', 8, 42.4, 57, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-02-14 02:28:53', 3, 7.39, 43, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-08-21 08:34:46', 17, 21.45, 82, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-01-14 01:24:01', 5, 16.29, 0, 2)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-10-16 11:53:56', 7, 28.77, 6, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-28 07:53:13', 7, 0.32, 116, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-27 20:03:27', 19, 15.87, 92, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-07-05 10:34:43', 15, 1.79, 111, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-11 03:00:15', 5, 28.85, 41, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-08 04:26:27', 5, 21.65, 74, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-04-23 05:35:52', 1, 41.57, 49, 7)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-08-07 17:52:42', 14, 40.17, 38, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-10-26 18:07:36', 0, 37.55, 18, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-21 08:21:03', 14, 34.14, 78, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-01-11 05:52:46', 19, 31.16, 73, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-11-25 03:25:39', 12, 19.41, 39, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-08-28 18:22:17', 15, 18.37, 80, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-04-08 16:00:45', 15, 39.9, 13, 5)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-10-09 12:56:52', 7, 43.38, 80, 1)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-14 14:23:19', -2, 12.7, 115, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-17 08:11:59', 2, 36.11, 68, 2)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-16 08:08:15', 16, 23.96, 25, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-29 18:15:34', 8, 13.79, 25, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-05 02:28:05', 8, 4.46, 24, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-07 03:49:53', 1, 8.58, 79, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-22 23:16:35', 9, 33.93, 39, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-01 08:00:25', 5, 17.14, 12, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-05 13:53:34', 1, 29.65, 8, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-09-20 14:17:44', 16, 16, 33, 5)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-08-30 03:00:40', 3, 30.36, 99, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-03 09:55:01', 0, 9.43, 109, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-11-01 10:06:02', 10, 7.21, 30, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-07-21 13:41:46', 11, 3.5, 79, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-02-14 19:58:36', 9, 36.94, 78, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-22 02:40:21', 1, 7.89, 78, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-17 22:52:32', 19, 26.71, 4, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-10-15 06:15:40', 0, 10.75, 9, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-04-22 07:42:36', 18, 4.48, 89, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-11-12 10:12:21', 10, 34.27, 35, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-05-25 07:39:33', 0, 2.92, 38, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-10-20 05:57:01', -18, 1.61, 52, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-03-07 08:41:38', 14, 38.07, 119, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-11-21 17:48:18', 11, 4.52, 99, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-13 16:18:55', 3, 39.38, 94, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-30 08:12:31', 19, 40.86, 75, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-15 09:18:29', 10, 41.16, 2, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-09-21 23:16:36', 7, 41.04, 49, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-08-19 23:38:28', 3, 5.33, 12, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-05-10 11:20:52', 19, 1.75, 36, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-10-06 03:48:14', 12, 4.75, 76, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-08-29 22:06:38', 5, 20.93, 61, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-24 16:17:03', -2, 2.01, 110, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-12-02 11:47:44', 9, 34.7, 54, 1)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-11-25 06:34:59', 1, 26.11, 76, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-11-02 15:15:02', 19, 38.54, 44, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-07-23 19:24:31', 6, 19.35, 17, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-11-06 20:46:29', 16, 37.36, 83, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-01-08 08:25:00', 6, 5.08, 78, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-11-01 20:50:03', 15, 29.06, 112, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-06-06 03:46:32', 0, 13.96, 58, 8)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-04 07:45:53', 14, 32.68, 53, 1)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-01-26 02:12:40', 18, 28.18, 41, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-09 18:03:07', -1, 42.13, 52, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-09-25 10:20:57', 15, 11.9, 3, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-09-14 18:40:49', 1, 9.31, 88, 2)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-23 09:34:00', -14, 2.87, 21, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-05-10 08:40:26', 3, 12.77, 111, 3)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-07-28 14:46:10', 5, 11.21, 53, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-12-20 09:04:45', 7, 37.47, 118, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-11-08 14:20:03', 3, 1.59, 75, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-01-29 18:53:35', 4, 15.31, 9, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-09-24 14:11:11', 9, 13.95, 6, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-08-29 07:54:19', -19, 19.88, 28, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-07 12:41:14', 10, 27.09, 56, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-01-28 21:27:40', 3, 30.67, 114, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-06-05 23:56:36', 17, 31.47, 113, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-03-14 15:22:37', 19, 41.11, 84, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-07-05 21:58:35', 9, 23.62, 19, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-06-29 21:58:25', -8, 32.37, 40, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-01-18 16:41:15', 13, 35.18, 113, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-10-13 09:55:36', -16, 34.74, 45, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-02-05 17:40:42', 3, 31.34, 115, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-06-13 00:48:17', 1, 20.66, 17, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-09-04 18:30:51', 15, 1.35, 97, 5)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-20 00:36:16', 10, 25.5, 36, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-17 15:57:07', 19, 1.64, 26, 3)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-12-01 16:35:42', -17, 38.98, 91, 3)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-05-21 18:36:30', 2, 15.89, 47, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-10-26 04:27:32', 15, 28.96, 107, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-01-26 03:57:26', 18, 42.71, 115, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-11-17 08:01:25', 2, 14.82, 39, 1)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-28 12:41:00', 16, 44.4, 61, 1)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-12 07:12:03', 0, 14.11, 55, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-09-09 23:53:42', 12, 2.48, 41, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-27 19:33:03', 15, 7.89, 64, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-04-12 07:11:33', 17, 31.29, 111, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-01-23 08:44:40', 10, 41.81, 11, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-05-17 14:22:54', 9, 44.96, 76, 6)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-05-11 01:01:43', 3, 31.42, 115, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-05 22:12:53', 19, 29.13, 32, 8)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-02 19:53:25', 14, 20.97, 21, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-12-24 10:21:44', 11, 10.32, 46, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-07-04 08:06:45', 18, 34.99, 12, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-08 11:28:59', 12, 7.66, 118, 3)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-10-30 10:18:27', -12, 26.73, 17, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-11-13 21:46:22', 5, 20.09, 46, 5)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-02-14 20:11:04', 13, 31.05, 59, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-10-24 11:45:32', 14, 16.64, 88, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-09-03 04:57:24', 9, 36.13, 62, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-15 23:45:08', 8, 7.77, 69, 7)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-09-16 05:53:13', 18, 42.93, 8, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-12-01 09:50:50', 5, 16.97, 119, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-08-31 17:30:03', -1, 37.77, 3, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2009-04-18 18:50:52', 8, 24.88, 65, 8)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-26 20:50:59', 10, 44.72, 48, 3)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-02-09 03:24:41', 6, 21.84, 54, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-08-01 18:12:07', -19, 16.38, 109, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-11-28 12:01:39', 8, 22, 21, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-11-14 17:07:11', 19, 2.93, 43, 4)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2009-03-22 03:07:05', 17, 8.03, 32, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-08-10 19:21:19', 18, 27.24, 34, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-03-13 13:19:15', 3, 23.46, 17, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-05-09 03:19:31', 16, 3.49, 108, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-08-05 23:56:05', 0, 32.87, 65, 1)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-29 07:44:14', 8, 18.47, 89, 5)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-12-13 12:41:39', 4, 27.98, 51, 3)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-07-04 01:44:02', 9, 31.25, 13, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-12-10 05:01:57', 1, 21.06, 16, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-07-30 03:54:59', 19, 8.93, 2, 8)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-28 05:06:01', 2, 12.58, 4, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-09-13 16:41:40', 19, 30.84, 64, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-21 07:22:18', 6, 24.51, 97, 1)
$$
INSERT INTO demo_production VALUES (3, 'Cordex', '2008-11-04 19:35:22', 12, 36.54, 28, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-06-06 09:46:11', -18, 17.83, 19, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-13 11:27:16', 10, 36.59, 66, 7)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-08-25 11:35:10', 16, 26.7, 63, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-08-26 16:04:15', 3, 26.38, 53, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-12-12 05:30:32', 9, 34.46, 53, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-11-03 23:27:05', 15, 8.8, 71, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-10-20 15:50:54', 7, 17.28, 91, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-04-12 00:15:24', 4, 3.91, 99, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-09-22 08:08:35', 11, 19.19, 43, 3)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-01-14 10:45:14', 17, 43.56, 21, 6)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-12-04 00:38:09', 19, 31.95, 77, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-03-20 12:34:39', 14, 39.14, 18, 6)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-04-30 22:57:07', -19, 27.34, 7, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-12-13 15:35:59', 16, 43.73, 44, 4)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-10-26 09:47:08', 18, 9.93, 38, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-10-26 19:02:20', 17, 2.38, 80, 7)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-05-07 04:53:52', -5, 1.06, 38, 6)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-01-16 18:59:18', 4, 5.34, 108, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-04-18 03:29:57', 6, 11.2, 32, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-02-21 08:10:36', -6, 4.66, 64, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-09-20 14:42:16', 10, 13.94, 109, 7)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-03-23 00:42:13', 0, 13.14, 55, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-10-28 20:18:21', 5, 33.85, 116, 8)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2009-03-12 09:05:21', 14, 6.84, 73, 1)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-03-08 12:22:29', 15, 30.45, 7, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-07-30 17:37:38', 3, 11.18, 81, 8)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-03-23 07:34:48', 0, 36.99, 12, 3)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-02-22 02:49:02', 0, 23.42, 58, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-09-02 02:03:42', 19, 33.91, 104, 4)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2008-03-05 01:57:16', 6, 35.08, 116, 8)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-12-29 14:45:14', 9, 26.55, 56, 5)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-02-28 09:37:56', 7, 8.28, 92, 4)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-07-30 10:39:34', 17, 26.93, 48, 4)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-01 03:17:06', 4, 19.99, 67, 6)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-11-23 13:22:07', 14, 3.43, 29, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-01-12 20:05:50', 6, 17.59, 119, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-07-13 09:12:45', 1, 6.98, 68, 2)
$$
INSERT INTO demo_production VALUES (9, 'Eterla', '2008-10-02 13:33:13', 18, 2.63, 56, 2)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-05-04 03:41:59', 2, 26.89, 71, 5)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-21 12:05:27', 11, 44.83, 25, 4)
$$
INSERT INTO demo_production VALUES (5, 'Promos', '2008-02-29 22:01:21', 7, 21.5, 32, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-10-16 23:15:04', -18, 11.95, 71, 5)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-04-26 02:36:05', 19, 4.35, 59, 4)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-05-04 23:59:44', 8, 0.68, 93, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2009-08-29 07:05:02', 17, 12.23, 88, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2009-09-17 11:18:39', 18, 17.36, 19, 8)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-04-18 01:39:32', 4, 35.94, 33, 2)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-01-13 14:18:02', 11, 12.82, 90, 8)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-09-27 13:39:55', 17, 39.41, 85, 5)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-10-23 07:08:21', 19, 15.89, 94, 4)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2009-09-05 09:05:34', 17, 23.7, 7, 1)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2009-06-16 08:35:34', 19, 9.72, 15, 6)
$$
INSERT INTO demo_production VALUES (8, 'Manlon', '2009-12-05 10:07:19', 6, 33.57, 82, 6)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-31 11:01:05', 5, 33.38, 106, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-05-27 22:47:46', 2, 19.98, 107, 2)
$$
INSERT INTO demo_production VALUES (0, 'Amrak', '2008-04-23 06:05:20', -2, 5.74, 40, 7)
$$
INSERT INTO demo_production VALUES (4, 'Caugar', '2008-07-28 03:39:13', 17, 9.65, 45, 6)
$$
INSERT INTO demo_production VALUES (1, 'Recox', '2008-07-10 12:00:58', 1, 29.16, 4, 3)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-06-18 04:54:45', 11, 33.44, 117, 2)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-04-07 19:33:04', 15, 41.33, 28, 4)
$$
INSERT INTO demo_production VALUES (2, 'Detac', '2008-11-16 07:26:44', -5, 41.41, 99, 7)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2008-09-16 21:14:33', 9, 41.08, 20, 3)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2008-03-12 00:08:13', 1, 34.76, 76, 5)
$$
INSERT INTO demo_production VALUES (6, 'Baxtor', '2009-09-12 03:04:38', 14, 42.94, 66, 7)
$$
INSERT INTO demo_production VALUES (7, 'Kadmos', '2009-10-12 06:02:42', 2, 29.31, 113, 1)
$$


DROP TABLE IF EXISTS demo_oem_cluster
$$
CREATE TABLE demo_oem_cluster (
  id INT NOT NULL auto_increment,
  oem VARCHAR(40) default NULL,
  cluster VARCHAR(40) default NULL,
  `year` INT default NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
$$

INSERT INTO demo_oem_cluster VALUES (1, 'Nokia', 'Symbian OEM', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (2, 'Sony Ericsson', 'Symbian OEM', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (3, 'Samsung', 'Symbian OEM', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (4, 'Motorola', 'Symbian OEM', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (5, 'Fujitsu', 'NTT DoCoMo Symbian (old)', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (6, 'Mitsubishi', 'NTT DoCoMo Symbian (old)', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (7, 'Sharp', 'NTT DoCoMo Symbian (old)', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (8, 'HTC', 'Windows', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (9, 'LG', 'Windows', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (10, 'Nec', 'NTT DoCoMo new', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (11, 'Panasonic', 'NTT DoCoMo new', 2008)
$$
INSERT INTO demo_oem_cluster VALUES (16, 'Sony Ericsson', 'Android & Microsoft', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (15, 'Nokia', 'Nokia', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (17, 'Samsung', 'Android & Microsoft', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (18, 'Motorola', 'Android & Microsoft', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (19, 'Fujitsu', 'LiMo', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (20, 'Mitsubishi', 'LiMo', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (21, 'Sharp', 'LiMo', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (22, 'HTC', 'Android & Microsoft', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (23, 'LG', 'Android & Microsoft', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (24, 'Nec', 'LiMo', 2011)
$$
INSERT INTO demo_oem_cluster VALUES (25, 'Panasonic', 'LiMo', 2011)
$$

DROP TABLE IF EXISTS demo_platform
$$
CREATE TABLE demo_platform (
id int NOT NULL,
name varchar(40)
) ENGINE=InnoDB
$$
insert into demo_platform values (1, 'ISA')
$$
insert into demo_platform values (2, 'Symbian/S60')
$$
insert into demo_platform values (3, 'Symbian/UIQ')
$$
insert into demo_platform values (4, 'Symbian/MOAP(S)')
$$
insert into demo_platform values (5, 'Nokia Maemo')
$$
insert into demo_platform values (6, 'Windows Mobile')
$$
insert into demo_platform values (7, 'Android')
$$
insert into demo_platform values (8, 'LiMo')
$$
insert into demo_platform values (9, 'MacOS X')
$$
insert into demo_platform values (10, 'RIM OS')
$$

DROP TABLE IF EXISTS demo_oem_platform
$$
CREATE TABLE demo_oem_platform (
  oem VARCHAR(40) NOT NULL,
  platform VARCHAR(40) NOT NULL,
  `year` INT NOT NULL,
  PRIMARY KEY  (platform,oem,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
$$

INSERT INTO demo_oem_platform VALUES ('HTC', 'Android', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('HTC', 'Android', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('LG', 'Android', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Motorola', 'Android', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Motorola', 'Android', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'Android', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'Android', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Sony Ericsson', 'Android', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Nokia', 'ISA', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Nokia', 'ISA', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Fujitsu', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('LG', 'LiMo', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('LG', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Mitsubishi', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Motorola', 'LiMo', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Nec', 'LiMo', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Nec', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Panasonic', 'LiMo', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Panasonic', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'LiMo', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Sharp', 'LiMo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Apple', 'MacOS X', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Apple', 'MacOS X', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Nokia', 'Nokia Maemo', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Nokia', 'Nokia Maemo', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('RIM', 'RIM OS', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('RIM', 'RIM OS', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Fujitsu', 'Symbian/MOAP(S)', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Mitsubishi', 'Symbian/MOAP(S)', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Sharp', 'Symbian/MOAP(S)', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('LG', 'Symbian/S60', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Nokia', 'Symbian/S60', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Nokia', 'Symbian/S60', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'Symbian/S60', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'Symbian/S60', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Motorola', 'Symbian/UIQ', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Sony Ericsson', 'Symbian/UIQ', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('HTC', 'Windows Mobile', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('HTC', 'Windows Mobile', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('LG', 'Windows Mobile', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('LG', 'Windows Mobile', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Motorola', 'Windows Mobile', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Motorola', 'Windows Mobile', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'Windows Mobile', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Samsung', 'Windows Mobile', 2011)
$$
INSERT INTO demo_oem_platform VALUES ('Sony Ericsson', 'Windows Mobile', 2008)
$$
INSERT INTO demo_oem_platform VALUES ('Sony Ericsson', 'Windows Mobile', 2011)
$$

DROP TABLE IF EXISTS demo_platform_tech
$$
CREATE TABLE demo_platform_tech (
  platform VARCHAR(40) NOT NULL,
  tech VARCHAR(40) NOT NULL,
  `year` INT default NULL,
  PRIMARY KEY  (platform,tech)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
$$

INSERT INTO demo_platform_tech VALUES ('Symbian/S60', 'Symbian', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Symbian/UIQ', 'Symbian', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Symbian/MOAP(S)', 'Symbian', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Nokia Maemo', 'Linux', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Android', 'Linux', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Android', 'Java', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('RIM OS', 'Java', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('LiMo', 'Linux', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('LiMo', 'GTK', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Nokia Maemo', 'GTK', NULL)
$$
INSERT INTO demo_platform_tech VALUES ('Symbian/S60', 'QT', 2011)
$$
INSERT INTO demo_platform_tech VALUES ('Nokia Maemo', 'QT', 2011)
$$

DROP TABLE IF EXISTS demo_tech
$$
CREATE TABLE demo_tech (
id INT NOT NULL auto_increment,
name VARCHAR(40) default NULL,
PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
$$

INSERT INTO demo_tech VALUES (1, 'Symbian')
$$
INSERT INTO demo_tech VALUES (2, 'Linux')
$$
INSERT INTO demo_tech VALUES (3, 'Java')
$$
INSERT INTO demo_tech VALUES (4, 'GTK')
$$
INSERT INTO demo_tech VALUES (5, 'POSIX')
$$
INSERT INTO demo_tech VALUES (6, 'Windows')
$$
INSERT INTO demo_tech VALUES (7, 'QT')
$$


DROP TABLE IF EXISTS demo_platform_cluster
$$
CREATE TABLE demo_platform_cluster (
id int NOT NULL auto_increment,
platform varchar(40) default NULL,
cluster varchar(40) default NULL,
`year` int default NULL,
PRIMARY KEY  (`id`)
) ENGINE=InnoDB
$$

insert into demo_platform_cluster values (15, 'Symbian/S60', 'Symbian platform', 2008)
$$
insert into demo_platform_cluster values (16, 'Symbian/UIQ', 'Symbian platform', 2008)
$$
insert into demo_platform_cluster values (17, 'Symbian/MOAP(S)', 'Symbian platform', 2008)
$$
	

DROP TABLE IF EXISTS demo_corporate
$$
CREATE TABLE demo_corporate (
main VARCHAR(50),
sub VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
$$

insert into demo_corporate values ('Corporate', 'Sales')
$$
insert into demo_corporate values ('Corporate', 'Production')
$$
insert into demo_corporate values ('Corporate', 'Management')
$$
insert into demo_corporate values ('Sales', 'Northern Sales')
$$
insert into demo_corporate values ('Sales', 'Southern Sales')
$$
insert into demo_corporate values ('Production', 'Top part production')
$$
insert into demo_corporate values ('Production', 'Bottom part production')
$$
		


DELIMITER $$

DROP PROCEDURE IF EXISTS sp_DBR_demo_continents
$$
CREATE PROCEDURE sp_DBR_demo_continents()
BEGIN

	-- 1. Continents table
	SELECT 'dbr.title', 'Continents';
	SELECT 'dbr.report', 'sp_DBR_demo_continent', 'inContinent=1';
	SELECT 'dbr.sum', 'pop', 'ccnt';

	SELECT Continent, 
			SUM(Population) AS 'Population[pop]', 
			COUNT(Code) AS 'Number of Countries[ccnt]'
	FROM demo_country
	GROUP BY Continent;

	 

	-- 2. Surface area chart of the all continents 
	SELECT 'dbr.chart', 'Pie', 'Surface Area';
	SELECT 'dbr.report', 'sp_DBR_demo_continent', 'inContinent=Continent';
	SELECT 'dbr.keepwithnext';

	SELECT Continent, CAST( SUM( SurfaceArea ) AS UNSIGNED ) AS 'Surface Area' 
	FROM demo_country 
	GROUP BY Continent 
	ORDER BY 2 DESC;


		
	-- 3. population chart of the all continents 
	SELECT 'dbr.chart', 'Bar', 'Population';
	select 'dbr.chart.options', 'numberSuffix', ' M';
	SELECT 'dbr.report', 'sp_DBR_demo_continent', 'inContinent=Continent';

	SELECT Continent, SUM( Population ) / 1000000 AS 'Population' 
	FROM demo_country 
	GROUP BY Continent 
	ORDER BY 2 DESC;

	call sp_demo_source( 'sp_DBR_demo_continents' );
END
$$


DROP PROCEDURE IF EXISTS sp_DBR_demo_continent
$$
CREATE PROCEDURE sp_DBR_demo_continent( inContinent varchar(20) )
BEGIN
	SELECT 'dbr.title', inContinent; 

	-- 1. Summary of inContinent
	SELECT 'dbr.subtitle', 'Facts & Figures'; 
	SELECT 'dbr.keepwithnext';
	SELECT 'dbr.pageview';

	SELECT Continent, 
			SUM( Population ) as 'Population', 
			COUNT( Code ) AS 'Number of Countries', 
			AVG( Population ) AS 'Average population per Country',
			CAST( SUM( SurfaceArea ) AS UNSIGNED ) AS 'Surface Area'
	FROM demo_country
	WHERE Continent = inContinent
	GROUP BY Continent;


	-- 2. Country list of inContinent
	SELECT 'dbr.subtitle', 'List of countries';
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';
	SELECT 'dbr.sum', 'pop','area';

	SELECT  Name, 
			Code, 
			Population as 'Population[pop]', 
			cast( SurfaceArea as unsigned ) AS 'Surface Area[area]' 
	FROM demo_country 
	WHERE Continent = inContinent 
	ORDER BY Name;


	
	-- 3. Chart of biggest population in inContinent
	SELECT 'dbr.title', 'Population';
	SELECT 'dbr.chart', 'Bar', CONCAT( 'Biggest population in ', inContinent) ;
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';
	SELECT 'dbr.keepwithnext';

	SELECT Name, Population, Code
	FROM demo_country
	WHERE Continent = inContinent 
	ORDER BY population DESC LIMIT 8;


	
	-- 4. Chart of smallest population in inContinent
	SELECT 'dbr.chart', 'Bar', CONCAT( 'Smallest population in ', inContinent) ;
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';

	SELECT Name, Population, Code
	FROM demo_country
	WHERE Continent = inContinent 
	ORDER BY population LIMIT 8;


	
	-- 5. Chart of Largest surface area in inContinent
	SELECT 'dbr.title', 'Surface area';
	SELECT 'dbr.chart', 'Pie', CONCAT( 'Largest surface area in ', inContinent);
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';
	SELECT 'dbr.keepwithnext';

	SELECT Name, SurfaceArea AS 'Surface Area', Code
	FROM demo_country
	WHERE Continent = inContinent 
	ORDER BY SurfaceArea DESC LIMIT 8;


	
	-- 6. Chart of Smallest surface area in inContinent
	SELECT 'dbr.chart', 'Pie', CONCAT( 'Smallest surface area in ', inContinent);
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';

	SELECT Name, SurfaceArea AS 'Surface Area', Code
	FROM demo_country
	WHERE Continent = inContinent 
	ORDER BY SurfaceArea LIMIT 8;
	call sp_demo_source( 'sp_DBR_demo_continent' );
END
$$

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_DBR_demo_countries
$$
CREATE PROCEDURE sp_DBR_demo_countries()
BEGIN
	
	-- 1. List of big countries
	SELECT 'dbr.subtitle', '10 Biggest Countries';
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';
	SELECT 'dbr.sum', 'pop'; 
	SELECT 'dbr.keepwithnext';

	SELECT Name, Code AS 'Country Code[Code]', Continent, Population as 'Population[pop]'
	FROM demo_country 
	ORDER BY Population DESC
	LIMIT 10;

	-- 2. List of small countries
	SELECT 'dbr.subtitle', '10 Smallest Countries';
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=Code';
	SELECT 'dbr.sum', 'pop'; 
	SELECT 'dbr.keepwithnext';

	SELECT Name, Code AS 'Country Code[Code]', Continent, Population  as 'Population[pop]'
	FROM demo_country 
	WHERE Population>0
	ORDER BY Population ASC
	LIMIT 10;
	
	-- 3. List of all countries
	SELECT 'dbr.title', 'Countries';
	
	SELECT 'dbr.subtitle', 'All Countries';
	SELECT 'dbr.report', 'sp_DBR_demo_country', 'inCode=code';
	SELECT 'dbr.hdr', 'Continent';
	SELECT 'dbr.sum', 'Population'; 
	SELECT 'dbr.count', 'Name';
	SELECT 'dbr.summarytxt', 'code', 'Total';
	SELECT 'dbr.nosort';
	SELECT 'dbr.keepwithnext';

	SELECT Continent, Name, Code AS 'Country Code[code]', Population
	FROM demo_country 
	ORDER BY Continent, Name;
	call sp_demo_source( 'sp_DBR_demo_countries' );
END
$$

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_DBR_demo_country
$$
CREATE PROCEDURE sp_DBR_demo_country( inCode varchar(10) )
begin

	-- for storing inCode country name
	DECLARE vCountry_name VARCHAR(20);
	-- for storing vDistrict_count of inCode country
	DECLARE vDistrict_count INT;
	-- for storing the total population of the all other disctricts of inCode Country
	DECLARE vRest_total INT; 

	-- store country name of inCode to vCountry_name variable
	SELECT Name INTO vCountry_name 
	FROM demo_country 
	WHERE Code = inCode;


	-- 1. Details of inCode country
	SELECT 'dbr.title', CONCAT( vCountry_name, ' Details');


	SELECT 'dbr.subtitle', 'Facts & Figures';
    SELECT 'dbr.pageview';
    SELECT 'dbr.keepwithnext';

	SELECT  Name, 
			Code AS 'Country code', 
			Continent, 
			Region, 
			SurfaceArea AS 'Surface Area', 
			IndepYear AS 'Independent Year', 
			Population, 
			LifeExpectancy AS 'Life Expectancy', 
			GNP AS 'Gross national product', 
			LocalName AS 'Local name', 
			GovernmentForm AS 'Gevernment form', 
			HeadOfState AS 'Head of state' 
	FROM demo_country 
	WHERE Code = inCode 
	ORDER BY Name;

	
	-- 2. Show cities location in google maps
	SELECT 'dbr.googlemaps', 'address', CONCAT( 'Biggest cities in ', vCountry_name), 400, 400;
	
	SELECT  CONCAT( c.Name, ', ' , vCountry_name ), 
			CONCAT( c.Name, ', ', vCountry_name, '<br> Population: ', c.Population ),
			if ( c.ID = o.Capital, 'green-dot', '' )
	FROM demo_city c, demo_country o
	WHERE c.CountryCode = inCode and c.CountryCode=o.Code
	ORDER BY c.population DESC LIMIT 8;

	select 'dbr.title', CONCAT('Cities & Districts in ', vCountry_name);
	
	
	-- 3. Biggest cities chart 
	SELECT 'dbr.chart', 'Bar', CONCAT( 'Biggest cities in ', vCountry_name) ;
	SELECT 'dbr.report', 'sp_DBR_demo_city', 'inCity=Name';
	SELECT 'dbr.keepwithnext';

	SELECT Name, Population
	FROM demo_city 
	WHERE CountryCode = inCode 
	ORDER BY population DESC LIMIT 8;



	-- 4. Chart of district population of country inCode 
	-- List only 8 biggest population districts and put all other districts in the Rest
	
	-- Create temporary table to store top 8 population districts
	DROP TEMPORARY TABLE IF EXISTS largest_districts_tmp;
	CREATE TEMPORARY TABLE largest_districts_tmp (District char(20), Population int);
	
	insert into largest_districts_tmp
		SELECT District, SUM( Population ) as 'Population'
		FROM demo_city 
		WHERE CountryCode = inCode 
		GROUP BY District
		ORDER BY population DESC
		LIMIT 8;

	-- store the number of districts of inCode country
	SELECT COUNT( distinct District ) INTO vDistrict_count FROM demo_city WHERE CountryCode = inCode;
	IF ( vDistrict_count > 8 ) THEN
		SELECT SUM( Population ) INTO vRest_total 
		FROM demo_city 
		WHERE CountryCode = inCode AND District NOT IN ( 
			SELECT District 
			FROM largest_districts_tmp 
		);
		INSERT INTO largest_districts_tmp ( District, Population ) VALUES ( 'Rest',  vRest_total );
	END IF;

	SELECT 'dbr.chart', 'Pie', CONCAT( 'Population in ', vCountry_name );

	SELECT District, Population FROM largest_districts_tmp;
	DROP TEMPORARY TABLE IF EXISTS largest_districts_tmp;
	


	-- 5. List all the cities of inCode country 
	SELECT 'dbr.title', CONCAT( 'Cities of ', vCountry_name );
	SELECT 'dbr.report', 'sp_DBR_demo_city', 'inCity=Name';
	SELECT 'dbr.count', 'Name';
	SELECT 'dbr.sum', 'Population'; 

	SELECT Name, District, Population
	FROM demo_city 
	WHERE CountryCode = inCode 
	ORDER BY population DESC;
	call sp_demo_source( 'sp_DBR_demo_country' );
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_city
$$
CREATE PROCEDURE sp_DBR_demo_city( inCity varchar(50) )
BEGIN

	-- check if city exists ( name can come from autocomplete )
	DECLARE valid INT;
	
	SELECT COUNT(*) INTO valid
	FROM demo_city city
	WHERE city.Name = inCity;

	SELECT 'dbr.title', CONCAT( 'Details of ', inCity );
	SELECT 'dbr.pageview';
	
	IF valid = 0 THEN
		SELECT 'dbr.hideheader';
		SELECT CONCAT( 'City ', inCity, ' could not be found' );
	ELSE
		-- 1. Details of city (pageview)
		SELECT 'dbr.subtitle', 'Facts & Figures';
		
		SELECT city.Name AS 'City name', 
				city.District AS 'District',  
				city.Population AS 'City Population', 
				country.Name AS 'Country', 
				country.Population AS 'Country Population'
		FROM demo_city city, demo_country country 
		WHERE city.CountryCode = country.Code and city.Name = inCity;


	
		-- 2. Show city location in the google maps with some details
		SELECT 'dbr.googlemaps', 'address', inCity;

		SELECT CONCAT( city.Name, ', ' , country.Name ), 
			    CONCAT( '<b>', city.Name, ', ', country.Name, '</b><br><br>', 
						'Population in ', city.Name, ': ', city.Population, '<br>',
						'District: ', city.District )
		FROM demo_city city, demo_country country
		WHERE city.CountryCode = country.Code AND city.Name = inCity;
	END IF;

	call sp_demo_source( 'sp_DBR_demo_city' );
END
$$




/*
	Gets lists of cities which name is like parameter param value
	This stored procedure is used by autocomplete feature
	defined in Admin->Parameter queries view
*/
DROP PROCEDURE IF EXISTS sp_demo_autocomplete_cities
$$
CREATE PROCEDURE sp_demo_autocomplete_cities( inParam varchar(50) )
BEGIN

	SELECT city.Name, country.Name 
	FROM demo_city city, demo_country country 
	WHERE city.CountryCode = country.Code and city.Name like CONCAT( '%', inParam, '%' )
	ORDER BY city.name;

end
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_crosstab
$$
CREATE PROCEDURE sp_DBR_demo_crosstab()
BEGIN
	SELECT 'dbr.text', "Demonstrating cross tabulation with colum and row totals.", 'comment';
	SELECT 'dbr.crosstab', 'Quarter'; 
	SELECT 'dbr.sum', 'Items';
	SELECT 'dbr.min', 'Weight';
	SELECT 'dbr.count', 'Name';
	SELECT 'dbr.hsum', 'Items';
	SELECT 'dbr.hmin', 'Weight';

	SELECT  Name, 
			CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate)) as 'Quarter', 
			SUM(Items) as 'Items',
			SUM(Weight) as 'Weight'
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, CONCAT(YEAR(InsertDate), ' Q', QUARTER(InsertDate))
	ORDER BY Name;

	call sp_demo_source('sp_DBR_demo_crosstab');
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_subtotals
$$
CREATE PROCEDURE sp_DBR_demo_subtotals()
BEGIN
	SELECT 'dbr.title', 'Subtotal caluclation is done automatically based on the summary column(s)';
	SELECT 'dbr.nosort', 0; 
	SELECT 'dbr.hdr', 'Year';     
	SELECT 'dbr.sum', 'Items', 'Weight';
	SELECT 'dbr.max', 'Weight';
	SELECT 'dbr.count', 'Year';
	
	SELECT  YEAR(InsertDate) as 'Year', 
			Name, 
			SUM(Items) as 'Items', 
			SUM(Weight)  as 'Weight'
	FROM demo_production
	GROUP BY YEAR(InsertDate), Name
	ORDER BY YEAR(InsertDate), Name;

	call sp_demo_source('sp_DBR_demo_subtotals');
END
$$


DROP PROCEDURE IF EXISTS sp_DBR_demo_chart_examples
$$
CREATE PROCEDURE `sp_DBR_demo_chart_examples`()
begin
	SELECT 'dbr.title', 'myDBR Chart examples';

	SELECT 'dbr.chart', 'Column', '2D Column';
	SELECT 'dbr.chart.options', 'rotateNames', 90;
	SELECT 'dbr.keepwithnext';

	SELECT Name, SUM(Items)
	FROM demo_production
	GROUP BY Name;


	SELECT 'dbr.chart', 'Column3D', '3D Column';
	
	SELECT Name, SUM(Items)
	FROM demo_production
	GROUP BY Name;


	SELECT 'dbr.chart', 'MScolumn', 'Multi Series 2D Column';
	SELECT 'dbr.keepwithnext';
	
	SELECT Name,
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'MScolumn3D', 'Multi Series 3D Column';
	
	SELECT  Name,
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'Line', 'Line';
	SELECT 'dbr.keepwithnext';
	
	SELECT CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate)) as 'Quarter', SUM(Items)
	FROM demo_production
	GROUP BY CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate));


	SELECT 'dbr.chart', 'Line3D', '3D line';
	
	SELECT  CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate)) as 'Quarter', 
			SUM(Items)
	FROM demo_production
	GROUP BY CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate));


	SELECT 'dbr.chart', 'Spline', 'Spline';
	SELECT 'dbr.keepwithnext';
	
	SELECT CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate)) as 'Quarter', SUM(Items)
	FROM demo_production
	GROUP BY CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate));


	SELECT 'dbr.chart', 'MSLine', 'Multi Series Line';
	SELECT 'dbr.chart.options', 'chart_transpose';
	
	SELECT Name,
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'Pie', '2D Pie';
	SELECT 'dbr.chart.options', 'numberSuffix', ' kg';
	SELECT 'dbr.keepwithnext';
	
	SELECT Name, SUM(Items)
	FROM demo_production
	GROUP BY Name;


	SELECT 'dbr.chart', 'Pie3D', '3D Pie';
	SELECT 'dbr.chart.options', 'numberSuffix', ' kg';
	
	SELECT Name, SUM(Items)
	FROM demo_production
	GROUP BY Name;

	SELECT 'dbr.chart', 'Bar', '2D Bar';
	SELECT 'dbr.keepwithnext';
	
	SELECT  CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate), '     ') as 'Quarter', 
			SUM(Items)
	FROM demo_production
	GROUP BY CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate), '     ');


	SELECT 'dbr.chart', 'MSBar', 'Multi Series 2D Bar';
	SELECT 'dbr.chart.options', 'chart_transpose';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'Area', '2D Area';
	SELECT 'dbr.keepwithnext';
	
	SELECT  CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate)) as 'Quarter', 
			SUM(Items) as 'Items'
	FROM demo_production
	GROUP BY CONCAT(YEAR(InsertDate), ' Q',QUARTER(InsertDate));


	SELECT 'dbr.chart', 'MSArea', 'Multi Series 2D Area';
	SELECT 'dbr.chart.options', 'chart_transpose';
	
	SELECT Name,
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'MSColumnLineDY', 'Multi Series 2D LineDY';
	SELECT 'dbr.keepwithnext';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'MSColumnLineDY3D', 'Multi Series 3D LineDY';
	SELECT 'dbr.chart.options', 'SYAxisMaxValue', '160';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'StackedColumn', '2D Stacked Column';
	SELECT 'dbr.keepwithnext';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'StackedColumn3D', '3D Stacked Column';
	SELECT 'dbr.chart.options', 'chart_transpose';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'StackedBar', '2D Stacked Bar';
	SELECT 'dbr.keepwithnext';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'StackedArea', '2D Stacked Area';
	SELECT 'dbr.chart.options', 'chart_transpose';
	
	SELECT Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008
	GROUP BY Name, 2;


	SELECT 'dbr.keepwithnext';
	SELECT 'dbr.chart', 'meter', 'Meter', 400, 350,
		120 as 'radius',
		175 as 'yCenter',
		-135 as 'Start angle',
		135 as 'End angle', 
		60  as 'green',
		130 as 'yellow',
		200 as 'red';
	SELECT 	90  as 'value';
	
	SELECT 'dbr.chart.options', 'imagechart';
	SELECT 'dbr.chart', 'meter', 'Meter', 600 as 'x', 220 as 'y', 160 as 'radius', 
		200 as 'yCenter',
		-90 as 'Start angle',
		90 as 'End angle', 
		30  as 'green',
		70 as 'yellow',
		100 as 'red';
	SELECT 	78;


	SELECT 'dbr.chart', 'Doughnut', '2D Doughnut';
	SELECT 'dbr.keepwithnext';
	
	SELECT Name, SUM(Items)
	FROM demo_production
	GROUP BY Name;


	SELECT 'dbr.chart', 'Doughnut3D', '3D Doughnut';
	
	SELECT Name, SUM(Items)
	FROM demo_production
	GROUP BY Name;

	call sp_demo_source('sp_DBR_demo_chart_examples');
end
$$


DROP PROCEDURE IF EXISTS sp_DBR_demo_chart_transpose
$$
CREATE PROCEDURE `sp_DBR_demo_chart_transpose`()
BEGIN
	SELECT 'dbr.title', 'With chart transposing you can easily swap legend with x-axis';
	SELECT 'dbr.chart', 'MSColumn', 'Basic chart';
	SELECT  Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008 and Name<='Detac'
	GROUP BY Name, 2;


	SELECT 'dbr.chart', 'MSColumn', 'Same chart with transpose';
	SELECT 'dbr.chart.options', 'chart_transpose';
	SELECT  Name, 
	       concat('Q', QUARTER(InsertDate)),
	       sum(Items)
	FROM demo_production
	WHERE YEAR(InsertDate)=2008 and Name<='Detac'
	GROUP BY Name, 2;

	call sp_demo_source('sp_DBR_demo_chart_transpose');
END
$$


DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_smartphone
$$
CREATE PROCEDURE sp_DBR_demo_gv_smartphone(inYear int )
BEGIN
	DECLARE vOS VARCHAR(250);
	DECLARE vUI VARCHAR(250);
	DECLARE vOEM VARCHAR(250);
	DECLARE vCluster VARCHAR(250);
	DECLARE vFont VARCHAR(30);

	SET vFont = 'fontname="Arial",fontsize=9,';
	-- Setting style for individual elements using dot-language
	SELECT CONCAT(vFont, 'shape=box,fillcolor=#CCCCFF,style=filled,href=""') into vOS;
	SELECT CONCAT(vFont, 'shape=box,fillcolor=green,style=filled') into vUI;
	SELECT CONCAT(vFont, 'shape=box,fillcolor=red,style="rounded,filled"') into vOEM;
	SELECT CONCAT(vFont, 'fontcolor=black,style=filled,fillcolor=grey') into vCluster;

	SELECT 'dbr.title', CONCAT('Smartphone vendors and technology ', inYear);
	SELECT 'dbr.chart', 'hierarchy';
	SELECT 'dbr.chart.gv.style', 'graph', 'rankdir=TB,splines=true,ranksep=1.0';
	SELECT 'dbr.chart.gv.style', 'node', vOEM;
	SELECT 'dbr.chart.gv.style', 'edge', 'color=black';
	SELECT 'dbr.chart.gv.style', 'cluster', vCluster;

	-- Describe OEM clusters
	SELECT 'dbr.chart.gv.node', oem, oem, vOEM, cluster
	FROM demo_oem_cluster
	WHERE year=inYear;


	-- Describe SW-demo_platform clusters
	SELECT 'dbr.chart.gv.node', platform, platform, vOS, cluster
	FROM demo_platform_cluster
	WHERE year=inYear ;


	-- Describe SW-demo_platforms
	SELECT 'dbr.chart.gv.node', name, name, vOS
	FROM demo_platform
	WHERE name in (
		select platform
		from demo_oem_platform
		where year=inYear
	);


	-- Describe technology used
	SELECT 'dbr.chart.gv.node', name, name, vUI
	FROM demo_tech;

	-- OEM clusters
	SELECT distinct 'dbr.chart.gv.cluster', cluster, cluster
	FROM demo_oem_cluster
	WHERE year=inYear ;

	-- demo_platform clusters
	SELECT distinct 'dbr.chart.gv.cluster', cluster, cluster
	FROM demo_platform_cluster
	WHERE year=inYear ;

	-- And the actual data
	SELECT oem, platform
	FROM demo_oem_platform
	WHERE year=inYear
	UNION
	SELECT platform, tech
	FROM demo_platform_tech
	WHERE inYear=ifnull(year, inYear) and platform in (
		select platform
		from demo_oem_platform
		where year=inYear
	);

	call sp_demo_source('sp_DBR_demo_gv_smartphone');
END
$$


DROP PROCEDURE IF EXISTS sp_DBR_demo_pictures
$$
CREATE PROCEDURE sp_DBR_demo_pictures()
BEGIN
	SELECT 'dbr.title', 'Embedding pictures within query';
	SELECT 'Part 1' as 'Part name', 'WDC-2345-1' as 'Code', 'dbr.purehtml:<img src="install/db_creation/WDC-2345-1.jpg">' as 'Preview'
	UNION
	SELECT 'Part 2', 'WDC-2345-2', 'dbr.purehtml:<img src="install/db_creation/WDC-2345-2.jpg">'
	UNION
	SELECT 'Part 3', 'WDC-2345-3', 'dbr.purehtml:<img src="install/db_creation/WDC-2345-3.jpg">';

	call sp_demo_source( 'sp_DBR_demo_pictures' );
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_objects
$$
CREATE PROCEDURE sp_DBR_demo_objects()
BEGIN
	SELECT 'dbr.title', 'Embedding YouTube video';

	-- Direct URL from YouTube
	SELECT 'dbr.purehtml', '<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/BwNrmYRiX_o&hl=en&fs=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/BwNrmYRiX_o&hl=en&fs=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object>';

	call sp_demo_source('sp_DBR_demo_objects');
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_googlemaps_paris1
$$
CREATE PROCEDURE sp_DBR_demo_googlemaps_paris1()
BEGIN

	SELECT 'dbr.googlemaps', 'address', 'French sightseeing', 400, 400;

	/* select the search address an the Google Maps bubble text */

	SELECT 'la Tour Eiffel', 'la Tour Eiffel'
	UNION
	SELECT 'Musee du Louvre', 'Musee du Louvre';

	call sp_demo_source('sp_DBR_demo_googlemaps_paris1');

END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_googlemaps_paris
$$
CREATE PROCEDURE sp_DBR_demo_googlemaps_paris()
BEGIN

	SELECT 'dbr.googlemaps', 'address', 'French sightseeing', 400, 400;

	SELECT 'la Tour Eiffel', 'la Tour Eiffel', 'http://maps.google.com/mapfiles/ms/micons/cabs.png::32::32'
	UNION
	SELECT 'Musee du Louvre', 'Musee du Louvre', 'http://www.louvre.fr/media/repository/ressources/sources/illustration/autres/x58image_121089_v2_m56577569831191319.jpg::58::51';

	call sp_demo_source('sp_DBR_demo_googlemaps_paris');

END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_simple
$$
CREATE PROCEDURE sp_DBR_demo_gv_simple()
BEGIN
	SELECT 'dbr.text', "Graphviz graph generated with single query. Click the arrow to see the generated dot sourcecode.", 'comment';
	SELECT 'dbr.chart', 'hierarchy';

	SELECT main, sub
	FROM demo_corporate;
	
	call sp_demo_source('sp_DBR_demo_gv_simple');
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_options
$$
CREATE PROCEDURE sp_DBR_demo_gv_options()
BEGIN
	SELECT 'dbr.chart', 'Hierarchy', 'Direction Left-To-Right and not to use splines';
	SELECT 'dbr.chart.gv.style', 'graph', 'rankdir=LR,splines=false';
	SELECT 'dbr.chart.gv.style', 'node', 'fontname="Arial",fontsize=10';

	SELECT main, sub
	FROM demo_corporate;

	call sp_demo_source('sp_DBR_demo_gv_options');
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_formatting
$$
CREATE PROCEDURE sp_DBR_demo_gv_formatting()
BEGIN
	SELECT 'dbr.chart', 'Hierarchy';
	SELECT 'dbr.chart.gv.style', 'node', 'shape=box,fillcolor=#CCCCFF,style=filled,fontname="Arial",fontsize=9';
	SELECT 'dbr.chart.gv.node', 'Sales', 'Sales', 'fillcolor=red,fontcolor=white,style=filled';
	SELECT 'dbr.chart.gv.node', 'Production', 'Production', 'fillcolor=red,fontcolor=white,style=filled';

	SELECT main, sub
	FROM demo_corporate;

	call sp_demo_source('sp_DBR_demo_gv_formatting');
END
$$

DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_edge
$$
CREATE PROCEDURE sp_DBR_demo_gv_edge()
BEGIN
	SELECT 'dbr.chart', 'Hierarchy';
	SELECT 'dbr.chart.gv.style', 'node', 'fontname="Arial",fontsize=10';

	SELECT main, sub, IF (sub='Sales', 'fontcolor=red,color=red,arrowhead=empty,label="Red edge"', '')
	FROM demo_corporate;

	call sp_demo_source('sp_DBR_demo_gv_edge');
END
$$


DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_cluster
$$
CREATE PROCEDURE sp_DBR_demo_gv_cluster()
BEGIN
	SELECT 'dbr.chart', 'Hierarchy';
	SELECT 'dbr.chart.gv.style', 'node', 'shape=box,fillcolor=#CCCCFF,style=filled,fontname="Arial",fontsize=9';
	SELECT 'dbr.chart.gv.node', 'Sales', 'Sales', 'fillcolor=red,fontcolor=white,style=filled', 1;
	SELECT 'dbr.chart.gv.node', 'Production', 'Production', 'fillcolor=red,fontcolor=white,style=filled', 1;
	SELECT 'dbr.chart.gv.cluster', 1, 'Organization', 'style=filled,fillcolor=lightgrey,labelloc=b,fontsize=12';

	SELECT main, sub
	FROM demo_corporate;

	call sp_demo_source('sp_DBR_demo_gv_cluster');
END
$$



DROP PROCEDURE IF EXISTS sp_DBR_demo_gv_molecule
$$
CREATE PROCEDURE sp_DBR_demo_gv_molecule(
inEngine VARCHAR(20)
)
BEGIN
	SELECT 'dbr.chart', 'network', '', 400, 400;
	SELECT 'dbr.chart.gv.engine', inEngine;

	SELECT 'dbr.chart.gv.node', id, null, CONCAT('shape=octagon,style=filled,fillcolor=', color)
	FROM demo_atom;

	SELECT id_1, id_2
	FROM demo_molecule;

	call sp_demo_source('sp_DBR_demo_gv_molecule');
END
$$

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_DBR_demo_show_source$$
CREATE PROCEDURE sp_DBR_demo_show_source( inProcName VARCHAR(60) )
begin
	SELECT 'dbr.title', concat('Source code for report "',  name, '"')
		FROM mydbr_reports
		WHERE proc_name=inProcName;

	select 'dbr.showsource';

	select inProcName;
end
$$

DROP PROCEDURE IF EXISTS sp_demo_source$$
CREATE PROCEDURE sp_demo_source( inProcName VARCHAR(60))
begin
	select 'dbr.button', 'Show how this report is done';
	select 'dbr.report', 'sp_DBR_demo_show_source', 'inProcName=1';
	select inProcName;
end
$$



DELIMITER ;

INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -1, 1, 'Demo', 0 );
INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -2, -1, 'Feature tour', 0 );
INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -3, -2, 'Basic features', 0 );
INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -4, -2, 'Charts', 0 );
INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -5, -2, 'External objects', 0 );
INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -6, -2, 'Google Maps', 0 );
INSERT IGNORE INTO mydbr_folders (folder_id, mother_id, name, invisible) values ( -7, -2, 'Graphviz examples', 0 );


CALL sp_MyDBR_ReportNew( -1, 'All Continents', 'sp_DBR_demo_continents', 'Show all continents', 1, 0, null );
CALL sp_MyDBR_ReportNew( -1, 'All Countries', 'sp_DBR_demo_countries', 'Show countries by continent', 1, 0, null );
CALL sp_MyDBR_ReportNew( -1, 'Continent Details', 'sp_DBR_demo_continent', 'Show information of selected continent', 1, 0, null );
CALL sp_MyDBR_ReportNew( -1, 'Country Details' , 'sp_DBR_demo_country', 'Show information of selected country', 1, 0, null );
CALL sp_MyDBR_ReportNew( -1, 'City Details' , 'sp_DBR_demo_city', 'Show information of selected city', 1, 0, null );
CALL sp_MyDBR_ReportNew( -1, 'Source code' , 'sp_DBR_demo_show_source', 'Show source code for demo reports', 1, 0, null );
CALL sp_MyDBR_ReportNew( -3, 'Cross tabulation', 'sp_DBR_demo_crosstab', 'Basic cross tabulation report with horizontal summaries', 1, 0, null );
CALL sp_MyDBR_ReportNew( -3, 'Subtotals', 'sp_DBR_demo_subtotals', 'Subtotals calculate summary rows for defined subsets', 1, 0, null );
CALL sp_MyDBR_ReportNew( -4, 'Chart examples', 'sp_DBR_demo_chart_examples', 'Shows sample of chart types supported', 1, 0, null );
CALL sp_MyDBR_ReportNew( -4, 'Chart transposing', 'sp_DBR_demo_chart_transpose', 'Show how you can easily transpose a chart', 1, 0, null );
CALL sp_MyDBR_ReportNew( -5, 'External objects: example pictures', 'sp_DBR_demo_pictures', 'How to embed external pictures to reports', 1, 0, null );
CALL sp_MyDBR_ReportNew( -5, 'External objects: misc object', 'sp_DBR_demo_objects', 'How to embed a misc object (a YouTube video) to the report', 1, 0, null );
CALL sp_MyDBR_ReportNew( -6, 'A sample Google Maps mashup', 'sp_DBR_demo_googlemaps_paris1', 'Paris sightseeing', 1, 0, null );
CALL sp_MyDBR_ReportNew( -6, 'Google Maps with images', 'sp_DBR_demo_googlemaps_paris', 'Paris sightseeing with images', 1, 0, null );
CALL sp_MyDBR_ReportNew( -7, '1. A simple graph', 'sp_DBR_demo_gv_simple', 'Example of a simple graph', 1, 1, null );
CALL sp_MyDBR_ReportNew( -7, '2. Graph options', 'sp_DBR_demo_gv_options', 'Passing options to graph', 1, 2, null );
CALL sp_MyDBR_ReportNew( -7, '3. Node formatting', 'sp_DBR_demo_gv_formatting', 'Formatting nodes: all and individual', 1, 3, null );
CALL sp_MyDBR_ReportNew( -7, '4. Edges', 'sp_DBR_demo_gv_edge', 'Shows how to define edges between nodes', 1, 4, null );
CALL sp_MyDBR_ReportNew( -7, '5. Clusters', 'sp_DBR_demo_gv_cluster', 'How to use clusters', 1, 5, null );
CALL sp_MyDBR_ReportNew( -7, '6. Layout engine selection', 'sp_DBR_demo_gv_molecule', 'Define the layout engine used', 1, 6, null );
CALL sp_MyDBR_ReportNew( -7, '7. Smartphone tech/business scenarios', 'sp_DBR_demo_gv_smartphone', 'Complex chart: Formatting of multiple elements', 1, 7, null );

-- add continents radiobuttons
CALL sp_MyDBR_ParamQueryAdd( 'demo_get_continents', 'select distinct Continent, Continent from demo_country order by Continent', 1, null);
CALL sp_MyDBR_ParamSet('sp_DBR_demo_continent','inContinent', 'demo_get_continents', 'Continent',null,0,0, null, '{}');

-- add source code selections popup
CALL sp_MyDBR_ParamQueryAdd( 'demo_get_demo_procedures', 
						      'select distinct proc_name, name from mydbr_reports where proc_name like ''sp_DBR_demo%'' order by Name', 0, null);
CALL sp_MyDBR_ParamSet('sp_DBR_demo_show_source','inProcName','demo_get_demo_procedures','Report',null,0,0, null, '{}');


-- add get cities autocomplete procedure
CALL sp_MyDBR_ParamQueryAdd( 'demo_get_cities', 'sp_demo_autocomplete_cities', 2, null);
CALL sp_MyDBR_ParamSet('sp_DBR_demo_city','inCity','demo_get_cities','City',null,0,0, null, '{}');

CALL sp_MyDBR_ReportExtAdd('sp_DBR_demo_country','googlemaps');
CALL sp_MyDBR_ReportExtAdd('sp_DBR_demo_city','googlemaps');
CALL sp_MyDBR_ReportExtAdd('sp_DBR_demo_googlemaps_paris1','googlemaps');
CALL sp_MyDBR_ReportExtAdd('sp_DBR_demo_googlemaps_paris','googlemaps');
CALL sp_MyDBR_ReportExtAdd('sp_DBR_demo_show_source','syntaxhighlighter');

CALL sp_MyDBR_ParamQueryAdd( 'demo_get_countries', 'select distinct Code, Name from demo_country order by Name', 0, null);
CALL sp_MyDBR_ParamSet('sp_DBR_demo_country','inCode','demo_get_countries','Country',null,0,0, null, '{}');

CALL sp_MyDBR_ParamQueryAdd('demo_scenario', 'select 2008, 2008 union select 2011, 2011', 0, null);
CALL sp_MyDBR_ParamSet('sp_DBR_demo_gv_smartphone','inYear','demo_scenario','Scenario',null,0,0, null, '{}');

CALL sp_MyDBR_ParamQueryAdd('demo_gv_engine', "select 'dot', 'dot' union select 'neato', 'neato' union select 'fdp', 'fdp' union select 'dot', 'dot' union select 'twopi', 'twopi' union select 'circo', 'circo'", 0, null);
CALL sp_MyDBR_ParamSet('sp_DBR_demo_gv_molecule','inEngine','demo_gv_engine','Layout engine',null,0,0, null, '{}');

-- make all demo reports public
insert into mydbr_reports_priv 
select report_id, 'PUBLIC', 0, 0 
from mydbr_reports r 
where r.proc_name IN (
	'sp_DBR_demo_continents', 
	'sp_DBR_demo_countries',
	'sp_DBR_demo_continent',     
	'sp_DBR_demo_country',     
	'sp_DBR_demo_city',       
	'sp_DBR_demo_show_source',
	'sp_DBR_demo_crosstab',
	'sp_DBR_demo_subtotals',     
	'sp_DBR_demo_chart_examples',
	'sp_DBR_demo_chart_transpose',
	'sp_DBR_demo_pictures',
	'sp_DBR_demo_objects',      
	'sp_DBR_demo_googlemaps_paris1',
	'sp_DBR_demo_googlemaps_paris',
	'sp_DBR_demo_gv_simple',
	'sp_DBR_demo_gv_options',     
	'sp_DBR_demo_gv_formatting',  
	'sp_DBR_demo_gv_edge', 
	'sp_DBR_demo_gv_cluster',     
	'sp_DBR_demo_gv_molecule',    
	'sp_DBR_demo_gv_smartphone' 
);

