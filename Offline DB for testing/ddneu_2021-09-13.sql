# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.32)
# Database: ddneu
# Generation Time: 2021-09-13 09:22:35 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table alumni
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alumni`;

CREATE TABLE `alumni` (
  `alumni_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `alumni_grade` decimal(2,1) DEFAULT NULL,
  `alumni_studytime` int(11) DEFAULT NULL,
  `alumni_lastinfo` text,
  `alumni_lastemail` varchar(45) DEFAULT NULL,
  `alumni_lastcontact` date DEFAULT NULL,
  `alumni_thesis_grade` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`alumni_id`),
  UNIQUE KEY `student_id_2` (`student_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;

INSERT INTO `alumni` (`alumni_id`, `student_id`, `alumni_grade`, `alumni_studytime`, `alumni_lastinfo`, `alumni_lastemail`, `alumni_lastcontact`, `alumni_thesis_grade`)
VALUES
	(3603,1789,0.0,NULL,NULL,NULL,NULL,0.0),
	(3604,1790,0.0,NULL,NULL,NULL,NULL,0.0);

/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `country` varchar(50) DEFAULT NULL,
  `countryid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`country`, `countryid`)
VALUES
	(NULL,1),
	('Afghanistan',2),
	('Åland Islands',3),
	('Albania',4),
	('Algeria',5),
	('American Samoa',6),
	('Andorra',7),
	('Angola',8),
	('Anguilla',9),
	('Antarctica',10),
	('Antigua And Barbuda',11),
	('Argentina',12),
	('Armenia',13),
	('Aruba',14),
	('Australia',15),
	('Austria',16),
	('Azerbaijan',17),
	('Bahamas',18),
	('Bahrain',19),
	('Bangladesh',20),
	('Barbados',21),
	('Belarus',22),
	('Belgium',23),
	('Belize',24),
	('Benin',25),
	('Bermuda',26),
	('Bhutan',27),
	('Bolivia',28),
	('Bosnia And Herzegovina',29),
	('Botswana',30),
	('Bouvet Island',31),
	('Brazil',32),
	('British Indian Ocean Territory',33),
	('Brunei Darussalam',34),
	('Bulgaria',35),
	('Burkina Faso',36),
	('Burundi',37),
	('Cambodia',38),
	('Cameroon',39),
	('Canada',40),
	('Cape Verde',41),
	('Cayman Islands',42),
	('Central African Republic',43),
	('Chad',44),
	('Chile',45),
	('China',46),
	('Christmas Island',47),
	('Cocos (Keeling) Islands',48),
	('Colombia',49),
	('Comoros',50),
	('Congo',51),
	('Congo, The Democratic Republic Of The',52),
	('Cook Islands',53),
	('Costa Rica',54),
	('Côte D\'ivoire',55),
	('Croatia',56),
	('Cuba',57),
	('Cyprus',58),
	('Czech Republic',59),
	('Denmark',60),
	('Djibouti',61),
	('Dominica',62),
	('Dominican Republic',63),
	('Ecuador',64),
	('Egypt',65),
	('El Salvador',66),
	('Equatorial Guinea',67),
	('Eritrea',68),
	('Estonia',69),
	('Ethiopia',70),
	('Falkland Islands (Malvinas)',71),
	('Faroe Islands',72),
	('Fiji',73),
	('Finland',74),
	('France',75),
	('French Guiana',76),
	('French Polynesia',77),
	('French Southern Territories',78),
	('Gabon',79),
	('Gambia',80),
	('Georgia',81),
	('Germany',82),
	('Ghana',83),
	('Gibraltar',84),
	('Greece',85),
	('Greenland',86),
	('Grenada',87),
	('Guadeloupe',88),
	('Guam',89),
	('Guatemala',90),
	('Guernsey',91),
	('Guinea',92),
	('Guinea-Bissau',93),
	('Guyana',94),
	('Haiti',95),
	('Heard Island And Mcdonald Islands',96),
	('Holy See (Vatican City State)',97),
	('Honduras',98),
	('Hong Kong',99),
	('Hungary',100),
	('Iceland',101),
	('India',102),
	('Indonesia',103),
	('Iran, Islamic Republic Of',104),
	('Iraq',105),
	('Ireland',106),
	('Isle Of Man',107),
	('Israel',108),
	('Italy',109),
	('Jamaica',110),
	('Japan',111),
	('Jersey',112),
	('Jordan',113),
	('Kazakhstan',114),
	('Kenya',115),
	('Kiribati',116),
	('Korea, Democratic People\'s Republic Of',117),
	('Korea, Republic Of',118),
	('Kuwait',119),
	('Kyrgyzstan',120),
	('Lao People\'s Democratic Republic',121),
	('Latvia',122),
	('Lebanon',123),
	('Lesotho',124),
	('Liberia',125),
	('Libyan Arab Jamahiriya',126),
	('Liechtenstein',127),
	('Lithuania',128),
	('Luxembourg',129),
	('Macao',130),
	('Macedonia, The Former Yugoslav Republic Of',131),
	('Madagascar',132),
	('Malawi',133),
	('Malaysia',134),
	('Maldives',135),
	('Mali',136),
	('Malta',137),
	('Marshall Islands',138),
	('Martinique',139),
	('Mauritania',140),
	('Mauritius',141),
	('Mayotte',142),
	('Mexico',143),
	('Micronesia, Federated States Of',144),
	('Moldova, Republic Of',145),
	('Monaco',146),
	('Mongolia',147),
	('Montenegro',148),
	('Montserrat',149),
	('Morocco',150),
	('Mozambique',151),
	('Myanmar',152),
	('Namibia',153),
	('Nauru',154),
	('Nepal',155),
	('Netherlands',156),
	('Netherlands Antilles',157),
	('New Caledonia',158),
	('New Zealand',159),
	('Nicaragua',160),
	('Niger',161),
	('Nigeria',162),
	('Niue',163),
	('Norfolk Island',164),
	('Northern Mariana Islands',165),
	('Norway',166),
	('Oman',167),
	('Pakistan',168),
	('Palau',169),
	('Palestinian Territory, Occupied',170),
	('Panama',171),
	('Papua New Guinea',172),
	('Paraguay',173),
	('Peru',174),
	('Philippines',175),
	('Pitcairn',176),
	('Poland',177),
	('Portugal',178),
	('Puerto Rico',179),
	('Qatar',180),
	('Réunion',181),
	('Romania',182),
	('Russian Federation',183),
	('Rwanda',184),
	('Saint Barthélemy',185),
	('Saint Helena',186),
	('Saint Kitts And Nevis',187),
	('Saint Lucia',188),
	('Saint Martin',189),
	('Saint Pierre And Miquelon',190),
	('Saint Vincent And The Grenadines',191),
	('Samoa',192),
	('San Marino',193),
	('Sao Tome And Principe',194),
	('Saudi Arabia',195),
	('Senegal',196),
	('Serbia',197),
	('Seychelles',198),
	('Sierra Leone',199),
	('Singapore',200),
	('Slovakia',201),
	('Slovenia',202),
	('Solomon Islands',203),
	('Somalia',204),
	('South Africa',205),
	('South Georgia And The South Sandwich Islands',206),
	('Spain',207),
	('Sri Lanka',208),
	('Sudan',209),
	('Suriname',210),
	('Svalbard And Jan Mayen',211),
	('Swaziland',212),
	('Sweden',213),
	('Switzerland',214),
	('Syrian Arab Republic',215),
	('Taiwan, Province Of China',216),
	('Tajikistan',217),
	('Tanzania, United Republic Of',218),
	('Thailand',219),
	('Timor-Leste',220),
	('Togo',221),
	('Tokelau',222),
	('Tonga',223),
	('Trinidad And Tobago',224),
	('Tunisia',225),
	('Turkey',226),
	('Turkmenistan',227),
	('Turks And Caicos Islands',228),
	('Tuvalu',229),
	('Uganda',230),
	('Ukraine',231),
	('United Arab Emirates',232),
	('United Kingdom',233),
	('United States',234),
	('United States Minor Outlying Islands',235),
	('Uruguay',236),
	('Uzbekistan',237),
	('Vanuatu',238),
	('Venezuela, Bolivarian Republic Of',239),
	('Viet Nam',240),
	('Virgin Islands, British',241),
	('Virgin Islands, U.S.',242),
	('Wallis And Futuna',243),
	('Western Sahara',244),
	('Yemen',245),
	('Zambia',246),
	('Zimbabwe',247);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `course` varchar(50) DEFAULT NULL,
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`course`, `courseid`)
VALUES
	('Computer Science and Communications Engineering',2),
	('Electrical and Electronic Engineering',3),
	('Mechanical Engineering',4),
	('Civil Engineering, Environmental',5),
	('Civil Engineering, Structural',6),
	('Computer Engineering',7),
	('Wirtschaftsingenieur',8),
	('Wirtschaftsingenieur/MBau',9),
	('Wirtschaftsingenieur/IT',10),
	('Wirtschaftsingenieur/Energy',11),
	('Metalurgy and Metal Forming',12),
	('Civil Engineering',13),
	('Computational Mechanics',14),
	('Automotive Engineering',15),
	('Industrial Engineering',16),
	('Elektro und Informationstechnik',17),
	('Nano Engineering',18),
	('Maschinenbau',19),
	('Wirtschaftsingenieur/ Automotive Engineering',20),
	('Automation and Control Engineering',22),
	('Technische Logistik',23),
	('The Electronic Information Engineering',24),
	('Hydraulic and Hydropower Engineering',25),
	('Electric Engineering and Its Automation',26),
	('Computer Science and Technology',27),
	('Communications Engineering',28),
	('Mechnical Design, Manufacturing and Automation',29),
	('Software Engineering',30),
	('Logistik Management',31),
	('Measur and Control Technology and Instrument',32),
	('Computer Engineering-INS',33),
	('Computer Engineering-ISV',34),
	('Embedded Systems Engineering',35),
	('Power Engineering',36),
	('Mechanical Engineering-GME',37),
	('Mechanical Engineering-MT',38),
	('Mechanical Engineering-PaL',39),
	('Management and Technology of Water and Waste Water',40),
	('Mechanical Engineering-EaEE',41),
	('Computer Engineering-SWE',42),
	('Computer Engineering-Com',43),
	('Business Administration',44),
	('Economies',45),
	('Betriebswirtschaftslehre',46),
	('Bauingenieurwesen',47),
	('Structural Engineering',48),
	('Elektronic Information Engineering',49),
	('International Economics and Trade',51),
	('Inorganic non-metallic Materials Engineering',53),
	('Metal Material and Forming Process',54),
	('English',55),
	('Modern East Asian Studies',56),
	('Biologie',57);

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table degree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `degree`;

CREATE TABLE `degree` (
  `deg` varchar(20) DEFAULT NULL,
  `degid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`degid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;

INSERT INTO `degree` (`deg`, `degid`)
VALUES
	(NULL,1),
	('Bachelor of Science',2),
	('Master of Science',3),
	('Aachen',9);

/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table degrees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `degrees`;

CREATE TABLE `degrees` (
  `degree_id` int(1) NOT NULL,
  `degree_name` text,
  `degree_abbreviation` text,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `degrees` WRITE;
/*!40000 ALTER TABLE `degrees` DISABLE KEYS */;

INSERT INTO `degrees` (`degree_id`, `degree_name`, `degree_abbreviation`)
VALUES
	(0,NULL,NULL),
	(1,'Bachelor of Science','B.Sc.'),
	(2,'Master of Science','M.Sc.');

/*!40000 ALTER TABLE `degrees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table exams
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exams`;

CREATE TABLE `exams` (
  `exam_status` varchar(50) DEFAULT NULL,
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`examid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;

INSERT INTO `exams` (`exam_status`, `examid`, `value`)
VALUES
	(NULL,1,10),
	('>4 remaining',2,20),
	('4 remaining',3,30),
	('3 remaining',4,40),
	('2 remaining',5,50),
	('1 remaining',6,60),
	('All finished',7,70);

/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table foreign_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `foreign_address`;

CREATE TABLE `foreign_address` (
  `idforeign_address` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) DEFAULT NULL,
  `foreign_street` varchar(90) DEFAULT NULL,
  `foreign_co` varchar(45) DEFAULT NULL,
  `foreign_zip` varchar(10) DEFAULT NULL,
  `foreign_city` varchar(45) DEFAULT NULL,
  `foreign_state` varchar(50) DEFAULT NULL,
  `foreign_country` varchar(45) DEFAULT NULL,
  `foreign_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idforeign_address`),
  UNIQUE KEY `studentid_2` (`studentid`),
  KEY `studentid` (`studentid`),
  CONSTRAINT `studentid` FOREIGN KEY (`studentid`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `foreign_address` WRITE;
/*!40000 ALTER TABLE `foreign_address` DISABLE KEYS */;

INSERT INTO `foreign_address` (`idforeign_address`, `studentid`, `foreign_street`, `foreign_co`, `foreign_zip`, `foreign_city`, `foreign_state`, `foreign_country`, `foreign_phone`)
VALUES
	(2028,1790,'Jl. Wilis Blok C No. 20, Perumahan Bukit Permai Cibubur, Cibubur, Jakarta 13720',NULL,'13720','DKI Jakarta','Jakarta Timur','Indonesia',NULL);

/*!40000 ALTER TABLE `foreign_address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table home_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `home_address`;

CREATE TABLE `home_address` (
  `idhome_address` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) DEFAULT NULL,
  `home_street` varchar(90) DEFAULT NULL,
  `home_co` varchar(45) DEFAULT NULL,
  `home_zip` varchar(10) DEFAULT NULL,
  `home_city` varchar(45) DEFAULT NULL,
  `home_state` varchar(50) DEFAULT NULL,
  `home_country` varchar(45) DEFAULT NULL,
  `home_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhome_address`),
  UNIQUE KEY `studentid_2` (`studentid`),
  KEY `studentid` (`studentid`),
  CONSTRAINT `home_address_studentid` FOREIGN KEY (`studentid`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `home_address` WRITE;
/*!40000 ALTER TABLE `home_address` DISABLE KEYS */;

INSERT INTO `home_address` (`idhome_address`, `studentid`, `home_street`, `home_co`, `home_zip`, `home_city`, `home_state`, `home_country`, `home_phone`)
VALUES
	(4477,1789,'Müller',NULL,NULL,'Duisburg','NRW','Germany','0203 2703978'),
	(4478,1790,'Grabenstraße',NULL,'47057','Duisburg','North Rhine Westphalia','Germany','01634563424');

/*!40000 ALTER TABLE `home_address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table industrial
# ------------------------------------------------------------

DROP TABLE IF EXISTS `industrial`;

CREATE TABLE `industrial` (
  `industrial_attachment` varchar(50) DEFAULT NULL,
  `industrialid` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`industrialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `industrial` WRITE;
/*!40000 ALTER TABLE `industrial` DISABLE KEYS */;

INSERT INTO `industrial` (`industrial_attachment`, `industrialid`, `value`)
VALUES
	(NULL,1,10),
	('Searching for placement',2,20),
	('Placement found',3,30),
	('In progress',4,40),
	('Finished',5,50);

/*!40000 ALTER TABLE `industrial` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table language_course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `language_course`;

CREATE TABLE `language_course` (
  `course` varchar(50) DEFAULT NULL,
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `language_course` WRITE;
/*!40000 ALTER TABLE `language_course` DISABLE KEYS */;

INSERT INTO `language_course` (`course`, `courseid`, `value`)
VALUES
	(NULL,1,10),
	('N/A',2,20),
	('Language course in progress',3,30),
	('Language course passed',4,40),
	('Language course failed',5,50);

/*!40000 ALTER TABLE `language_course` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table language_english
# ------------------------------------------------------------

DROP TABLE IF EXISTS `language_english`;

CREATE TABLE `language_english` (
  `idlanguages` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(55) DEFAULT NULL,
  `course` varchar(55) DEFAULT NULL,
  `studentid` int(11) NOT NULL,
  PRIMARY KEY (`idlanguages`),
  UNIQUE KEY `studentid` (`studentid`),
  KEY `studentid_languages` (`studentid`),
  CONSTRAINT `studentid_english` FOREIGN KEY (`studentid`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table language_german
# ------------------------------------------------------------

DROP TABLE IF EXISTS `language_german`;

CREATE TABLE `language_german` (
  `idlanguages` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(55) DEFAULT NULL,
  `course` varchar(55) DEFAULT NULL,
  `studentid` int(11) NOT NULL,
  PRIMARY KEY (`idlanguages`),
  UNIQUE KEY `studentid` (`studentid`),
  KEY `studentid_languages` (`studentid`),
  CONSTRAINT `studentid_german` FOREIGN KEY (`studentid`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table language_state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `language_state`;

CREATE TABLE `language_state` (
  `status` varchar(50) DEFAULT NULL,
  `statusid` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `language_state` WRITE;
/*!40000 ALTER TABLE `language_state` DISABLE KEYS */;

INSERT INTO `language_state` (`status`, `statusid`, `value`)
VALUES
	(NULL,1,10),
	('No course neccessary',2,20),
	('Language course neccessary',3,30);

/*!40000 ALTER TABLE `language_state` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table saved_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `saved_searches`;

CREATE TABLE `saved_searches` (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `search_name` varchar(40) NOT NULL,
  `search_string` varchar(4000) NOT NULL,
  `search_display` text,
  PRIMARY KEY (`search_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `saved_searches` WRITE;
/*!40000 ALTER TABLE `saved_searches` DISABLE KEYS */;

INSERT INTO `saved_searches` (`search_id`, `user_id`, `search_name`, `search_string`, `search_display`)
VALUES
	(40,11,'UDE to UKM WS11','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2011.5  ORDER BY surname','display_overall_status, display_home_degree, display_home_course, '),
	(41,11,'UDE to UKM SS12','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND student.starting_semester =2012.1  ORDER BY surname','display_overall_status, display_home_degree, display_home_course, '),
	(42,11,'UKM to UDE 2011','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND student.starting_semester =2011.5  ORDER BY surname','display_home_degree, display_home_course, display_starting_semester, '),
	(43,11,'UKM to UDE 2010','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =4) AND student.starting_semester =2010.5  ORDER BY surname','display_home_degree, display_home_course, display_starting_semester, '),
	(49,12,'UKM@UDE2010','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =4) AND student.starting_semester =2010.5  ORDER BY surname','display_overall_status, display_home_degree, display_home_course, display_starting_semester, display_matno, '),
	(50,12,'UKM@UDE WS2011','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND student.starting_semester =2011.5  ORDER BY surname','display_overall_status, display_home_degree, display_home_course, display_starting_semester, '),
	(51,12,'UDE to UKM 2011','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2011.5  ORDER BY surname','display_overall_status, display_home_degree, display_home_course, '),
	(65,7,'UKM-DD@UDE WS2011','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'DoubleDegree\' AND student.home_university=\'2\' AND student.home_degree=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =4) AND student.starting_semester =2011.5  ORDER BY surname','display_overall_status, '),
	(66,7,'UKM-EXC@UDE WS2011','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =4) AND student.starting_semester =2011.5  ORDER BY surname',NULL),
	(68,7,'UDE EXC@UKM WS2011','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =4) AND student.starting_semester =2011.5  ORDER BY surname',NULL),
	(74,7,'UKM-EXC@UDE SS2012','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2012.1  ORDER BY surname','display_overall_status, '),
	(80,7,'UDE@UKM WS12','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.group_name LIKE \'%UDE@UKM WS12%\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3)  ORDER BY surname','display_nationality, display_gender, display_home_degree, display_home_course, '),
	(81,7,'UKM DD@UDE WS12','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'DoubleDegree\' AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND student.home_degree=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2012.5  ORDER BY surname','display_gender, display_overall_status, display_home_course, '),
	(83,19,'saidatul','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.room_deposit=1 AND student.health_insurance=1 AND student.cv=1  ORDER BY surname',NULL),
	(85,7,'UKM DD@UDE WS13','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'DoubleDegree\' AND student.starting_semester =2013.5  ORDER BY surname',NULL),
	(89,16,'indonesia','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND (student.surname LIKE \'%indonesien%\' OR student.firstname LIKE \'%indonesien%\')  ORDER BY surname',NULL),
	(91,17,'Kai Berendsen','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND (student.surname LIKE \'%heike%\' OR student.firstname LIKE \'%heike%\')  ORDER BY surname',NULL),
	(99,7,'sonmez','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND (student.surname LIKE \'%soenmez%\' OR student.firstname LIKE \'%soenmez%\')  ORDER BY surname',NULL),
	(107,7,'UDE@UKM2013 B.Sc.','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND student.home_degree=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2013.5  ORDER BY surname',NULL),
	(108,7,'UDE@UKM2013 M.Sc.','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND student.home_degree=\'3\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2013.5  ORDER BY surname',NULL),
	(119,7,'dd','SELECT personalid, surname, firstname, email, birthday, nationality, gender, overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, group_name, concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as Starting_Semester, religion, home_intention AS intention, (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, home_matno, (SELECT deg FROM `degree` WHERE degid=student.home_degree) AS home_degree, (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, foreign_matno, status_exams, status_thesis, status_industrial, industrial_comment, alumni_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, dropout_date, aa_applicantno, first_contactdate, last_update, comment, home_street, home_co, home_zip, home_city, home_state, home_country, foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, english_level, english_course, german_level, german_course, room_status,learning_agreement,room_deposit,health_insurance,room_name,supervisor_home,application_letter_home,supervisor_abroad,motivation,visa,sponsorship,vaccination,application_letter_abroad,cv,result,wishlist \r\n from student WHERE 1 AND student.group_name LIKE \'%dd2013%\'  ORDER BY surname',NULL),
	(125,24,'interestedWS2014','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, \r\n    \r\n\r\nif((length(student_date)<>0),\r\n    (\r\n        if((left( substring( student_date, 6 ) , 2 ) < 8), \r\n           concat(\'SuSe\',\' \',left(student_date,4)), \r\n           concat(\'WiSe\',\' \',left(student_date,4)) \r\n          )\r\n    ),\r\n    (\r\n        if(left( substring( applicant_date, 6 ) , 2 ) <>10, \r\n           concat(\'SuSe\',\' \',left(applicant_date,4)), \r\n           concat(\'WiSe\',\' \',left(applicant_date,4)) \r\n          )\r\n	)\r\n  )\r\nas Starting_Semester,\r\n\r\n\r\nhome_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, \r\n    dropout_date, aa_applicantno, first_contactdate, \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.starting_semester =2014.5  ORDER BY surname','display_overall_status, display_intention, display_home_semester, display_home_credits, display_home_cgpa, display_starting_semester, '),
	(126,24,'allin','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date, \r\n    \r\n\r\nif((length(student_date)<>0),\r\n    (\r\n        if((left( substring( student_date, 6 ) , 2 ) < 8), \r\n           concat(\'SuSe\',\' \',left(student_date,4)), \r\n           concat(\'WiSe\',\' \',left(student_date,4)) \r\n          )\r\n    ),\r\n    (\r\n        if(left( substring( applicant_date, 6 ) , 2 ) <>10, \r\n           concat(\'SuSe\',\' \',left(applicant_date,4)), \r\n           concat(\'WiSe\',\' \',left(applicant_date,4)) \r\n          )\r\n	)\r\n  )\r\nas Starting_Semester,\r\n\r\n\r\nhome_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime, alumni_lastinfo, alumni_lastemail, alumni_lastcontact, \r\n    dropout_date, aa_applicantno, first_contactdate, \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1  ORDER BY surname','display_nationality, display_salutation, display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_home_semester, display_home_credits, display_home_cgpa, display_starting_semester, display_matno, '),
	(142,7,'UDE Exc 2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname',NULL),
	(143,7,'UDE Exc 2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname','display_home_degree, display_home_course, display_average_grade, '),
	(144,7,'UKM DD WS2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_intention=\'DoubleDegree\' AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname',NULL),
	(146,7,'UDE Exc 2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_intention=\'Exchange\' AND student.home_university=\'4\' AND student.foreign_university=\'2\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname','display_home_degree, display_home_course, '),
	(148,36,'UKM@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_university=\'2\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname','display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_starting_semester, '),
	(149,36,'UI@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_university=\'3\' AND student.foreign_university=\'4\' AND student.starting_semester =2015.5  ORDER BY surname','display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(150,36,'RIAMTEC@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_university=\'13\' AND student.foreign_university=\'4\' AND student.starting_semester =2015.5  ORDER BY surname','display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(151,36,'UNITEN@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_university=\'14\' AND student.foreign_university=\'4\' AND student.starting_semester =2015.5  ORDER BY surname','display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(152,36,'§49-MO-UKM@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_intention=\'§49-MO-UKM\' AND student.foreign_university=\'4\' AND student.starting_semester =2015.5  ORDER BY surname','display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(153,36,'ZZU@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_university=\'6\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname','display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(154,36,'GMI@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.home_university=\'12\' AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname','display_nationality, display_salutation, display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(155,36,'all@UDE2015','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND student.foreign_university=\'4\' AND ((SELECT statusid FROM status WHERE status.overall_status=student.overall_status) =3) AND student.starting_semester =2015.5  ORDER BY surname','display_nationality, display_salutation, display_overall_status, display_intention, display_home_university, display_foreign_university, display_home_degree, display_home_course, display_starting_semester, '),
	(156,36,'Aryatama Wisn','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship,wishlist from student WHERE 1 AND (student.surname LIKE \'%Aryatama Wisnu Wardhana%\' OR student.firstname LIKE \'%Aryatama Wisnu Wardhana%\')  ORDER BY surname',NULL),
	(159,24,'testexam','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship, wishlist, foreign_num_planed_exams from student WHERE 1 AND (student.surname LIKE \'%am%\' OR student.firstname LIKE \'%am%\')  ORDER BY surname','display_pID, display_numplanexam, '),
	(207,10,'Freshmen_2017_allapplicants','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship, wishlist, foreign_num_planed_exams from student WHERE 1 AND student.home_intention=\'Freshman\' AND student.starting_semester =2017.5  ORDER BY surname','display_nationality, display_salutation, display_overall_status, display_home_degree, display_home_course, '),
	(208,3,'Hassan','SELECT personalid, surname, firstname, email, birthday, nationality, salutation, \r\n    overall_status, interested_date, applicant_date, student_date, alumni_date, dropout_date,        \r\n    concat (if (starting_semester, if (starting_semester MOD 1 =0.1, \'SuSe\', if ((starting_semester MOD 1 =0.5), \'WiSe\', \' \')), \' \'),\' \', if ((starting_semester<>0), FLOOR(starting_semester), \' \')) as starting_semester,\r\n    home_intention AS intention, \r\n    (SELECT location FROM `university` WHERE locationid=student.home_university) AS home_university, \r\n    home_matno, \r\n    home_semester,\r\n    home_credits,\r\n    home_cgpa,\r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.home_degree) AS home_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.home_course) AS home_course, \r\n    (SELECT location FROM `university` WHERE locationid=student.foreign_university) AS foreign_university, \r\n    foreign_matno, \r\n    (SELECT degree_name FROM `degrees` WHERE degree_id=student.foreign_degree) AS foreign_degree, \r\n    (SELECT course FROM `courses` WHERE courseid=student.foreign_course) AS foreign_course, \r\n    alumni_grade, alumni_thesis_grade, alumni_studytime,     \r\n    last_update, comment, \r\n    home_street, home_co, home_zip, home_city, home_state, home_country, \r\n    foreign_street, foreign_co, foreign_zip, foreign_city, foreign_state, foreign_country, \r\n    trans_visa,trans_sponsorship, wishlist, foreign_num_planed_exams from student WHERE 1 AND (student.surname LIKE \'%Nawja%\' OR student.firstname LIKE \'%Nawja%\')  ORDER BY surname',NULL);

/*!40000 ALTER TABLE `saved_searches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table semester
# ------------------------------------------------------------

DROP TABLE IF EXISTS `semester`;

CREATE TABLE `semester` (
  `semesterid` int(11) NOT NULL AUTO_INCREMENT,
  `semestername` varchar(3) DEFAULT NULL,
  `semestervalue` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`semesterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;

INSERT INTO `semester` (`semesterid`, `semestername`, `semestervalue`)
VALUES
	(1,NULL,NULL),
	(2,'SS',0.1),
	(3,'WS',0.5);

/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sponsorships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sponsorships`;

CREATE TABLE `sponsorships` (
  `sponsor_id` int(2) NOT NULL DEFAULT '0',
  `sponsor_name` text,
  PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `sponsorships` WRITE;
/*!40000 ALTER TABLE `sponsorships` DISABLE KEYS */;

INSERT INTO `sponsorships` (`sponsor_id`, `sponsor_name`)
VALUES
	(0,NULL),
	(1,'BAfÖG'),
	(2,'Mara'),
	(3,'DIKTI'),
	(4,'PROMOS'),
	(5,'STEP'),
	(6,'own funding'),
	(7,'JPA'),
	(8,'KUOK Foundation'),
	(9,'PTPTN');

/*!40000 ALTER TABLE `sponsorships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `overall_status` varchar(50) DEFAULT NULL,
  `statusid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;

INSERT INTO `status` (`overall_status`, `statusid`)
VALUES
	(NULL,1),
	('Interested',2),
	('Applicant',3),
	('Active',4),
	('Dropout',5),
	('Alumni',6);

/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table student
# ------------------------------------------------------------

DROP VIEW IF EXISTS `student`;

CREATE TABLE `student` (
   `personalid` INT(11) NOT NULL DEFAULT '0',
   `surname` VARCHAR(45) NOT NULL,
   `firstname` VARCHAR(45) NOT NULL,
   `gender` VARCHAR(6) NULL DEFAULT NULL,
   `email` VARCHAR(45) NULL DEFAULT NULL,
   `birthday` DATE NULL DEFAULT NULL,
   `nationality` VARCHAR(50) NULL DEFAULT NULL,
   `overall_status` VARCHAR(15) NOT NULL,
   `group_name` VARCHAR(45) NULL DEFAULT NULL,
   `interested_date` DATE NULL DEFAULT NULL,
   `applicant_date` DATE NULL DEFAULT NULL,
   `student_date` DATE NULL DEFAULT NULL,
   `alumni_date` DATE NULL DEFAULT NULL,
   `dropout_date` DATE NULL DEFAULT NULL,
   `home_intention` VARCHAR(45) NULL DEFAULT NULL,
   `religion` VARCHAR(45) NULL DEFAULT NULL,
   `status_exams` VARCHAR(15) NULL DEFAULT NULL,
   `status_thesis` VARCHAR(20) NULL DEFAULT NULL,
   `status_industrial` VARCHAR(25) NULL DEFAULT NULL,
   `industrial_comment` VARCHAR(50) NULL DEFAULT NULL,
   `starting_semester` DECIMAL(5) NULL DEFAULT NULL,
   `stst_semesteryear` VARCHAR(7) NULL DEFAULT NULL,
   `aa_applicantno` VARCHAR(45) NULL DEFAULT NULL,
   `first_contactdate` DATE NULL DEFAULT NULL,
   `last_update` TIMESTAMP NULL DEFAULT NULL,
   `last_update_by` VARCHAR(45) NULL DEFAULT NULL,
   `created_when` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
   `created_by` VARCHAR(45) NOT NULL,
   `comment` TEXT NULL DEFAULT NULL,
   `salutation` VARCHAR(2) NULL DEFAULT NULL,
   `alumni_grade` DECIMAL(2) NULL DEFAULT NULL,
   `alumni_thesis_grade` DECIMAL(2) NULL DEFAULT NULL,
   `alumni_studytime` INT(11) NULL DEFAULT NULL,
   `alumni_lastinfo` TEXT NULL DEFAULT NULL,
   `alumni_lastemail` VARCHAR(45) NULL DEFAULT NULL,
   `alumni_lastcontact` DATE NULL DEFAULT NULL,
   `home_street` VARCHAR(90) NULL DEFAULT NULL,
   `home_co` VARCHAR(45) NULL DEFAULT NULL,
   `home_zip` VARCHAR(10) NULL DEFAULT NULL,
   `home_city` VARCHAR(45) NULL DEFAULT NULL,
   `home_state` VARCHAR(50) NULL DEFAULT NULL,
   `home_country` VARCHAR(45) NULL DEFAULT NULL,
   `home_phone` VARCHAR(45) NULL DEFAULT NULL,
   `foreign_street` VARCHAR(90) NULL DEFAULT NULL,
   `foreign_co` VARCHAR(45) NULL DEFAULT NULL,
   `foreign_zip` VARCHAR(10) NULL DEFAULT NULL,
   `foreign_city` VARCHAR(45) NULL DEFAULT NULL,
   `foreign_state` VARCHAR(50) NULL DEFAULT NULL,
   `foreign_country` VARCHAR(45) NULL DEFAULT NULL,
   `foreign_phone` VARCHAR(45) NULL DEFAULT NULL,
   `home_university` INT(11) NULL DEFAULT NULL,
   `home_matno` VARCHAR(20) NULL DEFAULT NULL,
   `home_degree` INT(11) NULL DEFAULT NULL,
   `home_course` INT(11) NULL DEFAULT NULL,
   `home_cgpa` DECIMAL(2) NULL DEFAULT NULL,
   `home_credits` VARCHAR(3) NULL DEFAULT NULL,
   `home_semester` VARCHAR(2) NULL DEFAULT NULL,
   `foreign_university` INT(11) NULL DEFAULT NULL,
   `foreign_matno` VARCHAR(20) NULL DEFAULT NULL,
   `foreign_degree` INT(11) NULL DEFAULT NULL,
   `foreign_course` INT(11) NULL DEFAULT NULL,
   `foreign_num_planed_exams` INT(1) NULL DEFAULT NULL,
   `english_level` VARCHAR(55) NULL DEFAULT NULL,
   `english_course` VARCHAR(55) NULL DEFAULT NULL,
   `german_level` VARCHAR(55) NULL DEFAULT NULL,
   `german_course` VARCHAR(55) NULL DEFAULT NULL,
   `room_status` VARCHAR(45) NULL DEFAULT NULL,
   `room_deposit` TINYINT(1) NULL DEFAULT NULL,
   `room_name` VARCHAR(10) NULL DEFAULT NULL,
   `application_letter_home` TINYINT(1) NULL DEFAULT NULL,
   `motivation` VARCHAR(50) NULL DEFAULT NULL,
   `sponsorship` VARCHAR(45) NULL DEFAULT NULL,
   `application_letter_abroad` TINYINT(1) NULL DEFAULT NULL,
   `cv` TINYINT(1) NULL DEFAULT NULL,
   `result` VARCHAR(45) NULL DEFAULT NULL,
   `learning_agreement` TINYINT(1) NULL DEFAULT NULL,
   `health_insurance` TINYINT(1) NULL DEFAULT NULL,
   `supervisor_home` VARCHAR(45) NULL DEFAULT NULL,
   `supervisor_abroad` VARCHAR(45) NULL DEFAULT NULL,
   `visa` TINYINT(1) NULL DEFAULT NULL,
   `vaccination` TINYINT(1) NULL DEFAULT NULL,
   `wishlist` TEXT NULL DEFAULT NULL,
   `trans_sponsorship` INT(2) NULL DEFAULT NULL,
   `trans_visa` INT(2) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table student_new
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student_new`;

CREATE TABLE `student_new` (
  `personalid` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `overall_status` varchar(15) NOT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `intention` varchar(45) DEFAULT NULL,
  `status_exams` varchar(15) DEFAULT NULL,
  `status_thesis` varchar(20) DEFAULT NULL,
  `status_industrial` varchar(25) DEFAULT NULL,
  `industrial_comment` varchar(50) DEFAULT NULL,
  `starting_semester` decimal(5,1) DEFAULT NULL,
  `aa_applicantno` varchar(45) DEFAULT NULL,
  `first_contactdate` date DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` text,
  `group_name` varchar(45) DEFAULT NULL,
  `interested_date` date DEFAULT NULL,
  `applicant_date` date DEFAULT NULL,
  `student_date` date DEFAULT NULL,
  `alumni_date` date DEFAULT NULL,
  `dropout_date` date DEFAULT NULL,
  `created_when` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(45) NOT NULL,
  `last_update_by` varchar(45) DEFAULT NULL,
  `salutation` varchar(2) DEFAULT NULL,
  `stst_semesteryear` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`personalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `student_new` WRITE;
/*!40000 ALTER TABLE `student_new` DISABLE KEYS */;

INSERT INTO `student_new` (`personalid`, `surname`, `firstname`, `email`, `birthday`, `nationality`, `gender`, `overall_status`, `religion`, `intention`, `status_exams`, `status_thesis`, `status_industrial`, `industrial_comment`, `starting_semester`, `aa_applicantno`, `first_contactdate`, `last_update`, `comment`, `group_name`, `interested_date`, `applicant_date`, `student_date`, `alumni_date`, `dropout_date`, `created_when`, `created_by`, `last_update_by`, `salutation`, `stst_semesteryear`)
VALUES
	(1789,'Mustermann ','Max','max.mustermann@maximal.de','2001-10-10','Afghanistan',NULL,'Interested',NULL,'Exchange',NULL,NULL,NULL,NULL,0.1,NULL,NULL,'2020-11-24 14:56:40','Test',NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-24 14:56:40','joachim','joachim','Mr',NULL),
	(1790,'Ghaffar','Andritto','andritto.ghaffar@stud.uni-due.de','1997-07-25','Indonesia',NULL,'Active',NULL,'DoubleDegree',NULL,NULL,NULL,NULL,2018.5,NULL,NULL,'2021-09-13 11:02:55',NULL,NULL,NULL,NULL,'2021-10-01',NULL,NULL,'2021-09-13 11:02:55','joachim','joachim','Mr',NULL);

/*!40000 ALTER TABLE `student_new` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table study_home
# ------------------------------------------------------------

DROP TABLE IF EXISTS `study_home`;

CREATE TABLE `study_home` (
  `home_university` int(11) DEFAULT NULL,
  `home_matno` varchar(20) DEFAULT NULL,
  `home_degree` int(11) DEFAULT NULL,
  `home_course` int(11) DEFAULT NULL,
  `studentid` int(11) NOT NULL,
  `home_cgpa` decimal(2,1) DEFAULT NULL,
  `home_credits` varchar(3) DEFAULT NULL,
  `home_semester` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `studentid` (`studentid`),
  KEY `university_studentid` (`studentid`),
  KEY `home_universityid` (`home_university`),
  KEY `home_courseid` (`home_course`),
  KEY `home_degreeid` (`home_degree`),
  CONSTRAINT `home_courseid` FOREIGN KEY (`home_course`) REFERENCES `courses` (`courseid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `home_degreeid` FOREIGN KEY (`home_degree`) REFERENCES `degrees` (`degree_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `home_studentid` FOREIGN KEY (`studentid`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `home_universityid` FOREIGN KEY (`home_university`) REFERENCES `university` (`locationid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `study_home` WRITE;
/*!40000 ALTER TABLE `study_home` DISABLE KEYS */;

INSERT INTO `study_home` (`home_university`, `home_matno`, `home_degree`, `home_course`, `studentid`, `home_cgpa`, `home_credits`, `home_semester`)
VALUES
	(2,NULL,1,46,1789,0.0,'000','00'),
	(3,'1506789543',1,3,1790,3.0,'114','6');

/*!40000 ALTER TABLE `study_home` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table study_host
# ------------------------------------------------------------

DROP TABLE IF EXISTS `study_host`;

CREATE TABLE `study_host` (
  `studentid` int(11) NOT NULL,
  `foreign_university` int(11) DEFAULT NULL,
  `foreign_matno` varchar(20) DEFAULT NULL,
  `foreign_degree` int(11) DEFAULT NULL,
  `foreign_course` int(11) DEFAULT NULL,
  `foreign_num_planed_exams` int(1) DEFAULT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `studentid` (`studentid`),
  KEY `university_studentid` (`studentid`),
  KEY `host_universityid` (`foreign_university`),
  KEY `host_courseid` (`foreign_course`),
  KEY `host_degreeid` (`foreign_degree`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `study_host` WRITE;
/*!40000 ALTER TABLE `study_host` DISABLE KEYS */;

INSERT INTO `study_host` (`studentid`, `foreign_university`, `foreign_matno`, `foreign_degree`, `foreign_course`, `foreign_num_planed_exams`)
VALUES
	(1789,1,'',0,1,1),
	(1790,4,'3087942',1,3,9);

/*!40000 ALTER TABLE `study_host` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table thesis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `thesis`;

CREATE TABLE `thesis` (
  `thesis_status` varchar(50) DEFAULT NULL,
  `thesisid` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`thesisid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `thesis` WRITE;
/*!40000 ALTER TABLE `thesis` DISABLE KEYS */;

INSERT INTO `thesis` (`thesis_status`, `thesisid`, `value`)
VALUES
	(NULL,1,10),
	('Searching for topic',2,20),
	('Topic found',3,30),
	('In progress',4,40),
	('Finished',5,50);

/*!40000 ALTER TABLE `thesis` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table transfer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transfer`;

CREATE TABLE `transfer` (
  `id_transfer` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) DEFAULT NULL,
  `room_status` varchar(45) DEFAULT NULL,
  `room_deposit` tinyint(1) DEFAULT NULL,
  `room_name` varchar(10) DEFAULT NULL,
  `application_letter_home` tinyint(1) DEFAULT NULL,
  `motivation` varchar(50) DEFAULT NULL,
  `sponsorship` varchar(45) DEFAULT NULL,
  `application_letter_abroad` tinyint(1) DEFAULT NULL,
  `cv` tinyint(1) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `learning_agreement` tinyint(1) DEFAULT NULL,
  `health_insurance` tinyint(1) DEFAULT NULL,
  `supervisor_home` varchar(45) DEFAULT NULL,
  `supervisor_abroad` varchar(45) DEFAULT NULL,
  `visa` tinyint(1) DEFAULT NULL,
  `vaccination` tinyint(1) DEFAULT NULL,
  `wishlist` text,
  `trans_sponsorship` int(2) DEFAULT NULL,
  `trans_visa` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_transfer`),
  UNIQUE KEY `studentid` (`studentid`),
  CONSTRAINT `studentid_transfer` FOREIGN KEY (`studentid`) REFERENCES `student_new` (`personalid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;

INSERT INTO `transfer` (`id_transfer`, `studentid`, `room_status`, `room_deposit`, `room_name`, `application_letter_home`, `motivation`, `sponsorship`, `application_letter_abroad`, `cv`, `result`, `learning_agreement`, `health_insurance`, `supervisor_home`, `supervisor_abroad`, `visa`, `vaccination`, `wishlist`, `trans_sponsorship`, `trans_visa`)
VALUES
	(3713,1789,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'                              ',0,0),
	(3714,1790,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'                              ',0,4);

/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table university
# ------------------------------------------------------------

DROP TABLE IF EXISTS `university`;

CREATE TABLE `university` (
  `location` varchar(60) DEFAULT NULL,
  `locationid` int(11) NOT NULL AUTO_INCREMENT,
  `locationabr` text,
  PRIMARY KEY (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;

INSERT INTO `university` (`location`, `locationid`, `locationabr`)
VALUES
	(NULL,1,NULL),
	('Universiti Kebangsaan Malaysia',2,'UKM'),
	('Universitas Indonesia',3,'UI'),
	('Universität Duisburg-Essen',4,'UDE'),
	('Nanyang Technological University Singapore',5,'NTU'),
	('Zhegzhou University',6,'ZZU'),
	('University Wuhan',7,'UW'),
	('German University in Cairo',8,'GUC'),
	('Institut Teknologi Bandung',9,'ITB'),
	('SIAS International University (SIAS)',10,'SIAS'),
	('Zhengzhou University of Light Industry',11,'ZZULI'),
	('German Malaysian Institute',12,'GMI'),
	('Riam Institute of Technology',13,'RIAMTEC'),
	('Universiti Tenaga Nasional',14,'UNITEN');

/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL DEFAULT '',
  `user_mail` text NOT NULL,
  `user_pass` varchar(45) NOT NULL DEFAULT '',
  `user_time` datetime DEFAULT NULL,
  `user_group` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`user_id`, `user_name`, `user_mail`, `user_pass`, `user_time`, `user_group`)
VALUES
	(9,'joachim','joachim.zumbraegel@uni-due.de','AAAJxA;6DYhXo;V+EtFVqngYq/QacP1Vt/wg==','2120-11-24 14:50:38','admin'),
	(39,'andritto','andritto.ghaffar@stud.uni-due.de','AAAJxA;aaa;xGg/XXRkt86XP1dqlJw9Hg==','2021-09-14 11:04:07','admin');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table visa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `visa`;

CREATE TABLE `visa` (
  `visa_id` int(2) DEFAULT NULL,
  `visa_status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `visa` WRITE;
/*!40000 ALTER TABLE `visa` DISABLE KEYS */;

INSERT INTO `visa` (`visa_id`, `visa_status`)
VALUES
	(0,NULL),
	(1,'not necessary'),
	(2,'on arrival'),
	(3,'applied'),
	(4,'granted');

/*!40000 ALTER TABLE `visa` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for student with correct view syntax
# ------------------------------------------------------------

DROP TABLE `student`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student`
AS SELECT
   `student_new`.`personalid` AS `personalid`,
   `student_new`.`surname` AS `surname`,
   `student_new`.`firstname` AS `firstname`,
   `student_new`.`gender` AS `gender`,
   `student_new`.`email` AS `email`,
   `student_new`.`birthday` AS `birthday`,
   `student_new`.`nationality` AS `nationality`,
   `student_new`.`overall_status` AS `overall_status`,
   `student_new`.`group_name` AS `group_name`,
   `student_new`.`interested_date` AS `interested_date`,
   `student_new`.`applicant_date` AS `applicant_date`,
   `student_new`.`student_date` AS `student_date`,
   `student_new`.`alumni_date` AS `alumni_date`,
   `student_new`.`dropout_date` AS `dropout_date`,
   `student_new`.`intention` AS `home_intention`,
   `student_new`.`religion` AS `religion`,
   `student_new`.`status_exams` AS `status_exams`,
   `student_new`.`status_thesis` AS `status_thesis`,
   `student_new`.`status_industrial` AS `status_industrial`,
   `student_new`.`industrial_comment` AS `industrial_comment`,
   `student_new`.`starting_semester` AS `starting_semester`,
   `student_new`.`stst_semesteryear` AS `stst_semesteryear`,
   `student_new`.`aa_applicantno` AS `aa_applicantno`,
   `student_new`.`first_contactdate` AS `first_contactdate`,
   `student_new`.`last_update` AS `last_update`,
   `student_new`.`last_update_by` AS `last_update_by`,
   `student_new`.`created_when` AS `created_when`,
   `student_new`.`created_by` AS `created_by`,
   `student_new`.`comment` AS `comment`,
   `student_new`.`salutation` AS `salutation`,
   `alumni`.`alumni_grade` AS `alumni_grade`,
   `alumni`.`alumni_thesis_grade` AS `alumni_thesis_grade`,
   `alumni`.`alumni_studytime` AS `alumni_studytime`,
   `alumni`.`alumni_lastinfo` AS `alumni_lastinfo`,
   `alumni`.`alumni_lastemail` AS `alumni_lastemail`,
   `alumni`.`alumni_lastcontact` AS `alumni_lastcontact`,
   `home_address`.`home_street` AS `home_street`,
   `home_address`.`home_co` AS `home_co`,
   `home_address`.`home_zip` AS `home_zip`,
   `home_address`.`home_city` AS `home_city`,
   `home_address`.`home_state` AS `home_state`,
   `home_address`.`home_country` AS `home_country`,
   `home_address`.`home_phone` AS `home_phone`,
   `foreign_address`.`foreign_street` AS `foreign_street`,
   `foreign_address`.`foreign_co` AS `foreign_co`,
   `foreign_address`.`foreign_zip` AS `foreign_zip`,
   `foreign_address`.`foreign_city` AS `foreign_city`,
   `foreign_address`.`foreign_state` AS `foreign_state`,
   `foreign_address`.`foreign_country` AS `foreign_country`,
   `foreign_address`.`foreign_phone` AS `foreign_phone`,
   `study_home`.`home_university` AS `home_university`,
   `study_home`.`home_matno` AS `home_matno`,
   `study_home`.`home_degree` AS `home_degree`,
   `study_home`.`home_course` AS `home_course`,
   `study_home`.`home_cgpa` AS `home_cgpa`,
   `study_home`.`home_credits` AS `home_credits`,
   `study_home`.`home_semester` AS `home_semester`,
   `study_host`.`foreign_university` AS `foreign_university`,
   `study_host`.`foreign_matno` AS `foreign_matno`,
   `study_host`.`foreign_degree` AS `foreign_degree`,
   `study_host`.`foreign_course` AS `foreign_course`,
   `study_host`.`foreign_num_planed_exams` AS `foreign_num_planed_exams`,
   `language_english`.`level` AS `english_level`,
   `language_english`.`course` AS `english_course`,
   `language_german`.`level` AS `german_level`,
   `language_german`.`course` AS `german_course`,
   `transfer`.`room_status` AS `room_status`,
   `transfer`.`room_deposit` AS `room_deposit`,
   `transfer`.`room_name` AS `room_name`,
   `transfer`.`application_letter_home` AS `application_letter_home`,
   `transfer`.`motivation` AS `motivation`,
   `transfer`.`sponsorship` AS `sponsorship`,
   `transfer`.`application_letter_abroad` AS `application_letter_abroad`,
   `transfer`.`cv` AS `cv`,
   `transfer`.`result` AS `result`,
   `transfer`.`learning_agreement` AS `learning_agreement`,
   `transfer`.`health_insurance` AS `health_insurance`,
   `transfer`.`supervisor_home` AS `supervisor_home`,
   `transfer`.`supervisor_abroad` AS `supervisor_abroad`,
   `transfer`.`visa` AS `visa`,
   `transfer`.`vaccination` AS `vaccination`,
   `transfer`.`wishlist` AS `wishlist`,
   `transfer`.`trans_sponsorship` AS `trans_sponsorship`,
   `transfer`.`trans_visa` AS `trans_visa`
FROM ((((((((`student_new` left join `alumni` on((`alumni`.`student_id` = `student_new`.`personalid`))) left join `transfer` on((`transfer`.`studentid` = `student_new`.`personalid`))) left join `home_address` on((`home_address`.`studentid` = `student_new`.`personalid`))) left join `foreign_address` on((`foreign_address`.`studentid` = `student_new`.`personalid`))) left join `language_english` on((`language_english`.`studentid` = `student_new`.`personalid`))) left join `language_german` on((`language_german`.`studentid` = `student_new`.`personalid`))) left join `study_home` on((`study_home`.`studentid` = `student_new`.`personalid`))) left join `study_host` on((`study_host`.`studentid` = `student_new`.`personalid`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
