-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 04:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodinsider`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `Author`) VALUES
(1, 10, 'The Ashesi Breakfast Code', 'She didnt like the food. She never did. She made the usual complaints and started the tantrum he knew was coming. But this time was different. Instead of trying to placate her and her unreasonable demands, he just stared at her and watched her meltdown without saying a word.\r\nHer eyebrows were a shade darker than her hair. They were thick and almost horizontal, emphasizing the depth of her eyes. She was rather handsome than beautiful. Her face was captivating by reason of a certain frankness of expression and a contradictory subtle play of features. Her manner was engaging.\r\nShe closed her eyes and then opened them again. What she was seeing just didnt make sense. She shook her head seeing if that would help. It didnt. Although it seemed beyond reality, there was no denying she was witnessing a large formation of alien spaceships filling the sky.\r\nShe was in a hurry. Not the standard hurry when youre in a rush to get someplace, but a frantic hurry. The type of hurry where a few seconds could mean life or death. She raced down the road ignoring speed limits and weaving between cars. She was only a few minutes away when traffic came to a dead standstill on the road ahead.                        ', '2021-11-25 23:58:36', 'David Agyei'),
(2, 13, 'Meal Plan Strategy 101', 'She didnt like the food. She never did. She made the usual complaints and started the tantrum he knew was coming. But this time was different. Instead of trying to placate her and her unreasonable demands, he just stared at her and watched her meltdown without saying a word.\r\nHer eyebrows were a shade darker than her hair. They were thick and almost horizontal, emphasizing the depth of her eyes. She was rather handsome than beautiful. Her face was captivating by reason of a certain frankness of expression and a contradictory subtle play of features. Her manner was engaging.\r\nShe closed her eyes and then opened them again. What she was seeing just didnt make sense. She shook her head seeing if that would help. It didnt. Although it seemed beyond reality, there was no denying she was witnessing a large formation of alien spaceships filling the sky.\r\nShe was in a hurry. Not the standard hurry when youre in a rush to get someplace, but a frantic hurry. The type of hurry where a few seconds could mean life or death. She raced down the road ignoring speed limits and weaving between cars. She was only a few minutes away when traffic came to a dead standstill on the road ahead.                        ', '2021-11-25 23:58:50', 'James Ansah'),
(3, 12, 'Breakfast Before 8am Class', 'She didnt like the food. She never did. She made the usual complaints and started the tantrum he knew was coming. But this time was different. Instead of trying to placate her and her unreasonable demands, he just stared at her and watched her meltdown without saying a word.\r\nHer eyebrows were a shade darker than her hair. They were thick and almost horizontal, emphasizing the depth of her eyes. She was rather handsome than beautiful. Her face was captivating by reason of a certain frankness of expression and a contradictory subtle play of features. Her manner was engaging.\r\nShe closed her eyes and then opened them again. What she was seeing just didnt make sense. She shook her head seeing if that would help. It didnt. Although it seemed beyond reality, there was no denying she was witnessing a large formation of alien spaceships filling the sky.\r\nShe was in a hurry. Not the standard hurry when youre in a rush to get someplace, but a frantic hurry. The type of hurry where a few seconds could mean life or death. She raced down the road ignoring speed limits and weaving between cars. She was only a few minutes away when traffic came to a dead standstill on the road ahead.                        ', '2021-11-25 23:59:37', 'Kofi Prempeh'),
(4, 11, 'Best Night Snacks- Berekuso Demo', 'She didnt like the food. She never did. She made the usual complaints and started the tantrum he knew was coming. But this time was different. Instead of trying to placate her and her unreasonable demands, he just stared at her and watched her meltdown without saying a word.\r\nHer eyebrows were a shade darker than her hair. They were thick and almost horizontal, emphasizing the depth of her eyes. She was rather handsome than beautiful. Her face was captivating by reason of a certain frankness of expression and a contradictory subtle play of features. Her manner was engaging.\r\nShe closed her eyes and then opened them again. What she was seeing just didnt make sense. She shook her head seeing if that would help. It didnt. Although it seemed beyond reality, there was no denying she was witnessing a large formation of alien spaceships filling the sky.\r\nShe was in a hurry. Not the standard hurry when youre in a rush to get someplace, but a frantic hurry. The type of hurry where a few seconds could mean life or death. She raced down the road ignoring speed limits and weaving between cars. She was only a few minutes away when traffic came to a dead standstill on the road ahead.', '2021-11-25 23:59:16', 'Silas Tetteh'),
(5, 13, 'Ashesi Cuisine', 'first i see I am not stressed.                        ', '2021-11-25 23:52:55', 'James Ansah'),
(9, 12, 'Food Book A-gain', 'pannana here I am not stressed.                        ', '2021-11-25 23:51:02', 'Kofi'),
(10, 12, 'This Code Finally Works', 'Astafigruallah', '2021-11-26 02:48:45', 'Kofi Prempeh'),
(11, 20, 'My First Entry', '                i like coding in php it is really awful            ', '2021-11-26 03:11:50', 'William Smith');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`) VALUES
(10, 'David Agyei', 'dagyei@gmail.com', 'David3', '$2y$10$oyGfkk1yzrwqB7StfOpEvOltqCfLjdli84myT2mBfW.r7IBkIASMO'),
(11, 'Silas Tetteh', 'stetteh@gmail.com', 'Silas7', '$2y$10$yHwBBUUaPcaqMlnD.kEg6udi2O/mzUlQyTLo6oBDF/WWVIWPt6/0K'),
(12, 'Kofi Prempeh', 'kprempeh@gmail.com', 'Kofi6', '$2y$10$mVLOvUK0LDbQ8iUtjQ2CWOfnQHna2QWMyYIeowTh9B9jRB9MVpoWe'),
(13, 'James Ansah', 'jansah@gmail.com', 'James14', '$2y$10$NrOomAvxH/x/axAng6LEVOsSLkoPjzgAPkWtRYX2PZT9/6lkxztEu'),
(15, 'Ruth', 'phylamartey@gmail.com', 'ruth', '$2y$10$XmgzwbSHfMXUtIqKRh/dQOb3Ky3LHbPONP41xu71QxMJyIPbmfjIC'),
(16, 'Cornelius Way', 'corn@gmail.com', 'corn13', '$2y$10$1m0Ueg1aCu9PceJ2P5rKuOYQRBs6wy8iESBcqorZZ2eFK0ja.xMLi'),
(17, 'Jared Bowen', 'jbowen@gmail.com', 'jbowen', '$2y$10$06HiTdcsO7.Ry5CwhBbmveJDRQnaaeQf/g0eO2o99ibCCyb2MSYBa'),
(18, 'rick', 'r@gmail.com', 'rsanchez', '$2y$10$Qpme1Ix0U2oneKuw5RqDoOLav5MB2EkR.FZaXP7iFB9K/EieF2cMe'),
(20, 'William Smith', 'wsmith@gmail.com', 'William5', '$2y$10$1QWDKt3TevRbAYIV0dGsxOdI.9pSp0oVK1ik46FLpyJAGRV2keR6C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
