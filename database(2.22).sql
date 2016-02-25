-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2016 at 04:13 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Complex-Systems-Design`
--

-- --------------------------------------------------------

--
-- Table structure for table `approver`
--

CREATE TABLE `approver` (
  `ApproverDescription` varchar(100) DEFAULT NULL,
  `InternalUser_idInternalUser` int(11) NOT NULL,
  `InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL,
  `CategoryType` int(11) NOT NULL,
  `CategoryDescription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCategory`, `CategoryType`, `CategoryDescription`) VALUES
(1, 1, 'Before arrival'),
(2, 2, 'After arrival'),
(3, 3, 'Scholarship'),
(4, 4, 'University Information');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`) VALUES
('2a113a9174cadbda10d875b3fcfe7c99da1a07e1', '::1', '', 1456133056, '__ci_last_regenerate|i:1456132946;name|s:6:"udunig";email|s:18:"udunig@hotmail.com";id|s:2:"29";user_type|s:1:"2";block_status|s:1:"0";loggedin|b:1;'),
('788a8fe9629d4a0cc0c0a164df63c28a32a9cb4e', '::1', '', 1456132873, '__ci_last_regenerate|i:1456132617;name|s:6:"udunig";email|s:18:"udunig@hotmail.com";id|s:2:"29";user_type|s:1:"2";block_status|s:1:"0";loggedin|b:1;'),
('d994d7908c26508e2dded72928071e1fe32dc29d', '::1', '', 1456132137, '__ci_last_regenerate|i:1456132041;name|s:6:"udunig";email|s:18:"udunig@hotmail.com";id|s:2:"29";user_type|s:1:"2";block_status|s:1:"0";loggedin|b:1;');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `idContent` int(11) NOT NULL,
  `ContentDescription` text NOT NULL,
  `History_idHistoty` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`idContent`, `ContentDescription`, `History_idHistoty`) VALUES
(1, 'The Politecnico di Milano (English: Polytechnic University of Milan) is the largest technical university in Italy, with about 40,000 students.[2] It offers undergraduate, graduate and higher education courses in engineering, architecture and design. Founded in 1863, it is the oldest university in Milan.\r\n\r\nThe Politecnico has two main campuses in Milan city, where the majority of the research and teaching activity are located, and other satellite campuses in five other cities across Lombardy and Emilia Romagna. The central offices and headquarters are located in the historical campus of Città Studi in Milan, which is also the largest, active since 1927.\r\n\r\nThe university was ranked the best for Engineering and among the top big universities in Italy in the CENSIS-Repubblica Italian University rankings for 2014-2015[3] and is ranked as the 20th best technical university in the world according to the QS World University Rankings.[4]\r\n\r\nThe university is ranked 11th for Design, 24th for Engineering and 14th for Architecture in the world, according to the QS World University Rankings.[5][6]', 46),
(2, '<p>this is a test.</p>', 49),
(3, '<p>this is a test.</p>', 50),
(4, '<p>this is a test.</p>', 51),
(5, '<p>this is a test.</p>', 52),
(6, '<p>this is a test.</p>', 53),
(7, '<p>this is a test.</p>', 54),
(8, '<p>this is a test.</p>', 55),
(9, '<p>this is a test.</p>', 56),
(10, '<p>this is a test.</p>', 57),
(11, '<p>this is a test.</p>', 58),
(12, '&lt;p&gt;this is a test.&lt;/p&gt;', 59),
(13, '&lt;p&gt;this is a test.&lt;/p&gt;', 60),
(14, '&lt;p&gt;this is a test.&lt;/p&gt;', 61),
(15, '&lt;p&gt;this is a test.&lt;/p&gt;', 62),
(16, '&lt;p&gt;this is a test.&lt;/p&gt;', 63),
(17, '&lt;p&gt;this is a test.&lt;/p&gt;', 64),
(18, '&lt;p&gt;this is a test.&lt;/p&gt;', 65),
(19, '&lt;p&gt;this is a test.&lt;/p&gt;', 66),
(20, 'this is a test', 67),
(21, 'this is a test', 68),
(22, 'this is a test', 69),
(23, 'this is a test for existing record', 70),
(24, 'this is a test for existing record', 72),
(25, 'this is a test for existing record', 74),
(26, 'this is a test for existing record', 75);

-- --------------------------------------------------------

--
-- Table structure for table `contributer`
--

CREATE TABLE `contributer` (
  `ContributerRating` int(11) DEFAULT NULL,
  `ContributorDescription` varchar(100) DEFAULT NULL,
  `InternalUser_idInternalUser` int(11) NOT NULL,
  `InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `externaluser`
--

CREATE TABLE `externaluser` (
  `ExternalUserLocalIP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `idHistoty` int(11) NOT NULL,
  `TimeSubmit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TimeApprove` datetime DEFAULT NULL,
  `Status_idStatus` int(11) NOT NULL,
  `Record_idRecord` int(11) NOT NULL,
  `Record_University_idUniversity` int(11) NOT NULL,
  `Record_Catagory_idCatagory` int(11) NOT NULL,
  `InternalUser_idInternalUser` int(11) NOT NULL,
  `InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`idHistoty`, `TimeSubmit`, `TimeApprove`, `Status_idStatus`, `Record_idRecord`, `Record_University_idUniversity`, `Record_Catagory_idCatagory`, `InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) VALUES
(9, '2016-01-16 15:00:07', NULL, 1, 23, 3, 2, 26, 0),
(10, '2016-01-16 15:42:28', NULL, 1, 24, 3, 2, 26, 0),
(11, '2016-01-16 15:42:37', NULL, 1, 25, 3, 2, 26, 0),
(12, '2016-01-16 15:42:38', NULL, 1, 26, 3, 2, 26, 0),
(13, '2016-01-16 15:45:38', NULL, 0, 27, 3, 2, 26, 0),
(14, '2016-01-16 15:45:49', NULL, 1, 28, 3, 2, 26, 0),
(15, '2016-01-16 15:48:07', NULL, 1, 29, 3, 2, 26, 0),
(16, '2016-01-16 15:48:09', NULL, 1, 30, 3, 2, 26, 0),
(17, '2016-01-16 15:48:20', NULL, 0, 31, 3, 2, 26, 0),
(18, '2016-01-16 15:50:39', NULL, 1, 32, 3, 2, 26, 0),
(19, '2016-01-16 15:51:23', NULL, 1, 33, 3, 2, 26, 0),
(20, '2016-01-16 15:58:26', NULL, 1, 34, 3, 2, 26, 0),
(24, '2016-01-18 07:59:30', NULL, 1, 18, 2, 3, 26, 0),
(28, '2016-01-18 08:03:16', NULL, 1, 18, 2, 3, 26, 0),
(29, '2016-01-18 08:03:19', NULL, 0, 18, 2, 3, 26, 0),
(35, '2016-01-18 22:02:30', NULL, 1, 23, 3, 2, 28, 0),
(36, '2016-01-18 22:03:04', NULL, 1, 23, 3, 2, 28, 0),
(37, '2016-01-18 22:03:55', NULL, 1, 23, 3, 2, 28, 0),
(38, '2016-01-19 11:30:45', NULL, 1, 28, 3, 2, 26, 0),
(39, '2016-01-19 11:31:46', NULL, 1, 28, 3, 2, 26, 0),
(40, '2016-01-19 11:32:22', NULL, 1, 28, 3, 2, 26, 0),
(41, '2016-01-19 11:33:37', NULL, 1, 28, 3, 2, 26, 0),
(42, '2016-01-19 11:34:53', NULL, 1, 28, 3, 2, 26, 0),
(43, '2016-01-19 11:36:18', NULL, 0, 28, 3, 2, 26, 0),
(44, '2016-01-19 11:36:30', NULL, 1, 28, 3, 2, 26, 0),
(45, '2016-01-19 11:38:49', NULL, 1, 28, 3, 2, 26, 0),
(46, '2016-01-19 11:42:42', NULL, 1, 28, 3, 2, 26, 0),
(47, '2016-01-19 11:44:07', NULL, 1, 28, 3, 2, 26, 0),
(49, '2016-02-21 19:02:18', NULL, 1, 36, 2, 3, 25, 0),
(50, '2016-02-21 19:35:40', NULL, 2, 37, 2, 3, 29, 2),
(51, '2016-02-21 19:36:00', NULL, 2, 38, 2, 3, 29, 2),
(52, '2016-02-21 19:39:00', NULL, 2, 39, 2, 3, 29, 2),
(53, '2016-02-21 19:39:18', NULL, 2, 40, 2, 3, 29, 2),
(54, '2016-02-21 19:40:11', NULL, 2, 41, 2, 3, 29, 2),
(55, '2016-02-21 19:42:32', NULL, 2, 42, 2, 3, 29, 2),
(56, '2016-02-21 19:50:46', NULL, 2, 43, 2, 3, 29, 2),
(57, '2016-02-21 19:54:02', NULL, 2, 44, 2, 3, 29, 2),
(58, '2016-02-21 19:56:29', NULL, 2, 45, 2, 3, 29, 2),
(59, '2016-02-21 20:11:27', NULL, 2, 46, 2, 3, 29, 2),
(60, '2016-02-21 20:11:48', NULL, 2, 47, 2, 3, 29, 2),
(61, '2016-02-21 20:13:55', NULL, 2, 48, 2, 3, 29, 2),
(62, '2016-02-21 20:22:05', NULL, 2, 49, 2, 3, 29, 2),
(63, '2016-02-21 20:26:50', NULL, 2, 50, 2, 3, 29, 2),
(64, '2016-02-21 20:27:14', NULL, 2, 51, 2, 3, 29, 2),
(65, '2016-02-21 20:27:32', NULL, 2, 52, 2, 3, 29, 2),
(66, '2016-02-21 20:29:02', NULL, 1, 53, 2, 3, 29, 2),
(67, '2016-02-22 09:07:07', NULL, 1, 55, 3, 1, 25, 0),
(68, '2016-02-22 11:12:48', NULL, 2, 56, 3, 1, 25, 0),
(69, '2016-02-22 13:52:44', NULL, 2, 56, 3, 1, 25, 0),
(70, '2016-02-22 14:12:34', NULL, 2, 57, 1, 3, 26, 0),
(72, '2016-02-22 14:23:17', NULL, 2, 57, 1, 3, 26, 0),
(74, '2016-02-22 14:48:59', NULL, 2, 56, 3, 1, 26, 0),
(75, '2016-02-22 15:02:46', NULL, 2, 58, 2, 1, 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `internaluser`
--

CREATE TABLE `internaluser` (
  `idInternalUser` int(11) NOT NULL,
  `InternalUserName` varchar(100) NOT NULL,
  `InternalUserPassword` varchar(100) NOT NULL,
  `InternalUserEmail` varchar(100) NOT NULL DEFAULT '',
  `InternalUserPhone` varchar(100) DEFAULT NULL,
  `InternalUserAddress` varchar(100) DEFAULT NULL,
  `StatusBlockUser` tinyint(1) NOT NULL,
  `FacebookToken` varchar(100) DEFAULT NULL,
  `InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internaluser`
--

INSERT INTO `internaluser` (`idInternalUser`, `InternalUserName`, `InternalUserPassword`, `InternalUserEmail`, `InternalUserPhone`, `InternalUserAddress`, `StatusBlockUser`, `FacebookToken`, `InternalUserType_idInternalUserType`) VALUES
(18, 'gvlvm3', 'd41d8cd98f00b204e9800998ecf8427e', 'rewwq@some.com', '', '', 0, NULL, 0),
(22, 'gvlvm4', 'd41d8cd98f00b204e9800998ecf8427e', 'gvlvm10@some.com', '', '', 0, NULL, 0),
(23, 'gvlvm5', 'd41d8cd98f00b204e9800998ecf8427e', 'gvlvm5@some.com', '', '', 1, NULL, 0),
(25, 'shila', '25d55ad283aa400af464c76d713c07ad', 'shila@hotmail.com', '', '', 0, NULL, 0),
(26, 'ilyas4', '5f4dcc3b5aa765d61d8327deb882cf99', 'ilyas4@hotmail.com', '123456789', 'Italy', 0, NULL, 0),
(27, 'shila2', '25d55ad283aa400af464c76d713c07ad', 'skda@hid.com', NULL, NULL, 0, NULL, 0),
(28, 'shila3', '25d55ad283aa400af464c76d713c07ad', 'shile3@hid.com', NULL, NULL, 0, NULL, 0),
(29, 'udunig', '23b908e3940f89af0f1b8de19bc77dab', 'udunig@hotmail.com', NULL, NULL, 0, NULL, 2),
(30, 'gvlvm100', '23b908e3940f89af0f1b8de19bc77dab', 'gvlvm100@some.com', NULL, NULL, 0, NULL, 0),
(32, 'ekber1', 'e10adc3949ba59abbe56e057f20f883e', 'ekber1@hotmail.com', NULL, NULL, 0, NULL, 0),
(33, 'ekber2', 'e10adc3949ba59abbe56e057f20f883e', 'ekber2@hotmail.com', NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `internalusertype`
--

CREATE TABLE `internalusertype` (
  `idInternalUserType` int(11) NOT NULL,
  `InternalUserTypeName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internalusertype`
--

INSERT INTO `internalusertype` (`idInternalUserType`, `InternalUserTypeName`) VALUES
(0, 'user'),
(1, 'admin'),
(2, 'super_admin');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, '123456', 0, 0, 0, NULL, 0),
(2, '1234', 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logging`
--

CREATE TABLE `logging` (
  `idLogging` int(11) NOT NULL,
  `LoggingAction` varchar(45) NOT NULL,
  `LoggingTimeStamp` datetime NOT NULL,
  `InternalUser_idInternalUser` int(11) NOT NULL,
  `InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=795 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(92, 'api/users/12', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:6:"123456";i:1;N;}', '123456', '::1', 1451753141, 0.030055, '1', 200),
(93, 'api/user', 'put', NULL, '', '::1', 1451758911, 0.0606091, '0', 403),
(94, 'api/user', 'put', NULL, '', '::1', 1451758935, 0.0140839, '0', 403),
(95, 'api/user', 'put', NULL, '', '::1', 1451758936, 0.00930905, '0', 403),
(96, 'api/user', 'put', NULL, '', '::1', 1451758937, 0.0155261, '0', 403),
(97, 'api/user', 'put', NULL, '', '::1', 1451758937, 0.011704, '0', 403),
(98, 'api/user', 'put', NULL, '', '::1', 1451758937, 0.010165, '0', 403),
(99, 'api/user', 'put', NULL, '', '::1', 1451758937, 0.00889206, '0', 403),
(100, 'api/user', 'put', NULL, '', '::1', 1451759071, 0.0185781, '1', 0),
(101, 'api/user', 'put', NULL, '', '::1', 1451759131, 0.0253611, '0', 403),
(102, 'api/user', 'put', NULL, '', '::1', 1451759140, 0.0107749, '0', 403),
(103, 'api/user', 'put', NULL, '', '::1', 1451759141, 0.00915313, '0', 403),
(104, 'api/user', 'put', NULL, '', '::1', 1451759142, 0.00954318, '0', 403),
(105, 'api/user', 'put', NULL, '', '::1', 1451759142, 0.0114899, '0', 403),
(106, 'api/user', 'put', NULL, '', '::1', 1451759142, 0.0101948, '0', 403),
(107, 'api/user', 'put', NULL, '', '::1', 1451759142, 0.009197, '0', 403),
(108, 'api/user', 'put', NULL, '', '::1', 1451759211, 0.0201912, '0', 403),
(109, 'api/user', 'put', NULL, '', '::1', 1451759212, 0.00911903, '0', 403),
(110, 'api/user', 'put', NULL, '', '::1', 1451759212, 0.00973296, '0', 403),
(111, 'api/user', 'put', NULL, '', '::1', 1451759212, 0.00683093, '0', 403),
(112, 'api/user', 'put', NULL, '', '::1', 1451759212, 0.00691414, '0', 403),
(113, 'api/user', 'put', NULL, '', '::1', 1451759212, 0.00948095, '0', 403),
(114, 'api/user', 'put', NULL, '', '::1', 1451759213, 0.00926304, '0', 403),
(115, 'api/user', 'put', NULL, '', '::1', 1451759223, 0.0090611, '0', 403),
(116, 'api/user', 'put', NULL, '', '::1', 1451759224, 0.00984502, '0', 403),
(117, 'api/user', 'put', NULL, '', '::1', 1451759224, 0.0136142, '0', 403),
(118, 'api/user', 'put', NULL, '', '::1', 1451759224, 0.00962114, '0', 403),
(119, 'api/user', 'put', NULL, '', '::1', 1451759224, 0.011672, '0', 403),
(120, 'api/user', 'put', NULL, '', '::1', 1451759225, 0.00951099, '0', 403),
(121, 'api/user', 'put', NULL, '', '::1', 1451759225, 0.00968981, '0', 403),
(122, 'api/user', 'put', NULL, '', '::1', 1451759225, 0.00902104, '0', 403),
(123, 'api/user', 'put', NULL, '', '::1', 1451759226, 0.00960803, '0', 403),
(124, 'api/user', 'put', NULL, '', '::1', 1451759226, 0.0112259, '0', 403),
(125, 'api/user', 'put', NULL, '', '::1', 1451759226, 0.0091269, '0', 403),
(126, 'api/user', 'put', NULL, '', '::1', 1451761079, 0.0256331, '0', 403),
(127, 'api/user', 'put', NULL, '', '::1', 1451761080, 0.00918794, '0', 403),
(128, 'api/user', 'put', NULL, '', '::1', 1451761080, 0.011837, '0', 403),
(129, 'api/user', 'put', NULL, '', '::1', 1451761080, 0.00954485, '0', 403),
(130, 'api/user', 'put', NULL, '', '::1', 1451761080, 0.0110738, '0', 403),
(131, 'api/user', 'put', NULL, '', '::1', 1451761080, 0.0110948, '0', 403),
(132, 'api/user', 'put', NULL, '', '::1', 1451761098, 0.0107379, '0', 403),
(133, 'api/user', 'put', NULL, '', '::1', 1451761100, 0.00933909, '0', 403),
(134, 'api/user', 'put', NULL, '', '::1', 1451761100, 0.010216, '0', 403),
(135, 'api/user', 'put', NULL, '', '::1', 1451761100, 0.00975513, '0', 403),
(136, 'api/user', 'put', NULL, '', '::1', 1451761101, 0.00966406, '0', 403),
(137, 'api/user', 'put', NULL, '', '::1', 1451761250, 0.0183721, '1', 0),
(138, 'api/user', 'put', NULL, '', '::1', 1451761510, 0.081213, '1', 0),
(139, 'api/user', 'put', NULL, '', '::1', 1451761898, 0.053817, '1', 400),
(140, 'api/user', 'put', NULL, '', '::1', 1451761929, 0.030293, '1', 400),
(141, 'api/user', 'put', NULL, '', '::1', 1451761930, 0.0154412, '1', 400),
(142, 'api/user', 'put', NULL, '', '::1', 1451761930, 0.0201502, '1', 400),
(143, 'api/user', 'put', NULL, '', '::1', 1451762340, 0.0553749, '1', 400),
(144, 'api/user', 'put', NULL, '', '::1', 1451762341, 0.0161231, '1', 400),
(145, 'api/user', 'put', NULL, '', '::1', 1451762341, 0.0143189, '1', 400),
(146, 'api/user', 'put', NULL, '', '::1', 1451762341, 0.015044, '1', 400),
(147, 'api/user', 'put', NULL, '', '::1', 1451762341, 0.0160148, '1', 400),
(148, 'api/user', 'put', NULL, '', '::1', 1451763624, 0.0597868, '1', 400),
(149, 'api/user', 'put', NULL, '', '::1', 1451763625, 0.015048, '1', 400),
(150, 'api/user', 'put', NULL, '', '::1', 1451763625, 0.0162771, '1', 400),
(151, 'api/user', 'put', NULL, '', '::1', 1451763625, 0.015404, '1', 400),
(152, 'api/user', 'put', NULL, '', '::1', 1451763625, 0.0175471, '1', 400),
(153, 'api/user', 'put', NULL, '', '::1', 1451763625, 0.019846, '1', 400),
(154, 'api/user', 'put', NULL, '', '::1', 1451763626, 0.021095, '1', 400),
(155, 'api/user', 'put', NULL, '', '::1', 1451763633, 0.0164239, '1', 400),
(156, 'api/user', 'put', NULL, '', '::1', 1451763634, 0.0160542, '1', 400),
(157, 'api/user', 'put', NULL, '', '::1', 1451763634, 0.0234199, '1', 400),
(158, 'api/user', 'put', NULL, '', '::1', 1451764963, 0.0843611, '1', 400),
(159, 'api/user', 'put', NULL, '', '::1', 1451764964, 0.0145371, '1', 400),
(160, 'api/user', 'put', NULL, '', '::1', 1451764964, 0.0168068, '1', 400),
(161, 'api/user', 'put', NULL, '', '::1', 1451764964, 0.0184209, '1', 400),
(162, 'api/user', 'put', NULL, '', '::1', 1451764965, 0.018945, '1', 400),
(163, 'api/user', 'put', NULL, '', '::1', 1451764965, 0.0166101, '1', 400),
(164, 'api/user', 'put', NULL, '', '::1', 1451766265, 0.042902, '1', 400),
(165, 'api/user', 'put', NULL, '', '::1', 1451766266, 0.0171731, '1', 400),
(166, 'api/user', 'put', NULL, '', '::1', 1451766267, 0.015734, '1', 400),
(167, 'api/user', 'put', NULL, '', '::1', 1451766267, 0.0152931, '1', 400),
(168, 'api/user', 'put', NULL, '', '::1', 1451766268, 0.0147469, '1', 400),
(169, 'api/user', 'put', NULL, '', '::1', 1451766268, 0.015903, '1', 400),
(170, 'api/user', 'put', NULL, '', '::1', 1451766632, NULL, '1', 0),
(171, 'api/user', 'put', 'a:4:{s:13:"email_address";s:17:"iddk@jdasklfd.com";s:8:"password";s:6:"123456";s:21:"password_confirmation";s:6:"123456";s:12:"phone_number";s:13:"323-2323-2332";}', '', '::1', 1451768119, NULL, '1', 0),
(172, 'api/user', 'put', 'a:4:{s:13:"email_address";s:17:"iddk@jdasklfd.com";s:8:"password";s:6:"123456";s:21:"password_confirmation";s:6:"123456";s:12:"phone_number";s:13:"323-2323-2332";}', '', '::1', 1451768494, 0.0809569, '1', 400),
(173, 'api/user', 'put', 'a:4:{s:13:"email_address";s:17:"iddk@jdasklfd.com";s:8:"password";s:9:"123456789";s:21:"password_confirmation";s:9:"123456789";s:12:"phone_number";s:13:"323-2323-2332";}', '', '::1', 1451768516, 0.0854509, '1', 0),
(174, 'api/user', 'put', 'a:4:{s:13:"email_address";s:17:"iddk@jdasklfd.com";s:8:"password";s:9:"123456789";s:21:"password_confirmation";s:5:"12345";s:12:"phone_number";s:13:"323-2323-2332";}', '', '::1', 1451768966, 0.0562642, '1', 400),
(175, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:5:"fdsaf";s:20:"InternalUserPassword";s:5:"12345";s:27:"InternalUserConfirmPassword";s:5:"12345";}', '', '::1', 1451770067, 0.063292, '1', 400),
(176, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:6:"fdsaf@";s:20:"InternalUserPassword";s:5:"12345";s:27:"InternalUserConfirmPassword";s:5:"12345";}', '', '::1', 1451770073, 0.0254872, '1', 400),
(177, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:5:"12345";}', '', '::1', 1451770085, 0.0203528, '1', 400),
(178, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:5:"12345";}', '', '::1', 1451770102, 0.0250118, '1', 400),
(179, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451770106, 0.0206451, '1', 400),
(180, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451770123, 0.0396838, '1', 0),
(181, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451770468, 0.0679131, '1', 200),
(182, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451770605, 0.0603509, '1', 0),
(183, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451770646, 0.0456178, '1', 400),
(184, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451770682, 0.0421898, '1', 400),
(185, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"ilyas";s:16:"InternalUserMail";s:15:"fdsaf@yahoo.com";s:20:"InternalUserPassword";s:6:"123456";s:27:"InternalUserConfirmPassword";s:6:"123456";}', '', '::1', 1451809207, 0.097986, '1', 400),
(186, 'api/user', 'put', NULL, '', '::1', 1451809217, 0.0146701, '1', 400),
(187, 'api/user', 'put', NULL, '', '::1', 1451809218, 0.0194001, '1', 400),
(188, 'api/user', 'put', NULL, '', '::1', 1451809218, 0.0149651, '1', 400),
(189, 'api/user', 'put', NULL, '', '::1', 1451809218, 0.015764, '1', 400),
(190, 'api/user', 'put', NULL, '', '::1', 1451809218, 0.0142589, '1', 400),
(191, 'api/user', 'put', NULL, '', '::1', 1451809218, 0.0161221, '1', 400),
(192, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"gvlvm";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:2:"21";s:16:"InternalUserMail";s:5:"rewfq";}', '', '::1', 1451809423, 0.021127, '1', 400),
(193, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"gvlvm";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:16:"InternalUserMail";s:14:"rewfq@some.com";}', '', '::1', 1451809446, 0.0410581, '1', 200),
(194, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:5:"gvlvm";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:16:"InternalUserMail";s:14:"rewfq@some.com";}', '', '::1', 1451810322, 0.0881729, '1', 400),
(195, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm2";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:16:"InternalUserMail";s:13:"rewq@some.com";}', '', '::1', 1451810335, 0.0292079, '1', 200),
(196, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:16:"InternalUserMail";s:14:"rewwq@some.com";}', '', '::1', 1451810404, 0.0292189, '1', 200),
(197, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:16:"InternalUserMail";s:14:"rewwq@some.com";}', '', '::1', 1451810906, 0.0504041, '1', 400),
(198, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:16:"InternalUserMail";s:14:"rewwq@some.com";}', '', '::1', 1451811545, 0.063525, '1', 400),
(199, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451811560, 0.020103, '1', 400),
(200, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812374, 0.0618401, '1', 400),
(201, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812380, 0.019454, '1', 400),
(202, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812381, 0.01967, '1', 400),
(203, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812381, 0.0190151, '1', 400),
(204, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812381, 0.0181241, '1', 400),
(205, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812881, 0.0368879, '1', 0),
(206, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812946, 0.0223842, '1', 0),
(207, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451812947, 0.0201421, '1', 0),
(208, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451813080, 0.028229, '1', 200),
(209, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451813151, 0.018024, '1', 400),
(210, 'api/user', 'put', NULL, '', '::1', 1451813806, NULL, '1', 0),
(211, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451813829, NULL, '1', 0),
(212, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451813840, 0.0167959, '1', 400),
(213, 'api/user', 'put', NULL, '', '::1', 1451813842, 0.0143111, '1', 400),
(214, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451813927, 0.050334, '1', 400),
(215, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814005, 0.040869, '1', 400),
(216, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814007, 0.0194879, '1', 400),
(217, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814008, 0.018791, '1', 400),
(218, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814008, 0.0184391, '1', 400),
(219, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814008, 0.0173211, '1', 400),
(220, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814008, 0.017225, '1', 400),
(221, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814008, 0.0178962, '1', 400),
(222, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814009, 0.017318, '1', 400),
(223, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814009, 0.0200181, '1', 400),
(224, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814012, 0.01688, '1', 400),
(225, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814013, 0.0224791, '1', 400),
(226, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814013, 0.0200582, '1', 400),
(227, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814013, 0.0194709, '1', 400),
(228, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814013, 0.0190082, '1', 400),
(229, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814014, 0.0172, '1', 400),
(230, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814014, 0.019531, '1', 400),
(231, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814014, 0.025085, '1', 400),
(232, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814014, 0.0166328, '1', 400),
(233, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814065, 0.0512331, '1', 400),
(234, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814068, 0.0175521, '1', 400),
(235, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814068, 0.0185342, '1', 400),
(236, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814068, 0.017379, '1', 400),
(237, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814068, 0.017617, '1', 400),
(238, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451814068, 0.0170472, '1', 400),
(239, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm3";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:14:"rewwq@some.com";}', '', '::1', 1451815337, 0.0850861, '1', 400),
(240, 'api/user', 'put', 'a:5:{s:16:"InternalUserName";s:6:"gvlvm4";s:20:"InternalUserPassword";s:7:"1234567";s:27:"InternalUserConfirmPassword";s:7:"1234567";s:17:"InternalUserEmail";s:15:"gvlvm4@some.com";s:4:"test";s:4:"test";}', '', '::1', 1451815356, 0.030519, '1', 200),
(241, 'api/user', 'put', 'a:5:{s:16:"InternalUserName";s:6:"gvlvm4";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";s:17:"InternalUserEmail";s:15:"gvlvm4@some.com";s:4:"test";s:4:"test";}', '', '::1', 1451815666, 0.0585752, '1', 400),
(242, 'api/user', 'put', 'a:5:{s:16:"InternalUserName";s:6:"gvlvm5";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";s:17:"InternalUserEmail";s:15:"gvlvm5@some.com";s:4:"test";s:4:"test";}', '', '::1', 1451815674, 0.0377641, '1', 200),
(243, 'api/user', 'post', 'a:1:{s:16:"InternalUserName";s:5:"gvlvm";}', '', '::1', 1451817494, 0.023948, '1', 404),
(244, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817529, 0.015969, '1', 404),
(245, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817541, 0.0157909, '1', 404),
(246, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817542, 0.015197, '1', 404),
(247, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817542, 0.0146408, '1', 404),
(248, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817542, 0.0152421, '1', 404),
(249, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817542, 0.0144958, '1', 404),
(250, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm5";}', '', '::1', 1451817667, 0.0400159, '1', 400),
(251, 'api/user/11', 'post', 'a:2:{i:0;N;s:16:"InternalUserName";s:6:"gvlvm9";}', '', '::1', 1451817677, 0.0275991, '1', 200),
(252, 'api/user', 'put', 'a:4:{s:16:"InternalUserName";s:6:"gvlvm6";s:20:"InternalUserPassword";s:9:"123456789";s:27:"InternalUserConfirmPassword";s:9:"123456789";s:17:"InternalUserEmail";s:15:"gvlvm6@some.com";}', '', '::1', 1451818920, 0.100316, '1', 200),
(253, 'api/user/24', 'delete', 'a:1:{i:0;N;}', '', '::1', 1451818971, 0.021898, '1', 200),
(254, 'api/user', 'delete', NULL, '', '::1', 1451928773, 0.0656729, '1', 404),
(255, 'api/user_register', 'get', NULL, '', '::1', 1451928785, 0.0178251, '1', 404),
(256, 'api/user_register', 'put', NULL, '', '::1', 1451934340, 0.0626249, '1', 400),
(257, 'api/user_register', 'put', NULL, '', '::1', 1451934387, 0.0252018, '1', 400),
(258, 'api/user_register', 'put', NULL, '', '::1', 1451934532, 0.0624819, '1', 400),
(259, 'api/user_register', 'put', NULL, '', '::1', 1451934615, NULL, '1', 0),
(260, 'api/user_register', 'put', NULL, '', '::1', 1451934718, NULL, '1', 0),
(261, 'api/user_register', 'put', NULL, '', '::1', 1451934719, NULL, '1', 0),
(262, 'api/user_register', 'put', NULL, '', '::1', 1451934720, NULL, '1', 0),
(263, 'api/user_register', 'put', NULL, '', '::1', 1451934720, NULL, '1', 0),
(264, 'api/user_register', 'put', NULL, '', '::1', 1451934720, NULL, '1', 0),
(265, 'api/user_register', 'put', NULL, '', '::1', 1451934720, NULL, '1', 0),
(266, 'api/user_register', 'put', NULL, '', '::1', 1451934720, NULL, '1', 0),
(267, 'api/user_register', 'put', NULL, '', '::1', 1451934720, NULL, '1', 0),
(268, 'api/user_register', 'put', NULL, '', '::1', 1451934721, NULL, '1', 0),
(269, 'api/user_register', 'put', NULL, '', '::1', 1451934721, NULL, '1', 0),
(270, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:4:"pass";}', '', '::1', 1451935209, NULL, '1', 0),
(271, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:4:"pass";}', '', '::1', 1451935250, 0.026737, '1', 400),
(272, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935259, 0.0614512, '1', 200),
(273, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935283, 0.055908, '1', 400),
(274, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935563, 0.06811, '1', 400),
(275, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935601, 0.0602469, '1', 400),
(276, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935604, 0.0278859, '1', 400),
(277, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935604, 0.023222, '1', 400),
(278, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935605, 0.0203609, '1', 400),
(279, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451935605, 0.0229909, '1', 400),
(280, 'api/user_login', 'post', NULL, '', '::1', 1451937098, 0.0556889, '1', 0),
(281, 'api/user_login', 'post', NULL, '', '::1', 1451937386, 0.033833, '1', 200),
(282, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451937464, 0.044924, '1', 200),
(283, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939038, 0.111218, '1', 200),
(284, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:7:"ilyas26";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939046, 0.025018, '1', 200),
(285, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939379, 0.0474179, '1', 200),
(286, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939512, 0.0592759, '1', 200),
(287, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939532, 0.041641, '1', 200),
(288, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939748, 0.032764, '1', 200),
(289, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939749, 0.0153742, '1', 200),
(290, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939749, 0.0137939, '1', 200),
(291, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"password";}', '', '::1', 1451939749, 0.012357, '1', 200),
(292, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:7:"ilyas90";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939761, 0.0368681, '1', 200),
(293, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939797, 0.0203211, '1', 200),
(294, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939799, 0.0173249, '1', 200),
(295, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939799, 0.017431, '1', 200),
(296, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939799, 0.0179071, '1', 200),
(297, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939799, 0.0181429, '1', 200),
(298, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939799, 0.017935, '1', 200),
(299, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939800, 0.0185101, '1', 200),
(300, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939817, 0.061929, '1', 200),
(301, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939818, 0.019948, '1', 200),
(302, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939818, 0.0183039, '1', 200),
(303, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939818, 0.0178509, '1', 200),
(304, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939930, 0.0683582, '1', 200),
(305, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939932, 0.029928, '1', 200),
(306, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939933, 0.018739, '1', 200),
(307, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939933, 0.018718, '1', 200),
(308, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939934, 0.0204279, '1', 200),
(309, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939934, 0.016901, '1', 200),
(310, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451939934, 0.0200861, '1', 200),
(311, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939944, 0.0207541, '1', 200),
(312, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939945, 0.0257401, '1', 200),
(313, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939945, 0.0176909, '1', 200),
(314, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939945, 0.0276351, '1', 200),
(315, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939946, 0.0173111, '1', 200),
(316, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451939983, 0.0413401, '1', 400),
(317, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939992, 0.069001, '1', 200),
(318, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939993, 0.0189621, '1', 200),
(319, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939993, 0.019392, '1', 200),
(320, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939993, 0.0184569, '1', 200),
(321, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939993, 0.023195, '1', 200),
(322, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451939994, 0.0180309, '1', 200),
(323, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451940114, 0.0616429, '1', 200),
(324, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451940118, 0.0184588, '1', 200),
(325, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451940119, 0.0182831, '1', 200),
(326, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:5:"ilyas";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451940119, 0.0177939, '1', 200),
(327, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940130, 0.0253649, '1', 200),
(328, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940407, 0.0904109, '1', 200),
(329, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940409, 0.0205591, '1', 200),
(330, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940410, 0.0167749, '1', 200),
(331, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940410, 0.020457, '1', 200),
(332, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940410, 0.017055, '1', 200),
(333, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.0188079, '1', 200),
(334, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.019161, '1', 200),
(335, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.0189562, '1', 200),
(336, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.0175478, '1', 200),
(337, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.0177939, '1', 200),
(338, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.0182781, '1', 200),
(339, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940411, 0.016206, '1', 200),
(340, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940412, 0.0191772, '1', 200),
(341, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940412, 0.0191901, '1', 200),
(342, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940413, 0.026485, '1', 200),
(343, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940413, 0.018923, '1', 200),
(344, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940835, 0.0835271, '1', 200),
(345, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940836, 0.0203998, '1', 200),
(346, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940836, 0.0194571, '1', 200),
(347, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940837, 0.0170779, '1', 200),
(348, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940837, 0.021631, '1', 200),
(349, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940837, 0.0231972, '1', 200),
(350, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451940837, 0.0217891, '1', 200),
(351, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941112, 0.061496, '1', 400),
(352, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:16:"ilyas2@gmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941164, 0.054554, '1', 400),
(353, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941650, 0.0771949, '1', 400),
(354, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941656, 0.0187509, '1', 400),
(355, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941657, 0.017107, '1', 400),
(356, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941658, 0.016969, '1', 400),
(357, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451941700, 0.0859551, '1', 400),
(358, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451941830, 0.08447, '1', 200),
(359, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451941868, 0.0519578, '1', 200),
(360, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451942343, 0.086278, '1', 200),
(361, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:9:"passwords";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451942365, 0.059804, '1', 400),
(362, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:0:"";}', '', '::1', 1451942975, 0.0877991, '1', 200),
(363, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:6:"ilyas2";s:20:"InternalUserPassword";s:5:"fdsaf";}', '', '::1', 1451942984, 0.02299, '1', 200),
(364, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"ffdsfsda";}', '', '::1', 1451943007, 0.0436449, '1', 200),
(365, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"ffdsfsda";}', '', '::1', 1451943309, NULL, '1', 0),
(366, 'api/user_login', 'post', 'a:2:{s:16:"InternalUserName";s:0:"";s:20:"InternalUserPassword";s:8:"ffdsfsda";}', '', '::1', 1451943554, NULL, '1', 0),
(367, 'api/user_register', 'put', NULL, '', '::1', 1451944622, 0.039742, '1', 400),
(368, 'api/user_register', 'put', NULL, '', '::1', 1451944699, 0.0359418, '1', 400),
(369, 'api/user_register', 'put', NULL, '', '::1', 1451944700, 0.0135989, '1', 400),
(370, 'api/user_register', 'put', NULL, '', '::1', 1451944700, 0.014365, '1', 400),
(371, 'api/user_register', 'put', NULL, '', '::1', 1451944701, 0.0145102, '1', 400),
(372, 'api/user_register', 'put', NULL, '', '::1', 1451944701, 0.012933, '1', 400),
(373, 'api/user_register', 'put', NULL, '', '::1', 1451944701, 0.0150928, '1', 400),
(374, 'api/user_login', 'post', NULL, '', '::1', 1451944720, 0.0135188, '1', 400),
(375, 'api/user_login', 'post', NULL, '', '::1', 1451944721, 0.0153718, '1', 400),
(376, 'api/user_login', 'post', NULL, '', '::1', 1451944721, 0.0131099, '1', 400),
(377, 'api/user_login', 'post', NULL, '', '::1', 1451944721, 0.0153129, '1', 400),
(378, 'api/user_login', 'post', NULL, '', '::1', 1451944721, 0.0130901, '1', 400),
(379, 'api/user_login', 'post', NULL, '', '::1', 1451944761, 0.0410211, '1', 200),
(380, 'api/user_login', 'post', NULL, '', '::1', 1451944762, 0.018414, '1', 200),
(381, 'api/user_login', 'post', NULL, '', '::1', 1451944762, 0.016856, '1', 200),
(382, 'api/user_login', 'post', NULL, '', '::1', 1451944762, 0.0253751, '1', 200),
(383, 'api/user_login', 'post', NULL, '', '::1', 1451944763, 0.0126832, '1', 200),
(384, 'api/user_login', 'post', NULL, '', '::1', 1451944763, 0.043324, '1', 200),
(385, 'api/user_login', 'post', NULL, '', '::1', 1451944765, 0.0189302, '1', 200),
(386, 'api/user_login', 'post', NULL, '', '::1', 1451944765, 0.0127699, '1', 200),
(387, 'api/user_login', 'post', NULL, '', '::1', 1451944765, 0.0143459, '1', 200),
(388, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas2";s:17:"InternalUserEmail";s:0:"";s:20:"InternalUserPassword";s:9:"passwords";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944831, 0.0133989, '1', 400),
(389, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944855, 0.0189521, '1', 400),
(390, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944857, 0.0153091, '1', 400),
(391, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944858, 0.0137498, '1', 400),
(392, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944858, 0.021745, '1', 400),
(393, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944858, 0.0141401, '1', 400),
(394, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944859, 0.016217, '1', 400),
(395, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944859, 0.013231, '1', 400),
(396, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944859, 0.0182331, '1', 400),
(397, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944860, 0.0149961, '1', 400),
(398, 'api/user_register', 'put', 'a:4:{s:16:"InternalUserName";s:6:"ilyas3";s:17:"InternalUserEmail";s:18:"ilays3@hotmail.com";s:20:"InternalUserPassword";s:8:"password";s:27:"InternalUserConfirmPassword";s:8:"password";}', '', '::1', 1451944860, 0.01334, '1', 400),
(399, 'api/user_login', 'post', NULL, '', '::1', 1451945979, 0.071743, '1', 200),
(400, 'api/user_login', 'post', NULL, '', '::1', 1451945991, 0.016721, '1', 200),
(401, 'api/user_login', 'post', NULL, '', '::1', 1451945991, 0.0141041, '1', 200),
(402, 'api/user_login', 'post', NULL, '', '::1', 1451945991, 0.0119982, '1', 200),
(403, 'api/user_login', 'post', NULL, '', '::1', 1451945991, 0.013201, '1', 200),
(404, 'api/user_login', 'post', 'a:1:{s:6:"fdsfds";s:0:"";}', '', '::1', 1451945995, 0.0192111, '1', 200),
(405, 'api/user_login', 'post', 'a:2:{s:6:"fdsfds";s:0:"";s:5:"fdsfa";s:0:"";}', '', '::1', 1451946004, 0.0156789, '1', 200),
(406, 'api/user_register', 'put', NULL, '', '::1', 1451946094, 0.025826, '1', 400),
(407, 'api/user_register', 'put', NULL, '', '::1', 1451946095, 0.0145411, '1', 400),
(408, 'api/user_register', 'put', NULL, '', '::1', 1451946095, 0.0162709, '1', 400),
(409, 'api/user_register', 'put', NULL, '', '::1', 1451946095, 0.015903, '1', 400),
(410, 'api/user_register', 'put', 'a:1:{s:5:"fdfas";s:0:"";}', '', '::1', 1451946098, 0.0228858, '1', 400),
(411, 'api/user_register', 'put', 'a:1:{s:5:"fdfas";s:4:"fdsf";}', '', '::1', 1451946101, 0.015157, '1', 400),
(412, 'api/user_register', 'put', 'a:1:{s:5:"fdfas";s:4:"fdsf";}', '', '::1', 1451946101, 0.0154319, '1', 400),
(413, 'api/user_register', 'put', 'a:1:{s:5:"fdfas";s:4:"fdsf";}', '', '::1', 1451946102, 0.0121901, '1', 400),
(414, 'api/user_register', 'put', 'a:2:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";}', '', '::1', 1451946105, 0.014519, '1', 400),
(415, 'api/user_register', 'put', 'a:2:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";}', '', '::1', 1451946106, 0.0136001, '1', 400),
(416, 'api/user_register', 'put', 'a:2:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";}', '', '::1', 1451946106, 0.0135179, '1', 400),
(417, 'api/user_register', 'put', 'a:2:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";}', '', '::1', 1451946208, 0.0444291, '1', 400),
(418, 'api/user_register', 'put', 'a:3:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";s:5:"fdsaf";s:0:"";}', '', '::1', 1451946215, 0.014358, '1', 400),
(419, 'api/user_login', 'post', 'a:3:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";s:5:"fdsaf";s:0:"";}', '', '::1', 1452173040, 0.036588, '1', 200),
(420, 'api/userLogin', 'post', 'a:3:{s:5:"fdfas";s:4:"fdsf";s:7:"fdsafsd";s:5:"fdsaf";s:5:"fdsaf";s:0:"";}', '', '::1', 1452200225, 0.0435109, '1', 200),
(421, 'api/addUniversity', 'post', 'a:4:{s:14:"UniversityName";s:0:"";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:0:"";s:21:"UniversityDescription";s:0:"";}', '', '::1', 1452201138, 0.0708349, '1', 200),
(422, 'api/addUniversity', 'post', 'a:4:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";s:21:"UniversityDescription";s:0:"";}', '', '::1', 1452201199, 0.045399, '1', 200);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(423, 'api/addUniversity', 'post', 'a:4:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";s:21:"UniversityDescription";s:0:"";}', '', '::1', 1452201225, 0.0394349, '1', 200),
(424, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:5:"12345";}', '', '::1', 1452201272, 0.058955, '1', 200),
(425, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";}', '', '::1', 1452201279, 0.0247478, '1', 200),
(426, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";}', '', '::1', 1452201307, 0.054841, '1', 200),
(427, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";}', '', '::1', 1452201339, 0.0443461, '1', 200),
(428, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";}', '', '::1', 1452202715, 0.117729, '1', 200),
(429, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:8:"12345678";}', '', '::1', 1452202743, 0.02615, '1', 200),
(430, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:20:"Camerino, MC , Italy";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452202774, 0.0443752, '1', 200),
(431, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452202782, 0.019918, '1', 200),
(432, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:5:"fdsaf";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452202786, 0.0166249, '1', 200),
(433, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:5:"fdsaf";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452202940, 0.0568511, '1', 0),
(434, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:5:"fdsaf";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203197, 0.059798, '1', 200),
(435, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203490, 0.0176899, '1', 200),
(436, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203491, 0.0221729, '1', 200),
(437, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203491, 0.0154881, '1', 200),
(438, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203492, 0.015348, '1', 200),
(439, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203492, 0.0165222, '1', 200),
(440, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203492, 0.0224509, '1', 200),
(441, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203492, 0.02092, '1', 200),
(442, 'api/addUniversity', 'post', 'a:3:{s:14:"UniversityName";s:8:"Camerino";s:17:"UniversityAddress";s:0:"";s:21:"UniversityPhoneNumber";s:6:"123456";}', '', '::1', 1452203750, 0.0536561, '1', 200),
(443, 'api/getUniversities', 'get', NULL, '', '::1', 1452242288, 0.067343, '1', 404),
(444, 'api/getUniversities', 'get', NULL, '', '::1', 1452243067, 0.0503809, '1', 404),
(445, 'api/getUniversities', 'get', NULL, '', '::1', 1452243068, 0.012059, '1', 404),
(446, 'api/getUniversities', 'get', NULL, '', '::1', 1452243069, 0.0146079, '1', 404),
(447, 'api/getUniversities', 'get', NULL, '', '::1', 1452243302, 0.0595882, '1', 200),
(448, 'api/getUniversities', 'get', NULL, '', '::1', 1452243364, 0.0490432, '1', 200),
(449, 'api/getUniversities', 'get', NULL, '', '::1', 1452243482, 0.060586, '1', 200),
(450, 'api/getUniversities', 'get', NULL, '', '::1', 1452243826, 0.0470371, '1', 200),
(451, 'api/getUniversities', 'get', NULL, '', '::1', 1452244028, 0.0891368, '1', 200),
(452, 'api/getUniversities', 'get', NULL, '', '::1', 1452244245, 0.058172, '1', 200),
(453, 'api/getUniversities', 'get', NULL, '', '::1', 1452244291, 0.055702, '1', 200),
(454, 'api/getUniversities', 'get', NULL, '', '::1', 1452244304, 0.0580561, '1', 200),
(455, 'api/getUniversities', 'get', NULL, '', '::1', 1452244327, 0.057178, '1', 200),
(456, 'api/getUniversities', 'get', NULL, '', '::1', 1452244366, 0.047189, '1', 200),
(457, 'api/getUniversities', 'get', NULL, '', '::1', 1452244391, 0.0478971, '1', 200),
(458, 'api/getUniversities', 'get', NULL, '', '::1', 1452244504, 0.0504389, '1', 200),
(459, 'api/getUniversities', 'get', NULL, '', '::1', 1452244721, 0.0484519, '1', 200),
(460, 'api/getUniversities', 'get', NULL, '', '::1', 1452245060, 0.051645, '1', 200),
(461, 'api/getUniversities', 'get', NULL, '', '::1', 1452245084, 0.047632, '1', 200),
(462, 'api/getAUniversity/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452245319, 0.066077, '1', 200),
(463, 'api/getUniversities', 'get', NULL, '', '::1', 1452245632, 0.050447, '1', 200),
(464, 'api/getUniversities', 'get', NULL, '', '::1', 1452520468, 0.0795932, '1', 200),
(465, 'api/getUniversities', 'get', NULL, '', '::1', 1452593127, 0.0603499, '1', 200),
(466, 'api/getUniversities', 'get', NULL, '', '::1', 1452594295, 0.098161, '1', 200),
(467, 'api/getUniversities', 'get', NULL, '', '::1', 1452594877, 0.0494668, '1', 200),
(468, 'api/userRegister', 'put', 'a:4:{s:17:"InternalUserEmail";s:5:"fjdjk";s:16:"InternalUserName";s:8:"fdsafdfa";s:20:"InternalUserPassword";s:9:"fdsafdsas";s:27:"InternalUserConfirmPassword";s:6:"sfdsaf";}', '', '::1', 1452629121, 0.0913632, '1', 400),
(469, 'api/userRegister', 'put', 'a:4:{s:17:"InternalUserEmail";s:17:"shila@hotmail.com";s:16:"InternalUserName";s:5:"shila";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";}', '', '::1', 1452629172, 0.0879769, '1', 200),
(470, 'api/userRegister', 'put', 'a:4:{s:17:"InternalUserEmail";s:17:"shila@hotmail.com";s:16:"InternalUserName";s:5:"shila";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";}', '', '::1', 1452699213, 0.178422, '1', 400),
(471, 'api/userRegister', 'put', 'a:4:{s:17:"InternalUserEmail";s:17:"shila@hotmail.com";s:16:"InternalUserName";s:5:"shila";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";}', '', '::1', 1452699269, 0.087465, '1', 400),
(472, 'api/userRegister', 'put', 'a:4:{s:17:"InternalUserEmail";s:17:"shila@hotmail.com";s:16:"InternalUserName";s:5:"shila";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";}', '', '::1', 1452699493, 0.068948, '1', 400),
(473, 'api/userRegister', 'put', 'a:4:{s:17:"InternalUserEmail";s:17:"shila@hotmail.com";s:16:"InternalUserName";s:5:"shila";s:20:"InternalUserPassword";s:8:"12345678";s:27:"InternalUserConfirmPassword";s:8:"12345678";}', '', '::1', 1452699677, 0.056798, '1', 400),
(474, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452792254, NULL, '1', 0),
(475, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452792289, NULL, '1', 0),
(476, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452792334, NULL, '1', 0),
(477, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452792373, 0.0743661, '1', 0),
(478, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452793587, 0.088232, '1', 0),
(479, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452793622, 0.0738339, '1', 0),
(480, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452793724, 0.0811589, '1', 0),
(481, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452794072, 0.0763419, '1', 0),
(482, 'api/getAUniversity/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452796462, NULL, '1', 0),
(483, 'api/getAUniversity/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452796492, 0.0565262, '1', 200),
(484, 'api/addRecord', 'post', 'a:2:{s:23:"University_idUniversity";s:1:"2";s:12:"CategoryType";s:1:"2";}', '', '::1', 1452804144, 0.131457, '1', 200),
(485, 'api/addRecord', 'post', 'a:2:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";}', '', '::1', 1452804180, 0.0742068, '1', 200),
(486, 'api/addRecord', 'post', 'a:2:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";}', '', '::1', 1452809532, 0.0742819, '1', 200),
(487, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"11";}', '', '::1', 1452809600, NULL, '1', 0),
(488, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"11";}', '', '::1', 1452810256, 0.130375, '1', 404),
(489, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"11";}', '', '::1', 1452810301, 0.0761468, '1', 404),
(490, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"11";}', '', '::1', 1452810321, 0.0700021, '1', 404),
(491, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452810364, 0.094811, '1', 200),
(492, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452810471, 0.081485, '1', 200),
(493, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452811173, 0.094274, '1', 500),
(494, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452811200, 0.074086, '1', 200),
(495, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452811354, 0.0799029, '1', 200),
(496, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452811680, 0.0799432, '1', 200),
(497, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452811767, 0.074465, '1', 200),
(498, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452812475, 0.097307, '1', 500),
(499, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452812499, 0.088454, '1', 0),
(500, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452812780, 0.082655, '1', 200),
(501, 'api/userLogin', 'post', 'a:2:{s:16:"InternalUserName";s:1:"1";s:20:"InternalUserPassword";s:1:"2";}', '', '::1', 1452856820, 0.123987, '1', 200),
(502, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:1:"1";s:8:"password";s:1:"2";}', '', '::1', 1452856976, 0.019058, '1', 200),
(503, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:6:"ilyas2";s:8:"password";s:8:"password";}', '', '::1', 1452857114, 0.069145, '1', 200),
(504, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:6:"ilyas2";s:8:"password";s:8:"password";}', '', '::1', 1452857622, 0.0587921, '1', 200),
(505, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452857867, 0.068996, '1', 200),
(506, 'api/userRegister', 'put', 'a:5:{s:9:"user_name";s:6:"ilyas4";s:8:"password";s:8:"password";s:10:"user_email";s:18:"ilyas4@hotmail.com";s:10:"user_phone";s:9:"123456789";s:12:"user_address";s:5:"Italy";}', '', '::1', 1452858109, 0.0647309, '1', 400),
(507, 'api/userRegister', 'put', 'a:6:{s:9:"user_name";s:6:"ilyas4";s:8:"password";s:8:"password";s:10:"user_email";s:18:"ilyas4@hotmail.com";s:10:"user_phone";s:9:"123456789";s:12:"user_address";s:5:"Italy";s:16:"password_confirm";s:8:"password";}', '', '::1', 1452858163, NULL, '1', 0),
(508, 'api/userRegister', 'post', 'a:6:{s:9:"user_name";s:6:"ilyas4";s:8:"password";s:8:"password";s:10:"user_email";s:18:"ilyas4@hotmail.com";s:10:"user_phone";s:9:"123456789";s:12:"user_address";s:5:"Italy";s:16:"password_confirm";s:8:"password";}', '', '::1', 1452858291, NULL, '1', 0),
(509, 'api/userRegister', 'put', 'a:6:{s:9:"user_name";s:6:"ilyas4";s:8:"password";s:8:"password";s:10:"user_email";s:18:"ilyas4@hotmail.com";s:10:"user_phone";s:9:"123456789";s:12:"user_address";s:5:"Italy";s:16:"password_confirm";s:8:"password";}', '', '::1', 1452858326, NULL, '1', 0),
(510, 'api/userRegister', 'put', 'a:6:{s:9:"user_name";s:6:"ilyas4";s:8:"password";s:8:"password";s:10:"user_email";s:18:"ilyas4@hotmail.com";s:10:"user_phone";s:9:"123456789";s:12:"user_address";s:5:"Italy";s:16:"password_confirm";s:8:"password";}', '', '::1', 1452858380, 0.035491, '1', 0),
(511, 'api/userRegister', 'put', 'a:6:{s:9:"user_name";s:6:"ilyas4";s:8:"password";s:8:"password";s:10:"user_email";s:18:"ilyas4@hotmail.com";s:10:"user_phone";s:9:"123456789";s:12:"user_address";s:5:"Italy";s:16:"password_confirm";s:8:"password";}', '', '::1', 1452858429, 0.061609, '1', 200),
(512, 'api/addRecord', 'post', 'a:3:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"17";}', '', '::1', 1452863522, 0.0842528, '1', 200),
(513, 'api/getUniversities', 'get', NULL, '', '::1', 1452863629, NULL, '1', 0),
(514, 'api/getUniversities', 'get', NULL, '', '::1', 1452863646, 0.0486171, '1', 200),
(515, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452890187, 0.128906, '1', 200),
(516, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933445, 0.0825572, '0', 403),
(517, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933505, 0.0265958, '0', 403),
(518, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933506, 0.00910306, '0', 403),
(519, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933506, 0.0141311, '0', 403),
(520, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933507, 0.00991702, '0', 403),
(521, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933507, 0.01472, '0', 403),
(522, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933507, 0.01615, '0', 403),
(523, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933507, 0.0107501, '0', 403),
(524, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933507, 0.0152261, '0', 403),
(525, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933507, 0.01053, '0', 403),
(526, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933553, 0.0233319, '0', 403),
(527, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933554, 0.0125439, '0', 403),
(528, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933554, 0.009799, '0', 403),
(529, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933554, 0.0092361, '0', 403),
(530, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452933595, 0.0628002, '1', 200),
(531, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"17";s:7:"content";s:28:"<p>this is just for test</p>";}', '', '::1', 1452934301, 0.0907829, '1', 0),
(532, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"17";s:7:"content";s:28:"<p>this is just for test</p>";}', '', '::1', 1452934327, 0.029314, '1', 0),
(533, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"17";s:7:"content";s:28:"<p>this is just for test</p>";}', '', '::1', 1452934478, 0.09675, '1', 0),
(534, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"17";s:7:"content";s:28:"<p>this is just for test</p>";}', '', '::1', 1452934517, 0.0977151, '1', 200),
(535, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"17";s:7:"content";s:28:"<p>this is just for test</p>";}', '', '::1', 1452934567, 0.077064, '1', 200),
(536, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938671, 0.118514, '1', 404),
(537, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938702, 0.054575, '1', 404),
(538, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938712, 0.0191991, '1', 200),
(539, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938823, 0.045434, '1', 200),
(540, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938848, 0.0525081, '1', 200),
(541, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938876, 0.0472579, '1', 200),
(542, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452938893, 0.0239329, '1', 200),
(543, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452940309, 0.0834608, '1', 200),
(544, 'api/addUniversity', 'post', 'a:4:{s:15:"university_name";s:31:"Polytechnic University of Milan";s:18:"university_address";s:5:"Milan";s:16:"university_phone";s:10:"3397327873";s:18:"university_website";s:13:"www.polimi.it";}', '', '::1', 1452941203, 0.082087, '1', 0),
(545, 'api/addUniversity', 'post', 'a:4:{s:15:"university_name";s:31:"Polytechnic University of Milan";s:18:"university_address";s:5:"Milan";s:16:"university_phone";s:10:"3397327873";s:18:"university_website";s:13:"www.polimi.it";}', '', '::1', 1452941283, 0.0661111, '1', 200),
(546, 'api/getCategory', 'get', NULL, '', '::1', 1452941925, 0.050297, '1', 404),
(547, 'api/getCategory', 'get', NULL, '', '::1', 1452942191, 0.055481, '1', 200),
(548, 'api/getCategory', 'get', NULL, '', '::1', 1452954556, 0.151227, '1', 404),
(549, 'api/getCategory', 'get', NULL, '', '::1', 1452954569, 0.0527329, '1', 200),
(550, 'api/getCategory', 'get', NULL, '', '::1', 1452954664, 0.0540121, '1', 200),
(551, 'api/getCategory', 'get', NULL, '', '::1', 1452954695, 0.0401039, '1', 200),
(552, 'api/getCategory', 'get', NULL, '', '::1', 1452954791, NULL, '1', 0),
(553, 'api/getCategory', 'get', NULL, '', '::1', 1452954821, 0.0661011, '1', 200),
(554, 'api/getCategory', 'get', NULL, '', '::1', 1452954859, 0.0630229, '1', 200),
(555, 'api/getCategory', 'get', NULL, '', '::1', 1452954869, 0.021167, '1', 200),
(556, 'api/getCategory', 'get', NULL, '', '::1', 1452955155, 0.0559921, '1', 0),
(557, 'api/getCategory', 'get', NULL, '', '::1', 1452955191, 0.042999, '1', 200),
(558, 'api/getCategory', 'get', NULL, '', '::1', 1452955203, 0.0350621, '1', 200),
(559, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452956046, 0.096839, '1', 200),
(560, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452956053, 0.0180349, '1', 404),
(561, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452956201, 0.068166, '1', 404),
(562, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";}', '', '::1', 1452956407, 0.118271, '1', 200),
(563, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1452956444, 0.0559711, '1', 200),
(564, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452956989, 0.0692561, '1', 200),
(565, 'api/userLogin', 'post', 'a:2:{s:9:"user_name";s:5:"shila";s:8:"password";s:8:"12345678";}', '', '::1', 1452957169, 0.0951879, '1', 200),
(566, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";}', '', '::1', 1452958948, 0.100061, '1', 200),
(567, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";}', '', '::1', 1452958957, 0.036741, '1', 200),
(568, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";}', '', '::1', 1452958958, 0.0318589, '1', 200),
(569, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";}', '', '::1', 1452959138, 0.093082, '1', 200),
(570, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959149, 0.104238, '1', 200),
(571, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959287, 0.09429, '1', 200),
(572, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959289, 0.039176, '1', 200),
(573, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959300, 0.0952339, '1', 200),
(574, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959439, 0.123702, '1', 200),
(575, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959483, 0.0748482, '1', 200),
(576, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"2";s:7:"user_id";s:2:"26";s:7:"content";s:138:"$this->load->model("model_record");             $record = $this->model_record->get_by(array("University_idUniversity" => $university_id));";s:8:"like_num";s:1:"4";}', '', '::1', 1452959906, 0.0939829, '1', 200),
(577, 'api/userRegister', 'put', 'a:3:{s:9:"user_name";s:6:"shila2";s:8:"password";s:8:"12345678";s:10:"user_email";s:12:"skda@hid.com";}', '', '::1', 1452968693, 0.185902, '1', 0),
(578, 'api/userRegister', 'put', 'a:3:{s:9:"user_name";s:6:"shila2";s:8:"password";s:8:"12345678";s:10:"user_email";s:12:"skda@hid.com";}', '', '::1', 1452968768, 0.0876708, '1', 200),
(579, 'api/userRegister', 'put', 'a:1:{s:78:"------WebKitFormBoundaryvS2SHuVRPrp2AnvP\r\nContent-Disposition:_form-data;_name";s:285:""user_name"\r\n\r\nenzire\r\n------WebKitFormBoundaryvS2SHuVRPrp2AnvP\r\nContent-Disposition: form-data; name="password"\r\n\r\npassword\r\n------WebKitFormBoundaryvS2SHuVRPrp2AnvP\r\nContent-Disposition: form-data; name="user_email"\r\n\r\nenzire@hotmail.com\r\n------WebKitFormBoundaryvS2SHuVRPrp2AnvP--\r\n";}', '', '::1', 1452968821, 0.0450571, '1', 400),
(580, 'api/userRegister', 'put', 'a:3:{s:9:"user_name";s:6:"shila2";s:8:"password";s:8:"12345678";s:10:"user_email";s:12:"skda@hid.com";}', '', '::1', 1452968831, 0.0235181, '1', 400),
(581, 'api/userRegister', 'put', 'a:1:{s:78:"------WebKitFormBoundaryI7Bc85Szgiq66Xop\r\nContent-Disposition:_form-data;_name";s:285:""user_name"\r\n\r\nenzire\r\n------WebKitFormBoundaryI7Bc85Szgiq66Xop\r\nContent-Disposition: form-data; name="password"\r\n\r\npassword\r\n------WebKitFormBoundaryI7Bc85Szgiq66Xop\r\nContent-Disposition: form-data; name="user_email"\r\n\r\nenzire@hotmail.com\r\n------WebKitFormBoundaryI7Bc85Szgiq66Xop--\r\n";}', '', '::1', 1452968835, 0.0152879, '1', 400),
(582, 'api/userRegister', 'put', 'a:3:{s:9:"user_name";s:6:"shila2";s:8:"password";s:8:"12345678";s:10:"user_email";s:12:"skda@hid.com";}', '', '::1', 1452968840, 0.0156181, '1', 400),
(583, 'api/userRegister', 'put', 'a:3:{s:9:"user_name";s:6:"shila3";s:8:"password";s:8:"12345678";s:10:"user_email";s:12:"skda@hid.com";}', '', '::1', 1452982440, 0.0916641, '1', 400),
(584, 'api/userRegister', 'put', 'a:3:{s:9:"user_name";s:6:"shila3";s:8:"password";s:8:"12345678";s:10:"user_email";s:14:"shile3@hid.com";}', '', '::1', 1452982446, 0.0454481, '1', 200),
(585, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453100910, 0.0888929, '1', 200),
(586, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453101557, 0.043241, '1', 200),
(587, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102033, 0.05685, '1', 200),
(588, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102074, 0.0356441, '1', 200),
(589, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102106, NULL, '1', 0),
(590, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102141, 0.0451, '1', 200),
(591, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102172, 0.045769, '1', 200),
(592, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102258, 0.0370159, '1', 200),
(593, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102281, 0.0130699, '1', 200),
(594, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102352, 0.037184, '1', 200),
(595, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102418, 0.0352981, '1', 200),
(596, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453102522, 0.0358999, '1', 200),
(597, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453107416, 0.042799, '1', 500),
(598, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453107452, 0.0399349, '1', 500),
(599, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453107470, 0.0132182, '1', 200),
(600, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453107513, 0.0107901, '1', 200),
(601, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453107730, 0.033633, '1', 200),
(602, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453108318, NULL, '1', 0),
(603, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453108357, NULL, '1', 0),
(604, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453108837, 0.04918, '1', 0),
(605, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453108946, NULL, '1', 0),
(606, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453108983, NULL, '1', 0),
(607, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453109002, NULL, '1', 0),
(608, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453109029, 0.016834, '1', 200),
(609, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453109096, 0.0433121, '1', 200),
(610, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453109269, 0.057359, '1', 200),
(611, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453109877, 0.039541, '1', 200),
(612, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110074, 0.0436251, '1', 200),
(613, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110505, 0.0434868, '1', 200),
(614, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110564, 0.0159822, '1', 200),
(615, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110632, 0.0126832, '1', 200),
(616, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110674, 0.0128019, '1', 200),
(617, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110781, 0.0344, '1', 200),
(618, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110823, 0.0256579, '1', 200),
(619, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453110868, 0.0145299, '1', 200),
(620, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112044, 0.0359721, '1', 200),
(621, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112179, 0.0547349, '1', 500),
(622, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112199, 0.0761478, '1', 500),
(623, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112245, 0.0868988, '1', 500),
(624, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112333, 0.169002, '1', 200),
(625, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112571, 0.045192, '1', 0),
(626, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112640, 0.0440099, '1', 0),
(627, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112670, 0.042356, '1', 200),
(628, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112730, 0.0284638, '1', 200),
(629, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112757, 0.0537589, '1', 200),
(630, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112778, 0.0504789, '1', 200),
(631, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112841, 0.053375, '1', 200),
(632, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112854, 0.043762, '1', 200),
(633, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453112984, 0.0151911, '1', 200),
(634, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113319, 0.0448141, '1', 200),
(635, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113320, 0.0172629, '1', 200),
(636, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113330, 0.0161769, '1', 200),
(637, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113636, NULL, '1', 0),
(638, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113783, 0.0423381, '1', 0),
(639, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113809, 0.016114, '1', 200),
(640, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113822, 0.0127511, '1', 200),
(641, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113915, 0.0108058, '1', 200),
(642, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453113957, 0.011349, '1', 200),
(643, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114254, 0.0422509, '1', 200),
(644, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114297, 0.0174918, '1', 200),
(645, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114393, 0.016947, '1', 200),
(646, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114404, 0.0177948, '1', 200),
(647, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114723, 0.012171, '1', 200),
(648, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114797, 0.0164769, '1', 200),
(649, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453114830, 0.0107081, '1', 200),
(650, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115270, 0.024298, '1', 200),
(651, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115283, 0.0274541, '1', 200),
(652, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115300, 0.0116858, '1', 200),
(653, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115422, 0.0148709, '1', 200),
(654, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115432, 0.016587, '1', 200),
(655, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115462, 0.0129972, '1', 200),
(656, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115550, 0.0147312, '1', 500),
(657, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115604, 0.0159912, '1', 200),
(658, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115782, 0.0123971, '1', 200),
(659, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115838, 0.011158, '1', 200),
(660, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115900, 0.0128, '1', 200),
(661, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453115917, 0.0117538, '1', 200),
(662, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453116046, 0.016748, '1', 200),
(663, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453116347, 0.0194299, '1', 200),
(664, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453116400, 0.0166161, '1', 200),
(665, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453117307, 0.090574, '1', 200),
(666, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122303, 0.043416, '1', 500),
(667, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122337, 0.043432, '1', 200),
(668, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122406, 0.0336399, '1', 200),
(669, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122656, 0.0378661, '1', 200),
(670, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122678, 0.0114031, '1', 200),
(671, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122786, 0.0115089, '1', 500),
(672, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122796, 0.0128942, '1', 500),
(673, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122819, 0.0315411, '1', 200),
(674, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122889, 0.0326631, '1', 200),
(675, 'api/getRecord/1', 'get', 'a:3:{i:0;N;s:18:"XDEBUGSESSIONSTART";s:6:"xdebug";i:1;N;}', '', '::1', 1453122943, 0.0110331, '1', 200),
(676, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453122953, 0.0132959, '1', 200),
(677, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123023, 0.013768, '1', 200),
(678, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123092, 0.034786, '1', 200),
(679, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123168, 0.0366042, '1', 500),
(680, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123217, 0.0484831, '1', 0),
(681, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123251, 0.0352678, '1', 500),
(682, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123282, 0.0110869, '1', 500),
(683, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453123337, 0.033201, '1', 200),
(684, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125316, 0.0528331, '1', 200),
(685, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125379, 0.036247, '1', 200),
(686, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125428, 0.04389, '1', 200),
(687, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125456, 0.041678, '1', 200),
(688, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125474, 0.0414181, '1', 200),
(689, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125483, 0.0183401, '1', 200),
(690, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125519, 0.039701, '1', 200),
(691, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125642, 0.0167141, '1', 200),
(692, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125690, 0.0160029, '1', 200),
(693, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125696, 0.0129199, '1', 200),
(694, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125735, 0.0124409, '1', 200),
(695, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453125833, 0.0165269, '1', 200),
(696, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453139562, 0.119009, '1', 200),
(697, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453139937, 0.0573699, '1', 0),
(698, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453140201, 0.0926709, '1', 0),
(699, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453140243, 0.0387571, '1', 200),
(700, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453140256, 0.0161481, '1', 200),
(701, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453140313, 0.0166399, '1', 500),
(702, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453140455, 0.0471828, '1', 200),
(703, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453141347, 0.0387189, '1', 200),
(704, 'api/addLikes/2', 'post', 'a:1:{i:0;N;}', '', '::1', 1453141351, 0.0486131, '1', 0),
(705, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453146952, 0.091862, '1', 200),
(706, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453147058, 0.066016, '1', 0),
(707, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149149, 0.116294, '1', 200),
(708, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149181, 0.0677118, '1', 200),
(709, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149222, 0.067452, '1', 200),
(710, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149341, 0.066484, '1', 200),
(711, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149394, 0.062284, '1', 200),
(712, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149774, 0.0931101, '1', 0),
(713, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453149866, 0.0801291, '1', 200),
(714, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:1:"3";}', '', '::1', 1453150418, 0.10019, '1', 200),
(715, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453150647, 0.0540838, '1', 200),
(716, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453150673, 0.0733702, '1', 200),
(717, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453150678, 0.0151451, '1', 200),
(718, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453151058, 0.0827098, '1', 200),
(719, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453153981, 0.099889, '1', 0),
(720, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154131, 0.100475, '1', 0),
(721, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154228, 0.0912452, '1', 0),
(722, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154347, 0.083358, '1', 0),
(723, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154498, 0.0968208, '1', 0),
(724, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154550, 0.093395, '1', 200),
(725, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154584, 0.132983, '1', 200),
(726, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"28";s:10:"history_id";s:1:"9";s:8:"like_num";s:2:"11";}', '', '::1', 1453154635, 0.0888631, '1', 200),
(727, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453154800, 0.0493941, '1', 200),
(728, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453155490, 0.0610118, '1', 200),
(729, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453155703, 0.023242, '1', 500),
(730, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453155710, 0.0213749, '1', 200),
(731, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453191994, 0.0596189, '1', 200),
(732, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453192017, 0.0165889, '1', 200),
(733, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198301, 0.0396268, '1', 0),
(734, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198376, 0.0339019, '1', 200),
(735, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198527, 0.0120881, '1', 200),
(736, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198545, 0.0112519, '1', 200),
(737, 'api/getMyRecord/25', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198553, 0.010879, '1', 500),
(738, 'api/getMyRecord/30', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198560, 0.012645, '1', 500),
(739, 'api/getMyRecord/28', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198565, 0.011678, '1', 200),
(740, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198762, 0.0694339, '1', 200),
(741, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198925, 0.0346961, '1', 200),
(742, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453198971, 0.036746, '1', 200),
(743, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453199061, 0.035316, '1', 200),
(744, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"0";}', '', '::1', 1453203045, 0.132183, '1', 200),
(745, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"0";}', '', '::1', 1453203106, 0.0337319, '1', 200),
(746, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"3";}', '', '::1', 1453203142, 0.0328569, '1', 200),
(747, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"3";}', '', '::1', 1453203217, 0.030863, '1', 200),
(748, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"3";}', '', '::1', 1453203293, 0.0268219, '1', 200),
(749, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"0";}', '', '::1', 1453203378, 0.0384541, '1', 200),
(750, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"3";}', '', '::1', 1453203390, 0.030082, '1', 200),
(751, 'api/addLikes', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"4";}', '', '::1', 1453203529, 0.0828888, '1', 200),
(752, 'api/getMyRecord/26', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453203618, 0.0333509, '1', 200),
(753, 'api/addVote', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"4";}', '', '::1', 1453203762, 0.0867722, '1', 200),
(754, 'api/addVote', 'post', 'a:3:{s:7:"user_id";s:2:"26";s:10:"history_id";s:2:"14";s:4:"vote";s:1:"4";}', '', '::1', 1453203847, 0.0850551, '1', 200),
(755, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453459339, 0.118023, '1', 500),
(756, 'api/getRecord/4', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453459348, 0.0153491, '1', 200),
(757, 'api/getRecord/4', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453459418, 0.0146179, '1', 200),
(758, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453459420, 0.0205352, '1', 500),
(759, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453460793, 0.0681231, '1', 200),
(760, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461015, 0.0600331, '1', 200),
(761, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461043, 0.0221832, '1', 200),
(762, 'api/getRecord/1', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461064, 0.0215478, '1', 500),
(763, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461083, NULL, '1', 0),
(764, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461120, 0.0587411, '1', 200),
(765, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461201, 0.060653, '1', 200),
(766, 'api/getRecord/2', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461213, 0.0182109, '1', 200),
(767, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461264, 0.0211701, '1', 200),
(768, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453461400, 0.0595591, '1', 200),
(769, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453467587, 0.0643921, '1', 200),
(770, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453469189, 0.0972948, '1', 200),
(771, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453469272, 0.045593, '1', 200),
(772, 'api/getRecord/3', 'get', 'a:2:{i:0;N;i:1;N;}', '', '::1', 1453469295, 0.032804, '1', 200),
(773, 'api/addRecord', 'post', NULL, '', '::1', 1456131921, 0.0314679, '1', 200),
(774, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"1";s:7:"user_id";s:1:"1";s:7:"content";s:14:"this is a test";}', '', '::1', 1456131969, 0.0726919, '1', 404),
(775, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"25";s:7:"content";s:14:"this is a test";}', '', '::1', 1456132027, 0.0848341, '1', 200),
(776, 'api/addRecord', 'post', 'a:4:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"25";s:7:"content";s:14:"this is a test";}', '', '::1', 1456139568, 0.139691, '1', 200),
(777, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"25";s:7:"content";s:14:"this is a test";s:9:"record_id";s:2:"56";}', '', '::1', 1456149164, 0.165027, '1', 200),
(778, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456149198, 0.0266049, '1', 0),
(779, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456149399, 0.063967, '1', 0),
(780, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456149456, 0.0633352, '1', 0),
(781, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456149656, 0.067548, '1', 0),
(782, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456149873, 0.0579209, '1', 0),
(783, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"23";}', '', '::1', 1456149888, 0.016875, '1', 0);
INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(784, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"23";}', '', '::1', 1456150272, 0.072247, '1', 0),
(785, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"23";}', '', '::1', 1456150275, 0.021735, '1', 0),
(786, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"23";}', '', '::1', 1456150312, 0.0213909, '1', 0),
(787, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"23";}', '', '::1', 1456150354, 0.083061, '1', 200),
(788, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"23";}', '', '::1', 1456150898, 0.148956, '1', 0),
(789, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"57";}', '', '::1', 1456150997, 0.0849991, '1', 200),
(790, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"1";s:13:"category_type";s:1:"3";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456152227, 0.0950019, '1', 0),
(791, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"3";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456152539, 0.10727, '1', 200),
(792, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456152907, 0.083004, '1', 0),
(793, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456152952, 0.0685439, '1', 200),
(794, 'api/addRecord', 'post', 'a:5:{s:13:"university_id";s:1:"2";s:13:"category_type";s:1:"1";s:7:"user_id";s:2:"26";s:7:"content";s:34:"this is a test for existing record";s:9:"record_id";s:2:"56";}', '', '::1', 1456153366, 0.101595, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `logsearch`
--

CREATE TABLE `logsearch` (
  `idLogSearch` int(11) NOT NULL,
  `LogSearchValue` varchar(45) NOT NULL,
  `LogSearchField` varchar(45) NOT NULL,
  `Logging_idLogging` int(11) NOT NULL,
  `Logging_InternalUser_idInternalUser` int(11) NOT NULL,
  `Logging_InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `order` varchar(11) NOT NULL,
  `body` text NOT NULL,
  `template` varchar(25) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `order`, `body`, `template`, `parent_id`) VALUES
(1, 'Home', '', '', 'This is homepage.', 'home', 0),
(2, 'University', 'university', '', 'this is university search page', 'page', 0),
(3, 'About us', 'about', '', 'This is about us.', 'about', 0),
(4, 'Login', 'login', '', 'This is login page.', 'login', 0),
(5, 'Register', 'register', '5', 'This is register page.', 'register', 0);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `idRecord` int(11) NOT NULL,
  `LikeNumber` int(11) DEFAULT NULL,
  `DislikeNumber` int(11) DEFAULT NULL,
  `LikeTimeStamp` datetime DEFAULT NULL,
  `DislikeTimeStamp` datetime DEFAULT NULL,
  `University_idUniversity` int(11) NOT NULL,
  `Catagory_idCatagory` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`idRecord`, `LikeNumber`, `DislikeNumber`, `LikeTimeStamp`, `DislikeTimeStamp`, `University_idUniversity`, `Catagory_idCatagory`) VALUES
(18, NULL, NULL, '2016-01-16 09:51:41', NULL, 2, 3),
(19, NULL, NULL, '2016-01-16 09:52:07', NULL, 2, 3),
(20, NULL, NULL, '2016-01-16 09:54:38', NULL, 2, 3),
(21, NULL, NULL, '2016-01-16 09:55:17', NULL, 2, 3),
(22, NULL, NULL, '2016-01-16 09:56:07', NULL, 2, 3),
(23, 11, 5, '2016-01-18 11:03:55', NULL, 3, 2),
(24, NULL, NULL, NULL, NULL, 3, 2),
(25, NULL, NULL, NULL, NULL, 3, 2),
(26, NULL, NULL, NULL, NULL, 3, 2),
(27, NULL, NULL, NULL, NULL, 3, 2),
(28, 3, 16, '2016-01-19 12:36:30', '2016-01-19 12:44:07', 3, 2),
(29, 4, NULL, NULL, NULL, 3, 2),
(30, 4, NULL, NULL, NULL, 3, 2),
(31, 4, NULL, NULL, NULL, 3, 2),
(32, 4, NULL, '2016-01-16 16:50:39', '2016-01-16 16:50:39', 3, 2),
(33, 4, NULL, '2016-01-16 16:51:23', '2016-01-16 16:51:23', 3, 2),
(34, 4, NULL, '2016-01-16 16:58:26', '2016-01-16 16:58:26', 3, 2),
(35, NULL, NULL, NULL, NULL, 2, 3),
(36, NULL, NULL, NULL, NULL, 2, 3),
(37, NULL, NULL, NULL, NULL, 2, 3),
(38, NULL, NULL, NULL, NULL, 2, 3),
(39, NULL, NULL, NULL, NULL, 2, 3),
(40, NULL, NULL, NULL, NULL, 2, 3),
(41, NULL, NULL, NULL, NULL, 2, 3),
(42, NULL, NULL, NULL, NULL, 2, 3),
(43, NULL, NULL, NULL, NULL, 2, 3),
(44, NULL, NULL, NULL, NULL, 2, 3),
(45, NULL, NULL, NULL, NULL, 2, 3),
(46, NULL, NULL, NULL, NULL, 2, 3),
(47, NULL, NULL, NULL, NULL, 2, 3),
(48, NULL, NULL, NULL, NULL, 2, 3),
(49, NULL, NULL, NULL, NULL, 2, 3),
(50, NULL, NULL, NULL, NULL, 2, 3),
(51, NULL, NULL, NULL, NULL, 2, 3),
(52, NULL, NULL, NULL, NULL, 2, 3),
(53, NULL, NULL, NULL, NULL, 2, 3),
(54, 0, 0, NULL, NULL, 3, 1),
(55, 0, 0, NULL, NULL, 3, 1),
(56, 0, 0, NULL, NULL, 3, 1),
(57, 0, 0, NULL, NULL, 1, 3),
(58, 0, 0, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL,
  `StatusName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`idStatus`, `StatusName`) VALUES
(0, 'rejected'),
(1, 'approved'),
(2, 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `idUniversity` int(11) NOT NULL,
  `UniversityName` varchar(255) NOT NULL,
  `UniversityAddress` varchar(255) NOT NULL,
  `UniversityPhoneNumber` varchar(100) NOT NULL,
  `UniversityLogoURL` varchar(255) DEFAULT NULL,
  `UniversityWebsite` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`idUniversity`, `UniversityName`, `UniversityAddress`, `UniversityPhoneNumber`, `UniversityLogoURL`, `UniversityWebsite`, `created`, `modified`) VALUES
(1, 'UNICAM - University of Camerino (MC)', 'Via Emidio Pacifici Mazzoni, 2, 63100 Ascoli Piceno(AP)', '0736 262594', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f6/University_of_Camerino.png/225px-University_of_Camerino.png', 'wwwgooglecom', '2016-02-21 10:49:55', '2016-02-21 11:49:55'),
(2, 'PTIT - Post and telecommunication institute of technology', 'Tran Phu, Mo Lao, Ha Đong, Ha Noi, Viet Nam', '12345678', 'https://upload.wikimedia.org/wikipedia/commons/d/d5/Posts_%26_Telecoms_Institute_of_Technology_logo.jpg', 'www.baidu.com', '2016-02-21 20:29:02', '2016-02-21 21:29:02'),
(3, 'Polytechnic University of Milan', 'Milan', '3397327873', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Logo_Politecnico_Milano.png/175px-Logo_Politecnico_Milano.png', 'wwwpolimiit', '2016-02-21 13:29:19', '2016-02-21 14:29:19'),
(4, 'Northwestern Polytechnic University', 'Xi''an, China', '0086221956325', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/32/Seal_of_NWPU.png/185px-Seal_of_NWPU.png', 'httpwwwnpueducn', '2016-02-21 13:21:56', '2016-02-21 14:21:56'),
(5, 'Tsinghua University', 'Beijing, China', '+393397562818', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/ec/Tsinghua_University_Logo.svg/200px-Tsinghua_University_Logo.svg.png', 'www.tsinghua.edu.cn/', '2016-02-21 20:39:30', '2016-02-21 21:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `userblock`
--

CREATE TABLE `userblock` (
  `idUserBlock` int(11) NOT NULL,
  `UserBlockUserName` varchar(45) NOT NULL,
  `UserBlockReason` varchar(100) NOT NULL,
  `UserBlockTimeStamp` datetime NOT NULL,
  `UserBlockEmail` varchar(100) NOT NULL,
  `InternalUser_idInternalUser` int(11) NOT NULL,
  `InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approver`
--
ALTER TABLE `approver`
  ADD PRIMARY KEY (`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`),
  ADD KEY `fk_Approver_InternalUser1_idx` (`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_activity_idx` (`timestamp`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`idContent`),
  ADD KEY `fk_Content_History1_idx` (`History_idHistoty`);

--
-- Indexes for table `contributer`
--
ALTER TABLE `contributer`
  ADD PRIMARY KEY (`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`);

--
-- Indexes for table `externaluser`
--
ALTER TABLE `externaluser`
  ADD PRIMARY KEY (`ExternalUserLocalIP`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`idHistoty`,`Record_idRecord`,`Record_University_idUniversity`,`Record_Catagory_idCatagory`,`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`),
  ADD KEY `fk_History_Status1_idx` (`Status_idStatus`),
  ADD KEY `fk_History_Record2_idx` (`Record_idRecord`,`Record_University_idUniversity`,`Record_Catagory_idCatagory`),
  ADD KEY `fk_History_InternalUser1_idx` (`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`);

--
-- Indexes for table `internaluser`
--
ALTER TABLE `internaluser`
  ADD PRIMARY KEY (`idInternalUser`,`InternalUserType_idInternalUserType`),
  ADD UNIQUE KEY `InternalUserMail` (`InternalUserEmail`),
  ADD UNIQUE KEY `InternalUserName` (`InternalUserName`),
  ADD KEY `fk_InternalUser_InternalUserType1_idx` (`InternalUserType_idInternalUserType`);

--
-- Indexes for table `internalusertype`
--
ALTER TABLE `internalusertype`
  ADD PRIMARY KEY (`idInternalUserType`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logging`
--
ALTER TABLE `logging`
  ADD PRIMARY KEY (`idLogging`,`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`),
  ADD KEY `fk_Logging_InternalUser1_idx` (`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logsearch`
--
ALTER TABLE `logsearch`
  ADD PRIMARY KEY (`idLogSearch`,`Logging_idLogging`,`Logging_InternalUser_idInternalUser`,`Logging_InternalUser_InternalUserType_idInternalUserType`),
  ADD KEY `fk_LogSearch_Logging1_idx` (`Logging_idLogging`,`Logging_InternalUser_idInternalUser`,`Logging_InternalUser_InternalUserType_idInternalUserType`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`idRecord`,`University_idUniversity`,`Catagory_idCatagory`),
  ADD KEY `fk_Record_University1_idx` (`University_idUniversity`),
  ADD KEY `fk_Record_Catagory2_idx` (`Catagory_idCatagory`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`idUniversity`);

--
-- Indexes for table `userblock`
--
ALTER TABLE `userblock`
  ADD PRIMARY KEY (`idUserBlock`,`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`),
  ADD KEY `fk_UserBlock_InternalUser1_idx` (`InternalUser_idInternalUser`,`InternalUser_InternalUserType_idInternalUserType`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `idContent` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `idHistoty` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `internaluser`
--
ALTER TABLE `internaluser`
  MODIFY `idInternalUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `logging`
--
ALTER TABLE `logging`
  MODIFY `idLogging` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=795;
--
-- AUTO_INCREMENT for table `logsearch`
--
ALTER TABLE `logsearch`
  MODIFY `idLogSearch` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `idRecord` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `idUniversity` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userblock`
--
ALTER TABLE `userblock`
  MODIFY `idUserBlock` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `approver`
--
ALTER TABLE `approver`
  ADD CONSTRAINT `fk_Approver_InternalUser1` FOREIGN KEY (`InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) REFERENCES `internaluser` (`idInternalUser`, `InternalUserType_idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_Content_History1` FOREIGN KEY (`History_idHistoty`) REFERENCES `history` (`idHistoty`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contributer`
--
ALTER TABLE `contributer`
  ADD CONSTRAINT `fk_Contributer_InternalUser1` FOREIGN KEY (`InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) REFERENCES `internaluser` (`idInternalUser`, `InternalUserType_idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `fk_History_InternalUser1` FOREIGN KEY (`InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) REFERENCES `internaluser` (`idInternalUser`, `InternalUserType_idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_History_Record2` FOREIGN KEY (`Record_idRecord`, `Record_University_idUniversity`, `Record_Catagory_idCatagory`) REFERENCES `record` (`idRecord`, `University_idUniversity`, `Catagory_idCatagory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_History_Status1` FOREIGN KEY (`Status_idStatus`) REFERENCES `status` (`idStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `internaluser`
--
ALTER TABLE `internaluser`
  ADD CONSTRAINT `fk_InternalUser_InternalUserType1` FOREIGN KEY (`InternalUserType_idInternalUserType`) REFERENCES `internalusertype` (`idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `logging`
--
ALTER TABLE `logging`
  ADD CONSTRAINT `fk_Logging_InternalUser1` FOREIGN KEY (`InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) REFERENCES `internaluser` (`idInternalUser`, `InternalUserType_idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `logsearch`
--
ALTER TABLE `logsearch`
  ADD CONSTRAINT `fk_LogSearch_Logging1` FOREIGN KEY (`Logging_idLogging`, `Logging_InternalUser_idInternalUser`, `Logging_InternalUser_InternalUserType_idInternalUserType`) REFERENCES `logging` (`idLogging`, `InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `fk_Record_Catagory2` FOREIGN KEY (`Catagory_idCatagory`) REFERENCES `category` (`idCategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Record_University1` FOREIGN KEY (`University_idUniversity`) REFERENCES `university` (`idUniversity`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userblock`
--
ALTER TABLE `userblock`
  ADD CONSTRAINT `fk_UserBlock_InternalUser1` FOREIGN KEY (`InternalUser_idInternalUser`, `InternalUser_InternalUserType_idInternalUserType`) REFERENCES `internaluser` (`idInternalUser`, `InternalUserType_idInternalUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION;
