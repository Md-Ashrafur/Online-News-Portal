-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: may 15, 2021 at 03:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `eid`, `password`) VALUES
(1, 'Mehedi Hasan', '2017-1-60-119@std.ewubd.edu', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(100) NOT NULL,
  `category_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(38, 'International'),
(39, 'Sports'),
(40, 'Science'),
(41, 'Local news'),
(42, 'Lifestyle'),
(43, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(200) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `category` text NOT NULL,
  `news_date` date NOT NULL,
  `image` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `description`, `category`, `news_date`, `image`) VALUES
(56, 'China factory outputslows asbottlenecks crimp production', 'disputes coronavirus’s origin theories', 'China\'s relationship with the United States has reached a \"new crossroads\" and could get back on the right track following a period of \"unprecedented difficulty\", senior diplomat Wang Yi said in official comments published yesterday. \r\n\r\nRelations between the world\'s two biggest economies have come under increasing strain amid a series of disputes over trade, human rights and the origins of Covid-19. In its latest move, the United States blacklisted dozens of Chinese companies it said had ties to the military.\r\n\r\nWang, China\'s state councillor and foreign minister, said in a joint interview with Xinhua news agency and other state media outlets that recent US policies towards China had harmed the interests of both countries and brought huge dangers to the world.\r\n\r\nBut there was now an opportunity for the two sides to \"open a new window of hope\" and begin a new round of dialogue, he said.\r\n\r\nThe election of Joe Biden as US president has been widely expected to improve relations between Washington and Beijing after four years of escalating tensions under the administration of Donald Trump.\r\n\r\n\r\nHowever, President-elect Biden, who will take office on Jan. 20, has continued to criticise China for its \"abuses\" on trade and other issues.\r\n\r\nWang did not mention Trump or Biden by name, but he urged the United States to \"respect the social system and development path\" chosen by China, adding that if Washington \"learns lessons\", the conflicts between the two sides could be resolved.\r\n\r\n\"We know some people in the United States are apprehensive about China\'s rapid development, but the most sustainable leadership is to constantly move forward yourself, rather than block the development of other countries,\" he said.\r\n\r\nPoliticians in the United States have accused China of covering up the outbreak of Covid-19 during its early stages, delaying its response and allowing the disease to spread much further and faster.\r\n\r\nBut Wang said China had done its utmost to combat the virus\'s spread, \"sounding the alarm\" for the rest of the world.\r\n\r\n\"We raced against time, and were the earliest to report the epidemic to the world,\" he said. \"More and more studies show that the epidemic very probably emerged in many places throughout the world.\"\r\n\r\nWang\'s comments echo those of some of China\'s top health officials and state media, as the government has sought to reshape the narrative on the origin of the virus.\r\n\r\nBut Wang is the most senior government official to promote the idea, which has been welcomed domestically but shunned by most Western audiences.', '6', '2021-05-18', 'prothomalo-business.jpg'),

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(19, 'nafim', 'nafim@gmail.com', '12345'),
(17, 'mh', 'mh@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);


--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);


--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

-
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
