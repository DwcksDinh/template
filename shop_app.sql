-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: host.docker.internal
-- Thời gian đã tạo: Th6 02, 2025 lúc 05:57 AM
-- Phiên bản máy phục vụ: 9.2.0
-- Phiên bản PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `addressid` int NOT NULL,
  `userid` int NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `deletedat` timestamp NULL DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`addressid`, `userid`, `fullname`, `phonenumber`, `street`, `ward`, `district`, `city`, `isdefault`, `deletedat`, `createdat`, `updatedat`) VALUES
(1, 1, 'Nguyễn Văn An', '0901234561', '123 Đường Hoa Mai', 'Phường 2', 'Quận Phú Nhuận', 'TP. Hồ Chí Minh', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(2, 1, 'Văn Phòng An Nguyễn', '0901234561', 'Tầng 5, 456 Tòa nhà Bitexco', 'Phường Bến Nghé', 'Quận 1', 'TP. Hồ Chí Minh', 0, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(3, 2, 'Trần Thị Bích', '0901234562', '789 Hẻm Hoa Sứ', 'Phường 7', 'Quận Phú Nhuận', 'TP. Hồ Chí Minh', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(4, 4, 'Phạm Thị Dung', '0901234564', 'Số nhà 10, Ngõ 15', 'Phường Quang Trung', 'Quận Đống Đa', 'TP. Hà Nội', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `attributeid` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`attributeid`, `name`, `createdat`, `updatedat`) VALUES
(1, 'Màu sắc', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(2, 'Kích thước', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(3, 'Dung lượng RAM', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(4, 'Bộ nhớ trong (ROM)', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(5, 'Loại Switch Bàn Phím', '2025-05-29 13:12:38', '2025-05-29 13:12:47'),
(6, 'Chiều dài Cáp', '2025-05-29 13:12:38', '2025-05-29 13:12:50'),
(7, 'Chất liệu', '2025-05-29 13:12:38', '2025-05-29 13:12:53'),
(8, 'CPU', '2025-05-29 13:12:38', '2025-05-29 13:12:56'),
(9, 'Card Đồ Họa (GPU)', '2025-05-29 13:12:38', '2025-05-29 13:12:58'),
(10, 'Hệ điều hành', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(11, 'Loại màn hình', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(12, 'Tần số quét màn hình', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(13, 'Kết nối (Interface)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(14, 'Kiểu dáng', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(15, 'Mùa', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(16, 'Thương hiệu', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(17, 'Độ phân giải màn hình', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(18, 'Loại tai nghe', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(19, 'Công nghệ sạc', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(20, 'DPI Chuột', '2025-05-29 06:30:00', '2025-05-29 06:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributevalues`
--

CREATE TABLE `attributevalues` (
  `attributevalueid` int NOT NULL,
  `attributeid` int NOT NULL,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributevalues`
--

INSERT INTO `attributevalues` (`attributevalueid`, `attributeid`, `value`, `createdat`, `updatedat`) VALUES
(1, 1, 'Đen', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(2, 1, 'Trắng', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(3, 1, 'Xanh Dương', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(4, 1, 'Vàng Gold', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(5, 1, 'Hồng', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(6, 2, 'S', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(7, 2, 'M', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(8, 2, 'L', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(9, 2, 'XL', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(10, 2, 'XXL', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(11, 3, '4GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(12, 3, '8GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(13, 3, '16GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(14, 3, '32GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(15, 4, '64GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(16, 4, '128GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(17, 4, '256GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(18, 4, '512GB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(19, 4, '1TB', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(20, 1, 'Xám Titan', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(21, 1, 'Bạc Sterling', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(22, 1, 'Xanh Rêu', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(23, 1, 'Tím Lavender', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(24, 1, 'Cam San Hô', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(25, 1, 'Nâu Chocolate', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(26, 1, 'Đỏ Burgundy', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(27, 2, '38 (EU)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(28, 2, '39 (EU)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(29, 2, '40 (EU)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(30, 2, '41 (EU)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(31, 2, '42 (EU)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(32, 2, 'Free Size', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(33, 2, '29 inches', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(34, 2, '30 inches', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(35, 2, '31 inches', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(36, 2, '32 inches', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(37, 2, '13 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(38, 2, '14 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(39, 2, '15.6 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(40, 2, '17.3 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(41, 2, '24 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(42, 2, '27 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(43, 2, '32 inch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(44, 3, '6GB', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(45, 3, '12GB', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(46, 4, '2TB', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(47, 5, 'Red Switch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(48, 5, 'Blue Switch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(49, 5, 'Brown Switch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(50, 5, 'Black Switch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(51, 5, 'Optical Switch', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(52, 6, '1m', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(53, 6, '1.5m', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(54, 6, '1.8m', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(55, 6, '2m', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(56, 7, 'Cotton', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(57, 7, 'Polyester', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(58, 7, 'Da PU', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(59, 7, 'Nhôm', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(60, 7, 'Nhựa ABS', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(61, 7, 'Kính cường lực', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(62, 7, 'Vải Canvas', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(63, 7, 'Thép không gỉ', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(64, 7, 'Denim', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(65, 8, 'Intel Core i3', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(66, 8, 'Intel Core i5', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(67, 8, 'Intel Core i7', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(68, 8, 'Intel Core i9', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(69, 8, 'AMD Ryzen 3', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(70, 8, 'AMD Ryzen 5', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(71, 8, 'AMD Ryzen 7', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(72, 8, 'Apple M1', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(73, 8, 'Apple M2', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(74, 8, 'Apple M3', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(75, 9, 'NVIDIA GeForce RTX 3050', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(76, 9, 'NVIDIA GeForce RTX 3060', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(77, 9, 'NVIDIA GeForce RTX 4050', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(78, 9, 'NVIDIA GeForce RTX 4060', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(79, 9, 'AMD Radeon RX 6600', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(80, 9, 'AMD Radeon RX 7600', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(81, 9, 'Intel Iris Xe Graphics', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(82, 9, 'Intel Arc A380', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(83, 10, 'Android 13', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(84, 10, 'Android 14', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(85, 10, 'iOS 16', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(86, 10, 'iOS 17', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(87, 10, 'Windows 11 Home', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(88, 10, 'Windows 11 Pro', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(89, 10, 'macOS Ventura', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(90, 10, 'macOS Sonoma', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(91, 10, 'Wear OS', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(92, 11, 'IPS LCD', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(93, 11, 'OLED', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(94, 11, 'AMOLED', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(95, 11, 'Retina Display', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(96, 11, 'Dynamic AMOLED 2X', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(97, 11, 'Super Retina XDR', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(98, 12, '60Hz', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(99, 12, '90Hz', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(100, 12, '120Hz', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(101, 12, '144Hz', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(102, 12, '165Hz', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(103, 13, 'USB-C', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(104, 13, 'Bluetooth 5.0', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(105, 13, 'Bluetooth 5.2', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(106, 13, 'Bluetooth 5.3', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(107, 13, 'Wi-Fi 5', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(108, 13, 'Wi-Fi 6', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(109, 13, 'Wi-Fi 6E', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(110, 13, 'NFC', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(111, 13, 'Lightning', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(112, 13, 'Micro USB', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(113, 13, 'HDMI', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(114, 13, 'DisplayPort', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(115, 13, 'USB 2.4GHz Wireless Dongle', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(116, 14, 'Slim-fit', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(117, 14, 'Regular-fit', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(118, 14, 'Oversize', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(119, 14, 'Sneaker', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(120, 14, 'Boot', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(121, 14, 'Low-profile', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(122, 14, 'Gaming', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(123, 14, 'Ergonomic', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(124, 15, 'Xuân-Hè', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(125, 15, 'Thu-Đông', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(126, 15, 'Quanh năm', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(127, 16, 'Samsung', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(128, 16, 'Apple', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(129, 16, 'Dell', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(130, 16, 'Sony', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(131, 16, 'Nike', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(132, 16, 'Adidas', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(133, 16, 'Uniqlo', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(134, 16, 'Logitech', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(135, 16, 'Asus', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(136, 16, 'Xiaomi', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(137, 16, 'HP', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(138, 16, 'Lenovo', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(139, 16, 'Oppo', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(140, 16, 'Anker', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(141, 17, 'HD (1366x768)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(142, 17, 'Full HD (1920x1080)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(143, 17, 'QHD (2560x1440)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(144, 17, '4K UHD (3840x2160)', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(145, 18, 'In-ear', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(146, 18, 'On-ear', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(147, 18, 'Over-ear', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(148, 18, 'True Wireless', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(149, 19, 'Sạc nhanh 18W', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(150, 19, 'Sạc nhanh 25W', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(151, 19, 'Sạc nhanh 33W', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(152, 19, 'Sạc nhanh 67W', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(153, 19, 'Sạc không dây Qi', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(154, 20, '800-1600 DPI', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(155, 20, '1600-3200 DPI', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(156, 20, '3200-8000 DPI', '2025-05-29 06:30:00', '2025-05-29 06:30:00'),
(157, 20, 'Trên 8000 DPI', '2025-05-29 06:30:00', '2025-05-29 06:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `bannerid` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageurl` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkurl` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` int DEFAULT '0',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`bannerid`, `title`, `imageurl`, `linkurl`, `position`, `sortorder`, `isactive`, `startdate`, `enddate`, `createdat`, `updatedat`) VALUES
(1, 'ĐẠI TIỆC SALE HÈ 2025', '/images/banners/summer_mega_sale_2025.jpg', '/campaign/summer-mega-sale', 'homepage_carousel', 0, 1, '2025-06-01 00:00:00', '2025-06-15 23:59:59', '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(2, 'TOP LAPTOP BÁN CHẠY', '/images/banners/top_laptops.jpg', '/category/laptop?sort=top_selling', 'homepage_below_carousel', 1, 1, NULL, NULL, '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(3, 'PHỤ KIỆN GIẢM ĐẾN 50%', '/images/banners/accessories_half_price.jpg', '/category/phu-kien-dien-thoai?filter=sale_50', 'category_page_sidebar', 0, 1, '2025-05-25 00:00:00', '2025-06-25 23:59:59', '2025-05-29 08:19:46', '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartitems`
--

CREATE TABLE `cartitems` (
  `cartitemid` int NOT NULL,
  `cartid` int NOT NULL,
  `variantid` int NOT NULL,
  `shopid` int NOT NULL,
  `quantity` int NOT NULL,
  `addedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartitems`
--

INSERT INTO `cartitems` (`cartitemid`, `cartid`, `variantid`, `shopid`, `quantity`, `addedat`, `updatedat`) VALUES
(1, 1, 1, 1, 1, '2025-05-29 08:06:53', '2025-05-29 08:06:53'),
(2, 1, 5, 2, 2, '2025-05-29 08:06:53', '2025-05-29 08:06:53'),
(3, 2, 3, 1, 1, '2025-05-29 08:06:53', '2025-05-29 08:06:53'),
(4, 2, 7, 1, 1, '2025-05-29 08:06:53', '2025-05-29 08:06:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `cartid` int NOT NULL,
  `userid` int NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`cartid`, `userid`, `createdat`, `updatedat`) VALUES
(1, 1, '2025-05-29 08:06:53', '2025-05-29 08:06:53'),
(2, 5, '2025-05-29 08:06:53', '2025-05-29 08:06:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flashsalecampaigns`
--

CREATE TABLE `flashsalecampaigns` (
  `campaignid` int NOT NULL,
  `adminuserid` int NOT NULL,
  `campaignname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Chương trình Flash Sale',
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `status` enum('Upcoming','Active','Ended','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Upcoming',
  `createdat` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedat` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flashsalecampaigns`
--

INSERT INTO `flashsalecampaigns` (`campaignid`, `adminuserid`, `campaignname`, `starttime`, `endtime`, `status`, `createdat`, `updatedat`) VALUES
(1, 4, 'Siêu Sale Giữa Năm', '2025-06-15 00:00:00', '2025-06-17 23:59:59', 'Upcoming', '2025-05-29 15:06:53', '2025-05-29 15:06:53'),
(2, 4, 'Flash Sale Cuối Tuần Tháng 5', '2025-05-30 10:00:00', '2025-06-01 22:00:00', 'Upcoming', '2025-05-29 15:06:53', '2025-05-29 15:06:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flashsaledeals`
--

CREATE TABLE `flashsaledeals` (
  `dealid` int NOT NULL,
  `campaignid` int NOT NULL,
  `variantid` int NOT NULL,
  `flashsaleprice` int NOT NULL,
  `originalprice` int NOT NULL,
  `flashsalestock` int NOT NULL,
  `stocksold` int NOT NULL DEFAULT '0',
  `dealstarttime` datetime NOT NULL,
  `dealendtime` datetime NOT NULL,
  `status` enum('PendingApproval','Approved_Upcoming','Approved_Active','Approved_Ended','Rejected','SoldOut','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PendingApproval'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flashsaledeals`
--

INSERT INTO `flashsaledeals` (`dealid`, `campaignid`, `variantid`, `flashsaleprice`, `originalprice`, `flashsalestock`, `stocksold`, `dealstarttime`, `dealendtime`, `status`) VALUES
(1, 1, 1, 27500000, 28990000, 20, 0, '2025-06-15 09:00:00', '2025-06-15 12:00:00', 'Approved_Upcoming'),
(2, 2, 5, 299000, 350000, 50, 0, '2025-05-31 12:00:00', '2025-05-31 14:00:00', 'Approved_Upcoming'),
(3, 2, 3, 2200000, 2490000, 30, 0, '2025-05-30 18:00:00', '2025-05-30 20:00:00', 'Approved_Upcoming');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `orderitemid` int NOT NULL,
  `orderid` int NOT NULL,
  `variantid` int NOT NULL,
  `quantity` int NOT NULL,
  `priceatpurchase` int NOT NULL,
  `subtotal` int NOT NULL,
  `isflashsaleitem` tinyint(1) NOT NULL DEFAULT '0',
  `flashsaledealid` int DEFAULT NULL,
  `returnstatus` enum('None','Requested','Approved','Rejected','Returned','Refunded','PartiallyRefunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`orderitemid`, `orderid`, `variantid`, `quantity`, `priceatpurchase`, `subtotal`, `isflashsaleitem`, `flashsaledealid`, `returnstatus`, `createdat`) VALUES
(1, 1, 1, 1, 28990000, 28990000, 0, NULL, 'None', '2025-05-29 08:19:46'),
(2, 1, 5, 1, 350000, 350000, 0, NULL, 'None', '2025-05-29 08:19:46'),
(3, 2, 3, 1, 2490000, 2490000, 0, NULL, 'None', '2025-05-29 08:19:46'),
(4, 3, 1, 1, 27500000, 27500000, 1, 1, 'None', '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordersbuyer`
--

CREATE TABLE `ordersbuyer` (
  `orderid` int NOT NULL,
  `ordercode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `totalamount` int NOT NULL,
  `subtotalamount` int NOT NULL,
  `shippingfee` int NOT NULL DEFAULT '0',
  `discountamount` int DEFAULT '0',
  `shippingaddressid` int NOT NULL,
  `shippingfullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingphonenumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `paymentmethod` enum('COD','BankTransfer','OnlineGateway') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentstatus` enum('Pending','Paid','Failed','Refunded','PartiallyRefunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `overallstatus` enum('Pending','Processing','Shipped','Delivered','CancelledByBuyer','CancelledBySeller','Returned','ReturnInProgress','Completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `platformvouchercode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platformdiscountamount` decimal(12,2) DEFAULT '0.00',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordersbuyer`
--

INSERT INTO `ordersbuyer` (`orderid`, `ordercode`, `userid`, `orderdate`, `totalamount`, `subtotalamount`, `shippingfee`, `discountamount`, `shippingaddressid`, `shippingfullname`, `shippingphonenumber`, `notes`, `paymentmethod`, `paymentstatus`, `overallstatus`, `platformvouchercode`, `platformdiscountamount`, `createdat`, `updatedat`) VALUES
(1, 'EMK2025001', 1, '2025-05-29 08:19:46', 34340000, 29340000, 5000000, 0, 1, 'Nguyễn Văn An', '0901234561', NULL, 'COD', 'Pending', 'Pending', NULL, 0.00, '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(2, 'EMK2025002', 5, '2025-05-29 08:19:46', 2465000, 2490000, 25000, 50000, 4, 'Phạm Thị Dung', '0901234564', NULL, 'OnlineGateway', 'Paid', 'Processing', 'WELCOME50K', 50000.00, '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(3, 'EMKFS2025003', 1, '2025-05-29 08:19:46', 27530000, 27500000, 30000, 0, 2, 'Văn Phòng An Nguyễn', '0901234561', NULL, 'COD', 'Pending', 'Pending', NULL, 0.00, '2025-05-29 08:19:46', '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `platformcategories`
--

CREATE TABLE `platformcategories` (
  `categoryid` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parentcategoryid` int DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `platformcategories`
--

INSERT INTO `platformcategories` (`categoryid`, `name`, `description`, `parentcategoryid`, `slug`, `imageurl`, `isactive`, `createdat`, `updatedat`) VALUES
(1, 'Điện tử', 'Các thiết bị điện tử, công nghệ', NULL, 'dien-tu', '/images/categories/electronics.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(2, 'Điện thoại & Máy tính bảng', 'Điện thoại thông minh, máy tính bảng và phụ kiện', 1, 'dien-thoai-may-tinh-bang', '/images/categories/mobile_tablet.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(3, 'Máy tính & Laptop', 'Máy tính để bàn, laptop, linh kiện máy tính', 1, 'may-tinh-laptop', '/images/categories/computer_laptop.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(4, 'Thời trang', 'Quần áo, giày dép và phụ kiện thời trang', NULL, 'thoi-trang', '/images/categories/fashion.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(5, 'Thời trang Nam', 'Quần áo, giày dép cho nam giới', 4, 'thoi-trang-nam', '/images/categories/fashion_men.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(6, 'Điện thoại di động', 'Các loại điện thoại di động thông minh', 2, 'dien-thoai-di-dong', '/images/categories/smartphones.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(7, 'Phụ kiện điện thoại', 'Ốp lưng, sạc, cáp, tai nghe...', 2, 'phu-kien-dien-thoai', '/images/categories/phone_accessories.png', 1, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(8, 'Phụ kiện Máy Tính', 'Chuột, bàn phím, tai nghe máy tính, webcam, v.v.', 3, 'phu-kien-may-tinh', '/images/categories/pc_accessories.png', 1, '2025-05-29 06:30:00', '2025-05-29 06:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productimages`
--

CREATE TABLE `productimages` (
  `imageid` int NOT NULL,
  `productid` int NOT NULL,
  `imageurl` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isprimary` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int DEFAULT '0',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productimages`
--

INSERT INTO `productimages` (`imageid`, `productid`, `imageurl`, `isprimary`, `sortorder`, `createdat`) VALUES
(1, 1, '/images/products_gallery/xpromax_gallery1.jpg', 1, 0, '2025-05-29 08:06:53'),
(2, 1, '/images/products_gallery/xpromax_gallery2.jpg', 0, 1, '2025-05-29 08:06:53'),
(3, 1, '/images/products_gallery/xpromax_gallery3.jpg', 0, 2, '2025-05-29 08:06:53'),
(4, 3, '/images/products_gallery/tshirt_model1.jpg', 1, 0, '2025-05-29 08:06:53'),
(5, 3, '/images/products_gallery/tshirt_fabric_detail.jpg', 0, 1, '2025-05-29 08:06:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productreviews`
--

CREATE TABLE `productreviews` (
  `reviewid` int NOT NULL,
  `productid` int NOT NULL,
  `userid` int NOT NULL,
  `orderid` int DEFAULT NULL,
  `rating` tinyint NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reviewimages` json DEFAULT NULL,
  `isapproved` tinyint(1) NOT NULL DEFAULT '1',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productreviews`
--

INSERT INTO `productreviews` (`reviewid`, `productid`, `userid`, `orderid`, `rating`, `comment`, `reviewimages`, `isapproved`, `createdat`, `updatedat`) VALUES
(1, 1, 1, 1, 5, 'Điện thoại tuyệt vời, camera chụp ảnh siêu nét! Giao hàng nhanh.', '[\"/images/reviews/phone_good_1.jpg\"]', 1, '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(2, 2, 5, 2, 4, 'Tai nghe nghe hay, chống ồn tốt. Thiết kế đẹp nhưng hộp sạc hơi dễ trầy.', NULL, 1, '2025-05-29 08:19:46', '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `productid` int NOT NULL,
  `shopid` int NOT NULL,
  `categoryid` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discount` int NOT NULL DEFAULT '0',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `adminapprovalstatus` enum('Pending','Approved','Rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `reasonforrejection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`productid`, `shopid`, `categoryid`, `name`, `description`, `discount`, `isactive`, `adminapprovalstatus`, `reasonforrejection`, `createdat`, `updatedat`) VALUES
(1, 1, 6, 'Smartphone X Pro Max', 'Điện thoại thông minh X Pro Max với camera 108MP, chip Snapdragon 8 Gen 3, màn hình AMOLED 120Hz.', 5, 1, 'Approved', NULL, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(2, 1, 7, 'Tai nghe không dây Z Buds 3', 'Tai nghe true wireless Z Buds 3, chống ồn chủ động, thời lượng pin 8 tiếng.', 10, 1, 'Approved', NULL, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(3, 2, 3, 'Áo Thun Nam Cotton Cao Cấp', 'Áo thun nam cổ tròn, 100% cotton, co giãn 4 chiều, thấm hút mồ hôi.', 0, 1, 'Approved', NULL, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(4, 1, 5, 'Laptop UltraBook Y Slim', 'Laptop mỏng nhẹ UltraBook Y Slim, Intel Core i7 thế hệ 13, RAM 16GB, SSD 512GB.', 7, 1, 'Pending', NULL, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(5, 1, 6, 'Smartphone Gamma G7', 'Smartphone Gamma G7, chip MediaTek Dimensity 1200, màn hình AMOLED 120Hz, camera 64MP.', 10, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(6, 1, 3, 'Laptop Gaming Titan X', 'Laptop Gaming Titan X, Intel Core i7 13th Gen, RTX 4060, 16GB RAM, 1TB SSD, màn hình 15.6 inch QHD 165Hz.', 8, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(7, 2, 5, 'Quần Jeans Nam Regular Fit', 'Quần Jeans nam ống đứng, chất liệu denim cao cấp, màu xanh bạc.', 0, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(8, 1, 8, 'Chuột không dây Logitech MX Master 3S', 'Chuột công thái học Logitech MX Master 3S, cảm biến 8K DPI, cuộn MagSpeed, kết nối đa thiết bị.', 5, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(9, 1, 8, 'Bàn phím cơ Keychron K2 Pro', 'Bàn phím cơ không dây Keychron K2 Pro, QMK/VIA, Gateron Brown Switch, Hotswap.', 0, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(10, 2, 5, 'Giày Chạy Bộ Nike Revolution 7', 'Giày chạy bộ Nike Revolution 7, êm ái và linh hoạt cho mọi cự ly.', 15, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(11, 1, 7, 'Sạc dự phòng Anker PowerCore 20000mAh', 'Sạc dự phòng Anker PowerCore dung lượng lớn 20000mAh, công nghệ PowerIQ, 2 cổng USB.', 10, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00'),
(12, 1, 3, 'Màn hình Dell UltraSharp U2723QE', 'Màn hình Dell 27 inch 4K UHD, IPS Black, USB-C Hub, chuyên đồ họa.', 7, 1, 'Approved', NULL, '2025-05-29 06:31:00', '2025-05-29 06:31:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productvariantattribute`
--

CREATE TABLE `productvariantattribute` (
  `variantid` int NOT NULL,
  `attributevalueid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productvariantattribute`
--

INSERT INTO `productvariantattribute` (`variantid`, `attributevalueid`) VALUES
(1, 1),
(4, 1),
(5, 1),
(8, 1),
(13, 1),
(15, 1),
(18, 1),
(20, 1),
(21, 1),
(3, 2),
(6, 2),
(19, 2),
(2, 3),
(9, 3),
(12, 3),
(5, 7),
(6, 8),
(8, 12),
(7, 13),
(10, 13),
(11, 14),
(8, 16),
(1, 17),
(9, 17),
(2, 18),
(7, 18),
(10, 19),
(14, 20),
(18, 29),
(19, 30),
(12, 34),
(13, 36),
(10, 39),
(11, 40),
(21, 42),
(1, 45),
(9, 45),
(11, 46),
(17, 47),
(16, 49),
(5, 56),
(12, 64),
(13, 64),
(10, 67),
(11, 68),
(10, 78),
(11, 78),
(8, 84),
(9, 84),
(1, 86),
(10, 88),
(11, 88),
(21, 92),
(1, 94),
(8, 94),
(9, 94),
(21, 98),
(1, 100),
(8, 100),
(9, 100),
(10, 102),
(11, 102),
(1, 103),
(16, 103),
(17, 103),
(20, 103),
(1, 106),
(14, 106),
(15, 106),
(16, 106),
(17, 106),
(1, 109),
(1, 110),
(21, 113),
(21, 114),
(5, 117),
(12, 117),
(13, 117),
(18, 119),
(19, 119),
(14, 123),
(15, 123),
(5, 126),
(12, 126),
(13, 126),
(18, 126),
(19, 126),
(1, 128),
(21, 129),
(18, 131),
(19, 131),
(5, 133),
(12, 133),
(13, 133),
(14, 134),
(15, 134),
(16, 134),
(17, 134),
(10, 135),
(11, 135),
(8, 136),
(9, 136),
(20, 140),
(10, 143),
(11, 143),
(21, 144),
(20, 149),
(8, 150),
(9, 151),
(14, 157),
(15, 157);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productvariants`
--

CREATE TABLE `productvariants` (
  `variantid` int NOT NULL,
  `productid` int NOT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int NOT NULL,
  `compareatprice` int DEFAULT NULL,
  `stockquantity` int NOT NULL DEFAULT '0',
  `imageurl` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `createdat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productvariants`
--

INSERT INTO `productvariants` (`variantid`, `productid`, `sku`, `price`, `compareatprice`, `stockquantity`, `imageurl`, `isactive`, `createdat`, `updatedat`) VALUES
(1, 1, 'XPROMAX-BLK-256', 28990000, 30500000, 50, '/images/variants/xpromax_black_256.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(2, 1, 'XPROMAX-BLU-512', 32990000, 34500000, 30, '/images/variants/xpromax_blue_512.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(3, 2, 'ZBUDS3-WHT', 2490000, 2790000, 100, '/images/variants/zbuds3_white.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(4, 2, 'ZBUDS3-BLK', 2490000, 2790000, 80, '/images/variants/zbuds3_black.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(5, 3, 'TSHIRT-COT-BLK-M', 350000, NULL, 150, '/images/variants/tshirt_cotton_black_m.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(6, 3, 'TSHIRT-COT-WHT-L', 350000, NULL, 120, '/images/variants/tshirt_cotton_white_l.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(7, 4, 'ULTRA-Y-SLV-16-512', 25990000, 27990000, 25, '/images/variants/ultray_silver.jpg', 1, '2025-05-29 08:02:54', '2025-05-29 08:02:54'),
(8, 5, 'GAMMA-G7-BLK-8-128', 8990000, 9990000, 70, '/images/variants/gamma_g7_black_128.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(9, 5, 'GAMMA-G7-BLU-12-256', 10490000, 11500000, 40, '/images/variants/gamma_g7_blue_256.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(10, 6, 'TITANX-I7-4060-16-1T', 38500000, 42000000, 20, '/images/variants/titanx_16_1tb.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(11, 6, 'TITANX-I9-4070-32-2T', 48990000, 53000000, 10, '/images/variants/titanx_i9_32_2tb.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(12, 7, 'JEANS-REG-BLU-30', 650000, NULL, 90, '/images/variants/jeans_reg_blue_30.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(13, 7, 'JEANS-REG-BLK-32', 650000, NULL, 80, '/images/variants/jeans_reg_black_32.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(14, 8, 'LOGI-MXM3S-GRY', 2350000, 2490000, 60, '/images/variants/logi_mxm3s_grey.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(15, 8, 'LOGI-MXM3S-BLK', 2350000, 2490000, 55, '/images/variants/logi_mxm3s_black.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(16, 9, 'KEY-K2PRO-BRN', 3190000, NULL, 40, '/images/variants/key_k2pro_brown.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(17, 9, 'KEY-K2PRO-RED', 3190000, NULL, 35, '/images/variants/key_k2pro_red.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(18, 10, 'NIKE-REV7-BLK-40', 1590000, 1890000, 70, '/images/variants/nike_rev7_black_40.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(19, 10, 'NIKE-REV7-WHT-41', 1590000, 1890000, 65, '/images/variants/nike_rev7_white_41.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(20, 11, 'ANKER-PC20K-BLK', 990000, 1100000, 100, '/images/variants/anker_pc20k_black.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00'),
(21, 12, 'DELL-U2723QE', 13500000, 14500000, 25, '/images/variants/dell_u2723qe.jpg', 1, '2025-05-29 06:32:00', '2025-05-29 06:32:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `returnrequests`
--

CREATE TABLE `returnrequests` (
  `returnrequestid` int NOT NULL,
  `orderid` int NOT NULL,
  `orderitemid` int DEFAULT NULL,
  `userid` int NOT NULL,
  `shopid` int NOT NULL,
  `requesttype` enum('Return','Refund','ReturnAndRefund') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasoncode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reasondescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `evidenceurls` json DEFAULT NULL,
  `status` enum('PendingSellerApproval','SellerApproved_WaitForReturn','SellerReceivedProduct','RefundProcessing','Refunded','SellerRejected','BuyerCancelled','AdminIntervention','Closed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PendingSellerApproval',
  `sellernote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `adminnote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolutiontype` enum('FullRefund','PartialRefund','ProductExchange','NoAction','StoreCredit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refundamount` decimal(12,2) DEFAULT NULL,
  `buyershippinginforeturn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shopshippinginforeturn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `requestedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `returnrequests`
--

INSERT INTO `returnrequests` (`returnrequestid`, `orderid`, `orderitemid`, `userid`, `shopid`, `requesttype`, `reasoncode`, `reasondescription`, `evidenceurls`, `status`, `sellernote`, `adminnote`, `resolutiontype`, `refundamount`, `buyershippinginforeturn`, `shopshippinginforeturn`, `requestedat`, `lastupdatedat`) VALUES
(1, 1, 1, 1, 1, 'ReturnAndRefund', 'ITEM_DEFECTIVE', 'Sản phẩm bị lỗi màn hình, có điểm chết.', '[\"/images/returns/defective_screen1.jpg\"]', 'PendingSellerApproval', NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-29 08:19:46', '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shopfollows`
--

CREATE TABLE `shopfollows` (
  `followid` int NOT NULL,
  `userid` int NOT NULL,
  `shopid` int NOT NULL,
  `followedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shopfollows`
--

INSERT INTO `shopfollows` (`followid`, `userid`, `shopid`, `followedat`) VALUES
(1, 1, 2, '2025-05-29 08:19:46'),
(2, 5, 1, '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shops`
--

CREATE TABLE `shops` (
  `shopid` int NOT NULL,
  `userid` int NOT NULL,
  `shopname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logourl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coverimageurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressstreet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressdistrict` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresscity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('Thường','Mall') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Thường',
  `status` enum('PendingApproval','Approved','Suspended','Rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PendingApproval',
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shops`
--

INSERT INTO `shops` (`shopid`, `userid`, `shopname`, `description`, `logourl`, `coverimageurl`, `addressstreet`, `addressward`, `addressdistrict`, `addresscity`, `shopphone`, `level`, `status`, `createdat`, `updatedat`) VALUES
(1, 2, 'Bích Tech Store', 'Chuyên hàng công nghệ chính hãng, giá tốt.', '/images/logos/bichtech.png', '/images/covers/bichtech_cover.png', '101 Võ Văn Tần', 'Phường 6', 'Quận 3', 'TP. Hồ Chí Minh', '0901234562', 'Mall', 'Approved', '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(2, 5, 'E-Style Fashion', 'Thời trang nam nữ, cập nhật xu hướng mới nhất.', '/images/logos/estyle.png', '/images/covers/estyle_cover.png', '202 Trần Hưng Đạo', 'Phường Nguyễn Cư Trinh', 'Quận 1', 'TP. Hồ Chí Minh', '0901234565', 'Thường', 'PendingApproval', '2025-05-29 07:59:17', '2025-05-29 07:59:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `userid` int NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('Đồng','Bạc','Vàng','Bạch kim','Kim cương') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Đồng',
  `role` enum('Người mua','Người bán','Quản trị viên') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Người mua',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`, `fullname`, `phone`, `level`, `role`, `isactive`, `token`, `createdat`, `updatedat`) VALUES
(1, 'buyer01', 'buyer01@example.com', '$2y$10$xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Nguyễn Văn An', '0901234561', 'Đồng', 'Người mua', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(2, 'seller01', 'seller01@example.com', '$2y$10$xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Trần Thị Bích', '0901234562', 'Bạc', 'Người bán', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(3, 'admin01', 'admin01@example.com', '$2y$10$xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Lê Văn Cường (Admin)', '0901234563', 'Kim cương', 'Quản trị viên', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(4, 'buyer02', 'buyer02@example.com', '$2y$10$xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Phạm Thị Dung', '0901234564', 'Đồng', 'Người mua', 1, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17'),
(5, 'seller02', 'seller02@example.com', '$2y$10$xxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'Hoàng Văn E', '0901234565', 'Vàng', 'Người bán', 0, NULL, '2025-05-29 07:59:17', '2025-05-29 07:59:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uservouchers`
--

CREATE TABLE `uservouchers` (
  `uservoucherid` int NOT NULL,
  `userid` int NOT NULL,
  `voucherid` int NOT NULL,
  `shopid` int DEFAULT NULL,
  `timesusedthisorder` int DEFAULT NULL,
  `usedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `uservouchers`
--

INSERT INTO `uservouchers` (`uservoucherid`, `userid`, `voucherid`, `shopid`, `timesusedthisorder`, `usedat`) VALUES
(1, 5, 1, NULL, 1, '2025-05-29 08:19:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `voucherid` int NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discounttype` enum('Percentage','FixedAmount') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountvalue` int NOT NULL,
  `maxvalueforpercentage` int DEFAULT NULL,
  `minordervalue` int DEFAULT '0',
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `usagelimitperuser` int DEFAULT NULL,
  `usagelimitotal` int DEFAULT NULL,
  `timesused` int NOT NULL DEFAULT '0',
  `scope` enum('Platform','Shop') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopid` int DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `createdby` enum('Admin','Seller') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`voucherid`, `code`, `description`, `discounttype`, `discountvalue`, `maxvalueforpercentage`, `minordervalue`, `startdate`, `enddate`, `usagelimitperuser`, `usagelimitotal`, `timesused`, `scope`, `shopid`, `isactive`, `createdby`, `userid`, `createdat`, `updatedat`) VALUES
(1, 'WELCOME50', 'Giảm 50,000đ cho đơn hàng đầu tiên từ 200,000đ', 'FixedAmount', 50000, NULL, 200000, '2025-01-01 00:00:00', '2025-12-31 23:59:59', 1, 1000, 1, 'Platform', NULL, 1, 'Admin', 4, '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(2, 'BICHTECH10', 'Bích Tech Store giảm 10% tối đa 100K cho đơn từ 500K', 'Percentage', 10, 100000, 500000, '2025-05-01 00:00:00', '2025-06-30 23:59:59', 1, 200, 0, 'Shop', 1, 1, 'Seller', 2, '2025-05-29 08:19:46', '2025-05-29 08:19:46'),
(3, 'FREESHIPMAX', 'Miễn phí vận chuyển tối đa 30K', 'FixedAmount', 30000, NULL, 99000, '2025-05-20 00:00:00', '2025-06-20 23:59:59', NULL, 500, 0, 'Platform', NULL, 1, 'Admin', 4, '2025-05-29 08:19:46', '2025-05-29 08:19:46');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `idx_addresses_user_id` (`userid`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attributeid`),
  ADD UNIQUE KEY `Name` (`name`);

--
-- Chỉ mục cho bảng `attributevalues`
--
ALTER TABLE `attributevalues`
  ADD PRIMARY KEY (`attributevalueid`),
  ADD UNIQUE KEY `uq_attribute_value` (`attributeid`,`value`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`bannerid`),
  ADD KEY `idx_banners_position_isactive` (`position`,`isactive`);

--
-- Chỉ mục cho bảng `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`cartitemid`),
  ADD UNIQUE KEY `uq_cartitem_cart_variant` (`cartid`,`variantid`),
  ADD KEY `shopid` (`shopid`),
  ADD KEY `idx_cartitems_cart_id` (`cartid`),
  ADD KEY `fk_cartitems_variant_idx` (`variantid`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cartid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `flashsalecampaigns`
--
ALTER TABLE `flashsalecampaigns`
  ADD PRIMARY KEY (`campaignid`),
  ADD KEY `adminuserid` (`adminuserid`);

--
-- Chỉ mục cho bảng `flashsaledeals`
--
ALTER TABLE `flashsaledeals`
  ADD PRIMARY KEY (`dealid`),
  ADD KEY `campaignid` (`campaignid`),
  ADD KEY `variantid` (`variantid`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`orderitemid`),
  ADD KEY `idx_orderitems_order_id` (`orderid`),
  ADD KEY `fk_orderitems_variant_idx` (`variantid`),
  ADD KEY `fk_orderitems_flashsaledeal_idx` (`flashsaledealid`);

--
-- Chỉ mục cho bảng `ordersbuyer`
--
ALTER TABLE `ordersbuyer`
  ADD PRIMARY KEY (`orderid`),
  ADD UNIQUE KEY `ordercode` (`ordercode`),
  ADD KEY `shippingaddressid` (`shippingaddressid`),
  ADD KEY `idx_orders_buyer_user_id` (`userid`),
  ADD KEY `idx_orders_buyer_order_code` (`ordercode`),
  ADD KEY `idx_orders_buyer_status` (`overallstatus`),
  ADD KEY `idx_orders_buyer_payment_status` (`paymentstatus`);

--
-- Chỉ mục cho bảng `platformcategories`
--
ALTER TABLE `platformcategories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `parentcategoryid` (`parentcategoryid`),
  ADD KEY `idx_platformcategories_name` (`name`),
  ADD KEY `idx_platformcategories_slug` (`slug`);

--
-- Chỉ mục cho bảng `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`imageid`),
  ADD KEY `idx_productimages_product_id` (`productid`);

--
-- Chỉ mục cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`reviewid`),
  ADD UNIQUE KEY `uq_productreview_user_product_order` (`userid`,`productid`,`orderid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idx_productreviews_product_id` (`productid`),
  ADD KEY `idx_productreviews_user_id` (`userid`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `idx_products_name` (`name`),
  ADD KEY `idx_products_shop_id` (`shopid`),
  ADD KEY `idx_products_category_id` (`categoryid`),
  ADD KEY `idx_products_admin_approval_status` (`adminapprovalstatus`);

--
-- Chỉ mục cho bảng `productvariantattribute`
--
ALTER TABLE `productvariantattribute`
  ADD PRIMARY KEY (`variantid`,`attributevalueid`),
  ADD KEY `pvav_ibfk_2` (`attributevalueid`);

--
-- Chỉ mục cho bảng `productvariants`
--
ALTER TABLE `productvariants`
  ADD PRIMARY KEY (`variantid`),
  ADD UNIQUE KEY `uq_variant_sku_product` (`productid`,`sku`);

--
-- Chỉ mục cho bảng `returnrequests`
--
ALTER TABLE `returnrequests`
  ADD PRIMARY KEY (`returnrequestid`),
  ADD KEY `orderitemid` (`orderitemid`),
  ADD KEY `shopid` (`shopid`),
  ADD KEY `idx_returnrequests_order_id` (`orderid`),
  ADD KEY `idx_returnrequests_user_id` (`userid`),
  ADD KEY `idx_returnrequests_status` (`status`);

--
-- Chỉ mục cho bảng `shopfollows`
--
ALTER TABLE `shopfollows`
  ADD PRIMARY KEY (`followid`),
  ADD UNIQUE KEY `uq_shopfollow_user_shop` (`userid`,`shopid`),
  ADD KEY `shopid` (`shopid`);

--
-- Chỉ mục cho bảng `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shopid`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `shopname` (`shopname`),
  ADD KEY `idx_shops_shopname` (`shopname`),
  ADD KEY `idx_shops_status` (`status`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_role` (`role`);

--
-- Chỉ mục cho bảng `uservouchers`
--
ALTER TABLE `uservouchers`
  ADD PRIMARY KEY (`uservoucherid`),
  ADD UNIQUE KEY `uq_user_voucher_order` (`userid`,`voucherid`,`shopid`),
  ADD KEY `voucherid` (`voucherid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `shopid` (`shopid`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`voucherid`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `shopid` (`shopid`),
  ADD KEY `userid_creator_idx` (`userid`),
  ADD KEY `idx_vouchers_code` (`code`),
  ADD KEY `idx_vouchers_scope_shop_id` (`scope`,`shopid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addressid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attributeid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `attributevalues`
--
ALTER TABLE `attributevalues`
  MODIFY `attributevalueid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `bannerid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `cartitemid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `cartid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `flashsalecampaigns`
--
ALTER TABLE `flashsalecampaigns`
  MODIFY `campaignid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `flashsaledeals`
--
ALTER TABLE `flashsaledeals`
  MODIFY `dealid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `orderitemid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `ordersbuyer`
--
ALTER TABLE `ordersbuyer`
  MODIFY `orderid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `platformcategories`
--
ALTER TABLE `platformcategories`
  MODIFY `categoryid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `productimages`
--
ALTER TABLE `productimages`
  MODIFY `imageid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `reviewid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `productid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `productvariants`
--
ALTER TABLE `productvariants`
  MODIFY `variantid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `returnrequests`
--
ALTER TABLE `returnrequests`
  MODIFY `returnrequestid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shopfollows`
--
ALTER TABLE `shopfollows`
  MODIFY `followid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `shops`
--
ALTER TABLE `shops`
  MODIFY `shopid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `uservouchers`
--
ALTER TABLE `uservouchers`
  MODIFY `uservoucherid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `voucherid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `attributevalues`
--
ALTER TABLE `attributevalues`
  ADD CONSTRAINT `attributevalues_ibfk_1` FOREIGN KEY (`attributeid`) REFERENCES `attributes` (`attributeid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `cartitems`
--
ALTER TABLE `cartitems`
  ADD CONSTRAINT `cartitems_ibfk_1` FOREIGN KEY (`cartid`) REFERENCES `carts` (`cartid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cartitems_ibfk_3` FOREIGN KEY (`shopid`) REFERENCES `shops` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cartitems_variant` FOREIGN KEY (`variantid`) REFERENCES `productvariants` (`variantid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `flashsalecampaigns`
--
ALTER TABLE `flashsalecampaigns`
  ADD CONSTRAINT `flashsalecampaigns_ibfk_1` FOREIGN KEY (`adminuserid`) REFERENCES `users` (`userid`);

--
-- Ràng buộc cho bảng `flashsaledeals`
--
ALTER TABLE `flashsaledeals`
  ADD CONSTRAINT `flashsaledeals_ibfk_1` FOREIGN KEY (`campaignid`) REFERENCES `flashsalecampaigns` (`campaignid`),
  ADD CONSTRAINT `flashsaledeals_ibfk_2` FOREIGN KEY (`variantid`) REFERENCES `productvariants` (`variantid`);

--
-- Ràng buộc cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `fk_orderitems_flashsaledeal` FOREIGN KEY (`flashsaledealid`) REFERENCES `flashsaledeals` (`dealid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orderitems_variant` FOREIGN KEY (`variantid`) REFERENCES `productvariants` (`variantid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `ordersbuyer` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `ordersbuyer`
--
ALTER TABLE `ordersbuyer`
  ADD CONSTRAINT `orders_buyer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_buyer_ibfk_2` FOREIGN KEY (`shippingaddressid`) REFERENCES `addresses` (`addressid`) ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `platformcategories`
--
ALTER TABLE `platformcategories`
  ADD CONSTRAINT `platformcategories_ibfk_1` FOREIGN KEY (`parentcategoryid`) REFERENCES `platformcategories` (`categoryid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  ADD CONSTRAINT `productreviews_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productreviews_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productreviews_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `ordersbuyer` (`orderid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`shopid`) REFERENCES `shops` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `platformcategories` (`categoryid`) ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `productvariantattribute`
--
ALTER TABLE `productvariantattribute`
  ADD CONSTRAINT `pvav_ibfk_1` FOREIGN KEY (`variantid`) REFERENCES `productvariants` (`variantid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pvav_ibfk_2` FOREIGN KEY (`attributevalueid`) REFERENCES `attributevalues` (`attributevalueid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `productvariants`
--
ALTER TABLE `productvariants`
  ADD CONSTRAINT `productvariants_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `returnrequests`
--
ALTER TABLE `returnrequests`
  ADD CONSTRAINT `returnrequests_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `ordersbuyer` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `returnrequests_ibfk_2` FOREIGN KEY (`orderitemid`) REFERENCES `orderitems` (`orderitemid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `returnrequests_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `returnrequests_ibfk_4` FOREIGN KEY (`shopid`) REFERENCES `shops` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `shopfollows`
--
ALTER TABLE `shopfollows`
  ADD CONSTRAINT `shopfollows_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopfollows_ibfk_2` FOREIGN KEY (`shopid`) REFERENCES `shops` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `uservouchers`
--
ALTER TABLE `uservouchers`
  ADD CONSTRAINT `userusedvouchers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userusedvouchers_ibfk_2` FOREIGN KEY (`voucherid`) REFERENCES `vouchers` (`voucherid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userusedvouchers_ibfk_4` FOREIGN KEY (`shopid`) REFERENCES `shops` (`shopid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ràng buộc cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_ibfk_1` FOREIGN KEY (`shopid`) REFERENCES `shops` (`shopid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vouchers_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
