-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 16, 2020 at 06:12 PM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `article_title` varchar(30) NOT NULL,
  `article_content` text NOT NULL,
  `article_timestamp` int(10) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `category_id`, `article_title`, `article_content`, `article_timestamp`) VALUES
(1, 1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1578772465),
(2, 2, 'Lorem Ipsum Dolor', 'Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Blandit turpis cursus in hac habitasse. Scelerisque eleifend donec pretium vulputate sapien. Sagittis aliquam malesuada bibendum arcu vitae. Pellentesque habitant morbi tristique senectus et netus. Arcu odio ut sem nulla pharetra diam sit amet. Sit amet purus gravida quis blandit turpis cursus. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Nascetur ridiculus mus mauris vitae ultricies leo integer. Eu feugiat pretium nibh ipsum consequat nisl vel. Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae. Venenatis cras sed felis eget velit aliquet sagittis. Volutpat diam ut venenatis tellus in metus vulputate eu scelerisque. Elit at imperdiet dui accumsan sit. Luctus venenatis lectus magna fringilla urna. Sed blandit libero volutpat sed cras ornare arcu dui. Egestas quis ipsum suspendisse ultrices gravida dictum fusce ut.\r\n\r\nLobortis feugiat vivamus at augue eget arcu dictum varius. Suspendisse sed nisi lacus sed viverra tellus in. Neque sodales ut etiam sit amet nisl purus. Integer quis auctor elit sed vulputate mi sit amet mauris. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget. Sollicitudin nibh sit amet commodo nulla. Vestibulum morbi blandit cursus risus. Hac habitasse platea dictumst quisque sagittis purus sit amet volutpat. Ante metus dictum at tempor commodo ullamcorper a. Est sit amet facilisis magna etiam tempor. Blandit cursus risus at ultrices. Semper quis lectus nulla at volutpat.', 1578772601),
(3, 3, 'Sit amet nulla', 'Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Phasellus faucibus scelerisque eleifend donec pretium. Quam quisque id diam vel quam elementum. Nulla aliquet enim tortor at auctor urna nunc. Nunc id cursus metus aliquam eleifend mi in nulla. Amet dictum sit amet justo. Eu lobortis elementum nibh tellus molestie nunc. Volutpat sed cras ornare arcu dui vivamus. Ullamcorper a lacus vestibulum sed arcu non odio euismod. Nullam ac tortor vitae purus faucibus. Nunc mattis enim ut tellus elementum sagittis vitae et leo. Tempus imperdiet nulla malesuada pellentesque.\r\n\r\nEget dolor morbi non arcu risus quis varius quam quisque. Velit dignissim sodales ut eu sem integer vitae justo eget. Pellentesque dignissim enim sit amet. Purus in mollis nunc sed. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Aliquam sem fringilla ut morbi tincidunt. Sapien pellentesque habitant morbi tristique senectus et. Pharetra convallis posuere morbi leo. Elementum integer enim neque volutpat ac. Quam viverra orci sagittis eu volutpat odio facilisis mauris sit. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis.\r\n\r\nSit amet nulla facilisi morbi tempus iaculis urna id volutpat. Phasellus faucibus scelerisque eleifend donec pretium. Quam quisque id diam vel quam elementum. Nulla aliquet enim tortor at auctor urna nunc. Nunc id cursus metus aliquam eleifend mi in nulla. Amet dictum sit amet justo. Eu lobortis elementum nibh tellus molestie nunc. Volutpat sed cras ornare arcu dui vivamus. Ullamcorper a lacus vestibulum sed arcu non odio euismod. Nullam ac tortor vitae purus faucibus. Nunc mattis enim ut tellus elementum sagittis vitae et leo. Tempus imperdiet nulla malesuada pellentesque.\r\n\r\nEget dolor morbi non arcu risus quis varius quam quisque. Velit dignissim sodales ut eu sem integer vitae justo eget. Pellentesque dignissim enim sit amet. Purus in mollis nunc sed. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Aliquam sem fringilla ut morbi tincidunt. Sapien pellentesque habitant morbi tristique senectus et. Pharetra convallis posuere morbi leo. Elementum integer enim neque volutpat ac. Quam viverra orci sagittis eu volutpat odio facilisis mauris sit. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis.', 1578772669),
(6, 2, 'Test', 'Test Test', 1579025056);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(15) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'News'),
(2, 'Sport'),
(3, 'Tech');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` text NOT NULL,
  `article_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `article_id` (`article_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `article_id`, `user_id`) VALUES
(1, 'Test Test Test', 1, 4),
(2, 'Test2', 2, 4),
(3, 'Test3', 3, 4),
(6, 'Hello', 1, 3),
(7, 'Hey', 2, 2),
(8, 'Ywa', 3, 4),
(10, '12345', 1, 2),
(11, 'Test Test', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) NOT NULL,
  `user_password` int(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(2, 'peter', 12345),
(3, 'devin', 54321),
(4, 'admin', 12345);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`article_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
