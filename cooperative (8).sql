-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2017 at 11:31 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooperative`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_data`
--

CREATE TABLE `book_data` (
  `bookac_no` varchar(15) NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `book_type` text NOT NULL,
  `deposit` double NOT NULL,
  `loan` double NOT NULL,
  `stock` int(11) NOT NULL,
  `sum_stock` int(11) NOT NULL,
  `interest` double NOT NULL,
  `fine_static` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `book_link` int(4) NOT NULL,
  `date_register` date NOT NULL,
  `officer` text NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_data`
--

INSERT INTO `book_data` (`bookac_no`, `account_no`, `book_type`, `deposit`, `loan`, `stock`, `sum_stock`, `interest`, `fine_static`, `status_active`, `book_link`, `date_register`, `officer`, `date_stamp`) VALUES
('041238514913581', '514894813257013', 'SA', 13200, 0, 0, 0, 0, 0, '1', 0, '2017-07-25', 'Sira', '2017-07-25 18:10:11'),
('410251443955031', '514894813257013', 'ST', 0, 0, 1000, 2120, 0, 0, '1', 0, '2017-07-25', 'Sira', '2017-07-24 18:02:40'),
('717891104550312', '189254081549332', 'ST', 0, 0, 5, 10, 0, 0, '1', 0, '2017-07-26', 'Sira', '2017-07-25 22:09:47'),
('911025130474031', '189254081549332', 'SA', 500, 0, 0, 0, 0, 0, '1', 0, '2017-07-26', 'Sira', '2017-07-25 22:16:51'),
('S00001', '201700001', 'SA', 200, 0, 0, 0, 0, 0, '1', 0, '2017-07-27', 'Sira', '2017-07-27 08:15:48'),
('T00001', '201700001', 'ST', 0, 0, 20, 20, 0, 0, '1', 0, '2017-07-27', 'Sira', '2017-07-27 07:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `book_type`
--

CREATE TABLE `book_type` (
  `book_type` text NOT NULL,
  `section` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_type`
--

INSERT INTO `book_type` (`book_type`, `section`, `category`, `description`) VALUES
('ST', 0, 0, 'บัญชีหุ้น');

-- --------------------------------------------------------

--
-- Table structure for table `config_category`
--

CREATE TABLE `config_category` (
  `category_id` varchar(11) NOT NULL,
  `description` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_category`
--

INSERT INTO `config_category` (`category_id`, `description`) VALUES
('01', 'System'),
('02', 'Deposit'),
('03', 'Fee'),
('04', 'Stock');

-- --------------------------------------------------------

--
-- Table structure for table `config_value`
--

CREATE TABLE `config_value` (
  `id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 NOT NULL,
  `section` varchar(20) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `value` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_value`
--

INSERT INTO `config_value` (`id`, `category`, `section`, `description`, `value`) VALUES
(1, '01', '01', 'Address Cooperative', '89/1 ซ.รัชดาภิเษก ถ.ราชปรารภ แขวงมักกะสัน เขตราชเทวี กทม 10400 ประเทศไทย'),
(2, '01', '02', 'phone Cooperative', '023333333'),
(3, '03', '01', 'Stock Fee', '50.00'),
(4, '04', '01', 'Stock Unit Price', '10.00'),
(5, '04', '02', 'Stock Unit First', '10'),
(6, '01', '00', 'Name Cooperative', 'สหกรณ์ออมทรัพย์ SSUP Group'),
(7, '01', '03', 'เลขที่สหกรณ์', '00000000000');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `account_no` varchar(15) NOT NULL,
  `Employee_no` varchar(15) NOT NULL,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `lastname` text NOT NULL,
  `id_card` varchar(13) NOT NULL,
  `birthday` date NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `phone_officer` varchar(20) NOT NULL,
  `company` text NOT NULL,
  `department` text NOT NULL,
  `position` text NOT NULL,
  `job_level` text NOT NULL,
  `member_type` text NOT NULL,
  `officer` text NOT NULL,
  `date_regis` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`account_no`, `Employee_no`, `title`, `name`, `lastname`, `id_card`, `birthday`, `phone_number`, `phone_officer`, `company`, `department`, `position`, `job_level`, `member_type`, `officer`, `date_regis`) VALUES
('189254081549332', 'A002', 'Ms.', 'สุวดี', 'เจียมจิรังกร', '1100600372691', '1997-04-22', '0814884643', '', 'SSUP Group', 'department', 'Graphic Design', '10', 'member', 'Sira', '2017-07-25 22:04:30'),
('201700001', 'A0003', 'Mr.', 'ศิระ', 'เหล่านพกุล', '1100400886585', '0000-00-00', '0925649892', '---', 'SSUP Group', 'department', 'IT', '3', 'member', 'Sira', '2017-07-27 07:47:05'),
('514894813257013', 'A001', 'Mr.', 'ศิระ', 'เหล่านพกุล', '1100400886585', '1997-03-27', '0925649892', '', 'SSUP Group', 'department', 'PHP Developer', '6', 'member', 'Sira', '2017-07-24 20:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_fix`
--

CREATE TABLE `transactions_fix` (
  `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `bookac_no` varchar(15) NOT NULL,
  `tran_type` text NOT NULL,
  `period` text NOT NULL,
  `amount` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `officer` text NOT NULL,
  `date_tran` date NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_incoming`
--

CREATE TABLE `transactions_incoming` (
  `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `bookac_no` varchar(15) NOT NULL,
  `tran_type` text NOT NULL,
  `period` text NOT NULL,
  `amount` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `officer` text NOT NULL,
  `date_tran` date NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions_incoming`
--

INSERT INTO `transactions_incoming` (`tran_no`, `account_no`, `bookac_no`, `tran_type`, `period`, `amount`, `status_active`, `officer`, `date_tran`, `date_stamp`) VALUES
(0000016, '514894813257013', '410251443955031', 'fee', '7/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-25 18:02:40'),
(0000017, '514894813257013', '041238514913581', 'fee', '7/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-25 18:10:11'),
(0000018, '189254081549332', '717891104550312', 'fee', '8/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-25 22:09:47'),
(0000019, '189254081549332', '911025130474031', 'fee', '8/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-25 22:16:51'),
(0000020, '11111111111111', '222222222222222', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 03:46:49'),
(0000021, '11111111111111', '222222222222222', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 03:49:16'),
(0000022, '11111111111111', '222222222222222', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 03:52:43'),
(0000023, '11111111111111', '222222222222222', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 03:54:45'),
(0000024, '11111111111111', '222222222222222', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 04:01:15'),
(0000025, '11111111111111', '333333333333333', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 04:04:16'),
(0000026, '11111111111111', '333333333333333', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 04:05:52'),
(0000027, '11111111111111', '1i7777777777777', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 04:07:54'),
(0000028, '11111111111111', '111111111111111', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 04:10:28'),
(0000029, '11111111111111', '666666666666666', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 04:13:35'),
(0000030, '11111111111111', '666677777777', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 04:14:13'),
(0000031, '514894813257013', 'uiuiuiuiuiuiuiu', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 06:34:33'),
(0000032, '', '666666', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 06:37:26'),
(0000033, '201700001', 'T00001', 'fee', '07/2017', 50, '1', 'Sira', '0000-00-00', '2017-07-27 07:51:19'),
(0000034, '201700001', 'S00001', 'fee', '07/2017', 0, '1', 'Sira', '0000-00-00', '2017-07-27 08:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_other_expenses`
--

CREATE TABLE `transactions_other_expenses` (
  `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `bookac_no` varchar(15) NOT NULL,
  `tran_type` text NOT NULL,
  `period` text NOT NULL,
  `amount` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `officer` text NOT NULL,
  `date_tran` date NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_personal_loans`
--

CREATE TABLE `transactions_personal_loans` (
  `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `bookac_no` varchar(15) NOT NULL,
  `tran_type` text NOT NULL,
  `period` text NOT NULL,
  `amount` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `officer` text NOT NULL,
  `date_tran` date NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_saving`
--

CREATE TABLE `transactions_saving` (
  `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `bookac_no` varchar(15) NOT NULL,
  `tran_type` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `period` text NOT NULL,
  `amount` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `officer` text NOT NULL,
  `date_tran` date NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions_saving`
--

INSERT INTO `transactions_saving` (`tran_no`, `account_no`, `bookac_no`, `tran_type`, `description`, `period`, `amount`, `status_active`, `officer`, `date_tran`, `date_stamp`) VALUES
(0000001, '514894813257013', '041238514913581', 'ฝาก', 'เปิดบัญชีใหม่', '7/2017', 100, '1', 'Sira', '0000-00-00', '2017-07-25 18:10:11'),
(0000002, '514894813257013', '041238514913581', 'ฝาก', 'ฝากเงิน', '8/2017', 200, '1', 'Sira', '0000-00-00', '2017-07-25 18:24:52'),
(0000004, '514894813257013', '041238514913581', 'ถอน', 'ถอนเงิน', '8/2017', 100, '1', 'Sira', '0000-00-00', '2017-07-25 20:57:59'),
(0000005, '514894813257013', '041238514913581', 'ถอน', 'ถอนเงิน', '8/2017', 200, '1', 'Sira', '0000-00-00', '2017-07-25 21:00:19'),
(0000006, '514894813257013', '041238514913581', 'ฝาก', 'ฝากเงิน', '7/2017', 10000, '1', 'Sira', '0000-00-00', '2017-07-25 21:09:52'),
(0000007, '514894813257013', '041238514913581', 'ฝาก', 'ฝากเงิน', '7/2017', 200, '1', 'Sira', '0000-00-00', '2017-07-25 21:59:08'),
(0000008, '189254081549332', '911025130474031', 'ฝาก', 'เปิดบัญชีใหม่', '8/2017', 500, '1', 'Sira', '0000-00-00', '2017-07-25 22:16:51'),
(0000009, '514894813257013', '041238514913581', 'ฝาก', 'ฝากเงิน', '7/2017', 2000, '1', 'Sira', '0000-00-00', '2017-07-27 03:01:01'),
(0000010, '514894813257013', '041238514913581', 'ฝาก', 'ฝากเงิน', '7/2017', 100, '1', 'Sira', '0000-00-00', '2017-07-27 03:01:31'),
(0000011, '514894813257013', '041238514913581', 'ถอน', 'ถอนเงิน', '7/2017', 300, '1', 'Sira', '0000-00-00', '2017-07-26 06:30:13'),
(0000027, '514894813257013', '041238514913581', 'ฝาก', 'ฝากเงิน', '07/2017', 1200, '1', 'Sira', '0000-00-00', '2017-07-27 07:35:15'),
(0000028, '201700001', 'S00001', 'ฝาก', 'เปิดบัญชีใหม่', '07/2017', 200, '1', 'Sira', '0000-00-00', '2017-07-27 08:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_stock`
--

CREATE TABLE `transactions_stock` (
  `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL,
  `account_no` varchar(15) NOT NULL,
  `bookac_no` varchar(15) NOT NULL,
  `tran_type` text NOT NULL,
  `period` text NOT NULL,
  `unit_stock` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status_active` varchar(1) NOT NULL,
  `officer` text NOT NULL,
  `date_tran` date NOT NULL,
  `date_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions_stock`
--

INSERT INTO `transactions_stock` (`tran_no`, `account_no`, `bookac_no`, `tran_type`, `period`, `unit_stock`, `amount`, `status_active`, `officer`, `date_tran`, `date_stamp`) VALUES
(0000001, '514894813257013', '410251443955031', 'เปิดบัญชีหุ้น', '07/2017', 20, 200, '1', 'Sira', '2017-07-25', '2017-07-24 23:52:51'),
(0000002, '514894813257013', '410251443955031', 'ชำระหุ้น', '08/2017', 20, 200, '1', 'Sira', '2017-07-26', '2017-07-25 18:25:12'),
(0000003, '189254081549332', '717891104550312', 'เปิดบัญชีหุ้น', '07/2017', 5, 150, '1', 'Sira', '2017-07-26', '2017-07-25 22:09:47'),
(0000028, '514894813257013', '410251443955031', 'ชำระหุ้น', '09/2017', 20, 200, '1', 'Sira', '2017-07-27', '2017-07-27 02:11:42'),
(0000038, '189254081549332', '717891104550312', 'ชำระหุ้น', '08/2017', 5, 50, '1', 'Sira', '2017-07-27', '2017-07-27 02:52:44'),
(0000099, '514894813257013', '410251443955031', 'ชำระหุ้น', '10/2017', 20, 200, '1', 'Sira', '2017-07-27', '2017-07-27 07:14:24'),
(0000100, '514894813257013', '410251443955031', 'ชำระหุ้น', '11/2017', 20, 200, '1', 'Sira', '2017-07-27', '2017-07-27 07:26:56'),
(0000101, '201700001', 'T00001', 'เปิดบัญชีหุ้น', '07/2017', 20, 200, '1', 'Sira', '2017-07-27', '2017-07-27 07:51:19'),
(0000102, '514894813257013', '410251443955031', 'ชำระหุ้น', '08/2017', 20, 200, '1', 'Sira', '2017-07-27', '2017-07-27 08:02:13'),
(0000103, '514894813257013', '410251443955031', 'ชำระหุ้น', '09/2017', 1000, 10000, '1', 'Sira', '2017-07-27', '2017-07-27 08:04:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_data`
--
ALTER TABLE `book_data`
  ADD PRIMARY KEY (`bookac_no`);

--
-- Indexes for table `config_category`
--
ALTER TABLE `config_category`
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `config_value`
--
ALTER TABLE `config_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `transactions_fix`
--
ALTER TABLE `transactions_fix`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `transactions_incoming`
--
ALTER TABLE `transactions_incoming`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `transactions_other_expenses`
--
ALTER TABLE `transactions_other_expenses`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `transactions_personal_loans`
--
ALTER TABLE `transactions_personal_loans`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `transactions_saving`
--
ALTER TABLE `transactions_saving`
  ADD PRIMARY KEY (`tran_no`);

--
-- Indexes for table `transactions_stock`
--
ALTER TABLE `transactions_stock`
  ADD PRIMARY KEY (`tran_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config_value`
--
ALTER TABLE `config_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transactions_fix`
--
ALTER TABLE `transactions_fix`
  MODIFY `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions_incoming`
--
ALTER TABLE `transactions_incoming`
  MODIFY `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `transactions_other_expenses`
--
ALTER TABLE `transactions_other_expenses`
  MODIFY `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions_personal_loans`
--
ALTER TABLE `transactions_personal_loans`
  MODIFY `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions_saving`
--
ALTER TABLE `transactions_saving`
  MODIFY `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `transactions_stock`
--
ALTER TABLE `transactions_stock`
  MODIFY `tran_no` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
