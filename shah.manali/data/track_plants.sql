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
-- Table structure for table `track_plants`
--

CREATE TABLE `track_plants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `shape` varchar(64) NOT NULL,
  `pattern` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_plants`
--

INSERT INTO `track_plants` (`id`, `user_id`, `name`, `type`, `category`, `shape`, `pattern`, `description`, `img`, `date_create`) VALUES
(1, 8, 'Xanide', 'Leaf', 'Sunburst', 'Ball', 'Thorns', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/836/fff/?text=Xanide', '2020-03-31 12:47:13'),
(2, 2, 'kjhkjlll', 'Leaf', 'Jade', 'Ear', 'Pointy-tips', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'uploads/1607995406.9716_IMG_1022.JPG', '2020-05-26 01:38:57'),
(3, 3, 'Eyewax', 'Flower', 'Jade', 'Ball', 'Thorns', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/874/fff/?text=Eyewax', '2020-10-31 02:36:15'),
(4, 10, 'Furnitech', 'Flower', 'Zebra', 'Rose', 'Fine-haired', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/963/fff/?text=Furnitech', '2020-10-21 07:58:58'),
(5, 4, 'Digigen', 'Leaf', 'Jade', 'Ear', 'Striped', 'They are known for sprouting colorful flower clusters that look great in a summer garden.', 'https://via.placeholder.com/400/995/fff/?text=Digigen', '2020-05-22 10:49:33'),
(6, 10, 'Virva', 'Flower', 'Hens & Chicks', 'Ball', 'Striped', 'They are known for sprouting colorful flower clusters that look great in a summer garden.', 'https://via.placeholder.com/400/711/fff/?text=Virva', '2020-08-24 11:35:09'),
(7, 10, 'Remotion', 'Flower', 'Jade', 'Tongue', 'Striped', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/754/fff/?text=Remotion', '2020-06-05 09:35:57'),
(8, 5, 'Netility', 'Cactus', 'Zebra', 'Tongue', 'Thorns', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/785/fff/?text=Netility', '2020-05-09 09:03:51'),
(9, 9, 'Exosis', 'Leaf', 'Zebra', 'Ear', 'Thorns', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/977/fff/?text=Exosis', '2020-06-30 06:40:53'),
(10, 5, 'Emoltra', 'Leaf', 'Jade', 'Rose', 'Striped', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/974/fff/?text=Emoltra', '2020-02-08 12:51:11'),
(11, 7, 'Zillacon', 'Leaf', 'Jade', 'Rose', 'Fine-haired', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/928/fff/?text=Zillacon', '2020-03-19 05:41:05'),
(12, 8, 'Neptide', 'Cactus', 'Sunburst', 'Rose', 'Pointy-tips', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/965/fff/?text=Neptide', '2020-10-24 07:29:33'),
(13, 9, 'Limage', 'Cactus', 'Jade', 'Rose', 'Fine-haired', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/913/fff/?text=Limage', '2020-04-07 11:20:02'),
(14, 7, 'Ewaves', 'Cactus', 'Zebra', 'Ear', 'Thorns', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/880/fff/?text=Ewaves', '2020-05-11 06:38:31'),
(15, 6, 'Netplax', 'Leaf', 'Hens & Chicks', 'Tongue', 'Fine-haired', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/795/fff/?text=Netplax', '2020-10-07 08:59:17'),
(16, 3, 'Steelfab', 'Flower', 'Sunburst', 'Ear', 'Fine-haired', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/872/fff/?text=Steelfab', '2020-10-06 07:11:07'),
(17, 3, 'Conferia', 'Leaf', 'Zebra', 'Ear', 'Thorns', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/793/fff/?text=Conferia', '2020-02-08 03:55:39'),
(18, 9, 'Cedward', 'Leaf', 'Zebra', 'Rose', 'Striped', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/900/fff/?text=Cedward', '2020-07-28 05:03:39'),
(19, 8, 'Frosnex', 'Leaf', 'Sunburst', 'Rose', 'Pointy-tips', 'They are known for sprouting colorful flower clusters that look great in a summer garden.', 'https://via.placeholder.com/400/914/fff/?text=Frosnex', '2020-03-11 12:08:55'),
(20, 6, 'Capscreen', 'Flower', 'Zebra', 'Ear', 'Striped', 'The leaves of this plant start off as a light green shade that turns darker in the sun.', 'https://via.placeholder.com/400/895/fff/?text=Capscreen', '2020-01-29 07:13:43'),
(21, 6, 'Ezent', 'Flower', 'Hens & Chicks', 'Ear', 'Fine-haired', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/761/fff/?text=Ezent', '2020-07-24 06:32:52'),
(22, 10, 'Vinch', 'Leaf', 'Jade', 'Ball', 'Thorns', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/851/fff/?text=Vinch', '2020-10-10 07:04:30'),
(23, 1, 'sheekal', 'Leaf', 'Jade', 'Ear', 'Fine-haired', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'uploads/1607989041.9084_IMG_1022.JPG', '2020-09-28 08:10:10'),
(24, 5, 'Oulu', 'Cactus', 'Jade', 'Rose', 'Fine-haired', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/975/fff/?text=Oulu', '2020-04-23 05:34:51'),
(25, 4, 'Polarium', 'Cactus', 'Sunburst', 'Rose', 'Fine-haired', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/801/fff/?text=Polarium', '2020-06-11 11:50:11'),
(26, 5, 'Apextri', 'Cactus', 'Sunburst', 'Tongue', 'Fine-haired', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/746/fff/?text=Apextri', '2020-01-16 11:50:44'),
(27, 5, 'Genmy', 'Cactus', 'Jade', 'Tongue', 'Pointy-tips', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/790/fff/?text=Genmy', '2020-09-17 12:15:01'),
(28, 5, 'Cablam', 'Flower', 'Jade', 'Ball', 'Pointy-tips', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/778/fff/?text=Cablam', '2020-12-03 02:17:09'),
(29, 7, 'Exoblue', 'Flower', 'Sunburst', 'Ear', 'Striped', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/769/fff/?text=Exoblue', '2020-09-17 04:01:29'),
(30, 10, 'Candecor', 'Leaf', 'Sunburst', 'Ear', 'Thorns', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/823/fff/?text=Candecor', '2020-11-25 03:51:34'),
(31, 1, 'Boilcat', 'Cactus', 'Zebra', 'Ball', 'Pointy-tips', 'They are known for sprouting colorful flower clusters that look great in a summer garden.', 'https://via.placeholder.com/400/707/fff/?text=Boilcat', '2020-06-17 12:55:55'),
(32, 4, 'Tingles', 'Cactus', 'Jade', 'Rose', 'Fine-haired', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/724/fff/?text=Tingles', '2020-01-10 11:57:44'),
(33, 8, 'Signity', 'Leaf', 'Hens & Chicks', 'Tongue', 'Pointy-tips', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/714/fff/?text=Signity', '2020-02-26 06:17:50'),
(34, 3, 'Datagene', 'Cactus', 'Sunburst', 'Tongue', 'Pointy-tips', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/797/fff/?text=Datagene', '2020-06-19 07:25:37'),
(35, 1, 'Dentrex', 'Leaf', 'Sunburst', 'Rose', 'Pointy-tips', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/877/fff/?text=Dentrex', '2020-11-07 07:38:29'),
(36, 10, 'Idego', 'Flower', 'Zebra', 'Tongue', 'Striped', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/943/fff/?text=Idego', '2020-06-27 10:28:19'),
(37, 5, 'Zillidium', 'Flower', 'Jade', 'Ball', 'Striped', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/982/fff/?text=Zillidium', '2020-01-21 11:08:43'),
(38, 4, 'Senmei', 'Flower', 'Zebra', 'Rose', 'Pointy-tips', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/881/fff/?text=Senmei', '2020-04-25 09:51:42'),
(39, 3, 'Rockabye', 'Leaf', 'Jade', 'Tongue', 'Striped', 'They are known for sprouting colorful flower clusters that look great in a summer garden.', 'https://via.placeholder.com/400/756/fff/?text=Rockabye', '2020-07-12 08:38:49'),
(40, 8, 'Earthmark', 'Cactus', 'Sunburst', 'Tongue', 'Thorns', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/746/fff/?text=Earthmark', '2020-04-21 06:20:09'),
(41, 2, 'Qualitex', 'Cactus', 'Jade', 'Ear', 'Thorns', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'uploads/1607995959.3779_IMG_1022.JPG', '2020-12-01 08:51:06'),
(42, 6, 'Rotodyne', 'Leaf', 'Sunburst', 'Ball', 'Striped', 'They are known for sprouting colorful flower clusters that look great in a summer garden.', 'https://via.placeholder.com/400/841/fff/?text=Rotodyne', '2020-10-08 06:06:55'),
(43, 4, 'Proflex', 'Cactus', 'Hens & Chicks', 'Tongue', 'Striped', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/874/fff/?text=Proflex', '2020-04-10 10:32:47'),
(44, 8, 'Marvane', 'Cactus', 'Sunburst', 'Rose', 'Fine-haired', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/869/fff/?text=Marvane', '2020-10-30 06:17:42'),
(45, 7, 'Emergent', 'Flower', 'Jade', 'Ear', 'Striped', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/810/fff/?text=Emergent', '2020-02-03 04:14:20'),
(46, 5, 'Zolarity', 'Flower', 'Hens & Chicks', 'Tongue', 'Fine-haired', 'This succulent prefers full sun, which is why it grows best in outdoor gardens.', 'https://via.placeholder.com/400/769/fff/?text=Zolarity', '2020-03-12 06:44:55'),
(47, 9, 'Emtrak', 'Cactus', 'Zebra', 'Rose', 'Thorns', 'Most leaves have rounded edges that with good care can live up to 100 years!', 'https://via.placeholder.com/400/840/fff/?text=Emtrak', '2020-03-13 05:27:30'),
(48, 4, 'Earthwax', 'Cactus', 'Sunburst', 'Ear', 'Thorns', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/968/fff/?text=Earthwax', '2020-03-26 02:54:21'),
(49, 8, 'Digifad', 'Flower', 'Zebra', 'Rose', 'Thorns', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/832/fff/?text=Digifad', '2020-04-17 09:34:26'),
(50, 7, 'Zytrex', 'Flower', 'Zebra', 'Ear', 'Fine-haired', 'They are most commonly placed in flower beds or borders and like to grow together in clusters.', 'https://via.placeholder.com/400/890/fff/?text=Zytrex', '2020-10-05 02:14:53'),
(251, 1, 'planter', 'leaf', 'jade', 'ear', 'zebra', 'lkdjlfksldkfnklasdkn', 'https://via.placeholder.com/400/?text=plant', '2020-12-12 02:21:13'),
(252, 11, 'sweety', 'Leaf', 'jade', 'ear', 'zebra', 'gfggjihioyuo', 'https://via.placeholder.com/400/?text=plant', '2020-12-12 14:20:11'),
(258, 2, 'aloe', 'Leaf', 'Sunburst', 'Ball', 'Thorns', 'Thi hath pointy-tips & thorns', 'uploads/1608017274.5656_e0c3f51c-953b-4063-a6cb-3ae58651a59c.JPG', '2020-12-14 18:33:04'),
(259, 2, 'Sheei', 'Flower', 'Jade', 'Tongue', 'Fine-haired', 'sdgfgfdhhfgjfjffgh', 'https://via.placeholder.com/400/?text=plant', '2020-12-14 21:33:14'),
(260, 2, '', 'Leaf', 'Sunburst', 'Ball', 'Thorns', '', 'https://via.placeholder.com/400/?text=plant', '2020-12-14 21:33:23'),
(261, 13, 'Aloe', 'Cactus', 'Sunburst', 'Tongue', 'Thorns', 'Great for health benefits', 'uploads/1608056945.7138_e0c3f51c-953b-4063-a6cb-3ae58651a59c.JPG', '2020-12-15 11:09:11'),
(262, 13, 'Snow white', 'Flower', 'Zebra', 'Ear', 'Striped', 'White flower plant.', 'uploads/1608066782.467_bc09ddd8-eb17-48b1-acaf-6c2fcad009fa.JPG', '2020-12-15 11:09:24'),
(267, 13, 'Sharpy', 'Cactus', 'Hens & Chicks', 'Ball', 'Pointy-tips', 'This plant is too sharp', 'uploads/1608057072.9766_d6d6d77b-df31-42dd-b433-59815e120031.JPG', '2020-12-15 11:30:28'),
(269, 13, 'Sia', 'Leaf', 'Sunburst', 'Ear', 'Thorns', 'As beautiful as Sia', 'uploads/1608057239.4939_cf8866c3-319b-4b46-8024-b88d22de0723.JPG', '2020-12-15 11:33:42'),
(266, 13, 'Pinky', 'Flower', 'Jade', 'Ear', 'Thorns', 'pink flower plant', 'uploads/1608056761.6131_df20572a-adfc-44e7-a6e8-744165b2e952.JPG', '2020-12-15 11:23:17'),
(270, 13, 'Lush', 'Flower', 'Hens & Chicks', 'Rose', 'Pointy-tips', 'Happy healthy succulent', 'uploads/1608057391.4385_153bc6d9-6f07-4861-9c7c-75938619c7a1.JPG', '2020-12-15 11:36:16'),
(271, 23, 'good plant', 'Cactus', 'Hens & Chicks', 'Ear', 'Pointy-tips', '', 'https://via.placeholder.com/400/?text=plant', '2020-12-15 14:45:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_plants`
--
ALTER TABLE `track_plants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_plants`
--
ALTER TABLE `track_plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
