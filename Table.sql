-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 08:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_mobile` int(255) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `p_cat` varchar(225),
  `p_doc` int(10),
  `p_pres` int(10),
  PRIMARY KEY (`p_id`),
  CONSTRAINT FK_patient_cat FOREIGN KEY (`p_cat`) REFERENCES `category`(`c_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_patient_doc FOREIGN KEY (`p_doc`) REFERENCES `doctor`(`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_patient_pres FOREIGN KEY (`p_pres`) REFERENCES `prescription`(`pres_id`) ON DELETE CASCADE ON UPDATE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--
-- can we autoinsert id????
INSERT INTO `patient` (`pname`, `pmobile`,`pemail`) VALUES
('ram', '11223344',`email@email.com`),
('shyam','9452162510','hey@hey.com');
-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--id??????????????

-- Indexing or creating a primary key for patient table
-- ALTER TABLE `patient`
-- ADD PRIMARY KEY (`pid`);

CREATE TABLE `doctor` (
  `doc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) NOT NULL,
  `doc_mobile` int(255) NOT NULL,
  `doc_email` varchar(255) NOT NULL,
  `doc_hos` int(10),
  -- `dspec` varchar(255) NOT NULL
  PRIMARY KEY (`doc_id`),
  CONSTRAINT FK_doctor_hos FOREIGN KEY (`doc_hos`) REFERENCES `hospital`(`hos_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`usn`, `book_id`, `book_name`) VALUES
('exname', '1234567854', 'email@email.com','ent specialist'),
('exname', '1234567854', 'email@email.com','ent specialist'),
('exname', '1234567854', 'email@email.com','ent specialist'),
('exname', '1234567854', 'email@email.com','ent specialist');

-- --------------------------------------------------------

-- Creating primary key for doctor table
-- ALTER TABLE `doctor`
-- ADD PRIMARY KEY (`did`);

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hos_name` varchar(255) NOT NULL,
  `hos_type` varchar(255) NOT NULL,
  `hos_address` varchar(255) NOT NULL,
  PRIMARY KEY (`hos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--auto insert id???

INSERT INTO `hospital` (`sid`, `username`, `name`, `password`, `email`) VALUES
('', 'johndoe', 'dental', 'yelahanka'),
('', 'rohan77', 'dental', 'airport'),
('', 'ajayk99', 'dental', 'erth');

-- --------------------------------------------------------

-- creating a primary key for hospital table
-- ALTER TABLE `hospital`
-- ADD PRIMARY KEY (`hid`);

-- ALTER TABLE `hospital`
-- ADD PRIMARY KEY (`hname`);

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_type` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL,
  `cat_symptoms` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ctype`, `cdescription`, `csymptoms` ) VALUES
('asymptomatic', 'doing good', 'none')
('asymptomatic', 'doing good', 'none')
--

-- Table structure for table `Prescription`
--

CREATE TABLE `prescription` (
  `pres_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `medicine` varchar(255) NOT NULL,
  `pres_cat` varchar(255),
  `pres_doc` int(10),
  CONSTRAINT FK_prescription_cat FOREIGN KEY (`pres_cat`) REFERENCES `category`(`c_type`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_prescription_doc FOREIGN KEY (`pres_doc`) REFERENCES `doctor`(`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE
  -- `prescription` varchar(255) NOT NULL,
  PRIMARY KEY (`pres_id`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `prescription` (`medicine`, `prescription` ) VALUES
('dosename', 'tice a day')
('dosename', 'tice a day');

