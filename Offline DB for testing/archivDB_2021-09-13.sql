# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.32)
# Database: archivDB
# Generation Time: 2021-09-13 09:24:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table nactive_students
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nactive_students`;

CREATE TABLE `nactive_students` (
  `index` bigint(20) DEFAULT NULL,
  `student_firstname` text,
  `student_lastname` text,
  `birth_year` bigint(20) DEFAULT NULL,
  `salutation` text,
  `nationality` text,
  `home_university` text,
  `home_degree` text,
  `home_program` text,
  `semester` bigint(20) DEFAULT NULL,
  `abroad_university` text,
  `type_of_transfer` text,
  `abroad_degree` text,
  `abroad_program` text,
  `overall_status` text,
  `start_of_transfer` text,
  `average_grade` double DEFAULT NULL,
  `number_planned_exams` double DEFAULT NULL,
  `abroad_mat_no` text,
  `study_time_months` bigint(20) DEFAULT NULL,
  KEY `ix_nactive_students_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
