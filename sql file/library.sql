-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 06:23 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(12, 'Kirubel', 'kirubel@gmail.com', 'kirubel', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE IF NOT EXISTS `tblauthors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Kirubel', '2021-02-10 12:26:50', NULL),
(11, 'Donald Knuth', '2021-03-09 05:34:46', NULL),
(12, 'Robert Sedgewick', '2021-03-09 05:35:06', NULL),
(13, 'Steve McConnell', '2021-03-09 05:35:22', NULL),
(14, 'Brian Kernighan', '2021-03-09 05:35:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE IF NOT EXISTS `tblbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(6, 'gold', 6, 10, 12345, NULL, '2021-02-10 12:28:47', '2021-02-12 03:53:00'),
(7, 'cvb', 4, 3, 0, NULL, '2021-02-12 03:57:08', NULL),
(8, 'dfgdfg', 4, 2, 2325, NULL, '2021-02-12 04:00:12', NULL),
(9, 'dfdf', 4, 2, 214345, NULL, '2021-02-12 04:01:47', NULL),
(10, 'Barron''s AP Computer Science A, 8th Edition', 2, 12, 1235, NULL, '2021-03-09 05:36:33', NULL),
(11, 'Introduction to Artificial Intelligence', 2, 14, 789, NULL, '2021-03-09 05:38:52', NULL),
(12, 'History of the World Map', 3, 11, 741, NULL, '2021-03-09 05:39:58', NULL),
(13, 'Land of seven rivers: History of India''s Geography', 3, 12, 852, NULL, '2021-03-09 05:40:40', NULL),
(14, 'Principles of mathematical analysis', 1, 14, 963, NULL, '2021-03-09 05:42:18', NULL),
(15, 'Meditations on First Philosophy', 12, 11, 458, NULL, '2021-03-09 05:43:08', NULL),
(16, 'sdfsdf', 2, 11, 234, NULL, '2021-03-12 07:45:38', NULL),
(17, 'Fikr eske mekabir', 12, 13, 24, NULL, '2021-03-12 07:46:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maths', 1, '2021-03-09 05:29:04', '2021-03-09 05:31:17'),
(2, 'Computer Science', 1, '2021-03-09 05:29:57', '2021-03-09 05:31:33'),
(3, 'Geography', 1, '2021-03-09 05:30:23', '2021-03-09 05:31:41'),
(11, 'Management', 1, '2021-03-09 05:31:55', '0000-00-00 00:00:00'),
(12, 'Philosophy', 1, '2021-03-09 05:33:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE IF NOT EXISTS `tblissuedbookdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(9, 3, 'SID016', '2021-02-10 12:29:17', '2021-02-10 12:36:49', 1, NULL),
(10, 11, 'SID013', '2021-03-09 06:03:28', NULL, NULL, NULL),
(11, 12, 'SID020', '2021-03-09 06:03:59', '2021-03-09 06:07:56', 1, NULL),
(12, 15, 'SID023', '2021-03-09 06:04:34', NULL, NULL, NULL),
(13, 12, 'SID024', '2021-03-09 06:05:17', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbllibrarian`
--

CREATE TABLE IF NOT EXISTS `tbllibrarian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `LibrarianEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbllibrarian`
--

INSERT INTO `tbllibrarian` (`id`, `FullName`, `LibrarianEmail`, `UserName`, `Password`, `updationDate`) VALUES
(14, 'Yared', 'yared@gmail.com', 'yaredk', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00'),
(16, 'Aweke Amanuel', 'awekea@gmail.com', 'awekea', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, 'SID013', 'Adane Mola', 'adnae@gmail.com', '0912348577', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-09 15:56:55', '2021-03-09 06:20:38'),
(19, 'SID020', 'Jhon Abreha', 'john@gmail.com', '+2519415879', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-10 12:42:05', NULL),
(20, 'SID021', 'Yilma Kassa', 'yilmak@yahoo.com', '0911468254', 'fcea920f7412b5da7be0cf42b8c93759', 1, '2021-03-09 05:56:05', NULL),
(21, 'SID022', 'Moges Haile', 'moges.haile@gmail.com', '0911987458', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-03-09 05:56:54', NULL),
(22, 'SID023', 'Rediet Yilma', 'rediety@gmail.com', '0911154245', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-03-09 05:57:37', NULL),
(23, 'SID024', 'Berhanu Belete', 'berhanubelete@hotmail.com', '091345683', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-03-09 05:58:31', NULL),
(24, 'SID025', 'Hiwot Alemu', 'hiwota@gmail.com', '0913548796', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-03-09 05:59:01', NULL),
(25, 'SID026', 'Tsion Abebe', 'tsiona@gmail.com', '0911452356', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-03-09 06:00:00', NULL),
(26, 'SID027', 'Misgan Tareke', 'misgan@gmail.com', '0911365487', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-03-09 06:01:36', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
