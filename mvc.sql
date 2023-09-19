-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 02:48 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl`
--

INSERT INTO `acl` (`id`, `permission_id`, `group_id`, `created`) VALUES
(1, 1, 1, '2021-12-04 13:16:30'),
(2, 1, 2, '2021-12-04 13:16:30'),
(3, 2, 1, '2021-12-04 13:16:35'),
(4, 2, 2, '2021-12-04 13:16:35'),
(5, 3, 1, '2021-12-04 13:44:48'),
(6, 4, 1, '2021-12-04 13:44:53'),
(7, 5, 1, '2021-12-04 13:44:57'),
(8, 6, 1, '2021-12-04 13:45:01'),
(9, 7, 1, '2021-12-04 13:45:05'),
(10, 8, 1, '2021-12-04 13:45:11'),
(11, 9, 1, '2021-12-04 13:45:15'),
(12, 10, 1, '2021-12-04 13:45:18'),
(14, 11, 1, '2022-01-15 09:32:28'),
(15, 12, 1, '2022-01-17 09:20:53'),
(23, 20, 1, '2022-01-17 09:22:00'),
(24, 21, 1, '2022-01-17 09:22:05'),
(25, 22, 1, '2022-01-17 09:22:09'),
(26, 23, 1, '2022-01-17 09:22:13'),
(27, 24, 1, '2022-01-17 09:22:17'),
(28, 25, 1, '2022-01-17 09:22:21'),
(29, 26, 1, '2022-01-17 09:22:25'),
(30, 27, 1, '2022-01-17 09:22:29'),
(32, 28, 1, '2022-06-26 21:30:39'),
(34, 29, 1, '2022-07-16 22:54:32'),
(35, 30, 1, '2022-11-08 16:43:43'),
(36, 31, 1, '2022-11-08 16:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `api_testing`
--

CREATE TABLE `api_testing` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` int(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created`) VALUES
(1, 'Mobile', '2022-01-24 05:17:49'),
(2, 'Laptop', '2022-01-22 12:10:53'),
(3, 'Printer', '2022-01-22 12:13:53'),
(4, 'Camera', '2022-01-22 12:13:30'),
(5, 'Headphone', '2022-01-24 05:18:01'),
(10, 'Camera stand', '2022-01-24 05:18:14'),
(11, 'Speaker', '2022-01-24 05:18:36'),
(18, 'Sound box', '2022-01-24 05:18:50'),
(21, 'Monitor', '2022-01-24 05:19:05'),
(22, 'Electronics watch', '2022-01-24 16:19:46'),
(23, 'Scanner', '2022-01-24 16:20:26'),
(24, 'Computer components', '2022-01-24 16:20:54'),
(25, 'Television', '2022-01-24 16:21:48'),
(27, 'Cell phone', '2022-01-24 16:22:40'),
(28, 'Laptop accessories', '2022-01-24 16:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state_id`, `name`, `created`) VALUES
(4, 3, 'Faridpur', '2022-11-15 03:24:59'),
(5, 5, 'Gazipur', '2022-11-15 03:28:25'),
(7, 5, 'Gopalganj', '2022-11-15 03:28:25'),
(8, 10, 'Hobigong', '2022-11-16 01:48:05'),
(9, 16, 'Anqing', '2022-11-16 02:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`, `created`) VALUES
(7, 'White', '2022-01-23 11:50:19'),
(8, 'Blue', '2022-01-23 22:19:11'),
(9, 'Green', '2022-01-23 22:19:17'),
(10, 'Yellow', '2022-01-23 22:19:55'),
(11, 'Red', '2022-01-23 22:20:03'),
(12, 'Pink', '2022-01-23 11:50:23'),
(13, 'Absolute Zero', '2022-01-24 16:24:40'),
(14, 'Barbie Pink', '2022-01-24 16:24:49'),
(15, 'Black', '2022-01-24 16:25:01'),
(16, 'Black bean', '2022-01-24 16:25:11'),
(17, 'Black coral', '2022-01-24 16:25:22'),
(18, 'Beau blue', '2022-01-24 16:25:31'),
(19, 'Baby pink', '2022-01-24 16:25:40'),
(20, 'Bleu de France', '2022-01-24 16:26:12'),
(21, 'Blue (Crayola)', '2022-01-24 16:26:42'),
(22, 'Blush', '2022-01-24 16:27:00'),
(26, 'Waterfall Blue', '2022-09-13 17:25:52'),
(28, 'ABC2', '2022-09-15 15:13:10'),
(29, 'Nightsky Green', '2022-09-23 11:30:04'),
(30, 'Sunrise Copper', '2022-09-23 11:30:13'),
(31, 'Waterfall Blue', '2022-09-23 11:30:25'),
(32, 'Dark Blue', '2022-09-24 16:02:26'),
(33, 'Forest Green ', '2022-09-24 16:02:44'),
(34, 'Light Blue', '2022-09-24 16:02:55'),
(35, 'Blue Tide', '2022-09-24 16:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `created`) VALUES
(1, ' Samsung ', 'Dhaka, Bangladesh', '2022-09-23 10:26:25'),
(2, 'Realme', 'Dhaka, Bangladesh', '2022-09-23 10:26:32'),
(3, ' Oppo', 'Dhaka, Bangladesh', '2022-09-23 10:26:39'),
(4, 'Tecno', 'Dhaka, Bangladesh', '2022-09-23 10:26:46'),
(5, 'Oneplus', 'Dhaka, Bangladesh', '2022-09-23 10:26:55'),
(6, 'Symphony', 'Dhaka, Bangladesh', '2022-09-23 10:27:01'),
(7, 'Motorola', 'Dhaka, Bangladesh', '2022-09-23 10:27:10'),
(8, 'Xiaomi', 'Dhaka, Bangladesh', '2022-09-23 10:27:20'),
(9, 'vivo', 'Dhaka, Bangladesh', '2022-09-23 10:27:27'),
(10, 'Itel', 'Dhaka, Bangladesh', '2022-09-23 10:27:36'),
(11, 'Walton', 'Dhaka, Bangladesh', '2022-09-23 10:27:43'),
(12, 'Nokia', 'Dhaka, Bangladesh', '2022-09-23 10:27:50'),
(15, 'Apple', 'Dhaka, Bangladesh', '2022-09-23 10:35:54'),
(16, 'Lenovo', 'Dhaka, Bangladesh', '2022-09-23 17:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `photo`, `created`) VALUES
(28, 'Emon2', 'Emon@gmail.com', '01775051601', 'bogura', '', '2022-01-06 03:19:19'),
(44, 'Norendromodi', 'norendromodi@gmail.com', '01775051601', 'bogura', '', '2022-01-18 10:33:03'),
(45, 'Jannta islam', 'jannta @gmail.com', '01775051605', 'bogura', NULL, '2022-01-18 10:33:37'),
(46, 'Laboni aktercdf', 'laboniakter@gmail.com', '01775051601', 'bogura', '', '2022-01-18 10:34:03'),
(47, 'Masud rana2', 'masudrana@gmail.com', '01775051609', 'bogura', NULL, '2022-01-18 10:35:08'),
(48, 'cgbfgbnhfwe', 'baijid@gmail.com', '01775051601', 'bogura', NULL, '2022-01-18 10:37:34'),
(49, 'Omor farukcdd', 'omorfaruk@gmail.com', '01775051605', 'bogura', NULL, '2022-01-18 11:43:26'),
(50, 'Limoncdrzh', 'limon@gmail.com', '01775051607', 'bogura', NULL, '2022-01-18 11:47:56'),
(98, 'Esham Haider', 'asham90@yahoo.com', '01719404769', 'Rahman Nagar', NULL, '2022-01-27 18:25:50'),
(99, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 18:38:43'),
(100, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 18:40:44'),
(101, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 18:43:43'),
(102, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 18:45:23'),
(103, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 18:47:20'),
(104, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 18:47:47'),
(105, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 18:47:57'),
(106, 'b2b2b', 'bbbbbbbbbbbbbb@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 18:48:24'),
(107, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 18:53:42'),
(109, 'baijid', 'bayejidhossain47@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 18:57:44'),
(110, 'baijid', 'bayejidhossain47@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 18:59:31'),
(111, 'baijid', 'bayejidhossain47@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 18:59:34'),
(112, 'baijid', 'bayejidhossain47@gmail.com', '01775051601', 'bogura', NULL, '2022-01-27 19:00:18'),
(113, 'baijid', 'baijidsad@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 19:01:34'),
(114, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'Dinajpur', NULL, '2022-01-27 19:01:56'),
(115, 'cgbfgbnhf', 'bayejidhossain47@gmail.com', '01775051602', 'bogura', NULL, '2022-01-27 19:07:21'),
(116, 'mbaijidhossain@gmail.com', 'mbaijidhossain@gmail.com', '01775051601', 'post :shahagola', NULL, '2022-01-28 15:40:34'),
(117, 'baijid', 'baijid@gmail.com', '01775051601', 'bogura', NULL, '2022-01-29 09:23:50'),
(118, 'cgbfgbnhf', 'baijid@gmail.com', '01775051601', 'bogura', NULL, '2022-01-29 10:33:58'),
(119, 'asham90@yahoo.com', 'asham90@yahoo.com', '01719404765', 'as', NULL, '2022-01-29 16:57:20'),
(120, 'mbaijidhossain11', 'mbaijidhossain@gmail.com', '01775051601', 'post :shahagola', NULL, '2022-06-29 19:48:09'),
(121, 'Md.Baijid Hossain', 'mbaijidhossain@gmail.com', '01775051601', 'post :shahagola, police station:atrai, Distric:Naogaon, , Division:Rajshahi, ', NULL, '2022-09-23 17:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact_group`
--

CREATE TABLE `contact_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_group`
--

INSERT INTO `contact_group` (`id`, `name`, `created`) VALUES
(6, 'It manager', '2022-01-16 14:53:24'),
(7, 'Network engineer', '2022-01-16 14:53:50'),
(8, 'Electrical engineer', '2022-01-16 14:55:17'),
(9, 'System engineer', '2022-01-16 14:55:26'),
(11, 'Software engineerjk', '2022-01-16 14:56:43'),
(40, 'zXa', '2022-01-29 17:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact_group_relation`
--

CREATE TABLE `contact_group_relation` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_group_relation`
--

INSERT INTO `contact_group_relation` (`id`, `contact_id`, `group_id`, `created`) VALUES
(64, 5, 1, '2022-01-16 10:08:33'),
(393, 69, 1, '2022-01-19 09:41:07'),
(397, 70, 6, '2022-01-19 09:51:44'),
(398, 70, 9, '2022-01-19 09:51:44'),
(399, 70, 11, '2022-01-19 09:51:44'),
(409, 71, 11, '2022-01-19 10:54:45'),
(410, 71, 14, '2022-01-19 10:54:45'),
(411, 72, 6, '2022-01-19 11:05:19'),
(412, 72, 11, '2022-01-19 11:05:19'),
(413, 72, 14, '2022-01-19 11:05:19'),
(422, 73, 6, '2022-01-19 12:03:06'),
(423, 73, 7, '2022-01-19 12:03:06'),
(424, 74, 1, '2022-01-19 12:06:20'),
(425, 74, 6, '2022-01-19 12:06:20'),
(426, 74, 14, '2022-01-19 12:06:20'),
(432, 81, 1, '2022-01-19 12:22:56'),
(433, 81, 6, '2022-01-19 12:22:56'),
(434, 81, 11, '2022-01-19 12:22:56'),
(435, 81, 14, '2022-01-19 12:22:56'),
(461, 45, 9, '2022-01-20 15:03:44'),
(462, 45, 14, '2022-01-20 15:03:44'),
(601, 48, 1, '2022-01-22 12:12:34'),
(603, 49, 6, '2022-01-22 12:17:35'),
(604, 49, 7, '2022-01-22 12:17:35'),
(609, 46, 7, '2022-01-22 15:27:19'),
(610, 44, 11, '2022-01-22 15:31:18'),
(613, 28, 7, '2022-01-22 15:58:38'),
(614, 47, 1, '2022-01-22 16:00:11'),
(615, 47, 6, '2022-01-22 16:00:11'),
(620, 113, 1, '2022-01-27 19:01:34'),
(621, 113, 6, '2022-01-27 19:01:34'),
(622, 113, 7, '2022-01-27 19:01:34'),
(623, 113, 8, '2022-01-27 19:01:34'),
(624, 113, 9, '2022-01-27 19:01:34'),
(625, 113, 11, '2022-01-27 19:01:34'),
(626, 114, 1, '2022-01-27 19:01:56'),
(627, 114, 6, '2022-01-27 19:01:56'),
(628, 114, 7, '2022-01-27 19:01:56'),
(629, 114, 8, '2022-01-27 19:01:56'),
(630, 115, 1, '2022-01-27 19:07:21'),
(631, 115, 6, '2022-01-27 19:07:21'),
(632, 115, 7, '2022-01-27 19:07:21'),
(633, 115, 8, '2022-01-27 19:07:21'),
(634, 116, 6, '2022-01-28 15:40:34'),
(635, 117, 1, '2022-01-29 09:23:50'),
(636, 117, 6, '2022-01-29 09:23:50'),
(637, 117, 7, '2022-01-29 09:23:50'),
(638, 118, 6, '2022-01-29 10:33:58'),
(639, 118, 7, '2022-01-29 10:33:58'),
(640, 118, 8, '2022-01-29 10:33:58'),
(641, 118, 9, '2022-01-29 10:33:58'),
(642, 119, 6, '2022-01-29 16:57:20'),
(643, 119, 7, '2022-01-29 16:57:20'),
(649, 120, 7, '2022-06-29 19:48:09'),
(660, 121, 8, '2022-09-23 17:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `updated`, `created`) VALUES
(1, 'Bangladesh', NULL, '2022-11-15 19:09:59'),
(2, 'India', NULL, '2022-11-15 19:10:12'),
(3, 'China', NULL, '2022-11-15 21:13:19'),
(4, 'Iran', NULL, '2022-11-15 21:13:27'),
(5, 'Ukraine', NULL, '2022-11-15 21:14:03'),
(6, 'Russia', NULL, '2022-11-15 21:14:12'),
(7, 'Nigeria', NULL, '2022-11-15 21:14:20'),
(8, 'Nepal', NULL, '2022-11-15 21:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `current_opening_stock`
--

CREATE TABLE `current_opening_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock` decimal(10,2) NOT NULL,
  `adjustment_note` varchar(200) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `current_opening_stock`
--

INSERT INTO `current_opening_stock` (`id`, `product_id`, `stock`, `adjustment_note`, `created`) VALUES
(1, 14, '80.00', 'cd', '2022-09-16 17:22:19'),
(4, 14, '0.00', '', '2022-09-15 20:21:23'),
(5, 15, '0.00', '', '2022-09-15 20:23:49'),
(6, 16, '0.00', '', '2022-09-15 20:26:05'),
(30, 20, '-10.00', '', '2022-09-16 17:51:24'),
(31, 20, '10.00', '', '2022-09-16 17:53:42'),
(32, 20, '1.00', '', '2022-09-16 17:54:06'),
(33, 20, '10.00', '', '2022-09-16 17:56:12'),
(34, 20, '41.00', '', '2022-09-16 18:10:20'),
(35, 20, '-82.00', '', '2022-09-16 18:10:38'),
(36, 20, '-1.00', '', '2022-09-16 18:12:33'),
(37, 20, '-9.00', '', '2022-09-16 18:12:55'),
(38, 20, '20.00', '', '2022-09-16 18:15:26'),
(39, 20, '0.00', '', '2022-09-16 18:30:51'),
(40, 20, '0.00', '', '2022-09-16 18:31:01'),
(41, 20, '3.00', '', '2022-09-16 18:32:17'),
(42, 20, '2.00', '', '2022-09-16 18:38:07'),
(43, 20, '5.00', '', '2022-09-16 19:00:32'),
(44, 20, '5.00', '', '2022-09-16 19:04:39'),
(45, 20, '1.00', '', '2022-09-16 19:14:36'),
(46, 20, '2.00', '', '2022-09-16 19:17:08'),
(47, 20, '1.00', '', '2022-09-16 19:22:15'),
(48, 20, '-1.00', '', '2022-09-16 19:23:47'),
(52, 31, '10.00', '', '2022-09-17 17:11:31'),
(53, 31, '10.00', '', '2022-09-17 17:13:41'),
(54, 21, '1.00', '', '2022-09-17 17:16:47'),
(55, 31, '1.00', '', '2022-09-17 17:17:22'),
(56, 31, '10.00', '', '2022-09-17 17:20:09'),
(57, 21, '1.00', '', '2022-09-17 17:20:59'),
(58, 21, '1.00', '', '2022-09-17 17:21:12'),
(83, 43, '10.00', '', '2022-09-20 15:41:37'),
(84, 43, '-10.00', '', '2022-09-20 15:41:45'),
(88, 1, '25.00', '', '2022-09-23 16:03:55'),
(89, 2, '5.00', '', '2022-09-23 16:14:09'),
(91, 1, '2.00', '', '2022-09-23 16:27:57'),
(92, 4, '10.00', '', '2022-09-23 16:35:15'),
(93, 4, '1.00', '', '2022-09-23 16:37:21'),
(94, 4, '-1.00', '', '2022-09-23 16:38:05'),
(96, 3, '10.00', '', '2022-09-23 16:45:42'),
(97, 3, '1.00', '', '2022-09-23 17:00:37'),
(99, 5, '5.00', '', '2022-09-23 17:31:27'),
(100, 5, '5.00', '', '2022-09-23 17:33:19'),
(101, 6, '10.00', '', '2022-09-24 16:04:23'),
(102, 7, '10.00', '', '2022-09-24 16:06:04'),
(103, 8, '5.00', '', '2022-09-24 16:09:43'),
(104, 9, '10.00', '', '2022-09-24 16:12:35'),
(105, 10, '10.00', '', '2022-10-10 23:17:50'),
(106, 18, '5.00', '', '2022-10-13 05:31:47'),
(107, 22, '10.00', '', '2022-10-31 00:46:10'),
(108, 23, '10.00', '', '2022-10-31 00:50:18'),
(109, 24, '10.00', '', '2022-10-31 01:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `opening_balance` double DEFAULT 0,
  `payable` double DEFAULT 0,
  `paid` double DEFAULT 0,
  `due` double DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `opening_balance`, `payable`, `paid`, `due`, `status`, `country`, `state`, `city`, `zip`, `address`, `updated`, `created`) VALUES
(1, 'Md. Baijid Hossain', 'baijid@gmail.com', 1775051601, 0, 14000, 500, 13500, 1, '3', '16', '9', '6596', 'post :shahagola\r\npolice station:atrai\r\nDistric:Naogaon\r\n\r\nDivision:Rajshahi', NULL, '2022-11-15 21:59:58'),
(2, 'Golam Rabbani', 'rabbani@gmail.com', 1775051602, 100, 0, 0, 0, 1, '1', '5', '5', '6596', 'post :shahagola\r\npolice station:atrai\r\nDistric:Naogaon\r\n\r\nDivision:Rajshahi', NULL, '2022-11-16 19:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `esp`
--

CREATE TABLE `esp` (
  `id` int(11) NOT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `esp`
--

INSERT INTO `esp` (`id`, `pin`, `status`) VALUES
(1, 'D3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invalid_login`
--

CREATE TABLE `invalid_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `attempted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invalid_login`
--

INSERT INTO `invalid_login` (`id`, `ip_address`, `email`, `attempted`) VALUES
(5, '203.190.34.70', 'at@gmail.com', '2021-01-28 17:16:06'),
(35, '203.190.34.71', 'riazmd581@gmail.com', '2021-12-04 11:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(100) UNSIGNED NOT NULL,
  `nav_name` varchar(100) NOT NULL,
  `nav_path` varchar(200) NOT NULL,
  `parent_id` int(100) NOT NULL DEFAULT 0,
  `nav_icon` varchar(50) NOT NULL DEFAULT 'fa fa-circle-o',
  `sort` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `nav_name`, `nav_path`, `parent_id`, `nav_icon`, `sort`) VALUES
(1, 'Dashboard', 'Admin/Home/Index', 0, 'fa fa-tachometer', 0),
(5, 'My Account', '#', 0, 'fa fa-user', 55),
(6, 'Profile', 'Account/Index', 5, 'fa fa-address-card', 56),
(8, 'Logout', 'Account/Logout/', 5, 'fa fa-sign-out', 57),
(9, 'Administration', '#', 0, 'fa fa-cogs', 51),
(10, 'Permissions', 'Admin/Permissions/Index', 9, 'fa fa-key', 54),
(11, 'Navigation', 'Admin/Navs/Index', 9, 'fa fa-bars', 52),
(18, 'Contacts', 'Admin/Contacts/Index', 16, 'fa fa-user', 34),
(20, 'Groups', 'Admin/Contact_groups/Index', 16, 'fa fa-object-group', 35),
(22, 'Products List', 'Admin/Products/Index', 21, 'fa fa-list', 38),
(23, 'Categories', 'Admin/Category/Index', 21, 'fa fa-list', 39),
(24, 'Brands', 'Admin/brands/Index', 21, 'fa fa-list', 40),
(25, 'Colors', 'Admin/Color/Index', 21, 'fa fa-paint-brush', 41),
(26, 'Pos', 'Admin/Sales/Index', 42, 'fa fa-shopping-bag', 2),
(27, 'Users', 'Admin/users/index', 9, 'fa fa-user', 53),
(28, 'Units', 'Admin/unit/index', 21, 'fa fa-adjust', 42),
(30, 'Customers List', 'admin/customers/index', 50, 'fa fa-list', 9),
(31, 'Suppliers List', 'admin/suppliers/index', 29, 'fa fa-list', 13),
(33, 'State List', 'Admin/state/index', 38, 'fa fa-list', 24),
(34, 'City List', 'Admin/City/Index', 38, 'fa fa-list', 26),
(40, 'Purchase List ', 'admin/purchase/index', 39, 'fa fa-list', 17),
(41, 'New Purchase Return', 'admin/purchase_return/add', 39, 'fa fa-plus-square-o', 18),
(44, 'Sales return List', 'Admin/sales_return/Index', 42, 'fa fa-list', 6),
(45, 'Stock Report', 'admin/reports/stock', 46, 'fa fa-window-restore', 50),
(47, 'New Purchase', 'admin/purchase/add', 39, 'fa fa-plus-square-o', 16),
(48, 'Purchase Return List', 'admin/purchase_return/index', 39, 'fa fa-list', 19),
(49, 'New Supplier', 'admin/supplier/add', 29, 'fa fa-plus-square-o', 12),
(51, 'New Customer', 'admin/customers/add', 50, 'fa fa-plus-square-o', 8),
(54, 'New Sales', 'Admin/sales/add', 42, 'fa fa-plus-square-o', 3),
(55, 'Sales List', 'Admin/Sales/Index', 42, 'fa fa-list', 4),
(56, 'New Sales Return ', 'Admin/sales_return/add', 42, 'fa fa-plus-square-o', 5),
(58, 'New Product', 'admin/products/add', 21, 'fa fa-plus-square-o', 37),
(62, 'New Expenses', '#', 61, 'fa fa-plus-square-o', 45),
(63, 'Expenses List', '#', 61, 'fa fa-list', 46),
(64, 'New Category', '#', 61, 'fa fa-plus-square-o', 47),
(65, 'Categories List', '#', 61, 'fa fa-list', 48),
(68, 'Country List', 'Admin/Country/Index', 38, 'fa fa-list', 22),
(74, 'Print Labels', '#', 21, 'fa fa-barcode', 43);

-- --------------------------------------------------------

--
-- Table structure for table `nav_permission`
--

CREATE TABLE `nav_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `nav_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nav_permission`
--

INSERT INTO `nav_permission` (`id`, `nav_id`, `group_id`, `created`) VALUES
(5, 9, 1, '2021-12-04 13:08:16'),
(7, 10, 1, '2021-12-04 13:09:35'),
(8, 11, 1, '2021-12-04 13:10:21'),
(9, 8, 1, '2021-12-04 13:11:52'),
(10, 8, 2, '2021-12-04 13:11:52'),
(11, 5, 1, '2021-12-04 13:11:58'),
(12, 5, 2, '2021-12-04 13:11:58'),
(13, 6, 1, '2021-12-04 13:12:04'),
(14, 6, 2, '2021-12-04 13:12:04'),
(85, 18, 1, '2022-01-23 16:14:46'),
(86, 18, 2, '2022-01-23 16:14:46'),
(91, 20, 1, '2022-01-24 15:15:57'),
(144, 40, 1, '2022-08-04 22:51:55'),
(154, 47, 1, '2022-08-04 23:00:13'),
(157, 49, 1, '2022-08-04 23:01:19'),
(158, 31, 1, '2022-08-04 23:01:32'),
(161, 51, 1, '2022-08-04 23:05:24'),
(163, 30, 1, '2022-08-04 23:07:33'),
(167, 26, 1, '2022-08-04 23:11:02'),
(184, 58, 1, '2022-08-04 23:29:20'),
(187, 23, 1, '2022-08-04 23:36:43'),
(189, 25, 1, '2022-08-04 23:37:26'),
(191, 62, 1, '2022-08-04 23:41:51'),
(193, 64, 1, '2022-08-04 23:43:03'),
(195, 65, 1, '2022-08-04 23:44:01'),
(196, 63, 1, '2022-08-04 23:44:15'),
(216, 74, 1, '2022-08-05 00:59:17'),
(219, 45, 1, '2022-08-12 18:40:49'),
(222, 48, 1, '2022-08-26 18:27:25'),
(224, 28, 1, '2022-09-15 20:49:02'),
(226, 24, 1, '2022-09-15 22:08:17'),
(227, 22, 1, '2022-09-15 23:45:54'),
(228, 27, 1, '2022-09-15 23:46:37'),
(229, 41, 1, '2022-09-27 21:21:58'),
(231, 54, 1, '2022-10-28 19:07:24'),
(232, 55, 1, '2022-10-28 23:01:53'),
(233, 56, 1, '2022-11-04 15:46:30'),
(235, 44, 1, '2022-11-04 23:28:06'),
(237, 68, 1, '2022-11-14 20:40:12'),
(240, 33, 1, '2022-11-14 21:39:00'),
(241, 34, 1, '2022-11-14 22:04:03'),
(246, 1, 1, '2023-09-02 15:13:27'),
(247, 1, 2, '2023-09-02 15:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `payment_amount` decimal(10,4) NOT NULL,
  `payment_type` enum('Cash','Bank') NOT NULL,
  `payment_note` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `owner_id`, `item_id`, `controller`, `payment_amount`, `payment_type`, `payment_note`, `created_by`, `created`) VALUES
(45, NULL, 6, 'sales_return', '10.0000', 'Cash', '', 1, '2022-11-06 01:00:18'),
(46, NULL, 60, 'sales', '10.0000', 'Cash', 'fgdfb', 1, '2022-11-17 00:19:57'),
(47, NULL, 61, 'sales', '1000.0000', 'Cash', 'yiukhg', 1, '2022-11-17 00:29:37'),
(48, NULL, 65, 'sales', '500.0000', 'Cash', 'Rabbani', 1, '2022-11-17 02:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `action`) VALUES
(1, 'Account/Index'),
(2, 'Account/UploadImg'),
(3, 'Admin/Home/Index'),
(4, 'Admin/Navs/Index'),
(5, 'Admin/Navs/Add'),
(6, 'Admin/Navs/UpdateNav'),
(7, 'Admin/Navs/Edit'),
(8, 'Admin/Navs/Delete'),
(9, 'Admin/Permissions/Index'),
(10, 'Admin/Permissions/Edit'),
(11, 'Contact/Index'),
(12, 'Account/TwoFactorModal'),
(20, 'Contact/edit'),
(21, 'Company/Index'),
(22, 'Company/About'),
(23, 'Company/Detail'),
(24, 'Contact/add'),
(25, 'Contact/update'),
(26, 'Contact/delete'),
(27, 'Contact/AddModal'),
(28, 'Admin/Users/Index'),
(29, 'Admin/Purchase/Invoise'),
(30, 'Account/Security'),
(31, 'Admin/Users/Update');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `minimum_qty` decimal(10,4) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `expire` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax_type` varchar(50) NOT NULL,
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `buying_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_type` varchar(50) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_selling_price` decimal(10,2) NOT NULL,
  `profit_margin` decimal(10,2) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand_id`, `category_id`, `color_id`, `minimum_qty`, `unit_id`, `barcode`, `expire`, `price`, `tax`, `tax_type`, `tax_amount`, `buying_price`, `selling_price`, `discount`, `discount_type`, `discount_amount`, `final_selling_price`, `profit_margin`, `image`, `description`, `created_by`, `created`) VALUES
(1, 'Samsung Galaxy F13', 1, 1, 31, '10.0000', 4, '', '2028-05-22 18:00:00', '20000.00', '10.00', 'inclusive', '0.00', '20000.00', '22000.00', '0.00', 'percent', '0.00', '22000.00', NULL, '1.png', '', 1, '2022-09-23 11:57:34'),
(2, 'Xiaomi 12 Pro', 8, 1, 8, '10.0000', 3, 'Xiaomi-12-Pro', '2022-11-22 18:00:00', '70000.00', '10.00', 'exclusive', '7000.00', '77000.00', '79999.00', '10.00', 'percent', '7999.90', '79999.00', NULL, '2.png', '', 1, '2022-09-23 16:14:09'),
(3, 'Apple iPhone 13 Pro Max', 15, 1, 8, '10.0000', 3, '', '2024-07-22 18:00:00', '162000.00', '0.00', 'exclusive', '0.00', '162000.00', '162999.00', '0.00', 'percent', '0.00', '162999.00', NULL, '3.png', '', 1, '2022-09-23 16:21:49'),
(4, 'Tecno Pop 6 Pro', 4, 1, 15, '5.0000', 3, 'Tecno-Pop 6-Pro', '2023-03-22 18:00:00', '10000.00', '0.00', 'exclusive', '0.00', '10000.00', '10490.00', '0.00', 'percent', '0.00', '10490.00', NULL, '4.png', 'Tecno Pop 6 Pro Very nice phone', 1, '2022-09-23 16:35:15'),
(5, 'Lenovo IdeaPad Slim 3i 15IGL Intel Celeron N4020 15.6&quot; HD Laptop', 16, 2, 9, '2.0000', 3, '', '2023-03-22 18:00:00', '30000.00', '10.00', 'exclusive', '3000.00', '33000.00', '38500.00', '0.00', 'percent', '0.00', '42350.00', NULL, '5.png', '', 1, '2022-09-23 17:31:27'),
(6, 'Symphony V139', 6, 1, 32, '10.0000', 3, 'Symphony V139', '2022-11-23 18:00:00', '6000.00', '0.00', 'exclusive', '0.00', '6000.00', '7000.00', '0.00', 'percent', '0.00', '7000.00', NULL, '6.png', 'Symphony V139', 1, '2022-09-24 16:04:23'),
(7, 'Symphony Z42', 6, 1, 14, '10.0000', 3, '', '2022-11-23 18:00:00', '10000.00', '0.00', 'exclusive', '0.00', '10000.00', '11199.00', '0.00', 'percent', '0.00', '11199.00', NULL, '7.png', '', 1, '2022-09-24 16:06:04'),
(8, 'OnePlus Nord CE 2 Lite 5G', 5, 1, 35, '10.0000', 3, '', '2022-11-23 18:00:00', '30000.00', '0.00', 'exclusive', '0.00', '30000.00', '31990.00', '0.00', 'percent', '0.00', '31990.00', NULL, '8.png', '', 1, '2022-09-24 16:09:43'),
(9, 'WiWU Pilot Portable Folding Wireless ANC Headphone', 2, 5, 15, '10.0000', 3, '', '2022-11-23 18:00:00', '1000.00', '0.00', 'exclusive', '0.00', '1000.00', '2000.00', '0.00', 'percent', '0.00', '2000.00', NULL, '9.png', '', 1, '2022-09-24 16:12:35'),
(10, 'Remax RM-512 Wired Black Earphone', 2, 5, 8, '10.0000', 3, '', '2023-03-29 04:00:00', '100.00', '0.00', 'exclusive', '0.00', '100.00', '200.00', '0.00', 'percent', '0.00', '200.00', NULL, '10.png', '', 1, '2022-09-30 14:06:33'),
(24, 'Symphony W68', 6, 1, 7, '10.0000', 3, 'dfg', '2022-12-30 05:00:00', '100.00', '10.00', 'exclusive', '10.00', '110.00', '200.00', '5.00', 'percent', '10.00', '210.00', NULL, '24.png', '', 1, '2022-10-31 01:06:05'),
(27, 'm2', 1, 1, 8, '10.0000', 3, '', '2023-01-17 05:00:00', '1000.00', '0.00', 'exclusive', '0.00', '1000.00', '2000.00', '0.00', 'percent', '0.00', '2000.00', NULL, NULL, '', 1, '2022-11-17 13:08:49'),
(28, 'Vivo Y21', 2, 2, 8, '10.0000', 3, '', '2023-10-30 18:00:00', '100.00', '5.00', 'exclusive', '5.00', '105.00', '2000.00', '10.00', 'percent', '200.00', '1900.00', NULL, NULL, 'nk', 1, '2023-08-31 09:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_category_relation`
--

CREATE TABLE `product_category_relation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category_relation`
--

INSERT INTO `product_category_relation` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(4, 4, 3),
(15, 32, 1),
(16, 33, 1),
(17, 34, 1),
(19, 36, 1),
(20, 37, 1),
(21, 38, 1),
(22, 39, 3),
(26, 43, 2),
(29, 46, 3),
(30, 47, 2),
(31, 48, 4),
(32, 49, 4),
(33, 50, 3),
(34, 51, 5),
(35, 52, 2),
(36, 53, 3),
(37, 54, 2),
(38, 55, 1),
(39, 56, 10),
(40, 57, 1),
(41, 58, 1),
(44, 61, 4),
(45, 62, 2),
(46, 63, 22),
(47, 64, 26),
(48, 65, 5),
(49, 66, 3),
(50, 67, 3),
(55, 72, 1),
(56, 73, 2),
(57, 74, 1),
(58, 75, 3),
(59, 76, 2),
(60, 77, 1),
(61, 78, 2),
(62, 79, 4),
(63, 80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_color_relation`
--

CREATE TABLE `product_color_relation` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_color_relation`
--

INSERT INTO `product_color_relation` (`id`, `product_name`, `product_id`, `color_id`) VALUES
(52, 'aaaa', 50, 7),
(53, 'aaaa', 50, 8),
(54, 'aaaa', 50, 9),
(182, 'S 10+', 58, 7),
(183, 'S 10+', 58, 8),
(184, 'S 10+', 58, 9),
(185, 'm32', 54, 8),
(186, 'Redmi 9', 48, 8),
(187, 'Redmi 9', 48, 11),
(188, 'Redmi 9', 48, 12),
(189, 'Redmi 9', 48, 13),
(190, 'A50', 39, 22),
(191, 'A42', 46, 7),
(192, 'J 7', 49, 7),
(193, 'J 7', 49, 18),
(194, 'J 7', 49, 19),
(195, 'J7 pro', 51, 7),
(196, 'J7 pro', 51, 8),
(197, 'J7 pro', 51, 9),
(198, 'Not 10', 52, 7),
(199, 'Not 10', 52, 8),
(200, 'Not 10', 52, 16),
(201, 'W 68', 53, 7),
(202, 'W 68', 53, 13),
(203, 'W 68', 53, 14),
(204, 'S 2', 55, 8),
(205, 'Z 10', 67, 7),
(206, 'Z 10', 67, 8),
(207, 'Z 10', 67, 9),
(208, 'Z 10', 67, 17),
(209, 'Z 10', 67, 18),
(210, 'Digital printer', 66, 13),
(211, 'v10', 65, 7),
(212, 'v10', 65, 8),
(220, 'D65', 61, 7),
(221, 'D65', 61, 8),
(222, 'D65', 61, 12),
(223, 'D65', 61, 13),
(224, 'D65', 61, 14),
(225, 'W68', 62, 14),
(226, 'Digital', 56, 9),
(227, 'V9', 47, 7),
(228, 'V9', 47, 8),
(229, 'V9', 47, 9),
(230, 'D57', 63, 7),
(231, 'D57', 63, 8),
(232, 'D57', 63, 11),
(233, 'D57', 63, 12),
(234, 'D57', 63, 13),
(238, 'V 75', 64, 7),
(239, 'V 75', 64, 8),
(245, 'Infinix Hot 11 Play', 34, 12),
(246, 'Infinix Hot 11 Play', 34, 13),
(249, 'Xiaomi 11 Lite 5G NE', 37, 7),
(250, 'Xiaomi 11 Lite 5G NE', 37, 8),
(251, 'Realme C25s', 72, 8),
(252, 'Realme C25s', 72, 9),
(253, 'Walton Primo GM4', 36, 8),
(254, 'Walton Primo GM4', 36, 9),
(255, 'Symphony Z22', 38, 21),
(256, 'hp-pavilion-15-laptop', 73, 7),
(257, 'hp-pavilion-15-laptop', 73, 9),
(258, 'HP Pavilion 15 Laptop', 43, 8),
(259, 'HP Pavilion 15 Laptop', 43, 12),
(260, 'aaaa', 74, 7),
(261, 'aaaa', 74, 8),
(265, 'cszdcc', 75, 8),
(266, 'cszdcc', 75, 12),
(267, 'cszdcc', 75, 13),
(269, 'hgttfhnft', 76, 7),
(270, 'hgttfhnft', 76, 8),
(271, 'hgttfhnft', 76, 9),
(272, 'hgttfhnft', 76, 10),
(281, ' K07 Flexible Selfie Stick Tripod Stand', 77, 8),
(282, 'Samsung Galaxy S21', 33, 8),
(283, 'aaaa', 57, 9),
(284, ' K07 Flexible Selfie Stick Tripod Stand', 78, 8),
(294, 'Samsung Galaxy S22 Ultra ', 32, 8),
(295, 'Samsung Galaxy S22 Ultra ', 32, 9),
(296, 'Samsung Galaxy S22 Ultra ', 32, 10),
(297, ' K07 Flexible Selfie Stick Tripod Stand', 79, 9),
(298, 'rabbani', 80, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_company_relation`
--

CREATE TABLE `product_company_relation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_company_relation`
--

INSERT INTO `product_company_relation` (`id`, `product_id`, `company_id`) VALUES
(14, 32, 1),
(15, 33, 1),
(16, 34, 9),
(18, 36, 10),
(19, 37, 2),
(20, 38, 3),
(21, 39, 1),
(28, 46, 2),
(29, 47, 2),
(30, 48, 2),
(31, 49, 1),
(32, 50, 2),
(33, 51, 6),
(34, 52, 2),
(35, 53, 3),
(36, 54, 1),
(37, 55, 1),
(38, 56, 2),
(39, 57, 1),
(40, 58, 1),
(43, 61, 1),
(44, 62, 3),
(45, 63, 3),
(46, 64, 3),
(47, 65, 3),
(48, 66, 2),
(49, 67, 7),
(54, 72, 6),
(55, 73, 12),
(56, 74, 2),
(57, 75, 8),
(58, 76, 2),
(59, 77, 1),
(60, 78, 1),
(61, 79, 2),
(62, 80, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_image_relation`
--

CREATE TABLE `product_image_relation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `status` enum('Received','Pending','Ordered') NOT NULL,
  `return_status` enum('Return','Cancel') DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `other_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_on_all` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('Fixed') NOT NULL DEFAULT 'Fixed',
  `grandtotal` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` varchar(250) DEFAULT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `supplier`, `bill_no`, `status`, `return_status`, `subtotal`, `other_charges`, `discount_on_all`, `discount_type`, `grandtotal`, `paid`, `due`, `note`, `purchase_date`, `image`, `created_by`, `created`) VALUES
(20, 1, 'BT-61320', 'Received', 'Return', '31000.00', '0.00', '0.00', 'Fixed', '31000.00', '0.00', '31000.00', 'xfvbfd', '2022-10-27 16:17:10', NULL, 1, '2022-10-27 19:10:52'),
(21, 1, 'BT-56621', 'Received', 'Return', '87100.00', '0.00', '0.00', 'Fixed', '87100.00', '0.00', '87100.00', 'dsfsdaf', '2022-10-28 08:40:33', NULL, 1, '2022-10-27 22:25:29'),
(22, 1, 'BT-30522', 'Received', 'Return', '178100.00', '0.00', '0.00', 'Fixed', '178100.00', '0.00', '178100.00', 'fsdfsdf', '2022-10-27 04:00:00', NULL, 1, '2022-10-27 22:25:42'),
(27, 1, 'BT-35227', 'Received', 'Return', '100.00', '0.00', '0.00', 'Fixed', '100.00', '0.00', '100.00', 'dsfghd', '2022-11-02 04:00:00', NULL, 1, '2022-11-02 21:03:13'),
(28, 1, 'BT-33128', 'Received', NULL, '50000.00', '0.00', '0.00', 'Fixed', '50000.00', '0.00', '50000.00', '', '2022-11-16 13:27:54', NULL, 1, '2022-11-16 19:27:54'),
(29, 1, 'BT-74029', 'Received', NULL, '1000000.00', '0.00', '0.00', 'Fixed', '1000000.00', '0.00', '1000000.00', 'ghdrg', '2022-11-16 15:14:36', NULL, 1, '2022-11-16 21:14:36'),
(30, 1, 'BT-86330', 'Received', 'Return', '5000.00', '0.00', '0.00', 'Fixed', '5000.00', '0.00', '5000.00', 'gfdhdfg', '2022-11-17 02:03:33', NULL, 1, '2022-11-16 21:25:00'),
(31, 1, 'BT-64931', 'Received', NULL, '10000.00', '0.00', '0.00', 'Fixed', '10000.00', '0.00', '10000.00', 'xfgvfg', '2022-11-17 02:10:58', NULL, 1, '2022-11-17 08:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` decimal(10,1) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `purchase_id`, `product_id`, `product_name`, `qty`, `unit`, `purchase_price`, `discount`, `discount_type`, `discount_amount`, `tax`, `tax_type`, `tax_amount`, `unit_cost`, `total_amount`, `created`) VALUES
(24, 20, 9, 'WiWU Pilot Portable Folding Wireless ANC Headphone', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-10-28 01:17:49'),
(25, 20, 8, 'OnePlus Nord CE 2 Lite 5G', '1.0', 'Piece', '30000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '30000.00', '30000.00', '2022-10-28 01:17:49'),
(26, 21, 2, 'Xiaomi 12 Pro', '1.0', 'Piece', '70000.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '7000.00', '77000.00', '77000.00', '2022-10-28 02:25:29'),
(27, 21, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-28 02:25:29'),
(28, 21, 4, 'Tecno Pop 6 Pro', '1.0', 'Piece', '10000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '10000.00', '10000.00', '2022-10-28 02:25:29'),
(36, 22, 4, 'Tecno Pop 6 Pro', '1.0', 'Piece', '10000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '10000.00', '10000.00', '2022-10-30 01:16:13'),
(37, 22, 6, 'Symphony V139', '1.0', 'Piece', '6000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '6000.00', '6000.00', '2022-10-30 01:16:13'),
(38, 22, 3, 'Apple iPhone 13 Pro Max', '1.0', 'Piece', '162000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '162000.00', '162000.00', '2022-10-30 01:16:13'),
(39, 22, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-30 01:16:13'),
(45, 27, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-11-08 21:42:50'),
(46, 28, 25, 'A32', '10.0', 'Piece', '5000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '5000.00', '50000.00', '2022-11-17 00:27:54'),
(47, 29, 9, 'WiWU Pilot Portable Folding Wireless ANC Headphone', '1000.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000000.00', '2022-11-17 02:14:36'),
(48, 30, 26, 'B2', '5.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '5000.00', '2022-11-17 02:25:00'),
(49, 31, 27, 'm2', '10.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '10000.00', '2022-11-17 13:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `purchase_code` varchar(100) DEFAULT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `status` enum('Return','Cancel') NOT NULL,
  `return_status` enum('return_yes','return_no') DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `other_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_on_all` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('Fixed') NOT NULL DEFAULT 'Fixed',
  `grandtotal` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` varchar(250) DEFAULT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_return`
--

INSERT INTO `purchase_return` (`id`, `supplier`, `purchase_code`, `bill_no`, `status`, `return_status`, `subtotal`, `other_charges`, `discount_on_all`, `discount_type`, `grandtotal`, `paid`, `due`, `note`, `purchase_date`, `image`, `created_by`, `created`) VALUES
(10, 1, NULL, 'BT-78310', 'Return', NULL, '41000.00', '200.00', '100.00', 'Fixed', '41100.00', '100.00', '41000.00', 'dfgdfhdfh', '2022-10-27 13:08:15', NULL, 1, '2022-10-25 20:53:34'),
(11, 1, NULL, 'BT-52711', 'Return', NULL, '41000.00', '200.00', '100.00', 'Fixed', '41100.00', '0.00', '41100.00', 'gdsdfg', '2022-10-27 14:24:29', NULL, 1, '2022-10-27 20:24:29'),
(12, 1, NULL, 'BT-72912', 'Return', NULL, '30000.00', '0.00', '0.00', 'Fixed', '30000.00', '0.00', '30000.00', 'xfvbfd', '2022-10-27 15:53:32', NULL, 1, '2022-10-27 21:53:31'),
(13, 1, NULL, 'BT-42313', 'Return', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'xfvbfd', '2022-10-27 16:17:10', NULL, 1, '2022-10-27 22:17:10'),
(14, 1, NULL, 'BT-16214', 'Return', NULL, '10000.00', '0.00', '0.00', 'Fixed', '10000.00', '0.00', '10000.00', 'fsdfsdf', '2022-10-27 16:38:25', NULL, 1, '2022-10-27 22:38:25'),
(15, 1, NULL, 'BT-38815', 'Return', NULL, '77100.00', '0.00', '0.00', 'Fixed', '77100.00', '10000.00', '67100.00', 'dsfsdaf', '2022-10-28 08:40:33', NULL, 1, '2022-10-28 14:40:33'),
(16, 1, NULL, 'BT-29716', 'Return', NULL, '2000.00', '0.00', '0.00', 'Fixed', '2000.00', '1000.00', '1000.00', 'dsfghd', '2022-11-02 15:04:08', NULL, 1, '2022-11-02 21:04:08'),
(17, 1, NULL, 'BT-97917', 'Return', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'gfdhdfg', '2022-11-17 02:03:34', NULL, 1, '2022-11-17 08:03:33'),
(18, 1, NULL, 'BT-47518', 'Return', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'jbhhb', '2022-11-17 02:05:09', NULL, 1, '2022-11-17 08:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_products`
--

CREATE TABLE `purchase_return_products` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` decimal(10,1) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_return_products`
--

INSERT INTO `purchase_return_products` (`id`, `purchase_id`, `product_id`, `product_name`, `qty`, `unit`, `purchase_price`, `discount`, `discount_type`, `discount_amount`, `tax`, `tax_type`, `tax_amount`, `unit_cost`, `total_amount`, `created`) VALUES
(10, 9, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-26 00:34:56'),
(36, 10, 9, 'WiWU Pilot Portable Folding Wireless ANC Headphone', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-10-27 23:01:00'),
(37, 10, 4, 'Tecno Pop 6 Pro', '1.0', 'Piece', '10000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '10000.00', '10000.00', '2022-10-27 23:01:00'),
(38, 10, 8, 'OnePlus Nord CE 2 Lite 5G', '1.0', 'Piece', '30000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '30000.00', '30000.00', '2022-10-27 23:01:00'),
(39, 11, 9, 'WiWU Pilot Portable Folding Wireless ANC Headphone', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-10-28 00:24:29'),
(40, 11, 4, 'Tecno Pop 6 Pro', '1.0', 'Piece', '10000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '10000.00', '10000.00', '2022-10-28 00:24:29'),
(41, 11, 8, 'OnePlus Nord CE 2 Lite 5G', '1.0', 'Piece', '30000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '30000.00', '30000.00', '2022-10-28 00:24:29'),
(42, 12, 8, 'OnePlus Nord CE 2 Lite 5G', '1.0', 'Piece', '30000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '30000.00', '30000.00', '2022-10-28 01:53:31'),
(43, 13, 9, 'WiWU Pilot Portable Folding Wireless ANC Headphone', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-10-28 02:17:10'),
(44, 14, 4, 'Tecno Pop 6 Pro', '1.0', 'Piece', '10000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '10000.00', '10000.00', '2022-10-28 02:38:25'),
(45, 15, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-28 18:40:33'),
(46, 15, 2, 'Xiaomi 12 Pro', '1.0', 'Piece', '70000.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '7000.00', '77000.00', '77000.00', '2022-10-28 18:40:33'),
(47, 16, 10, 'Remax RM-512 Wired Black Earphone', '20.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '2000.00', '2022-11-03 01:04:08'),
(48, 17, 26, 'B2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 13:03:33'),
(49, 18, 26, 'B2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 13:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `recovery`
--

CREATE TABLE `recovery` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expire` datetime NOT NULL,
  `req_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recovery`
--

INSERT INTO `recovery` (`id`, `user_id`, `token`, `expire`, `req_time`) VALUES
(1, 46, 'N4YYQqudSQH5b5QJI9exyaj4SFxaY7jC', '2021-02-01 22:16:18', '2021-02-01 10:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `status` enum('Final','Quotation') NOT NULL,
  `return_status` enum('Return','Cancel') DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `other_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_on_all` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('Fixed') NOT NULL DEFAULT 'Fixed',
  `grandtotal` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` varchar(250) DEFAULT NULL,
  `sales_date` datetime NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer`, `bill_no`, `status`, `return_status`, `subtotal`, `other_charges`, `discount_on_all`, `discount_type`, `grandtotal`, `paid`, `due`, `note`, `sales_date`, `image`, `created_by`, `created`) VALUES
(59, 1, '58015759', 'Final', NULL, '77100.00', '0.00', '0.00', 'Fixed', '77100.00', '0.00', '77100.00', 'jnjjn', '2022-11-04 00:00:00', NULL, 1, '2022-11-04 15:35:02'),
(60, 1, '42866660', 'Final', NULL, '110.00', '0.00', '0.00', 'Fixed', '110.00', '10.00', '100.00', 'sdfsd', '2022-11-16 00:00:00', NULL, 1, '2022-11-16 19:19:57'),
(61, 1, '97962461', 'Final', NULL, '5000.00', '0.00', '0.00', 'Fixed', '5000.00', '1000.00', '4000.00', 'sdxasd', '2022-11-16 00:00:00', NULL, 1, '2022-11-16 19:29:37'),
(62, 1, '61517862', 'Final', NULL, '100000.00', '0.00', '0.00', 'Fixed', '100000.00', '0.00', '100000.00', 'dfgsdgfd', '2022-11-16 00:00:00', NULL, 1, '2022-11-16 20:05:08'),
(63, 1, '93323763', 'Final', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'dfas', '2022-11-16 00:00:00', NULL, 1, '2022-11-16 21:27:05'),
(64, 1, '26078464', 'Final', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'frsre', '2022-11-16 00:00:00', NULL, 1, '2022-11-16 21:30:45'),
(65, 1, '71233765', 'Final', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '500.00', '500.00', 'gtdgdf', '2022-11-16 00:00:00', NULL, 1, '2022-11-16 21:37:30'),
(66, 1, '83208666', 'Final', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'flsdlkfsj', '2022-11-17 00:00:00', NULL, 1, '2022-11-17 08:12:08'),
(67, 1, '18244867', 'Final', NULL, '9000.00', '0.00', '0.00', 'Fixed', '9000.00', '0.00', '9000.00', 'huygyvy', '2022-11-17 00:00:00', NULL, 1, '2022-11-17 08:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `sales_products`
--

CREATE TABLE `sales_products` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` decimal(10,1) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_products`
--

INSERT INTO `sales_products` (`id`, `sales_id`, `product_id`, `product_name`, `qty`, `unit`, `purchase_price`, `discount`, `discount_type`, `discount_amount`, `tax`, `tax_type`, `tax_amount`, `unit_cost`, `total_amount`, `created`) VALUES
(34, 10, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-30 23:01:55'),
(35, 11, 6, 'Symphony V139', '1.0', 'Piece', '6000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '6000.00', '6000.00', '2022-10-30 23:11:58'),
(36, 12, 6, 'Symphony V139', '1.0', 'Piece', '6000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '6000.00', '6000.00', '2022-10-30 23:13:17'),
(37, 13, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-30 23:15:23'),
(39, 16, 10, 'Remax RM-512 Wired Black Earphone', '2.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '200.00', '2022-10-31 00:01:24'),
(40, 16, 6, 'Symphony V139', '1.0', 'Piece', '6000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '6000.00', '6000.00', '2022-10-31 00:01:24'),
(41, 17, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:03:52'),
(43, 18, 10, 'Remax RM-512 Wired Black Earphone', '2.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '200.00', '2022-10-31 00:06:13'),
(44, 19, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:52:02'),
(45, 20, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:55:03'),
(46, 25, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:56:42'),
(47, 26, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:57:01'),
(48, 27, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:58:35'),
(49, 28, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:59:00'),
(50, 29, 23, 'Vivo2', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-10-31 00:59:47'),
(52, 30, 23, 'Vivo2', '2.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '200.00', '2022-10-31 01:02:35'),
(54, 31, 24, 'Symphony W68', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '10.00', '110.00', '110.00', '2022-10-31 01:43:08'),
(101, 49, 24, 'Symphony W68', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '10.00', '110.00', '110.00', '2022-11-02 23:38:15'),
(118, 59, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-11-08 21:41:41'),
(119, 59, 2, 'Xiaomi 12 Pro', '1.0', 'Piece', '70000.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '7000.00', '77000.00', '77000.00', '2022-11-08 21:41:41'),
(120, 60, 24, 'Symphony W68', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '10.00', '110.00', '110.00', '2022-11-17 00:19:57'),
(121, 61, 25, 'A32', '1.0', 'Piece', '5000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '5000.00', '5000.00', '2022-11-17 00:29:37'),
(122, 62, 25, 'A32', '20.0', 'Piece', '5000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '5000.00', '100000.00', '2022-11-17 01:05:08'),
(123, 63, 26, 'B2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 02:27:05'),
(124, 64, 26, 'B2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 02:30:45'),
(125, 65, 26, 'B2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 02:37:30'),
(126, 66, 27, 'm2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 13:12:08'),
(127, 67, 27, 'm2', '9.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '9000.00', '2022-11-17 13:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `status` enum('Return','Cancel') NOT NULL,
  `return_status` enum('Return','Cancel') DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `other_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_on_all` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('Fixed') NOT NULL DEFAULT 'Fixed',
  `grandtotal` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` varchar(250) DEFAULT NULL,
  `sales_date` datetime NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_return`
--

INSERT INTO `sales_return` (`id`, `customer`, `bill_no`, `status`, `return_status`, `subtotal`, `other_charges`, `discount_on_all`, `discount_type`, `grandtotal`, `paid`, `due`, `note`, `sales_date`, `image`, `created_by`, `created`) VALUES
(5, 1, 'BT-9455', 'Return', NULL, '210.00', '0.00', '0.00', 'Fixed', '210.00', '30.00', '180.00', 'dghdfh', '2022-11-05 00:00:00', NULL, 1, '2022-11-05 20:00:47'),
(6, 1, 'BT-6366', 'Return', NULL, '210.00', '0.00', '0.00', 'Fixed', '210.00', '10.00', '200.00', 'gfhfg', '2022-11-05 00:00:00', NULL, 1, '2022-11-05 20:59:01'),
(7, 1, 'BT-7437', 'Return', NULL, '1000.00', '0.00', '0.00', 'Fixed', '1000.00', '0.00', '1000.00', 'jnjjj', '2022-11-17 00:00:00', NULL, 1, '2022-11-17 08:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_products`
--

CREATE TABLE `sales_return_products` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` decimal(10,1) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT 0.00,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_return_products`
--

INSERT INTO `sales_return_products` (`id`, `sales_id`, `product_id`, `product_name`, `qty`, `unit`, `purchase_price`, `discount`, `discount_type`, `discount_amount`, `tax`, `tax_type`, `tax_amount`, `unit_cost`, `total_amount`, `created`) VALUES
(14, 6, 10, 'Remax RM-512 Wired Black Earphone', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '100.00', '100.00', '2022-11-06 00:59:56'),
(15, 6, 24, 'Symphony W68', '1.0', 'Piece', '100.00', '0.00', 'percent', '0.00', '10.00', 'exclusive', '10.00', '110.00', '110.00', '2022-11-06 00:59:56'),
(16, 7, 27, 'm2', '1.0', 'Piece', '1000.00', '0.00', 'percent', '0.00', '0.00', 'exclusive', '0.00', '1000.00', '1000.00', '2022-11-17 13:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country_id`, `name`, `created`) VALUES
(3, 1, 'Barishal', '2022-07-03 01:22:05'),
(4, 1, 'Chattogram', '2022-07-03 01:22:15'),
(5, 1, 'Dhaka', '2022-07-03 01:41:55'),
(6, 1, 'Khulna', '2022-11-12 00:28:19'),
(7, 1, 'Rajshahi', '2022-11-15 02:45:17'),
(8, 1, 'Rangpur', '2022-11-15 13:08:52'),
(9, 1, 'Mymensingh ', '2022-11-15 13:08:52'),
(10, 1, 'Sylhet', '2022-11-15 13:09:15'),
(11, 2, 'Andhra Pradesh', '2022-11-15 13:11:49'),
(12, 2, 'Assam', '2022-11-15 13:11:49'),
(15, 2, 'Bihar', '2022-11-16 01:31:56'),
(16, 3, 'Anhui', '2022-11-16 02:17:38'),
(17, 3, 'Fujian', '2022-11-16 02:17:57'),
(18, 3, 'Gansu', '2022-11-16 02:18:07'),
(19, 3, 'Jiangsu', '2022-11-16 02:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `stock_report`
--

CREATE TABLE `stock_report` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `new_opening_stock` decimal(10,2) DEFAULT NULL,
  `adjustment_note` varchar(200) DEFAULT NULL,
  `total_stock` decimal(10,2) DEFAULT NULL,
  `current_stock` decimal(10,2) DEFAULT NULL,
  `total_sold` decimal(10,2) DEFAULT 0.00,
  `stock_value` decimal(50,2) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_report`
--

INSERT INTO `stock_report` (`id`, `product_id`, `product_code`, `new_opening_stock`, `adjustment_note`, `total_stock`, `current_stock`, `total_sold`, `stock_value`, `created`) VALUES
(1, 1, 'BT-35821', '2.00', '', '13.00', '13.00', '0.00', '286000.00', '2022-10-15 15:02:15'),
(2, 2, 'BT-52892', '5.00', '', '14.00', '13.00', '0.00', '1039987.00', '2022-11-08 10:41:41'),
(3, 3, 'BT-19223', '11.00', '', '19.00', '19.00', '0.00', '2444985.00', '2022-11-04 17:19:44'),
(4, 4, 'BT-53324', '10.00', '', '15.00', '15.00', '0.00', '178330.00', '2022-10-28 16:54:10'),
(5, 5, 'BT-17065', '10.00', '', '14.00', '14.00', '0.00', '465850.00', '2022-11-04 17:19:44'),
(6, 6, 'BT-76556', '10.00', '', '16.00', '14.00', '0.00', '98000.00', '2022-10-30 13:13:17'),
(7, 7, 'BT-74007', '10.00', '', '11.00', '11.00', '0.00', '123189.00', '2022-10-15 14:18:13'),
(8, 8, 'BT-78988', '5.00', '', '4.00', '4.00', '0.00', '159950.00', '2022-10-27 15:53:32'),
(9, 9, 'BT-21739', '0.00', '', '1016.00', '1016.00', '0.00', '2032000.00', '2022-11-16 15:14:36'),
(10, 10, 'BT-703210', '0.00', '', '-3.00', '-15.00', '0.00', '-3000.00', '2022-11-08 10:41:41'),
(11, 15, 'BT-797715', '0.00', '', '0.00', '0.00', '0.00', '0.00', '2022-10-13 00:01:37'),
(12, 16, 'BT-684716', '0.00', '', '0.00', '0.00', '0.00', '0.00', '2022-10-13 00:03:13'),
(13, 17, 'BT-459017', '0.00', '', '0.00', '0.00', '0.00', '0.00', '2022-10-13 00:43:31'),
(14, 18, 'BT-120418', '5.00', '', '5.00', '5.00', '0.00', '5250.00', '2022-10-13 05:31:47'),
(15, 19, 'BT-841519', '0.00', '', '0.00', '0.00', '0.00', '0.00', '2022-10-13 22:44:42'),
(16, 20, 'BT-220420', '0.00', '', '0.00', '0.00', '0.00', '0.00', '2022-10-14 00:11:00'),
(17, 21, 'BT-587921', '0.00', '', '1.00', '1.00', '0.00', '0.00', '2022-10-30 14:38:06'),
(18, 22, 'BT-134322', '10.00', '', '10.00', '10.00', '0.00', '0.00', '2022-10-31 00:46:10'),
(19, 23, 'BT-151023', '10.00', '', '11.00', '6.00', '0.00', '1200.00', '2022-10-30 15:02:35'),
(20, 24, 'BT-733724', '10.00', '', '12.00', '-2.00', '0.00', '-420.00', '2022-11-16 13:19:57'),
(21, 25, 'BT-319625', '0.00', '', '10.00', '-11.00', '-20.00', '-66000.00', '2022-11-16 14:05:08'),
(22, 26, 'BT-649826', '0.00', '', '3.00', '0.00', '3.00', '4000.00', '2022-11-17 02:05:09'),
(23, 27, 'BT-319327', '0.00', '', '11.00', '1.00', '10.00', '0.00', '2022-11-17 02:18:08'),
(24, 28, 'BT-213628', '0.00', '', '0.00', '0.00', '0.00', '0.00', '2023-08-31 09:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `sub_image`
--

CREATE TABLE `sub_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_image`
--

INSERT INTO `sub_image` (`id`, `product_id`, `name`, `created`) VALUES
(1, 65, 'a.jpg', '2022-01-25 15:25:03'),
(2, 65, 'b.jpg', '2022-01-25 15:25:03'),
(3, 65, 'c.jpg', '2022-01-25 15:25:03'),
(4, 66, 'e - Copy - Copy - Copy - Copy.jpg', '2022-01-25 04:58:50'),
(5, 66, 'e - Copy - Copy - Copy.jpg', '2022-01-25 04:57:53'),
(6, 67, 'e - Copy - Copy - Copy - Copy.jpg', '2022-01-25 04:57:50'),
(7, 67, 'e - Copy - Copy - Copy.jpg', '2022-01-25 04:57:46'),
(8, 67, 'e - Copy - Copy.jpg', '2022-01-25 04:57:55'),
(9, 67, 'e - Copy.jpg', '2022-01-25 04:57:58'),
(10, 67, 'e.jpg', '2022-01-25 04:57:42'),
(11, 68, 'cats-18.jpg', '2022-01-25 16:03:18'),
(12, 68, 'download (1).jpg', '2022-01-25 16:03:18'),
(13, 68, 'download.jpg', '2022-01-25 16:03:18'),
(14, 69, 'cats-18.jpg', '2022-01-25 20:21:02'),
(15, 69, 'download (1).jpg', '2022-01-25 20:21:02'),
(16, 69, 'download.jpg', '2022-01-25 20:21:02'),
(52, 32, 'download.jpg', '2022-01-26 13:21:38'),
(53, 32, 'images (1).jpg', '2022-01-26 13:21:38'),
(54, 32, 'images (2).jpg', '2022-01-26 13:21:38'),
(55, 32, 'images (3).jpg', '2022-01-26 13:21:38'),
(56, 33, 'samsung-galaxy-a32-4g-3.jpg', '2022-01-27 10:52:37'),
(57, 33, 'samsung-galaxy-m32-2.jpg', '2022-01-27 10:52:37'),
(58, 33, 'Samsung-Galaxy-S21-FE-5G-image1.jpg', '2022-01-27 10:52:37'),
(59, 34, '001_galaxys10_5g_ProductImage_Silver_Front.jpg', '2022-01-27 10:54:36'),
(60, 34, 'cats-18.jpg', '2022-01-27 10:54:37'),
(61, 34, 'download.jpg', '2022-01-27 10:54:37'),
(62, 36, 'Samsung-Galaxy-S21-FE-5G-image1.jpg', '2022-01-27 10:56:54'),
(63, 36, 'Vivo.jpg', '2022-01-27 10:56:54'),
(64, 36, 'Walton-Primo-GM4-image.jpg', '2022-01-27 10:56:54'),
(65, 37, 'Vivo.jpg', '2022-01-27 10:58:59'),
(66, 37, 'Walton-Primo-GM4-image.jpg', '2022-01-27 10:58:59'),
(67, 37, 'Xiaomi-11-Lite-5G-NE-image.jpg', '2022-01-27 10:58:59'),
(68, 72, 'Realme-C25-image.jpg', '2022-01-27 22:01:37'),
(69, 72, 'Vivo.jpg', '2022-01-27 22:01:37'),
(70, 72, 'Walton-Primo-GM4-image.jpg', '2022-01-27 22:01:37'),
(71, 72, 'Xiaomi-11-Lite-5G-NE-image.jpg', '2022-01-27 22:01:37'),
(72, 38, 'Samsung-Galaxy-S21-FE-5G-image1.jpg', '2022-01-27 11:04:23'),
(73, 38, 'Symphony-Z22-image.jpg', '2022-01-27 11:04:23'),
(74, 38, 'Walton-Primo-GM4-image.jpg', '2022-01-27 11:04:23'),
(75, 73, 'hp_pavilion_14_laptop02.jpg', '2022-01-27 22:20:40'),
(76, 73, 'hp-pavilion-15-laptop_149500618690.jpg', '2022-01-27 22:20:40'),
(77, 43, 'hp_pavilion_14_laptop02.jpg', '2022-01-27 11:21:47'),
(78, 43, 'hp-pavilion-15-laptop_149500618690.jpg', '2022-01-27 11:21:47'),
(79, 74, 'd - Copy (2).jpg', '2022-01-27 23:56:49'),
(80, 74, 'd - Copy.jpg', '2022-01-27 23:56:49'),
(81, 74, 'd.jpg', '2022-01-27 23:56:49'),
(82, 75, 'c - Copy (2).jpg', '2022-01-29 15:27:52'),
(83, 76, 'Symphony-Z22-image - Copy.jpg', '2022-01-29 22:14:49'),
(84, 76, 'Vivo - Copy.jpg', '2022-01-29 22:14:49'),
(85, 76, 'Walton-Primo-GM4-image - Copy.jpg', '2022-01-29 22:14:49'),
(86, 76, 'Xiaomi-11-Lite-5G-NE-image - Copy.jpg', '2022-01-29 22:14:49'),
(87, 77, 'recent-post-1-2.jpg', '2022-06-30 00:14:10'),
(88, 77, 'recent-post-1-1.jpg', '2022-06-30 00:14:10'),
(89, 77, 'page-1-2.jpg', '2022-06-30 00:14:10'),
(90, 78, 'WIN_20201201_22_48_39_Pro.jpg', '2022-07-15 02:06:32'),
(91, 78, 'WIN_20201201_22_49_06_Pro.jpg', '2022-07-15 02:06:32'),
(92, 79, 'slider-banner - Copy.jpg', '2022-08-01 00:01:10'),
(93, 79, 'New Project - 2022-07-20T132021.591.jpg', '2022-08-01 00:01:10'),
(94, 80, 'CSCDP-Closed (2).webp', '2022-08-01 00:02:29'),
(95, 80, 'CSCDP-Closed (1).webp', '2022-08-01 00:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `opening_receivable` decimal(10,2) NOT NULL DEFAULT 0.00,
  `opening_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payable` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `return_payable` decimal(10,2) NOT NULL DEFAULT 0.00,
  `return_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `return_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `division` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `upazila` varchar(100) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `opening_receivable`, `opening_balance`, `payable`, `paid`, `due`, `return_payable`, `return_paid`, `return_due`, `status`, `division`, `district`, `upazila`, `village`, `zip`, `address`, `updated`, `created`) VALUES
(1, 'baijid', 'baijid@gmail.com', '01775051601', '0.00', '0.00', '1869605.00', '0.00', '1869605.00', '443500.00', '11100.00', '432400.00', 1, 'Rajshahi', 'Bogura', 'Bogura sodar', 'Rahman nagar', '6596', 'Rajshahi,bogura,rahman nogar', NULL, '2022-11-17 02:10:58'),
(2, 'Tanvir', 'tanvir@gmail.com', '01775051601', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1, NULL, NULL, NULL, NULL, NULL, 'Naogaon, Raninagor', NULL, '2022-11-02 15:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `name`, `tax`, `updated`, `created`) VALUES
(1, 'Tax%', '5.00', NULL, '2022-01-24 05:17:49'),
(2, 'Vat%', '10.00', NULL, '2022-01-24 05:17:49'),
(4, 'Vat%', '15.00', NULL, '2022-01-24 05:17:49'),
(5, 'Vat%', '20.00', NULL, '2022-01-24 05:17:49'),
(6, 'Vat%', '18.00', NULL, '2022-01-24 05:17:49'),
(7, 'Vat%', '2.00', NULL, '2022-01-24 05:17:49'),
(8, 'Vat%', '3.00', NULL, '2022-01-24 05:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created`) VALUES
(3, 'Piece', '2022-07-01 06:29:40'),
(4, 'Kg', '2022-07-01 06:29:40'),
(6, 'Gram', '2022-09-23 17:17:19'),
(7, 'Box', '2022-09-23 17:17:27'),
(8, 'Packet', '2022-09-23 17:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `upazila`
--

CREATE TABLE `upazila` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `login_key` varchar(100) DEFAULT NULL,
  `email_verified` int(2) NOT NULL DEFAULT 0,
  `email_token` varchar(100) DEFAULT NULL,
  `email_token_expire` datetime DEFAULT NULL,
  `2fa` int(2) NOT NULL DEFAULT 0,
  `2fa_token` varchar(16) DEFAULT NULL,
  `balance` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `status` int(2) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `photo`, `password`, `login_key`, `email_verified`, `email_token`, `email_token_expire`, `2fa`, `2fa_token`, `balance`, `status`, `created`) VALUES
(1, 'Admin', '8801700000000', 'admin@admin.com', '1.png', '$2y$10$Wdo2I4d3ELp43Csx9EnBOuewQQlVX8wT.kXN53eHxXrKU0Fywb7Pq', '756fffb0a7fe572914ec4619ddc2e83b', 1, 'jmiG3duYGwgTtONAIPlzgjOXrMp1eZI2', '2021-12-01 16:32:25', 0, NULL, '0.0000', 1, '2021-12-04 16:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `group_name`, `created`) VALUES
(1, 'Admin', '2019-11-13 00:00:00'),
(2, 'Customer', '2019-11-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_relation`
--

CREATE TABLE `user_group_relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) NOT NULL,
  `group_id` int(10) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_group_relation`
--

INSERT INTO `user_group_relation` (`id`, `user_id`, `group_id`, `created`) VALUES
(80, 1, 1, '2021-12-01 00:00:00'),
(81, 2, 2, '2022-01-15 06:49:00'),
(82, 3, 3, '2022-01-15 06:49:00'),
(83, 4, 1, '2022-01-15 06:49:56'),
(84, 5, 3, '2022-01-15 06:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`id`, `name`, `created`) VALUES
(1, 'Shahagola', '2022-07-02 14:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `zip`
--

CREATE TABLE `zip` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zip`
--

INSERT INTO `zip` (`id`, `name`, `created`) VALUES
(1, 'Rahman nagar', '2022-07-02 14:33:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_testing`
--
ALTER TABLE `api_testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_group`
--
ALTER TABLE `contact_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_group_relation`
--
ALTER TABLE `contact_group_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_opening_stock`
--
ALTER TABLE `current_opening_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esp`
--
ALTER TABLE `esp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invalid_login`
--
ALTER TABLE `invalid_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav_permission`
--
ALTER TABLE `nav_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category_relation`
--
ALTER TABLE `product_category_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color_relation`
--
ALTER TABLE `product_color_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_company_relation`
--
ALTER TABLE `product_company_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_products`
--
ALTER TABLE `purchase_return_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recovery`
--
ALTER TABLE `recovery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_products`
--
ALTER TABLE `sales_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_products`
--
ALTER TABLE `sales_return_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_report`
--
ALTER TABLE `stock_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_image`
--
ALTER TABLE `sub_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazila`
--
ALTER TABLE `upazila`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group_relation`
--
ALTER TABLE `user_group_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zip`
--
ALTER TABLE `zip`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `api_testing`
--
ALTER TABLE `api_testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `contact_group`
--
ALTER TABLE `contact_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_group_relation`
--
ALTER TABLE `contact_group_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `current_opening_stock`
--
ALTER TABLE `current_opening_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `esp`
--
ALTER TABLE `esp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invalid_login`
--
ALTER TABLE `invalid_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `nav_permission`
--
ALTER TABLE `nav_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_category_relation`
--
ALTER TABLE `product_category_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_color_relation`
--
ALTER TABLE `product_color_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `product_company_relation`
--
ALTER TABLE `product_company_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `purchase_return_products`
--
ALTER TABLE `purchase_return_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `recovery`
--
ALTER TABLE `recovery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `sales_products`
--
ALTER TABLE `sales_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_return_products`
--
ALTER TABLE `sales_return_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stock_report`
--
ALTER TABLE `stock_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sub_image`
--
ALTER TABLE `sub_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upazila`
--
ALTER TABLE `upazila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_group_relation`
--
ALTER TABLE `user_group_relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zip`
--
ALTER TABLE `zip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
