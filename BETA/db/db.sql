-- phpMyAdmin SQL Dump
-- version 3.4.10
-- http://www.phpmyadmin.net
--
-- Host: 85.159.67.250
-- Generation Time: Jan 01, 2017 at 01:54 PM
-- Server version: 5.5.29
-- PHP Version: 5.2.6-1+lenny10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alibugra`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2016-12-27 11:17:10', '2016-12-27 11:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Survey Manager', 2, '2016-12-27 11:17:11', '2016-12-27 11:17:11'),
(2, 'Surveyor', 1, '2016-12-27 11:17:11', '2016-12-27 11:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20161203171328'),
('20161215161941'),
('20161222134428'),
('20161222134533'),
('20161222134644'),
('20161227102850');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE IF NOT EXISTS `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `title`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MySurvey', 2, 'Open', '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(2, 'How do you feel ?', 2, 'Open', '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(5, 'asd', 8, 'Open', '2016-12-29 17:29:38', '2016-12-29 17:29:38'),
(6, 'IsThat', 8, 'Open', '2016-12-29 20:06:11', '2016-12-29 20:06:11'),
(7, 'IsThat', 8, 'Open', '2016-12-29 20:06:11', '2016-12-29 20:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `survey_answers`
--

CREATE TABLE IF NOT EXISTS `survey_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `survey_question_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `survey_answers`
--

INSERT INTO `survey_answers` (`id`, `answer`, `survey_question_id`, `created_at`, `updated_at`) VALUES
(1, 'yes', 1, '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(2, 'maybe', 1, '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(3, 'no', 1, '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(4, 'perhaps', 1, '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(5, 'likely', 1, '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(6, 'Fine', 2, '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(7, 'Like horse', 2, '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(8, 'bad', 2, '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(9, 'too bad', 2, '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(10, 'so much very more worst too bad', 2, '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(11, 'Aa', 3, '2016-12-27 15:44:12', '2016-12-27 15:44:12'),
(12, 'a', 3, '2016-12-27 15:44:12', '2016-12-27 15:44:12'),
(13, 'a', 3, '2016-12-27 15:44:12', '2016-12-27 15:44:12'),
(14, 'aa', 3, '2016-12-27 15:44:12', '2016-12-27 15:44:12'),
(15, 'a', 3, '2016-12-27 15:44:12', '2016-12-27 15:44:12'),
(16, 'qwe', 4, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(17, 'asda', 4, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(18, 'asd', 4, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(19, 'asd', 4, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(20, 'sad', 4, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(21, 'zxc', 5, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(22, 'asd', 5, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(23, 'zc', 5, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(24, 'zxc', 5, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(25, 'zc', 5, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(26, 'banana', 6, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(27, 'banana', 7, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(28, 'apple', 6, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(29, 'cherry', 6, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(30, 'orange', 6, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(31, 'melon', 6, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(32, 'apple', 7, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(33, 'cherry', 7, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(34, 'orange', 7, '2016-12-29 20:06:12', '2016-12-29 20:06:12'),
(35, 'melon', 7, '2016-12-29 20:06:12', '2016-12-29 20:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE IF NOT EXISTS `survey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `survey_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `survey_questions`
--

INSERT INTO `survey_questions` (`id`, `question`, `survey_id`, `created_at`, `updated_at`) VALUES
(1, 'Is survey good', 1, '2016-12-27 11:25:40', '2016-12-27 11:25:40'),
(2, 'How do you feel ?', 2, '2016-12-27 11:27:09', '2016-12-27 11:27:09'),
(3, 'aaa', 3, '2016-12-27 15:44:12', '2016-12-27 15:44:12'),
(4, '12', 5, '2016-12-29 17:29:38', '2016-12-29 17:29:38'),
(5, 'asdz', 5, '2016-12-29 17:29:39', '2016-12-29 17:29:39'),
(6, 'what is that', 6, '2016-12-29 20:06:11', '2016-12-29 20:06:11'),
(7, 'what is that', 7, '2016-12-29 20:06:11', '2016-12-29 20:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `survey_results`
--

CREATE TABLE IF NOT EXISTS `survey_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `survey_question_id` int(11) DEFAULT NULL,
  `survey_answer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `survey_results`
--

INSERT INTO `survey_results` (`id`, `user_id`, `survey_id`, `survey_question_id`, `survey_answer_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 2, '2016-12-27 11:26:15', '2016-12-27 11:26:15'),
(2, 4, 1, 1, 1, '2016-12-27 11:26:37', '2016-12-27 11:26:37'),
(3, 5, 1, 1, 1, '2016-12-27 11:26:41', '2016-12-27 11:26:41'),
(4, -1, 2, 2, 6, '2016-12-27 11:27:33', '2016-12-27 11:27:33'),
(5, 4, 2, 2, 7, '2016-12-27 11:27:40', '2016-12-27 11:27:40'),
(6, 5, 2, 2, 10, '2016-12-27 11:28:18', '2016-12-27 11:28:18'),
(7, 6, 2, 2, 7, '2016-12-27 15:34:17', '2016-12-27 15:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123456', 'admin@surveyhorse.com', 3, '2016-12-27 11:17:11', '2016-12-27 11:17:11'),
(2, 'surveymanager', '123456', 'surveymanager@surveymanager.com', 2, '2016-12-27 11:24:05', '2016-12-27 11:24:05'),
(8, 'burakSA', '123456', 'burak@burak.com', 2, '2016-12-27 16:42:20', '2016-12-29 19:56:51'),
(4, 'emresasmaz', '123456', 'sasmazemre7@gmail.com', 1, '2016-12-27 11:24:50', '2016-12-27 11:24:50'),
(5, 'BurakSA', '123456', 'buraksaglm@gmail.com', 1, '2016-12-27 11:24:59', '2016-12-27 11:24:59'),
(6, 'baba', 'babacik123', 'babacik@hotmail.com', 1, '2016-12-27 14:31:41', '2016-12-27 16:39:45');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
