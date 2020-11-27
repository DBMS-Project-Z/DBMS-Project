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
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `pmobile` int(255) NOT NULL,
  `pemail` varchar(255) NOT NULL
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
ALTER TABLE `patient`
ADD PRIMARY KEY (`pid`);

CREATE TABLE `doctor` (
  `did` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) NOT NULL,
  `dmobile` int(255) NOT NULL,
  `demail` varchar(255) NOT NULL,
  -- `dspec` varchar(255) NOT NULL
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
ALTER TABLE `doctor`
ADD PRIMARY KEY (`did`);

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) NOT NULL,
  `htype` varchar(255) NOT NULL,
  `haddress` varchar(255) NOT NULL
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
ALTER TABLE `hospital`
ADD PRIMARY KEY (`hid`);

ALTER TABLE `hospital`
ADD PRIMARY KEY (`hname`);

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ctype` varchar(255) NOT NULL,
  `cdescription` varchar(255) NOT NULL,
  `csymptoms` varchar(255) NOT NULL
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

CREATE TABLE `pres` (
  `medicine` varchar(255) NOT NULL,
  `prescription` varchar(255) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `pres` (`medicine`, `prescription` ) VALUES
('dosename', 'tice a day')
('dosename', 'tice a day');

