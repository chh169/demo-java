-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 03:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zipstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `aaa`
--

CREATE TABLE `aaa` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `user_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `upline_n_rank` text DEFAULT NULL,
  `upline_in` text DEFAULT NULL,
  `upline_ac` text DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admrank`
--

CREATE TABLE `admrank` (
  `id` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gwregister`
--

CREATE TABLE `gwregister` (
  `id` int(11) NOT NULL,
  `salary` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `nomineename` varchar(25) NOT NULL,
  `nomineenumber` varchar(25) NOT NULL,
  `acholder` varchar(25) NOT NULL,
  `acnumber` varchar(25) NOT NULL,
  `ifsc` varchar(25) NOT NULL,
  `bankname` varchar(25) NOT NULL,
  `pic` varchar(125) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'active',
  `timedate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gwregister`
--

INSERT INTO `gwregister` (`id`, `salary`, `fname`, `lname`, `mobile`, `pass`, `email`, `nomineename`, `nomineenumber`, `acholder`, `acnumber`, `ifsc`, `bankname`, `pic`, `status`, `timedate`) VALUES
(1, '1000', 'abc', 'SHARMA', '9575126240', '123456', 'admin@gmail.com', 'dop', 'fof', 'ghf', '5545544', '212442', '5sdfa', '1716382821.png', 'active', '2024-05-22 13:00:22'),
(2, '15000', 'mehul', 'jain', '98269826', '123456', 'mehul@gmail.com', 'mukesh', '9254144514', 'mehul jain', '561845556', 'SBI12544', 'SBI', '1716544602.png', 'active', '2024-05-24 09:56:42'),
(3, '150000', 'Suraj ', 'Prasad', '8839707773', '123456', 'suraj8839707773@gmail.com', 'Divya Prasad ', '7489314651', 'Suraj prasad ', '50100335357695', 'HDFC0009684', 'HDFC ', '1716556279.jpg', 'active', '2024-05-24 13:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `laser`
--

CREATE TABLE `laser` (
  `id` int(11) NOT NULL,
  `fromid` varchar(65) NOT NULL,
  `toid` varchar(10) NOT NULL,
  `incoime` float(10,2) NOT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laser`
--

INSERT INTO `laser` (`id`, `fromid`, `toid`, `incoime`, `timedate`, `status`) VALUES
(1, '9C1612B498033E2624151EAF3EAB76FC', '9575126240', 8500.00, '2024-06-07 08:09:29', 1),
(2, 'DDB5E1FD0910EE38A8CA6FF2A6997280', '9575126240', 8500.00, '2024-06-07 08:14:18', 1),
(3, '4F11A20153E52CC8320A126B6FC56408', '9575126240', 8500.00, '2024-06-07 08:16:36', 1),
(4, 'F1942E8C5858564556C26BCBE231FE56', '9575126240', 49.90, '2024-06-07 08:17:57', 1),
(5, '692114B50E37F855D0AC20EACD389F9C', 'JP236918', 49.90, '2024-06-26 09:37:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_adata`
--

CREATE TABLE `new_adata` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `user_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `upline_n_rank` text DEFAULT NULL,
  `upline_in` text DEFAULT NULL,
  `upline_ac` text DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_adata`
--

INSERT INTO `new_adata` (`id`, `cart_id`, `amount`, `user_id`, `crank`, `upline_n_rank`, `upline_in`, `upline_ac`, `date_time`) VALUES
(1, '184940886194', 8500.00, 'RE236918', 0, '[]', '[]', '[]', '2024-04-11 09:22:00'),
(2, '181892957300', 600.00, 'JP966781', 0, '[[\"JP236918\",1]]', '[]', '[]', '2024-04-11 12:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `new_admin`
--

CREATE TABLE `new_admin` (
  `id` int(11) NOT NULL,
  `total_transaction` decimal(15,2) DEFAULT 0.00,
  `total_user_income` decimal(15,2) DEFAULT 0.00,
  `total_user_income_gpg` decimal(15,2) DEFAULT 0.00,
  `total_spill_income` decimal(15,2) DEFAULT 0.00,
  `total_spill_income_gpg` decimal(15,2) DEFAULT 0.00,
  `pending_withdraw` decimal(15,2) DEFAULT 0.00,
  `total_withdraw` decimal(15,2) DEFAULT 0.00,
  `down` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_challange`
--

CREATE TABLE `new_challange` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT NULL,
  `business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `close_date_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT 'open',
  `result` varchar(10) DEFAULT 'waiting',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_ledger`
--

CREATE TABLE `new_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `for_transaction_id` varchar(20) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT 0.00,
  `for_amount` decimal(15,2) DEFAULT 0.00,
  `cart_amount` decimal(15,2) DEFAULT 0.00,
  `from_id` varchar(15) DEFAULT NULL,
  `purpose` varchar(30) DEFAULT NULL,
  `sub_purpose` varchar(50) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'paid',
  `date_time` timestamp NULL DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_matrix`
--

CREATE TABLE `new_matrix` (
  `id` int(11) NOT NULL,
  `rank` int(11) DEFAULT 0,
  `user_id` varchar(15) DEFAULT NULL,
  `team_business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT 'open',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_monthly_data`
--

CREATE TABLE `new_monthly_data` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `direct_count` int(11) DEFAULT 0,
  `income_sum` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `total_direct_income` decimal(15,2) DEFAULT 0.00,
  `total_gbp_income` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_self_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_payout`
--

CREATE TABLE `new_payout` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `payable_amount` decimal(15,2) DEFAULT 0.00,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `level_income` decimal(15,2) DEFAULT 0.00,
  `gpg_income` decimal(15,2) DEFAULT 0.00,
  `direct_income` decimal(15,2) DEFAULT 0.00,
  `gbp_income` decimal(15,2) DEFAULT 0.00,
  `tds_fee` decimal(15,2) DEFAULT 0.00,
  `admin_fee` decimal(15,2) DEFAULT 0.00,
  `self_business` decimal(15,2) DEFAULT 0.00,
  `team_business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_payout_admin`
--

CREATE TABLE `new_payout_admin` (
  `id` int(11) NOT NULL,
  `total_sales` decimal(15,2) DEFAULT 0.00,
  `total_user` int(11) DEFAULT 0,
  `payable_amount` decimal(15,2) DEFAULT 0.00,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `total_direct_income` decimal(15,2) DEFAULT 0.00,
  `total_gbp_income` decimal(15,2) DEFAULT 0.00,
  `total_tds` decimal(15,2) DEFAULT 0.00,
  `total_admin_fee` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_structure`
--

CREATE TABLE `new_structure` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `parent_id` varchar(15) DEFAULT NULL,
  `level` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `new_structure`
--

INSERT INTO `new_structure` (`id`, `user_id`, `parent_id`, `level`) VALUES
(1, 'RE236918', 'ADMIN', 0),
(2, 'RE636250', 'RE236918', 1),
(3, 'RE500196', 'RE236918', 1),
(4, 'JP966781', 'JP236918', 1),
(5, 'JP168499', 'JP236918', 1),
(6, 'JP585035', 'JP236918', 1),
(7, 'JP455165', 'JP236918', 1),
(8, 'JP520983', 'JP236918', 1),
(9, 'JP673411', '9575126240', 1),
(10, 'JP573822', 'JP236918', 1),
(11, 'JP226686', 'JP236918', 1),
(12, 'JP499816', 'JP236918', 1);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL,
  `details` varchar(75) NOT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `terms` text DEFAULT NULL,
  `moneyback` text DEFAULT NULL,
  `return` text DEFAULT NULL,
  `shipment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `terms`, `moneyback`, `return`, `shipment`) VALUES
(1, '<section class=\"section pb-0\" style=\"overflow: hidden; padding: 7rem 0px;\"><div class=\"container\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; width: 1140px; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); max-width: 1140px; z-index: 2; position: relative;\"><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); align-items: center !important;\"><div class=\"col-md-12 me-auto\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); margin-right: auto !important;\"><p style=\"margin-bottom: 1rem;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px; font-weight: bolder;\">Welcome to www.</span><span style=\"font-size: 16px;\"><b>jpfashion.in</b></span><span style=\"color: rgb(0, 0, 0); font-size: 16px; font-weight: bolder;\">&nbsp; (hereinafter referred to as \"the Platform\"). These Terms and Conditions govern your use of the Platform, including all services, features, and functionalities offered by Unique Solution (hereinafter referred to as \"we,\" \"us,\" or \"our\").</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><br>By accessing or using the Platform, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these Terms, you may not use the Platform..</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">1. Use of the Platform</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\"><br></span><span style=\"font-weight: bolder;\">1.1 Eligibility</span>: You must be at least 18 years old to use the Platform. By using the Platform, you represent and warrant that you are of legal age to form a binding contract with us.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\"><br></span><span style=\"font-weight: bolder;\">1.2 Account Registration</span>: In order to access certain features of the Platform, you may be required to create an account. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">1.3 Prohibited Activities</span>: You agree not to engage in any of the following prohibited activities:</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">Violating any applicable laws or regulations;</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\">Impersonating any person or entity or misrepresenting your affiliation with any person or entity; Interfering with or disrupting the integrity or performance of the Platform; Attempting to gain unauthorized access to any portion or feature of the Platform.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">2. Purchases</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">2.1 Product Information</span>: We strive to provide accurate and up-to-date information about the products available on the Platform. However, we do not warrant that product descriptions, images, or specifications are error-free, complete, or current.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">2.2 Pricing and Payment</span>: All prices displayed on the Platform are in rupees and are subject to change without notice. We reserve the right to refuse or cancel any orders placed for products listed at an incorrect price. Payment for all orders must be made at the time of purchase.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">2.3 Shipping and Delivery</span>: We will make every effort to ensure timely delivery of your orders. However, we are not responsible for delays or failures in delivery caused by events beyond our control.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">3. Intellectual Property</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">3.1 Ownership</span>: All content, trademarks, logos, and other intellectual property rights on the Platform are owned or licensed by us. You may not use, reproduce, or distribute any content from the Platform without our prior written consent.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">3.2 User Content</span>: By submitting any content (such as reviews, comments, or feedback) to the Platform, you grant us a non-exclusive, royalty-free, perpetual, irrevocable, and fully sublicensable right to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, and display such content in any form, media, or technology.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">4. Disclaimer of Warranties</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">4.1</span>&nbsp;The Platform is provided on an \"as is\" and \"as available\" basis, without any warranties of any kind, express or implied. We do not warrant that the Platform will be uninterrupted, error-free, or free of viruses or other harmful components.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">5. Limitation of Liability</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\">5.1 In no event shall we be liable for any indirect, incidental, special, consequential, or punitive damages, arising out of or in connection with your use of the Platform or any products purchased through the Platform.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">6. Governing Law</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\">6.1 These Terms and Conditions shall be governed by and construed in accordance with the laws of India, without regard to its conflict of laws provisions.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">7. Changes to Terms and Conditions</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\">7.1 We reserve the right to modify or update these Terms and Conditions at any time, without prior notice. It is your responsibility to review these Terms periodically for any changes.</p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">8. Contact Us</span></p><p style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 1rem;\">8.1 If you have any questions or concerns about these Terms and Conditions, please contact us at query@jpfashion.in</p></div></div></div></section>', '<section class=\"section pb-0\" style=\"overflow: hidden; padding: 7rem 0px;\"><div class=\"container\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; width: 1140px; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); max-width: 1140px; z-index: 2; position: relative;\"><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); align-items: center !important;\"><div class=\"col-md-12 me-auto\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); margin-right: auto !important;\"><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px; font-weight: bolder;\">Thank you for shopping at www.</span><span style=\"font-size: 16px;\"><b>jpfashion.in</b></span><span style=\"font-size: 16px; font-weight: bolder;\">! We hope you are delighted with your purchase. However, if you are not entirely satisfied with your purchase, we\'re here to help.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px; font-weight: bolder;\"><br></span><span style=\"font-weight: bolder; font-size: 16px;\">1. Return Eligibility</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">1.1 To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">1.2 Some products are exempt from being returned. These include:</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder; font-size: 16px;\">Gift cards</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px; font-weight: bolder;\">Certain health and personal care items</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder; font-size: 16px;\">2. Return Process</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">2.1 To initiate a return, please contact our customer service team at query@jpfashion.in on same days of receiving your item. Please provide your order number and details about the product you would like to return.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">2.2 Our customer service team will provide you with instructions on how to return the item. Please note that you may be responsible for return shipping costs unless the return is due to our error (e.g., you received the wrong item or a defective product).</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder; font-size: 16px;\">3. Refunds</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">3.1 Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">3.2 If your return is approved, your refund will be processed, and a credit will automatically be applied to your original method of payment within 3 working days.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder; font-size: 16px;\">4. Exchanges</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">4.1 If you need to exchange an item for a different size, color, or model, please contact our customer service team at query@uniquesolution.info to arrange for an exchange. We will provide you with instructions on how to return the original item and process the exchange.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder; font-size: 16px;\">5. Damaged or Defective Items</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">5.1 If you receive a damaged or defective item, please contact our customer service team immediately at query@jpfashion.in. We will work with you to resolve the issue as quickly as possible, including arranging for a replacement or refund.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder; font-size: 16px;\">6. Contact Us</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\">6.1 If you have any questions about our Return Policy, please contact us at query@jpfashion.in&nbsp;.</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 16px;\"><br></span><span style=\"font-size: 16px;\">Last Updated: 05/05/2024</span></p></div></div></div></section>', '<section class=\"section pb-0\" style=\"overflow: hidden; padding: 7rem 0px; color: rgb(159, 161, 164); font-size: 16px;\"><div class=\"container\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; width: 1140px; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); max-width: 1140px; z-index: 2; position: relative;\"><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); align-items: center !important;\"><div class=\"col-md-12 me-auto\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); margin-right: auto !important;\"><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">This Privacy Policy governs the manner in which www.</span>jpfashion.in<span style=\"font-weight: bolder;\">&nbsp;(collectively referred to as \"the Platform\") collect, use, maintain, and disclose information collected from users (each, a \"User\") of the Platform.</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\"><br></span><span style=\"font-weight: bolder;\">1. Information We Collect</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">1.1 Personal Identification Information</span>: We may collect personal identification information from Users in various ways, including when Users visit the Platform, register on the Platform, place an order, subscribe to the newsletter, respond to a survey, fill out a form, and in connection with other activities, services, features, or resources we make available on the Platform. Users may be asked for, as appropriate, name, email address, mailing address, phone number, and payment information.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">1.2 Non-personal Identification Information</span>: We may collect non-personal identification information about Users whenever they interact with the Platform. Non-personal identification information may include the browser name, the type of computer or mobile device, and technical information about Users\' means of connection to the Platform, such as the operating system and the Internet service providers utilized.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">2. How We Use Collected Information</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">2.1 Personal Information</span>: We may use Users\' personal information for the following purposes:</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">To personalize user experience: We may use information in the aggregate to understand how our Users as a group use the services and resources provided on the Platform. To improve the Platform: We continually strive to improve our offerings based on the information and feedback we receive from Users.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">To process transactions: We may use the information Users provide about themselves when placing an order only to provide service to that order. We do not share this information with outside parties except to the extent necessary to provide the service.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">To send periodic emails: We may use the email address to send User information and updates pertaining to their order. It may also be used to respond to their inquiries, questions, and/or other requests. If User decides to opt-in to our mailing list, they will receive emails that may include company news, updates, related product or service information, etc.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">3. How We Protect Your Information</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">3.1 We adopt appropriate data collection, storage, and processing practices and security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information, username, password, transaction information, and data stored on the Platform.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">4. Sharing Your Personal Information</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">4.1 We do not sell, trade, or rent Users\' personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates, and advertisers for the purposes outlined above.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">5. Changes to this Privacy Policy</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">5.1 We have the discretion to update this Privacy Policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this Privacy Policy periodically and become aware of modifications.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">6. Your Acceptance of These Terms</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\">6.1 By using the Platform, you signify your acceptance of this Privacy Policy. If you do not agree to this policy, please do not use the Platform. Your continued use of the Platform following the posting of changes to this policy will be deemed your acceptance of those changes.</p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">7. Contacting Us</span></p><p style=\"margin-bottom: 1rem; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\"><br></span>7.1 If you have any questions about this Privacy Policy, the practices of the Platform, or your dealings with the Platform, please contact us at query@jpfashion.in.&nbsp; Last Updated: 05/05/2024</p></div></div></div></section>', '<b>This Privacy Policy governs the manner in which www.jpfashion.in and our Android app (collectively referred to as \"the Platform\") collect, use, maintain, and disclose information collected from users (each, a \"User\") of the Platform.</b>\n<hr/>\nShipment Policy<br/>\nThank you for shopping with us at jpfashion.in ! We aim to provide you with the best shopping experience possible. Please take a moment to review our shipment policy below:<br/>\nShipping Methods:<br/>\nCash on Delivery (COD): We offer Cash on Delivery service for your convenience. With COD, you can pay for your order in cash when it is delivered to your doorstep. Online Payment: You can also choose to pay for your order online using secure payment methods such as credit/debit cards, net banking, or mobile wallets. Rest assured, your payment information is encrypted and protected.\n<br/>\nShipping Charges: 300- 900ruppess  approx depend on distance<br/>\nFor orders above 1000rupees, shipping is free within  (Chhattisgarh).<br/>\nFor orders below 200rupees, a flat shipping fee of 100-500rupees will be applied.<br/>\nDelivery Time:<br/>\nFor COD and Online Payment: Your order will be processed and dispatched within 3days of order placement. Delivery times may vary depending on your location and the shipping method chosen.<br/>\nFor Store Pickup: You will receive an email notification when your order is ready for pickup at our store. Please bring a valid ID and your order confirmation for verification.<br/><br/>\nOrder Tracking:<br/>\nOnce your order is shipped, you will receive a tracking number via email and SMS (if provided). You can use this tracking number to monitor the status of your shipment online.<br/><br/>\nShipping Restrictions:\n<br/>\nWe currently only ship within Dhamtri (C.G). We apologize for any inconvenience this may cause. We are unable to deliver to P.O. boxes or APO/FPO addresses at this time.<br/>\nContact Us:<br/>\nIf you have any questions or concerns regarding your order or shipment, please feel free to contact our customer service team at query@jpfashion.in. We are here to assist you!<br/>\nNote: Our shipment policy is subject to change without prior notice. Please review this page periodically for any updates.\nThank you for choosing jpfashion.in! We appreciate your business.');

-- --------------------------------------------------------

--
-- Table structure for table `returnproduct`
--

CREATE TABLE `returnproduct` (
  `id` int(11) NOT NULL,
  `memid` varchar(15) DEFAULT NULL,
  `product` varchar(125) DEFAULT NULL,
  `pamt` float(10,2) DEFAULT NULL,
  `reason` varchar(125) DEFAULT NULL,
  `photo1` varchar(75) DEFAULT NULL,
  `photo2` varchar(75) DEFAULT NULL,
  `aadharno` varchar(12) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1-done,2-reject',
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salarygen`
--

CREATE TABLE `salarygen` (
  `id` int(11) NOT NULL,
  `stfid` int(11) DEFAULT NULL,
  `salary` float(10,2) DEFAULT NULL,
  `bonus` float(10,2) DEFAULT NULL,
  `roomrent` float(10,2) NOT NULL DEFAULT 0.00,
  `conyeyance` float(10,2) NOT NULL DEFAULT 0.00,
  `extraincome` float(10,2) NOT NULL DEFAULT 0.00,
  `smonth` varchar(25) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salarygen`
--

INSERT INTO `salarygen` (`id`, `stfid`, `salary`, `bonus`, `roomrent`, `conyeyance`, `extraincome`, `smonth`, `datetime`) VALUES
(1, 2, 15000.00, NULL, 0.00, 0.00, 0.00, '4', '2024-05-24 10:36:14'),
(2, 2, 15000.00, NULL, 0.00, 0.00, 0.00, '5', '2024-05-24 10:36:45'),
(3, 2, 15000.00, NULL, 0.00, 0.00, 0.00, '3', '2024-05-24 10:37:28'),
(4, 3, 150000.00, NULL, 0.00, 0.00, 0.00, '1', '2024-05-24 15:32:25'),
(5, 7, 15000.00, NULL, 0.00, 0.00, 0.00, '2', '2024-05-24 18:10:43'),
(6, 7, 15000.00, NULL, 0.00, 0.00, 0.00, '4', '2024-05-25 04:01:00'),
(7, 11, 40000.00, NULL, 0.00, 0.00, 0.00, '5', '2024-05-27 08:20:40'),
(8, 11, 40000.00, NULL, 0.00, 0.00, 0.00, '6', '2024-05-27 08:20:59'),
(9, 11, 40000.00, NULL, 0.00, 0.00, 0.00, '12', '2024-05-28 06:13:59'),
(10, 10, 10000.00, 100.00, 0.00, 0.00, 0.00, '12', '2024-05-28 06:16:07'),
(11, 13, 45200.00, 2170.00, 0.00, 0.00, 0.00, '4', '2024-05-28 16:27:44'),
(12, 13, 45200.00, 2170.00, 0.00, 0.00, 0.00, '5', '2024-05-28 16:28:23'),
(13, 11, 150000.00, 0.00, 0.00, 0.00, 0.00, '5', '2024-05-30 16:02:58'),
(14, 16, 15000.00, 400.00, 2000.00, 300.00, 1500.00, '6', '2024-06-09 06:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `page_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `title`, `sub_title`, `date_time`, `comment`, `category`, `photo`, `page_url`) VALUES
(101, 'test', 'description', '2024-07-24 18:56:25', 'this is coment', 'test', 'https://www.pexels.com/photo/a-photography-of-a-man-standing-on-a-tree-3680219/', NULL),
(102, 'this is tite', NULL, '2024-07-02 19:11:49', 'hello', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Navy Blue'),
(22, 'Wine '),
(23, 'Royal Blue'),
(24, 'Sky blue'),
(25, 'Bottel green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(99, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `withdraw_wallet` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `level_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `direct_wallet` decimal(15,2) DEFAULT 0.00,
  `gbp_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_purchase` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `total_direct_income` decimal(15,2) DEFAULT 0.00,
  `total_gbp_income` decimal(15,2) DEFAULT 0.00,
  `pending_withdraw` decimal(15,2) DEFAULT 0.00,
  `total_withdraw` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business_self` decimal(15,2) DEFAULT 0.00,
  `coupon` int(11) DEFAULT 0,
  `dob` date DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_cname` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_country` varchar(50) DEFAULT NULL,
  `cust_address` text DEFAULT NULL,
  `cust_city` varchar(100) DEFAULT NULL,
  `cust_state` varchar(100) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `bank_name` varchar(60) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(15) DEFAULT NULL,
  `nominee_name` varchar(100) DEFAULT NULL,
  `nominee_relation` varchar(20) DEFAULT NULL,
  `cust_b_name` varchar(100) DEFAULT NULL,
  `cust_b_cname` varchar(100) DEFAULT NULL,
  `cust_b_phone` varchar(50) DEFAULT NULL,
  `cust_b_country` varchar(50) DEFAULT NULL,
  `cust_b_address` text DEFAULT NULL,
  `cust_b_city` varchar(100) DEFAULT NULL,
  `cust_b_state` varchar(100) DEFAULT NULL,
  `cust_b_zip` varchar(30) DEFAULT NULL,
  `cust_s_name` varchar(100) DEFAULT NULL,
  `cust_s_cname` varchar(100) DEFAULT NULL,
  `cust_s_phone` varchar(50) DEFAULT NULL,
  `cust_s_country` varchar(50) DEFAULT NULL,
  `cust_s_address` text DEFAULT NULL,
  `cust_s_city` varchar(100) DEFAULT NULL,
  `cust_s_state` varchar(100) DEFAULT NULL,
  `cust_s_zip` varchar(30) DEFAULT NULL,
  `pic` varchar(75) DEFAULT NULL,
  `cust_password` varchar(100) DEFAULT NULL,
  `cust_token` varchar(255) DEFAULT NULL,
  `cust_datetime` timestamp NULL DEFAULT NULL,
  `cust_timestamp` varchar(100) DEFAULT NULL,
  `cust_status` int(11) NOT NULL DEFAULT 1,
  `fr_type` tinyint(4) DEFAULT 0,
  `fr_by` varchar(15) DEFAULT NULL,
  `fr_datetime` timestamp NULL DEFAULT NULL,
  `cr_datetime` timestamp NULL DEFAULT NULL,
  `in_datetime` timestamp NULL DEFAULT NULL,
  `ac_datetime` timestamp NULL DEFAULT NULL,
  `dk_datetime` timestamp NULL DEFAULT NULL,
  `ace_ok` tinyint(4) DEFAULT 0,
  `duke_ok` tinyint(4) DEFAULT 0,
  `ace_ok_datetime` timestamp NULL DEFAULT NULL,
  `duke_ok_datetime` timestamp NULL DEFAULT NULL,
  `ace_challange` tinyint(4) DEFAULT 0,
  `duke_challange` tinyint(4) DEFAULT 0,
  `status` varchar(8) NOT NULL DEFAULT 'active',
  `achiver` int(11) NOT NULL DEFAULT 1 COMMENT '2- active,1-inactive',
  `cust_otp` int(5) NOT NULL DEFAULT 12345,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `user_id`, `sponsor_id`, `crank`, `withdraw_wallet`, `income_wallet`, `level_wallet`, `gpg_wallet`, `direct_wallet`, `gbp_wallet`, `gpg_valid`, `total_income`, `total_purchase`, `total_level_income`, `total_gpg_income`, `total_direct_income`, `total_gbp_income`, `pending_withdraw`, `total_withdraw`, `monthly_purchase`, `temp_purchase`, `monthly_team_business`, `total_team_business`, `total_team_business_self`, `coupon`, `dob`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `pan`, `aadhar`, `bank_name`, `bank_account`, `bank_ifsc`, `nominee_name`, `nominee_relation`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `pic`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`, `fr_type`, `fr_by`, `fr_datetime`, `cr_datetime`, `in_datetime`, `ac_datetime`, `dk_datetime`, `ace_ok`, `duke_ok`, `ace_ok_datetime`, `duke_ok_datetime`, `ace_challange`, `duke_challange`, `status`, `achiver`, `cust_otp`, `ip`) VALUES
(1, 'JP236918', 'ADMIN', 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 25549.90, 8500.00, 0.00, 0.00, 0.00, 0.00, 25549.90, 0.00, 8500.00, 0.00, 600.00, 600.00, 9100.00, 0, '1991-04-12', 'durpati kawalsing bhakta', NULL, 'dp@gmail.com', '9575126240', 'India', 'raipura', 'raipur', 'chhattisgarh', '492001', '', '', '', '', '', '', '', 'Durpati Kawalsing Bhakta', 'Durpati Kawalsing Bhakta', '9575126240', NULL, 'raipura', 'raipur', 'chhattisgarh', '492001', 'durpati kawalsing bhakta', NULL, '9575126240', 'India', 'raipura', 'raipur', 'chhattisgarh', '492001', '1715843031.png', 'e10adc3949ba59abbe56e057f20f883e', '781964bb0c3c7d530b8d47e86e46b218', '2024-04-11 07:59:46', '1712802586', 1, 0, 'RE236918', '2024-04-11 09:22:00', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2409:4043:4c12:454d:ac8f:3db2:b72b:bfc'),
(2, 'JP636250', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2005-11-22', 'roshni', NULL, 'roshni@gmail.com', '9754680672', 'India', 'abc', 'raipur', 'chhattisgarh', '492001', '', '', '', '', '', '', '', 'Roshni', 'Roshni', '9754680672', NULL, 'abc', 'raipur', 'chhattisgarh', '492001', 'roshni', NULL, '9754680672', 'India', 'abc', 'raipur', 'chhattisgarh', '492001', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'b130ccaab98ce5f141fc37e820cef219', '2024-04-11 09:36:48', '1712808408', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2409:4043:4c12:454d:ac8f:3db2:b72b:bfc'),
(3, 'JP500196', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2002-12-12', 'ram kumar', NULL, '1meatwork@gmail.com', '9826948547', 'India', 'raipur chhattisgarh', 'raipur', 'chhattisgarh', '492001', '', '', '', '', '', '', '', 'Ram Kumar', 'Ram Kumar', '9826948547', NULL, 'raipur chhattisgarh', 'raipur', 'chhattisgarh', '492001', 'ram kumar', NULL, '9826948547', 'India', 'raipur chhattisgarh', 'raipur', 'chhattisgarh', '492001', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'f7bd30ede0cebe11ca441fa57b1b977e', '2024-04-11 09:42:59', '1712808779', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2409:4043:4c12:454d:ac8f:3db2:b72b:bfc'),
(4, 'JP966781', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 600.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 600.00, 0.00, 0.00, 0.00, 600.00, 0, '1998-12-28', 'suraj', NULL, 'suraj8839707773@gmail.com', '8839707773', 'India', 'durg', 'durg', 'chhattisgarh', '490042', '', '', '', '', '', '', '', 'Suraj', 'Suraj', '8839707773', NULL, 'durg', 'durg', 'chhattisgarh', '490042', 'suraj', NULL, '8839707773', 'India', 'durg', 'durg', 'chhattisgarh', '490042', '1719394873.jpg', '61a57ad6a4cef7a07950dfb7d23d8a1f', 'd88b188b33ffbf6e8427bad6bff2eadb', '2024-04-11 11:44:33', '1712816073', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2409:4043:2019:c927:98c2:dbff:feb4:9c9a'),
(5, 'JP168499', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '1993-04-07', 'jitendra kumar', NULL, 'jkumaragra93@gmail.com', '8218656771', 'India', 'new delhi', 'new delhi', 'delhi', '110005', '', '', '', '', '', '', '', 'Jitendra Kumar', 'Jitendra Kumar', '8218656771', NULL, 'new delhi', 'new delhi', 'delhi', '110005', 'jitendra kumar', NULL, '8218656771', 'India', 'new delhi', 'new delhi', 'delhi', '110005', '1713004915.jpg', '4fbdb64a333cf257be665c1d56eb82bb', 'b5a23e1182544c146792624379781f2b', '2024-04-13 16:05:53', '1713004553', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '45.118.158.200'),
(6, 'JP585035', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '1991-02-03', 'rajesh veram', NULL, 'rahul.amb@gmail.com', '9754680688', 'India', 'raipur', 'raipur', 'chhattisgarh', '492012', '', '', '', '', '', '', '', 'rajesh veram', NULL, '9754680688', 'India', 'raipur', 'raipur', 'chhattisgarh', '492012', 'rajesh veram', NULL, '9754680688', 'India', 'raipur', 'raipur', 'chhattisgarh', '492012', '1714048200.png', 'e10adc3949ba59abbe56e057f20f883e', '487c6f42c0eb27969c8f86c8103d6435', '2024-04-25 17:49:08', '1714047548', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2401:4900:1c32:9ea:11be:c442:45dd:b22f'),
(9, 'JP455165', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2000-05-25', 'xyx', NULL, 'divya7489314651@gmail.com', '7489314651', 'India', 'durg', 'durg', 'chhattisgarh', '490002', '', '', '', '', '', '', '', 'Suraj', 'Suraj', '7489314651', NULL, 'durg', 'durg', 'chhattisgarh', '490002', 'xyx', NULL, '7489314651', 'India', 'durg', 'durg', 'chhattisgarh', '490002', NULL, '78a7b2e7f4a8fd081b16ee760dce197d', '28e21554a3448ba7c0250edd5c5ff9ca', '2024-05-25 21:41:38', '1716653498', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2409:40c4:13f:dad9:f495:27ff:fe76:94db'),
(12, 'JP520983', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '1996-05-27', 'xyx', NULL, 'divya7489314651@gmail.com', '07489314651', 'India', 'durg', 'durg', '', '490002', '', '', '', '', '', '', '', 'Xyx', 'Xyx', '07489314651', NULL, 'Studio Apartment, Shankar Nagar', 'Raipur-Chhattisgarh', 'Chhattisgarh', '492001', 'xyx', NULL, '07489314651', 'India', 'durg', 'durg', '', '490002', NULL, '561a09e50497d12303e5b6fa09575595', '20b1b029800a05f0a78db313d5cdc0c5', '2024-05-27 14:17:03', '1716799623', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2409:40c4:34:6422:b803:43ff:fe22:f1f2'),
(15, 'JP673411', '9575126240', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2000-02-03', 'pooja sahu', NULL, 'pooja@gmail.com', '9575126248', 'India', 'raipur', 'raipur', 'chhattisgarh', '492001', '', '', '', '', '', '', '', 'Pooja Sahu', 'Pooja Sahu', '9575126248', NULL, 'raipur', 'raipur', 'chhattisgarh', '492001', 'pooja sahu', NULL, '9575126248', 'India', 'raipur', 'raipur', 'chhattisgarh', '492001', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'cb7b32d39d695c0d47caed3613cc511b', '2024-06-07 13:14:27', '1717746267', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '2401:4900:1c33:79c2:8fa:29ef:3ad:9751'),
(17, 'JP573822', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2024-07-02', 'test', NULL, 'test@gmail.com', '9876543210', 'India', 'dsfa', 'raipur', 'py', '492001', '', '', '', '', '', '', '', 'Test', 'Test', '9876543210', NULL, 'dsfa', 'raipur', 'py', '492001', 'test', NULL, '9876543210', 'India', 'dsfa', 'raipur', 'py', '492001', '1720007827.png', 'e388c1c5df4933fa01f6da9f92595589', 'a76a411ec396f9edfe1e48cae4c9611f', '2024-07-02 10:58:52', '1719917932', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '::1'),
(18, 'JP226686', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 500000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2024-07-03', 'hello', NULL, 'test@gmail.com', '9876543211', 'India', 'dsfa', 'raipur', 'py', '492001', '', '', '', '', '', '', '', 'Hello', 'Hello', '09876543211', NULL, 'dsfa', 'raipur', 'py', '492001', 'hello', NULL, '09876543211', 'India', 'dsfa', 'raipur', 'py', '492001', '1720007196.png', '7c799788b5efdf1bae6b05d333d500dc', 'b8254fe9923b73d1ed34eea11e9e45f8', '2024-07-03 11:22:33', '1720005753', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '::1'),
(19, 'JP499816', 'JP236918', 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '2024-07-05', 'test', NULL, 'test@gmail.com', '9999999999', 'India', 'dsfa', 'raipur', 'py', '492001', '', '', '', '', '', '', '', 'test', NULL, '9999999999', 'India', 'dsfa', 'raipur', 'py', '492001', 'test', NULL, '9999999999', 'India', 'dsfa', 'raipur', 'py', '492001', NULL, 'e11170b8cbd2d74102651cb967fa28e5', '95dd5c3b1598602d2c1bc541ae2d0aeb', '2024-07-05 13:35:15', '1720186515', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 'active', 1, 12345, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'smart phone', 23),
(2, 'hello tester', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'How can I place an order?', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">To place an order, simply browse our website and add the desired items to your shopping cart. Once you\'re ready, proceed to checkout, where you\'ll enter your shipping and payment information.</span><br></p>'),
(2, 'What payment methods do you accept?', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">We accept various payment methods, including credit/debit cards, banking, and sometimes alternative payment platforms like phone pay or Google Pay. You can find the complete list of accepted payment methods during the checkout process.</span><br></p>'),
(3, ' Do you ship internationally?', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">Yes, we offer international shipping to many countries. During the checkout process, you can select your country for shipping, and the shipping costs will be calculated accordingly.</span><br></p>'),
(4, 'How long will it take for my order to arrive?', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">Delivery times vary depending on your location and the shipping method chosen. Typically, domestic orders arrive within 3-7 business days, while international orders may take 7-14 business days. You\'ll receive a tracking number once your order has been shipped.</span><br></p>'),
(5, 'What is your return policy?', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">We want you to be completely satisfied with your purchase. If for any reason you\'re not happy with your order, you can return it within 1 days of receipt for a refund or exchange. Please make sure the items are unworn, unwashed, and in their original condition with tags attached.</span><br></p>'),
(6, 'How can I contact customer support?', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\">If you have any questions or need assistance, our customer support team is here to help! You can reach us via email at </span><a target=\"_new\" rel=\"noreferrer\" style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: ; color: var(--link); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(255, 255, 255);\">query@jpfashion.in</a><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve;\"> or through the contact form on our website. We strive to respond to all inquiries within 24 hours.</span><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '&#8377;'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Save As Wish List'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!'),
(164, 'rozarpay', 'Rozarpay');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(3, 'Jewelry', 9),
(4, 'Bags', 9),
(5, 'Hats & Caps', 9),
(6, 'Scarves & Ties', 9),
(7, 'Sunglasses & Eyewear', 9),
(8, 'Baby Clothes', 4),
(9, 'Toddler Clothes', 4),
(10, 'Boys\' Clothes', 4),
(11, 'Girls\' Clothes', 4),
(12, 'Special Occasion', 4),
(13, 'Shirts', 7),
(14, 'Pants', 7),
(15, 'Suits & Blazers', 7),
(16, 'Sweaters & Outerwear', 7),
(17, 'Underwear & Sleepwear', 7),
(18, 'Dresses', 8),
(19, 'Tops', 8),
(20, 'Bottoms', 8),
(21, 'Outerwear', 8),
(22, 'Lingerie & Sleepwear', 8),
(23, 'android', 10),
(24, 'test1', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `cart_id` varchar(20) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `order_type` tinyint(4) DEFAULT 0,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `totalamt` float(10,2) NOT NULL DEFAULT 0.00,
  `taxper` varchar(5) NOT NULL DEFAULT '0',
  `taxamt` float(10,2) NOT NULL DEFAULT 0.00,
  `payment_id` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `paymentstatus` varchar(10) NOT NULL DEFAULT 'pending',
  `utrno` varchar(120) DEFAULT NULL,
  `pic` varchar(125) DEFAULT NULL,
  `paydate` datetime DEFAULT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) DEFAULT NULL,
  `hide` int(11) NOT NULL DEFAULT 0,
  `trnsid` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cust_id`, `cart_id`, `product_id`, `product_name`, `order_type`, `size`, `color`, `quantity`, `unit_price`, `totalamt`, `taxper`, `taxamt`, `payment_id`, `status`, `paymentstatus`, `utrno`, `pic`, `paydate`, `timedate`, `ip`, `hide`, `trnsid`) VALUES
(13, 17, '195441609753', 34, 'table', 0, '', '', '1', '543', 0.00, '18', 97.74, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 09:59:57', NULL, 0, NULL),
(14, 17, '197122794877', 34, 'table', 0, '', '', '1', '543', 0.00, '18', 97.74, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 10:01:45', NULL, 0, NULL),
(15, 17, '118696213768', 34, 'table', 0, '', '', '1', '543', 0.00, '18', 97.74, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 10:48:29', NULL, 0, NULL),
(16, 17, '118696213768', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 10:48:29', NULL, 0, NULL),
(17, 17, '118696213768', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 10:48:29', NULL, 0, NULL),
(18, 17, '150630608163', 34, 'table', 0, '', '', '1', '543', 0.00, '18', 97.74, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 11:55:39', NULL, 0, NULL),
(19, 17, '150630608163', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-03 11:55:39', NULL, 0, NULL),
(20, 18, '159942381320', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(21, 18, '128353288038', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(22, 18, '128353288038', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(23, 18, '138761419208', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(24, 18, '138761419208', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(25, 18, '149998175623', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, '23CE7FD6182EA84FA4CEE2635279A34F'),
(26, 18, '149998175623', 35, 'funichure', 0, '', '', '2', '19999', 0.00, '18', 7199.64, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, '23CE7FD6182EA84FA4CEE2635279A34F'),
(27, 18, '177749437611', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(28, 18, '177749437611', 35, 'funichure', 0, '', '', '2', '19999', 0.00, '18', 7199.64, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(29, 18, '183034155450', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(30, 18, '183034155450', 35, 'funichure', 0, '', '', '2', '19999', 0.00, '18', 7199.64, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(31, 18, '114848283514', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(32, 18, '114848283514', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(33, 18, '126380581294', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(34, 18, '126380581294', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(35, 18, '118206749822', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(36, 18, '118206749822', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(37, 18, '139899965072', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(38, 18, '139899965072', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(39, 18, '177723705019', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(40, 18, '177723705019', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(41, 18, '190277461143', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(42, 18, '190277461143', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(43, 18, '136635598705', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(44, 18, '136635598705', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(45, 18, '129717355527', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(46, 18, '129717355527', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(47, 18, '146425517345', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(48, 18, '146425517345', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(49, 18, '166928707871', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(50, 18, '166928707871', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(51, 18, '193922715401', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(52, 18, '193922715401', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(53, 18, '171565159315', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(54, 18, '171565159315', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(55, 18, '184268932182', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(56, 18, '184268932182', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(57, 18, '127392526309', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(58, 18, '127392526309', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(59, 18, '162816083879', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(60, 18, '162816083879', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(61, 18, '198539537450', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(62, 18, '198539537450', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(63, 18, '159091126876', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(64, 18, '159091126876', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(65, 18, '146602103982', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(66, 18, '146602103982', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(67, 18, '189840704589', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(68, 18, '189840704589', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(69, 18, '156062335303', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(70, 18, '156062335303', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:02', '2024-07-08 10:02:02', NULL, 0, NULL),
(71, 18, '154727148602', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 15:32:32', '2024-07-08 10:02:32', NULL, 0, NULL),
(72, 18, '172152552203', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:36:07', '2024-07-08 03:36:07', '2024-07-08 10:06:07', NULL, 0, NULL),
(73, 18, '120632861871', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:37:30', '2024-07-08 03:37:30', '2024-07-08 10:07:30', NULL, 0, NULL),
(74, 18, '140776386475', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:37:51', '2024-07-08 03:37:51', '2024-07-08 10:07:51', NULL, 0, NULL),
(75, 18, '129187764247', 36, 'funichure', 0, '', '', '4', '19999', 0.00, '18', 14399.28, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:55:01', '2024-07-08 03:55:01', '2024-07-08 10:25:01', NULL, 0, NULL),
(76, 18, '175514601901', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:56:25', '2024-07-08 03:56:25', '2024-07-08 10:26:25', NULL, 0, NULL),
(77, 18, '191735273955', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:57:05', '2024-07-08 03:57:05', '2024-07-08 10:27:05', NULL, 0, NULL),
(78, 18, '118453824264', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 03:58:49', '2024-07-08 03:58:49', '2024-07-08 10:28:49', NULL, 0, NULL),
(79, 18, '164026188006', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, '-18-2024-07-08 04:00:15', '2024-07-08 04:00:15', '2024-07-08 10:30:15', NULL, 0, NULL),
(80, 18, '123922155992', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(81, 18, '129157281620', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(82, 18, '163717034270', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(83, 18, '140954356537', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(84, 18, '140954356537', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(85, 18, '113848691884', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, 'C133C8F749B4535C8A28B8F6ABA674AC'),
(86, 18, '113848691884', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, 'C133C8F749B4535C8A28B8F6ABA674AC'),
(87, 18, '172239254094', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(88, 18, '172239254094', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:57:26', NULL, 0, NULL),
(89, 18, '194767567692', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:59:39', NULL, 0, 'C80D7ECCA12A55809AD2729B7536607A'),
(90, 18, '194767567692', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:27:26', '2024-07-08 12:59:39', NULL, 0, 'C80D7ECCA12A55809AD2729B7536607A'),
(91, 18, '134728554850', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:31:18', '2024-07-08 13:01:18', NULL, 0, NULL),
(92, 18, '134728554850', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:31:18', '2024-07-08 13:01:18', NULL, 0, NULL),
(93, 18, '191557597810', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:34:38', '2024-07-08 13:04:38', NULL, 0, NULL),
(94, 18, '191557597810', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:34:38', '2024-07-08 13:04:38', NULL, 0, NULL),
(95, 18, '122071403156', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:41:33', '2024-07-08 13:11:33', NULL, 0, NULL),
(96, 18, '122071403156', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:41:33', '2024-07-08 13:11:33', NULL, 0, NULL),
(97, 18, '180881846464', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:42:35', '2024-07-08 13:12:37', NULL, 0, '9E52C9CF6B8C2917BE7D948EE8116D78'),
(98, 18, '180881846464', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:42:35', '2024-07-08 13:12:37', NULL, 0, '9E52C9CF6B8C2917BE7D948EE8116D78'),
(99, 18, '143006578368', 35, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:45:59', '2024-07-08 13:15:59', NULL, 0, NULL),
(100, 18, '143006578368', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:45:59', '2024-07-08 13:15:59', NULL, 0, NULL),
(101, 18, '122209957573', 35, 'funichure', 0, '', '', '6', '19999', 0.00, '18', 21598.92, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:46:29', '2024-07-08 13:16:29', NULL, 0, NULL),
(102, 18, '122209957573', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:46:29', '2024-07-08 13:16:29', NULL, 0, NULL),
(103, 18, '152477629396', 35, 'funichure', 0, '', '', '6', '19999', 0.00, '18', 21598.92, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:49:45', '2024-07-08 13:19:45', NULL, 0, NULL),
(104, 18, '152477629396', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'submit', NULL, NULL, '2024-07-08 18:49:45', '2024-07-08 13:19:45', NULL, 0, NULL),
(105, 18, '125219015521', 35, 'funichure', 0, '', '', '4', '19999', 0.00, '18', 14399.28, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-08 13:48:18', NULL, 0, NULL),
(106, 18, '125219015521', 36, 'funichure', 0, '', '', '1', '19999', 0.00, '18', 3599.82, '0', 'pending', 'pending', NULL, NULL, NULL, '2024-07-08 13:48:18', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `sub_cat` int(11) NOT NULL DEFAULT 0,
  `about_title` varchar(255) DEFAULT NULL,
  `about_content` text DEFAULT NULL,
  `about_banner` varchar(255) DEFAULT NULL,
  `about_meta_title` varchar(255) DEFAULT NULL,
  `about_meta_keyword` text DEFAULT NULL,
  `about_meta_description` text DEFAULT NULL,
  `faq_title` varchar(255) DEFAULT NULL,
  `faq_banner` varchar(255) DEFAULT NULL,
  `faq_meta_title` varchar(255) DEFAULT NULL,
  `faq_meta_keyword` text DEFAULT NULL,
  `faq_meta_description` text DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_banner` varchar(255) DEFAULT NULL,
  `blog_meta_title` varchar(255) DEFAULT NULL,
  `blog_meta_keyword` text DEFAULT NULL,
  `blog_meta_description` text DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `contact_banner` varchar(255) DEFAULT NULL,
  `contact_meta_title` varchar(255) DEFAULT NULL,
  `contact_meta_keyword` text DEFAULT NULL,
  `contact_meta_description` text DEFAULT NULL,
  `pgallery_title` varchar(255) DEFAULT NULL,
  `pgallery_banner` varchar(255) DEFAULT NULL,
  `pgallery_meta_title` varchar(255) DEFAULT NULL,
  `pgallery_meta_keyword` text DEFAULT NULL,
  `pgallery_meta_description` text DEFAULT NULL,
  `vgallery_title` varchar(255) DEFAULT NULL,
  `vgallery_banner` varchar(255) DEFAULT NULL,
  `vgallery_meta_title` varchar(255) DEFAULT NULL,
  `vgallery_meta_keyword` text DEFAULT NULL,
  `vgallery_meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `sub_cat`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 0, 'About JP Fashion', '<div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); color: rgb(159, 161, 164); font-size: 16px; align-items: center !important;\"><div class=\"col-md-12 ms-auto order-2\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); order: 2 !important; margin-left: auto !important;\"><h2 class=\"mb-12\" style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(0, 0, 0); font-size: 2rem; font-family: Poppins, sans-serif;\">Our Story</h2><p class=\"mb-12\" style=\"margin-bottom: 1rem;\">www.jpfashion.in was born out of a shared passion for innovation and a vision <b>Founder of JPFASHION.IN</b> to make high-quality fashion accessible to all. What started as a humble idea has since evolved into a thriving online platform , connecting fashion enthusiasts, cloth lovers, and fashion enthusiasts worldwide.</p></div></div><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); color: rgb(159, 161, 164); font-size: 16px; align-items: center !important;\"><div class=\"col-md-12 ms-auto order-2\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); order: 2 !important; margin-left: auto !important;\"><h2 class=\"mb-12\" style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(0, 0, 0); font-size: 2rem; font-family: Poppins, sans-serif;\">Our Mission</h2><p class=\"mb-12\" style=\"margin-bottom: 1rem;\">At www.jpfashion.in, our mission is simple: to empower individuals to explore, discover, and embrace the limitless possibilities of technology. We strive to provide an unparalleled shopping experience, offering a curated selection of top-notch products, competitive prices, and exceptional customer service.</p></div></div><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); color: rgb(159, 161, 164); font-size: 16px; align-items: center !important;\"><div class=\"col-md-12 ms-auto order-2\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); order: 2 !important; margin-left: auto !important;\"><h2 class=\"mb-12\" style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(0, 0, 0); font-size: 2rem; font-family: Poppins, sans-serif;\">Why Choose Us?</h2><p class=\"mb-12\" style=\"margin-bottom: 1rem;\"><span style=\"font-weight: bolder;\">Quality &amp; Authenticity</span>: We partner directly with leading manufacturers and trusted suppliers to ensure the authenticity and quality of every product we offer. With www.jpfashion.in, you can shop with confidence, knowing you\'re getting the real deal.<br><br><span style=\"font-weight: bolder;\">Innovative Selection</span>: Dive into a world of innovation with our carefully curated selection of fashion. From the latest cloth and smart fashion&nbsp; to cutting-edge wearables and accessories, we\'ve got everything you need to stay ahead of the curve.<br><br><span style=\"font-weight: bolder;\">Convenience &amp; Accessibility</span>: With our user-friendly website , shopping for fashion has never been easier. Browse, compare, and purchase your favorite products anytime, anywhere, right from the palm of your hand.<br><br><span style=\"font-weight: bolder;\">Exceptional Customer Service</span>: Your satisfaction is our top priority. Our dedicated team of experts is here to assist you every step of the way, whether you have product questions, need technical support, or require assistance with your order..</p></div></div><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); color: rgb(159, 161, 164); font-size: 16px; align-items: center !important;\"><div class=\"col-md-12 ms-auto order-2\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); order: 2 !important; margin-left: auto !important;\"><h2 class=\"mb-12\" style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(0, 0, 0); font-size: 2rem; font-family: Poppins, sans-serif;\">Our Commitment to Sustainability</h2><p class=\"mb-12\" style=\"margin-bottom: 1rem;\">At www.jpfashion.in, we\'re committed to making a positive impact on the environment. That\'s why we strive to reduce our carbon footprint by implementing eco-friendly practices throughout our operations, from packaging materials to energy-efficient solutions.</p></div></div><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); color: rgb(159, 161, 164); font-size: 16px; align-items: center !important;\"><div class=\"col-md-12 ms-auto order-2\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); order: 2 !important; margin-left: auto !important;\"><h2 class=\"mb-12\" style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(0, 0, 0); font-size: 2rem; font-family: Poppins, sans-serif;\">Connect With Us</h2><p class=\"mb-12\" style=\"margin-bottom: 1rem;\">Join our community of fashion enthusiasts and stay connected with the latest news, promotions, and product launches. Follow us on social media and subscribe to our newsletter to stay informed and inspired.</p></div></div><div class=\"row align-items-center\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-.5 * var(--bs-gutter-x)); margin-left: calc(-.5 * var(--bs-gutter-x)); color: rgb(159, 161, 164); font-size: 16px; align-items: center !important;\"><div class=\"col-md-12 ms-auto order-2\" style=\"flex: 0 0 auto; width: 1140px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); order: 2 !important; margin-left: auto !important;\"><h2 class=\"mb-12\" style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; color: rgb(0, 0, 0); font-size: 2rem; font-family: Poppins, sans-serif;\">Start Your Electronic Journey Today!</h2><p class=\"mb-12\" style=\"margin-bottom: 1rem;\">Ready to embark on your fashion journey? Explore our online store to experience the future of technology at your fingertips. Thank you for choosing www.jpfashion.in – where innovation meets excellence.</p></div></div>', 'about-banner.jpg', 'about us', 'about us', 'about us', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Contact Us', 'contact-banner.jpg', 'contact us jpfashion', 'contact us jpfashion', 'contact us jpfashion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `payment_date` varchar(50) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `trnport_chrg` float(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` int(11) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `card_cvv` varchar(10) DEFAULT NULL,
  `card_month` varchar(10) DEFAULT NULL,
  `card_year` varchar(10) DEFAULT NULL,
  `bank_transaction_info` varchar(225) DEFAULT NULL,
  `trns_pic` varchar(225) DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_status` varchar(25) DEFAULT NULL,
  `shipping_status` varchar(20) DEFAULT NULL,
  `paid_date` varchar(30) DEFAULT NULL,
  `payment_id` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(0, 'test', 'photo-0.png'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `hsncode` varchar(15) DEFAULT NULL,
  `gst` varchar(3) NOT NULL DEFAULT '0',
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(11) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 100,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(11) NOT NULL,
  `p_onsale` int(11) NOT NULL DEFAULT 1,
  `p_toprated` int(11) NOT NULL DEFAULT 1,
  `p_is_active` int(11) NOT NULL,
  `ecat_id` int(11) NOT NULL,
  `mcatid` int(11) DEFAULT NULL,
  `tcatid` int(11) DEFAULT NULL,
  `timedate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `hsncode`, `gst`, `p_old_price`, `p_current_price`, `p_qty`, `stok`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_onsale`, `p_toprated`, `p_is_active`, `ecat_id`, `mcatid`, `tcatid`, `timedate`) VALUES
(33, 'lighting', '', '0', '11000', '19999', 10, 100, 'pf-1719819988.jpg', '', '', '', '', '', 78, 1, 1, 1, 0, 0, 0, 0, '2024-07-01 07:46:28'),
(34, 'table', '', '0', '11000', '543', 10, 100, 'pf-1719820155.jpg', '<p>test of the product </p>', '<p>short des</p>', '<p>features</p>', '<p>condition</p>', '<p>not return policy</p>', 78, 1, 1, 1, 0, 0, 0, 0, '2024-07-01 07:49:15'),
(35, 'funichure', NULL, '18', '11000', '19999', 10, 100, 'pf-1719908579.png', '<p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">Ever dismissed product descriptions as unimportant? Assumed that as long as the information on your product page is accurate, you’re good to go? It’s time to think again.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">Product descriptions are more than a summary of what you’re selling. Written correctly, they can boost your store’s&nbsp;<a href=\"https://www.shopify.com/blog/120261189-conversion-rate-optimization\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(0 0 0/var(--tw-text-opacity)); text-decoration-line: underline; text-decoration-thickness: inherit; text-decoration-style: inherit; text-decoration-color: inherit; --tw-text-opacity: 1;\">conversion rate</a>&nbsp;and make your products seem more valuable. The right words can even make customers happy to pay more.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">Here’s how to make product descriptions work harder for your&nbsp;<a href=\"https://www.shopify.com/blog/ecommerce-business-blueprint\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(0 0 0/var(--tw-text-opacity)); text-decoration-line: underline; text-decoration-thickness: inherit; text-decoration-style: inherit; text-decoration-color: inherit; --tw-text-opacity: 1;\">ecommerce business</a>.</p>', '<h2 id=\"1\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: var(--font-size-t4); margin: 3rem 0px 1.5rem; font-family: aktiv-grotesk-extended, sans-serif; letter-spacing: var(--letter-spacing-t4); line-height: var(--line-height-t4); --tw-text-opacity: 1;\">What is a product description?</h2><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">A product description is a piece of marketing copywriting that tells people what a product is and why it’s worth buying. Beyond a list of product details or features, descriptions tell a story about what makes a product special and persuade customers to make a purchase.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">Product descriptions can vary in length, style, and format, and may be written in a brand’s unique voice.</p>', '<h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: var(--font-size-t5); font-weight: var(--font-weight-t5); margin: 3rem 0px 1rem; font-family: aktiv-grotesk-extended, sans-serif; letter-spacing: var(--letter-spacing-t5); line-height: var(--line-height-t5); --tw-text-opacity: 1;\">What makes a good product description?</h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">A well-crafted product description can significantly impact sales, customer satisfaction, and brand reputation by performing a dual purpose:</p><ul style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px 0px 0px 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\"><li style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 1rem;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-text-opacity: 1; color: rgb(0 0 0/var(--tw-text-opacity));\">It informs customers about product details, such as its features, uses, and benefits.</span>&nbsp;This helps customers understand what the product is and how it works.</li><li style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; padding-left: 1rem; --tw-space-y-reverse: 0; margin-bottom: calc(.75rem*var(--tw-space-y-reverse)); margin-top: calc(.75rem*(1 - var(--tw-space-y-reverse)));\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-text-opacity: 1; color: rgb(0 0 0/var(--tw-text-opacity));\">It convinces customers of the product’s value.</span>&nbsp;This is where the persuasive power of a product description comes into play. It answers questions like, “What problem does a product solve?” and “What makes it better than the competition?”</li></ul>', '<h3 id=\"5\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: var(--font-size-t5); font-weight: var(--font-weight-t5); margin: 3rem 0px 1rem; font-family: aktiv-grotesk-extended, sans-serif; letter-spacing: var(--letter-spacing-t5); line-height: var(--line-height-t5); --tw-text-opacity: 1;\">. Speak to your ideal customer</h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">When product descriptions are written with a broad audience in mind, they can become vague and fail to resonate.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">To make your descriptions engaging, speak directly and personally to your target audience. Anticipate and answer product-related questions as if you were having a one-on-one conversation, using language and terminology that resonates with your ideal customer. That includes using the word \"you.\"</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.5rem; color: rgb(63, 63, 70); font-family: ShopifySans, Helvetica, Arial, sans-serif; font-size: 18px;\">Take a look at how&nbsp;<a href=\"https://theoodie.com/\" rel=\"nofollow noopener noreferrer\" target=\"_blank\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(0 0 0/var(--tw-text-opacity)); text-decoration-line: underline; text-decoration-thickness: inherit; text-decoration-style: inherit; text-decoration-color: inherit; --tw-text-opacity: 1;\">The Oodie</a>, an apparel retailer, harnesses this approach in the product description for its I Love Plants Oodie.</p>', '<p>not return policy</p>', 155, 1, 1, 1, 0, 2, 24, 11, '2024-07-02 08:22:59'),
(36, 'funichure', '', '18', '11000', '19999', 10, 100, 'pf-1719923168.jpg', '<blockquote style=\"color: rgb(34, 35, 37); font-family: Inter; font-size: 20px;\"><p style=\"font-family: Inter, sans-serif; line-height: 1.5; color: inherit; font-weight: inherit;\"><strong>What is a product description? A product description is a piece of writing that conveys the features and benefits of a product, ranging from basic facts to stories that make a product compelling to an ideal buyer.</strong></p></blockquote><p style=\"font-size: 20px; font-family: Inter, sans-serif; line-height: 1.5; color: rgb(34, 35, 37); margin-bottom: 25px;\">When you’re considering buying something online, what’s one of the first things you do? Scroll to the product description to find out more details, right?</p><p style=\"font-size: 20px; font-family: Inter, sans-serif; line-height: 1.5; color: rgb(34, 35, 37); margin-bottom: 25px;\">That’s why this intro to your product or service is such a crucial component of marketing — it’s a chance to solidify the sale, increase customer confidence in your business, and reduce customer service emails by providing the answers to comm</p>', '<p><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">Aside from educating and enticing potential customers, the best descriptions can help you differentiate your product and brand from your competitors by putting forward your most salient features and benefits.</span><br></p>', '<p><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">Our team rated the examples above according to three </span><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">degrees of quality</span><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\"> (</span><b style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">Good, Better, Best</b><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">) to help you understand what makes a great product description and to better gauge the resources needed for your content plan.</span><br></p>', '<p><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">In general, the degrees of content quality correspond to our three </span><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">content levels</span><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\"> (</span><b style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">General, Qualified, Expert</b><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">) based on the criteria below so you understand how much time it’ll take to create similar content and/or who you’d need to hire.</span><br></p>', '<p><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\">Want some help creating persuasive product descriptions? </span><a href=\"https://www.clearvoice.com/content-strategy-session/\" style=\"font-family: Inter, sans-serif; text-decoration-line: underline; color: rgb(6, 74, 152); font-size: 20px; transition: all 0.3s ease 0s; font-weight: 700; box-shadow: none; background-color: rgb(255, 255, 255);\">Talk to a content specialist at ClearVoice</a><span style=\"color: rgb(34, 35, 37); font-family: Inter, sans-serif; font-size: 20px;\"> and find out how we can craft expert product descriptions that boost your SEO, increase trust, and get sales.</span><br></p>', 88, 1, 1, 1, 0, 2, 0, 2, '2024-07-02 12:26:08'),
(37, 'decoretion', '', '0', '11000', '19999', 10, 100, 'pf-1719925188.jpg', '<p>hheko</p>', '<p>hello</p>', '<p>test</p>', '<p>test</p>', '<p>test</p>', 4, 1, 1, 1, 0, 2, 0, 2, '2024-07-02 12:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(20, 7, 35),
(27, 6, 37),
(28, 4, 36),
(29, 5, 36),
(30, 7, 36);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(4, '17166464050.jpg', 23),
(5, '17166464051.jpg', 23),
(6, '17168827460.jpg', 24),
(7, '17168831360.jpg', 25),
(8, '17168831361.jpg', 25),
(9, '17168870290.jpg', 27),
(10, '17168878460.jpg', 28),
(11, '17168878461.jpg', 28),
(12, '17169141920.jpg', 29),
(13, '17169141921.jpg', 29),
(14, '17169145050.jpg', 30),
(15, '17169145051.jpg', 30),
(20, '17198196070.png', 33),
(21, '17198199880.jpg', 33),
(22, '17198201550.jpg', 34),
(23, '17199085790.png', 35),
(24, '17199085791.png', 35),
(25, '17199085792.png', 35),
(26, '17199231680.jpg', 36),
(27, '17199231681.png', 36);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(6, 1, 24),
(7, 3, 24),
(8, 4, 24),
(9, 1, 25),
(10, 3, 25),
(11, 4, 25),
(12, 1, 26),
(13, 3, 26),
(14, 4, 26),
(15, 1, 27),
(16, 3, 27),
(17, 4, 27),
(18, 1, 28),
(19, 3, 28),
(20, 4, 28),
(21, 5, 29),
(22, 6, 29),
(23, 7, 29),
(24, 8, 29),
(25, 5, 30),
(26, 6, 30),
(27, 7, 30),
(28, 8, 30),
(37, 1, 23),
(38, 3, 23),
(39, 4, 23),
(47, 7, 35),
(54, 6, 37),
(55, 6, 34),
(56, 7, 33),
(57, 5, 36),
(58, 6, 36),
(59, 7, 36);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(25) NOT NULL,
  `favicon` varchar(25) NOT NULL,
  `footer_about` varchar(25) NOT NULL,
  `footer_copyright` varchar(45) NOT NULL,
  `contact_address` varchar(65) NOT NULL,
  `contact_email` varchar(65) NOT NULL,
  `contact_phone` varchar(10) NOT NULL,
  `contact_fax` varchar(15) NOT NULL,
  `contact_map_iframe` text DEFAULT NULL,
  `receive_email` varchar(65) NOT NULL,
  `receive_email_subject` varchar(65) NOT NULL,
  `receive_email_thank_you_message` varchar(25) NOT NULL,
  `forget_password_message` varchar(25) NOT NULL,
  `total_recent_post_footer` varchar(45) DEFAULT NULL,
  `total_popular_post_footer` varchar(45) DEFAULT NULL,
  `total_recent_post_sidebar` varchar(45) DEFAULT NULL,
  `total_popular_post_sidebar` varchar(45) DEFAULT NULL,
  `total_featured_product_home` varchar(45) DEFAULT NULL,
  `total_latest_product_home` varchar(45) DEFAULT NULL,
  `total_popular_product_home` varchar(45) DEFAULT NULL,
  `meta_title_home` varchar(25) NOT NULL,
  `meta_keyword_home` varchar(25) NOT NULL,
  `meta_description_home` varchar(25) NOT NULL,
  `banner_login` varchar(225) DEFAULT NULL,
  `banner_registration` varchar(25) NOT NULL,
  `banner_forget_password` varchar(225) DEFAULT NULL,
  `banner_reset_password` varchar(25) NOT NULL,
  `banner_search` varchar(25) NOT NULL,
  `banner_cart` varchar(25) NOT NULL,
  `banner_checkout` varchar(25) NOT NULL,
  `banner_product_category` varchar(25) NOT NULL,
  `banner_blog` varchar(25) NOT NULL,
  `cta_title` varchar(25) NOT NULL,
  `cta_content` varchar(25) NOT NULL,
  `cta_read_more_text` varchar(25) NOT NULL,
  `cta_read_more_url` varchar(25) NOT NULL,
  `cta_photo` varchar(25) NOT NULL,
  `featured_product_title` varchar(25) NOT NULL,
  `featured_product_subtitle` varchar(25) NOT NULL,
  `latest_product_title` varchar(25) NOT NULL,
  `latest_product_subtitle` varchar(25) NOT NULL,
  `popular_product_title` varchar(25) NOT NULL,
  `popular_product_subtitle` varchar(25) NOT NULL,
  `testimonial_title` varchar(25) NOT NULL,
  `testimonial_subtitle` varchar(25) NOT NULL,
  `testimonial_photo` varchar(25) NOT NULL,
  `blog_title` varchar(25) NOT NULL,
  `blog_subtitle` varchar(25) NOT NULL,
  `newsletter_text` varchar(25) NOT NULL,
  `paypal_email` varchar(25) NOT NULL,
  `stripe_public_key` varchar(25) NOT NULL,
  `stripe_secret_key` varchar(25) NOT NULL,
  `bank_detail` tinytext DEFAULT NULL,
  `before_head` varchar(25) NOT NULL,
  `after_body` varchar(25) NOT NULL,
  `before_body` varchar(25) NOT NULL,
  `home_service_on_off` varchar(45) DEFAULT NULL,
  `home_welcome_on_off` varchar(45) DEFAULT NULL,
  `home_featured_product_on_off` varchar(45) DEFAULT NULL,
  `home_latest_product_on_off` varchar(45) DEFAULT NULL,
  `home_popular_product_on_off` varchar(45) DEFAULT NULL,
  `home_testimonial_on_off` varchar(45) DEFAULT NULL,
  `home_blog_on_off` varchar(45) DEFAULT NULL,
  `newsletter_on_off` varchar(45) DEFAULT NULL,
  `ads_above_welcome_on_off` varchar(45) DEFAULT NULL,
  `ads_above_featured_product_on_off` varchar(45) DEFAULT NULL,
  `ads_above_latest_product_on_off` varchar(45) DEFAULT NULL,
  `ads_above_popular_product_on_off` varchar(45) DEFAULT NULL,
  `ads_above_testimonial_on_off` varchar(45) DEFAULT NULL,
  `ads_category_sidebar_on_off` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '', '', '', '', '', '', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 99, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XL'),
(3, 'M'),
(4, 'L'),
(5, '28'),
(6, '30'),
(7, '32'),
(8, '34'),
(9, '36'),
(10, '38'),
(11, '40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `sale_type` text DEFAULT '\'onsale\'',
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `type`, `sale_type`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(10, 2, NULL, 'slider-10.png', 'this is a second slider', 'hello', 'click', 'product', 'Center'),
(12, 2, 'onsale', 'slider-12.jpg', 'test ', 'test content', 'click', 'login', 'Left'),
(13, 2, 'onsale', 'slider-13.png', 'dsfs', 'fgfd', 'click', 'product', 'Left'),
(14, 1, '\'onsale\'', 'slider-14.png', 'test click', 'hello', 'click', 'blog', 'Left'),
(15, 1, '\'onsale\'', 'slider-15.png', 'slider', 'test slider', '', 'login', 'Left');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/officialrmdubey', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/officialrmdubey', 'fa fa-twitter'),
(3, 'LinkedIn', 'https://www.twitter.com/officialrmdubey', 'fa fa-linkedin'),
(4, 'Google Plus', 'https://www.google.com/officialrmdubey', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/officialrmdubey', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.twitter.com/officialrmdubey', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '8218656771', 'fa fa-snapchat'),
(12, 'WhatsApp', '8218656771', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(0, 'chsahdsnsdj@gmail.com', '2024-07-03', '2024-07-03 13:19:09', 'e185fc89127aeab4f3c4077495620d94', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `pic` varchar(125) DEFAULT NULL,
  `show_on_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `pic`, `show_on_menu`) VALUES
(4, 'Kids Wear', '7ab638cfde4da1d566f74004d15c1831.', 1),
(7, 'Men\'s Wear', '319fb12e9d19287ec08866e007fd8053.', 1),
(8, 'Women\'s Wear', '9a12ebbd65821df440686f9646f8d113.', 1),
(9, 'Accessories', '38024c437f37317d9649d1710cfcbd20.', 1),
(10, 'mobiles', '5bb5f53f2ed6f2ad6041f7ecbef2c8ac.', 1),
(11, 'test', 'fc7a9316029474200260c377c808f477.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(0, 'admin', 'admin@gmail.com', '999999999', 'e10adc3949ba59abbe56e057f20f883e', 'user-0.png', 'superadmin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `otp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_regist`
--

CREATE TABLE `tbl_user_regist` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `number` varchar(12) NOT NULL,
  `register_email` varchar(100) DEFAULT NULL,
  `register_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `totalorder`
--

CREATE TABLE `totalorder` (
  `id` int(11) NOT NULL,
  `cartid` varchar(45) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `qty` float(10,2) NOT NULL DEFAULT 0.00,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `totalamt` float(10,2) NOT NULL,
  `trns` float(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `totalorder`
--

INSERT INTO `totalorder` (`id`, `cartid`, `pid`, `qty`, `price`, `totalamt`, `trns`, `status`) VALUES
(3, '173471483789', NULL, 0.00, 0.00, 850.00, 0.00, 1),
(4, '186468814592', NULL, 0.00, 0.00, 850.00, 0.00, 1),
(5, '198588305562', NULL, 0.00, 0.00, 399.00, 0.00, 1),
(6, '114444046025', NULL, 0.00, 0.00, 850.00, 0.00, 1),
(7, '112598943680', NULL, 0.00, 0.00, 850.00, 0.00, 1),
(8, '181994325445', NULL, 0.00, 0.00, 850.00, 0.00, 1),
(9, '181948374393', NULL, 0.00, 0.00, 850.00, 0.00, 1),
(10, '162424158762', NULL, 0.00, 0.00, 499.00, 0.00, 1),
(11, '186803056965', NULL, 0.00, 0.00, 499.00, 0.00, 1),
(12, '173823409829', NULL, 0.00, 0.00, 499.00, 0.00, 1),
(13, '195441609753', NULL, 0.00, 0.00, 543.00, 0.00, 1),
(14, '197122794877', NULL, 0.00, 0.00, 543.00, 0.00, 1),
(15, '118696213768', NULL, 0.00, 0.00, 40541.00, 0.00, 1),
(16, '150630608163', NULL, 0.00, 0.00, 20542.00, 0.00, 1),
(17, '159942381320', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(18, '128353288038', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(19, '138761419208', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(20, '149998175623', NULL, 0.00, 0.00, 59997.00, 0.00, 1),
(21, '177749437611', NULL, 0.00, 0.00, 59997.00, 0.00, 1),
(22, '183034155450', NULL, 0.00, 0.00, 59997.00, 0.00, 1),
(23, '114848283514', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(24, '126380581294', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(25, '118206749822', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(26, '139899965072', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(27, '177723705019', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(28, '190277461143', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(29, '136635598705', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(30, '129717355527', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(31, '146425517345', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(32, '166928707871', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(33, '193922715401', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(34, '171565159315', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(35, '184268932182', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(36, '127392526309', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(37, '162816083879', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(38, '198539537450', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(39, '159091126876', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(40, '146602103982', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(41, '189840704589', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(42, '156062335303', NULL, 0.00, 0.00, 39998.00, 0.00, 0),
(43, '154727148602', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(44, '172152552203', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(45, '120632861871', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(46, '140776386475', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(47, '129187764247', NULL, 0.00, 0.00, 79996.00, 0.00, 1),
(48, '175514601901', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(49, '191735273955', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(50, '118453824264', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(51, '164026188006', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(52, '123922155992', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(53, '129157281620', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(54, '163717034270', NULL, 0.00, 0.00, 19999.00, 0.00, 1),
(55, '140954356537', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(56, '113848691884', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(57, '172239254094', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(58, '194767567692', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(59, '134728554850', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(60, '191557597810', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(61, '122071403156', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(62, '180881846464', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(63, '143006578368', NULL, 0.00, 0.00, 39998.00, 0.00, 1),
(64, '122209957573', NULL, 0.00, 0.00, 139993.00, 0.00, 1),
(65, '152477629396', NULL, 0.00, 0.00, 139993.00, 0.00, 1),
(66, '125219015521', NULL, 0.00, 0.00, 99995.00, 0.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(6) DEFAULT '12345'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `number`, `password`, `otp`) VALUES
(1, '9876543210', '123456789', '12345'),
(2, '1234567890', '1234567890', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `x1_new_adata`
--

CREATE TABLE `x1_new_adata` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `user_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `upline_n_rank` text DEFAULT NULL,
  `upline_in` text DEFAULT NULL,
  `upline_ac` text DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `x1_tbl_customer`
--

CREATE TABLE `x1_tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `withdraw_wallet` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `level_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `direct_wallet` decimal(15,2) DEFAULT 0.00,
  `gbp_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_purchase` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `total_direct_income` decimal(15,2) DEFAULT 0.00,
  `total_gbp_income` decimal(15,2) DEFAULT 0.00,
  `pending_withdraw` decimal(15,2) DEFAULT 0.00,
  `total_withdraw` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business_self` decimal(15,2) DEFAULT 0.00,
  `coupon` int(11) DEFAULT 0,
  `dob` date DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_cname` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_country` varchar(50) DEFAULT NULL,
  `cust_address` text DEFAULT NULL,
  `cust_city` varchar(100) DEFAULT NULL,
  `cust_state` varchar(100) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `bank_name` varchar(60) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(15) DEFAULT NULL,
  `nominee_name` varchar(100) DEFAULT NULL,
  `nominee_relation` varchar(20) DEFAULT NULL,
  `cust_b_name` varchar(100) DEFAULT NULL,
  `cust_b_cname` varchar(100) DEFAULT NULL,
  `cust_b_phone` varchar(50) DEFAULT NULL,
  `cust_b_country` varchar(50) DEFAULT NULL,
  `cust_b_address` text DEFAULT NULL,
  `cust_b_city` varchar(100) DEFAULT NULL,
  `cust_b_state` varchar(100) DEFAULT NULL,
  `cust_b_zip` varchar(30) DEFAULT NULL,
  `cust_s_name` varchar(100) DEFAULT NULL,
  `cust_s_cname` varchar(100) DEFAULT NULL,
  `cust_s_phone` varchar(50) DEFAULT NULL,
  `cust_s_country` varchar(50) DEFAULT NULL,
  `cust_s_address` text DEFAULT NULL,
  `cust_s_city` varchar(100) DEFAULT NULL,
  `cust_s_state` varchar(100) DEFAULT NULL,
  `cust_s_zip` varchar(30) DEFAULT NULL,
  `pic` varchar(75) DEFAULT NULL,
  `cust_password` varchar(100) DEFAULT NULL,
  `cust_token` varchar(255) DEFAULT NULL,
  `cust_datetime` timestamp NULL DEFAULT NULL,
  `cust_timestamp` varchar(100) DEFAULT NULL,
  `cust_status` int(11) NOT NULL DEFAULT 1,
  `fr_type` tinyint(4) DEFAULT 0,
  `fr_by` varchar(15) DEFAULT NULL,
  `fr_datetime` timestamp NULL DEFAULT NULL,
  `cr_datetime` timestamp NULL DEFAULT NULL,
  `in_datetime` timestamp NULL DEFAULT NULL,
  `ac_datetime` timestamp NULL DEFAULT NULL,
  `dk_datetime` timestamp NULL DEFAULT NULL,
  `ace_ok` tinyint(4) DEFAULT 0,
  `duke_ok` tinyint(4) DEFAULT 0,
  `ace_ok_datetime` timestamp NULL DEFAULT NULL,
  `duke_ok_datetime` timestamp NULL DEFAULT NULL,
  `ace_challange` tinyint(4) DEFAULT 0,
  `duke_challange` tinyint(4) DEFAULT 0,
  `status` varchar(8) NOT NULL DEFAULT 'active',
  `achiver` int(11) NOT NULL DEFAULT 1 COMMENT '2- active,1-inactive',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xxx_aaa`
--

CREATE TABLE `xxx_aaa` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `upline_n_rank` text DEFAULT NULL,
  `upline_in` text DEFAULT NULL,
  `upline_ac` text DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xxx_new_monthly_data`
--

CREATE TABLE `xxx_new_monthly_data` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `direct_count` int(11) DEFAULT 0,
  `income_sum` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `total_direct_income` decimal(15,2) DEFAULT 0.00,
  `total_gbp_income` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_self_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xxx_tbl_customer`
--

CREATE TABLE `xxx_tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `withdraw_wallet` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `level_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `direct_wallet` decimal(15,2) DEFAULT 0.00,
  `gbp_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_purchase` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `total_direct_income` decimal(15,2) DEFAULT 0.00,
  `total_gbp_income` decimal(15,2) DEFAULT 0.00,
  `pending_withdraw` decimal(15,2) DEFAULT 0.00,
  `total_withdraw` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business_self` decimal(15,2) DEFAULT 0.00,
  `coupon` int(11) DEFAULT 0,
  `dob` date DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_cname` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_country` varchar(50) DEFAULT NULL,
  `cust_address` text DEFAULT NULL,
  `cust_city` varchar(100) DEFAULT NULL,
  `cust_state` varchar(100) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `bank_name` varchar(60) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(15) DEFAULT NULL,
  `nominee_name` varchar(100) DEFAULT NULL,
  `nominee_relation` varchar(20) DEFAULT NULL,
  `cust_b_name` varchar(100) DEFAULT NULL,
  `cust_b_cname` varchar(100) DEFAULT NULL,
  `cust_b_phone` varchar(50) DEFAULT NULL,
  `cust_b_country` varchar(50) DEFAULT NULL,
  `cust_b_address` text DEFAULT NULL,
  `cust_b_city` varchar(100) DEFAULT NULL,
  `cust_b_state` varchar(100) DEFAULT NULL,
  `cust_b_zip` varchar(30) DEFAULT NULL,
  `cust_s_name` varchar(100) DEFAULT NULL,
  `cust_s_cname` varchar(100) DEFAULT NULL,
  `cust_s_phone` varchar(50) DEFAULT NULL,
  `cust_s_country` varchar(50) DEFAULT NULL,
  `cust_s_address` text DEFAULT NULL,
  `cust_s_city` varchar(100) DEFAULT NULL,
  `cust_s_state` varchar(100) DEFAULT NULL,
  `cust_s_zip` varchar(30) DEFAULT NULL,
  `pic` varchar(75) DEFAULT NULL,
  `cust_password` varchar(100) DEFAULT NULL,
  `cust_token` varchar(255) DEFAULT NULL,
  `cust_datetime` timestamp NULL DEFAULT NULL,
  `cust_timestamp` varchar(100) DEFAULT NULL,
  `cust_status` int(11) NOT NULL DEFAULT 1,
  `fr_type` tinyint(4) DEFAULT 0,
  `fr_by` varchar(15) DEFAULT NULL,
  `fr_datetime` timestamp NULL DEFAULT NULL,
  `cr_datetime` timestamp NULL DEFAULT NULL,
  `in_datetime` timestamp NULL DEFAULT NULL,
  `ac_datetime` timestamp NULL DEFAULT NULL,
  `dk_datetime` timestamp NULL DEFAULT NULL,
  `ace_ok` tinyint(4) DEFAULT 0,
  `duke_ok` tinyint(4) DEFAULT 0,
  `ace_ok_datetime` timestamp NULL DEFAULT NULL,
  `duke_ok_datetime` timestamp NULL DEFAULT NULL,
  `ace_challange` tinyint(4) DEFAULT 0,
  `duke_challange` tinyint(4) DEFAULT 0,
  `status` varchar(8) NOT NULL DEFAULT 'active',
  `achiver` int(11) NOT NULL DEFAULT 1 COMMENT '2- active,1-inactive',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xx_new_monthly_data`
--

CREATE TABLE `xx_new_monthly_data` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `direct_count` int(11) DEFAULT 0,
  `income_sum` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_self_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xx_tbl_customer`
--

CREATE TABLE `xx_tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `withdraw_wallet` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_valid` tinyint(4) DEFAULT 0,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_purchase` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `pending_withdraw` decimal(15,2) DEFAULT 0.00,
  `total_withdraw` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business_self` decimal(15,2) DEFAULT 0.00,
  `coupon` int(11) DEFAULT 0,
  `dob` date DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_cname` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_country` varchar(50) DEFAULT NULL,
  `cust_address` text DEFAULT NULL,
  `cust_city` varchar(100) DEFAULT NULL,
  `cust_state` varchar(100) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `bank_name` varchar(60) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(15) DEFAULT NULL,
  `nominee_name` varchar(100) DEFAULT NULL,
  `nominee_relation` varchar(20) DEFAULT NULL,
  `cust_b_name` varchar(100) DEFAULT NULL,
  `cust_b_cname` varchar(100) DEFAULT NULL,
  `cust_b_phone` varchar(50) DEFAULT NULL,
  `cust_b_country` varchar(50) DEFAULT NULL,
  `cust_b_address` text DEFAULT NULL,
  `cust_b_city` varchar(100) DEFAULT NULL,
  `cust_b_state` varchar(100) DEFAULT NULL,
  `cust_b_zip` varchar(30) DEFAULT NULL,
  `cust_s_name` varchar(100) DEFAULT NULL,
  `cust_s_cname` varchar(100) DEFAULT NULL,
  `cust_s_phone` varchar(50) DEFAULT NULL,
  `cust_s_country` varchar(50) DEFAULT NULL,
  `cust_s_address` text DEFAULT NULL,
  `cust_s_city` varchar(100) DEFAULT NULL,
  `cust_s_state` varchar(100) DEFAULT NULL,
  `cust_s_zip` varchar(30) DEFAULT NULL,
  `pic` varchar(75) DEFAULT NULL,
  `cust_password` varchar(100) DEFAULT NULL,
  `cust_token` varchar(255) DEFAULT NULL,
  `cust_datetime` timestamp NULL DEFAULT NULL,
  `cust_timestamp` varchar(100) DEFAULT NULL,
  `cust_status` int(11) NOT NULL DEFAULT 1,
  `fr_type` tinyint(4) DEFAULT 0,
  `fr_by` varchar(15) DEFAULT NULL,
  `fr_datetime` timestamp NULL DEFAULT NULL,
  `cr_datetime` timestamp NULL DEFAULT NULL,
  `in_datetime` timestamp NULL DEFAULT NULL,
  `ac_datetime` timestamp NULL DEFAULT NULL,
  `dk_datetime` timestamp NULL DEFAULT NULL,
  `ace_ok` tinyint(4) DEFAULT 0,
  `duke_ok` tinyint(4) DEFAULT 0,
  `ace_ok_datetime` timestamp NULL DEFAULT NULL,
  `duke_ok_datetime` timestamp NULL DEFAULT NULL,
  `ace_challange` tinyint(4) DEFAULT 0,
  `duke_challange` tinyint(4) DEFAULT 0,
  `status` varchar(8) NOT NULL DEFAULT 'active',
  `achiver` int(11) NOT NULL DEFAULT 1 COMMENT '2- active,1-inactive',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `x_new_monthly_data`
--

CREATE TABLE `x_new_monthly_data` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `direct_count` int(11) DEFAULT 0,
  `income_sum` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_self_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `date_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `x_tbl_customer`
--

CREATE TABLE `x_tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `sponsor_id` varchar(15) DEFAULT NULL,
  `crank` int(11) DEFAULT 0,
  `withdraw_wallet` decimal(15,2) DEFAULT 0.00,
  `income_wallet` decimal(15,2) DEFAULT 0.00,
  `gpg_wallet` decimal(15,2) DEFAULT 0.00,
  `total_income` decimal(15,2) DEFAULT 0.00,
  `total_purchase` decimal(15,2) DEFAULT 0.00,
  `total_level_income` decimal(15,2) DEFAULT 0.00,
  `total_gpg_income` decimal(15,2) DEFAULT 0.00,
  `pending_withdraw` decimal(15,2) DEFAULT 0.00,
  `total_withdraw` decimal(15,2) DEFAULT 0.00,
  `monthly_purchase` decimal(15,2) DEFAULT 0.00,
  `temp_purchase` decimal(15,2) DEFAULT 0.00,
  `monthly_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business` decimal(15,2) DEFAULT 0.00,
  `total_team_business_self` decimal(15,2) DEFAULT 0.00,
  `coupon` int(11) DEFAULT 0,
  `dob` date DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_cname` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_country` varchar(50) DEFAULT NULL,
  `cust_address` text DEFAULT NULL,
  `cust_city` varchar(100) DEFAULT NULL,
  `cust_state` varchar(100) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `pan` varchar(15) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `bank_name` varchar(60) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(15) DEFAULT NULL,
  `nominee_name` varchar(100) DEFAULT NULL,
  `nominee_relation` varchar(20) DEFAULT NULL,
  `cust_b_name` varchar(100) DEFAULT NULL,
  `cust_b_cname` varchar(100) DEFAULT NULL,
  `cust_b_phone` varchar(50) DEFAULT NULL,
  `cust_b_country` varchar(50) DEFAULT NULL,
  `cust_b_address` text DEFAULT NULL,
  `cust_b_city` varchar(100) DEFAULT NULL,
  `cust_b_state` varchar(100) DEFAULT NULL,
  `cust_b_zip` varchar(30) DEFAULT NULL,
  `cust_s_name` varchar(100) DEFAULT NULL,
  `cust_s_cname` varchar(100) DEFAULT NULL,
  `cust_s_phone` varchar(50) DEFAULT NULL,
  `cust_s_country` varchar(50) DEFAULT NULL,
  `cust_s_address` text DEFAULT NULL,
  `cust_s_city` varchar(100) DEFAULT NULL,
  `cust_s_state` varchar(100) DEFAULT NULL,
  `cust_s_zip` varchar(30) DEFAULT NULL,
  `pic` varchar(75) DEFAULT NULL,
  `cust_password` varchar(100) DEFAULT NULL,
  `cust_token` varchar(255) DEFAULT NULL,
  `cust_datetime` timestamp NULL DEFAULT NULL,
  `cust_timestamp` varchar(100) DEFAULT NULL,
  `cust_status` int(11) NOT NULL DEFAULT 1,
  `fr_type` tinyint(4) DEFAULT 0,
  `fr_by` varchar(15) DEFAULT NULL,
  `fr_datetime` timestamp NULL DEFAULT NULL,
  `cr_datetime` timestamp NULL DEFAULT NULL,
  `in_datetime` timestamp NULL DEFAULT NULL,
  `ac_datetime` timestamp NULL DEFAULT NULL,
  `dk_datetime` timestamp NULL DEFAULT NULL,
  `ace_ok` tinyint(4) DEFAULT 0,
  `duke_ok` tinyint(4) DEFAULT 0,
  `ace_ok_datetime` timestamp NULL DEFAULT NULL,
  `duke_ok_datetime` timestamp NULL DEFAULT NULL,
  `ace_challange` tinyint(4) DEFAULT 0,
  `duke_challange` tinyint(4) DEFAULT 0,
  `status` varchar(8) NOT NULL DEFAULT 'active',
  `achiver` int(11) NOT NULL DEFAULT 1 COMMENT '2- active,1-inactive',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aaa`
--
ALTER TABLE `aaa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `crank` (`crank`);

--
-- Indexes for table `admrank`
--
ALTER TABLE `admrank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwregister`
--
ALTER TABLE `gwregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laser`
--
ALTER TABLE `laser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_adata`
--
ALTER TABLE `new_adata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `crank` (`crank`);

--
-- Indexes for table `new_admin`
--
ALTER TABLE `new_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_challange`
--
ALTER TABLE `new_challange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_ledger`
--
ALTER TABLE `new_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`for_transaction_id`,`from_id`,`purpose`,`date_time`);

--
-- Indexes for table `new_matrix`
--
ALTER TABLE `new_matrix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_monthly_data`
--
ALTER TABLE `new_monthly_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`sponsor_id`,`crank`,`date_time`),
  ADD KEY `monthly_purchase` (`monthly_purchase`),
  ADD KEY `direct_count` (`direct_count`);

--
-- Indexes for table `new_payout`
--
ALTER TABLE `new_payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_payout_admin`
--
ALTER TABLE `new_payout_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_structure`
--
ALTER TABLE `new_structure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_id` (`parent_id`,`level`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returnproduct`
--
ALTER TABLE `returnproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salarygen`
--
ALTER TABLE `salarygen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `crank` (`crank`),
  ADD KEY `cust_name` (`cust_name`),
  ADD KEY `cust_email` (`cust_email`),
  ADD KEY `gpg_valid` (`gpg_valid`),
  ADD KEY `monthly_purchase` (`monthly_purchase`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_regist`
--
ALTER TABLE `tbl_user_regist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `totalorder`
--
ALTER TABLE `totalorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `x1_new_adata`
--
ALTER TABLE `x1_new_adata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `crank` (`crank`);

--
-- Indexes for table `x1_tbl_customer`
--
ALTER TABLE `x1_tbl_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `crank` (`crank`),
  ADD KEY `cust_name` (`cust_name`),
  ADD KEY `cust_email` (`cust_email`),
  ADD KEY `gpg_valid` (`gpg_valid`),
  ADD KEY `monthly_purchase` (`monthly_purchase`);

--
-- Indexes for table `xxx_aaa`
--
ALTER TABLE `xxx_aaa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xxx_new_monthly_data`
--
ALTER TABLE `xxx_new_monthly_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`sponsor_id`,`crank`,`date_time`),
  ADD KEY `monthly_purchase` (`monthly_purchase`),
  ADD KEY `direct_count` (`direct_count`);

--
-- Indexes for table `xxx_tbl_customer`
--
ALTER TABLE `xxx_tbl_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `crank` (`crank`),
  ADD KEY `cust_name` (`cust_name`),
  ADD KEY `cust_email` (`cust_email`),
  ADD KEY `gpg_valid` (`gpg_valid`),
  ADD KEY `monthly_purchase` (`monthly_purchase`);

--
-- Indexes for table `xx_new_monthly_data`
--
ALTER TABLE `xx_new_monthly_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`sponsor_id`,`crank`,`date_time`),
  ADD KEY `monthly_purchase` (`monthly_purchase`),
  ADD KEY `direct_count` (`direct_count`);

--
-- Indexes for table `xx_tbl_customer`
--
ALTER TABLE `xx_tbl_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `crank` (`crank`),
  ADD KEY `cust_name` (`cust_name`),
  ADD KEY `cust_email` (`cust_email`),
  ADD KEY `gpg_valid` (`gpg_valid`),
  ADD KEY `monthly_purchase` (`monthly_purchase`);

--
-- Indexes for table `x_new_monthly_data`
--
ALTER TABLE `x_new_monthly_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `x_tbl_customer`
--
ALTER TABLE `x_tbl_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sponsor_id` (`sponsor_id`),
  ADD KEY `crank` (`crank`),
  ADD KEY `cust_name` (`cust_name`),
  ADD KEY `cust_email` (`cust_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aaa`
--
ALTER TABLE `aaa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admrank`
--
ALTER TABLE `admrank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gwregister`
--
ALTER TABLE `gwregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `laser`
--
ALTER TABLE `laser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `new_adata`
--
ALTER TABLE `new_adata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `new_admin`
--
ALTER TABLE `new_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_challange`
--
ALTER TABLE `new_challange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_ledger`
--
ALTER TABLE `new_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_matrix`
--
ALTER TABLE `new_matrix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_monthly_data`
--
ALTER TABLE `new_monthly_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_payout`
--
ALTER TABLE `new_payout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_payout_admin`
--
ALTER TABLE `new_payout_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_structure`
--
ALTER TABLE `new_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `returnproduct`
--
ALTER TABLE `returnproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salarygen`
--
ALTER TABLE `salarygen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_regist`
--
ALTER TABLE `tbl_user_regist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `totalorder`
--
ALTER TABLE `totalorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `x1_new_adata`
--
ALTER TABLE `x1_new_adata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `x1_tbl_customer`
--
ALTER TABLE `x1_tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xxx_aaa`
--
ALTER TABLE `xxx_aaa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xxx_new_monthly_data`
--
ALTER TABLE `xxx_new_monthly_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xxx_tbl_customer`
--
ALTER TABLE `xxx_tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xx_new_monthly_data`
--
ALTER TABLE `xx_new_monthly_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xx_tbl_customer`
--
ALTER TABLE `xx_tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `x_new_monthly_data`
--
ALTER TABLE `x_new_monthly_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `x_tbl_customer`
--
ALTER TABLE `x_tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
