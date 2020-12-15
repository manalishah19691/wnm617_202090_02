-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2020 at 02:51 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aau608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `status`, `about`, `img`, `date_create`) VALUES
(1, 'Devanshi', 'shah', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'image lover', 'Fugiat culpa laborum qui nostrud enim proident pariatur pariatur incididunt. Adipisicing aliqua veniam eiusmod in duis enim in occaecat enim nostrud.', 'uploads/1607991435.1779_IMG_1022.JPG', '2020-08-08 10:51:55'),
(2, 'Roseey', 'Nielsen', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant doctor', 'Voluptate deserunt mollit tempor commodo ullamco laboris sint labore. Velit Lorem nulla pariatur dolore aliqua cupidatat voluptate.', 'https://via.placeholder.com/400/771/fff/?text=user2', '2020-09-05 02:39:11'),
(3, 'JohannaT', 'AbbottS', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant doctors and specialists', 'Reprehenderit officia tempor cillum do ipsum fugiat incididunt Lorem. Fugiat non nostrud ad velit.', 'https://via.placeholder.com/400/959/fff/?text=user3', '2020-02-01 04:40:06'),
(4, 'Kristina', 'Oneal', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant doctor', 'Do sunt duis occaecat ad amet officia enim. Pariatur magna consequat incididunt elit aliqua laboris minim voluptate aute sunt mollit nostrud.', 'https://via.placeholder.com/400/816/fff/?text=user4', '2020-11-24 12:31:05'),
(5, 'Morrison', 'Simon', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant photographer', 'Duis est minim velit anim nulla. Veniam aliqua non non exercitation ex.', 'https://via.placeholder.com/400/835/fff/?text=user5', '2020-03-21 06:54:52'),
(6, 'Murphy', 'Corine', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant photographer', 'Labore officia reprehenderit culpa ut et sunt magna aute tempor reprehenderit. Eu et aliqua laboris Lorem aliquip culpa nisi ad laboris exercitation.', 'https://via.placeholder.com/400/854/fff/?text=user6', '2020-02-13 09:39:10'),
(7, 'Brittany', 'Herminia', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant photographer', 'Occaecat quis ea aliquip eu voluptate. Elit nostrud et sit eu commodo culpa magna ea ea pariatur.', 'https://via.placeholder.com/400/931/fff/?text=user7', '2020-03-31 01:30:37'),
(8, 'Madeline', 'Burch', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant photographer', 'Qui id nulla velit Lorem sit fugiat magna occaecat dolor quis sint ex. Lorem id cupidatat excepteur ipsum.', 'https://via.placeholder.com/400/731/fff/?text=user8', '2020-02-21 06:22:39'),
(9, 'Washington', 'Chasity', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant photographer', 'Et aliquip ipsum Lorem nulla aliqua non irure ullamco quis occaecat cillum occaecat dolore. Culpa sunt fugiat minim tempor.', 'https://via.placeholder.com/400/967/fff/?text=user9', '2020-09-25 09:55:30'),
(10, 'Bernice', 'Juliana', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant lover', 'Incididunt ut laborum occaecat qui nisi ad culpa fugiat Lorem consectetur. Laborum cupidatat proident minim pariatur magna culpa id aute ipsum pariatur magna ea.', 'https://via.placeholder.com/400/735/fff/?text=user10', '2020-11-20 06:55:48'),
(11, 'Nyshaaa', 'Shah', 'nobutametu', 'nobu@tametu.com', '7004bde843c7e7c5d18cb1d364b7666a', 'eating tametu', 'i am a tametu', 'https://via.placeholder.com/400/?text=USER', '2020-12-12 14:19:06'),
(12, 'HiPark', 'Hello?par', 'rohan', 'fnulnsdfsdfu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'fnusdfsdflnu@gmail.com', 'Test_about sdfsfsfsdf', 'https://via.placeholder.com/400/?text=USER', '2020-12-12 15:02:52'),
(13, 'Manali', 'Shah', 'user0', 'user0@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Plant-lover', 'Hello! I am the one who made this app and I love plants <3', 'uploads/1608055888.6728_IMG_0783.jpg', '2020-12-15 00:57:30'),
(14, '', '', 'you', 'you@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:42:50'),
(15, '', '', 'me', 'me@gmail.con', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:48:28'),
(16, '', '', 'mee', 'mee@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:52:37'),
(17, '', '', 'meet', 'meet@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:53:04'),
(18, '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:53:07'),
(19, '', '', 'met', 'met@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:53:43'),
(20, '', '', 'him', 'him@gmail.con', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 10:55:01'),
(21, '', '', 'mana', 'mana@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 12:37:03'),
(22, '', '', 'shy', 'shy@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 13:00:00'),
(23, '', '', 'craig', 'craig@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '', '', 'https://via.placeholder.com/400/?text=USER', '2020-12-15 14:43:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
