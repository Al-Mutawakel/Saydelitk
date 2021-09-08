-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 12:43 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yr_pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_id` int(11) NOT NULL,
  `Account_type` varchar(40) DEFAULT NULL,
  `Account_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Account_total` int(11) DEFAULT NULL,
  `Products_Price` int(11) DEFAULT NULL,
  `Delivery_Price` int(11) DEFAULT NULL,
  `Cust_id` int(11) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Discount_Price` int(11) DEFAULT NULL,
  `Account_State` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Account_id`, `Account_type`, `Account_Date`, `Account_total`, `Products_Price`, `Delivery_Price`, `Cust_id`, `Address_id`, `Discount_Price`, `Account_State`) VALUES
(201, 'دفع عند الاستلام', '2021-07-09 18:09:05', 9939, 17878, 1000, 1, 2, 8939, 'تم التنفيذ'),
(202, 'دفع عند الاستلام', '2021-07-09 18:09:51', 9939, 17878, 1000, 1, 2, 8939, 'تم التنفيذ'),
(203, 'دفع عند الاستلام', '2021-07-09 19:20:19', 4000, 3000, 1000, 1, 2, 0, 'تم التنفيذ'),
(204, 'دفع عند الاستلام', '2021-07-09 20:21:38', 11000, 20000, 1000, 1, 2, 10000, 'جديد'),
(205, 'دفع عند الاستلام', '2021-07-10 08:12:26', 11400, 26000, 1000, 3, 5, 15600, 'تم التنفيذ'),
(206, 'دفع عند الاستلام', '2021-07-10 08:56:40', 39817, 38817, 1000, 4, 6, 0, 'تم التنفيذ'),
(207, 'دفع عند الاستلام', '2021-07-10 09:11:19', 24909, 47817, 1000, 4, 7, 23909, 'تم التنفيذ'),
(208, 'دفع عند الاستلام', '2021-07-10 09:16:15', 24909, 47817, 1000, 4, 7, 23909, 'تم التنفيذ'),
(209, 'دفع عند الاستلام', '2021-07-11 06:53:10', 27000, 26000, 1000, 3, 5, 0, 'تم ألغاء العملية'),
(210, 'دفع عند الاستلام', '2021-07-11 06:53:12', 27000, 26000, 1000, 3, 5, 0, 'تم التنفيذ'),
(211, 'دفع عند الاستلام', '2021-07-12 19:19:29', 10470, 18939, 1000, 1, 2, 9470, 'تم التنفيذ'),
(212, 'دفع عند الاستلام', '2021-07-12 19:19:37', 10470, 18939, 1000, 1, 2, 9470, 'تم التنفيذ'),
(213, 'دفع عند الاستلام', '2021-07-12 19:30:11', 10470, 18939, 1000, 1, 2, 9470, 'تم التنفيذ'),
(214, 'دفع عند الاستلام', '2021-07-12 19:32:41', 10470, 18939, 1000, 1, 2, 9470, 'جديد'),
(215, 'دفع عند الاستلام', '2021-07-12 19:33:04', 10470, 18939, 1000, 1, 2, 9470, 'جديد'),
(216, 'دفع عند الاستلام', '2021-07-12 19:34:45', 19939, 18939, 1000, 1, 2, 0, 'جديد'),
(217, 'دفع عند الاستلام', '2021-07-12 19:35:13', 19939, 18939, 1000, 1, 2, 0, 'تم ألغاء العملية'),
(218, 'دفع عند الاستلام', '2021-07-13 08:18:57', 19939, 18939, 1000, 1, 2, 0, 'تم التنفيذ');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `Address_Id` int(11) NOT NULL,
  `Address_description` varchar(70) DEFAULT NULL,
  `Address_position` varchar(70) DEFAULT NULL,
  `Address_Log` double DEFAULT NULL,
  `Address_Lat` double DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`Address_Id`, `Address_description`, `Address_position`, `Address_Log`, `Address_Lat`, `cust_id`) VALUES
(2, 'شارع صفر بجانب صيدلية رويال ميديكال', 'حده', 44.1941715, 15.3000183, 1),
(3, 'شارع تعز', 'شميله', 44.2214884981513, 15.321512898004782, 2),
(4, 'شارع صفر بجانب صيدلية رويال بيت المتوكل', 'حده', 44.1942785, 15.2998233, 2),
(5, 'جنب مطعم فلان في مكان فلان', 'الدائري', 44.190024510025985, 15.348812062512335, 3),
(6, 'في جامعة المستقبل', 'شارح الجزائر', 44.18525822460651, 15.336516902619705, 4),
(7, 'جوار مستشفي المتوكل', 'شارع بغداد', 44.18387621641159, 15.336412788200825, 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(70) DEFAULT NULL,
  `cust_phone` int(11) DEFAULT NULL,
  `cust_birthday` date DEFAULT NULL,
  `cust_state` varchar(10) DEFAULT NULL,
  `cust_email` varchar(70) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `cust_Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`, `cust_phone`, `cust_birthday`, `cust_state`, `cust_email`, `gender`, `cust_Password`) VALUES
(1, 'Mohammed', 772997072, '1999-05-27', 'جديد', 'almutawakel330@gmail.com', 'ذكر', 'Mohammed12'),
(2, 'فارس الانسي', 795961166, '1996-05-20', 'جديد', 'any@gmail.com', 'ذكر', 'Fares123'),
(3, 'Soma', 785646494, '1999-10-27', 'جديد', 'Soma@gmail.com', 'ذكر', 'ss'),
(4, 'نذير حسين احمد المقطري', 776431990, '1997-05-28', 'جديد', 'natheerza2010@gmail.com', 'ذكر', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_Id` int(11) NOT NULL,
  `Emp_name` varchar(50) NOT NULL,
  `Emp_Address` varchar(50) NOT NULL,
  `Emp_BirthDate` date NOT NULL,
  `Guarante_type` varchar(40) DEFAULT NULL,
  `Guarante_Image` varchar(50) DEFAULT NULL,
  `Emp_phone` int(11) NOT NULL,
  `Emp_hire_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Personal_ID` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Emp_Type` varchar(50) DEFAULT NULL,
  `Emp_Password` varchar(50) NOT NULL,
  `Emp_Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_Id`, `Emp_name`, `Emp_Address`, `Emp_BirthDate`, `Guarante_type`, `Guarante_Image`, `Emp_phone`, `Emp_hire_Date`, `Personal_ID`, `Gender`, `Emp_Type`, `Emp_Password`, `Emp_Email`) VALUES
(1, '', '', '0000-00-00', NULL, NULL, 0, '2021-07-12 15:39:28', NULL, NULL, NULL, '', NULL),
(2, 'محمد', 'حده', '0000-00-00', 'تجاري', 'GuaranteImg_202107120718281619.jpg', 772997072, '2021-07-12 16:18:28', 'PersonalIdImg_202107120718281619.jpg', 'ذكر', 'المدير', 'Mohammed12', 'dhjs'),
(3, 'محمد علي المتوكل', 'حده شارع صفر', '1999-09-27', 'ضمانة تجارية', 'GuaranteImg_20210712072042301.jpg', 772997072, '2021-07-12 16:20:42', 'PersonalIdImg_20210712072042301.jpg', 'ذكر', 'المدير', 'Mohammed12', 'almutawakel330@gmail.com'),
(4, 'فارس الانسي', 'شارع تعز', '1996-07-12', 'اكاديمية', 'GuaranteImg_202107121013291994.jpg', 784658281, '2021-07-12 19:13:29', 'PersonalIdImg_202107121013291994.jpg', 'ذكر', 'موصل الطلبيات', 'ff', 'any@gmail.com'),
(5, 'نذير المقطري', 'شارع تعز في شميله', '1995-07-12', 'وزارية', 'GuaranteImg_202107121016504138.jpg', 794656161, '2021-07-12 19:16:50', 'PersonalIdImg_202107121016504138.jpg', 'ذكر', 'مراقب ومدخل العمليات', 'nn', 'Natheer@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `Insurance_id` varchar(50) NOT NULL,
  `Insurance_image` varchar(50) DEFAULT NULL,
  `Insurance_side` varchar(50) DEFAULT NULL,
  `Insurance_discount` int(2) DEFAULT '1',
  `Cust_id` int(11) DEFAULT NULL,
  `insurance_state` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`Insurance_id`, `Insurance_image`, `Insurance_side`, `Insurance_discount`, `Cust_id`, `insurance_state`) VALUES
('10001', 'InsuranceImg_202107030437223024.jpg', 'كاك بنك', 50, 1, 'غير مفعل'),
('8564', 'InsuranceImg_20210710120533671.jpg', 'كاك بنك', 50, 4, 'غير مفعل');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `Note_id` int(11) NOT NULL,
  `Note_Content` varchar(70) DEFAULT NULL,
  `Account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`Note_id`, `Note_Content`, `Account_id`) VALUES
(86, 'تجربه', 201),
(87, 'تجربه', 202),
(89, 'لايوجد لدي ملاحظة', 204),
(90, 'يكون مبردا', 205),
(91, 'لايوجد لدي ملاحظة', 206),
(92, 'لايوجد لدي ملاحظة', 207),
(93, 'لايوجد لدي ملاحظة', 208),
(94, 'لايوجد لدي ملاحظة', 209),
(95, 'لايوجد لدي ملاحظة', 210),
(99, 'لايوجد لدي ملاحظة', 214),
(100, 'لايوجد لدي ملاحظة', 215),
(101, 'لايوجد لدي ملاحظة', 216),
(102, 'بسرعه يامنعاه حاله ضرورية', 217),
(103, 'لايوجد لدي ملاحظة', 218);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_id` int(11) NOT NULL,
  `Order_Quantity` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_id`, `Order_Quantity`, `account_id`) VALUES
(1, 2, 201),
(2, 1, 201),
(3, 1, 201),
(4, 2, 202),
(5, 1, 202),
(6, 1, 202),
(7, 1, 203),
(8, 4, 204),
(9, 4, 205),
(10, 2, 205),
(11, 3, 206),
(12, 3, 206),
(13, 3, 206),
(14, 3, 207),
(15, 3, 207),
(16, 6, 207),
(19, 6, 208),
(20, 4, 209),
(21, 2, 209),
(22, 4, 210),
(23, 2, 210),
(25, 1, 211),
(26, 1, 212),
(27, 1, 212),
(28, 3, 212),
(30, 1, 213),
(31, 3, 213),
(33, 1, 214),
(34, 3, 214),
(35, 1, 215),
(36, 1, 215),
(37, 3, 215),
(38, 1, 216),
(39, 1, 216),
(40, 3, 216),
(41, 1, 217),
(42, 1, 217),
(43, 3, 217),
(44, 1, 218),
(45, 1, 218),
(46, 4, 218);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `Product_Barcode` varchar(16) NOT NULL,
  `Order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`Product_Barcode`, `Order_id`) VALUES
('1', 2),
('1', 5),
('1', 8),
('1', 9),
('1', 11),
('1', 14),
('1', 20),
('1', 22),
('1', 26),
('1', 35),
('1', 38),
('1', 41),
('1', 44),
('625300460038', 1),
('625300460038', 4),
('625300460038', 12),
('625300460038', 15),
('625300460038', 25),
('625300460038', 27),
('625300460038', 30),
('625300460038', 33),
('625300460038', 36),
('625300460038', 39),
('625300460038', 42),
('625300460038', 45),
('7611272000778', 3),
('7611272000778', 6),
('7611272000778', 7),
('7611272000778', 10),
('7611272000778', 13),
('7611272000778', 16),
('7611272000778', 19),
('7611272000778', 21),
('7611272000778', 23),
('7611272000778', 28),
('7611272000778', 31),
('7611272000778', 34),
('7611272000778', 37),
('7611272000778', 40),
('7611272000778', 43),
('7611272000778', 46);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_Barcode` varchar(16) NOT NULL,
  `Product_Name` varchar(30) DEFAULT NULL,
  `Product_category` varchar(30) DEFAULT NULL,
  `Product_Price` int(6) DEFAULT NULL,
  `Product_content` varchar(70) DEFAULT NULL,
  `Place_Production` varchar(30) DEFAULT NULL,
  `Product_Image` varchar(50) DEFAULT NULL,
  `Prouduct_inc_name` varchar(20) DEFAULT NULL,
  `Product_Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_Barcode`, `Product_Name`, `Product_category`, `Product_Price`, `Product_content`, `Place_Production`, `Product_Image`, `Prouduct_inc_name`, `Product_Quantity`) VALUES
('1', 'Come on now', 'djdj', 5000, 'djdisjrodhejwo', 'djdk', 'ProductImg_202105101102431789.jpg', 'jdeodj', 60),
('1101201921565', 'قارورة ماء', 'مياه', 250, 'لنثميميوخلاملنهي', 'صنعاؤ', 'ProductImg_202109050504534256.jpg', 'سام', 20),
('625300460038', 'Come on now', 'djdj', 4939, 'djdisjrodhejwo', 'djdk', 'ProductImg_202105101100264525.jpg', 'jdeodj', 69),
('7611272000778', 'Vitamin C', 'مكمل غذائي', 3000, 'علاج لنقص فيتامين سي يتم استعماله قرص واحد يومياً بعد تذوبيه في الماء', 'المانيا', 'ProductImg_202106271102292100.jpg', 'VitaCed', 46);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `Warehouse_id` int(11) NOT NULL,
  `Warehouse_name` varchar(60) DEFAULT NULL,
  `Warehouse_address` varchar(60) DEFAULT NULL,
  `Emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_id`),
  ADD KEY `Emp_Cust_id` (`Cust_id`),
  ADD KEY `Account_Adddress_FK` (`Address_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`Address_Id`),
  ADD KEY `Address_Customer_FK` (`cust_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_Id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`Insurance_id`),
  ADD KEY `insurance_Customers_FK` (`Cust_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`Note_id`),
  ADD KEY `note_Account_Fk` (`Account_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_id`),
  ADD KEY `Orders_FK` (`account_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`Product_Barcode`,`Order_id`),
  ADD KEY `Order_OrderId_Fk` (`Order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_Barcode`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`Warehouse_id`),
  ADD KEY `Warehouse_Employee_FK` (`Emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `Address_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Emp_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `Note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `Account_Adddress_FK` FOREIGN KEY (`Address_id`) REFERENCES `addresses` (`Address_Id`),
  ADD CONSTRAINT `Emp_Cust_id` FOREIGN KEY (`Cust_id`) REFERENCES `customers` (`cust_id`);

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `Address_Customer_FK` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`);

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_Customers_FK` FOREIGN KEY (`Cust_id`) REFERENCES `customers` (`cust_id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `note_Account_Fk` FOREIGN KEY (`Account_id`) REFERENCES `account` (`Account_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Orders_FK` FOREIGN KEY (`account_id`) REFERENCES `account` (`Account_id`);

--
-- Constraints for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD CONSTRAINT `Order_OrderId_Fk` FOREIGN KEY (`Order_id`) REFERENCES `orders` (`Order_id`),
  ADD CONSTRAINT `productsBarcode_FK` FOREIGN KEY (`Product_Barcode`) REFERENCES `products` (`Product_Barcode`);

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `Warehouse_Employee_FK` FOREIGN KEY (`Emp_id`) REFERENCES `employees` (`Emp_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
