-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2017 at 09:06 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mall_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Shop_Name` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `un_id` varchar(50) NOT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `brand_name` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_type` varchar(40) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `size` varchar(5) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Shop_Name`, `product_id`, `un_id`, `product_name`, `brand_name`, `quantity`, `product_type`, `color`, `size`, `price`, `gender`, `image`) VALUES
('Adidas_store', 9739, 'footrunn1694888531', 'Running Shoes', 'Adidas', 2, 'Footwear', 'Orange', '8', 2545, 'Men', 'res\\images\\adi1.jpeg'),
('Adidas_store', 9740, 'footfoot1677195307', 'FootBall Shoes', 'Adidas', 3, 'Footwear', 'Blue', '10', 2919, 'Men', 'res\\images\\adi0.jpeg'),
('Adidas_store', 9741, 'footrunn626763206', 'Running Shoes', 'Adidas', 6, 'Footwear', 'Black', '8', 1859, 'Men', 'res\\images\\adi8.jpeg'),
('Adidas_store', 9742, 'footfoot926694644', 'FootBall Shoes', 'Adidas', 3, 'Footwear', 'Red', '9', 2999, 'Men', 'res\\images\\adi7.jpeg'),
('Adidas_store', 9743, 'footbask1455459805', 'Basket Ball Shoes', 'Adidas', 4, 'Footwear', 'Red', '8', 2599, 'Men', 'res\\images\\adi2.jpeg'),
('Adidas_store', 9744, 'footbask1561450055', 'Basket Ball Shoes', 'Adidas', 10, 'Footwear', 'Blue', '9', 6499, 'Men', 'res\\images\\adi3.jpeg'),
('Adidas_store', 9745, 'footslip2075828968', 'Slippers', 'Adidas', 7, 'Footwear', 'Blue', '9', 559, 'Men', 'res\\images\\adi4.jpeg'),
('Adidas_store', 9746, 'footslip472988642', 'Slippers', 'Adidas', 8, 'Footwear', 'Black', '11', 699, 'Men', 'res\\images\\adi5.jpeg'),
('Adidas_store', 9747, 'footslip667176132', 'Slippers', 'Adidas', 3, 'Footwear', 'Black', '9', 909, 'Men', 'res\\images\\adi10.jpeg'),
('Adidas_store', 9748, 'footslip2012506063', 'Slippers', 'Adidas', 5, 'Footwear', 'Orange', '8', 1100, 'Men', 'res\\images\\adi14.jpeg'),
('Adidas_store', 9749, 'footfloa1529048138', 'Floaters', 'Adidas', 6, 'Footwear', 'Red', '8', 1399, 'Men', 'res\\images\\adi14.jpeg'),
('Adidas_store', 9750, 'footfloa1055458333', 'Floaters', 'Adidas', 7, 'Footwear', 'White', '7', 779, 'Men', 'res\\images\\adi13.jpeg'),
('Adidas_store', 9751, 'footrunn1357190155', 'Running shoes', 'Adidas', 6, 'Footwear', 'Pink', '8', 3727, 'Women', 'res\\images\\wadi.jpeg'),
('Adidas_store', 9752, 'footrunn318958191', 'Running Shoes', 'Adidas', 3, 'Footwear', 'Violet', '6', 2510, 'Women', 'res\\images\\wadi2.jpeg'),
('Adidas_store', 9753, 'footrunn1981520358', 'Running Shoes', 'Adidas', 7, 'Footwear', 'White', '8', 5299, 'Women', 'res\\images\\wadi8.jpeg'),
('Adidas_store', 9754, 'footrunn798390369', 'Running Shoes', 'Adidas', 2, 'Footwear', 'Grey', '9', 1999, 'Men', 'res\\images\\wadi10.jpeg'),
('Adidas_store', 9755, 'footspor1414842921', 'Sports shoes', 'Adidas', 6, 'Footwear', 'Orange', '9', 2577, 'Women', 'res\\images\\wadi7.jpeg'),
('Adidas_store', 9756, 'footsand767007745', 'Sandals', 'Adidas', 6, 'Footwear', 'Black', '7', 1267, 'Women', 'res\\images\\wadi19.jpeg'),
('Adidas_store', 9757, 'footsand1592653756', 'Sandals', 'Adidas', 8, 'Footwear', 'Yellow', '8', 999, 'Women', 'res\\images\\wadi19.jpeg'),
('Adidas_store', 9758, 'footsand976628038', 'Sandals', 'Adidas', 6, 'Footwear', 'Pink', '8', 1599, 'Women', 'res\\images\\wadi00.jpeg'),
('reebok_store', 9759, 'footrunn1939365755', 'Running Shoes', 'Reebok', 6, 'Footwear', 'Black', '8', 1949, 'Men', 'res\\images\\reeb7.jpeg'),
('reebok_store', 9760, 'footrunn1168810586', 'Running Shoes', 'Reebok', 6, 'Footwear', 'Green', '8', 4599, 'Men', 'res\\images\\reeb3.jpeg'),
('reebok_store', 9761, 'footrunn1598362003', 'Running Shoes', 'Reebok', 10, 'Footwear', 'Black', '8', 2599, 'Men', 'res\\images\\reeb1.jpeg'),
('reebok_store', 9762, 'footrunn1275665690', 'Running Shoes', 'Reebok', 6, 'Footwear', 'Grey', '8', 1999, 'Men', 'res\\images\\reeb6.jpeg'),
('reebok_store', 9763, 'footrunn566174345', 'Running Shoes', 'Reebok', 6, 'Footwear', 'Orange', '8', 6999, 'Men', 'res\\images\\reeb4.jpeg'),
('reebok_store', 9764, 'footfloa51143026', 'Floaters', 'Reebok', 6, 'Footwear', 'Black', '9', 999, 'Men', 'res\\images\\wadi17.jpeg'),
('reebok_store', 9765, 'footrunn1024939190', 'Running Shoes', 'Reebok', 6, 'Footwear', 'White', '8', 1299, 'Men', 'res\\images\\reeb5.jpeg'),
('reebok_store', 9766, 'footrunn513991737', 'Running Shoes', 'Reebok', 6, 'Footwear', 'Grey', '8', 5498, 'Women', 'res\\images\\wree5.jpeg'),
('reebok_store', 9767, 'footrunn930918211', 'Running Shoes', 'Reebok', 8, 'Footwear', 'Pink', '8', 3399, 'Women', 'res\\images\\wree3.jpeg'),
('reebok_store', 9768, 'footrunn468264336', 'Running Shoes', 'Reebok', 4, 'Footwear', 'Black', '7', 1999, 'Women', 'res\\images\\wree4.jpeg'),
('reebok_store', 9769, 'footrunn754422828', 'Running Shoes', 'Reebok', 10, 'Footwear', 'Pink', '8', 4599, 'Women', 'res\\images\\wree2.jpeg'),
('reebok_store', 9770, 'footsand744567324', 'Sandals', 'Reebok', 6, 'Footwear', 'Black', '8', 1225, 'Women', 'res\\images\\wree8.jpeg'),
('reebok_store', 9771, 'footsand1024800742', 'Sandals', 'Reebok', 4, 'Footwear', 'Pink', '8', 999, 'Women', 'res\\images\\wree7.jpeg'),
('reebok_store', 9772, 'footslip1965963396', 'Slippers', 'Reebok', 2, 'Footwear', 'Yellow', '9', 598, 'Women', 'res\\images\\wree9.jpeg'),
('reebok_store', 9773, 'footslip1321315816', 'Slippers', 'Reebok', 3, 'Footwear', 'Green', '9', 669, 'Women', 'res\\images\\wree0.jpeg'),
('reebok_store', 9774, 'footfloa145392798', 'Floaters', 'Reebok', 5, 'Footwear', 'Black', '7', 598, 'Women', 'res\\images\\wree01.jpeg'),
('reebok_store', 9775, 'footfloa263981015', 'Floaters', 'Reebok', 14, 'Footwear', 'Blue', '9', 699, 'Women', 'res\\images\\wree011.jpeg'),
('puma_store', 9776, 'footrunn1174383442', 'Running Shoes', 'Puma', 6, 'Footwear', 'White', '10', 4999, 'Men', 'res\\images\\pum3.jpeg'),
('puma_store', 9777, 'footrunn1216137225', 'Running Shoes', 'Puma', 8, 'Footwear', 'Yellow', '9', 3999, 'Men', 'res\\images\\pum4.jpeg'),
('puma_store', 9778, 'footrunn1476063308', 'Running Shoes', 'Puma', 6, 'Footwear', 'Green', '9', 1999, 'Women', 'res\\images\\pum6.jpeg'),
('puma_store', 9779, 'footfoot1373091646', 'FootBall Shoes', 'Puma', 8, 'Footwear', 'Green', '8', 4545, 'Men', 'res\\images\\pumf4.jpeg'),
('puma_store', 9780, 'footfoot774712889', 'FootBall Shoes', 'Puma', 6, 'Footwear', 'Green', '9', 6599, 'Men', 'res\\images\\pumf2.jpeg'),
('puma_store', 9781, 'footfoot1478836028', 'FootBall Shoes', 'Puma', 12, 'Footwear', 'Pink', '8', 2795, 'Men', 'res\\images\\pumf3.jpeg'),
('puma_store', 9782, 'footcric172418784', 'Cricket Shoes', 'Puma', 6, 'Footwear', 'White', '9', 7999, 'Men', 'res\\images\\pumc2.jpeg'),
('puma_store', 9783, 'footcric808969638', 'Cricket Shoes', 'Puma', 6, 'Footwear', 'White', '9', 5987, 'Men', 'res\\images\\pumc1.jpeg'),
('puma_store', 9784, 'footslip1955213403', 'Slippers', 'Puma', 10, 'Footwear', 'Pink', '8', 1299, 'Women', 'res\\images\\wpums4.jpeg'),
('puma_store', 9785, 'footsand1076966306', 'Sandals', 'Puma', 6, 'Footwear', 'Black', '9', 1199, 'Women', 'res\\images\\wpum6.jpeg'),
('puma_store', 9786, 'footsand1455491092', 'Sandals', 'Puma', 12, 'Footwear', 'Grey', '9', 699, 'Women', 'res\\images\\wpums3.jpeg'),
('puma_store', 9787, 'footsand212808780', 'Sandals', 'Puma', 15, 'Footwear', 'Orange', '9', 599, 'Women', 'res\\images\\wpumf1.jpeg'),
('puma_store', 9788, 'footrunn590607485', 'Running Shoes', 'Puma', 6, 'Footwear', 'Grey', '10', 3999, 'Women', 'res\\images\\wpum2.jpeg'),
('puma_store', 9789, 'footrunn1351464890', 'Running Shoes', 'Puma', 6, 'Footwear', 'Pink', '10', 2599, 'Women', 'res\\images\\wpum3.jpeg'),
('puma_store', 9790, 'footrunn1908222922', 'Running Shoes', 'Puma', 10, 'Footwear', 'Black', '9', 3599, 'Women', 'res\\images\\wpum1.jpeg'),
('fila_store', 9791, '935445584', 'Running Shoes', 'Fila', 3, '', 'Black', '8', 3999, 'Men', 'res\\images\\fil11.jpeg'),
('fila_store', 9792, 'footrunn558124137', 'Running Shoes', 'Fila', 6, 'Footwear', 'White', '9', 2599, 'Men', 'res\\images\\fil10.jpeg'),
('fila_store', 9793, 'footrunn1513039521', 'Running Shoes', 'Fila', 6, 'Footwear', 'Black', '10', 4599, 'Men', 'res\\images\\fil9.jpeg'),
('fila_store', 9794, 'footrunn1992500518', 'Running Shoes', 'Fila', 10, 'Footwear', 'Yellow', '10', 2548, 'Men', 'res\\images\\fil8.jpeg'),
('fila_store', 9795, 'footrunn1020179999', 'Running Shoes', 'Fila', 8, 'Footwear', 'Red', '8', 2799, 'Men', 'res\\images\\fil5.jpeg'),
('fila_store', 9796, 'footsand1910340245', 'Sandals', 'Fila', 6, 'Footwear', 'Grey', '8', 799, 'Men', 'res\\images\\wpum6.jpeg'),
('fila_store', 9797, 'footsand210561461', 'Sandals', 'Fila', 6, 'Footwear', 'Green', '9', 1299, 'Men', 'res\\images\\fil2.jpeg'),
('fila_store', 9798, 'footsand1716038915', 'Sandals', 'Fila', 8, 'Footwear', 'Grey', '9', 999, 'Men', 'res\\images\\fil1.jpeg'),
('nike_store', 9799, 'footrunn40180422', 'Running Shoes', 'Nike', 6, 'Footwear', 'Black', '8', 4599, 'Men', 'res\\images\\wnik4.jpeg'),
('nike_store', 9800, 'footrunn337924931', 'Running Shoes', 'Nike', 14, 'Footwear', 'Orange', '9', 3599, 'Men', 'res\\images\\wnik7.jpeg'),
('nike_store', 9801, 'footrunn992998135', 'Running Shoes', 'Nike', 8, 'Footwear', 'Violet', '8', 3999, 'Men', 'res\\images\\nik2.jpeg'),
('nike_store', 9802, 'footrunn1610163667', 'Running Shoes', 'Nike', 10, 'Footwear', 'Orange', '10', 6999, 'Men', 'res\\images\\nik9.jpeg'),
('nike_store', 9803, 'footrunn372030818', 'Running Shoes', 'Nike', 6, 'Footwear', 'Blue', '9', 5356, 'Men', 'res\\images\\nik12.jpeg'),
('nike_store', 9804, 'footrunn2097907931', 'Running Shoes', 'Nike', 6, 'Footwear', 'Red', '9', 4699, 'Men', 'res\\images\\nikb1.jpeg'),
('nike_store', 9805, 'footfoot1873401903', 'FootBall Shoes', 'Nike', 6, 'Footwear', 'Black', '9', 5599, 'Men', 'res\\images\\nikf1.jpeg'),
('nike_store', 9806, 'footfoot926707305', 'FootBall Shoes', 'Nike', 10, 'Footwear', 'Pink', '10', 6959, 'Men', 'res\\images\\nikf3.jpeg'),
('nike_store', 9807, 'footfoot849002740', 'FootBall Shoes', 'Nike', 8, 'Footwear', 'White', '9', 3699, 'Men', 'res\\images\\nik8.jpeg'),
('nike_store', 9808, 'footrunn1228337543', 'Running Shoes', 'Nike', 6, 'Footwear', 'Pink', '9', 3699, 'Women', 'res\\images\\wnik1.jpeg'),
('nike_store', 9809, 'footrunn557755452', 'Running Shoes', 'Nike', 12, 'Footwear', 'Black', '8', 3999, 'Women', 'res\\images\\wnik5.jpeg'),
('nike_store', 9810, 'footrunn1448292937', 'Running Shoes', 'Nike', 8, 'Footwear', 'Orange', '7', 3699, 'Women', 'res\\images\\wnik3.jpeg'),
('nike_store', 9811, 'footrunn610734742', 'Running Shoes', 'Nike', 15, 'Footwear', 'Violet', '10', 4789, 'Women', 'res\\images\\wnik6.jpeg'),
('nike_store', 9812, 'footrunn809806560', 'Running Shoes', 'Nike', 6, 'Footwear', 'Blue', '9', 4725, 'Women', 'res\\images\\wnik8.jpeg'),
('nike_store', 9813, 'footrunn1923681534', 'Running Shoes', 'Nike', 6, 'Footwear', 'Black', '9', 3999, 'Women', 'res\\images\\wnik7.jpeg'),
('Adidas_store', 9814, 'menssnea218010774', 'Sneakers', 'Adidas', 6, 'Mens_Fashion', 'White', '8', 3699, 'Men', 'res\\images\\adi3.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9815;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
