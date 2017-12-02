-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.8-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema census
--

CREATE DATABASE IF NOT EXISTS census;
USE census;

--
-- Definition of table `aadhaar`
--

DROP TABLE IF EXISTS `aadhaar`;
CREATE TABLE `aadhaar` (
  `AADHAAR_No` varchar(5) NOT NULL,
  `fName` varchar(15) DEFAULT NULL,
  `mName` varchar(15) DEFAULT NULL,
  `lName` varchar(15) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AADHAAR_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aadhaar`
--

/*!40000 ALTER TABLE `aadhaar` DISABLE KEYS */;
INSERT INTO `aadhaar` (`AADHAAR_No`,`fName`,`mName`,`lName`,`DOB`) VALUES 
 ('10001','NS','ms','ls','12/12/2012'),
 ('10002','NS','ms','ls','12/12/2012'),
 ('10003','NS','ms','ls','12/12/2012'),
 ('10004','NS','ms','ls','12/12/2012'),
 ('10005','NS','ms','ls','12/12/2012'),
 ('XYZ01','Vinod','Kumar','Singh','21/01/1976');
/*!40000 ALTER TABLE `aadhaar` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `RegNo` varchar(8) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `font` varchar(6) DEFAULT NULL,
  `process` varchar(6) DEFAULT NULL,
  `comments` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `RegNo` varchar(8) NOT NULL,
  `Pass` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`RegNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`RegNo`,`Pass`) VALUES 
 ('BSR10001','don');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `SrNo` int(5) NOT NULL AUTO_INCREMENT,
  `RegNo` varchar(8) NOT NULL,
  `AADHAAR_No` varchar(5) DEFAULT NULL,
  `E_ID` varchar(5) DEFAULT NULL,
  `CardNo` int(5) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `mName` varchar(15) DEFAULT NULL,
  `lName` varchar(15) NOT NULL,
  `Father` varchar(40) NOT NULL,
  `Mother` varchar(40) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `M_status` varchar(9) NOT NULL,
  `Literacy` varchar(10) NOT NULL,
  `Add1` varchar(50) NOT NULL,
  `Add2` varchar(15) DEFAULT 'Bulandshahr',
  `Qupto` varchar(7) NOT NULL,
  PRIMARY KEY (`SrNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;


--
-- Definition of table `rationcard`
--

DROP TABLE IF EXISTS `rationcard`;
CREATE TABLE `rationcard` (
  `CardNo` int(5) NOT NULL,
  `CardType` varchar(3) DEFAULT NULL,
  `Head_Name` varchar(40) DEFAULT NULL,
  `Head_Father` varchar(40) DEFAULT NULL,
  `Members` int(2) DEFAULT NULL,
  PRIMARY KEY (`CardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rationcard`
--

/*!40000 ALTER TABLE `rationcard` DISABLE KEYS */;
INSERT INTO `rationcard` (`CardNo`,`CardType`,`Head_Name`,`Head_Father`,`Members`) VALUES 
 (101,'th','weui','kllk',2),
 (102,'th','weui','kllk',2),
 (103,'th','weui','kllk',2);
/*!40000 ALTER TABLE `rationcard` ENABLE KEYS */;


--
-- Definition of table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `U_ID` varchar(5) NOT NULL,
  `RCardNo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`U_ID`,`RCardNo`) VALUES 
 ('10001','101');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;


--
-- Definition of table `voterid`
--

DROP TABLE IF EXISTS `voterid`;
CREATE TABLE `voterid` (
  `E_ID` varchar(5) NOT NULL,
  `fName` varchar(15) DEFAULT NULL,
  `mName` varchar(15) DEFAULT NULL,
  `lName` varchar(15) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`E_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voterid`
--

/*!40000 ALTER TABLE `voterid` DISABLE KEYS */;
INSERT INTO `voterid` (`E_ID`,`fName`,`mName`,`lName`,`DOB`) VALUES 
 ('1001','tS','es','rs','12/12/2012'),
 ('1002','tS','es','rs','12/12/2012'),
 ('1003','tS','es','rs','12/12/2012'),
 ('101','th','weui','kllk','2');
/*!40000 ALTER TABLE `voterid` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
