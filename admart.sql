-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2020 at 10:23 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.2.8-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cate_tble`
--

CREATE TABLE `cate_tble` (
  `cate_id` int(12) NOT NULL,
  `cate_name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cate_tble`
--

INSERT INTO `cate_tble` (`cate_id`, `cate_name`, `price`, `isactive`, `doi`, `dou`) VALUES
(1, 'Bulk Ad', '50', 1, '0000-00-00', '0000-00-00'),
(2, 'LED', '60', 1, '0000-00-00', '0000-00-00'),
(3, 'Hoarding', '70', 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `city_tble`
--

CREATE TABLE `city_tble` (
  `id` int(12) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `state_id` varchar(100) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_tble`
--

INSERT INTO `city_tble` (`id`, `city_name`, `state_id`, `isactive`, `doi`, `dou`) VALUES
(1, 'vadodara', '3', 1, '0000-00-00', '0000-00-00'),
(2, 'surat', '1', 1, '0000-00-00', '0000-00-00'),
(3, 'Rajkot', '1', 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `client_tbl`
--

CREATE TABLE `client_tbl` (
  `client_id` int(12) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `client_image` varchar(350) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_tbl`
--

INSERT INTO `client_tbl` (`client_id`, `client_name`, `client_image`, `isactive`, `doi`, `dou`) VALUES
(1, 'mahir', 'uploads/kk.jpg', 1, '2019-02-14', '0000-00-00'),
(2, 'hello', 'uploads/waghbakri.jpg', 1, '2019-02-14', '0000-00-00'),
(3, 'popo', 'uploads/noo.png', 1, '2019-03-02', '0000-00-00'),
(4, 'Amul', 'uploads/amul.jpg', 1, '2019-03-19', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `complain_tbl`
--

CREATE TABLE `complain_tbl` (
  `com_id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `contact_no` int(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `city_name` varchar(45) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain_tbl`
--

INSERT INTO `complain_tbl` (`com_id`, `user_name`, `contact_no`, `email_id`, `city_name`, `feedback`, `isactive`, `doi`, `dou`) VALUES
(1, 'palak', 2147483647, 'aa@gmail.com', 'vadodara', 'nice looking very beautiful  and good  experience travel to website', 1, '2019-04-13', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `cont_tbl`
--

CREATE TABLE `cont_tbl` (
  `c_id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cont_tbl`
--

INSERT INTO `cont_tbl` (`c_id`, `name`, `contact_no`, `email`, `city`, `description`, `isactive`, `doi`, `dou`) VALUES
(1, 'palak mehta', 2147483647, 'palak@gmail.com', 'surat', 'looking for small hoarding for advertisement.', 1, '2019-04-03', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `quoo_tbl`
--

CREATE TABLE `quoo_tbl` (
  `q_id` int(12) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(12) NOT NULL,
  `quotation_no` varchar(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `final_price` varchar(200) NOT NULL,
  `duration` varchar(12) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quoo_tbl`
--

INSERT INTO `quoo_tbl` (`q_id`, `service_name`, `name`, `quantity`, `quotation_no`, `u_id`, `user_name`, `final_price`, `duration`, `isactive`, `doi`, `dou`) VALUES
(1, 'Bulk Ad', 'Godhara Express highway', 20, '152388', 1, 'palak', '1150', '1', 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `securityque_tbl`
--

CREATE TABLE `securityque_tbl` (
  `s_id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `securityque_tbl`
--

INSERT INTO `securityque_tbl` (`s_id`, `question`, `isactive`, `doi`, `dou`) VALUES
(1, 'favourite color', 1, '0000-00-00', '0000-00-00'),
(2, 'spouse name', 2, '0000-00-00', '0000-00-00'),
(3, 'birthdate', 1, '2019-01-23', '0000-00-00'),
(4, 'favourite food', 1, '2019-01-23', '0000-00-00'),
(5, 'nickname', 1, '2019-01-23', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `state_tbl`
--

CREATE TABLE `state_tbl` (
  `id` int(12) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_tbl`
--

INSERT INTO `state_tbl` (`id`, `state_name`, `isactive`, `doi`, `dou`) VALUES
(1, 'Gujarat', 1, '0000-00-00', '0000-00-00'),
(2, 'Rajasthan', 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `subcate_tbl`
--

CREATE TABLE `subcate_tbl` (
  `s_id` int(100) NOT NULL,
  `subcate_name` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `img_src` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL,
  `cate_id` int(100) NOT NULL,
  `isactive` int(12) NOT NULL,
  `doi` date NOT NULL,
  `dou` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcate_tbl`
--

INSERT INTO `subcate_tbl` (`s_id`, `subcate_name`, `rate`, `img_src`, `img`, `cate_id`, `isactive`, `doi`, `dou`) VALUES
(1, 'Ahmedabad-Mehsana Highway', '1', 'uploads/new.jpg', 'uploads/10.jpg', 1, 1, '2019-02-14', '0000-00-00'),
(2, 'S.G Highway', '1.5', 'uploads/four.jpg', 'uploads/10.jpg', 1, 1, '2019-02-14', '0000-00-00'),
(3, 'Vadodra Express Highway', '2', 'uploads/fourr.jpg', 'uploads/10.jpg', 1, 1, '2019-02-14', '0000-00-00'),
(4, 'Godhra Highway', '2.5', 'uploads/highway.jpg', 'uploads/10.jpg', 1, 1, '2019-02-14', '0000-00-00'),
(5, 'Himalaya Mall', '1', 'uploads/imgg.jpg', 'uploads/lo.jpg', 2, 1, '2019-02-22', '0000-00-00'),
(6, 'Wide-Angle Cinema', '1.5', 'uploads/cinema123.jpg', 'uploads/1234.jpg', 2, 1, '2019-02-22', '0000-00-00'),
(7, 'Nirma Bus stand', '2', 'uploads/item-0.jpg', 'uploads/12110.jpg', 2, 1, '2019-02-22', '0000-00-00'),
(8, 'Gulmohor Mall', '1', 'uploads/hoardmall.jpg', 'uploads/dummy.jpg', 3, 1, '2019-03-02', '0000-00-00'),
(9, 'Sardar Vallabhbhai Patel International Airport', '1.5', 'uploads/ai2.jpg', 'uploads/123.jpg', 3, 1, '2019-03-02', '0000-00-00'),
(10, 'Vadodara Bus Stand', '2', 'uploads/bu1.jpg', 'uploads/b123.jpg', 3, 1, '2019-03-02', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user_tble`
--

CREATE TABLE `user_tble` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobilenum` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `sec_que` varchar(100) NOT NULL,
  `sec_ans` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `isactive` int(11) NOT NULL,
  `doi` date NOT NULL,
  `dou` datetime NOT NULL,
  `usertype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tble`
--

INSERT INTO `user_tble` (`id`, `firstname`, `lastname`, `password`, `email`, `mobilenum`, `gender`, `sec_que`, `sec_ans`, `Address`, `isactive`, `doi`, `dou`, `usertype`) VALUES
(1, 'palak', 'mehta', 'abc123', 'palak@gmail.com', '89898989', 'Male', '4', '123', 'bopal ', 1, '2019-01-22', '0000-00-00 00:00:00', 2),
(2, 'kirti', 'panchal', 'kirti123', 'aa@gmail.com', '89898989', 'Male', '5', 'krt', 'chandlodia', 1, '2019-01-22', '0000-00-00 00:00:00', 2),
(3, 'rajesh', 'sardhara', '123', 'rajesh@creart.in', '9727629529', 'Male', '1', 'blue', 'test', 1, '2019-04-15', '2019-04-15 00:00:00', 2),
(4, 'rajesh', 'sardhara', '123', 'rajesh@creart.in', '9727629529', 'Male', '1', 'blue', 'sdfds', 1, '2019-04-15', '2019-04-15 00:00:00', 2),
(5, 'dhruvi', 'mehta', 'dd123', 'dd@gmail.com', '9409666730', 'Male', '1', 'black', 'bopal', 1, '2019-04-15', '2019-04-15 00:00:00', 2),
(6, 'Krupa', 'Panchal', 'krupa123', 'kkpanchal106@gmail.com', '9081067161', 'Male', '4', 'Pizza', 'Chandlodia', 1, '2019-04-15', '2019-04-15 00:00:00', 2),
(7, 'Harsh panchal', '', 'harshnh6956', 'www.harshpanchalyoyo@gmail.com', '9824028227', 'Male', '5', 'Rocky', 'Nr,your house', 1, '2019-04-26', '2019-04-26 00:00:00', 2),
(8, 'Harsh', 'Panchal', 'harshnh6956', 'www.harshpanchalyoyo@gmail.com', '9824028227', 'Male', '5', 'Rocky', 'Nr, your home', 1, '2019-04-26', '2019-04-26 00:00:00', 2),
(9, 'Kaivalya', 'Pandya', 'kvp1911', '', '', 'Male', '1', 'Black', 'Abcdedgjgv', 1, '2019-07-28', '2019-07-28 00:00:00', 2),
(10, 'abc', 'abc', 'abc', 'abc@gmail.com', '1234567890', 'Male', '1', 'abc', 'abc', 1, '2019-12-31', '2019-12-31 00:00:00', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cate_tble`
--
ALTER TABLE `cate_tble`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `city_tble`
--
ALTER TABLE `city_tble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_tbl`
--
ALTER TABLE `client_tbl`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `complain_tbl`
--
ALTER TABLE `complain_tbl`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `cont_tbl`
--
ALTER TABLE `cont_tbl`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `quoo_tbl`
--
ALTER TABLE `quoo_tbl`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `securityque_tbl`
--
ALTER TABLE `securityque_tbl`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `state_tbl`
--
ALTER TABLE `state_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcate_tbl`
--
ALTER TABLE `subcate_tbl`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user_tble`
--
ALTER TABLE `user_tble`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cate_tble`
--
ALTER TABLE `cate_tble`
  MODIFY `cate_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `city_tble`
--
ALTER TABLE `city_tble`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `client_tbl`
--
ALTER TABLE `client_tbl`
  MODIFY `client_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `complain_tbl`
--
ALTER TABLE `complain_tbl`
  MODIFY `com_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cont_tbl`
--
ALTER TABLE `cont_tbl`
  MODIFY `c_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `quoo_tbl`
--
ALTER TABLE `quoo_tbl`
  MODIFY `q_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `securityque_tbl`
--
ALTER TABLE `securityque_tbl`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `state_tbl`
--
ALTER TABLE `state_tbl`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subcate_tbl`
--
ALTER TABLE `subcate_tbl`
  MODIFY `s_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_tble`
--
ALTER TABLE `user_tble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
