-- Universidade do Minho
-- Mestrado Integrado em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 2015/2016

-- drop database belapadaria; 

-- DELETE FROM funcionarios;

USE `belapadaria` ;

-- SET SQL_SAFE_UPDATES = 0;

-- DELETE FROM produtos; 
INSERT INTO produtos 
(idProduto, nome, preco, duracao, stock)
VALUES 
(1, 'pão de milho', 3.2 , 1000, 200),
(idProduto,'bijou',0.2,1500,600),
(idProduto, 'cacete', 0.80, 1800, 630),
(idProduto, 'broa de centeio', 2.5, 1000, 310),
(idProduto, 'baguete',0.40, 1800, 500),
(idProduto, 'trigo', 0.10, 950, 1000),
(idProduto, 'pao de forma', 1.20, 1321, 100),
(idProduto, 'pão preto', 2.85, 2000, 150),
(idProduto, 'pao sirio',4.0, 1000, 320),
(idProduto, 'pão mistura', 2.4, 1800, 125),
(idProduto, 'croissants', 0.75, 2000, 46 ),
(idProduto, 'bolas de berlim',1.10, 1256, 65), 
(idProduto, 'muffin', 0.7, 1900, 23), 
(idProduto, 'bolo de arroz', 0.5, 1327, 13),
(idProduto, 'bolo brigadeiro', 1.20, 1658, 46),
(idProduto, 'panike', 0.8, 623, 100),
(idProduto, 'pão de ló de Ovar', 10.00, 2500, 50 ),
(idProduto, 'bolas integrais', 0.85, 2653, 210),
(idProduto, 'pão com chouriço', 1.00, 1856, 65),
(idProduto, 'pastel de nata', 1.00, 2100, 150),
(idProduto, 'tarte de morango', 6.00, 3215, 20),
(idProduto, 'tarte de amendoa', 7.00, 2500, 15); 
-- SELECT * FROM produtos; 


-- DELETE FROM clientes;
INSERT INTO clientes
(idCliente,nrCartaoCidadao,nome,
nrContribuinte,dataNascimento,codPostal,rua,concelho,telemovel,email)
VALUES
(1,14344154,'Célia Figueiredo', 262646080, '1994-05-21', '4755-128', 'Rua da Costa', 'Barcelos',933337717,'celianlf@hotmail.com'),
(idCliente,14256546,'Silvia Figueiredo', 262646170, '1990-08-01', '4755-128', 'Rua da Coutada', 'Barcelos',934885969,'silvialfg@hotmail.com'),
(idCliente,14513924,'Daniel Rodrigues', 243519145, '1994-01-31', '4830-274', 'Rua dos Condes', 'Povoa de Lanhoso',945434241,'danysuica@hotmail.com'),
(idCliente,14628648,'Patricia Barros', 252636450, '1994-02-24', '4970-129', 'Rua da Cachada', 'Arcos de Valdevez',934947881,'padb7@hotmail.com'),
(idCliente,14646469,'Márcia Costa', 246464646, '1994-01-21', '4710-416', 'Rua dos Peões','Braga',933337681,'mmcostinha@gmail.com'),
(idCliente,14425150,'Xavier Francisco', 258903384, '1994-11-10', '2495-183', 'Rua da Central', 'Leiria',912845563,'xavier.n.francisco@gmail.com'),
(idCliente,14256545,'Maria Linda', 562345089, '1989-12-25', '4755-117', 'Rua da Quintão', 'Barcelos',919568697, 'marialinda@hotmail.com'),
(idCliente,13142598,'Pedro Miguel', 232524089, '1994-06-06', '4890-123', 'Rua da Cortina', 'Guimarães',936575075,'celianlfg@hotmail.com'),
(idCliente, 65752855, 'Acacio Reino', 236896573, '1990-06-01','4789-456', 'Rua das Camélias', 'Braga', 936545623, 'acacioreino@gmail.com'),
(idCliente,41988997, 'Afonso Felipe', 255590195, '1978-06-16', '4659-489','Rua Doutor Fernando Santos', 'Braga', 919636489, 'afonsofilipe@hotmail.com'),
(idCliente,66813274, 'Aida Figueira', 234117754 , '1950-01-31', '4632-488','Rua Martins Sá', 'Guimarães', 969596989, 'aidafigueira@gmail.com'),
(idCliente, 21166885,'Alzira Branco',  212100348, '1965-02-05','4698-420', 'Rua das Manteigas', 'Povoa de Lanhoso', 919596638, 'alzbranco@gmail.com'),
(idCliente, 59289948, 'Amanda Collaço', 248562163, '1978-02-04', '4963-023', 'Rua do Areal', 'Braga', 936569638, 'amanda@gmail.com'),
(idCliente,  82069345, 'Araribóia Lages', 230799642, '1989-02-06','4652-365','Rua Principal', 'Ponte da Barca', 936598045, 'lages@gmail.com'),
(idCliente,  87303557 , 'Aurélio Alencar',  216271968, '1979-02-07', '4569-123', 'Rua Santa Clara', 'Braga', 919895941, 'aurelioalencar@hotmail.com'),
(idCliente, 77850320 , 'Barnabé Maia', 258732863 , '1965-05-05', '4658-046', 'Rua Carris', 'Ponte da Barca', 910023659, 'barnabe@gmail.com'),
(idCliente,  87234908, 'Camilo Castelo Branco', 254983529, '1957-09-06', '4986-056', 'Rua da Costa ', 'Ponte de Lima', 929695963, 'camilo@gmial.com'),
(idCliente, 75490443, 'Carmem Eiró', 211043896, '1968-09-06', '4755-118', 'Rua do computador', 'Ponte de Lima', 919796364, 'carmeneiro@gmail.com'),
(idCliente,  14906449, 'Cecília Moita', 225505091,'1945-06-06', '4755-136', 'Rua dos cornudos', 'Braga', 919895032, 'cecilia@gmial.com' ),
(idCliente,  73530459,'Celso Nieves',   238394802, '1978-07-07', '4769-123', 'Rua de Remelhe', 'Braga', 963126799, 'celsoneves@gmail.com'),
(idCliente, 55905558, 'Cecília Amorín', 228393850, '1946-05-05', '4754-145', 'Rua dos Olivais', 'Braga', 926364501, 'ceciliamoites@gmail.com'),
(idCliente, 70364642, 'Caím Barateiro', 245843773, '1976-05-06', '4659-145', 'Rua do Ramalhete', 'Vila Verde', 925468456, 'caimbarateiro@gmail.com' ),
(idCliente, 59193671, 'Brenda Eiró', 216255827,'1978-09-25','4758-118', 'Rua da Angola', 'Vila Verde', 923659874, 'brendaeiro@gmail.com'),
(idCliente, 17604812,'Berengária Capistrano', 244020132, '1980-03-26', '4632-089', 'Rua dos Congregados', 'Braga', 919362032, 'capistrano@gmail.com'),
(idCliente, 77563243 ,'Cleiton Dâmaso', 230040906,'1946-04-06','4789-063', 'Rua dos pimentos', 'Braga', 919666320, 'cleitondamaso@gmail.com'),
(idCliente, 59263645, 'Constança Bezerra', 219881747, '1989-09-09', '4569-230', 'Rua dos livros', 'Braga', 919632555, 'constanca@gmail.com'),
(idCliente, 64891283 , 'Cristiana Camelo', 249082277 , '1955-03-01', '4980-053', 'Rua da Fonte', 'Arcos de Valdevez', 963222032, 'cristianocamelo@gmail.com'),
(idCliente, 42690311,'Cândido Cordero', 225553173, '1946-06-04', '4986-012', 'Rua da Fiona', 'Braga', 912333650, 'cordero@gmail.com' ),
(idCliente, 38243651, 'Dinis Silveira dos Açores',  243459649 , '1963-06-06','4695-569', 'Travessa Cruz da Argola','Braga', 912365445, 'dinisacores@gmail.com'),
(idCliente, 48779571, 'Dorindo Bautista', 235346313, '1989-12-12', '4610-050', 'Rua do Montinho' , 'Guimarães', 932336520, 'dorindo@gmail.com'),
(idCliente, 21458549, 'Else Costa',  224673769, '1981-07-26', '4810-050', 'Rua José Faria Martins', 'Guimarães', 938971033, 'elsetintascompinta@hotmail.com'),
(idCliente, 63302315, 'Délio Valadares', 259684559, '1966-11-11', '4695-023', 'Rua Adamastor', 'Guimarães', 963126755, 'deliovaladares@gmail.com' ), 
(idCliente, 24630583 , 'Enia   Godinho', 240731124, '1967-12-15', '4932-563', 'Rua dos lafões', 'Vila Nova de Famalicão', 936333014, 'eniagod@hotmail.com' ),
(idCliente,  58402102,'Fausto Bezerril',  245911111 , '1965-05-24', '4965-365', 'Rua das Camélias', 'Braga', 931125563, 'faustobezerril@gmail.com' ), 
(idCliente,  29678505, 'Felisbela Barroqueiro0', 251677164, '1945-03-03', '4765-012', 'Travessa da igreja', 'Braga', 923666320, 'felisbelabar@gmail.com'),
(idCliente,  20737619 ,'Fernão Mesquita', 258487592 , '1940-09-15', '4978-026', 'Travessa dos mosqueteiros', 'Braga', 936363203, 'fernaomesq@gmail.com'),
(idCliente, 54660207,'Filipa Moita', 231508952 , '1949-03-06', '4965-001', 'Rua Camões', 'Braga', 933331236, 'filipamota@gmail.com'), 
(idCliente,  61590065 , 'Filomena Vicario', 228505066, '1976-10-05', '4755-129', 'Rua D.João IV', 'Porto', 919998632, 'filomenavica@gmail.com' ), 
(idCliente, 37447762 , 'Fulvio Álvarez', 212368844 , '1954-04-29', '4321-603', 'Rua Padre Henrique', 'Porto', 936569874, 'fulviolavarez@gmail.com'),
(idCliente,  74539809 , 'Fátima Quinzeiro', 237361232, '1973-10-23', '4895-236', 'Rua das Marias', 'Porto', 964456320, 'fatimaquinz@gmail.com'), 
(idCliente, 31543274, 'Gedeão Piteira',  223094652, '1968-08-08', '4769-961', 'Rua Milionário', 'Porto ', 912223650, 'gedeaopiteira@gmail.com'),
(idCliente, 53034102, 'Genoveva Ataíde', 215529801, '1978-09-06', '4956-025', 'Rua da Luz', 'Porto', 926565320, 'genovevaataide@gmail.com'),
(idCliente, 61953014 , 'Gertrudes Serralheiro', 226703667, '1975-06-03', '4563-029', 'Rua dos pneus', 'Porto', 912236603, 'gertrudesserral@gmail.com'),
(idCliente, 48819960 ,  'Gilberto Aragão', 248185990, '1989-07-08', '4569-147', 'Rua Gil Eanes', 'Porto', 932635632, 'gilbertoaragao@gmail.com'), 
(idCliente, 75892799,  'Gilberto Hidalgo',  249343033, '1959-09-28', '4956-110', 'Rua Vasco da Gama', 'Aveiro', 963332145, 'gilbertohidalgo@gmail.com'),
(idCliente, 28212437, 'Graça Lameiras', 249680555, '1978-10-11', '4112-456', 'Praceta Goa', 'Aveiro', 912366658, 'gracalameira@gmail.com'  ),
(idCliente, 40421771, 'Guaraci Henriques',  221772118, '1957-12-10','4756-012', 'Rua Guiné Bissau', 'Aveiro', 933365569, 'guaracihenr@gmail.com'),
(idCliente, 10258345, 'Guterre Nóbrega', 231098939, '1978-10-21', '3800-510', 'Rua da Liberdade','Aveiro',  912256302, 'guterresno@hotmail.com'  ), 
(idCliente, 85644722,  'Heloísa Barros', 243678919, '1981-02-24', '3845-520', 'Rua 1 de Maio', 'Póvoa de Varzim', 936632014, 'heloisabarros@gmail.com'), 
(idCliente, 62789072, 'Herculano Rosário', 26634814, '1967-06-08', '3846-456', 'Rua de milho', 'Póvoa de Varzim', 912256301, 'herculanorosa@gmail.com' ), 
(idCliente, 92883492 , 'Heriberto Vega', 247026870 , '1979-05-26', '3465-489', 'Rua dos Combatentes', 'Fafe', 919898638, 'heribertovega@hotmail.com'), 
(idCliente, 28459026 , 'Irene Cayubi', 256196917, '1970-05-13', '3956-102', 'Rua das Flores', 'Aveiro', 912365698, 'irenecay@gmail.com'), 
(idCliente, 31133069, 'Isaura Fraga',  216794139 , '1971-09-29', '3789-036', 'Rua dos Canteiros da Igreja', 'Porto', 936632220, 'isaurafraga@gmail.com'), 
(idCliente, 55387861 , 'Isilda Louzada',  220006450 , '1978-08-25', '4698-456','Rua das Camélias','Braga', 915569874, 'isildalos@hotmail.com' ),
(idCliente,  28066071, 'Jandira Fuentes', 238509303, '1979-09-06', '4956-113', 'Rua dos Campeões', 'Porto', 936523652, 'jandirafuentes@gmail.com'),
(idCliente, 86288833, 'Jonas Saltão', 214500324, '1972-10-30', '4980-005', 'Ruas das Catarinas', 'Porto', 963166320, 'jonasaltao@gmail.com'),
(idCliente,  29896435, 'João Murtinho',  214754691, '1979-10-10', '4896-123', 'Rua dos mosqueteiros', 'Porto', 936565230, 'joaomurtinho@gmial.com'),
(idCliente,  32089958, 'Jéssica Abasto',  230792216, '1980-10-06', '4979-125', 'Rua dos aquecedores', 'Porto', 912223547, 'jessicaabasto@gmail.com'),
(idCliente, 53165146, 'Levi Caiapó',  210508385, '1958-10-13', '4700-125', 'Rua dos sofás', 'Porto', 936656320, 'levicaia@gmail.com'), 
(idCliente, 86804958, 'Lina Bulhosa', 214973412, '1973-12-05', '4752-478', 'Rua da Boavista', 'Porto', 919696320, 'linabulhosa@gmial.com'),
(idCliente, 97588097,  'Luzia Barretto', 219322680, '1986-12-03', '4563-333', 'Rua da Silvia', 'Braga', 929696301, 'luziabarreto@gmail.com'),
(idCliente, 49686083, 'Luís Lamego',  209103457, '1962-01-03', '4963-160', 'Rua das televisões', 'Braga', 919596989, 'luislamego@hotmial.com'),
(idCliente, 57264248 , 'Léia Godoi', 218642117, '1974-05-27', '4698-456', 'Rua dos patetas', 'Porto', 919696324, 'leiagodi@gmail.com' ), 
(idCliente, 41363446, 'Lívia Beserril', 244078522, '1971-03-26', '4698-114', 'Rua Antonio Campos', 'Braga', 933365447, 'liviabase@gmail.com'),
(idCliente,  26081466, 'Marcelo Colaço', 230013263, '1995-10-06', '4750-63', 'Rua Martins de Sá', 'Barcelos', 934885620, 'marceloscolaco@gmail.com'),
(idCliente,  50091477, 'Marco Assis',  234882607, '1990-01-06', '4796-118' ,'Rua do Marcelo Marcelino', 'Barcelos', 936654102, 'marcoassis@hotmail.com'),
(idCliente,  77434812,'Moisés Mourato',  250448213, '1976-06-28', '4950-005', 'Rua das candeias', 'Braga', 919633210, 'moisesmourato@gmail.com'),
(idCliente, 54203565, 'Moisés Paião', 258916186, '1959-12-26', '4520-220', 'Rua das sapatilhas', 'Braga', 919987441, 'moisespaiao@gmail.com'),
(idCliente, 14993103, 'Morgana Nieto', 258979151, '1979-06-28', '4693-009', 'Rua dos paus', 'Porto', 919952012, 'morgananieto@hotmail.com'),
(idCliente, 42325186, 'Máxima Gallindo', 210239403, '1989-09-09', '3900-145', 'Rua dos pessegos', 'Braga', 936523023, 'maximagall@gmail.com'),
(idCliente, 83964441, 'Nicolau Pessoa', 256107368, '1976-05-10', '3956-056',  'Rua dos palhaços', 'Porto', 966654230, 'nicolaupessoa@hotmail.com'),
(idCliente, 72563775, 'Noé Amaro',  239787750, '1970-12-31', '3900-009', 'Rua das Portas Partidas', 'Porto', 912223658, 'noemaoro@gamil.com'),
(idCliente, 84869974, 'Noé Matoso',  222031717, '1976-06-09', '3795-026', 'Rua Santa Bárbara', 'Porto', 918856320, 'noematoso@hotmail.com'),
(idCliente, 64530325 , 'Olavo Regalado', 249041833, '1988-10-12', '4006-026', 'Avenida da Liberdade', 'Braga', 936666523, 'olavoregalo@hotmail.com'),
(idCliente, 97987526, 'Ondina Fonseca', 230863795, '1989-10-01', '4700-060', 'Rua das Canetas', 'Porto', 919192936, 'ondinafonseca@gmail.com'),
(idCliente, 82403162, 'Parcidio Santos',  210384949, '1987-07-08', '3926-056', 'Rua dos Abades', 'Braga', 933365478, 'parcisiosantos@gmail.com'),
(idCliente, 80122799, 'Plínio Souto', 247125019, '1975-05-25', '4900-118', 'Rua do Bairro Frio', 'Barcelos', 919666547, 'pliniosouto@gmail.com' ),
(idCliente, 22068561,'Raul Abranches', 255587146, '1980-05-29', '4962-089', 'Rua do cão lindo', 'Porto', 929632301, 'raulabranches@gmail.com'), 
(idCliente, 19955704, 'Ricardo Abreu',  258299270, '1976-10-21', '4760-220', 'Rua dos meninos lindos', 'Porto', 919693201, 'ricardoabreu@gmail.com'),
(idCliente, 49415844, 'Rita Granjeiro', 217637687, '1980-01-28', '3500-110', 'Rua do Sol do cão', 'Porto', 919654487, 'ritagrangeiro@gmail.com' ),
(idCliente, 67642994, 'Ronaldo Neto',  225708936, '1993-06-29', '4750-042', 'Rua do Sado', 'Aveiro', 939669321, 'ronaldoneto@gmail.com'),
(idCliente, 28876313, 'Rubim Lopes', 252634214, '1990.09-26', '4569-117', 'Rua do Lobarinhas', 'Barcelos', 939632114, 'rubimlopes@gmail.com'),
(idCliente, 32385660, 'Selma Rico', 245116940, '1954-10-01', '4750-154', 'Rua do Hospital', 'Barcelos', 929632145, 'selmarico@gmail.com'),
(idCliente, 30025843, 'Simeão Paula', 237751261, '1988-08-28', '4755-125', 'Rua da Julia Pinheiro', 'Braga', 919995874, 'simeaopaula@gmail.com'),
(idCliente, 82040713, 'Sofia Meneses', 211857717, '1990-10-18', '3923-256', 'Rua das Carteiras', 'Barcelos', 929696325, 'sofiameneses@gmail.com'),
(idCliente,69715916,'Júlio Figos',239580157,'2002-12-11','4835-052','Rua das Violetas','Guimarães',969654555,'jujufigos@hotmail.com'),
(idCliente,28778883,'Amália Costa',223050562,'1989-10-10','3800-032','Rua do Rei','Viana do Castelo',939564525,'amaliacostinha@yahoo.com'),
(idCliente,76460503,'Henrique Alburqueque',252339592, '1979-11-26', '3455-489', 'Rua dos Combatentes', 'Fafe', 912211662, 'heriqueque@hotmail.com'), 
(idCliente,54808239,'Susana Freitas',228058672,'1990-02-18','3820-416','Rua Mousinho da Silveira','Aveiro',939998452,'sufrei@yahoo.com'),
(idCliente,12723975,'Cláudia Mendes',245217670,'2000-02-03','4035-025','Rua das Amoreiras','Lisboa',912103254,'mendeslau9@hotmail.com'),
(idCliente,72520958,'Joel Freitas',220720397,'1992-06-01','4800-050','Rua do Rossio','Lisboa',969654148,'jufreitas@gmail.com'),
(idCliente,35078862,'Celina Melo',241573795,'1990-03-02','4810-023','Rua 25 de Abril','Porto',966659032,'melo11@gmail.com'),
(idCliente,50007458,'Eduardo Almeida',232152526,'1999-09-12','3835-023','Rua Central 3','Fafe',939365472,'edu_al_meida@gmail.com'),
(idCliente,24038347,'Ana João Castro',246336500,'1994-06-15','4835-005','Rua 1 de Janeiro','Braga',918542013,'castro_ana34@hotmail.com'),
(idCliente,97767537,'Zita Cerqueira', 217587087, '2000-01-01','3805-155','Avenida da Guerra','Porto',939352012,'zzitac_5@gmail.com'),
(idCliente,72682483, 'Álvaro Passos', 217484621 , '1988-09-13', '4800-212', 'Rua Soares dos Santos ', 'Famalicão', 912296364, 'passos88@hotmail.com'),
(idCliente,72682480, 'Manuel Mendes', 249807888 , '1998-09-13', '4850-211', 'Rua Sol do Ave ', 'Fafe', 932296304, 'manuelfmendes8@hotmail.com'),
(idCliente,67939759, 'Ártur Fonseca', 240020325 , '1978-10-13', '4610-561', 'Rua Soares Abreu ', 'Felgueiras', 966296364, 'arturfonfon@hotmail.com'),
(idCliente, 66097075, 'Vitor Ferreira', 232536798, '1992-03-03', '4800-321', 'Rua dos Santos Populares ', 'Famalicão', 922206364, 'ferreira65@hotmail.com'),
(idCliente, 23656282, 'Diogo Costa', 252918603, '1984-08-11', '4710-417', 'Rua Soares dos Santos ', 'Braga', 912246364, 'dicosta@hotmail.com'); 

-- SELECT * FROM clientes;

-- DELETE FROM pedidos
INSERT INTO pedidos
(idPedido, valor, dataHora, Cliente)
VALUES 
(1, 0, '2015-10-01 10:00:00', 1),
(idPedido, 0, '2015-11-03 11:01:23', 2),
(idPedido, 0, '2015-12-03 12:12:53', 3),
(idPedido, 0, '2015-12-10 14:10:05', 4),
(idPedido, 0, '2015-12-20 15:21:23', 50),
(idPedido, 0, '2015-12-21 15:25:00', 5),
(idPedido, 0, '2015-12-23 16:20:56', 6),
(idPedido, 0, '2015-12-24 16:20:47', 7),
(idPedido, 0, '2015-12-24 17:05:56', 8),
(idPedido, 0, '2015-12-24 17:09:53', 9),
(idPedido, 0, '2015-12-24 18:01:02', 10),
(idPedido, 0, '2015-12-24 18:04:36', 12),
(idPedido, 0, '2015-12-24 18:08:39', 13),
(idPedido, 0, '2015-12-24 18:15:49',14),
(idPedido, 0, '2015-12-24 18:20:50',15),
(idPedido, 0, '2015-12-24 18:25:46',16),
(idPedido, 0, '2015-12-24 18:30:32',17),
(idPedido, 0, '2015-12-24 18:45:46',18),
(idPedido, 0, '2015-12-24 18:50:54',19),
(idPedido, 0, '2015-12-26 09:08:03',20),
(idPedido, 0, '2015-12-26 09:20:06',21),
(idPedido, 0, '2015-12-26 10:21:09',53),
(idPedido, 0, '2015-12-26 15:15:15',22),
(idPedido, 0, '2015-12-26 18:25:39',23),
(idPedido, 0, '2015-12-27 15:46:48',24),
(idPedido, 0, '2015-12-28 09:06:03',25),
(idPedido, 0, '2015-12-29 11:11:11',26),
(idPedido, 0, '2015-12-30 15:06:09',27),
(idPedido, 0, '2015-12-31 17:56:58',28),
(idPedido, 0, '2016-01-03 09:25:00',29); 

-- SELECT * FROM pedidos


-- DELETE FROM pedidosprodutos
INSERT INTO pedidosprodutos
(Pedido, Produto, quantidade)
VALUES
(1,1, 2),
(1,6, 2), 
(2,2, 5),
(2,10, 9),
(2,8, 5),
(3,1, 1),
(4,3, 10),
(5,8, 12),
(6,14, 2),
(7, 4, 3),
(8, 21, 1),
(8, 2, 1),
(8,5,4),
(9,13, 5), 
(9, 12, 5),
(10,14,2),
(10,13,2),
(11, 22, 1),
(11, 6, 3),
(12, 8, 1),
(13, 9, 6),
(14, 10, 6),
(15, 19, 2),
(16, 16, 4),
(17,6, 3),
(18, 9, 8),
(19, 9, 8),
(30, 21, 2),
(30, 2, 3); 
-- SELECT * FROM pedidosprodutos



-- DELETE FROM funcionarios; 
INSERT INTO funcionarios
(idFuncionario,horario,nib,salario,nome,nrContribuinte,dataNascimento,nrCartaoCidadao,
nrPorta,rua,freguesia,concelho,distrito,codPostal,telemovel,telefone,facebook,email,Funcionario)
VALUES 
(1, '1',003589657632569874569, 2000, 'Célia Figueiredo', 262646080, '1993-02-02',14384155,27,' Rua da Costa', 
'Chorente', 'Barcelos', 'Braga','4755-118', 919568697, '252957073', 'https://www.facebook.com/celianlfg','celianlgh@hotmail.com', null),
(idFuncionario, '2',032565658456985698563, 1100, 'José João', '262646210', '1993-03-29',16254896,2569,' Rua da Quintã', 'Remelhe', 
'Barcelos', 'Braga', '4625-485', 926354789, 253808909, 'https://www.facebook.com/JoséJoão', 'jj@gmail.com', null),
(idFuncionario, '1',123568466569874563210, 850, 'Carlos Daniel', 264646200, '1993-09-22',' 14384154', 93,'Rua da Calçada', 
'Courel','Barcelos', 'Braga', '4589-129', 911171046, '252957056','https://www.facebook.com/carlosDaniel', 'carlosdaniel@live.com.pt', 1),
(idFuncionario, '1',653245689899963200124, 850, 'Adriana Pereira', 262646200, '1993-08-08',14365163,1200, 'Rua Padre Confucio da Silva', 
'Covas do Barroso', 'Boticas', 'Vila Real', '4068-110', 934885521, 258657079,'https://www.facebook.com/AdrianaPereira', 'adrianpereira_7@hotmail.com', 2),
(idFuncionario, '1',896324778118118118118, 650, 'Marcus Costa', 262646118, '1990-02-01',14568974,118, 'Rua Central', 
'Carvalhas','Amares', 'Braga','4720-118',963126744, 257527118,'https://www.facebook.com/MarcusCosta','marcuscosta@gmail.com', 2),
(idFuncionario, '3',123123123123123123123, 1090, 'Luís Oliveira', 245689056, '1989-06-22','13459687',56,'Rua das Cancelinhas', 
'Oliveira Santa Maria','Vila Nova Famalicao','Porto', '4899-123', 915325568, 252951987, 'https://www.facebook.com/LuisCarlosRoqueOliveira','luis.roqueoliveira@gmail.com', 1),
(idFuncionario, '2', 123654789632023654569, 1500, 'Márcia Costa', 252646260, '1994-01-21',14513294, 46, 'Rua do Rio Alto', 'Alto', 
'Póvoa de Varzim', 'Porto', '4490-002', 919299987, 253419557, 'https://www.facebook.com/marciacosta46', 'mmcostinha@gmail.com', 1),
(idFuncionario, '3', 003565477800012365478, 1090, 'Manuel Faria', 262516046, '1992-07-18', 14984561, 1569, 'Rua da Igreja Velha',
'Tabuadelo', 'Guimarães', 'Braga', '4835-599', 933365236, 252369896,'https://www.facebook.com/manuelfaria', 'manuelfaria@gmail.com', 2 ); 
-- SELECT * FROM funcionarios;


-- DELETE FROM funcionariosprodutos; 
INSERT INTO funcionariosprodutos
(Funcionario, Produto, quantidade, dataConfe)
VALUES
(4, 1, 200, '2015-12-24'),
(4, 2, 700, '2015-12-29'),
(4, 3, 700, '2015-12-30'),
(4, 11,30, '2015-12-30'),
(4, 12, 70, '2016-01-02'),
(5, 13, 25, '2016-01-02'),
(5, 4, 400, '2016-01-02'),
(5, 5, 500,'2016-01-02'),
(5, 6, 1500, '2016-01-02'), 
(5, 7, 150, '2016-01-02'), 
(5, 8, 200, '2016-01-03'),
(5, 17, 60, '2016-01-03'),
(6, 9, 400, '2016-01-03'),
(6, 10, 190, '2016-01-03'),
(6, 14, 30, '2016-01-03'),
(6, 15, 50, '2016-01-04'),
(6, 16, 150, '2016-01-04'),
(3, 18, 250, '2016-01-04'),
(3, 19, 70, '2016-01-04'),
(3, 20, 160, '2016-01-04'),
(3, 21, 25, '2016-01-04'), 
(3, 22, 30, '2016-01-05'),
(7, 21, 25, '2016-01-06'),
(7, 6, 1400, '2016-01-06'),
(7, 8, 150, '2016-01-06'),
(7, 4, 350, '2016-01-06');

-- SELECT * FROM funcionariosprodutos; 

-- DELETE FROM funcionariospedidos; 
INSERT INTO funcionariospedidos
(Funcionario,Pedido)
VALUES
(1, 1), (1, 4), (1, 3),
(1, 5), (2, 7), (3, 8), 
(1,9), (1,10), (2, 11), 
(3, 12), (1, 13), (2,14),
(1,15), (2, 16), (3,17), 
(1, 18), (2, 19), (1,20), 
(2,21), (3, 22), (8, 23), 
(2, 24), (1, 25), (2,26),
(3,27), (1,28), (2,29), 
(3,30), (1, 2), (2, 6);

-- SELECT * FROM funcionariospedidos;


-- DELETE FROM clientesprodutos; 
INSERT INTO clientesprodutos
(Cliente, Produto)
VALUES
(1, 1),
(1, 2),
(2, 20), 
(3, 3),
(4, 9),
(5, 21),
(6, 7),
(7, 18),
(8, 19),
(9, 6), 
(10, 21),
(11, 9),
(12, 10),
(13,10), 
(14, 1),
(15, 5),
(16, 15),
(16, 1);


-- SELECT * FROM clientesprodutos; 






-- update funcionarios
	-- set funcionario = NULL
   --  where idfuncionario = 1;

 



 






