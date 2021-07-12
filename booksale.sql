-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 05:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booksale`
--

-- --------------------------------------------------------

--
-- Table structure for table `booksale_categories`
--

CREATE TABLE `booksale_categories` (
  `id` int(6) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booksale_categories`
--

INSERT INTO `booksale_categories` (`id`, `category`) VALUES
(1, 'Java'),
(2, 'Python'),
(3, 'Kotlin'),
(4, 'C'),
(5, 'php'),
(6, 'html');

-- --------------------------------------------------------

--
-- Table structure for table `booksale_config`
--

CREATE TABLE `booksale_config` (
  `id` int(6) UNSIGNED NOT NULL,
  `config` varchar(150) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booksale_config`
--

INSERT INTO `booksale_config` (`id`, `config`, `value`) VALUES
(1, 'cfg', '{\"websitetitle\":\"salEbook\",\"maincolor\":\"#00DB33\",\"secondcolor\":\"#84FF94\",\"about\":\"<p>Budaya Membaca!!<\\/p>\",\"language\":\"id\",\"thumbnailmode\":\"1\",\"logo\":\"\",\"adminwhatsapp\":\"082212653746\",\"currencysymbol\":\"Rp.\",\"baseurl\":\"http:\\/\\/localhost\\/booksale\\/\",\"enablerecentpostsliders\":\"1\",\"enablefacebookcomment\":\"1\",\"enablepublishdate\":\"1\",\"disabledecimals\":\"0\"}');

-- --------------------------------------------------------

--
-- Table structure for table `booksale_messages`
--

CREATE TABLE `booksale_messages` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` varchar(50) NOT NULL,
  `message` varchar(1300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `booksale_posts`
--

CREATE TABLE `booksale_posts` (
  `id` int(6) UNSIGNED NOT NULL,
  `postid` varchar(70) NOT NULL,
  `catid` int(6) NOT NULL,
  `normalprice` float NOT NULL,
  `discountprice` float NOT NULL,
  `title` varchar(300) NOT NULL,
  `time` varchar(150) NOT NULL,
  `options` varchar(200) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `moreimages` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booksale_posts`
--

INSERT INTO `booksale_posts` (`id`, `postid`, `catid`, `normalprice`, `discountprice`, `title`, `time`, `options`, `picture`, `moreimages`, `content`) VALUES
(2, 'wgpqlkctoc', 2, 67000, 0, 'Python Coding and Programming', '1626100667889', '', 'w7gu1884y7.jpg', '', '<p>Python Coding and Programming</p>'),
(3, 'wzncfhbzyx', 1, 56000, 0, 'Learn Java 12 Programming', '1626100687745', '', 'awypkj0ub8.jpg', '', '<p>Learn Java 12 Programming</p>'),
(4, 'xeadfigrxh', 4, 99000, 0, 'C Simple Programming with SQL Server', '1626100705859', '', '5uru0dyiyp.jpg', '', '<p>C Simple Programming with SQL Server</p>'),
(5, 'lsekyafqdb', 5, 56000, 0, 'Aplikasi Pemrograman Web  Dinamis PHP dan MySQL ', '1626101788827', '', 'uel3gtoths.jpg', '', '<p>Aplikasi Pemrograman Web&nbsp; Dinamis PHP dan MySQL&nbsp;</p>'),
(6, 'lkxojyitcj', 4, 76000, 0, 'Algoritma dan Pemrograman dalam Bahasa Pascal, C dan C++', '1626101896595', '', '85sb3xtk68.jpg', '', '<p><span style=\"font-size: 14px;\">Algoritma dan Pemrograman dalam Bahasa Pascal, C dan C++</span></p>'),
(7, 'hzmhabohct', 6, 89000, 0, 'Dasar-Dasar Penguasaan Pemrograman Web', '1626101962024', '', '50j4fbj1gz.jpg', '', '<p><span style=\"font-size: 14px;\">Dasar-Dasar Penguasaan Pemrograman Web</span></p>'),
(8, 'fjyhejhtpi', 3, 88000, 0, 'Android Development with Kotlin', '1626102022749', '', 'kqvhfxt36q.jpg', '', '<p><span style=\"font-size: 14px;\">Android Development with Kotlin</span></p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booksale_categories`
--
ALTER TABLE `booksale_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booksale_config`
--
ALTER TABLE `booksale_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booksale_messages`
--
ALTER TABLE `booksale_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booksale_posts`
--
ALTER TABLE `booksale_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booksale_categories`
--
ALTER TABLE `booksale_categories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booksale_config`
--
ALTER TABLE `booksale_config`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booksale_messages`
--
ALTER TABLE `booksale_messages`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booksale_posts`
--
ALTER TABLE `booksale_posts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
