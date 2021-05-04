-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 02:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(8, 'Pratik', '123456', 'abc@gmail.com', '', '2019-07-24 11:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(3, 1, 'AFRICAN PERI PERI VEG', 'It is time to wake up to the fierce ', '250.00', '5d38339db6aaa.jpg'),
(4, 1, 'DOUBLE CHEESE MARGHERITA', 'Double amul cheese ', '180.00', '5d3833bb79550.jpg'),
(5, 1, 'VEGGIE PARADISE ', 'The awesome foursome! ', '200.00', '5d383432a5438.jpg'),
(6, 1, 'MEXICAN GREEN WAVE', '100% MEXICAN GREEN WAVE', '200.00', '5d38344f0d9be.png'),
(7, 1, 'DELUXE VEGGIE', 'Veg delight ', '230.00', '5d383472ce9c8.png'),
(8, 1, 'BURGER PIZZA - PREMIUM VEG ', '100% Veg ', '135.00', '5d3b08bd483ce.png'),
(9, 1, 'PEPSI', '250ML', '60.00', '5d3b08dbdbc98.png'),
(10, 1, 'PANEER & ONION', '100% Veg ', '95.00', '5d3b08fda9455.jpg'),
(11, 2, 'Pavbhaji', '500 GM 100% Veg ', '110.00', '5d3b097d2abfa.jpg'),
(12, 2, 'Veg Bombay Bhel', '500 GM 100% Veg ', '140.00', '5d3b09cbadc40.jpg'),
(13, 2, 'Veg Manchurian Dry', '300 GM 100% Veg ', '120.00', '5d3b09e990864.png'),
(14, 2, 'paneer chilli', '250 GM 100% Veg ', '200.00', '5d3b0a13e1f09.png'),
(15, 2, 'veg Manchow Soup', '250ML', '120.00', '5d3b0a3b89cd1.png'),
(16, 3, 'Strawberry thick shake', '100% original', '80.00', '5d3d486bb44f2.jpg'),
(18, 3, 'Oreo Cookies thick shake', '100 % original ', '80.00', '5d3d52bc5e334.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 44, 'in process', 'Makeing', '2019-07-26 16:17:01'),
(72, 44, 'in process', 'in Prosess', '2019-07-26 16:18:01'),
(73, 44, 'closed', 'closed', '2019-07-26 16:18:56'),
(74, 45, 'rejected', 'qsq', '2019-07-26 16:20:42'),
(75, 45, 'in process', 'asadad', '2019-07-26 16:21:31'),
(76, 45, 'closed', 'r', '2019-07-26 16:23:09'),
(77, 45, 'in process', 'wda', '2019-07-26 16:31:41'),
(78, 45, 'closed', 'efg', '2019-07-26 16:33:43'),
(79, 46, 'in process', 'Process', '2019-07-27 15:53:44'),
(80, 46, 'closed', 'thank You', '2019-07-27 15:54:38'),
(81, 47, 'in process', 'l', '2019-07-28 08:35:45'),
(82, 47, 'closed', 'hgc', '2019-07-28 08:36:28'),
(83, 50, 'closed', 'p', '2019-07-28 08:36:53'),
(84, 52, 'in process', ';oitratuiy', '2019-07-29 13:22:25'),
(85, 52, 'closed', 'poiuy', '2019-07-29 13:22:44'),
(86, 52, 'rejected', 'lkjhgf', '2019-07-29 13:23:02'),
(87, 54, 'in process', 'aqwdf', '2020-01-30 15:39:52'),
(88, 55, 'in process', 'we', '2020-01-30 15:40:24'),
(89, 55, 'closed', 'a', '2020-01-30 15:40:48'),
(90, 55, 'rejected', 'xc', '2020-01-30 15:41:06'),
(91, 55, 'closed', 'fsf', '2020-01-30 15:41:20'),
(92, 55, 'in process', 'qwwfedvawf', '2020-01-30 15:41:40'),
(93, 56, 'in process', 'efegh', '2020-01-30 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Veer Pizza', 'veerpizza@gmail.com', '9959985968', 'http://veerpizzacom/', '11am', '12pm', 'mon-tue', '301 Silver hub Gajera school katargam Surat-395004', '5d3832c5883a6.jpg', '2019-07-24 10:28:21'),
(2, 2, 'Krishna Fast Food', 'krishnafastfood78@gmail.com', '9663528563', 'https://krishnafastfood.com/', '04pm', '12pm', 'mon-tue', '1-9 Royal plaza Dabholi circle katargam surat-395004', '5d3b085ccbdb2.png', '2019-07-26 14:04:12'),
(3, 3, 'Bismillah juice & shake center ', 'bismillahjuice86@gmail.com', '91049 55555', 'http://www.bismillahjuice.com/', '10am', '12pm', 'mon-tue', '7/124-125, Opp, Railway Station Rd, Sufi Baug, Railway Station Area, Varachha, Surat, Gujarat 395003', '5d3d47fb2f1f4.jpg', '2019-07-28 07:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Pizza', '2019-07-24 10:22:50'),
(2, 'Chinese', '2019-07-26 13:59:59'),
(3, 'Juice & Shake', '2019-07-28 06:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'pratik123', 'pratik', 'ghelani', 'abc@gmail.com', '123-45-852', '123456', '86 Shanti Nagar Surat-4', 1, '2019-07-25 05:31:52'),
(4, 'pratik86', 'pratik', 'ghelani', 'pratikghelani86@gmail.com', '9959985968', '1d4bbcfed31c6e01e90d8e4099e39eb7', '86 shanti nagar', 1, '2019-07-25 05:35:02'),
(5, 'patu', 'pratik', 'ghelani', 'Jenishpatel1999@gmail.com', '7412589635', 'e10adc3949ba59abbe56e057f20f883e', '86 Shanti nagar soc dadholi surat', 1, '2019-07-26 16:12:28'),
(6, 'ghelani', 'pratik', 'ghelani', 'pratik9685@gmail.com', '9825968760', '6c8d1c990e532b115f944ffeca14a1eb', '85 ravi park Soc Surat', 1, '2019-07-28 08:28:39'),
(7, 'jay', 'jay', 'nariya', 'jaydeepnariya2110@gmail.com', '8758301015', '733d7be2196ff70efaf6913fc8bdcabf', 'kapodra police station', 1, '2019-07-29 11:29:24'),
(8, 'saj123', 'saj', 'hihoriya', 'saj@gmail.com', '1234567895', '4297f44b13955235245b2497399d7a93', 'dwdafsgh', 1, '2020-01-30 15:36:06'),
(9, 'Pratik123456789', 'Pratikkumar', 'Ghelani', 'pratik868686@gmail.com', '9106601196', '25f9e794323b453885f5181f1b624d0b', '86, Shanti Nagar Soc., dabholi circle ved road\r\nkatargam', 1, '2020-02-03 13:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(46, 5, 'Pavbhaji', 1, '110.00', 'closed', '2019-07-27 15:54:38'),
(47, 6, 'AFRICAN PERI PERI VEG', 1, '250.00', 'closed', '2019-07-28 08:36:28'),
(50, 6, 'MEXICAN GREEN WAVE', 1, '200.00', 'closed', '2019-07-28 08:36:53'),
(52, 7, 'DOUBLE CHEESE MARGHERITA', 1, '180.00', 'rejected', '2019-07-29 13:23:02'),
(53, 7, 'Strawberry thick shake', 2, '80.00', NULL, '2019-07-29 13:21:15'),
(56, 8, 'AFRICAN PERI PERI VEG', 1, '250.00', 'in process', '2020-01-30 16:00:00'),
(57, 8, 'AFRICAN PERI PERI VEG', 1, '250.00', NULL, '2020-01-30 16:00:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
