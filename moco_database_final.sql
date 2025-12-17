CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_ID` int NOT NULL,
  `Street_Name` varchar(45) DEFAULT NULL,
  `Street_Prefix` varchar(45) DEFAULT NULL,
  `Street_Suffix` varchar(45) DEFAULT NULL,
  `Street_Type` varchar(45) DEFAULT NULL,
  `Address_Number` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zipcode` varchar(45) DEFAULT NULL,
  `Place_ID` int DEFAULT NULL,
  PRIMARY KEY (`Address_ID`),
  KEY `Place_ID_idx` (`Place_ID`),
  CONSTRAINT `Place_ID` FOREIGN KEY (`Place_ID`) REFERENCES `place` (`Place_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (137180,'ROCKVILLE','','','PIK','1000','ROCKVILLE','MD','20852',137180),(137181,'GLENALLAN','','','AVE','2300','SILVER SPRING','MD','20906',137181),(137182,'MAINE','','','AVE','8900','SILVER SPRING','MD','20910',137182),(137183,'WEST','E','','HWY','1200','SILVER SPRING','MD','20910',137183),(137184,'RIDGELINE','','','DR','9900','MONTGOMERY VILLAGE','MD','20886',137184),(137185,'PARK','N','','AVE','4600','CHEVY CHASE','MD','20815',137185),(137186,'GEORGIA','','','AVE','','SILVER SPRING','MD','20902',137186),(137187,'WESTERN','','','AVE','5300','CHEVY CHASE','MD','20815',137187),(137188,'OBSERVATION','','','DR','19800','GERMANTOWN','MD','20876',137188),(137189,'SCOTTSBURY','','','CT','1','GERMANTOWN','MD','20876',137189),(137190,'COLESVILLE','','','RD','8400','SILVER SPRING','MD','20910',137190),(137191,'CASTLE','','','BLV','13900','SILVER SPRING','MD','20904',137191),(137192,'CLOPPER','','','RD','800','GAITHERSBURG','MD','20878',137192),(137193,'FLOWER','','','AVE','8700','SILVER SPRING','MD','20901',137193),(137194,'GEORGIA','','','AVE','14300','SILVER SPRING','MD','20906',137194),(137195,'FREDERICK','','','RD','20900','GERMANTOWN','MD','20876',137195),(137196,'BROSCHART','','','RD','15000','ROCKVILLE','MD','20850',137196),(137197,'OLD GEORGETOWN','','','RD','','BETHESDA','MD','20814',137197),(137198,'RANDOLPH','','','RD','','SILVER SPRING','MD','20904',137198),(137199,'POOKS HILL','','','RD','5200','BETHESDA','MD','20814',137199),(137200,'EDNOR VIEW','','','TER','18000','ASHTON','MD','20861',137200),(137201,'FENTON','','','ST','8400','SILVER SPRING','MD','20910',137201),(137202,'HOLTON','','','LA','1200','TAKOMA PARK','MD','20912',137202),(137203,'BEL PRE','','','RD','3800','SILVER SPRING','MD','20906',137203),(137204,'WAYNE','','','AVE','800','SILVER SPRING','MD','20910',137204),(137205,'PARHAM','','','RD','1600','SILVER SPRING','MD','20903',137205),(137206,'BRANDERMILL','','','DR','','GERMANTOWN','MD','20876',137206),(137207,'MEDICAL CENTER','','','DR','9900','ROCKVILLE','MD','20850',137207),(137208,'MILESTONE','','','DR','1000','SILVER SPRING','MD','20904',137208),(137209,'GLENMONT','','','CIR','2300','SILVER SPRING','MD','20902',137209),(137210,'WAYNE','','','AVE','1100','SILVER SPRING','MD','20910',137210),(137211,'GOODHILL','','','RD','12700','SILVER SPRING','MD','20906',137211),(137212,'REPRISE','','','DR','10100','ROCKVILLE','MD','20850',137212),(137213,'SOUTHLAWN','','','LA','600','ROCKVILLE','MD','20850',137213),(137214,'SOUTHLAWN','','','LA','600','ROCKVILLE','MD','20850',137214),(137215,'RIVER','','','RD','10100','POTOMAC','MD','20854',137215),(137216,'RIVER','','','RD','10100','POTOMAC','MD','20854',137216),(137217,'BAYNE','','','ST','4500','ROCKVILLE','MD','20853',137217),(137218,'GLENALLAN','','','AVE','2300','SILVER SPRING','MD','20906',137218),(137219,'EMORY GROVE','','','RD','9500','GAITHERSBURG','MD','20877',137219),(137220,'NEW HAMPSHIRE','','','AVE','7600','TAKOMA PARK','MD','20912',137220),(137221,'PICCARD','','','DR','1300','ROCKVILLE','MD','20850',137221),(137222,'NEW HAMPSHIRE','','','AVE','13900','SILVER SPRING','MD','20904',137222),(137223,'ROBEY','','','RD','13600','SILVER SPRING','MD','20904',137223),(137224,'BEAVERWOOD','','','LA','3100','SILVER SPRING','MD','20906',137224),(137225,'BEAVERWOOD','','','LA','3100','SILVER SPRING','MD','20906',137225),(137226,'SAMPSON','','','RD','4100','SILVER SPRING','MD','20906',137226),(137227,'RIPLEY','','','ST','1100','SILVER SPRING','MD','20910',137227),(137228,'GLENALLAN','','','AVE','2500','SILVER SPRING','MD','20906',137228),(137229,'DORSET','','','AVE','4700','CHEVY CHASE','MD','20815',137229),(137230,'GEORGIA','','','AVE','14200','SILVER SPRING','MD','20906',137230),(137231,'KING JAMES','','','WAY','17200','GAITHERSBURG','MD','20877',137231),(137232,'KENSINGTON','','','PKW','10200','KENSINGTON','MD','20895',137232),(137233,'STEWART','','','LA','11500','SILVER SPRING','MD','20904',137233),(137234,'BALLINGER','','','DR','','BURTONSVILLE','MD','20866',137234),(137235,'BLANDFORD','','','ST','600','ROCKVILLE','MD','20850',137235),(137236,'DURANT','','','ST','15300','SILVER SPRING','MD','20905',137236),(137237,'ROCKVILLE','','','PIK','11800','ROCKVILLE','MD','20852',137237),(137238,'ROCKVILLE','','','PIK','11800','ROCKVILLE','MD','20852',137238),(137239,'ROCKVILLE','','','PIK','11800','ROCKVILLE','MD','20852',137239),(137240,'ROCKVILLE','','','PIK','11800','ROCKVILLE','MD','20852',137240),(137241,'BLANDFORD','','','ST','600','ROCKVILLE','MD','20850',137241),(137242,'MONROE','','','ST','700','ROCKVILLE','MD','20850',137242),(137243,'MONROE','','','ST','700','ROCKVILLE','MD','20850',137243),(137244,'MONROE','','','ST','700','ROCKVILLE','MD','20850',137244),(137245,'OLNEY LAYTONSVILLE','','','RD','','OLNEY','MD','20832',137245),(137246,'HATHAWAY','','','DR','','SILVER SPRING','MD','20906',137246),(137247,'HARVEY','','','RD','9300','SILVER SPRING','MD','20910',137247),(137248,'COLESVILLE','','','RD','8500','SILVER SPRING','MD','20910',137248),(137249,'UNIVERSITY','','','BLV','2900','KENSINGTON','MD','20895',137249),(137250,'THOMAS FARM','','','RD','19200','MONTGOMERY VILLAGE','MD','20886',137250),(137251,'BALTIMORE','','','AVE','7400','TAKOMA PARK','MD','20912',137251),(137252,'SKYMIST','','','TER','4400','OLNEY','MD','20832',137252),(137253,'COLESVILLE','','','RD','','SILVER SPRING','MD','20910',137253),(137254,'POPLAR','','','AVE','6500','TAKOMA PARK','MD','20912',137254),(137255,'CRYSTAL ROCK','','','DR','19400','GERMANTOWN','MD','20874',137255),(137256,'13TH','','','AVE','7200','TAKOMA PARK','MD','20912',137256),(137257,'13TH','','','AVE','7200','TAKOMA PARK','MD','20912',137257),(137258,'LAYTONIA','','','DR','7600','GAITHERSBURG','MD','20877',137258),(137259,'PRINCE PHILIP','','','DR','','OLNEY','MD','20832',137259),(137260,'PICCARD','','','DR','1300','ROCKVILLE','MD','20850',137260),(137261,'MONROE','','','ST','1','ROCKVILLE','MD','20850',137261),(137262,'JACKSON','','','AVE','7400','TAKOMA PARK','MD','20912',137262),(137263,'FERN','','','ST','11300','SILVER SPRING','MD','20902',137263),(137264,'POTOMAC VALLEY','','','RD','1200','ROCKVILLE','MD','20850',137264),(137265,'UNIVERSITY','','','BLV','800','SILVER SPRING','MD','20903',137265),(137266,'TILDEN','','','LA','6300','ROCKVILLE','MD','20852',137266),(137267,'STEWART','','','LA','11600','SILVER SPRING','MD','20904',137267),(137268,'ELLSWORTH','','','DR','800','SILVER SPRING','MD','20910',137268),(137269,'BRIGHTVIEW','','','ST','3700','SILVER SPRING','MD','20902',137269),(137270,'PHEASANT RUN','','','DR','900','GAITHERSBURG','MD','20878',137270),(137271,'OAK LEAF','','','DR','11200','SILVER SPRING','MD','20901',137271),(137272,'WATERS','','','RD','19500','GERMANTOWN','MD','20874',137272),(137273,'GEORGIA','','','AVE','8500','SILVER SPRING','MD','20910',137273),(137274,'CAROUSEL','','','CT','400','GAITHERSBURG','MD','20877',137274),(137275,'WILLOW','','','AVE','7100','TAKOMA PARK','MD','20912',137275),(137276,'WELLINGTON','','','DR','4800','CHEVY CHASE','MD','20815',137276),(137277,'VEIRS MILL','','','RD','11000','SILVER SPRING','MD','20902',137277),(137278,'GREENTREE','','','RD','6300','BETHESDA','MD','20817',137278),(137279,'FAIRMONT','','','AVE','4900','BETHESDA','MD','20814',137279);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agency` (
  `Agency_ID` int NOT NULL,
  `Agency_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Agency_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (137180,'RCPD'),(137181,'MCPD'),(137182,'MCPD'),(137183,'MCPD'),(137184,'MCPD'),(137185,'MCPD'),(137186,'MCPD'),(137187,'MCPD'),(137188,'MCPD'),(137189,'MCPD'),(137190,'MCPD'),(137191,'MCPD'),(137192,'MCPD'),(137193,'MCPD'),(137194,'MCPD'),(137195,'MCPD'),(137196,'MCPD'),(137197,'MCPD'),(137198,'MCPD'),(137199,'MCPD'),(137200,'MCPD'),(137201,'MCPD'),(137202,'TPPD'),(137203,'MCPD'),(137204,'MCPD'),(137205,'MCPD'),(137206,'MCPD'),(137207,'MCPD'),(137208,'MCPD'),(137209,'MCPD'),(137210,'MCPD'),(137211,'MCPD'),(137212,'MCPD'),(137213,'RCPD'),(137214,'RCPD'),(137215,'MCPD'),(137216,'MCPD'),(137217,'MCPD'),(137218,'MCPD'),(137219,'MCPD'),(137220,'TPPD'),(137221,'RCPD'),(137222,'MCPD'),(137223,'MCPD'),(137224,'MCPD'),(137225,'MCPD'),(137226,'MCPD'),(137227,'MCPD'),(137228,'MCPD'),(137229,'MCPD'),(137230,'MCPD'),(137231,'MCPD'),(137232,'MCPD'),(137233,'MCPD'),(137234,'MCPD'),(137235,'RCPD'),(137236,'MCPD'),(137237,'MCPD'),(137238,'MCPD'),(137239,'MCPD'),(137240,'MCPD'),(137241,'RCPD'),(137242,'RCPD'),(137243,'MCPD'),(137244,'MCPD'),(137245,'MCPD'),(137246,'MCPD'),(137247,'MCPD'),(137248,'MCPD'),(137249,'MCPD'),(137250,'MCPD'),(137251,'TPPD'),(137252,'MCPD'),(137253,'MCPD'),(137254,'TPPD'),(137255,'MCPD'),(137256,'TPPD'),(137257,'TPPD'),(137258,'MCPD'),(137259,'MCPD'),(137260,'RCPD'),(137261,'RCPD'),(137262,'TPPD'),(137263,'MCPD'),(137264,'RCPD'),(137265,'MCPD'),(137266,'MCPD'),(137267,'MCPD'),(137268,'MCPD'),(137269,'MCPD'),(137270,'GPD'),(137271,'MCPD'),(137272,'MCPD'),(137273,'MCPD'),(137274,'MCPD'),(137275,'TPPD'),(137276,'MCPD'),(137277,'MCPD'),(137278,'MCPD'),(137279,'MCPD');
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidents` (
  `Incidents_ID` int NOT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Victims` int DEFAULT NULL,
  `Dispatch_Date` date DEFAULT NULL,
  `Report_ID` int NOT NULL,
  PRIMARY KEY (`Incidents_ID`),
  KEY `Report_ID_idx` (`Report_ID`),
  CONSTRAINT `Report_ID` FOREIGN KEY (`Report_ID`) REFERENCES `police_report` (`Report_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (201408132,'2023-01-09','2023-01-09',1,'2023-01-09',230001340),(201408141,'2023-01-09','2023-01-09',1,'2023-01-09',230001357),(201408156,'2023-01-09','2023-01-09',1,'2023-01-09',230001386),(201408162,'2023-01-09','2023-01-09',1,'2023-01-09',230001384),(201408169,'2023-01-09','2023-01-09',1,'2023-01-09',230001396),(201408175,'2023-01-09','2023-01-09',1,'2023-01-09',230001385),(201408179,'2023-01-09','2023-01-09',1,'2023-01-09',230001402),(201408180,'2023-01-09','2023-01-09',1,'2023-01-09',230001409),(201408207,'2023-01-09','2023-01-09',1,'2023-01-09',230001423),(201408208,'2023-01-09','2023-01-09',1,'2023-01-09',230001387),(201408213,'2023-01-10','2023-01-10',1,'2023-01-10',230001433),(201408218,'2023-01-10','2023-01-10',1,'2023-01-10',230001430),(201408219,'2023-01-09','2023-01-10',1,'2023-01-10',230001437),(201408222,'2023-01-09','2023-01-10',1,'2023-01-10',230001439),(201408223,'2023-01-09','2023-01-10',1,'2023-01-10',230001440),(201408230,'2023-01-09','2023-01-10',1,'2023-01-10',230001445),(201408246,'2023-01-09','2023-01-10',1,'2023-01-10',230001455),(201408249,'2023-01-09','2023-01-10',1,'2023-01-10',230001452),(201408253,'2023-01-09','2023-01-10',1,'2023-01-10',230001476),(201408254,'2023-01-10','2023-01-10',1,'2023-01-10',230001457),(201408255,'2023-01-09','2023-01-10',1,'2023-01-10',230001451),(201408257,'2023-01-10','2023-01-10',1,'2023-01-10',230001466),(201408265,'2023-01-10','2023-01-10',1,'2023-01-10',230001486),(201408280,'2023-01-09','2023-01-09',1,'2023-01-09',230001371),(201408284,'2023-01-10','2023-01-10',1,'2023-01-10',230001522),(201408285,'2023-01-09','2023-01-10',1,'2023-01-10',230001521),(201408294,'2023-01-10','2023-01-10',1,'2023-01-10',230001519),(201408300,'2023-01-09','2023-01-10',1,'2023-01-10',230001537),(201408306,'2023-01-10','2023-01-10',1,'2023-01-10',230001567);
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents_address`
--

DROP TABLE IF EXISTS `incidents_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidents_address` (
  `Incidents_ID` int NOT NULL,
  `Address_ID` int NOT NULL,
  PRIMARY KEY (`Incidents_ID`,`Address_ID`),
  KEY `Address_ID_idx` (`Address_ID`),
  CONSTRAINT `Address_ID` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`),
  CONSTRAINT `Incidents_ID` FOREIGN KEY (`Incidents_ID`) REFERENCES `incidents` (`Incidents_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents_address`
--

LOCK TABLES `incidents_address` WRITE;
/*!40000 ALTER TABLE `incidents_address` DISABLE KEYS */;
INSERT INTO `incidents_address` VALUES (201408132,137180),(201408255,137181),(201408141,137187),(201408280,137189),(201408208,137198),(201408175,137199),(201408156,137200),(201408162,137202),(201408219,137203),(201408169,137206),(201408223,137209),(201408222,137212),(201408230,137213),(201408230,137214),(201408179,137217),(201408253,137218),(201408180,137221),(201408246,137223),(201408249,137229),(201408300,137231),(201408285,137234),(201408207,137235),(201408218,137241),(201408257,137242),(201408213,137245),(201408254,137252),(201408284,137259),(201408265,137261),(201408306,137263),(201408294,137264);
/*!40000 ALTER TABLE `incidents_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nibrs_code`
--

DROP TABLE IF EXISTS `nibrs_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nibrs_code` (
  `NIBRS_Code` varchar(45) NOT NULL,
  `NIBRS_Descriptor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NIBRS_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nibrs_code`
--

LOCK TABLES `nibrs_code` WRITE;
/*!40000 ALTER TABLE `nibrs_code` DISABLE KEYS */;
INSERT INTO `nibrs_code` VALUES ('120','Robbery'),('220','Burglary/Breaking and Entering'),('240','Motor Vehicle Theft'),('250','Counterfeiting/Forgery'),('290','Destruction/Damage/Vandalism of Property');
/*!40000 ALTER TABLE `nibrs_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offence_code`
--

DROP TABLE IF EXISTS `offence_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offence_code` (
  `Offence_Code` int NOT NULL,
  `Offence_Descriptor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Offence_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offence_code`
--

LOCK TABLES `offence_code` WRITE;
/*!40000 ALTER TABLE `offence_code` DISABLE KEYS */;
INSERT INTO `offence_code` VALUES (1103,'RAPE - STRONG-ARM'),(1116,'STATUTORY RAPE - NO FORCE'),(1206,'ROBBERY - STREET-STRONG-ARM'),(1212,'ROBBERY - CARJACKING - ARMED'),(1214,'ROBBERY - KNIFE'),(1313,'ASSAULT - SIMPLE'),(1314,'ASSAULT - AGGRAVATED - GUN'),(1399,'ASSAULT - 2ND DEGREE'),(2204,'BURGLARY - NO FORCED ENTRY-RESIDENTIAL'),(2205,'BURGLARY - NO FORCED ENTRY-NONRESIDENTIAL'),(2302,'LARCENY - PURSE SNATCHING - NO FORCE'),(2303,'LARCENY - SHOPLIFTING'),(2304,'LARCENY - AUTO PARTS'),(2305,'LARCENY - FROM AUTO'),(2308,'LARCENY - FROM BLDG'),(2399,'LARCENY (DESCRIBE OFFENSE)'),(2404,'AUTO THEFT - VEHICLE THEFT'),(2499,'STOLEN VEHICLE (DESCRIBE OFFENSE)'),(2501,'FORGERY OF CHECKS'),(2610,'IDENTITY THEFT'),(2902,'DAMAGE PROPERTY - PRIVATE'),(2999,'DAMAGE PROPERTY (DESCRIBE OFFENSE)'),(4801,'OBSTRUCT POLICE - RESISTING OFFICER'),(5016,'OBSTRUCT GOVT - VIOLATION OF A COURT ORDER'),(5311,'PUBLIC PEACE - DISORDERLY CONDUCT'),(5404,'DRIVING UNDER THE INFLUENCE LIQUOR'),(5499,'TRAFFIC OFFENSES (DESCRIBE OFFENSE)'),(5707,'TRESPASSING'),(9021,'JUVENILE - RUNAWAY'),(9101,'SUDDEN DEATH'),(9105,'LOST PROPERTY'),(9107,'MISSING PERSON'),(9108,'RECOVERED PROPERTY - MONT CO.'),(9109,'RECOVERED PROPERTY - OTHER'),(9112,'MENTAL TRANSPORT - ONLY'),(9113,'MENTAL ILLNESS - EMERGENCY PETITION'),(9199,'POLICE INFORMATION'),(9201,'OVERDOSE');
/*!40000 ALTER TABLE `offence_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `Place_ID` int NOT NULL,
  `Place_Descriptor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Place_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (137180,'Residence - Apartment/Condo'),(137181,'Parking Lot - Residential'),(137182,'Residence -Townhouse/Duplex'),(137183,'Residence - Apartment/Condo'),(137184,'Residence -Townhouse/Duplex'),(137185,'Street - Residential'),(137186,'Street - In vehicle'),(137187,'Retail - Beauty/Barber Shop'),(137188,'Hospital/Emergency Care Center'),(137189,'Residence - Single Family'),(137190,'Convenience Store'),(137191,'Residence - Apartment/Condo'),(137192,'Residence - Apartment/Condo'),(137193,'Liquor Store - County'),(137194,'Residence - Apartment/Condo'),(137195,'Retail - Department/Discount Store'),(137196,'Residence - Other'),(137197,'Street - In vehicle'),(137198,'Street - Commercial'),(137199,'Residence - Apartment/Condo'),(137200,'Residence - Single Family'),(137201,'Residence - Apartment/Condo'),(137202,'Street - Residential'),(137203,'Parking Lot - Residential'),(137204,'Grocery/Supermarket'),(137205,'Residence - Single Family'),(137206,'Street - Residential'),(137207,'Residence - Apartment/Condo'),(137208,'Other/Unknown'),(137209,'Parking Lot - Residential'),(137210,'Restaurant'),(137211,'School - Elementary/Secondary'),(137212,'Parking Lot - Residential'),(137213,'Parking Lot - Commercial'),(137214,'Parking Lot - Other'),(137215,'Retail - Drug Store/Pharmacy'),(137216,'Retail - Drug Store/Pharmacy'),(137217,'Residence - Single Family'),(137218,'Parking Lot - Residential'),(137219,'Residence - Single Family'),(137220,'Doctor/Dentist/Vet Office'),(137221,'Hospital/Emergency Care Center'),(137222,'Residence - Nursing Home'),(137223,'Parking Lot - Residential'),(137224,'Street - In vehicle'),(137225,'Street - In vehicle'),(137226,'Residence - Single Family'),(137227,'Residence - Apartment/Condo'),(137228,'Street - Residential'),(137229,'Residence - Single Family'),(137230,'Parking Lot - Residential'),(137231,'Parking Lot - Residential'),(137232,'Residence - Driveway'),(137233,'Hotel/Motel/Etc.'),(137234,'Street - Residential'),(137235,'Residence - Apartment/Condo'),(137236,'Other/Unknown'),(137237,'Street - Commercial'),(137238,'Street - Commercial'),(137239,'Street - Commercial'),(137240,'Street - Commercial'),(137241,'Street - Commercial'),(137242,'Residence - Apartment/Condo'),(137243,'Residence - Apartment/Condo'),(137244,'Residence - Apartment/Condo'),(137245,'Street - Other'),(137246,'Street - Other'),(137247,'Residence - Single Family'),(137248,'Restaurant'),(137249,'Grocery/Supermarket'),(137250,'Parking Lot - School'),(137251,'Street - Residential'),(137252,'Residence - Single Family'),(137253,'Street - Other'),(137254,'School - Elementary/Secondary'),(137255,'Residence - Apartment/Condo'),(137256,'Residence - Driveway'),(137257,'Residence - Driveway'),(137258,'Residence -Townhouse/Duplex'),(137259,'Street - Other'),(137260,'Parking Lot - Commercial'),(137261,'Parking Garage - Residential'),(137262,'Residence - Yard'),(137263,'Convenience Store'),(137264,'Residence - Nursing Home'),(137265,'Residence - Apartment/Condo'),(137266,'School - Elementary/Secondary'),(137267,'Residence - Apartment/Condo'),(137268,'Other/Unknown'),(137269,'Street - Residential'),(137270,'Residence - Single Family'),(137271,'Residence - Apartment/Condo'),(137272,'Residence - Apartment/Condo'),(137273,'Doctor/Dentist/Vet Office'),(137274,'Residence -Townhouse/Duplex'),(137275,'Residence - Driveway'),(137276,'Residence - Single Family'),(137277,'Parking Lot - Commercial'),(137278,'Residence - Other'),(137279,'Restaurant');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_district`
--

DROP TABLE IF EXISTS `police_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_district` (
  `Police_District_Number` varchar(45) NOT NULL,
  `Police_District_Name` varchar(45) DEFAULT NULL,
  `Agency_ID` int NOT NULL,
  PRIMARY KEY (`Police_District_Number`),
  KEY `Agency_ID_idx` (`Agency_ID`),
  CONSTRAINT `Agency_ID` FOREIGN KEY (`Agency_ID`) REFERENCES `agency` (`Agency_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_district`
--

LOCK TABLES `police_district` WRITE;
/*!40000 ALTER TABLE `police_district` DISABLE KEYS */;
INSERT INTO `police_district` VALUES ('1D','ROCKVILLE',137264),('2D','BETHESDA',137279),('3D','SILVER SPRING',137273),('4D','WHEATON',137277),('5D','GERMANTOWN',137272),('6D','MONTGOMERY VILLAGE',137274),('TPPD','TAKOMA PARK',137275);
/*!40000 ALTER TABLE `police_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_report`
--

DROP TABLE IF EXISTS `police_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_report` (
  `Report_ID` int NOT NULL,
  `Police_District_Number` varchar(45) DEFAULT NULL,
  `NIBRS_Code` varchar(45) DEFAULT NULL,
  `Offence_Code` int DEFAULT NULL,
  `Crime_Descriptor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Report_ID`),
  KEY `Police_District_Number_idx` (`Police_District_Number`),
  KEY `NIBRS_Code_idx` (`NIBRS_Code`),
  KEY `Offence_Code_idx` (`Offence_Code`),
  CONSTRAINT `Offence_Code` FOREIGN KEY (`Offence_Code`) REFERENCES `offence_code` (`Offence_Code`),
  CONSTRAINT `Police_District_Number` FOREIGN KEY (`Police_District_Number`) REFERENCES `police_district` (`Police_District_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_report`
--

LOCK TABLES `police_report` WRITE;
/*!40000 ALTER TABLE `police_report` DISABLE KEYS */;
INSERT INTO `police_report` VALUES (230001334,'2D','90Z',9199,'Other'),(230001340,'1D','13B',1399,'Crime Against Person'),(230001341,'3D','90Z',9108,'Other'),(230001346,'2D','13B',1399,'Crime Against Person'),(230001348,'6D','90Z',9113,'Other'),(230001355,'3D','13B',1399,'Crime Against Person'),(230001356,'5D','13A',1314,'Crime Against Person'),(230001357,'2D','23C',2303,'Crime Against Property'),(230001358,'2D','90J',5707,'Crime Against Society'),(230001362,'3D','90Z',9113,'Other'),(230001368,'3D','23C',2303,'Crime Against Property'),(230001370,'5D','23C',2303,'Crime Against Property'),(230001371,'5D','90Z',9199,'Other'),(230001372,'3D','23H',2399,'Crime Against Property'),(230001373,'6D','90Z',9107,'Other'),(230001374,'3D','250',2501,'Crime Against Property'),(230001376,'6D','90Z',9113,'Other'),(230001377,'2D','90Z',9199,'Other'),(230001383,'4D','90Z',9107,'Other'),(230001384,'TPPD','90Z',9109,'Other'),(230001385,'2D','90Z',9101,'Other'),(230001386,'4D','90Z',9101,'Other'),(230001387,'4D','90D',5404,'Crime Against Society'),(230001389,'4D','90Z',9199,'Other'),(230001390,'3D','90Z',9199,'Other'),(230001391,'6D','36B',1116,'Crime Against Person'),(230001395,'3D','90Z',9113,'Other'),(230001396,'5D','120',1206,'Crime Against Property'),(230001401,'3D','120',1214,'Crime Against Property'),(230001402,'4D','90Z',9201,'Other'),(230001404,'4D','23F',2305,'Crime Against Property'),(230001405,'6D','13B',1399,'Crime Against Person'),(230001406,'TPPD','90Z',9107,'Other'),(230001408,'3D','23B',2302,'Crime Against Property'),(230001409,'1D','90Z',9112,'Other'),(230001412,'3D','23D',2308,'Crime Against Property'),(230001413,'4D','90Z',9113,'Other'),(230001416,'4D','90Z',9101,'Other'),(230001417,'4D','13B',1399,'Crime Against Person'),(230001419,'4D','240',2404,'Crime Against Property'),(230001421,'3D','11A',1103,'Crime Against Person'),(230001423,'1D','90Z',9199,'Other'),(230001427,'2D','290',2902,'Crime Against Property'),(230001430,'1D','13A',1314,'Crime Against Person'),(230001431,'1D','90Z',5016,'Crime Against Society'),(230001433,'4D','90Z',9113,'Other'),(230001437,'4D','240',2404,'Crime Against Property'),(230001438,'3D','90Z',9101,'Other'),(230001439,'6D','240',2404,'Crime Against Property'),(230001440,'4D','23F',2305,'Crime Against Property'),(230001444,'4D','23C',2303,'Crime Against Property'),(230001445,'1D','23G',2304,'Crime Against Property'),(230001447,'5D','11A',1103,'Crime Against Person'),(230001450,'2D','23G',2304,'Crime Against Property'),(230001451,'4D','23G',2304,'Crime Against Property'),(230001452,'2D','220',2204,'Crime Against Property'),(230001453,'TPPD','90Z',9108,'Other'),(230001455,'3D','240',2404,'Crime Against Property'),(230001457,'4D','90Z',9101,'Other'),(230001459,'6D','240',2499,'Crime Against Property'),(230001463,'3D','13B',1399,'Crime Against Person'),(230001466,'1D','290',2999,'Crime Against Property'),(230001470,'TPPD','23F',2305,'Crime Against Property'),(230001471,'TPPD','290',2999,'Crime Against Property'),(230001472,'TPPD','220',2205,'Crime Against Property'),(230001474,'6D','290',2902,'Crime Against Property'),(230001476,'4D','23G',2304,'Crime Against Property'),(230001482,'1D','23H',2399,'Crime Against Property'),(230001486,'1D','290',2902,'Crime Against Property'),(230001489,'TPPD','90Z',9109,'Other'),(230001510,'4D','26F',2610,'Crime Against Property'),(230001519,'1D','90Z',9112,'Other'),(230001521,'3D','23G',2304,'Crime Against Property'),(230001522,'4D','290',2902,'Crime Against Property'),(230001525,'2D','90Z',9199,'Other'),(230001526,'3D','90Z',9105,'Other'),(230001528,'3D','23H',2399,'Crime Against Property'),(230001529,'3D','90I',9021,'Not a Crime'),(230001537,'6D','23F',2305,'Crime Against Property'),(230001554,'6D','23F',2305,'Crime Against Property'),(230001564,'3D','23H',2399,'Crime Against Property'),(230001567,'4D','23D',2308,'Crime Against Property'),(230001568,'3D','23D',2308,'Crime Against Property'),(230001574,'6D','13B',1399,'Crime Against Person'),(230001577,'4D','90Z',9199,'Other'),(230001588,'TPPD','90Z',5499,'Other'),(230001592,'5D','290',2902,'Crime Against Property'),(230001595,'2D','90Z',9199,'Other'),(230001596,'4D','120',1212,'Crime Against Property'),(230001600,'2D','90I',9021,'Not a Crime'),(230001608,'2D','23H',2399,'Crime Against Property');
/*!40000 ALTER TABLE `police_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 21:32:18
