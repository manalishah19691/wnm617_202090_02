-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2020 at 05:01 PM
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
  `color` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_plants`
--

INSERT INTO `track_plants` (`id`, `user_id`, `name`, `type`, `color`, `description`, `img`, `date_create`) VALUES
(1, 1, 'Tetak', 'leaf', 'while', 'Enim consequat ut officia in irure. Est nulla mollit do est magna qui. Nostrud Lorem aute nisi tempor magna labore anim voluptate cillum aute excepteur.', 'https://via.placeholder.com/400/784/fff/?text=Tetak', '2020-03-04 05:08:50'),
(2, 9, 'Limage', 'leaf', 'green', 'Anim commodo deserunt non culpa aliquip cillum et cillum et sint eiusmod irure voluptate. Nostrud qui enim proident ex. Enim deserunt culpa culpa consectetur eiusmod et mollit aliqua.', 'https://via.placeholder.com/400/751/fff/?text=Limage', '2020-02-11 06:26:39'),
(3, 8, 'Maximind', 'flower', 'rainbow', 'Proident fugiat non pariatur eiusmod consectetur magna amet magna commodo cillum laboris enim dolore. Pariatur dolor officia aliquip adipisicing. Ipsum cillum ex pariatur laborum cupidatat labore quis reprehenderit irure do Lorem eu.', 'https://via.placeholder.com/400/823/fff/?text=Maximind', '2020-07-15 09:20:25'),
(4, 8, 'Printspan', 'leaf', 'lime', 'Fugiat est culpa nostrud sunt ad sint. Culpa pariatur anim non nulla. Adipisicing aliquip sunt aliqua aliquip amet irure aliqua.', 'https://via.placeholder.com/400/938/fff/?text=Printspan', '2020-01-06 10:43:07'),
(5, 7, 'Crustatia', 'leaf', 'green', 'Ad amet qui exercitation officia. Et non adipisicing laboris sunt magna. In Lorem velit est laboris dolor do tempor.', 'https://via.placeholder.com/400/897/fff/?text=Crustatia', '2020-06-16 05:46:39'),
(6, 2, 'Fangold', 'flower', 'orange', 'Lorem deserunt consequat non ad irure magna ea id elit. Deserunt ut consequat excepteur et esse anim consequat enim aliqua aute laboris eu. Laboris eu commodo id ad ea.', 'https://via.placeholder.com/400/851/fff/?text=Fangold', '2020-04-06 03:48:37'),
(7, 2, 'Hairport', 'leaf', 'lime', 'Anim fugiat excepteur nostrud consequat sint occaecat. Laboris esse aliquip labore ullamco enim minim ex qui et officia esse qui eiusmod. Labore irure laborum ullamco tempor laborum mollit qui incididunt deserunt et laboris tempor magna cillum.', 'https://via.placeholder.com/400/723/fff/?text=Hairport', '2020-10-18 10:47:50'),
(8, 1, 'Applidec', 'leaf', 'green', 'Proident id ut laboris sint adipisicing pariatur nostrud laboris consectetur enim commodo. Sit fugiat id ad dolore ullamco irure cupidatat adipisicing qui. Fugiat ut velit est do.', 'https://via.placeholder.com/400/746/fff/?text=Applidec', '2020-06-13 02:56:43'),
(9, 7, 'Amtap', 'leaf', 'while', 'Ad in laboris id reprehenderit non dolor ad. Cupidatat magna cupidatat ipsum magna laborum culpa ex. Consectetur cupidatat ipsum consequat consequat reprehenderit elit minim eiusmod fugiat ut laborum.', 'https://via.placeholder.com/400/804/fff/?text=Amtap', '2020-10-28 02:46:02'),
(10, 8, 'Xixan', 'flower', 'purple', 'Ad aliqua laborum reprehenderit enim elit sint tempor Lorem. Amet qui occaecat laborum ut sunt ad aute id aliqua ea excepteur nulla. Ex aliquip in consequat ipsum mollit quis sint.', 'https://via.placeholder.com/400/846/fff/?text=Xixan', '2020-05-20 04:05:59'),
(11, 9, 'Enthaze', 'flower', 'orange', 'Voluptate nostrud ipsum velit ad ut voluptate aliqua mollit nulla deserunt velit labore sint reprehenderit. Excepteur culpa sint adipisicing labore sit amet aliqua pariatur. Cupidatat enim exercitation proident enim incididunt.', 'https://via.placeholder.com/400/761/fff/?text=Enthaze', '2020-05-09 04:24:41'),
(12, 3, 'Accidency', 'leaf', 'while', 'Consequat eu Lorem adipisicing Lorem. Laborum sunt nisi anim exercitation exercitation amet aliqua adipisicing dolore qui cupidatat. Magna mollit magna voluptate nisi anim amet eiusmod quis.', 'https://via.placeholder.com/400/708/fff/?text=Accidency', '2020-06-29 04:28:32'),
(13, 5, 'Olucore', 'leaf', 'while', 'Culpa reprehenderit ut esse ea laborum cillum. Ea est enim quis mollit ex sit cillum eu. Sint quis dolore laborum pariatur sit dolore elit non officia eiusmod proident exercitation proident aliquip.', 'https://via.placeholder.com/400/707/fff/?text=Olucore', '2020-10-08 11:31:22'),
(14, 8, 'Exodoc', 'flower', 'orange', 'Dolore nulla laboris eiusmod velit consequat labore id velit culpa. Ex magna minim consectetur sint do mollit ipsum eiusmod. Adipisicing dolor commodo officia nisi.', 'https://via.placeholder.com/400/867/fff/?text=Exodoc', '2020-05-07 07:04:24'),
(15, 2, 'Genmy', 'flower', 'rainbow', 'Proident non sunt nulla est irure irure nostrud duis magna qui adipisicing laboris. Tempor labore sit proident do ut pariatur est veniam. Eu dolore consectetur reprehenderit nostrud nulla ea non veniam deserunt excepteur.', 'https://via.placeholder.com/400/990/fff/?text=Genmy', '2020-03-17 09:27:06'),
(16, 10, 'Autograte', 'flower', 'purple', 'Do laborum elit amet sit Lorem officia cupidatat proident sit. Elit ut amet nulla adipisicing. Anim elit fugiat sunt id occaecat anim ipsum fugiat officia ullamco consectetur.', 'https://via.placeholder.com/400/911/fff/?text=Autograte', '2020-05-09 07:16:46'),
(17, 10, 'Reversus', 'leaf', 'while', 'Culpa excepteur velit cupidatat ullamco deserunt amet do magna cupidatat duis ea sint ipsum. Laboris aliquip qui sint do labore qui ut exercitation adipisicing ut velit adipisicing et. Amet deserunt duis sint cupidatat laborum irure irure occaecat ex.', 'https://via.placeholder.com/400/748/fff/?text=Reversus', '2020-09-05 06:34:59'),
(18, 3, 'Isostream', 'leaf', 'while', 'Quis incididunt excepteur irure ea ad amet occaecat ipsum nostrud. Quis id nulla elit consequat consectetur id nulla aute sit ea id. Sit adipisicing ut aliquip consectetur adipisicing mollit eiusmod Lorem.', 'https://via.placeholder.com/400/798/fff/?text=Isostream', '2020-04-22 03:47:38'),
(19, 3, 'Isologics', 'flower', 'orange', 'Dolore culpa laboris minim est laboris tempor labore deserunt fugiat enim do. Elit pariatur exercitation labore in occaecat officia commodo eu consequat culpa ullamco nisi veniam sint. Aute magna elit magna tempor non fugiat et nulla qui consequat tempor aliqua anim.', 'https://via.placeholder.com/400/759/fff/?text=Isologics', '2020-02-14 03:51:09'),
(20, 10, 'Aquazure', 'flower', 'rainbow', 'Proident sunt culpa cillum culpa qui non occaecat. Reprehenderit ut tempor do dolor. Do occaecat laborum ad in duis reprehenderit non voluptate velit proident non anim consequat duis.', 'https://via.placeholder.com/400/832/fff/?text=Aquazure', '2020-04-06 08:00:02'),
(21, 8, 'Futurize', 'flower', 'rainbow', 'Aute ad consequat consequat id proident labore labore. Mollit dolor sit irure anim tempor tempor cupidatat ut nostrud. Nulla Lorem anim cupidatat id enim aliquip et cillum aliquip dolore eiusmod cillum.', 'https://via.placeholder.com/400/782/fff/?text=Futurize', '2020-01-30 01:48:15'),
(22, 7, 'Vetron', 'leaf', 'green', 'Cillum sit eu qui esse excepteur laborum ut pariatur ad qui et. Mollit ad aliqua qui aute nulla magna nulla dolor irure elit elit irure ut voluptate. Laborum proident veniam sunt velit ullamco cupidatat esse est reprehenderit fugiat fugiat fugiat.', 'https://via.placeholder.com/400/781/fff/?text=Vetron', '2020-06-09 09:23:33'),
(23, 10, 'Katakana', 'leaf', 'while', 'Labore est amet deserunt est enim. Cillum mollit velit anim culpa officia aliquip cupidatat deserunt. Eu et voluptate excepteur aliqua ad et cillum irure.', 'https://via.placeholder.com/400/851/fff/?text=Katakana', '2020-04-06 08:25:22'),
(24, 9, 'Supremia', 'flower', 'purple', 'Et aliqua laborum proident sint irure qui esse ad amet dolor in laboris labore excepteur. Dolore ea commodo laboris ad consequat. In proident esse tempor veniam amet est deserunt pariatur consequat esse.', 'https://via.placeholder.com/400/717/fff/?text=Supremia', '2020-07-20 01:57:53'),
(25, 4, 'Bluegrain', 'flower', 'orange', 'Do irure sint mollit magna Lorem. Occaecat minim do ipsum consectetur. Veniam aute dolore sit consectetur aliquip amet nulla ut voluptate anim excepteur.', 'https://via.placeholder.com/400/933/fff/?text=Bluegrain', '2020-05-30 03:28:47'),
(26, 1, 'Xylar', 'leaf', 'lime', 'Ex minim tempor irure cupidatat enim. Minim minim enim ad qui nostrud magna elit exercitation. Lorem exercitation laboris ullamco esse do do veniam labore.', 'https://via.placeholder.com/400/733/fff/?text=Xylar', '2020-07-21 11:28:01'),
(27, 4, 'Housedown', 'flower', 'purple', 'Pariatur incididunt esse cupidatat mollit ullamco excepteur labore. Proident tempor fugiat in pariatur laborum tempor occaecat sunt id. Voluptate nisi ullamco fugiat veniam dolor aliqua minim.', 'https://via.placeholder.com/400/816/fff/?text=Housedown', '2020-02-15 07:40:52'),
(28, 3, 'Dancity', 'flower', 'rainbow', 'Ipsum aute ut nisi esse eu adipisicing reprehenderit. Sint minim do ex et exercitation minim enim nostrud ullamco minim sint pariatur eiusmod. Proident sit eu aute nisi esse excepteur tempor ullamco ullamco ea excepteur elit.', 'https://via.placeholder.com/400/741/fff/?text=Dancity', '2020-01-30 05:52:40'),
(29, 8, 'Zillanet', 'leaf', 'green', 'Ullamco enim aliquip sit labore et voluptate officia ullamco enim. Ut ex fugiat excepteur incididunt veniam dolore quis quis velit in. Adipisicing nulla in do veniam fugiat velit incididunt consequat sint mollit sint nostrud incididunt.', 'https://via.placeholder.com/400/999/fff/?text=Zillanet', '2020-02-08 05:38:19'),
(30, 2, 'Nurplex', 'flower', 'orange', 'Qui voluptate ex non nisi voluptate sunt est cillum duis ad aute sint veniam duis. Voluptate amet cupidatat veniam duis et laborum fugiat eu consectetur eu. Esse eu nisi adipisicing pariatur consectetur non nulla labore nostrud culpa occaecat.', 'https://via.placeholder.com/400/993/fff/?text=Nurplex', '2020-07-25 11:26:37'),
(31, 2, 'Microluxe', 'leaf', 'while', 'Officia reprehenderit ipsum est consectetur minim qui ut laboris aliqua. Consequat id deserunt irure Lorem laboris cillum proident culpa esse adipisicing. Aliqua laborum aute laboris sunt.', 'https://via.placeholder.com/400/718/fff/?text=Microluxe', '2020-05-08 10:59:48'),
(32, 1, 'Talae', 'leaf', 'lime', 'Esse proident esse et Lorem exercitation aute irure sunt culpa ut velit consectetur dolore. Velit ea culpa pariatur dolor ea minim sunt elit aliquip consequat officia. Culpa aute incididunt magna ipsum sunt mollit tempor eiusmod sit fugiat proident dolor.', 'https://via.placeholder.com/400/758/fff/?text=Talae', '2020-03-13 07:55:07'),
(33, 10, 'Slambda', 'leaf', 'while', 'Id quis ea laboris velit laboris cillum. Veniam eu cillum excepteur adipisicing exercitation sint ex irure laborum est eiusmod commodo nostrud irure. Id tempor fugiat magna aliqua sint.', 'https://via.placeholder.com/400/723/fff/?text=Slambda', '2020-02-24 12:50:22'),
(34, 7, 'Techtrix', 'leaf', 'lime', 'Sit ex eiusmod reprehenderit excepteur quis in. Exercitation voluptate in sit ipsum consequat aliqua Lorem ullamco labore adipisicing. Sunt sint ipsum dolor consequat fugiat voluptate non nostrud ad enim nostrud sit ut.', 'https://via.placeholder.com/400/769/fff/?text=Techtrix', '2020-08-21 02:54:07'),
(35, 9, 'Handshake', 'flower', 'orange', 'Ullamco magna irure officia do voluptate est qui laboris incididunt nisi minim do ea. Consequat ex magna fugiat sunt. Laboris commodo et dolore sint aute aliqua non minim incididunt laborum tempor.', 'https://via.placeholder.com/400/743/fff/?text=Handshake', '2020-02-09 12:19:47'),
(36, 9, 'Zoinage', 'flower', 'purple', 'Qui pariatur fugiat occaecat do elit pariatur ut veniam. Proident id ut enim fugiat non non. Aliqua non esse cupidatat eu nostrud eu enim et ut magna duis aliquip.', 'https://via.placeholder.com/400/794/fff/?text=Zoinage', '2020-10-28 07:22:43'),
(37, 8, 'Flexigen', 'flower', 'rainbow', 'Esse velit do ex aliqua ex eiusmod reprehenderit nisi sunt labore. Cillum amet tempor nostrud amet non magna anim officia. Est ut ea et minim dolor eiusmod nulla consectetur ea ullamco enim magna anim ullamco.', 'https://via.placeholder.com/400/862/fff/?text=Flexigen', '2020-10-03 01:47:14'),
(38, 3, 'Tourmania', 'leaf', 'while', 'Et sunt mollit aliquip nisi eu ad aliquip dolore et. Dolor magna mollit non commodo veniam. Veniam nisi mollit aliquip dolor Lorem sunt ut.', 'https://via.placeholder.com/400/916/fff/?text=Tourmania', '2020-03-07 11:22:34'),
(39, 2, 'Corporana', 'leaf', 'green', 'Magna voluptate minim minim pariatur ad labore aliquip. Proident anim anim aliqua duis qui laboris aliquip adipisicing aliqua commodo laborum voluptate laboris. Quis cillum veniam ullamco Lorem cillum magna.', 'https://via.placeholder.com/400/965/fff/?text=Corporana', '2020-03-27 05:24:53'),
(40, 9, 'Emoltra', 'leaf', 'lime', 'Mollit laboris incididunt excepteur eu. Labore dolor ex ipsum esse consectetur consectetur non aliquip aute. Amet mollit duis irure quis incididunt et proident voluptate aliquip.', 'https://via.placeholder.com/400/760/fff/?text=Emoltra', '2020-04-24 05:09:30'),
(41, 6, 'Cemention', 'leaf', 'green', 'Amet id nostrud laboris deserunt pariatur tempor ea. Ad excepteur ut ad officia incididunt esse eiusmod duis id labore sit excepteur pariatur cillum. Deserunt ex elit ad nisi minim labore dolore officia aute nisi.', 'https://via.placeholder.com/400/906/fff/?text=Cemention', '2020-08-10 04:56:21'),
(42, 10, 'Enquility', 'leaf', 'lime', 'Et Lorem ea ad dolore labore incididunt eu id est nulla. Aliquip incididunt aliquip cillum velit magna aute. Ut mollit est eu quis ea in nulla exercitation est consectetur aliquip.', 'https://via.placeholder.com/400/959/fff/?text=Enquility', '2020-08-01 08:35:05'),
(43, 2, 'Xinware', 'flower', 'rainbow', 'Magna ad commodo in culpa velit proident deserunt tempor Lorem. Ad laboris dolore cupidatat velit occaecat ad deserunt magna pariatur sint. Deserunt amet laboris consectetur qui Lorem aliquip.', 'https://via.placeholder.com/400/893/fff/?text=Xinware', '2020-06-06 06:52:25'),
(44, 3, 'Orbaxter', 'flower', 'purple', 'Aute incididunt do eu aliquip consectetur. Reprehenderit enim irure Lorem ipsum excepteur enim est duis proident. Aute aliqua qui amet incididunt ad aliqua enim quis irure fugiat nisi mollit dolor.', 'https://via.placeholder.com/400/985/fff/?text=Orbaxter', '2020-01-11 06:19:43'),
(45, 6, 'Zerbina', 'leaf', 'lime', 'Mollit laboris id cupidatat labore dolore in sit cillum sit dolore et. Do do duis ex magna ut anim dolor anim proident. Adipisicing cupidatat duis et laborum pariatur reprehenderit magna nulla nulla elit et nostrud.', 'https://via.placeholder.com/400/931/fff/?text=Zerbina', '2020-02-28 12:38:21'),
(46, 9, 'Zaggle', 'flower', 'orange', 'Nisi aliqua tempor occaecat laboris consequat magna et excepteur reprehenderit duis non proident sit ex. Cupidatat laborum aute proident dolore deserunt fugiat veniam mollit sit cillum. Dolore aute consectetur cupidatat nulla proident laboris in est non.', 'https://via.placeholder.com/400/919/fff/?text=Zaggle', '2020-10-15 10:28:55'),
(47, 6, 'Nipaz', 'leaf', 'lime', 'Veniam adipisicing eu sunt dolore aliquip fugiat cupidatat dolor commodo voluptate mollit labore pariatur veniam. Laboris et ad tempor proident aliquip aliquip. Esse nostrud in et labore irure eiusmod magna eu amet tempor.', 'https://via.placeholder.com/400/708/fff/?text=Nipaz', '2020-04-04 06:02:28'),
(48, 1, 'Kidstock', 'leaf', 'green', 'Mollit minim Lorem consectetur deserunt commodo. Velit laboris cupidatat incididunt fugiat esse enim duis voluptate. Eiusmod dolor reprehenderit irure est ut ullamco laborum ad consectetur et dolore non laborum.', 'https://via.placeholder.com/400/737/fff/?text=Kidstock', '2020-09-04 05:51:29'),
(49, 9, 'Hinway', 'leaf', 'lime', 'Ad aliquip ullamco anim laborum laborum laborum incididunt exercitation eiusmod enim eiusmod. Eu sint reprehenderit nostrud sint eu nulla. Officia mollit cillum commodo non elit irure aliqua tempor.', 'https://via.placeholder.com/400/794/fff/?text=Hinway', '2020-02-16 12:08:28'),
(50, 2, 'Ohmnet', 'leaf', 'green', 'Cupidatat enim consectetur nostrud occaecat amet ut consectetur. Deserunt voluptate magna excepteur laboris ipsum laborum qui in. Amet eu magna nostrud voluptate excepteur officia non irure nostrud anim.', 'https://via.placeholder.com/400/889/fff/?text=Ohmnet', '2020-02-29 05:35:02');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
