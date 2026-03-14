-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2020 at 10:55 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `disease_prediction_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_desc`) VALUES
(1, 'IT Department', 'IT Department'),
(2, 'Java Developement', 'Java Developement'),
(3, 'HR Department', 'HR Department'),
(4, 'Web Developement', 'Web Developement');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `designation_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`, `designation_desc`) VALUES
(1, 'Software Engineer', 'Software Engineer'),
(2, 'Sr. Software Engineer', 'Sr. Software Engineer'),
(3, 'Team Lead', 'Team Lead'),
(4, 'Lead Engineer', 'Lead Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2hqmzjdjly9brl29dliya0m8h8rtiuuk', 'MzY0MzUzNDE2MjljNmE4MzU1OGQ2OGVkYTFkNTc5YjVjODI0YzdlMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfZmlyc3RfbmFtZSI6ZmFsc2V9', '2020-06-03 07:26:47'),
('3hicrhrr6ohdq5gtq56zp7p5x0jzbswo', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2019-10-04 08:40:57'),
('3nydxueq651e5e1f6fi2m7ot7qr551kt', 'MmQ2NzE1MWUzZDg5ODhlMWMwNjA1NDY0NGI5ZmQ1YWE2NmMxNjE3Nzp7InVzZXJfaWQiOjE3LCJ1c2VyX2ZpcnN0X25hbWUiOiJKYXkiLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX2xldmVsX2lkIjoyfQ==', '2017-12-09 16:28:09'),
('7xwuqbgziavwdy1pxkb1l9gw3ju4qqdi', 'YTE4ODU5NzhiNGQ0ZjQzYzRlYmUzMTM2ZjI2ZmFkYzQ1NzU1MWRkYTp7InVzZXJfaWQiOjI4LCJ1c2VyX2ZpcnN0X25hbWUiOiJhc2RmIiwiYXV0aGVudGljYXRlZCI6dHJ1ZSwidXNlcl9sZXZlbF9pZCI6MX0=', '2018-03-20 16:58:10'),
('8aeroyf0adguui6gi0toj6q74zt8oevb', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2020-04-08 16:48:13'),
('8lg6u5d7u128egy5kj72ysszh182p908', 'NmYwMTg1YzkwNjMzOGM0MjEwNTlkNWIyN2U1YTY1YjA5MTYwNzA3MTp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-12-05 12:19:43'),
('9o3r5thrnbuu99tdz8aq1qu2c6o42htq', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2019-10-31 04:36:34'),
('a4bleeve4vy4s8yuqgcqb4lyd6z8cmdj', 'YzgyMjc0ZThmZTA5ODJlNTg2YjUyZWU5ZjMxYzU0MTVhMzE1MDhjMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-09-19 17:52:21'),
('eg60bzzadg4n1ujp7gs3di2mjycaskqx', 'MmQ2NzE1MWUzZDg5ODhlMWMwNjA1NDY0NGI5ZmQ1YWE2NmMxNjE3Nzp7InVzZXJfaWQiOjE3LCJ1c2VyX2ZpcnN0X25hbWUiOiJKYXkiLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX2xldmVsX2lkIjoyfQ==', '2018-03-07 17:37:10'),
('ei0omfcbh4ii7oxgem7xyzf1hzm6q8sm', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2020-04-25 06:50:22'),
('i5307nyqqp0qrqq0ra7rvhketcp4j9va', 'NmYwMTg1YzkwNjMzOGM0MjEwNTlkNWIyN2U1YTY1YjA5MTYwNzA3MTp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-12-05 18:18:27'),
('jepc0gbw67i143r8kh9wxk20un3p6p5l', 'YzgyMjc0ZThmZTA5ODJlNTg2YjUyZWU5ZjMxYzU0MTVhMzE1MDhjMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-09-19 17:45:30'),
('l0pywu5kcziyojectuw7aalda8qzoncu', 'MzY0MzUzNDE2MjljNmE4MzU1OGQ2OGVkYTFkNTc5YjVjODI0YzdlMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfZmlyc3RfbmFtZSI6ZmFsc2V9', '2020-01-23 15:39:13'),
('l5jxmb32y1fhd78zmimye8pkfqlvmx07', 'ZDYxMDkzOWE2M2Q1ODgxMTQyZjFiYjMyMTc4NzA1ZDJmOWE3OWE1ODp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2ZpcnN0X25hbWUiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2V9', '2017-12-09 17:00:32'),
('n9mt9w6aajda3b8qpu3wij9hr7bwdpxo', 'MzY0MzUzNDE2MjljNmE4MzU1OGQ2OGVkYTFkNTc5YjVjODI0YzdlMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfZmlyc3RfbmFtZSI6ZmFsc2V9', '2020-04-25 17:43:51'),
('nbrd3dzgquem1r7dy71dnnzt93aqnvf5', 'MzY0MzUzNDE2MjljNmE4MzU1OGQ2OGVkYTFkNTc5YjVjODI0YzdlMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfZmlyc3RfbmFtZSI6ZmFsc2V9', '2019-10-04 15:22:20'),
('phq13mty3b51b4jyi5lvf1rv4lg8e3gv', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2019-09-12 13:14:42'),
('qi4jui1wag7y5kjd3nal07b1h2jlc9ia', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2017-07-21 17:16:47'),
('uihaf7t87g498h3j94sotnnp4k67xumg', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2019-09-13 10:30:01'),
('vs1th0nzjui4fxdh6u0is0ne84s8izm8', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2020-04-02 06:26:26'),
('wcn7z95jq41r7j64cou63nhnff8axd9s', 'MzljNWVlZDc5ODk0NzIxNTkwNGE0MWVlNjc2MDEwN2Y2NjM2MzYxMjp7InVzZXJfaWQiOjgsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQiLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX2xldmVsX2lkIjoxfQ==', '2018-04-12 10:28:45'),
('yz303ugy7tn6da157gib3125cy4lw8ux', 'MzY0MzUzNDE2MjljNmE4MzU1OGQ2OGVkYTFkNTc5YjVjODI0YzdlMzp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfZmlyc3RfbmFtZSI6ZmFsc2V9', '2020-06-03 09:53:16'),
('z98xtd49yk9qa5fg15vbg3yl5t6rtt8k', 'YWM2MGJiMjRkYjRlYWYzOGRlODcyMDI1ZmJiYjI2ZTUxMTgxOTlhNDp7ImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsInVzZXJfZmlyc3RfbmFtZSI6IkFtaXQifQ==', '2019-09-12 12:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `files_id` int(11) NOT NULL,
  `files_name` varchar(255) NOT NULL,
  `files_original_file_name` varchar(255) NOT NULL,
  `files_file` varchar(255) NOT NULL,
  `files_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`files_id`, `files_name`, `files_original_file_name`, `files_file`, `files_desc`) VALUES
(10, 'Disease Training Data', 'disease.csv', 'uploads/disease.csv', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `level_sccore` varchar(255) NOT NULL,
  `level_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`, `level_sccore`, `level_description`) VALUES
(1, 'Beginner', 'Level 1', 'Beginner'),
(2, 'Intermediate', 'Level 1', ''),
(3, 'Advanced', '', 'Advanced'),
(4, 'Expert', '', 'Expert');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL,
  `login_emp_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` int(11) NOT NULL DEFAULT '3',
  `login_email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_emp_id`, `login_user`, `login_password`, `login_level`, `login_email`) VALUES
(1, 0, 'admin', 'test', 1, 'kaushal.rahuljaiswal@gmail.com'),
(6, 1002, 'kaushal', 'test', 3, 'kaushal.rahuljaiswal@gmail.com'),
(7, 1003, 'kaushal123', 'test', 3, 'aggarwal.neha@gmail.com'),
(8, 1004, 'neha', 'test', 3, 'aggarwal.neha@gmail.com'),
(9, 1005, 'test', 'test', 3, 'aggarwal.neha@gmail.com'),
(10, 1006, 'atul', 'test', 3, 'aatul@gmail.com'),
(11, 1007, 'sumit1', 'test', 3, 'sumit.singh@gmail.com'),
(12, 1008, 'neha123', 'test', 3, 'aggarwal.neha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `salutions`
--

CREATE TABLE IF NOT EXISTS `salutions` (
  `sl_id` int(11) NOT NULL,
  `sl_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salutions`
--

INSERT INTO `salutions` (`sl_id`, `sl_name`) VALUES
(1, 'Mr.'),
(2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_emp_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `users_city`
--

CREATE TABLE IF NOT EXISTS `users_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_city`
--

INSERT INTO `users_city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `users_country`
--

CREATE TABLE IF NOT EXISTS `users_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_country`
--

INSERT INTO `users_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE IF NOT EXISTS `users_role` (
  `role_id` int(11) NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`role_id`, `role_title`, `role_description`) VALUES
(1, 'Tutor', 'Admin Roles and Permissions'),
(2, 'Student', 'Student Roles and Permission');

-- --------------------------------------------------------

--
-- Table structure for table `users_state`
--

CREATE TABLE IF NOT EXISTS `users_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_state`
--

INSERT INTO `users_state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE IF NOT EXISTS `users_user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `user_country` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_first_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`, `user_last_name`) VALUES
(8, 1, 'admin', 'test', 'Amit', 'Allahabad', 'Lunckonw', 1, 1, 1, 'amit@gmail.com', '9878987678', 'Male', '2 July,1987', '/uploads/p1.jpg', 'Kumar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`files_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `salutions`
--
ALTER TABLE `salutions`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users_city`
--
ALTER TABLE `users_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `users_country`
--
ALTER TABLE `users_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users_state`
--
ALTER TABLE `users_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `files_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `salutions`
--
ALTER TABLE `salutions`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_city`
--
ALTER TABLE `users_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_country`
--
ALTER TABLE `users_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_state`
--
ALTER TABLE `users_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
