-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 07:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE `tbl_branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_email` varchar(50) NOT NULL,
  `branch_phone` varchar(20) NOT NULL,
  `branch_manager` varchar(50) NOT NULL,
  `branch_location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_branch`
--

INSERT INTO `tbl_branch` (`branch_id`, `branch_name`, `branch_email`, `branch_phone`, `branch_manager`, `branch_location`) VALUES
(4, 'shylet', 'shylet@gmail.com', '8901233', 'nasir khasru', 'shylet'),
(6, 'chuadanga', 'chuadanga@gmail.com', '84930930', 'safa khan', 'jibannagar,chuadanga');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `company_id` int(11) NOT NULL,
  `company_branch` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` text NOT NULL,
  `company_manager` varchar(50) NOT NULL,
  `company_phone` varchar(20) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `company_status` int(2) NOT NULL DEFAULT 1 COMMENT '1=active\r\n0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`company_id`, `company_branch`, `company_name`, `company_address`, `company_manager`, `company_phone`, `company_email`, `company_status`) VALUES
(3, 'khulna', 'it soft', 'Jessore,khulna', 'md majid', '08753572333', 'itsolution@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_branch` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_branch`, `customer_name`, `customer_phone`, `customer_address`) VALUES
(4, '6', 'jarin khan', '683892002', 'alamdanga,chuadanga');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `em_id` int(11) NOT NULL,
  `em_name` varchar(255) NOT NULL,
  `em_email` varchar(100) NOT NULL,
  `em_phone` varchar(20) NOT NULL,
  `em_branch` varchar(50) NOT NULL,
  `em_designation` varchar(50) NOT NULL,
  `em_nid` int(50) NOT NULL,
  `em_salary` int(12) NOT NULL,
  `em_join_date` varchar(50) NOT NULL,
  `em_address` varchar(50) NOT NULL,
  `em_password` varchar(20) NOT NULL,
  `em_status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`em_id`, `em_name`, `em_email`, `em_phone`, `em_branch`, `em_designation`, `em_nid`, `em_salary`, `em_join_date`, `em_address`, `em_password`, `em_status`) VALUES
(1, 'shafa', 'shafa@gmail.com', '89999', 'dhaka', 'manager', 89766887, 1000000, '2012-02-12', 'dhaka-1212', '1234', 0),
(3, 'Admin', 'admin@mail.com', '024890o0', '3', 'area manager', 7898, 67777, '2022-04-22', 'khulna', '827ccb0eea8a706c4c34', 1),
(6, 'sk1@gmail.com', 'sk1@gmail.com', '789', '', '', 0, 0, '', '', '6512bd43d9caa6e02c99', 1),
(7, 's@gmail.com', 's@gmail.com', '56', '', '', 0, 0, '', '', 'b59c67bf196a4758191e', 1),
(8, 'sr', 'abc@gmail.com', '1', '', '', 0, 0, '', '', 'c4ca4238a0b923820dcc', 1),
(9, 'rr', 'r@gmail.com', '22', '', '', 0, 0, '', '', 'b6d767d2f8ed5d21a44b', 1),
(10, 'shafa', 'safa@gmail.com', '+8804759403', '6', 'manager', 456677, 80000, '2022-05-11', 'Dhanmondi 10/A , Dhaka', '81dc9bdb52d04dc20036', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expensess`
--

CREATE TABLE `tbl_expensess` (
  `expensess_id` int(11) NOT NULL,
  `expensess_branch` varchar(50) NOT NULL,
  `expensess_purpose` varchar(50) NOT NULL,
  `expensess_amount` int(20) NOT NULL,
  `expensess_remark` varchar(255) NOT NULL,
  `expensess_status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(20) NOT NULL,
  `product_branch` varchar(50) NOT NULL,
  `product_barcode` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `product_size` varchar(15) NOT NULL,
  `product_saleemployee` varchar(50) NOT NULL,
  `product_costprice` varchar(20) NOT NULL,
  `product_saleprice` varchar(20) NOT NULL,
  `product_quantity` varchar(20) NOT NULL,
  `product_status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_branch`, `product_barcode`, `product_name`, `product_description`, `product_type`, `product_size`, `product_saleemployee`, `product_costprice`, `product_saleprice`, `product_quantity`, `product_status`) VALUES
(1, 'shylet', '100001', 'dress', 'dhaka,malibag,sr-2', 'sharee', 'medium', 'rakifa', '458', '2000', '7', 1),
(4, 'khulna', '234', 'shirt', 'small size medium quality', 'boys t-shirt', 'small', 'rakib', '670', '2456', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_details`
--

CREATE TABLE `tbl_purchase_details` (
  `pd_id` int(11) NOT NULL,
  `pd_date` varchar(100) NOT NULL,
  `pd_invoice` varchar(50) NOT NULL,
  `pd_branch` int(11) NOT NULL,
  `pd_company` int(11) NOT NULL,
  `pd_product_barcode` int(11) NOT NULL,
  `pd_product_price` int(11) NOT NULL,
  `pd_quantity` int(11) NOT NULL,
  `pd_total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_summary`
--

CREATE TABLE `tbl_purchase_summary` (
  `ps_id` int(11) NOT NULL,
  `ps_purchase_date` varchar(100) NOT NULL,
  `ps_invoice` int(11) NOT NULL,
  `ps_branch` int(11) NOT NULL,
  `ps_company` int(11) NOT NULL,
  `ps_total_quantity` int(11) NOT NULL,
  `ps_total_price` int(11) NOT NULL,
  `ps_discount` int(11) NOT NULL,
  `ps_net_amount` int(11) NOT NULL,
  `ps_payment` int(11) NOT NULL,
  `ps_due_amount` int(11) NOT NULL,
  `ps_employee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `sale__id` int(11) NOT NULL,
  `sale_date` varchar(50) NOT NULL,
  `sale_branch` int(11) NOT NULL,
  `sale_customer` int(11) NOT NULL,
  `sale_invoice` int(11) NOT NULL,
  `sale_barcode` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `sale_quantity` int(11) NOT NULL,
  `sale_total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_summary`
--

CREATE TABLE `tbl_sales_summary` (
  `ss_id` int(11) NOT NULL,
  `ss_branch` int(11) NOT NULL,
  `ss_date` date NOT NULL,
  `ss_invoice` int(11) NOT NULL,
  `ss_total_quantity` int(11) NOT NULL,
  `ss_total_price` int(11) NOT NULL,
  `ss_discount_amount` int(11) NOT NULL,
  `ss_net_amount` int(11) NOT NULL,
  `ss_due_amount` int(11) NOT NULL,
  `ss_due_date` date NOT NULL,
  `ss_employe` int(11) NOT NULL,
  `ss_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `tbl_expensess`
--
ALTER TABLE `tbl_expensess`
  ADD PRIMARY KEY (`expensess_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_purchase_details`
--
ALTER TABLE `tbl_purchase_details`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `tbl_purchase_summary`
--
ALTER TABLE `tbl_purchase_summary`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`sale__id`),
  ADD UNIQUE KEY `sale_barcode` (`sale_barcode`);

--
-- Indexes for table `tbl_sales_summary`
--
ALTER TABLE `tbl_sales_summary`
  ADD PRIMARY KEY (`ss_id`),
  ADD UNIQUE KEY `ss_invoice` (`ss_invoice`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `em_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_expensess`
--
ALTER TABLE `tbl_expensess`
  MODIFY `expensess_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_purchase_details`
--
ALTER TABLE `tbl_purchase_details`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_purchase_summary`
--
ALTER TABLE `tbl_purchase_summary`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `sale__id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sales_summary`
--
ALTER TABLE `tbl_sales_summary`
  MODIFY `ss_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
