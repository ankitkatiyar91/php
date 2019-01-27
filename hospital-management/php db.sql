-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.9


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ankit
--

CREATE DATABASE IF NOT EXISTS ankit;
USE ankit;

--
-- Definition of table `biochemistry`
--

DROP TABLE IF EXISTS `biochemistry`;
CREATE TABLE `biochemistry` (
  `registration_no` bigint(20) NOT NULL,
  `serial_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `glucose_fasting` float NOT NULL,
  `glucose_r` float NOT NULL,
  `blood_urea` float NOT NULL,
  `creatinine` float NOT NULL,
  `bun` float NOT NULL,
  `s_cholestral` float NOT NULL,
  `hdl_cholestral` float NOT NULL,
  `ldl_cholestral` float NOT NULL,
  `vldl_cholestral` float NOT NULL,
  `triglycerides` float NOT NULL,
  `s_total_lipids` float NOT NULL,
  PRIMARY KEY (`registration_no`,`serial_no`),
  UNIQUE KEY `serial_no` (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biochemistry`
--

/*!40000 ALTER TABLE `biochemistry` DISABLE KEYS */;
INSERT INTO `biochemistry` (`registration_no`,`serial_no`,`date`,`glucose_fasting`,`glucose_r`,`blood_urea`,`creatinine`,`bun`,`s_cholestral`,`hdl_cholestral`,`ldl_cholestral`,`vldl_cholestral`,`triglycerides`,`s_total_lipids`) VALUES 
 (1,4,'2011-09-01 03:45:45',2,3,4,5,6,7,8,9,10,11,12),
 (1,5,'2011-09-03 11:37:21',4,5,5,55,5,545,5,5,5,5,6),
 (6,1,'2011-08-31 03:38:26',657,1,40,60,1,6.9,4,4,23,5,5),
 (7,3,'2011-08-30 15:07:58',9,6,87,76,7,67,76,657,67,67,67);
/*!40000 ALTER TABLE `biochemistry` ENABLE KEYS */;


--
-- Definition of table `blood`
--

DROP TABLE IF EXISTS `blood`;
CREATE TABLE `blood` (
  `registration_no` bigint(20) NOT NULL,
  `serial_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `haemoglobin` float DEFAULT NULL,
  `basophils` float DEFAULT NULL,
  `lymphocytes` float DEFAULT NULL,
  `eosinophil` float DEFAULT NULL,
  `tlc` float NOT NULL,
  `neutrophils` float DEFAULT NULL,
  `platelets` float DEFAULT NULL,
  `monocytes` float DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`registration_no`,`serial_no`),
  UNIQUE KEY `serial_no` (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` (`registration_no`,`serial_no`,`date`,`haemoglobin`,`basophils`,`lymphocytes`,`eosinophil`,`tlc`,`neutrophils`,`platelets`,`monocytes`,`other`) VALUES 
 (1,2,'2011-09-02 05:22:04',13,4,5,7,8000,9,10,11,'values has been updated'),
 (2,3,'2011-09-02 04:55:12',14,1.5,29,3,7000,50,25000,3,'kapil is tested insertion...'),
 (3,4,'2011-09-02 05:06:19',14,1.5,29,3,7000,50,25000,3,'kapil is tested insertion...'),
 (6,5,'2011-09-02 05:49:44',14,1,30,1,799999,50,689698,3,'Gaurav insertion..'),
 (7,6,'2011-09-06 23:26:29',14,1,30,3,5000,50,79799,1,'Mohit is now fit..');
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;


--
-- Definition of table `colonoscopy`
--

DROP TABLE IF EXISTS `colonoscopy`;
CREATE TABLE `colonoscopy` (
  `registration_no` bigint(20) NOT NULL,
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `anal_canal` varchar(100) NOT NULL,
  `rectum` varchar(100) NOT NULL,
  `sigmoid_colon` varchar(100) NOT NULL,
  `descending_colon` varchar(100) NOT NULL,
  `splenic_flexure` varchar(100) NOT NULL,
  `transverse_colon` varchar(100) NOT NULL,
  `hepatic_flexure` varchar(100) NOT NULL,
  `ascending_colon` varchar(100) NOT NULL,
  `caecum` varchar(100) NOT NULL,
  `terminal_ileum` varchar(100) NOT NULL,
  `biopsy` varchar(100) NOT NULL,
  `opinion` varchar(100) NOT NULL,
  PRIMARY KEY (`serial_no`),
  UNIQUE KEY `registration_no` (`registration_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colonoscopy`
--

/*!40000 ALTER TABLE `colonoscopy` DISABLE KEYS */;
INSERT INTO `colonoscopy` (`registration_no`,`serial_no`,`date`,`anal_canal`,`rectum`,`sigmoid_colon`,`descending_colon`,`splenic_flexure`,`transverse_colon`,`hepatic_flexure`,`ascending_colon`,`caecum`,`terminal_ileum`,`biopsy`,`opinion`) VALUES 
 (1,1,'2011-09-06 23:47:45','anal','rectum','sigmoid ','descending','slenic','transeverse','heptic ','ascending','caesum','terminal','biopsy','opinion'),
 (2,2,'2011-09-07 00:31:11','h','h','hh','h','hh','h','','h','h','h','','h');
/*!40000 ALTER TABLE `colonoscopy` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `serialno` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fname` varchar(45) NOT NULL,
  `authority` int(11) NOT NULL,
  PRIMARY KEY (`serialno`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`serialno`,`username`,`userpassword`,`ip`,`lastlogin`,`fname`,`authority`) VALUES 
 (1,'ankit','202cb962ac59075b964b07152d234b70','127.0.0.1','2011-09-04 05:11:03','Ankit',0),
 (2,'gaurav','202cb962ac59075b964b07152d234b70','127.0.0.1','2011-08-30 15:25:42','Gaurav',0),
 (3,'abhi','202cb962ac59075b964b07152d234b70','127.0.0.1','2011-04-24 17:42:40','Abhimaan',0),
 (4,'kapil','202cb962ac59075b964b07152d234b70','127.0.0.1','2011-08-18 11:17:43','Kapil',0),
 (6,'vishu','202cb962ac59075b964b07152d234b70','127.0.0.1','2011-08-29 03:51:27','Vishu',0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `registration_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(30) DEFAULT NULL,
  `patient_type` varchar(30) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `responsible` varchar(45) NOT NULL,
  `responsible_relation` varchar(45) DEFAULT NULL,
  `marital` varchar(10) DEFAULT NULL,
  `religion` varchar(10) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  `contact_no` varchar(11) DEFAULT NULL,
  `mobile_no` varchar(11) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`registration_no`),
  UNIQUE KEY `registration_no` (`registration_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`registration_no`,`registration_date`,`name`,`patient_type`,`gender`,`responsible`,`responsible_relation`,`marital`,`religion`,`age`,`profession`,`contact_no`,`mobile_no`,`address1`,`city`,`address2`) VALUES 
 (1,'2011-08-25 12:23:43','Ankit Katiyar','normal','male','',NULL,'single','hindu','20','engineer','9717721627','9455064234','gaur homes','Ghaziabad','jahanganj fbd'),
 (2,'2011-08-25 12:23:57','Kapil','normal','male','Mr. Joshi','father','single','hindu','22','Engineer',NULL,'9457897103','gaur homes','Ghaziabad','Pithoragarh'),
 (3,'2011-08-25 12:24:11','Prahast Parashar','normal','male','Dr P. S. Sharma','fathar','single','hindu','22','Pharmasist',NULL,'9457422664','sastri nagar','Ghaziabad','Home'),
 (6,'2011-08-25 12:24:21','Gaurav Chandra Srivastava','emergency','male','Mrs. Kiran Srivastava','Mother','Single','Hindu','22','Engineer','9453069292','8800806252','Raibarely','Raibarely','Raibarely'),
 (7,'2011-08-25 13:21:07','Mohit Gujjar','Emergency','Male','Mr. Ajay','Father','Married','Hindu','20','Engineer','3438756387','4335737354','Dehradun','Ghaziabad','gaur homes'),
 (8,'2011-08-28 00:13:13','pulak  mehlotra','normal','Male','Mr mahlotra','Father','Single','Hindu','20','Engineer','5755473256','7894789248','HOstel','Ghaziabad','HOstel'),
 (9,'2011-08-28 00:15:08','pulak  mehlotra','normal','Male','Mr mahlotra','Father','Single','Hindu','20','Engineer','5755473256','7894789248','HOstel','Ghaziabad','HOstel'),
 (14,'2011-08-28 12:17:38','hjfgjhd bnfkjfkj gdghd','emergency','Male','HFGHFGJ','NMJM','Single','hnfghfh','17','jkhfdgsjk','4365894356','8632986848','djffffjh','kjhkjvvhfdkjvh','hkhdhdkjd'),
 (15,'2011-08-28 12:18:59','hjfgjhd bnfkjfkj gdghd','emergency','Male','HFGHFGJ','NMJM','Single','hnfghfh','17','jkhfdgsjk','4365894356','8632986848','djffffjh','kjhkjvvhfdkjvh','hkhdhdkjd'),
 (16,'2011-08-28 12:20:46','abhishek ravan singh','emergency','Male','pta ni','lauda','Single','fuck','99','slut','420','420','gb road','dilli','gaur homes'),
 (17,'2011-08-28 12:24:38','jk jhkj jjdgdjcdsgk','emergency','Male','kjklkljk','kjklj','Single','kkjlklj','81','hlkhl','5635646735','8683964896','dsdsgjsdjk','jkhjkhsjkdh','khkhkkjkjcfjks'),
 (18,'2011-08-28 12:28:55','jk jhkj jjdgdjcdsgk','emergency','Male','kjklkljk','kjklj','Single','kkjlklj','81','hlkhl','5635646735','8683964896','dsdsgjsdjk','jkhjkhsjkdh','khkhkkjkjcfjks'),
 (19,'2011-08-28 12:29:36','jk jhkj jjdgdjcdsgk','emergency','Male','kjklkljk','kjklj','Single','kkjlklj','81','hlkhl','5635646735','8683964896','dsdsgjsdjk','jkhjkhsjkdh','khkhkkjkjcfjks'),
 (20,'2011-08-29 03:33:42','Sumit  Srivastava','normal','Male','Mr judge','Father','Single','Hindu','21','Engineer','3232211223','3222321321','Raibarely','Ghaziabad','Raibarely'),
 (21,'2011-08-29 03:34:41','Sumit  Srivastava','normal','Male','Mr judge','Father','Single','Hindu','21','Engineer','3232211223','3222321321','Raibarely','Ghaziabad','Raibarely'),
 (22,'2011-08-29 03:35:47','Aditya  ','normal','Male','mr','f','Single','Hindu','20','Engineer','8324689623','6293823691','uetuwtiurwt','yuiuyeuywiuy','yiueywqiuwe'),
 (23,'2011-08-30 13:26:37','$name','$ptype','male','$responsible','$relation','$marital','$religion','1','$profession','888888888','8888888888','$add1','$city','$add2'),
 (24,'2011-08-30 13:27:47','Aman  verma','normal','male','mr ammu','Father','Single','Hindu','1','Engineer','888888888','8888888888','ueurye','eryeu','uyyeu'),
 (25,'2011-08-30 13:30:02','Aman  verma','normal','male','mr ammu','Father','Single','Hindu','20','Engineer','9865866584','9738781748','ueurye','eryeu','uyyeu'),
 (26,'2011-08-31 04:06:28','Himani  ','normal','female','Mr pandey','bodygaurd','Married','Hindu','21','er','3897537593','9379298472','gzb','gzb','GZB'),
 (27,'2011-08-31 04:06:02','Aakriti  Garg','normal','female','Neta','Rotu','Single','Hindu','21','Engineer','3287635635','9235624727','Hapur','Hapur','Hapur'),
 (28,'2011-08-31 04:06:12','Parul  Bhati','normal','female','Mrs mommy','Mother','Single','Hindu','20','er','3472365452','9225465452','Dadri','Dadri','Dadri'),
 (29,'2011-08-31 04:08:16','chetna  bhalla','normal','female','mr bhalla','Father','Single','Hindu','19','Engineer','7643827562','8648762346','delhi','delhi','delhi'),
 (30,'2011-08-31 04:10:37','Sharkita  Singh','normal','Female','Ms Didi','Sister','Single','Christin','20','student','4234672356','8656326762','Lucknow','Lucknow','Lucknow'),
 (31,'2011-09-01 03:09:42','Gaurav  Chauhan','normal','Male','Mr chauhan','Father','Single','Hindu','22','Engineer','5372162893','8628896286','Saharanpur','Saharanpur','Ghaziabad');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `personal_information`
--

DROP TABLE IF EXISTS `personal_information`;
CREATE TABLE `personal_information` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_information`
--

/*!40000 ALTER TABLE `personal_information` DISABLE KEYS */;
INSERT INTO `personal_information` (`first_name`,`last_name`,`middle_name`,`father_name`) VALUES 
 ('Ankit','katiyar','singh','u.c. katiyar'),
 ('Abhimaan','Mishra',NULL,NULL),
 ('Gaurav','Srivastava','Chandra',NULL),
 ('chandresha','mani','','c.m. mani'),
 ('Anil','Kumar','','A.n. Kaumar');
/*!40000 ALTER TABLE `personal_information` ENABLE KEYS */;


--
-- Definition of table `stool`
--

DROP TABLE IF EXISTS `stool`;
CREATE TABLE `stool` (
  `registration_no` bigint(20) NOT NULL,
  `serial_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `color` varchar(45) NOT NULL,
  `consistency` varchar(100) NOT NULL,
  `mucus` varchar(100) NOT NULL,
  `blood` varchar(100) NOT NULL,
  `wbc` varchar(100) NOT NULL,
  `rbc` varchar(100) NOT NULL,
  `mecrophages` varchar(100) NOT NULL,
  PRIMARY KEY (`serial_no`),
  UNIQUE KEY `registration_no` (`registration_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stool`
--

/*!40000 ALTER TABLE `stool` DISABLE KEYS */;
INSERT INTO `stool` (`registration_no`,`serial_no`,`date`,`color`,`consistency`,`mucus`,`blood`,`wbc`,`rbc`,`mecrophages`) VALUES 
 (1,1,'2011-09-08 16:24:50','color1','consistency','mucus','blood','wbc','rbc','platelets'),
 (2,2,'2011-09-08 16:32:13','red to green','hsdus','j','jj','goa','jj','j');
/*!40000 ALTER TABLE `stool` ENABLE KEYS */;


--
-- Definition of table `urine`
--

DROP TABLE IF EXISTS `urine`;
CREATE TABLE `urine` (
  `registration_no` bigint(20) NOT NULL,
  `serial_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `appreance` varchar(100) DEFAULT NULL,
  `rbc` varchar(100) DEFAULT NULL,
  `cast` varchar(100) DEFAULT NULL,
  `spgravity` varchar(100) DEFAULT NULL,
  `amorphous` varchar(100) DEFAULT NULL,
  `wbc` varchar(100) DEFAULT NULL,
  `reaction` varchar(100) DEFAULT NULL,
  `epith` varchar(100) DEFAULT NULL,
  `spermatozoa` varchar(100) DEFAULT NULL,
  `albumin` varchar(100) DEFAULT NULL,
  `crystails` varchar(100) DEFAULT NULL,
  `sugar` varchar(100) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urine`
--

/*!40000 ALTER TABLE `urine` DISABLE KEYS */;
INSERT INTO `urine` (`registration_no`,`serial_no`,`date`,`appreance`,`rbc`,`cast`,`spgravity`,`amorphous`,`wbc`,`reaction`,`epith`,`spermatozoa`,`albumin`,`crystails`,`sugar`,`other`) VALUES 
 (1,1,'2011-09-08 16:19:04','ap','rbc','caast','sp','amo','wb','re','ep','sper','alb','cry','su','oth'),
 (2,2,'2011-09-08 16:31:30','ap1','rbc','cat','spg','amor','wbc','reac','epi','sp','albu','cry','su','oth');
/*!40000 ALTER TABLE `urine` ENABLE KEYS */;


--
-- Definition of table `xray`
--

DROP TABLE IF EXISTS `xray`;
CREATE TABLE `xray` (
  `registration_no` bigint(20) NOT NULL,
  `serial_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark1` varchar(100) DEFAULT NULL,
  `remark2` varchar(100) DEFAULT NULL,
  `remark3` varchar(100) DEFAULT NULL,
  `remark4` varchar(100) DEFAULT NULL,
  `remark5` varchar(100) DEFAULT NULL,
  `remark6` varchar(100) DEFAULT NULL,
  `remark7` varchar(100) DEFAULT NULL,
  `remark8` varchar(100) DEFAULT NULL,
  `remark9` varchar(100) DEFAULT NULL,
  `remark10` varchar(100) DEFAULT NULL,
  `remark11` varchar(100) DEFAULT NULL,
  `opinion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`serial_no`),
  KEY `registration_no` (`registration_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xray`
--

/*!40000 ALTER TABLE `xray` DISABLE KEYS */;
INSERT INTO `xray` (`registration_no`,`serial_no`,`date`,`remark1`,`remark2`,`remark3`,`remark4`,`remark5`,`remark6`,`remark7`,`remark8`,`remark9`,`remark10`,`remark11`,`opinion`) VALUES 
 (1,1,'2011-09-08 16:32:35','remark ','remark 2 updated','3','4','5','7','7','8','9','10','11','0p updated'),
 (2,3,'2011-09-08 13:32:42','yt','2','y','h','','u','yy','yh','y','qyu','uu','u'),
 (3,5,'2011-09-08 13:35:42','gdsg','h','hg','j','','gg','','h','g','j','g','hh'),
 (3,6,'2011-09-08 13:35:44','gdsg','h','hg','j','','gg','','h','g','j','g','hh'),
 (7,7,'2011-09-08 13:39:20','hgHhGGgHGgGGg','g','g','gg','g','g','gg','g','g','g','g','hhh');
/*!40000 ALTER TABLE `xray` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
