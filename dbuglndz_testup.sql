-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2016 at 11:23 AM
-- Server version: 5.5.44-37.3-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbuglndz_testup`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(250) NOT NULL,
  `access_token` varchar(250) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `shop_name`, `access_token`, `status`, `created`) VALUES
(1, 'dblgaurav.myshopify.com', 'c82db535ea1ab340df2294019c1782f4', '1', '2016-08-23 13:32:49'),
(2, 'dbl1.myshopify.com', 'd7b0f298f5f8901ea6d07b27eb63ed2b', '1', '2016-08-30 10:36:16'),
(3, 'testup-2.myshopify.com', '5322d07ec983f951d6a09f26b0e6ead2', '0', '2016-09-01 11:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `shop_details`
--

CREATE TABLE IF NOT EXISTS `shop_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `facebook_app_id` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `discount_code` varchar(250) NOT NULL,
  `offer_position` varchar(250) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shop_details`
--

INSERT INTO `shop_details` (`id`, `shop_id`, `facebook_app_id`, `subject`, `message`, `discount_code`, `offer_position`, `created`) VALUES
(1, 1, '1065882013499420', 'Special Offer!', 'Want to get special discount on this order? Share your cart to Facebook or Twitter to reveal a 10% discount code.', '20%OffDiscount', 'checkout', '2016-08-30 15:10:34'),
(4, 2, '', 'Your special offer!', 'Share your cart on Facebook and get a 10% discount code.', '20%OffDiscount', 'automatically', '2016-09-13 13:06:18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
