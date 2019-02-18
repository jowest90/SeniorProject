-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2017 at 04:22 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `completed`
--

CREATE TABLE `completed` (
  `id` int(20) NOT NULL,
  `Scenario_id` int(20) NOT NULL,
  `score` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(20) NOT NULL,
  `Scenario_id` int(20) NOT NULL,
  `State_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `next_state_id` int(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `correct` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `Scenario_id`, `State_id`, `name`, `next_state_id`, `description`, `correct`) VALUES
(1, 1, 1, 'next', 2, 'Continue', 0),
(2, 1, 2, 'layDown', 3, 'Lay Patient supine and place on supplemental Oxygen', 1),
(3, 1, 2, 'washCloth', 4, 'Place a washcloth on the Patient’s forehead', 0),
(4, 1, 3, 'vitals', 4, 'Take vital signs', 1),
(5, 1, 3, 'upright', 7, 'Bring patient upright, remove oxygen, and continue with Root Canal', 0),
(6, 1, 5, 'wait', 6, 'Wait for vital signs to return to within 10% of normal and continue with Root Canal', 1),
(7, 1, 5, 'upright', 7, 'Bring patient upright, remove oxygen, and continue with Root Canal', 0),
(8, 1, 4, 'continue', 5, 'Continue', 0),
(9, 1, 8, 'continue', 9, 'Continue', 0),
(10, 1, 6, 'continue', 17, 'Continue', 0),
(11, 1, 7, 'continue', 8, 'Continue', 0),
(12, 2, 18, 'next', 19, 'Continue', 0),
(13, 2, 19, 'LayDown-a', 27, 'Lay Patient supine and place on supplemental oxygen', 1),
(14, 2, 19, 'washCloth-a', 20, 'Place a washcloth on the Patient\'s forehead', 0),
(15, 2, 29, 'throwUp-e', 30, 'Tell Patient to throw up', 0),
(16, 2, 29, 'layDown-e', 31, 'Lay Patient supine and place on supplemental oxygen', 1),
(17, 2, 20, 'vitals-c', 21, 'Take vital signs', 1),
(18, 2, 20, 'upright-c', 24, 'Bring Patient upright, remove oxygen, and continue with Root Canal', 0),
(19, 2, 22, 'wait-d', 23, 'Wait for vital signs to return to within 10% of normal and continue with work', 1),
(20, 2, 22, 'ignore-d', 24, 'Bring Patient upright, remove oxygen, and continue with Root Canal', 0),
(21, 2, 27, 'unconscious[patient]', 28, 'Fall Unconscious [Patient]', 0),
(22, 2, 27, 'nausea-b', 29, 'Tell Assistant they are nauseous [Patient]', 0),
(23, 2, 28, 'wakeUp', 32, 'Attempt to wake up Patient', 0),
(24, 2, 28, 'layDown-f', 20, 'Lay Patient supine and place on supplemental oxygen', 1),
(25, 2, 21, 'continue', 22, 'Continue', 0),
(26, 2, 24, 'continue', 25, 'Continue', 0),
(27, 2, 23, 'continue', 34, 'Continue', 0),
(28, 2, 25, 'continue', 26, 'Continue', 0),
(29, 2, 30, 'continue', 28, 'Continue', 0),
(30, 2, 31, 'continue', 34, 'Continue', 0),
(31, 2, 32, 'continue', 33, 'Continue', 0),
(32, 2, 33, 'continue', 26, 'Continue', 0),
(33, 1, 10, 'unconcious [Patient]', 11, 'Fall Unconcious [Patient]', 0),
(34, 1, 10, 'nausea', 12, 'Tell Doctor they are nauseous [Patient]', 0),
(35, 1, 12, 'throwUp-e', 13, 'Tell Patient to throw up', 0),
(36, 1, 12, 'layDown-e', 14, 'Lay Patient supine and place on supplemental oxygen', 1),
(37, 1, 11, 'wakeUp-f', 15, 'Attempt to wake up patient', 0),
(38, 1, 11, 'layDown-f', 3, 'Lay Patient supine and place on supplemental oxygen', 1),
(39, 1, 13, 'continue', 11, 'Continue', 0),
(40, 1, 15, 'continue', 16, 'Continue', 0),
(41, 1, 16, 'continue', 9, 'Continue', 0),
(42, 1, 14, 'continue', 17, 'Continue', 0),
(43, 3, 35, 'continue', 36, 'Continue', 0),
(44, 3, 36, 'layDown-a', 37, 'Lay Patient supine and place on supplemental oxygen', 1),
(45, 3, 36, 'washCloth', 44, 'Place a washcloth on the Patient\'s forehead', 0),
(46, 3, 44, 'unconcious-b', 45, 'Fall Unconcious [Patient]', 0),
(47, 3, 44, 'nauseous-b', 46, 'Tell Assistant they are nauseous', 0),
(48, 3, 37, 'vitals-c', 38, 'Take Vital Signs', 1),
(49, 3, 37, 'ignore-c', 41, 'Bring Patient upright, remove oxygen, and continue with Root Canal', 0),
(50, 3, 39, 'wait-d', 40, 'Wait for vitals to return to within 10% of normal and continue with Root Canal', 1),
(51, 3, 39, 'ignore-d', 41, 'Bring Patient upright, remove oxygen, and continue with Root Canal', 0),
(52, 3, 46, 'throwUp-e', 47, 'Tell Patient to throw up', 0),
(53, 3, 46, 'layDown-e', 48, 'Lay Patient supine and place on supplemental oxygen', 1),
(54, 3, 45, 'layDown-f', 37, 'Lay Patient supine and place on supplemental oxygen', 1),
(55, 3, 45, 'wakeUp-f', 49, 'Attempt to wake up Patient', 0),
(56, 3, 48, 'review-g', 52, 'Review Medical History for clues', 1),
(57, 3, 48, 'wakeUp-g', 49, 'Attempt to wake up Patient', 0),
(58, 3, 38, 'continue', 39, 'Continue', 0),
(59, 3, 41, 'continue', 42, 'Continue', 0),
(60, 3, 40, 'continue', 51, 'Continue', 0),
(61, 3, 42, 'continue', 43, 'Continue', 0),
(62, 3, 47, 'continue', 48, 'Continue', 0),
(63, 3, 47, 'unconcious', 45, 'Fall Unconcious [Patient]', 0),
(64, 3, 49, 'continue', 50, 'Continue', 0),
(65, 3, 50, 'continue', 43, 'Continue', 0),
(66, 3, 52, 'continue', 53, 'Continue', 0),
(67, 3, 53, 'continue', 51, 'Continue', 0),
(68, 4, 54, 'continue', 55, 'Continue', 0),
(69, 4, 55, 'continue', 56, 'Continue', 0),
(70, 4, 56, 'washCloth-a', 57, 'Place wash cloth on Patient\'s forehead', 0),
(71, 4, 56, 'layDown-a', 61, 'Lay Patient supine and place on supplemental oxygen', 1),
(72, 4, 58, 'wakeUp-b', 59, 'Attempt to wake up Patient', 0),
(73, 4, 58, 'layDown-b', 61, 'Lay Patient supine and place on supplemental oxygen', 1),
(74, 4, 65, 'unconcious-c', 66, 'Patient goes unconcious [Patient]', 0),
(75, 4, 65, 'vitals-c', 67, 'Take Patient vitals', 1),
(76, 4, 68, 'upright-c', 66, '', 0),
(77, 4, 66, 'noShock-d', 70, 'Vitals are low, AED says no shock, Don\'t perform shock.', 1),
(78, 4, 66, 'shock-d', 71, 'AED says shock advised, perform shock', 1),
(79, 4, 70, 'pill-e', 73, 'Give patient Nitoglycerin Pill under tongue', 0),
(80, 4, 70, 'ASA-e', 72, 'Have patient chew 325 ASA and continue CPR', 1),
(81, 4, 57, 'continue', 58, 'Continue', 0),
(82, 4, 61, 'continue', 62, 'Continue', 0),
(83, 4, 62, 'continue', 63, 'Continue', 0),
(84, 4, 63, 'continue', 64, 'Continue', 0),
(85, 4, 64, 'continue', 65, 'Continue', 0),
(86, 4, 59, 'continue', 60, 'Continue', 0),
(87, 4, 68, 'continue', 69, 'Continue', 0),
(88, 4, 69, 'continue', 60, 'Continue', 0),
(89, 4, 67, 'continue', 70, 'Continue', 0),
(90, 4, 71, 'continue', 72, 'Continue', 0),
(91, 5, 74, 'continue', 75, 'Continue', 0),
(92, 5, 75, 'continue', 76, 'Continue', 0),
(93, 5, 76, 'washCloth-a', 77, 'Place wash cloth on Patient\'s forehead', 0),
(94, 5, 76, 'layDown-a', 81, 'Lay Patient supine and place on supplemental oxygen', 1),
(95, 5, 77, 'continue', 78, 'Continue', 0),
(96, 5, 78, 'continue', 79, 'Continue', 0),
(97, 5, 79, 'continue', 80, 'Continue', 0),
(98, 5, 81, 'continue', 82, 'Continue', 0),
(99, 5, 82, 'continue', 83, 'Continue', 0),
(100, 5, 83, 'continue', 84, 'Continue', 0),
(101, 5, 84, 'continue', 85, 'Continue', 0),
(102, 5, 85, 'vitals-b', 86, 'Take Patient vitals', 1),
(103, 5, 85, 'unconcious-b', 87, 'Patient goes Unconcious [Patient]', 0),
(104, 5, 86, 'continue', 88, 'Continue', 0),
(105, 5, 88, 'continue', 90, 'Continue', 0),
(106, 5, 87, 'continue', 89, 'Continue', 0),
(107, 5, 89, 'continue', 90, 'Continue', 0),
(108, 5, 90, 'continue', 91, 'Continue', 0);

-- --------------------------------------------------------

--
-- Table structure for table `scenario`
--

CREATE TABLE `scenario` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `info` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scenario`
--

INSERT INTO `scenario` (`id`, `name`, `info`) VALUES
(1, 'syncopeOne', 'info about this'),
(2, 'Syncope-Assistant', 'Syncope Scenario from viewpoint of Dental Assistant'),
(3, 'Syncope-Glycogen', 'Syncope Scenario where the patient is Hypoglycemic'),
(4, 'Cardiac-1', 'Cardiac Arrest where AED is advised'),
(5, 'Cardiac-2', 'Cardiac Arrest where no AED is advised');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(50) NOT NULL,
  `user_id` int(50) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` text NOT NULL,
  `last_activity` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(20) NOT NULL,
  `Scenario_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `start_state` int(1) UNSIGNED NOT NULL,
  `goal_state` tinyint(1) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `Scenario_id`, `name`, `text`, `start_state`, `goal_state`, `image`) VALUES
(1, 1, '1-1', 'Patient is in chair for Root Canal', 1, 0, 'null'),
(2, 1, '1-2', 'Patient begins sweating and has slurred speech', 0, 0, 'null'),
(3, 1, '1-3', 'Doctor lays Patient supine and places on supplemental oxygen', 0, 0, 'null'),
(4, 1, '1-4', 'Doctor takes Vital Signs', 0, 0, ''),
(5, 1, '1-5', 'Vital signs show low pulse and low blood pressure', 0, 0, 'null'),
(6, 1, '1-6', 'Doctor waits until vital signs return to within 10% of normal then resumes work', 0, 0, 'null'),
(7, 1, '1-7', 'Doctor ignores vital signs, brings patient upright, turns off oxygen and continues with root canal', 0, 0, 'null'),
(8, 1, '1-8', 'Patient goes unconcious', 0, 0, 'null'),
(9, 1, '1-9', 'Patient dies', 0, 1, 'null'),
(10, 1, '1-10', 'Doctor tells assistant to place wet wash cloth on patient\'s forehead', 0, 0, 'null'),
(11, 1, '1-11', 'Patient goes unconcious [Patient]', 0, 0, 'null'),
(12, 1, '1-12', 'Patient claims to be nauseated [Patient]', 0, 0, 'null'),
(13, 1, '1-13', 'Doctor tells patient to sit up and vomit into trash can', 0, 0, 'null'),
(14, 1, '1-14', 'Lay patient supine and place on oxygen', 0, 1, 'null'),
(15, 1, '1-15', 'Attempt to wake up patient', 0, 1, 'null'),
(16, 1, '1-16', 'Patient has severe hypotension and bradycardia', 0, 0, 'null'),
(17, 1, '1-17', 'Patient Recovers', 0, 1, 'null'),
(18, 2, '2-1', 'Assistant is bringing the Patient back to have a root canal treatment', 1, 0, 'null'),
(19, 2, '2-2', 'Patient turns to assistant and says \"I feel hot.\"', 0, 0, 'null'),
(20, 2, '2-3', 'Assistant lays Patient supine and places on supplemental oxygen', 0, 0, 'null'),
(21, 2, '2-4', 'Assistant takes vital signs', 0, 0, 'null'),
(22, 2, '2-5', 'Vital signs show low pulse and low blood pressure', 0, 0, 'null'),
(23, 2, '2-6', 'Assistant waits until vital signs return to within 10% of normal then resumes work', 0, 0, 'null'),
(24, 2, '2-7', 'Assistant ignores vital signs, brings patient upright, turns off oxygen and continues with root canal', 0, 0, 'null'),
(25, 2, '2-8', 'Patient goes unconcious', 0, 0, 'null'),
(26, 2, '2-9', 'Patient Dies', 0, 1, 'null'),
(27, 2, '2-10', 'Assistant places wet wash cloth on Patient\'s forehead', 0, 0, 'null'),
(28, 2, '2-11', 'Patient goes Unconcious', 0, 0, 'null'),
(29, 2, '2-12', 'Patient claims to be nauseated', 0, 0, 'null'),
(30, 2, '2-13', 'Assistant tells patient to sit up and vomit into trash can', 0, 0, 'null'),
(31, 2, '2-14', 'Assistant lays patient supine and places on oxygen', 0, 0, 'null'),
(32, 2, '2-15', 'Assistant attempts to wake up Patient', 0, 0, 'null'),
(33, 2, '2-16', 'Patient has severe hypotension and bradycardia', 0, 0, 'null'),
(34, 2, '2-17', 'Patient Recovers', 0, 1, 'null'),
(35, 3, '3-1', 'Patient is about to get anesthesia for Root Canal', 1, 0, 'null'),
(36, 3, '3-2', 'Patient begins sweating and has slurred speech', 0, 0, 'null'),
(37, 3, '3-3', 'Doctor lays Patient supine and places on supplemental oxygen', 0, 0, 'null'),
(38, 3, '3-4', 'Doctor takes vital signs', 0, 0, 'null'),
(39, 3, '3-5', 'Vital signs show low pulse and low blood pressure', 0, 0, 'null'),
(40, 3, '3-6', 'Doctor waits until vital signs return to within 10% of normal and then resumes work', 0, 0, 'null'),
(41, 3, '3-7', 'Doctor ignores vital signs, brings patient upright, turns off oxygen and continues with root canal', 0, 0, 'null'),
(42, 3, '3-8', 'Patient goes unconscious', 0, 0, 'null'),
(43, 3, '3-9', 'Patient Dies ', 0, 1, 'null'),
(44, 3, '3-10', 'Doctor tells assistant to place wet wash cloth on Patient’s forehead', 0, 0, 'null'),
(45, 3, '3-11', 'Patient goes unconscious [weighted patient state]', 0, 0, 'null'),
(46, 3, '3-12', 'Patient claims to feel nauseated [weighted patient state]', 0, 0, 'null'),
(47, 3, '3-13', 'Doctor tells patient to sit up and vomit into trash can', 0, 0, 'null'),
(48, 3, '3-14', 'Lay patient supine and place on oxygen', 0, 0, 'null'),
(49, 3, '3-15', 'Doctor attempts to wake up patient', 0, 0, 'null'),
(50, 3, '3-16', 'Patient has severe hypotension and bradycardia', 0, 0, 'null'),
(51, 3, '3-17', 'Patient Recovers ', 0, 1, 'null'),
(52, 3, '3-18', 'Doctor reviews medical history for clues', 0, 0, 'null'),
(53, 3, '3-19', 'Doctor gives patient glucogen IM, and has someone call EMS', 0, 0, 'null'),
(54, 4, '4-1', 'Patient in chair for root canal', 1, 0, 'null'),
(55, 4, '4-2', 'Doctor begins Anesthesia', 0, 0, 'null'),
(56, 4, '4-3', 'Patient claims to have heavy squeezing pain in chest and radiates to mandible', 0, 0, 'null'),
(57, 4, '4-4', 'Place wet wash cloth on forehead', 0, 0, 'null'),
(58, 4, '4-5', 'Patient goes unconscious', 0, 0, 'null'),
(59, 4, '4-6', 'Vitals show hypotension and no pulse', 0, 0, 'null'),
(60, 4, '4-7', 'Patient dies of Cardiac Arrest', 0, 1, 'null'),
(61, 4, '4-8', 'Lay Patient Supine and Place on Oxygen', 0, 0, 'null'),
(62, 4, '4-9', 'Give one dose of sublingual Nitroglycerin', 0, 0, 'null'),
(63, 4, '4-10', 'Turn on Nitrous Oxide', 0, 0, 'null'),
(64, 4, '4-11', 'Activate Emergency team and call 911', 0, 0, 'null'),
(65, 4, '4-12', 'Prepare for CPR and place AED', 0, 0, 'null'),
(66, 4, '4-13', 'Patient goes unconscious and stops breathing ', 0, 0, 'null'),
(67, 4, '4-14', 'Take Vital Signs, reassures patient, waits 5 minutes, take vitals again and dose another nitroglycerin pill under tongue', 0, 0, 'null'),
(68, 4, '4-15', 'Doctor ignores vital signs, bring patients back upright, turns off oxygen and continues root canal', 0, 0, 'null'),
(69, 4, '4-16', 'Patient goes unconscious', 0, 0, 'null'),
(70, 4, '4-17', 'Vital signs noted to have low pulse and low blood pressure but AED says no shock needed', 0, 0, 'null'),
(71, 4, '4-18', 'AED says shock advised. Perform Shock then restart CPR', 0, 0, 'null'),
(72, 4, '4-19', 'Doctor holds third dose of nitro but has patient chew 325 ASA.  Continues CPR until help arrives and patient is transported to hospital. ', 0, 1, 'null'),
(73, 4, '4-20', 'Doctor ignored hypotension and doses 3rd Nitro', 0, 0, 'null'),
(74, 5, '5-1', 'Patient in chair for root canal', 1, 0, 'null'),
(75, 5, '5-2', 'Doctor begins Anesthesia and then leaves room', 0, 0, 'null'),
(76, 5, '5-3', 'Patient claims to have a sharp shooting pain in their chest, that it gets worse with inhalation and feels like their heart is pounding. ', 0, 0, 'null'),
(77, 5, '5-4', 'Place wet wash cloth on forehead and tell patient it is caused by the epinephrine in the local and it will go away soon.', 0, 0, 'null'),
(78, 5, '5-5', 'Doctor returns and reassures patient, Patient feels much better.', 0, 0, 'null'),
(79, 5, '5-6', 'Vital signs are normal', 0, 0, 'null'),
(80, 5, '5-7', 'Non-Cardiac emergency and doctor may proceed', 0, 1, 'null'),
(81, 5, '5-8', 'Assistant Lays Patient Supine and Place on Oxygen', 0, 0, 'null'),
(82, 5, '5-9', 'Give one dose of sublingual Nitroglycerin', 0, 0, 'null'),
(83, 5, '5-10', 'Turn on Nitrous Oxide', 0, 0, 'null'),
(84, 5, '5-11', 'Activate Emergency team and call 911', 0, 0, 'null'),
(85, 5, '5-12', 'Prepare for CPR and place AED', 0, 0, 'null'),
(86, 5, '5-13', 'Take Vital Signs, reassures patient, waits 5 minutes, take vitals again and dose another nitroglycerin pill under tongue', 0, 0, 'null'),
(87, 5, '5-14', 'Patient goes unconscious and stops breathing ', 0, 0, 'null'),
(88, 5, '5-15', 'Vital signs noted to have low pulse and low blood pressure but AED says no shock needed', 0, 0, 'null'),
(89, 5, '5-16', 'AED says no shock advised. Perform Shock then restart CPR', 0, 0, 'null'),
(90, 5, '5-17', 'Doctor ignores hypotension and doses 3rd Nitro', 0, 0, 'null'),
(91, 5, '5-18', 'Patient dies', 0, 1, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DevTest', 'test@dev.com', '$2y$10$bzdHPlqz.ES5er7V966LruFK1QcxHOND.o4Sb7NiJjLTNfr9GO4YW', 'bi8CSIw2H6xFt6Y9hbYh1FDrX9A3JLOP501HPtxw0hxQN1nukpLd6AHVfE8n', '2017-09-05 09:26:12', '2017-09-12 21:07:41'),
(2, 'admin', 'admin@siue.edu', '$2y$10$oTmb5xce7sVXOdQcUmCpN.kAyt4fpP054N0/1NA7nFPm21qAqQPJe', 'GcxXjwQgNkx4szXaxfkkFHSvDUGzbpjWDOYVnxSZuXVjtVQhyk2SGOXEDhON', '2017-10-03 02:52:10', '2017-10-03 02:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_10_26_220520_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `certification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `completed`
--
ALTER TABLE `completed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `scenario`
--
ALTER TABLE `scenario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `state` ADD FULLTEXT KEY `text` (`text`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `completed`
--
ALTER TABLE `completed`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `scenario`
--
ALTER TABLE `scenario`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
