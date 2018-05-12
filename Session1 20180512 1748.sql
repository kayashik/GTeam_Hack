-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema session1
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ session1;
USE session1;

--
-- Table structure for table `session1`.`countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `session1`.`countries`
--

/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`ID`,`Name`) VALUES 
 (1,'Afghanistan'),
 (2,'Albania'),
 (3,'Algeria'),
 (4,'Andorra'),
 (5,'Angola'),
 (6,'Antigua & Deps'),
 (7,'Argentina'),
 (8,'Armenia'),
 (9,'Australia'),
 (10,'Austria'),
 (11,'Azerbaijan'),
 (12,'Bahamas'),
 (13,'Bahrain'),
 (14,'Bangladesh'),
 (15,'Barbados'),
 (16,'Belarus'),
 (17,'Belgium'),
 (18,'Belize'),
 (19,'Benin'),
 (20,'Bhutan'),
 (21,'Bolivia'),
 (22,'Bosnia Herzegovina'),
 (23,'Botswana'),
 (24,'Brazil'),
 (25,'Brunei'),
 (26,'Bulgaria'),
 (27,'Burkina'),
 (28,'Burundi'),
 (29,'Cambodia'),
 (30,'Cameroon'),
 (31,'Canada'),
 (32,'Cape Verde'),
 (33,'Central African Rep'),
 (34,'Chad'),
 (35,'Chile'),
 (36,'China'),
 (37,'Colombia'),
 (38,'Comoros'),
 (39,'Congo'),
 (40,'Congo {Democratic Rep}'),
 (41,'Costa Rica'),
 (42,'Croatia'),
 (43,'Cuba'),
 (44,'Cyprus'),
 (45,'Czech Republic'),
 (46,'Denmark'),
 (47,'Djibouti'),
 (48,'Dominica'),
 (49,'Dominican Republic'),
 (50,'East Timor'),
 (51,'Ecuador'),
 (52,'Egypt'),
 (53,'El Salvador'),
 (54,'Equatorial Guinea');
INSERT INTO `countries` (`ID`,`Name`) VALUES 
 (55,'Eritrea'),
 (56,'Estonia'),
 (57,'Ethiopia'),
 (58,'Fiji'),
 (59,'Finland'),
 (60,'France'),
 (61,'Gabon'),
 (62,'Gambia'),
 (63,'Georgia'),
 (64,'Germany'),
 (65,'Ghana'),
 (66,'Greece'),
 (67,'Grenada'),
 (68,'Guatemala'),
 (69,'Guinea'),
 (70,'Guinea-Bissau'),
 (71,'Guyana'),
 (72,'Haiti'),
 (73,'Honduras'),
 (74,'Hungary'),
 (75,'Iceland'),
 (76,'India'),
 (77,'Indonesia'),
 (78,'Iran'),
 (79,'Iraq'),
 (80,'Ireland {Republic}'),
 (81,'Israel'),
 (82,'Italy'),
 (83,'Ivory Coast'),
 (84,'Jamaica'),
 (85,'Japan'),
 (86,'Jordan'),
 (87,'Kazakhstan'),
 (88,'Kenya'),
 (89,'Kiribati'),
 (90,'Korea North'),
 (91,'Korea South'),
 (92,'Kosovo'),
 (93,'Kuwait'),
 (94,'Kyrgyzstan'),
 (95,'Laos'),
 (96,'Latvia'),
 (97,'Lebanon'),
 (98,'Lesotho'),
 (99,'Liberia'),
 (100,'Libya'),
 (101,'Liechtenstein'),
 (102,'Lithuania'),
 (103,'Luxembourg'),
 (104,'Macedonia'),
 (105,'Madagascar'),
 (106,'Malawi'),
 (107,'Malaysia'),
 (108,'Maldives'),
 (109,'Mali'),
 (110,'Malta');
INSERT INTO `countries` (`ID`,`Name`) VALUES 
 (111,'Marshall Islands'),
 (112,'Mauritania'),
 (113,'Mauritius'),
 (114,'Mexico'),
 (115,'Micronesia'),
 (116,'Moldova'),
 (117,'Monaco'),
 (118,'Mongolia'),
 (119,'Montenegro'),
 (120,'Morocco'),
 (121,'Mozambique'),
 (122,'Myanmar, {Burma}'),
 (123,'Namibia'),
 (124,'Nauru'),
 (125,'Nepal'),
 (126,'Netherlands'),
 (127,'New Zealand'),
 (128,'Nicaragua'),
 (129,'Niger'),
 (130,'Nigeria'),
 (131,'Norway'),
 (132,'Oman'),
 (133,'Pakistan'),
 (134,'Palau'),
 (135,'Panama'),
 (136,'Papua New Guinea'),
 (137,'Paraguay'),
 (138,'Peru'),
 (139,'Philippines'),
 (140,'Poland'),
 (141,'Portugal'),
 (142,'Qatar'),
 (143,'Romania'),
 (144,'Russian Federation'),
 (145,'Rwanda'),
 (146,'St Kitts & Nevis'),
 (147,'St Lucia'),
 (148,'Saint Vincent & the Grenadines'),
 (149,'Samoa'),
 (150,'San Marino'),
 (151,'Sao Tome & Principe'),
 (152,'Saudi Arabia'),
 (153,'Senegal'),
 (154,'Serbia'),
 (155,'Seychelles'),
 (156,'Sierra Leone'),
 (157,'Singapore'),
 (158,'Slovakia');
INSERT INTO `countries` (`ID`,`Name`) VALUES 
 (159,'Slovenia'),
 (160,'Solomon Islands'),
 (161,'Somalia'),
 (162,'South Africa'),
 (163,'South Sudan'),
 (164,'Spain'),
 (165,'Sri Lanka'),
 (166,'Sudan'),
 (167,'Suriname'),
 (168,'Swaziland'),
 (169,'Sweden'),
 (170,'Switzerland'),
 (171,'Syria'),
 (172,'Taiwan'),
 (173,'Tajikistan'),
 (174,'Tanzania'),
 (175,'Thailand'),
 (176,'Togo'),
 (177,'Tonga'),
 (178,'Trinidad & Tobago'),
 (179,'Tunisia'),
 (180,'Turkey'),
 (181,'Turkmenistan'),
 (182,'Tuvalu'),
 (183,'Uganda'),
 (184,'Ukraine'),
 (185,'United Arab Emirates'),
 (186,'United Kingdom'),
 (187,'United States'),
 (188,'Uruguay'),
 (189,'Uzbekistan'),
 (190,'Vanuatu'),
 (191,'Vatican City'),
 (192,'Venezuela'),
 (193,'Vietnam'),
 (194,'Yemen'),
 (195,'Zambia'),
 (196,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;


--
-- Table structure for table `session1`.`events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session1`.`events`
--

/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` (`Id`,`Name`) VALUES 
 (1,'Login'),
 (2,'Logout');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;


--
-- Table structure for table `session1`.`offices`
--

DROP TABLE IF EXISTS `offices`;
CREATE TABLE `offices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryID` int(11) NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  `Phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `Contact` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Office_Country` (`CountryID`),
  CONSTRAINT `FK_Office_Country` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `session1`.`offices`
--

/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` (`ID`,`CountryID`,`Title`,`Phone`,`Contact`) VALUES 
 (1,185,'Abu dhabi','638-757-8582\r\n','MIchael Malki'),
 (3,52,'Cairo','252-224-8525','David Johns'),
 (4,13,'Bahrain','542-227-5825','Katie Ballmer'),
 (5,142,'Doha','758-278-9597','Ariel Levy'),
 (6,152,'Riyadh','285-285-1474','Andrew Hobart');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;


--
-- Table structure for table `session1`.`roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `ID` int(11) NOT NULL,
  `Title` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `session1`.`roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`ID`,`Title`) VALUES 
 (1,'Administrator'),
 (2,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Table structure for table `session1`.`sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserId` int(10) unsigned NOT NULL DEFAULT '0',
  `isActive` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session1`.`sessions`
--

/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


--
-- Table structure for table `session1`.`statuses`
--

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session1`.`statuses`
--

/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` (`Id`,`Name`) VALUES 
 (1,'Success'),
 (2,'Error');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;


--
-- Table structure for table `session1`.`tracking`
--

DROP TABLE IF EXISTS `tracking`;
CREATE TABLE `tracking` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserId` int(10) unsigned NOT NULL DEFAULT '0',
  `EventId` int(10) unsigned NOT NULL DEFAULT '0',
  `EventStatusId` int(10) unsigned NOT NULL DEFAULT '0',
  `Note` text,
  `Datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SessionId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_event` (`EventId`),
  KEY `FK_status` (`EventStatusId`),
  KEY `FK_session` (`SessionId`),
  CONSTRAINT `FK_session` FOREIGN KEY (`SessionId`) REFERENCES `sessions` (`Id`),
  CONSTRAINT `FK_event` FOREIGN KEY (`EventId`) REFERENCES `events` (`Id`),
  CONSTRAINT `FK_status` FOREIGN KEY (`EventStatusId`) REFERENCES `statuses` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session1`.`tracking`
--

/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;


--
-- Table structure for table `session1`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Email` varchar(150) COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) COLLATE utf8_bin NOT NULL,
  `FirstName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8_bin NOT NULL,
  `OfficeID` int(11) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Users_Offices` (`OfficeID`),
  KEY `FK_Users_Roles` (`RoleID`),
  CONSTRAINT `FK_Users_Offices` FOREIGN KEY (`OfficeID`) REFERENCES `offices` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Users_Roles` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `session1`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`,`RoleID`,`Email`,`Password`,`FirstName`,`LastName`,`OfficeID`,`Birthdate`,`Active`) VALUES 
 (1,1,'j.doe@amonic.com','202cb962ac59075b964b07152d234b70','John','Doe',1,'1983-01-13',1),
 (2,2,'k.omar@amonic.com','be3ac64e67e84198f03f45b661f2124a','Karim','Omar',1,'1980-03-19',1),
 (3,2,'h.saeed@amonic.com','7b7a53e239400a13bd6be6c91c4f6c4e','Hannan','Saeed',3,'1989-12-20',1),
 (4,2,'a.hobart@amonic.com','4d702022947b6fed64518d0d7cfc692d','Andrew','Hobart',6,'1990-01-30',1),
 (5,2,'k.anderson@amonic.com','e9dae45ec08b498f7e1af247757c9b35','Katrin','Anderson',5,'1992-11-10',1),
 (6,2,'h.wyrick@amonic.com','4d2e7bd33c475784381a64e43e50922f','Hava','Wyrick',1,'1988-08-08',1),
 (7,2,'marie.horn@amonic.com','c5fe25896e49ddfe996db7508cf00534','Marie','Horn',4,'1981-04-06',1),
 (8,2,'m.osteen@amonic.com','0fbce6c74ff376d18cb352e7fdc6273b','Milagros','Osteen',1,'1991-02-03',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Procedure `session1`.`AdministrationMenu_procedure`
--

DROP PROCEDURE IF EXISTS `AdministrationMenu_procedure`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AdministrationMenu_procedure`(office_ varchar(45))
BEGIN

select u.FirstName
  ,u.LastName
  ,year(datediff(now(), u.BirthDate))
  ,roles.Title
  ,u.email
  ,offices.Title
  ,u.Active
  ,a_ses.Id

  from users u
    join roles on u.roleId = roles.Id
    join offices on u.officeId = office.Id
    left join (select Id, UserId
            from sessions
            where isActive = 1) a_ses on u.Id=a_ses.UserId
  where offices.Title = office_;

END $$

DELIMITER ;

--
-- Procedure `session1`.`Test1`
--

DROP PROCEDURE IF EXISTS `Test1`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Test1`()
BEGIN

select * from  `session1`.users;

END $$

DELIMITER ;

--
-- Function `session1`.`AddUser_function`
--

DROP FUNCTION IF EXISTS `AddUser_function`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `AddUser_function`(office_ varchar(45), role_ varchar(45), email_ varchar(45), password_ varchar(45), fn_ varchar(45), ln_ varchar(45), bd_ varchar(45), active_ int) RETURNS int(11)
BEGIN

declare roleid_ int;
declare officeid_ int;
declare exist int;

select id into exist from users where email = email_;

select id into roleid_ from roles where Title = role_;
select id into officeid_ from offices where Title = office_;

if isnull(exist) then
  insert users values ( null, roleid_, email_, md5(password_), fn_, ln_, officeif_, bd_, active_);
  return 0;
else
  return 1;
end if;
END $$

DELIMITER ;

--
-- Function `session1`.`ChangeRole_function`
--

DROP FUNCTION IF EXISTS `ChangeRole_function`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `ChangeRole_function`(email_ varchar(45), firstName_ varchar(45), lastName_ varchar(45), office_ varchar(45), role_ varchar(45)) RETURNS int(11)
BEGIN

declare userId integer;
declare roleId_ integer;

select u.Id into userId

  from users u
    join offices on u.officeId = office.Id

  where u.email = email_ and
    u.firstName = firstName_ and
    u.lastName = lastName_ and
  offices.Title = office_;
 if isnull(userid) then
    return 1;
 end if;

select id into roleid_ from roles where Title = role_;

update users set roleid = roleid_ where id = userid;
return 0;

END $$

DELIMITER ;

--
-- Function `session1`.`CheckLogin`
--

DROP FUNCTION IF EXISTS `CheckLogin`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `CheckLogin`(sessionId integer) RETURNS int(11)
BEGIN

  Declare userId integer;
  select UserId into userId from sessions WHERE sessionId = sessionId and isActive = 1;

  if ISNULL(userId) then
    return 0;
  else
    return 1;
  end if;

END $$

DELIMITER ;

--
-- Function `session1`.`CheckLogin_function`
--

DROP FUNCTION IF EXISTS `CheckLogin_function`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `CheckLogin_function`(sessionId integer) RETURNS int(11)
BEGIN

  Declare userId integer;
  Declare roleId integer;

    select ses.UserId, u.roleId into userId
    from sessions ses
      join users on ses.UserId = users.Id
    WHERE sessionId = sessionId and isActive = 1;

  if ISNULL(userId) then
    return 0;
  else
    return roleId;
  end if;

END $$

DELIMITER ;

--
-- Function `session1`.`EnableDisable_function`
--

DROP FUNCTION IF EXISTS `EnableDisable_function`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `EnableDisable_function`(email_ varchar(45), firstName_ varchar(45), lastName_ varchar(45), office_ varchar(45), active_ int) RETURNS int(11)
BEGIN

declare userId integer;

select u.Id into userId

  from users u
    join offices on u.officeId = office.Id

  where u.email = email_ and
    u.firstName = firstName_ and
    u.lastName = lastName_ and
  offices.Title = office_;
 if isnull(userid) then
    return 1;
 end if;

update users set active = active_ where id = userid;
return 0;

END $$

DELIMITER ;

--
-- Function `session1`.`Login_function`
--

DROP FUNCTION IF EXISTS `Login_function`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `Login_function`(login varchar(45), pass varchar(45)) RETURNS int(11)
BEGIN

  Declare userId_ integer;
  Declare sessionId integer;
  Declare eventId integer;
  Declare statusId integer;
  Declare userIsActive integer;

  select Id, Active into userId_, userIsActive
	  from users u
	  where u.email = login and u.`password` = MD5(pass) ;

  if ISNULL(userId_) then
    return 0;
  end if;

  if userIsActive = 0 then
    return -1;
  end if;

  update sessions set isActive = 0 where userId = userId_;

  insert sessions values(NULL, userId_, 1);
  select Max(Id) into sessionId from sessions;

  select Id into eventId from `events` where Name = 'Login';
  select Id into statusId from `events` where Name = 'Success';

  insert tracking values(NULL, userId_, eventId, statusId, Null, NOW(), sessionId);
  return sessionId;

END $$

DELIMITER ;

--
-- Function `session1`.`Logout_function`
--

DROP FUNCTION IF EXISTS `Logout_function`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `Logout_function`(sessionId integer) RETURNS int(11)
BEGIN

  Declare eventId integer;
  Declare statusId integer;
  Declare userId integer;

  select UserId into userId from sessions WHERE sessionId = sessionId and isActive = 1;

  if ISNULL(userId) then
    return 1;
  end if;

  UPDATE sessions SET isActive = 0
    WHERE sessionId = sessionId;

  select Id into eventId from `events` where Name = 'Logout';
  select Id into statusId from `events` where Name = 'Success';

  insert tracking values(NULL, userId, eventId, statusId, Null, NOW(), sessionId);

  return 0;

END $$

DELIMITER ;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
