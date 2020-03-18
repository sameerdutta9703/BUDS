-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 04:47 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grievancesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_aicte_announcement`
--

CREATE TABLE `table_aicte_announcement` (
  `id` int(255) NOT NULL,
  `aicte_user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_attachment`
--

CREATE TABLE `table_attachment` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uploaded_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_attachment`
--

INSERT INTO `table_attachment` (`id`, `filename`, `type`, `date`, `uploaded_by`) VALUES
(1, 'registrations/ombudsman.xlsx', 'ombudsman', '2019-03-03 10:47:08', 'head_aicte@aicte.edu.in'),
(2, 'registrations/ombudsman.xlsx', 'ombudsman', '2019-03-03 10:47:28', 'head_aicte@aicte.edu.in'),
(3, 'registrations/ombudsman.xlsx', 'ombudsman', '2019-03-03 10:49:00', 'head_aicte@aicte.edu.in'),
(4, 'registrations/ombudsman.xlsx', 'ombudsman', '2019-03-03 10:49:12', 'head_aicte@aicte.edu.in');

-- --------------------------------------------------------

--
-- Table structure for table `table_college`
--

CREATE TABLE `table_college` (
  `id` int(255) NOT NULL,
  `university_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `registration_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_college`
--

INSERT INTO `table_college` (`id`, `university_id`, `name`, `state`, `location`, `phone`, `logo`, `registration_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'CV Raman College of Engineering', 'Odisha', 'Khurda', '022-2247686', NULL, 1, '2019-03-02 10:13:15', '2019-02-27 18:30:00'),
(2, 2, 'Techno India', 'West Bengal', 'Kolkata', '022-2247686', NULL, 1, '2019-02-27 14:48:10', '2019-02-27 18:30:00'),
(3, 1, 'Silicon Institute of Technology', 'Odisha', 'Bhubaneswar', '022-2247686', NULL, 1, '2019-02-27 14:48:27', '2019-02-27 18:30:00'),
(4, 1, 'Gandhi Institute of Engineering and Technology', 'Odisha', 'Bhubaneswar', '022-2247686', NULL, 1, '2019-02-27 14:48:33', '2019-02-27 18:30:00'),
(5, 1, 'Nalanda Institute of Technology', 'Odisha', 'Bhubaneswar', '022-2247686', NULL, 1, '2019-02-27 14:48:40', '2019-02-27 18:30:00'),
(6, 1, 'National Institute of Science and Technolgy', 'Odisha', 'Berhampur', '022-2247686', NULL, 1, '2019-02-27 14:48:46', '2019-02-27 18:30:00'),
(7, 2, 'Heritage Institute of Technology', 'West Bengal', 'Kolkata', '022-2247686', NULL, 1, '2019-02-27 14:48:52', '2019-02-27 18:30:00'),
(8, 2, 'Institute of Engineering and Management', 'West Bengal', 'Kolkata', '022-2247686', NULL, 1, '2019-02-27 14:48:58', '2019-02-27 18:30:00'),
(9, 2, 'Haldia Institute of Technology', 'West Bengal', 'Kolkata', '022-2247686', NULL, 1, '2019-02-27 14:49:04', '2019-02-27 18:30:00'),
(10, 3, 'Delhi Technical University', 'Delhi', 'Delhi', '022-2247686', NULL, 1, '2019-02-27 15:05:42', '2019-02-27 18:30:00'),
(11, 4, 'United College of Engineering & Research', 'Uttar Pardesh', 'Lucknow', '022-2247686', NULL, 1, '2019-02-27 14:49:30', '2019-02-27 18:30:00'),
(12, 4, 'Kali Charan Nigam Institute of Technology', 'Uttar Pardesh', 'Banda', '022-2247686', NULL, 1, '2019-02-27 14:49:36', '2019-02-27 18:30:00'),
(13, 5, 'Loyola College', 'Tamilnadu', 'Chennai', '022-2247686', NULL, 1, '2019-02-27 15:02:24', '2019-02-27 18:30:00'),
(14, 5, 'Presidency College', 'Chennai', 'Tamilnadu', '022-2247686', NULL, 1, '2019-02-27 15:02:28', '2019-02-27 18:30:00'),
(15, 4, 'ABES Engineering College', 'Uttar Pardesh', 'Ghaziabad', '022-2247686', NULL, 1, '2019-02-27 14:49:43', '2019-02-27 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `table_department`
--

CREATE TABLE `table_department` (
  `id` int(255) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_department`
--

INSERT INTO `table_department` (`id`, `college_id`, `type`, `logo`, `created_at`, `created_by`) VALUES
(1, 1, 'Hostel', NULL, '2019-02-20 14:32:04', NULL),
(2, 1, 'Admission Cell', NULL, '2019-02-20 14:32:44', NULL),
(3, 2, 'Hostel', NULL, '2019-02-20 14:32:54', NULL),
(4, 1, 'Examination Cell', NULL, '2019-02-21 11:13:35', NULL),
(5, 1, 'Training and Placement cell', NULL, '2019-02-21 11:14:27', NULL),
(6, 1, 'Accounts Department', NULL, '2019-02-21 11:14:46', NULL),
(7, 1, 'Security', NULL, '2019-02-21 11:15:10', NULL),
(8, 1, 'Ragging', NULL, '2019-02-21 11:15:10', NULL),
(9, 1, 'Transport', NULL, '2019-02-21 11:15:43', NULL),
(10, 1, 'Canteen', NULL, '2019-02-21 11:15:43', NULL),
(11, 1, 'Miscellaneous', NULL, '2019-02-21 11:16:02', NULL),
(12, 1, 'Academics', NULL, '2019-02-26 04:24:47', '1');

-- --------------------------------------------------------

--
-- Table structure for table `table_grievance`
--

CREATE TABLE `table_grievance` (
  `id` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `department_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'raised',
  `delayed_status` tinyint(1) NOT NULL DEFAULT '0',
  `eta` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_status` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_attachment` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `timeslot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_grievance`
--

INSERT INTO `table_grievance` (`id`, `type`, `description`, `documents`, `student_id`, `created_at`, `updated_at`, `department_id`, `status`, `delayed_status`, `eta`, `level`, `vendor_status`, `vendor_id`, `vendor_attachment`, `sub_category`, `timeslot`) VALUES
(1, 'Academics', 'Non availability of reference books in library.', NULL, 1, '2019-02-26 04:28:06', '2019-03-02 14:05:42', 12, 'reopened', 0, '2019-02-27 18:30:00', 0, 'Sent for purchase', 1, '', NULL, NULL),
(2, 'Academics', 'More classes required to complete the syllabus', NULL, 2, '2018-02-26 04:31:12', '2019-02-26 04:31:12', 12, 'raised', 0, '2019-03-01 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(3, 'Academics', 'Compensation for attendance due to institute representation.', NULL, 3, '2017-02-26 04:31:12', '2019-02-26 04:31:12', 12, 'inaction', 0, '2019-02-28 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(4, 'Academics', 'non availability of reference books in library.', NULL, 4, '2016-02-26 04:35:04', '2019-02-26 04:35:04', 12, 'inaction', 0, '2019-03-04 00:59:00', 0, NULL, NULL, '', NULL, NULL),
(5, 'Academics', 'Non functioning lab equipment. needs replacing.', NULL, 5, '2019-02-26 04:35:04', '2019-02-26 04:35:04', 12, 'raised', 0, '2019-02-28 02:06:55', 0, NULL, NULL, '', NULL, NULL),
(6, 'Hostel', 'WiFi not working properly.', NULL, 1, '2019-02-26 04:37:30', '2019-03-02 03:58:47', 1, 'addressed', 0, '2019-02-27 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(7, 'Hostel', 'Fan in room 221 needs replacing.', NULL, 2, '2018-02-26 04:37:30', '2019-03-02 23:57:59', 1, 'inaction', 0, '2019-02-27 18:30:00', 0, 'Sent for purchase', 1, 'documents/LlNo5zB18RJU2cdubgE5dOoS1Snlrn3BqiKhRV80.txt', NULL, NULL),
(8, 'Hostel', 'Unhygenic food being distributed', NULL, 3, '2017-02-26 04:39:18', '2019-02-26 04:39:18', 1, 'inaction', 0, '2019-02-27 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(9, 'Hostel', 'Fan in room 225 needs replacing.', NULL, 2, '2018-02-26 04:39:18', '2019-02-26 04:39:18', 1, 'addressed', 0, '2019-02-27 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(10, 'Ragging', 'Bad behavior of seniors.', NULL, 2, '2016-02-26 04:42:16', '2019-02-26 04:42:16', 8, 'addressed', 0, '2019-02-05 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(11, 'Training and Placement', 'Unable to attend upcoming placement drive.', NULL, 2, '2019-02-26 04:42:16', '2019-02-26 04:42:16', 5, 'raised', 0, '2019-02-27 07:30:00', 0, NULL, NULL, '', NULL, NULL),
(12, 'Training and Placement', 'Not eligible to attend upcoming placement drive.', NULL, 5, '2015-02-26 04:45:42', '2019-02-26 04:45:42', 5, 'delayed', 1, '2019-02-24 18:30:00', 3, NULL, NULL, '', NULL, NULL),
(13, 'Training and Placement', 'Not eligible to attend upcoming placement drive.', NULL, 3, '2016-02-26 04:45:42', '2019-03-02 05:15:46', 5, 'reopened', 0, '2019-02-26 18:30:00', 1, NULL, NULL, '', NULL, NULL),
(14, 'Hostel', 'Router not working properly.', NULL, 6, '2019-02-26 04:54:28', '2019-02-26 04:54:28', 2, 'raised', 0, '2019-02-27 18:30:00', 0, NULL, NULL, '', NULL, NULL),
(15, 'Hostel', 'Router not wiorking', NULL, 6, '2019-02-26 04:54:28', '2019-02-26 04:54:28', 2, 'delayed', 1, '2019-02-23 18:30:00', 1, NULL, NULL, '', NULL, NULL),
(16, 'Academics', 'classes not being held.', NULL, 7, '2015-02-26 04:55:41', '2019-02-26 04:55:41', NULL, 'delayed', 1, '2019-02-26 18:30:00', 1, NULL, NULL, '', NULL, NULL),
(17, 'Hostel', 'bad food', NULL, 7, '2019-02-26 04:55:41', '2019-02-26 04:55:41', 2, 'delayed', 1, '2019-02-27 18:30:00', 1, NULL, NULL, '', NULL, NULL),
(18, 'Ragging', 'bad behavior of 4th years', '', 2, '2019-03-01 09:00:00', '2019-03-02 04:32:55', 8, 'inaction', 0, '2019-03-08 14:30:00', 0, NULL, NULL, '', NULL, NULL),
(19, 'Accounts Department', 'scholarship amount not recieved', '', 1, '2018-03-01 10:08:37', '2019-03-02 03:49:41', 6, 'inaction', 0, '2019-03-08 15:38:37', 0, NULL, NULL, '', NULL, NULL),
(20, 'Transport', 'bus problem', '', 1, '2019-03-01 23:02:51', '2019-03-01 23:02:51', 9, 'raised', 0, '2019-03-09 04:32:52', 0, NULL, NULL, '', NULL, NULL),
(21, 'Admission Cell', 'I have provided certificates at admission time, which the department hasn\'t returned till now ', '', 1, '2019-03-01 23:56:05', '2019-03-02 03:52:05', 2, 'addressed', 0, '2019-03-09 05:26:05', 0, NULL, NULL, '', NULL, NULL),
(22, 'Accounts Department', 'hostel fees is not refunded after leaving hostel', '', 1, '2019-03-01 23:56:15', '2019-03-01 23:56:15', 6, 'raised', 0, '2019-03-09 05:26:15', 0, NULL, NULL, '', NULL, NULL),
(23, 'Security', 'unauthorized access of people  ', '', 1, '2019-03-01 23:56:36', '2019-03-02 03:55:11', 7, 'inaction', 0, '2019-03-09 05:26:36', 1, NULL, NULL, '', NULL, NULL),
(24, 'Security', 'dogs roam around in hostel ', '', 3, '2018-03-01 23:59:07', '2019-03-01 23:59:07', 7, 'delayed', 1, '2019-03-09 05:29:07', 2, NULL, NULL, '', NULL, NULL),
(25, 'Hostel', 'taps are leaking in bathroom which is causing wastage of water', '', 3, '2019-03-02 00:00:11', '2019-03-02 00:00:11', 1, 'raised', 0, '2019-03-09 05:30:11', 0, NULL, NULL, '', NULL, NULL),
(26, 'Ragging', 'seniors send us to bring stuff from food court, even if we are not willing to', '', 3, '2019-03-02 00:00:20', '2019-03-02 00:00:20', 8, 'raised', 0, '2019-03-09 05:30:20', 0, NULL, NULL, '', NULL, NULL),
(27, 'Canteen', 'quality of food is not improving even if we have been complaining from last 5-6 months ', '', 3, '2016-03-02 00:00:28', '2019-03-02 05:15:08', 10, 'addressed', 0, '2019-03-09 05:30:28', 0, NULL, NULL, '', NULL, NULL),
(28, 'Transport', 'buses are not clean ', '', 3, '2019-03-02 00:00:35', '2019-03-02 00:00:35', 9, 'raised', 0, '2019-03-09 05:30:35', 0, NULL, NULL, '', NULL, NULL),
(29, 'Transport', 'need buses for extra classes ', '', 3, '2015-03-02 00:04:12', '2019-03-02 00:04:12', 9, 'delayed', 1, '2019-03-09 05:34:12', 2, NULL, NULL, '', NULL, NULL),
(30, 'Canteen', 'found insect in food ', '', 3, '2019-03-02 01:07:11', '2019-03-02 01:16:12', 10, 'reopened', 0, '2019-03-09 06:37:11', 0, NULL, NULL, '', NULL, NULL),
(31, 'Ragging', 'forced by seniors to write their assignments and reports', '', 1, '2019-03-02 04:18:58', '2019-03-02 04:18:58', 8, 'raised', 0, '2019-03-09 09:48:58', 0, NULL, NULL, '', NULL, NULL),
(32, 'Hostel', 'bed is not fixed ', '', 2, '2019-03-02 04:26:33', '2019-03-02 04:31:25', 1, 'reopened', 0, '2019-03-09 09:56:33', 0, NULL, NULL, '', NULL, NULL),
(33, 'Ragging', 'seniors restrict our dressing and comment on us', NULL, 3, '2016-03-26 18:30:00', '2019-03-02 10:18:47', 8, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(34, 'Ragging', 'was locked in my room for 3 hours by seniors ', NULL, 5, '2015-03-20 18:30:00', '2019-03-02 04:57:06', 8, 'reopened', 0, '0000-00-00 00:00:00', 1, NULL, NULL, '', NULL, NULL),
(35, 'Ragging', 'seniors asks us entertain them and use abusive language', NULL, 2, '2018-03-27 18:30:00', '2019-03-02 04:55:46', 8, 'inaction', 0, '0000-00-00 00:00:00', 1, NULL, NULL, '', NULL, NULL),
(36, 'Ragging', 'seniors force me to do their stuff', NULL, 4, '2017-03-26 18:30:00', '2019-03-02 04:55:33', 8, 'addressed', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(37, 'Hostel', 'LAN port is not working  ', NULL, 5, '2015-03-29 18:30:00', '2019-03-02 10:34:04', 1, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(38, 'Hostel', 'bed and cupboards are not aligned properly', NULL, 3, '2016-03-27 18:30:00', '2019-03-02 10:34:04', 1, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(39, 'Hostel', 'less space in my side and bed is can\'t be aligned', NULL, 3, '2016-03-20 18:30:00', '2019-03-02 05:11:40', 8, 'reopened', 0, '0000-00-00 00:00:00', 1, NULL, NULL, '', NULL, NULL),
(40, 'Ragging', 'senior\'s bad behavior', NULL, 4, '2016-03-20 18:30:00', '2019-03-02 10:37:07', 1, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(41, 'Hostel', 'lan not working', 'documents/i33NKEH0SQ6KVMe5hcl6hjolaW141FpWyFvnIIZk.pdf', 2, '2019-03-02 07:46:34', '2019-03-02 07:56:02', 1, 'reopened', 0, '2019-03-09 13:16:34', 0, NULL, NULL, '', NULL, NULL),
(42, 'Examination Cell', 'issues in getting admit card even after paying the fees', NULL, 11, '2018-03-29 18:30:00', '2019-03-02 14:08:04', 4, 'delayed', 0, '0000-00-00 00:00:00', 1, NULL, NULL, '', NULL, NULL),
(43, 'Accounts Department', 'fee not refunded', NULL, 11, '2017-03-27 18:30:00', '2019-03-02 14:08:04', 6, 'addressed', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(44, 'Training and Placement cell', 'can\'t login to the placement portal', NULL, 12, '2019-03-02 14:11:52', '2019-03-02 14:11:52', 5, 'inaction', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(45, 'Canteen', 'food issue', NULL, 13, '2019-03-02 14:11:52', '2019-03-02 14:11:52', 10, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(46, 'Canteen', 'bad quality food', NULL, 11, '2019-03-02 15:32:36', '2019-03-02 15:32:36', 10, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(47, 'Accounts Department', 'scholarship fees', NULL, 13, '2019-03-02 15:32:36', '2019-03-02 15:32:36', 6, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(48, 'Security', 'outside people should be send only after valid identification', NULL, 15, '2019-03-02 17:29:16', '2019-03-02 17:29:16', 7, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(49, 'Accounts Department', 'fees refuding', NULL, 12, '2019-03-02 17:29:16', '2019-03-02 17:29:16', 6, 'raised', 0, '0000-00-00 00:00:00', 0, NULL, NULL, '', NULL, NULL),
(50, 'Hostel', 'Bed is broken in room 303', '', 2, '2019-03-02 22:02:46', '2019-03-02 22:02:46', 1, 'raised', 0, '2019-03-10 03:32:46', 0, NULL, NULL, NULL, NULL, NULL),
(51, 'Hostel', 'Wifi Router is not working', '', 1, '2019-03-02 22:14:49', '2019-03-02 22:14:49', 1, 'raised', 0, '2019-03-10 03:44:49', 0, NULL, NULL, NULL, NULL, NULL),
(52, 'Hostel', 'I am the student of 1st year and there are no proper lightning facilities in our hostel rooms', '', 1, '2019-03-03 01:22:50', '2019-03-03 01:22:50', 1, 'raised', 0, '2019-03-10 06:52:50', 0, NULL, NULL, NULL, NULL, NULL),
(53, 'Admission Cell', 'Test Admission Cell', '', 1, '2019-03-03 02:00:43', '2019-03-03 02:00:43', 2, 'raised', 0, '2019-03-10 07:30:43', 0, NULL, NULL, NULL, NULL, NULL),
(54, 'Hostel', 'Timeslot', '', 1, '2019-03-03 02:01:48', '2019-03-03 02:01:48', 1, 'raised', 0, '2019-03-10 07:31:48', 0, NULL, NULL, NULL, NULL, NULL),
(55, 'Hostel', 'Test Comment', '', 1, '2019-03-03 02:09:43', '2019-03-03 02:09:43', 1, 'raised', 0, '2019-03-10 07:39:43', 0, NULL, NULL, NULL, NULL, NULL),
(56, 'Hostel', 'Test Comment', '', 2, '2019-03-03 02:30:21', '2019-03-03 02:30:21', 1, 'raised', 0, '2019-03-10 08:00:21', 0, NULL, NULL, NULL, NULL, NULL),
(57, 'Hostel', 'Check hostel', '', 2, '2019-03-03 02:34:49', '2019-03-03 02:34:49', 1, 'raised', 0, '2019-03-10 08:04:49', 0, NULL, NULL, NULL, NULL, NULL),
(58, 'Hostel', 'Maintainince', '', 2, '2019-03-03 02:37:50', '2019-03-03 02:37:50', 1, 'raised', 0, '2019-03-10 08:07:50', 0, NULL, NULL, NULL, 'Maintainace', NULL),
(59, 'Hostel', 'sdasdzsdasd', '', 2, '2019-03-03 02:40:08', '2019-03-03 02:40:08', 1, 'raised', 0, '2019-03-10 08:10:08', 0, NULL, NULL, NULL, 'Maintainace', NULL),
(60, 'Hostel', 'Breaking and Entering', '', 2, '2019-03-03 03:51:33', '2019-03-03 03:51:33', 1, 'raised', 0, '2019-03-10 09:21:33', 0, NULL, NULL, NULL, 'Others', '6PM to 8PM'),
(61, 'Hostel', 'room no.-202 LAN port not working', 'documents/J5UJp0sWmKUYdXwaySftjNpc4yL9xMeuzQLYDlHm.txt', 1, '2019-03-03 04:18:54', '2019-03-03 05:04:00', 1, 'reopened', 0, '2019-03-10 09:48:54', 0, 'delivered', 1, 'documents/AQsOZlVTk7dpm8pBLXfXlUl3OydwVhgerpRj4Fto.txt', 'WiFi', '1PM to 5PM'),
(62, 'Hostel', 'Broken Window', '', 1, '2019-03-03 05:22:43', '2019-03-03 05:22:43', 1, 'raised', 0, '2019-03-10 10:52:43', 0, NULL, NULL, NULL, 'Maintainace', '8AM to 10AM'),
(63, 'Admission Cell', 'Registration not updated', '', 1, '2019-03-03 05:29:40', '2019-03-03 05:29:40', 2, 'raised', 0, '2019-03-10 10:59:40', 0, NULL, NULL, NULL, 'Admission', NULL),
(64, 'Admission Cell', 'Registration not updated', '', 1, '2019-03-03 05:37:57', '2019-03-03 05:37:57', 2, 'raised', 0, '2019-03-10 11:07:57', 0, NULL, NULL, NULL, 'Admission', NULL),
(65, 'Accounts Department', 'Check', '', 1, '2019-03-03 05:38:28', '2019-03-03 05:38:28', 6, 'raised', 0, '2019-03-10 11:08:28', 0, NULL, NULL, NULL, NULL, NULL),
(66, 'Hostel', 'Check', '', 1, '2019-03-03 05:38:53', '2019-03-03 05:38:53', 1, 'raised', 0, '2019-03-10 11:08:53', 0, NULL, NULL, NULL, NULL, NULL),
(67, 'Hostel', 'Check', '', 1, '2019-03-03 05:39:23', '2019-03-03 05:39:23', 1, 'raised', 0, '2019-03-10 11:09:23', 0, NULL, NULL, NULL, 'Electrical', '8AM to 10AM'),
(68, 'Admission Cell', 'Broken Window', '', 1, '2019-03-03 05:42:33', '2019-03-03 05:42:33', 2, 'raised', 0, '2019-03-10 11:12:33', 0, NULL, NULL, NULL, 'Admission', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_message`
--

CREATE TABLE `table_message` (
  `id` int(11) NOT NULL,
  `grievance_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_message`
--

INSERT INTO `table_message` (`id`, `grievance_id`, `message`, `sender_id`, `updated_at`) VALUES
(1, 1, 'ask', 24, '2019-03-01 14:36:59'),
(2, 1, 'ok', 16, '2019-03-01 14:39:39'),
(3, 30, 'approve', 69, '2019-03-02 06:39:32'),
(4, 30, 'approved', 16, '2019-03-02 06:40:18'),
(5, 30, 'solution', 2, '2019-03-02 06:49:59'),
(6, 23, 'pls approve', 65, '2019-03-02 09:25:11'),
(7, 35, 'approve', 4, '2019-03-02 10:25:46'),
(8, 41, 'need permission for approving this grievance', 25, '2019-03-02 13:20:20'),
(9, 41, 'approved', 16, '2019-03-02 13:23:23'),
(10, 41, 'approved again', 2, '2019-03-02 13:28:44'),
(11, 41, 'not necessary', 1, '2019-03-02 13:31:59'),
(12, 1, 'delivered', 71, '2019-03-02 20:11:02'),
(17, 7, 'Purchase request for a ceiling fan.', 25, '2019-03-03 02:28:42'),
(18, 7, 'delivered.', 71, '2019-03-03 02:31:24'),
(19, 7, 'hh', 25, '2019-03-03 05:27:59'),
(20, 23, 'Request', 5, '2019-03-03 09:49:37'),
(21, 61, 'Request', 25, '2019-03-03 09:54:12'),
(22, 61, 'Request', 25, '2019-03-03 09:54:26'),
(23, 61, 'granted', 16, '2019-03-03 09:58:16'),
(24, 61, 'granted', 16, '2019-03-03 09:58:21'),
(25, 61, 'give us', 25, '2019-03-03 10:03:20'),
(26, 61, 'ok', 71, '2019-03-03 10:04:15'),
(27, 61, 'done', 71, '2019-03-03 10:04:34'),
(28, 61, 'done', 71, '2019-03-03 10:04:45'),
(29, 61, 'done', 71, '2019-03-03 10:05:06'),
(30, 1, 'Test Comment', 71, '2019-03-03 10:06:44'),
(31, 1, 'Test Comment', 71, '2019-03-03 10:07:37'),
(32, 1, 'dfsd', 71, '2019-03-03 10:08:14'),
(33, 35, 'dfsd', 16, '2019-03-03 10:13:15'),
(34, 35, 'done', 16, '2019-03-03 10:13:28'),
(35, 18, 'CVRCE', 71, '2019-03-03 10:14:55'),
(36, 18, 'CVRCE', 71, '2019-03-03 10:15:38'),
(37, 35, 'Test Comment', 16, '2019-03-03 10:21:22'),
(38, 35, 'Test Comment', 16, '2019-03-03 10:22:15'),
(39, 35, 'aedsed', 16, '2019-03-03 10:23:44'),
(40, 61, 'aedsed', 2, '2019-03-03 10:25:45'),
(41, 61, 'done', 71, '2019-03-03 10:30:32'),
(42, 6, 'thanku', 5, '2019-03-03 10:33:57'),
(43, 61, 'granted', 2, '2019-03-03 10:37:47'),
(44, 18, 'CVRCE', 71, '2019-03-03 10:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `table_ombudsman_announcement`
--

CREATE TABLE `table_ombudsman_announcement` (
  `id` int(255) NOT NULL,
  `ombudsman_user_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_principal_announcement`
--

CREATE TABLE `table_principal_announcement` (
  `id` int(255) NOT NULL,
  `principal_user_id` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_search`
--

CREATE TABLE `table_search` (
  `id` int(255) NOT NULL,
  `query` varchar(255) NOT NULL,
  `search_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_university`
--

CREATE TABLE `table_university` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `registration_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_university`
--

INSERT INTO `table_university` (`id`, `name`, `state`, `location`, `phone`, `logo`, `registration_status`, `created_at`, `updated_at`) VALUES
(1, 'BPUT', 'Odisha', 'Rourkela', '062-2247686', NULL, 1, '2019-02-27 14:50:06', '2019-02-27 18:30:00'),
(2, 'WBUT', 'West Bengal', 'Kolkata', '062-2247686', NULL, 1, '2019-02-27 14:50:15', '2019-02-27 18:30:00'),
(3, 'Delhi Technical University', 'Delhi', 'Delhi', '062-2247686', NULL, 1, '2019-02-27 14:50:25', '2019-02-26 02:01:47'),
(4, 'APJAKTU', 'Uttar Pardesh', 'Lucknow', '062-2247686', NULL, 1, '2019-02-27 14:50:34', '2019-02-27 18:30:00'),
(5, 'Madras University', 'Tamilnadu', 'Chennai', '062-2247686', NULL, 1, '2019-02-27 14:50:44', '2019-02-27 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `roles`, `email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anil Sahasrabudhe', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'aicte', 'head_aicte@aicte.edu.in', NULL, '2019-02-26 04:22:09', '2019-02-18 08:41:50'),
(2, 'Anil Sahoo', '$2y$10$bIo56/5mP7oZ.j9.dD7OHumyisam3XIEYeru9dq/fDP4EUK2GnCVe', 'ombudsman', 'anilsahoo@bput.in', NULL, '2019-03-01 17:03:03', '2019-02-18 08:42:31'),
(3, 'S.N. Deepa', '$2y$10$GvyaXV/z1.56PPUEXuIOCeMQXnLwXztaKfos6K0VGzO9nNXhaR/0i', 'principal', 'sndeepa@gmail.com', NULL, '2019-02-25 16:41:49', '2019-02-18 08:43:07'),
(4, 'Priyadarshi Kanungo', '$2y$10$Rs.KpOH/fLXEoRfWNBa7AeeZF7hgaQYPUbUZdK6j4lEOwLzT7hZpS', 'committee member', 'pkanungo@cvrce.edu.in', NULL, '2019-02-26 04:22:33', '2019-02-18 08:44:02'),
(5, 'Shashank Raj', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'student', 'bpu/1501227645', NULL, '2019-03-02 10:10:00', '2019-02-18 08:44:21'),
(6, 'Kaushik Ojha', '$2y$10$RSxC9l7tQcM4kWKOOqmgjeOf8OK6MFVR7AHArX3hBSBVDH.bVtqcu', 'student', 'bpu/1601227444', NULL, '2019-03-02 10:10:27', '2019-02-20 09:08:33'),
(7, 'Surbhi Suman', '$2y$10$j1Dsl/EYS2bOWZFMXQwVWeHicZ51tvHiK1ib1D1yMHLV7Yu3tfN8O', 'student', 'bpu/1601227171', NULL, '2019-03-02 10:10:41', '2019-02-20 09:10:17'),
(8, 'M.N. Singh', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'ombudsman', 'mnsingh@wbut.in', NULL, '2019-03-01 17:03:17', '0000-00-00 00:00:00'),
(9, 'Vishal Kujur', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'ombudsman', 'vishalkujur@apjaktu.in', NULL, '2019-02-25 17:40:17', '0000-00-00 00:00:00'),
(10, 'S.N. Sivanandan', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'sivanandan@gmail.com', NULL, '2019-02-25 16:46:33', '0000-00-00 00:00:00'),
(11, 'P.T. Rao', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'ptrao@gmail.com', NULL, '2019-02-25 16:47:05', '0000-00-00 00:00:00'),
(12, 'J.V. Rao', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'jvrao@gmail.com', NULL, '2019-02-25 16:55:44', '2019-02-23 21:41:06'),
(13, 'Bipul Sharma', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'bipulsharma@gmail.com', NULL, '2019-02-25 16:57:02', '2019-02-24 18:30:00'),
(14, 'Aman Sharma', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'amansharma@gmail.com', NULL, '2019-02-25 16:57:55', '2019-02-24 18:30:00'),
(15, 'P.V. Singhal', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'Principal', 'pvsinghal@gmail.com', NULL, '2019-02-25 16:58:44', '2019-02-24 18:30:00'),
(16, 'Bhabes Bhattacharya', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'principalcvrgi@cvrce.edu.in', NULL, '2019-02-26 04:23:41', '2019-02-24 18:30:00'),
(17, 'R.K. Narayan', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'rknarayan@gmail.com', NULL, '2019-02-25 17:00:40', '2019-02-24 18:30:00'),
(18, 'Satyajit Ray', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'satya@gmail.com', NULL, '2019-02-25 17:01:25', '2019-02-24 18:30:00'),
(19, 'Gautam Das', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'gautam@gmail.com', NULL, '2019-02-25 17:02:28', '2019-02-24 18:30:00'),
(20, 'Piyush Chakrabourty', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'piyush@gmail.com', NULL, '2019-02-25 17:03:22', '2019-02-24 18:30:00'),
(21, 'Manish Bhasin', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'manishbhasin@gmail.com', NULL, '2019-02-25 17:04:07', '2019-02-24 18:30:00'),
(22, 'Vipin Sharma', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'vipinsharma@gmail.com', NULL, '2019-02-25 17:04:52', '2019-02-23 18:30:00'),
(23, 'Man Singh', '$2y$10$fYrX6U67gHpL.ljr6cmAD.a9dRfxOtOaOFEUCVuGyPEB4/nvk7N9.', 'principal', 'mansingh@gmail.com', NULL, '2019-02-25 17:06:13', '2019-02-25 05:12:18'),
(24, 'Debdas Mishra', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'debdasmisrhra@cvrce.edu.in', NULL, '2019-03-02 12:32:53', '2019-02-24 18:30:00'),
(25, 'P.K. Sahoo', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'pksahoo@cvrce.edu.in', NULL, '2019-03-02 10:31:34', '2019-02-24 18:30:00'),
(26, 'Asit Rout', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'asitrout@cvrce.edu.in', NULL, '2019-03-02 12:33:56', '2019-02-24 18:54:47'),
(27, 'Sujit Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'bpu/1501227456', NULL, '2019-03-02 10:11:23', '2019-02-24 18:30:00'),
(28, 'Sachin Tiwari', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'bpu/1501227651', NULL, '2019-03-02 10:11:44', '2019-02-24 18:30:00'),
(29, 'Sourav Shrestha', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'shrestha.sourav30@gmail.com', NULL, '2019-02-26 04:49:57', '2019-02-23 18:30:00'),
(30, 'Satyam', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'satyam@gmail.com', NULL, '2019-02-26 04:49:57', '2019-02-26 18:30:00'),
(31, 'Prince Himanshu', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'princehimanshu@gmail.com', NULL, '2019-02-27 07:01:12', '2019-02-27 18:30:00'),
(32, 'Shaurya', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'anshshaurya@gmail.com', NULL, '2019-02-27 07:01:23', '2019-02-27 18:30:00'),
(33, 'Chitra Bansal', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'chitrabansal@gmail.com', NULL, '2019-02-27 07:01:42', '2019-02-27 18:30:00'),
(34, 'Shah Bano', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'shahbano@gmail.com', NULL, '2019-02-27 07:01:52', '2019-02-27 18:30:00'),
(35, 'Pallavi Kumari', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'pallavikumari@gmail.com', NULL, '2019-02-27 07:02:04', '2019-02-27 18:30:00'),
(36, 'Ansuman Mohanty', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'ansumanmohanty@gmail.com', NULL, '2019-02-27 07:02:15', '2019-02-27 18:30:00'),
(37, 'Subham Mohanty', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'subhammohanty@gmail.com', NULL, '2019-02-27 07:02:30', '2019-02-27 18:30:00'),
(38, 'Pritish Rout', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'pritishrout@gmail.com', NULL, '2019-02-27 07:03:16', '2019-02-27 18:30:00'),
(39, 'Sehmat Khan', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'ombudsman', 'sehmatkhan@dtu.in', NULL, '2019-02-27 14:57:30', '2019-02-27 18:30:00'),
(40, 'Tejashwari Singh', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'ombudsman', 'tejashwarisingh@mu.edu.in', NULL, '2019-02-27 14:57:30', '2019-02-27 18:30:00'),
(41, 'Satyajit Dash', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'satyajitdash@gmail.com', NULL, '2019-02-27 15:10:34', '2019-02-27 18:30:00'),
(42, 'Bijendra Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'bijendrakumar@gmail.com', NULL, '2019-02-27 15:10:34', '2019-02-27 18:30:00'),
(43, 'Akshay Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'akshaykumar@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(44, 'Amit Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'amitkumar@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(45, 'Vikram Chaudhary', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'vikramchaudhary@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(46, 'Bijendra Pandey', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'bijendrapandey@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(47, 'Amod Jojowar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'amodjojowar@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(48, 'Aparna Choubey', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'aparnachoubey@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(49, 'Shreyashi Chakraborty', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'shreyashichakraborty@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(50, 'Amiya Nanda', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'amiyananda@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(51, 'Subhakanta Pati', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'subhakantapati@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(52, 'Sangram Singh', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'sangramsingh@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(53, 'Vikas Singh', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'vikassingh@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(54, 'Avinash Verma', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'avinashverma@gmail.com', NULL, '2019-02-27 15:18:32', '2019-02-27 18:30:00'),
(55, 'M. Rahul', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'madhurahul@gmail.com', NULL, '2019-02-27 15:29:10', '2019-02-27 18:30:00'),
(56, 'Kishore Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'kishorekumar@gmail.com', NULL, '2019-02-27 17:20:08', '2019-02-27 18:30:00'),
(57, 'Arpana Baral', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'arpanbaral@gmail.com', NULL, '2019-02-27 17:20:08', '2019-02-27 18:30:00'),
(58, 'Satyanarayana Mahanta', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'student', 'satyamahanta@gmail.com', NULL, '2019-02-27 17:20:54', '2019-02-27 18:30:00'),
(59, 'Suraj Singh', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'surajsingh@gmail.com', NULL, '2019-02-27 17:45:47', '2019-02-27 18:30:00'),
(60, 'Amit Patro', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'amitpatro@gmail.com', NULL, '2019-02-27 17:45:47', '2019-02-27 18:30:00'),
(61, 'Shazia Rahat', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'shaziarahat@gmail.com', NULL, '2019-02-27 17:47:11', '2019-02-27 18:30:00'),
(62, 'Rutam Prita Mishra', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'rutam@gmail.com', NULL, '2019-02-27 17:47:11', '2019-02-27 18:30:00'),
(63, 'Aakash Nanda', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'aakashnanda@gmail.com', NULL, '2019-02-27 17:47:54', '2019-02-27 18:30:00'),
(64, 'Brajesh Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'brajeshkumar@cvrce.edu.in', NULL, '2019-03-02 05:31:52', '0000-00-00 00:00:00'),
(65, 'Bhavesh Tripathy ', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'btripathy@cvrce.edu.in', NULL, '2019-03-02 05:32:00', '0000-00-00 00:00:00'),
(66, 'Aman Agarwal', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'amanagarwal@cvrce.edu.in', NULL, '2019-03-02 05:32:07', '0000-00-00 00:00:00'),
(67, 'Vishves Dhave', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'vdhave@cvrce.edu.in', NULL, '2019-03-02 05:32:13', '0000-00-00 00:00:00'),
(68, 'Alok Nagar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'aloknagar@cvrce.edu.in', NULL, '2019-03-02 05:32:20', '0000-00-00 00:00:00'),
(69, 'Shaina Sheikh', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'shaina@cvrce.edu.in', NULL, '2019-03-02 05:32:27', '0000-00-00 00:00:00'),
(70, 'Kundan Singh', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'committee member', 'kundansingh@cvrce.edu.in', NULL, '2019-03-03 11:07:39', '0000-00-00 00:00:00'),
(71, 'Prashant Kumar', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'vendor', 'prashant@gmail.com', NULL, '2019-03-02 19:49:38', '0000-00-00 00:00:00'),
(72, 'Rupal Kumari', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'vendor', 'rupalkumari@gmail.com', NULL, '2019-03-02 19:49:48', '0000-00-00 00:00:00'),
(73, 'Murali Prasad', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'vendor', 'muraliprasad@gmail.com', NULL, '2019-03-02 19:49:53', '0000-00-00 00:00:00'),
(74, 'Biplab Sinha', '$2y$10$1Mi6XypjWw25iLmI3WL8s.aHgs9W.TO99qyGvOVZrh/GFjHy6E3ji', 'vendor', 'biplabsinha@gmail.com', NULL, '2019-03-02 19:49:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_aicte`
--

CREATE TABLE `user_aicte` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(11) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_aicte`
--

INSERT INTO `user_aicte` (`id`, `user_id`, `name`, `profile_picture`, `last_login`, `phone`, `reset_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anil Sahasrabudhe', NULL, '2019-02-22 09:39:04', '1234567890', NULL, '2019-02-22 09:39:04', '2019-02-22 09:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_committee_member`
--

CREATE TABLE `user_committee_member` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `assigned_committee` varchar(255) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `registration_status` int(1) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_committee_member`
--

INSERT INTO `user_committee_member` (`id`, `user_id`, `profile_picture`, `name`, `assigned_committee`, `phone`, `created_by`, `department_id`, `registration_status`, `reset_token`) VALUES
(1, 4, NULL, 'Priyadarshi Kanungo', 'Ragging', '8994512356', 1, 8, 1, NULL),
(2, 24, NULL, 'Debdas Mishra', 'academics', '8745135265', 1, 12, 1, NULL),
(3, 25, NULL, 'P.K. Sahoo', 'Hostel', '8755661122', 1, 1, 1, NULL),
(4, 26, NULL, 'Asit Rout', 'Training and Placement', '8745611223', 1, 5, 1, NULL),
(5, 59, NULL, 'Suraj Singh', 'hostel', '8797465974', 6, 1, 1, NULL),
(6, 60, NULL, 'Amit Patro', 'academics', '8797465964', 6, 12, 1, NULL),
(7, 61, NULL, 'Shazia Rahat', 'hostel', '8797465974', 10, 1, 1, NULL),
(8, 62, NULL, 'Rutam Prita Mishra', 'hostel', '8797465964', 11, 1, 1, NULL),
(9, 63, NULL, 'Aakash Nanda', 'hostel', '8797465974', 13, 1, 1, NULL),
(10, 64, NULL, 'Brajesh Kumar', 'Accounts Department', '8746533661', 1, 6, 1, NULL),
(11, 65, NULL, 'Bhavesh Tripathy', 'Security', '8945632145', 1, 7, 1, NULL),
(12, 66, NULL, 'Aman Agarwal', 'Transport', '8946521222', 1, 9, 1, NULL),
(13, 67, NULL, 'Vishves Dhave', 'Examination Cell', '8995542153', 1, 5, 1, NULL),
(14, 68, NULL, 'Alok Nagar', 'Miscellaneous', '8774512365', 1, 11, 1, NULL),
(15, 69, NULL, 'Shaina Sheikh', 'Canteen', '7854523310', 1, 10, 1, NULL),
(16, 70, NULL, 'Kundan Singh', 'Admission Cell', '789451235', 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_ombudsman`
--

CREATE TABLE `user_ombudsman` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `registration_status` int(1) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_ombudsman`
--

INSERT INTO `user_ombudsman` (`id`, `user_id`, `name`, `profile_picture`, `phone`, `university_id`, `registration_status`, `reset_token`) VALUES
(1, 2, 'Anil Sahoo', NULL, '123456', 1, 1, NULL),
(2, 8, 'M.N. Singh', NULL, '2276797', 2, 1, NULL),
(3, 9, 'Vishal Kujur', NULL, '22789654', 4, 0, NULL),
(4, 39, 'Sehmat Khan', NULL, '064-2276797', 3, 1, NULL),
(5, 40, 'Tejashwari Singh', NULL, '064-2276797', 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_principal`
--

CREATE TABLE `user_principal` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `college_id` int(11) NOT NULL,
  `registration_status` int(1) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_principal`
--

INSERT INTO `user_principal` (`id`, `user_id`, `name`, `profile_picture`, `phone`, `university_id`, `college_id`, `registration_status`, `reset_token`) VALUES
(1, 16, 'Bhabes Bhattacharya', NULL, '879746964', 1, 1, 1, NULL),
(2, 17, 'RK Narayan', NULL, '1234567', 1, 3, 1, NULL),
(3, 12, 'J.V. Rao', NULL, '21345', 1, 4, 1, NULL),
(4, 23, 'Man Singh', NULL, '123456', 1, 5, 1, NULL),
(5, 13, 'Bipul Sharma', NULL, '1239876', 1, 6, 1, NULL),
(6, 3, 'S.N. Deepa', NULL, '120987', 2, 2, 1, NULL),
(7, 18, 'Satyajit Ray', NULL, '125690', 2, 7, 1, NULL),
(8, 19, 'Gautam Das', NULL, '120987', 2, 8, 1, NULL),
(9, 20, 'Piyush Chakrabourty', NULL, '125690', 2, 9, 1, NULL),
(10, 22, 'Vipin Sharma', NULL, '125690', 3, 10, 1, NULL),
(11, 10, 'S.N. Sivanandan', NULL, '120987', 4, 11, 1, NULL),
(12, 11, 'P.T. Rao', NULL, '125690', 4, 12, 1, NULL),
(13, 14, 'Aman Sharma', NULL, '125690', 5, 13, 1, NULL),
(14, 15, 'P.V. Singhal', NULL, '125690', 5, 14, 1, NULL),
(15, 21, 'Manish Bhasin', NULL, '125690', 4, 15, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_student`
--

CREATE TABLE `user_student` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `college_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `year` int(2) DEFAULT NULL,
  `registration_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_student`
--

INSERT INTO `user_student` (`id`, `user_id`, `name`, `profile_picture`, `college_id`, `university_id`, `branch`, `registration_number`, `reset_token`, `course`, `year`, `registration_status`) VALUES
(1, 5, 'Shashank Raj', NULL, 1, 1, 'IT', '1501227652', NULL, 'b.tech', 4, 1),
(2, 6, 'Kaushik Ojha', NULL, 1, 1, 'CSE', '1601227173', NULL, 'bca', 3, NULL),
(3, 7, 'Surbhi Suman', NULL, 1, 1, 'CSE', '1601227432', NULL, 'mca', 2, 1),
(4, 27, 'Sujit Kumar', NULL, 1, 1, 'Civil', '14325678', NULL, 'm.tech', 2, 1),
(5, 28, 'Sachin Tiwari', NULL, 1, 1, 'Mechanical', '1234567890', NULL, 'phd', 1, 1),
(6, 29, 'Sourav Shrestha', NULL, 2, 2, 'HR', '1234567890', NULL, 'MBA', 2, 1),
(7, 30, 'Satyam', NULL, 2, 2, 'HR', '12345678', NULL, 'MBA', 1, 1),
(8, 31, 'Prince Himanshu', NULL, 2, 2, 'HR', '65754321', NULL, 'MBA', 1, 1),
(9, 32, 'Shaurya', NULL, 2, 2, 'HR', '543221890', NULL, 'MBA', 1, 1),
(10, 33, 'Chitra Bansal', NULL, 2, 2, 'HR', '65754321', NULL, 'MBA', 1, 1),
(11, 34, 'Shah Bano', NULL, 3, 1, 'Civil', '543221890', NULL, 'b.tech', 1, 1),
(12, 35, 'Pallavi Kumari', NULL, 3, 1, 'electrical', '65754321', NULL, 'b.tech', 1, 1),
(13, 36, 'Ansuman Mohanty', NULL, 3, 1, 'electrical', '543221890', NULL, 'b.tech', 1, 1),
(14, 37, 'Subham Mohanty', NULL, 3, 1, 'electrical', '65754321', NULL, 'b.tech', 1, 1),
(15, 38, 'Pritish Rout', NULL, 3, 1, 'civil', '543221890', NULL, 'b.tech', 1, 1),
(16, 41, 'Satyajit Das', NULL, 4, 1, 'HR', '15011127652', NULL, 'MBA', 2, 1),
(17, 42, 'Bijendra Kumar', NULL, 4, 1, 'HR', '1501227561', NULL, 'MBA', 2, 1),
(21, 43, 'Akshay Kumar', NULL, 4, 1, 'HR', '15011127659', NULL, 'MBA', 2, 1),
(22, 44, 'Amit Kumar ', NULL, 4, 1, 'HR', '1501227567', NULL, 'MBA', 2, 1),
(23, 45, 'Vikram Chaudhary', NULL, 4, 1, 'HR', '15012275789', NULL, 'MBA', 2, 1),
(24, 46, 'Bijendra Pandey', NULL, 5, 1, 'IT', '1501227345', NULL, 'b.tech', 4, 1),
(25, 47, 'Amod Jojowar', NULL, 5, 1, 'IT', '1501227891', NULL, 'b.tech', 4, 1),
(43, 48, 'Aparna Choubey', NULL, 5, 1, 'IT', '1501227891', NULL, 'b.tech', 4, 1),
(44, 49, 'Shreyashi Chakraborty', NULL, 5, 1, 'IT', '1501227345', NULL, 'b.tech', 4, 1),
(45, 50, 'Amiya Nanda', NULL, 6, 1, 'electrical', '1501227891', NULL, 'b.tech', 4, 1),
(46, 51, 'Subhakanta Panda', NULL, 6, 1, 'electrical', '1501227345', NULL, 'b.tech', 4, 1),
(47, 52, 'Sangram Singh', NULL, 6, 1, 'CSE', '1501227891', NULL, 'b.tech', 4, 1),
(48, 53, 'Vikas Singh', NULL, 6, 1, 'CSE', '1501227345', NULL, 'b.tech', 4, 1),
(49, 54, 'Avinash Verma', NULL, 6, 1, 'CSE', '1501227891', NULL, 'b.tech', 4, 1),
(51, 55, 'M. Rahul', NULL, 6, 1, 'CSE', '1501227211', NULL, 'b.tech', 4, 1),
(52, 56, 'Kishore Kumar', NULL, 11, 4, 'mechanical', '1601227123', NULL, 'm.tech', 2, 1),
(53, 57, 'Arpana Baral', NULL, 10, 3, 'civil', '1701227130', NULL, 'm.tech', 1, 1),
(54, 58, 'Satyanarayana Mahanta', NULL, 13, 5, 'CSE', '1701543211', NULL, 'm.tech', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_vendor`
--

CREATE TABLE `user_vendor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `phone_no` int(11) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_vendor`
--

INSERT INTO `user_vendor` (`id`, `user_id`, `name`, `profile_picture`, `phone_no`, `college_id`) VALUES
(1, 71, 'Prashant Kumar', NULL, 1223456789, 1),
(2, 72, 'Rupal Kumari', NULL, 1451569845, 3),
(3, 73, 'Murali Prasad', NULL, 1236548565, 2),
(4, 74, 'Biplab Sinha', NULL, 2145689452, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_aicte_announcement`
--
ALTER TABLE `table_aicte_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aicte_user_id` (`aicte_user_id`);

--
-- Indexes for table `table_attachment`
--
ALTER TABLE `table_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_college`
--
ALTER TABLE `table_college`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `table_department`
--
ALTER TABLE `table_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `table_grievance`
--
ALTER TABLE `table_grievance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `type` (`type`),
  ADD KEY `type_2` (`type`);

--
-- Indexes for table `table_message`
--
ALTER TABLE `table_message`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `grievance_id` (`grievance_id`);

--
-- Indexes for table `table_ombudsman_announcement`
--
ALTER TABLE `table_ombudsman_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ombudsman_user_id` (`ombudsman_user_id`);

--
-- Indexes for table `table_principal_announcement`
--
ALTER TABLE `table_principal_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principal_user_id` (`principal_user_id`);

--
-- Indexes for table `table_search`
--
ALTER TABLE `table_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_university`
--
ALTER TABLE `table_university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_aicte`
--
ALTER TABLE `user_aicte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`user_id`);

--
-- Indexes for table `user_committee_member`
--
ALTER TABLE `user_committee_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `user_ombudsman`
--
ALTER TABLE `user_ombudsman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`user_id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `user_principal`
--
ALTER TABLE `user_principal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`user_id`),
  ADD KEY `college_id` (`college_id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `user_student`
--
ALTER TABLE `user_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`user_id`),
  ADD UNIQUE KEY `username` (`name`),
  ADD KEY `college_id` (`college_id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `user_vendor`
--
ALTER TABLE `user_vendor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_aicte_announcement`
--
ALTER TABLE `table_aicte_announcement`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_attachment`
--
ALTER TABLE `table_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_college`
--
ALTER TABLE `table_college`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `table_department`
--
ALTER TABLE `table_department`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_grievance`
--
ALTER TABLE `table_grievance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `table_message`
--
ALTER TABLE `table_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `table_ombudsman_announcement`
--
ALTER TABLE `table_ombudsman_announcement`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_principal_announcement`
--
ALTER TABLE `table_principal_announcement`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_search`
--
ALTER TABLE `table_search`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_university`
--
ALTER TABLE `table_university`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_aicte`
--
ALTER TABLE `user_aicte`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_committee_member`
--
ALTER TABLE `user_committee_member`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_ombudsman`
--
ALTER TABLE `user_ombudsman`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_principal`
--
ALTER TABLE `user_principal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_student`
--
ALTER TABLE `user_student`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_vendor`
--
ALTER TABLE `user_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_aicte_announcement`
--
ALTER TABLE `table_aicte_announcement`
  ADD CONSTRAINT `table_aicte_announcement_ibfk_1` FOREIGN KEY (`aicte_user_id`) REFERENCES `user_aicte` (`id`);

--
-- Constraints for table `table_college`
--
ALTER TABLE `table_college`
  ADD CONSTRAINT `table_college_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `table_university` (`id`);

--
-- Constraints for table `table_department`
--
ALTER TABLE `table_department`
  ADD CONSTRAINT `table_department_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `table_college` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `table_grievance`
--
ALTER TABLE `table_grievance`
  ADD CONSTRAINT `table_grievance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `user_student` (`id`),
  ADD CONSTRAINT `table_grievance_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `table_department` (`id`);

--
-- Constraints for table `table_message`
--
ALTER TABLE `table_message`
  ADD CONSTRAINT `table_message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `table_message_ibfk_2` FOREIGN KEY (`grievance_id`) REFERENCES `table_grievance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table_ombudsman_announcement`
--
ALTER TABLE `table_ombudsman_announcement`
  ADD CONSTRAINT `table_ombudsman_announcement_ibfk_1` FOREIGN KEY (`ombudsman_user_id`) REFERENCES `user_ombudsman` (`id`);

--
-- Constraints for table `table_principal_announcement`
--
ALTER TABLE `table_principal_announcement`
  ADD CONSTRAINT `table_principal_announcement_ibfk_1` FOREIGN KEY (`principal_user_id`) REFERENCES `user_principal` (`id`);

--
-- Constraints for table `user_aicte`
--
ALTER TABLE `user_aicte`
  ADD CONSTRAINT `user_aicte_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_committee_member`
--
ALTER TABLE `user_committee_member`
  ADD CONSTRAINT `user_committee_member_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_principal` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_committee_member_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `table_department` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_committee_member_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_ombudsman`
--
ALTER TABLE `user_ombudsman`
  ADD CONSTRAINT `user_ombudsman_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `table_university` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_ombudsman_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_principal`
--
ALTER TABLE `user_principal`
  ADD CONSTRAINT `user_principal_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `table_college` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_principal_ibfk_2` FOREIGN KEY (`university_id`) REFERENCES `table_university` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_principal_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_student`
--
ALTER TABLE `user_student`
  ADD CONSTRAINT `user_student_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `table_college` (`id`),
  ADD CONSTRAINT `user_student_ibfk_2` FOREIGN KEY (`university_id`) REFERENCES `table_university` (`id`),
  ADD CONSTRAINT `user_student_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_vendor`
--
ALTER TABLE `user_vendor`
  ADD CONSTRAINT `user_vendor_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `table_college` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_vendor_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
