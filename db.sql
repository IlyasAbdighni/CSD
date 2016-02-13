-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 01, 2016 at 08:48 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `idContent` int(11) NOT NULL,
  `ContentDescription` varchar(100) NOT NULL,
  `History_idHistoty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `TimeSubmit` datetime NOT NULL,
  `TimeApprove` datetime DEFAULT NULL,
  `Status_idStatus` int(11) NOT NULL,
  `Record_idRecord` int(11) NOT NULL,
  `Record_University_idUniversity` int(11) NOT NULL,
  `Record_Catagory_idCatagory` int(11) NOT NULL,
  `InternalUser_idInternalUser` int(11) NOT NULL,
  `InternalUser_InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `internaluser`
--

CREATE TABLE `internaluser` (
  `idInternalUser` int(11) NOT NULL,
  `InternalUserName` varchar(100) NOT NULL,
  `InternalUserPassword` varchar(100) NOT NULL,
  `InternalUserConfirmPassword` varchar(100) NOT NULL,
  `InternalUserMail` varchar(100) NOT NULL,
  `InternalUserPhone` varchar(100) NOT NULL,
  `InternalUserAddress` varchar(100) NOT NULL,
  `idInternalUserType` int(11) NOT NULL,
  `StatusBlockUser` tinyint(1) NOT NULL,
  `FacebookToken` varchar(100) DEFAULT NULL,
  `InternalUserType_idInternalUserType` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internaluser`
--

INSERT INTO `internaluser` (`idInternalUser`, `InternalUserName`, `InternalUserPassword`, `InternalUserConfirmPassword`, `InternalUserMail`, `InternalUserPhone`, `InternalUserAddress`, `idInternalUserType`, `StatusBlockUser`, `FacebookToken`, `InternalUserType_idInternalUserType`) VALUES
(10, 'Gvlmerem', '123456', '123456', 'gvl@hotmail.com', 'gvl@hotmail.com', 'Urumqi, Xinjiang, China', 0, 0, NULL, 0),
(11, 'Talipjan', '123456', '123456', 'Tal@gmail.com', '', '', 0, 0, NULL, 0),
(12, 'men', 'glsaksksld', 'jdafjadsls', 'men@yahoo.com', '1245', 'Italy', 0, 0, NULL, 0);

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
(1, 'admin');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, '123456', 0, 0, 0, NULL, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(80, 'api/users/1', 'get', 'a:2:{i:0;N;i:1;N;}', '123456', '::1', 1451666395, 0.0355952, '1', 500),
(81, 'api/users/1', 'get', 'a:2:{i:0;N;i:1;N;}', '123456', '::1', 1451667821, 0.074573, '1', 404),
(82, 'api/users/12', 'get', 'a:2:{i:0;N;i:1;N;}', '123456', '::1', 1451667827, 0.0167701, '1', 404),
(83, 'api/users/10', 'get', 'a:2:{i:0;N;i:1;N;}', '123456', '::1', 1451667851, 0.0459411, '1', 404),
(84, 'api/users/11', 'get', 'a:2:{i:0;N;i:1;N;}', '123456', '::1', 1451668215, 0.055038, '1', 200),
(85, 'api/users/11', 'get', 'a:2:{i:0;N;i:1;N;}', '123456', '::1', 1451668621, 0.0545781, '1', 200),
(86, 'api/user', 'put', NULL, '123456', '::1', 1451669482, 0.011024, '1', 0),
(87, 'api/users/10', 'get', 'a:3:{i:0;N;s:9:"X-API-KEY";s:6:"123456";i:1;N;}', '123456', '::1', 1451676703, 0.101689, '1', 200);

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
-- Table structure for table `mapobject`
--

CREATE TABLE `mapobject` (
  `idMapObject` int(11) NOT NULL,
  `Longitude` varchar(50) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  `NamePlace` varchar(100) NOT NULL,
  `Content_idContent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `idStatus` int(11) NOT NULL,
  `StatusName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `idUniversity` int(11) NOT NULL,
  `UniversityName` varchar(100) NOT NULL,
  `UniversityAddress` varchar(100) NOT NULL,
  `UniversityPhoneNumber` varchar(20) NOT NULL,
  `UniversityDescription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `mapobject`
--
ALTER TABLE `mapobject`
  ADD PRIMARY KEY (`idMapObject`,`Content_idContent`),
  ADD KEY `fk_MapObject_Content2_idx` (`Content_idContent`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `internaluser`
--
ALTER TABLE `internaluser`
  MODIFY `idInternalUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
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
-- Constraints for table `mapobject`
--
ALTER TABLE `mapobject`
  ADD CONSTRAINT `fk_MapObject_Content2` FOREIGN KEY (`Content_idContent`) REFERENCES `content` (`idContent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
