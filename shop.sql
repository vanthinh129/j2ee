-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 05:23 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `user_id`, `total`, `payment`, `address`, `phone`, `status`, `date`) VALUES
(1496828619447, 1496474618388, 350000, 'Bank transfer', '333333', '975308144', 0, '2017-06-07 09:43:39'),
(1496830655721, 1496474618388, 470000, 'Bank transfer', '12312', '975308144', 0, '2017-06-07 10:17:36'),
(1496894946950, 1496474618388, 350045, 'Bank transfer', '129', '975308144', 0, '2017-06-08 04:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE IF NOT EXISTS `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_detail_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `product_id`, `price`, `quantity`) VALUES
(4, 1463295350519, 1, 2, 1),
(5, 1463295350519, 2, 3, 1),
(6, 1463295350519, 3, 4, 2),
(7, 1496451078248, 1, 120000, 2),
(8, 1496451314491, 10, 140000, 1),
(9, 1496455649293, 4, 250000, 1),
(10, 1496457065366, 4, 250000, 1),
(11, 1496472653602, 3, 145000, 1),
(12, 1496472653602, 523, 45, 1),
(13, 1496473178415, 596, 45, 1),
(14, 1496476528492, 3, 145000, 1),
(15, 1496476585680, 596, 45, 1),
(16, 1496476685316, 2, 350000, 1),
(17, 1496476756105, 1, 120000, 1),
(18, 1496476896062, 3, 145000, 1),
(19, 1496827668984, 2, 350000, 1),
(20, 1496828365719, 2, 350000, 1),
(21, 1496828619447, 2, 350000, 1),
(22, 1496830655721, 1, 120000, 1),
(23, 1496830655721, 2, 350000, 1),
(24, 1496894946950, 2, 350000, 1),
(25, 1496894946950, 596, 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=352 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Váy'),
(2, 'Đầm'),
(3, 'Áo sơ mi'),
(4, 'Vest'),
(5, 'Quần'),
(351, 'Ruốc'),
(133, 'Điện thoại');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=998 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_image`, `product_price`, `product_description`) VALUES
(1, 1, 'product 1', 'images/1.jpg', 120000, 'abc…'),
(2, 1, 'product 2', 'images/2.jpg', 350000, 'abc…'),
(3, 1, 'product 3', 'images/3.jpg', 145000, 'abc…'),
(4, 2, 'product 4', 'images/4.jpg', 250000, 'abc…'),
(5, 2, 'product 5', 'images/5.jpg', 350000, 'abc…'),
(6, 2, 'product 6', 'images/6.jpg', 480000, 'abc…'),
(7, 3, 'product 7', 'images/7.jpg', 200000, 'abc…'),
(8, 3, 'product 8', 'images/8.jpg', 350000, 'abc…'),
(9, 4, 'product 9', 'images/9.jpg', 480000, 'abc…'),
(10, 4, 'product 10', 'images/10.jpg', 140000, 'abc…'),
(596, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>test</p>\r\n'),
(642, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(523, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(481, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(229, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(43, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(395, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(550, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(721, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n'),
(121, 1, 'Váy chống nắng', 'images/1.jpg', 45, '<p>tttt</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1496474766871 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_email`, `user_pass`) VALUES
(1, 'thinhnguyen', 'dev.xoso.net@gmail.com', '11111111'),
(2, 'vanthinh', 'vanthinh291@gmail.com', '00000000'),
(1496474618388, 'Thinh Nguyen', 'hoangthien0410@gmail.com', '123123'),
(1496474766870, 'Nguyen Van Thinh', 'vanthinh29111@gmail.com', '123123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
