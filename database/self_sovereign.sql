-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2024 at 02:01 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `self_sovereign`
--

-- --------------------------------------------------------

--
-- Table structure for table `sw_admin`
--

CREATE TABLE `sw_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sw_admin`
--

INSERT INTO `sw_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sw_register_website`
--

CREATE TABLE `sw_register_website` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `web_url` varchar(200) NOT NULL,
  `web_status` varchar(20) NOT NULL,
  `web_username` varchar(20) NOT NULL,
  `web_password` varchar(20) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sw_register_website`
--
-- --------------------------------------------------------

--
-- Table structure for table `sw_user_profile`
--

CREATE TABLE `sw_user_profile` (
  `uid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `father` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `taluk` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `driving` varchar(100) NOT NULL,
  `voterid` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `card` varchar(100) NOT NULL,
  `gnumber` varchar(100) NOT NULL,
  `occupation1` varchar(100) NOT NULL,
  `occupation2` varchar(100) NOT NULL,
  `income1` varchar(100) NOT NULL,
  `income2` varchar(100) NOT NULL,
  `sslc_school` varchar(100) NOT NULL,
  `sslc_mark` varchar(100) NOT NULL,
  `sslc_year` varchar(100) NOT NULL,
  `hsc_school` varchar(100) NOT NULL,
  `hsc_mark` varchar(100) NOT NULL,
  `hsc_year` varchar(100) NOT NULL,
  `ug_college` varchar(100) NOT NULL,
  `ug_degree` varchar(100) NOT NULL,
  `ug_mark` varchar(100) NOT NULL,
  `ug_year` varchar(100) NOT NULL,
  `pg_college` varchar(100) NOT NULL,
  `pg_degree` varchar(100) NOT NULL,
  `pg_mark` varchar(100) NOT NULL,
  `pg_year` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `clocation` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `exp_period` varchar(100) NOT NULL,
  `hdata` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sw_user_profile`
--


--
-- Table structure for table `sw_user_register`
--

CREATE TABLE `sw_user_register` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `approved_status` int(11) NOT NULL,
  `register_date` varchar(100) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `upi_code` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `block_key` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sw_user_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `sw_webservice`
--

CREATE TABLE `sw_webservice` (
  `id` int(11) NOT NULL,
  `web_url` varchar(200) NOT NULL,
  `form_data` text NOT NULL,
  `service_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sw_webservice`
--

INSERT INTO `sw_webservice` (`id`, `web_url`, `form_data`, `service_code`) VALUES
(1, 'http://19hourit.com/register.php', 'name,gender,dob,aadhar,mobile,email,address,district,pincode,ug_college,ug_degree,ug_mark,ug_year,pg_college,pg_degree,pg_mark,pg_year', '12453931'),
(2, 'https://gamingzone.in.net/register.php', 'name,mobile,email,address,district,pincode,bank,customername,account,card,gnumber', '22448831');
