-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 03:28 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `sno` int(10) NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`sno`, `username`, `password`) VALUES
(1, 'admin', 'admin@1234');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE IF NOT EXISTS `cartdetail` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`sno`, `pid`, `userid`) VALUES
(3, 13, 11);

-- --------------------------------------------------------

--
-- Table structure for table `categorydetails`
--

CREATE TABLE IF NOT EXISTS `categorydetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL,
  `activestatus` int(1) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categorydetails`
--

INSERT INTO `categorydetails` (`sno`, `catname`, `activestatus`) VALUES
(1, 'Rols Royal', 0),
(4, 'Maruti Suzuki', 0),
(5, 'Hayundai', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `add` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(10) NOT NULL,
  `country` varchar(15) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '',
  `tamount` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`sno`, `cname`, `add`, `city`, `state`, `country`, `zipcode`, `contact`, `email`, `payment`, `userid`, `status`, `tamount`) VALUES
(1, 'Kevin', 'Hamdan street a', 'abut dhabi', 'abu dhabi', 'UAE', '234566', '9947432548', 'kevina@123', 'CC', 11, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE IF NOT EXISTS `orderproduct` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `qty` bigint(255) NOT NULL,
  `price` bigint(255) NOT NULL,
  `totalamount` bigint(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`sno`, `userid`, `pid`, `qty`, `price`, `totalamount`, `status`) VALUES
(1, 11, 11, 1, 5000, 5000, 'Order'),
(2, 11, 11, 1, 5000, 5000, 'Order');

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE IF NOT EXISTS `productlist` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `prodescrip` text NOT NULL,
  `qty` bigint(20) NOT NULL,
  `catagoryid` bigint(11) NOT NULL,
  `subcatagoryid` bigint(20) NOT NULL,
  `minqty` bigint(20) NOT NULL,
  `maxqty` bigint(20) NOT NULL,
  `activestatus` int(1) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `productlist`
--

INSERT INTO `productlist` (`productid`, `productname`, `price`, `prodescrip`, `qty`, `catagoryid`, `subcatagoryid`, `minqty`, `maxqty`, `activestatus`, `pimage`) VALUES
(8, 'Maruti Suzuki Wagon R', 3000, 'Maruti suzuki worls', 1, 4, 9, 2, 5, 0, 'images/1696334274bale.jpg'),
(9, 'Maruti  Suzuki', 2000, 'Maruti Wagon r ', 1, 4, 2, 2, 10, 0, 'images/1696334732bale.jpg'),
(11, 'Hayundai Tiscon', 5000, 'Hayundai Best Model', 1, 5, 5, 5, 15, 0, 'images/1696334763bale.jpg'),
(12, 'Rolls-Royce Ghost', 10000, 'Royal', 1, 1, 7, 10, 20, 0, 'images/169633686720.jfif'),
(13, 'Rolls-Royce Phatom', 20000, 'Royal', 1, 1, 8, 5, 10, 0, 'images/1696336965e.jpg'),
(14, 'Hyundai Tucson', 3000, 'Hayundai Best Model Each', 1, 5, 6, 10, 1, 0, 'images/169633711314.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE IF NOT EXISTS `subcat` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `subcatname` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `activestatus` int(1) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`sno`, `subcatname`, `catid`, `activestatus`) VALUES
(2, 'Baleno', 4, 0),
(3, 'Ferrari 488', 6, 0),
(4, 'Ferrari Enzo', 6, 0),
(5, 'Hyundai i10', 5, 0),
(6, 'Hyundai Tucson', 5, 1),
(7, 'Rolls-Royce Ghost', 1, 0),
(8, 'Rolls-Royce Phantom', 1, 0),
(9, 'Maruti Suzuki Wagon R', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `names`, `email`, `password`) VALUES
(5, 'Nazir', 'Nazir@123.com', 'Nazir@123'),
(6, 'Nazir', 'Ansari@123.com', '$2y$10$Q5GByI2kBhjAEn5X7vjh/uM'),
(7, 'Nazir', 'Ansari@123.com', '$2y$10$qAyTq9MzsLTodreuH7TL6ez'),
(8, 'Daniyal', 'Dani@123.com', '$2y$10$Hjz.Ez.YzNxTQNHLO4MCpuN'),
(9, 'Daniyal', 'Dani@123.com', '$2y$10$gppPWD9tL5haMXPhbYWEWOd'),
(10, 'Nazir', 'Farhan@123.com', '$2y$10$XN8tEmyUDTuXSt7d1erE5O4'),
(11, 'Dhawan', 'abcd@123.com', '$2y$10$7yTP/3qd0Ny4KUcuct9OweS');
--
-- Database: `cform`
--

-- --------------------------------------------------------

--
-- Table structure for table `cusers`
--

CREATE TABLE IF NOT EXISTS `cusers` (
  `clientId` int(12) NOT NULL AUTO_INCREMENT,
  `Company` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `companyWebsite` varchar(255) DEFAULT NULL,
  `companyAddress` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `cusers`
--

INSERT INTO `cusers` (`clientId`, `Company`, `companyName`, `Department`, `Email`, `PhoneNo`, `Date`, `companyWebsite`, `companyAddress`, `City`, `State`, `Country`) VALUES
(101, 'Educaiton', 'E Saral', 'Information Technology', 'Abc@1213.com', '9988776655', '0000-00-00', 'Esaral.com', 'talwandi kota', 'Kota ', 'Rajasthan', 'India'),
(102, '', '', '', '', '', '0000-00-00', '', '', '', '', ''),
(105, 'Engineerign', 'kota', 'dkfjdkfj', 'dsfjdsf', 'fdsfdsa', '0000-00-00', 'fdsf', 'fkdsafkjdsafjdsa', 'dfdaf', 'fdsfa', 'fdsafdsa'),
(106, 'Engineerign', 'kota', 'dkfjdkfj', 'dsfjdsf', 'fdsfdsa', '0000-00-00', 'fdsf', 'fkdsafkjdsafjdsa', 'dfdaf', 'fdsfa', 'fdsafdsa'),
(107, 'kjfdsafdsalkj', 'vdlkjfdslkj', 'dsa;lkjfdsalkj', 'lkjfdskjfdsalkj', ';lkjlkjdsaflk', '0000-00-00', 'lkj', 'lkjlkjkl`', 'kjlkj', 'lkjkjl', ';lkjlkj');
--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`sno`, `title`, `description`, `date`) VALUES
(32, 'Aman Gosain', 'Station Raipura Kota', '2023-02-11 17:53:41'),
(34, 'Nazir ', 'Kota Rajasthan', '2023-09-17 16:37:58'),
(35, 'Mohammed afroz ', 'lucknow up ', '2023-09-17 16:38:31');
--
-- Database: `dropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  `stateid` int(11) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `stateid`) VALUES
(1, 'Kota', 1),
(2, 'Jaipur', 1),
(3, 'Jodhpur', 1),
(4, 'Udaipur', 1),
(5, 'Bundi', 1),
(6, 'Vadodra', 2),
(7, 'Ahmdabaad', 2),
(8, 'Dehradun', 3),
(9, 'Haridwar', 3),
(10, 'Chennai', 4),
(11, 'Banglore', 5),
(12, 'Sydney', 6),
(13, 'Perth', 6),
(14, 'BADDI', 7),
(15, 'SHIMLA', 7),
(16, 'MANALI', 7),
(17, 'UJJAIN', 8),
(18, 'INDORE', 8),
(19, 'BHOPAL', 8),
(20, 'NOIDA', 9),
(21, 'GHAZIABAAD', 9),
(22, 'KANPUR', 9),
(23, 'MEGHALAYA', 10),
(24, 'HEYDRABAAD', 11),
(25, 'VIZAG', 11);

-- --------------------------------------------------------

--
-- Table structure for table `com`
--

CREATE TABLE IF NOT EXISTS `com` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(255) NOT NULL,
  `cityid` int(11) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com`
--

INSERT INTO `com` (`com_id`, `com_name`, `cityid`) VALUES
(1, 'Talwandi', 1),
(2, 'Shoopping Center', 1),
(3, 'Nayapura', 1),
(4, 'Rampura', 1),
(5, 'Gumanpura', 1),
(6, 'Patanpol', 1),
(7, 'Kishor Pura', 1),
(8, 'Mohan Nagar', 21),
(9, 'Vaishali ', 21),
(10, 'Vijay Nagar', 21),
(11, 'Kabi Nagar', 21),
(12, 'Farook Nagar', 21);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL DEFAULT '0',
  `country_name` varchar(50) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) NOT NULL,
  `countryid` int(11) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `countryid`) VALUES
(1, 'Rajasthan', 1),
(2, 'Gujarat', 1),
(3, 'Utrakhand\r\n', 1),
(4, 'Tamilnadu', 1),
(5, 'Karnatka', 1),
(6, 'Victoria', 2),
(7, 'Himachal Pradesh', 1),
(8, 'MP', 1),
(9, 'UP', 1),
(10, 'ASSAM', 1),
(11, 'ANDHRA PRADESH', 1);
--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`sno`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE IF NOT EXISTS `cartdetail` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`sno`, `pid`, `userid`) VALUES
(12, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `categorydetails`
--

CREATE TABLE IF NOT EXISTS `categorydetails` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL,
  `activestatus` int(1) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categorydetails`
--

INSERT INTO `categorydetails` (`sno`, `catname`, `activestatus`) VALUES
(2, 'Electronics', 0),
(3, 'Kides Section', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) NOT NULL,
  `add` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `userid` bigint(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Order Pending',
  `tamount` varchar(255) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`sno`, `cname`, `add`, `city`, `state`, `country`, `zipcode`, `contact`, `email`, `payment`, `userid`, `status`, `tamount`) VALUES
(1, 'Sunil Yadav', 'Gopi Bazar Anil kothari ke samne ', 'Jaipur ', 'Rajasthan ', 'India ', '234567', '987654345678', 'sunil@123.com', 'Paypal', 1, 'Order Pending', '13600'),
(2, 'Sunil Yadav', 'Gopi Bazar Anil kothari ke samne ', 'Jaipur ', 'Rajasthan ', 'India ', '234567', '987654345678', 'sunil@123.com', 'Paypal', 1, 'Order Pending', '13600'),
(3, '', '', '', '', '', '', '', '', 'CC', 1, 'Order Pending', ''),
(4, 'Kunal mathur ', 'House no gobriya bawdi ke pass neelkhand balaji ke pass jaipur rajasthan', 'Jaipur', 'rajasthan', 'India', '234567', '76878899', '78900', 'POD', 1, 'Order Pending', '12000'),
(5, 'Daniyal Ansari', 'House No. 245 Opposite Sati Chabutra Near Pinzaro ki masjid ke pass kota raj.', 'Kota', 'Rajasthan ', 'India', '324409', '9929888341', 'Daniyal@123.com', 'BankTr', 6, 'Order Pending', ''),
(6, 'mohot', 'kotra', 'Kota', 'rajasthan', 'India', '324409', '76878899', 'sunil@123.com', 'POD', 1, 'Order Pending', '25000'),
(7, '', '', '', '', '', '', '', '', 'CC', 6, 'Order Pending', '10000'),
(8, 'Sunil', ' Hou kota raj ', 'kota ', 'rajasthana ', 'india', '324406', 'fdsafj', 'lkjdsfsa', 'BankTr', 1, 'Order Pending', '800'),
(9, 'razzakr ', 'kota ', 'kota ', 'rajasthan', 'India', '', '', '', 'CC', 1, 'Order Pending', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE IF NOT EXISTS `orderproduct` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL,
  `totalamount` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Not Order ',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`sno`, `userid`, `pid`, `qty`, `price`, `totalamount`, `status`) VALUES
(1, 1, 4, 2, 400, 800, 'Order'),
(2, 1, 2, 2, 6000, 12000, 'Order'),
(3, 1, 4, 2, 400, 800, 'Order'),
(4, 1, 2, 2, 6000, 12000, 'Order'),
(5, 1, 11, 1, 10000, 10000, 'Order'),
(6, 1, 11, 1, 10000, 10000, 'Order'),
(7, 1, 12, 1, 5000, 5000, 'Order'),
(8, 6, 11, 1, 10000, 10000, 'Order'),
(9, 1, 4, 2, 400, 800, 'Order'),
(10, 1, 11, 1, 10000, 10000, 'Order');

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE IF NOT EXISTS `productlist` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `prodescrip` text NOT NULL,
  `qty` bigint(20) NOT NULL,
  `catagoryid` bigint(11) NOT NULL,
  `subcatagoryid` bigint(20) NOT NULL,
  `minqty` bigint(20) NOT NULL,
  `maxqty` bigint(20) NOT NULL,
  `activestatus` int(1) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `productlist`
--

INSERT INTO `productlist` (`productid`, `productname`, `price`, `prodescrip`, `qty`, `catagoryid`, `subcatagoryid`, `minqty`, `maxqty`, `activestatus`, `pimage`) VALUES
(2, 'Micro Ovn Samsung 28L', 6000, 'Samsung product', 10, 2, 2, 5, 100, 0, 'images/1676640746oven.jpg'),
(4, 'Electric Lighter', 400, 'Kitchen Item', 10, 2, 2, 50, 100, 0, 'images/1676648996lighter.jfif'),
(5, 'Electric Stove', 1800, 'Electric Stove By Prestige', 1, 2, 2, 10, 100, 0, 'images/1676817682stove.jfif'),
(6, 'Shopner ', 20, 'Apsara Brand', 1, 1, 1, 10, 100, 0, 'images/1676817901shopner.jpg'),
(7, 'Ball Pen Apsara', 50, 'Apsara Brand', 50, 1, 1, 10, 1000, 0, 'images/1677150956stockregister_cdef87a5-8aed-4edd-bb89-3679034b36f0.jpg'),
(8, 'HB Pencil Apsara', 10, 'Apsara Brand', 100, 1, 1, 50, 1000, 0, 'images/1677151078download.jfif'),
(9, 'Natraj Penci', 12, 'Natraj Brand', 1000, 1, 3, 1000, 1000000, 0, 'images/1677151815n.jpg'),
(10, 'Eraser Natraj', 5, 'Natraj Brand', 100, 1, 3, 1000, 10000, 0, 'images/1677151846download.jfif'),
(11, 'Ac Voltas', 10000, 'Voltas Tata Brand', 10, 2, 4, 5, 20, 0, 'images/1677152017a.png'),
(12, 'Refrigerator Voltas', 5000, 'Vo', 1, 2, 4, 10, 100, 0, 'images/1677152059f.png'),
(13, 'Boy Shoes', 400, ' 1 To 3 Year Old Child ', 1, 3, 5, 10, 100, 0, 'images/1677318439s.jpg'),
(14, 'Mens item', 200, 'Under Wear', 100, 3, 5, 10, 10000, 0, 'images/1696155289Screenshot_2022-06-21_162354.png');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE IF NOT EXISTS `subcat` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `subcatname` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `activestatus` int(1) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`sno`, `subcatname`, `catid`, `activestatus`) VALUES
(1, 'Apsara', 1, 0),
(2, 'Kitchen', 2, 0),
(3, 'Natraj', 1, 0),
(4, 'Duct', 2, 0),
(5, 'Shoes', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `names`, `email`, `password`) VALUES
(1, 'Nazir', 'Nazir@123.com', 'Nazir@786'),
(5, 'Meraz Ansari', 'meraz@123.com', 'Meraz@786'),
(6, 'Daniyal', 'Daniyal@123.com', 'Daniyal@786'),
(7, 'Farhan', 'Farhan@123.com', 'Farhan@786'),
(8, 'Nazir', 'Nazir@123.com', 'Nazir@123');
--
-- Database: `fm`
--

-- --------------------------------------------------------

--
-- Table structure for table `father`
--

CREATE TABLE IF NOT EXISTS `father` (
  `fname` varchar(255) NOT NULL,
  PRIMARY KEY (`fname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `father`
--

INSERT INTO `father` (`fname`) VALUES
(''),
(' Mohammed Salim'),
('Anil Kulkarni'),
('Brijesh Kumar '),
('Mahesh Pandey'),
('Mohmmad Amin'),
('Naresh gosain'),
('Nemchand nagar'),
('Prakash Tiwari');

-- --------------------------------------------------------

--
-- Table structure for table `mother`
--

CREATE TABLE IF NOT EXISTS `mother` (
  `mname` varchar(255) NOT NULL,
  PRIMARY KEY (`mname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mother`
--

INSERT INTO `mother` (`mname`) VALUES
(''),
('Amrita nagar'),
('Anita Devi '),
('Kusum Pandey'),
('Muskan Tiwari'),
('Nazma Begum'),
('Nirmal kulkarni'),
('Sakina'),
('Shivani Gosain');

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE IF NOT EXISTS `name` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`name`) VALUES
(''),
('Abhishek Pandey'),
('Aman Gosain'),
('Amir Amin'),
('Anil Tiwari'),
('Arshad Khan'),
('Mayank Nagar'),
('Naresh Kulkarni'),
('Vinod Kumar ');
--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `cfrom`
--

CREATE TABLE IF NOT EXISTS `cfrom` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `capplication` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cfrom`
--

INSERT INTO `cfrom` (`sno`, `name`, `capplication`, `date`, `gender`, `education`, `email`, `contact`, `address`) VALUES
(1, 'Kapil Sharma', 'Course A', '2022-12-01 00:00:00.000000', 'Male', 'Diploma', 'Vinodkumar@gmail.com', '9988776655', 'House no . 245 opposite sati chabutra near Pinzaro ki masjid kota rajasthan 3244006'),
(2, '', '', '0000-00-00 00:00:00.000000', '', 'Selcet', '', '', ''),
(3, '', '', '0000-00-00 00:00:00.000000', '', 'Selcet', '', '', ''),
(4, '', '', '0000-00-00 00:00:00.000000', '', 'Selcet', '', '', ''),
(5, 'Naziransari', '', '2014-01-22 00:00:00.000000', 'on', 'Master', 'farhannazir725@gmail.vom', '8877665544', 'house. 56'),
(6, 'ArshadKhan', 'on', '2014-01-22 00:00:00.000000', 'on', 'Class 6th -10th', 'farhannazir725@gmail.vom', '8877665544', 'house. 56');

-- --------------------------------------------------------

--
-- Table structure for table `dfrom`
--

CREATE TABLE IF NOT EXISTS `dfrom` (
  `name` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sno` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `dfrom`
--

INSERT INTO `dfrom` (`name`, `address`, `sno`) VALUES
('Amit Kumar Gupta', 'House no. 245  Oppsite Sati Chabutra Near Makbara thanaKota Rajasthan324006', 1),
('Amit Kumar Gupta', 'House no. 245  Oppsite Sati Chabutra Near Makbara thanaKota Rajasthan324006', 2),
('Amit Kumar Gupta', 'House no. 245  Oppsite Sati Chabutra Near Makbara thanaKota Rajasthan324006selcet', 3),
('Vikas Chodhry', 'near Mahaveer Nagar Opposte Ganesh ji mandirkota rajasthan324006selcet', 4),
('Saleem Badshah', 'Golden Sand Tower Opposite DMCC Building Dubaitdubaitselcet', 5),
('', '', 6),
('', '', 7),
('', '', 8),
('', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `gform`
--

CREATE TABLE IF NOT EXISTS `gform` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mstart` varchar(255) NOT NULL,
  `mduration` varchar(255) NOT NULL,
  `payment` varchar(300) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `mnotes` varchar(255) NOT NULL,
  `sno` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `gform`
--

INSERT INTO `gform` (`name`, `email`, `mstart`, `mduration`, `payment`, `disease`, `mnotes`, `sno`) VALUES
('anil', 'abc@gmail.com', '1 ', '3 month', 'full', 'Heart attach', 'im very tired', 1),
('Nazir', 'abc@gmail.com', '2019-12-12 ', '6month', '3month', 'Array', 'heartdisease,chestpain,diabetes', 9),
('Vinod', 'abc@gmail.com', '2019-12-23 ', 'lifetime', 'cashinfull', 'Array', 'heartdisease,chestpain,diabetes,diabetes,diabetes,diabetes,diabetes,diabetes,diabetes,diabetes', 10),
('Vinod', 'abc@gmail.com', '2019-12-23 ', 'lifetime', 'cashinfull', 'heartdisease,chestpain,diabetes,diabetes,diabetes,diabetes,diabetes,diabetes,diabetes,diabetes', '$', 11),
('Shakir', 'shakirbashah@123.com', '2000-01-01 ', '1year', '6month', 'diabetes,diabetes,diabetes', 'i want to check your gym', 12);

-- --------------------------------------------------------

--
-- Table structure for table `rfrom`
--

CREATE TABLE IF NOT EXISTS `rfrom` (
  `name` varchar(20) NOT NULL,
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfrom`
--

INSERT INTO `rfrom` (`name`, `id`, `email`, `phone`) VALUES
('', 0, '', ''),
('Aakash', 555, 'aakash@gmail.com', '1234567890'),
('Narendra', 102, 'narendrakumar@gmail.com', '9922885566'),
('Nazir', 112, 'Farhannazir725@gmail.com', '9988779988'),
('Vinod', 101, 'Vinodkumar@gmail.com', '9988776655');
--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `username`
--

CREATE TABLE IF NOT EXISTS `username` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `username`
--

INSERT INTO `username` (`id`, `fname`, `lname`, `email`, `password`, `other`) VALUES
(1, 'Nazir', 'Ansari', 'nazir@123.com', '1', ''),
(2, 'payal ', 'meena', 'meena@123.com', '1', ''),
(3, 'dhiraj', 'pathak', 'pathak@123.com', '1', ''),
(4, 'puneet ', 'gatuam', 'puneet@123.com', '1', ''),
(5, 'Shubham', 'singh', 'singh@123.com', '1', 'puneet'),
(6, 'nazir', 'ansari', 'ansari@123.com', '123', 'ak'),
(7, 'anil', 'kumar', 'kumar@123.com', '$2y$10$ywBwiu96OJ4QsiG0Zo8zkuu8UXNZRWyioBpdkRg/TMpO141xGdGl.', 'ap'),
(8, 'amir', 'khan', 'khan@123.com', '$2y$10$b/RZXoXxZwcubPPZLn.ar.L/hWypIEmqc9IxpuIPwMCZKZMnQ..dq', 'a');
--
-- Database: `loginnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `username`
--

CREATE TABLE IF NOT EXISTS `username` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `other` varchar(20) NOT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `username`
--

INSERT INTO `username` (`sno`, `name`, `username`, `email`, `password`, `other`) VALUES
(1, 'nazir', 'nazir15', 'nazir@123.com', '12', 'a'),
(2, 'farhan', 'farhan123', 'farhan@123.com', '1', 'a'),
(4, 'Kamal', ' Kumar', 'kumar@123.com', '123', 'a'),
(5, 'Harpreet', 'hari', 'har@123.com', '1', 'a'),
(6, 'ashikh', 'ash', 'shaikh@123.com', '1', 'a'),
(7, 'atif', 'raja', 'atif@123.com', '1', 'b');
--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `date`) VALUES
(1, 'Nazir', 'Ansari', 'nazir725', 'nazir.ansari@gmail.com', '$2y$04$sOAFMkTFBreWTIb8Cqwf3OgtKBlvQW9ZHAkOEMkVlv0VcLxFZDN4S', '2022-11-29'),
(2, 'Vinod', 'Yadav', 'vinod12', 'vinod.kumar@gmail.com', '$2y$04$JCfTMa4w/sM2qD//L2bTyOYQRg.XKU/sAfrAKvsGFPT9q.UigUxDu', '2022-11-29'),
(3, 'jai ', 'singh', 'jaisingh', 'jaisingh@gmail.com', '$2y$04$Taz1A59cJj3AiuXZCP.nIe9bOMAnXe4gpozCn5UCHhaCWiAdigeb2', '2022-11-29'),
(4, 'Shirish', 'Shrivastav', 'shirish12', 'shirish@123.com', '$2y$04$0cSDRE7rEt5XMv41qOwLiOJfVOoYWtZWKAUX.bsH37l6dCuHUWuli', '2022-11-29'),
(5, 'arshad', 'khan', 'arshadkha', 'arshadkhan@gmail.com', '$2y$04$mIzAFai2fyIJ4hVokp.eTe6ANL4Hr.YV9vvhGdkzgI6JqSP1QJsUy', '2022-11-29'),
(6, 'wajid', 'khan', 'wajidkhan', 'wajidkhan@gmail.com', '$2y$04$edj9BWT3DXeKjF.Gt0sgTu4sN/LqjVEQQccxa4QM3FJeSXyrSz.Ky', '2022-11-30');
--
-- Database: `newtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `citytb`
--

CREATE TABLE IF NOT EXISTS `citytb` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `citytb`
--

INSERT INTO `citytb` (`cid`, `cname`) VALUES
(1, 'Agra'),
(2, 'Kota'),
(3, 'Jaipur'),
(4, 'Ajmer'),
(5, 'Bundi'),
(6, 'Nagaur'),
(7, 'Bheelwara'),
(8, 'Baran'),
(9, 'Jhalawar'),
(10, 'Sikar');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(50) NOT NULL,
  `age` varchar(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `age`, `city`) VALUES
(1, 'yahoo baba', '23', '1'),
(2, 'Anil Kumr', '20', '2'),
(3, 'Rakesh Kumar', '28', '1'),
(4, 'Nazir', '29', '3'),
(5, 'Bhupendra ', '33', '4'),
(11, 'Khil Bahadur', '40', '7'),
(12, 'Pranav Ranjan', '28', '9'),
(13, 'Rajendra nagar', '35', 'Kota'),
(14, 'Boby', '22', ''),
(15, 'parven', '99', ''),
(16, 'Anil Ambani', '78', '5'),
(17, 'Ankur Nagar', '41', '10');
--
-- Database: `phpoop`
--

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE IF NOT EXISTS `name` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(255) NOT NULL,
  `age` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`id`, `studentname`, `age`, `city`) VALUES
(1, 'Nazir', '26', 'jaipur'),
(2, 'Rajendra prasad', '34', 'Kanpur'),
(3, 'Ramu Sherwal', '33', 'Bundi'),
(4, 'Rajesh Hada', '32', 'Bhilwara'),
(12, 'Rishab Sharma ', '35', 'Nagur'),
(13, 'Arshan Ansari', '18', 'Bundi '),
(14, 'Abhishek mathur', '54 ', 'Ghaziabaad');
--
-- Database: `phpproject2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetail`
--

CREATE TABLE IF NOT EXISTS `admindetail` (
  `adminuser` varchar(50) NOT NULL,
  `adminpassword` varchar(50) NOT NULL,
  PRIMARY KEY (`adminuser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindetail`
--

INSERT INTO `admindetail` (`adminuser`, `adminpassword`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE IF NOT EXISTS `cartdetail` (
  `srNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `sessionId` varchar(50) NOT NULL,
  PRIMARY KEY (`srNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`srNo`, `productid`, `Qty`, `sessionId`) VALUES
(1, 4, 13, 'dgo4ifucvufk4o0itn1v0uo6d0'),
(3, 2, 10, 'dgo4ifucvufk4o0itn1v0uo6d0'),
(4, 1, 12, 'lr6pasv5vj6a6nqpb4bol0qp56'),
(5, 4, 5, '501s6c37uosr7okcdn8oqusgb1'),
(6, 4, 5, 'rirmfsnko8etu1b5e526h5lpj6'),
(7, 4, 5, 'rirmfsnko8etu1b5e526h5lpj6');

-- --------------------------------------------------------

--
-- Table structure for table `categorydetail`
--

CREATE TABLE IF NOT EXISTS `categorydetail` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(50) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categorydetail`
--

INSERT INTO `categorydetail` (`catId`, `catName`, `activeStatus`) VALUES
(1, 'Pencil', 1),
(2, 'Notebook', 1),
(3, 'Box', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientdetail`
--

CREATE TABLE IF NOT EXISTS `clientdetail` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Mname` varchar(50) NOT NULL,
  `mobileNo` varchar(10) NOT NULL,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `activestatus` int(11) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date NOT NULL,
  `custName` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip` varchar(6) NOT NULL,
  `mobileNo` varchar(10) NOT NULL,
  `email` varchar(75) NOT NULL,
  `orderAmt` float NOT NULL,
  `payMethod` varchar(50) NOT NULL,
  `orderStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderId`, `orderDate`, `custName`, `address`, `city`, `state`, `country`, `zip`, `mobileNo`, `email`, `orderAmt`, `payMethod`, `orderStatus`) VALUES
(1, '2022-09-17', 'shubham', 'shyam nagar shrivpura', 'kota', 'Rajasthan', 'India', '324009', '7148995444', 'shubham123@gmail.com', 510, 'POD', 'Payment Pending'),
(2, '2023-02-28', '', '', '', '', '', '', '', '', 200, 'CC', 'Payment Pending');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE IF NOT EXISTS `orderproduct` (
  `srNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`srNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`srNo`, `orderId`, `product`, `qty`, `price`) VALUES
(1, 1, 4, 13, 20),
(2, 1, 2, 10, 25),
(3, 2, 4, 5, 20),
(4, 2, 4, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE IF NOT EXISTS `productdetail` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `productDescription` varchar(1000) NOT NULL,
  `Qty` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `subCategoryId` int(11) NOT NULL,
  `minQty` int(11) NOT NULL,
  `maxQty` int(11) NOT NULL,
  `activeStatus` tinyint(4) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`productId`, `productName`, `Price`, `productDescription`, `Qty`, `CategoryId`, `subCategoryId`, `minQty`, `maxQty`, `activeStatus`) VALUES
(1, '0.5mm lead pencil', 25, ' good pencil', 45, 1, 1, 12, 100, 1),
(2, '0.7mm lead pencil', 25, ' good quality pencil', 44, 1, 6, 10, 100, 1),
(3, 'butterflow', 10, ' smooth pen', 60, 1, 1, 15, 250, 1),
(4, 'maths notebook', 20, ' block line book', 18, 2, 4, 5, 50, 1),
(5, 'english notebook', 50, ' single line notebook', 19, 2, 4, 5, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `subCatId` int(11) NOT NULL AUTO_INCREMENT,
  `subCatName` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `activeStatus` tinyint(4) NOT NULL,
  PRIMARY KEY (`subCatId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subCatId`, `subCatName`, `categoryId`, `activeStatus`) VALUES
(1, 'apsra pencil', 1, 1),
(2, 'pencil box', 3, 1),
(3, 'single line notebook', 2, 1),
(4, 'multiline notebook', 2, 1),
(5, 'lunch box', 3, 1),
(6, 'natraj pencil', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE IF NOT EXISTS `userdetail` (
  `sNo` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Pincode` varchar(6) DEFAULT NULL,
  `ContactNo` varchar(10) DEFAULT NULL,
  `activestatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`sNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`sNo`, `Email`, `Password`, `Name`, `Gender`, `Address`, `City`, `State`, `Country`, `Pincode`, `ContactNo`, `activestatus`) VALUES
(1, 'vinit123@gmail.com', '12345', 'vinit gautam', 'Male', '5-D-18 mahaveer nagar ext', 'kota', 'Rajasthan', 'India', '324010', '741258963', 1);
--
-- Database: `result`
--

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `rollno` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fathername` varchar(30) NOT NULL,
  `mothername` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `hindi` int(10) NOT NULL,
  `english` int(10) NOT NULL,
  `maths` int(10) NOT NULL,
  `science` int(10) NOT NULL,
  `sst` int(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `max` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `percent` varchar(255) NOT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`rollno`, `name`, `fathername`, `mothername`, `dob`, `hindi`, `english`, `maths`, `science`, `sst`, `pass`, `max`, `total`, `percent`) VALUES
('101', 'Nazir', 'Noor Mohammed', 'Mobina ', '20/09/1992', 77, 89, 98, 78, 76, 'PASS', '500', '', ''),
('102', 'Mohit Pokhar', 'Ashok Pokhar', 'manju Pokhar ', '10/08/1988', 57, 49, 88, 48, 76, 'PASS', '500', '', ''),
('103', 'Monalika', 'Rudra pratap singh', 'vimlata Devi ', '02/03/2000', 27, 39, 56, 67, 86, 'PASS', '500', '', ''),
('104', 'Sourabh soni', 'Mukesh Soni', 'Geeta Soni ', '11/11/1989', 57, 89, 98, 48, 76, 'PASS', '500', '', ''),
('105', 'Amit goyal', 'Ashok Pokhar', 'manju Pokhar ', '10/08/1988', 67, 69, 85, 46, 56, 'PASS', '500', '', ''),
('106', 'Pushpendra Singh', 'Naresh Singh', 'Anuradha  ', '16/12/2001', 57, 69, 78, 28, 96, 'PASS', '500', '', ''),
('107', 'Pooja Agrwal', 'Dinesh Agrwal', 'Rekha Agrwal ', '22/07/1990', 97, 89, 58, 78, 56, 'PASS', '500', '', ''),
('108', 'Vikas Prjapati', 'Ramesh Prajapati', 'Anita Prajapti ', '10/08/2003', 57, 49, 88, 48, 76, 'PASS', '500', '', ''),
('109', 'Amreen', 'Sahid', 'Roshan Bano ', '10/08/1988', 67, 39, 48, 58, 66, 'PASS', '500', '', ''),
('110', 'Mohammed Zaid', 'Zahid Ansari', 'Shahin ', '14/05/1998', 47, 49, 48, 67, 36, 'PASS', '500', '', ''),
('111', 'Manisha Pokhar', 'Ashok Pokhar', 'manju Pokhar ', '11/08/1987', 47, 79, 68, 48, 46, 'PASS', '500', '', ''),
('112', ' Vinod Yadav', 'Lalamati Devi', 'Tarkeshwar Prasad Yadav', '12/05/1984', 55, 40, 65, 50, 70, 'PASS', '500', '', ''),
('113', ' Manish Kumar Sharma', 'Devkishan Sharma', 'Hemlata Soni', '10/06/1999', 45, 40, 45, 70, 80, 'PASS', '500', '', ''),
('114', ' Wajid Khan', 'Anwar Khan', 'Rukayya Begum', '11/02/1996', 55, 60, 85, 80, 90, 'PASS', '500', '', ''),
('115', 'Abrar Ahamed', 'Noor Mohammed', 'Jubeda Ansari', '10/09/1990', 67, 78, 78, 78, 78, 'PASS', '500', '', ''),
('116', 'Akram Khan', 'Jamal Khan', 'Abida Begum', '10/07/1999', 36, 36, 36, 36, 36, '', '500', '', ''),
('117', 'Shubham pokhar', 'Antaryami Pokhar', 'Sunita Pokhar', '12/11/1999', 22, 33, 44, 24, 23, '', '500', '', ''),
('118', 'Anil Kumar', 'Mahesh Gautam', 'Priya', '12/12/2001', 40, 40, 40, 40, 39, '', '500', '', ''),
('120', 'Trimani Seenu', 'Tatayya ', 'Venakt Laxmi', '27/07/1986', 45, 56, 67, 56, 88, 'PASS', '500', '', ''),
('130', 'ABDUL RAZZAK ', 'HASAN ABBA ', 'BB FATIMA', '01/02/1971', 87, 78, 78, 78, 88, 'PASS', '500', '', ''),
('131', 'Jai Singh', 'Prahlad Singh', 'Krishna Sinfh', '08/05/1985', 77, 98, 77, 66, 45, 'PASS', '500', '', '');
--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `add` varchar(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  PRIMARY KEY (`add`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`add`, `student_id`) VALUES
('', 1),
('Anantpura Kota raj 324007', 2),
('borkheda kota', 3),
('House no . 244 near Pinzaro ki masjid ke pass kota raj. 32400', 4),
('House No. 667 Sati Chabutra Near Pinzaro ki masjid ke pass kota raj. 32006', 5),
('jawaher nagar kota', 9),
('Jyoti tent house ke pass kota raj. 32400', 6),
('kota raj. 324005', 7),
('Mahaveer nagar Extention dadabai kota raj. 324007', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `hindi` int(10) NOT NULL,
  `english` int(10) NOT NULL,
  `maths` varchar(10) NOT NULL,
  `science` int(10) NOT NULL,
  `sst` int(10) NOT NULL,
  `studentid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`hindi`, `english`, `maths`, `science`, `sst`, `studentid`) VALUES
(44, 56, '67', 68, 23, 1),
(34, 0, '78', 90, 88, 2),
(45, 0, '47', 48, 50, 3),
(36, 0, '40', 45, 45, 4),
(89, 0, '90', 99, 98, 5),
(45, 45, '67', 78, 88, 6),
(56, 56, '87', 67, 99, 7),
(78, 88, '89', 67, 78, 8),
(90, 97, '96', 94, 99, 9);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `rollno` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `dob` varchar(10) NOT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `name`, `fname`, `mname`, `dob`) VALUES
(1, 'Anil Kumar Prajapati', 'Mahesh Kumar Prajapati', 'Anita ', '20/09/1992'),
(2, 'Nitin Dubey', 'Narendra Dubey', 'Kusumlata Dubey', '2000-12-11'),
(3, 'Vinod Kumar', 'mahesh pratap', ' Shivani', '1999-09-11'),
(4, 'Mohit Pokhar', 'Ashok Pokhar', 'Manju Pokhar', '1988-08-14'),
(5, 'Nazir', 'Noor Mohammed ', 'Mobina Bano', '1992-02-20'),
(6, 'Shubham Pokhar', 'Antaryami Pokhar', 'Sunita Pokhar', '2000-01-01'),
(7, 'Kavita Soni', 'Narendra Soni', 'Pushpa Soni', '1997-02-02'),
(8, 'Muskan Soni', 'Mahendra Soni', ' Priya Soni', '1995-03-03'),
(9, 'Puneet Gautam ', 'Shiv Prasad Sharma', 'Manorama Sharma', '2001-06-28');
--
-- Database: `suraj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sno`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `username`, `password`) VALUES
(1, 'suraj', 'Suraj@123');
--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tripiit`
--

CREATE TABLE IF NOT EXISTS `tripiit` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `other` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tripiit`
--

INSERT INTO `tripiit` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES
(1, 'Ajit', 35, 'Male', 'abc@gmail.com', '9988776655', 'There is A demo Account For Checking Purpsose', '2022-12-15 16:49:11'),
(2, 'Kamal', 24, 'malw', '123@abc.con', '9988779988', 'Old School Dubai', '2022-12-15 17:25:47'),
(3, 'Mangal', 22, 'Male', '223@abc.con', '8877665544', 'Main Street of dmcc building bur duabi uae', '2022-12-15 17:28:47'),
(4, 'Mangal', 22, 'Male', '223@abc.con', '8877665544', 'Main Street of dmcc building bur duabi uae', '2022-12-15 17:35:01'),
(5, 'Mangal', 22, 'Male', '223@abc.con', '8877665544', 'Main Street of dmcc building bur duabi uae', '2022-12-15 17:35:05'),
(6, 'Nazir', 28, 'Male', 'Nazir@gmail.com', '9876568789', 'House no. 245 opposite sati chabutra near pinzaro ki masjid kota raj. 324006', '2022-12-15 17:40:04'),
(7, 'Nazir', 28, 'Male', 'Nazir@gmail.com', '9876568789', 'House no. 245 opposite sati chabutra near pinzaro ki masjid kota raj. 324006', '2022-12-15 17:54:16'),
(8, 'Nazir', 28, 'Male', 'Nazir@gmail.com', '9876568789', 'House no. 245 opposite sati chabutra near pinzaro ki masjid kota raj. 324006', '2022-12-15 17:54:29'),
(9, 'Nazir', 28, 'Male', 'Nazir@gmail.com', '9876568789', 'House no. 245 opposite sati chabutra near pinzaro ki masjid kota raj. 324006', '2022-12-15 17:54:35'),
(10, 'Nazir', 28, 'Male', 'Nazir@gmail.com', '9876568789', 'House no. 245 opposite sati chabutra near pinzaro ki masjid kota raj. 324006', '2022-12-15 17:56:04'),
(11, 'Nazir', 28, 'Male', 'Nazir@gmail.com', '9876568789', 'House no. 245 opposite sati chabutra near pinzaro ki masjid kota raj. 324006', '2022-12-15 17:56:09'),
(12, '', 0, '', '', '', '', '2022-12-15 18:08:06'),
(13, 'vinod kumar jaiswal', 56, 'male', 'vinodkumar@gmail.com', '8899775544', 'Old Janakpuri Ghaziabaad delhi ya noida', '2022-12-15 18:16:44'),
(14, 'puneet', 22, 'Male', '123@abc.con', '8877665544', 'gyyugyuyug', '2022-12-15 18:21:19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
