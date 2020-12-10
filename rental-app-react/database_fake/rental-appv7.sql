-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2020 lúc 10:19 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB-log
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rental-app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `address`, `city`, `district`, `created_at`, `updated_at`) VALUES
(1, 'số 6, ngõ 38 đường nguyễn văn huyên - cầu giấy.', 'Hà Nội', 'Cầu Giấy', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(2, ' số 8b, ngách 80 ngõ 381 nguyễn khang, yên hòa, cầu giấy', 'Hà Nội', 'Cầu Giấy', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(3, 'số 10, ngõ 44/64/10 đường trần thái tông, cầu giấy, hà nôi', 'Hà Nội', 'Cầu Giấy', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(4, 'ngõ 90 hoàng ngân, trung hòa, cầu giấy, hà nội', 'Hà Nội', 'Cầu Giấy', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(5, 'ngõ 2 đường phạm văn đồng , mai dịch , cầu giấy hà nội', 'Hà Nội', 'Cầu Giấy', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(6, 'số 10, ngõ 44/64/10 đường trần thái tông, cầu giấy', 'Thành phố Hà Nội', 'Huyện Hoài Đức', '2020-12-02 14:36:47', '2020-12-06 21:15:18'),
(7, '79, Đường Hai Bà Trưng, Phường Cửa Nam, Quận Hoàn Kiếm, Hà Nội', 'Hà Nội', 'Hoàn Kiếm', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(8, 'Đường Bảo Linh, Phường Phúc Tân, Quận Hoàn Kiếm, Hà Nội', 'Hà Nội', 'Hoàn Kiếm', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(9, 'Đường Đào Duy Từ, Phường Hàng Buồm, Quận Hoàn Kiếm, Hà Nội', 'Hà Nội', 'Hoàn Kiếm', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(10, '2, đường Phúc Tân, Phường Đồng Xuân, Quận Hoàn Kiếm, Hà Nội', 'Hà Nội', 'Hoàn Kiếm', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(11, 'ngõ 127c trần hưng đạo SN 30, Đường Trần Hưng Đạo, Phường Trần Hưng Đạo, Quận Hoàn Kiếm, Hà Nội', 'Hà Nội', 'Hoàn Kiếm', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(12, 'Đường Cầu Gỗ||17, Phường Hàng Bạc, Quận Hoàn Kiếm, Hà Nội', 'Hà Nội', 'Hoàn Kiếm', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(13, 'Đường Hồ Đắc Di, Phường Nam Đồng, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(14, 'Đường Pháo Đài Láng, Phường Láng Thượng, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(15, 'Đường Láng, Phường Ngã Tư Sở, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(16, '13 ngõ Đại Đồng, Đường Khâm Thiên, Phường Khâm Thiên, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(17, '199, Đường Quan Thổ 1, Phường Hàng Bột, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(18, '34, ngõ Láng Trung, Phường Láng Hạ, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(19, '22/5d ngõ 41, Đường Thái Hà, Phường Khương Thượng, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(20, 'Đường Tây Sơn, Phường Quang Trung, Quận Đống Đa, Hà Nội', 'Hà Nội', 'Đống Đa', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(21, '80, Đường Vân Hồ 3, Phường Lê Đại Hành, Quận Hai Bà Trưng, Hà Nội', 'Hà Nội', 'Hai Bà Trưng', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(22, '6, Phố 8/3, Phường Quỳnh Mai, Quận Hai Bà Trưng, Hà Nội', 'Hà Nội', 'Hai Bà Trưng', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(23, '15, Đường Tây Kết||593, Phường Bạch Đằng, Quận Hai Bà Trưng, Hà Nội', 'Hà Nội', 'Hai Bà Trưng', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(24, 'Ngõ 39c/5 vĩnh tuy SN 141 1tr5, Đường Vĩnh Tuy, Phường Vĩnh Tuy, Quận Hai Bà Trưng, Hà Nội', 'Hà Nội', 'Hai Bà Trưng', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(25, 'Xuân Trúc', 'Hung Yen', 'Ân Thi', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(26, 'Quảng Lãng', 'Hưng Yên', 'Quảng Lãng', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(27, 'Khoái Châu', 'Hưng Yên', 'Khoái Châu', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(28, 'Tiên Lữ', 'Hưng Yên', 'Tiên Lữ', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(29, 'Phù Cừ', 'Hưng Yên', 'Phù Cừ', '2020-12-02 14:36:47', '2020-12-02 14:36:47'),
(30, 'Thị trấn', 'Hưng Yên', 'Ân Thi', '2020-12-02 14:36:47', '2020-12-02 14:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

CREATE TABLE `chat` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `city`) VALUES
(1, 'Thành phố Cần Thơ'),
(2, 'Thành phố Đà Nẵng'),
(3, 'Thành phố Hà Nội'),
(4, 'Thành phố Hải Phòng'),
(5, 'Thành phố Hồ Chí Minh'),
(6, 'Tỉnh An Giang'),
(7, 'Tỉnh Bà Rịa-Vũng Tàu'),
(8, 'Tỉnh Bắc Giang'),
(9, 'Tỉnh Bắc Kạn'),
(10, 'Tỉnh Bạc Liêu'),
(11, 'Tỉnh Bắc Ninh'),
(12, 'Tỉnh Bến Tre'),
(13, 'Tỉnh Bình Định'),
(14, 'Tỉnh Bình Dương'),
(15, 'Tỉnh Bình Phước'),
(16, 'Tỉnh Bình Thuận'),
(17, 'Tỉnh Cà Mau'),
(18, 'Tỉnh Cao Bằng'),
(19, 'Tỉnh Đắk Lắk'),
(20, 'Tỉnh Đắk Nông'),
(21, 'Tỉnh Điện Biên'),
(22, 'Tỉnh Đồng Nai'),
(23, 'Tỉnh Đồng Tháp'),
(24, 'Tỉnh Gia Lai'),
(25, 'Tỉnh Hà Giang'),
(26, 'Tỉnh Hà Nam'),
(27, 'Tỉnh Hà Tĩnh'),
(28, 'Tỉnh Hải Dương'),
(29, 'Tỉnh Hậu Giang'),
(30, 'Tỉnh Hòa Bình'),
(31, 'Tỉnh Hưng Yên'),
(32, 'Tỉnh Khánh Hòa'),
(33, 'Tỉnh Kiên Giang'),
(34, 'Tỉnh Kon Tum'),
(35, 'Tỉnh Lai Châu'),
(36, 'Tỉnh Lâm Đồng'),
(37, 'Tỉnh Lạng Sơn'),
(38, 'Tỉnh Lào Cai'),
(39, 'Tỉnh Long An'),
(40, 'Tỉnh Nam Định'),
(41, 'Tỉnh Nghệ An'),
(42, 'Tỉnh Ninh Bình'),
(43, 'Tỉnh Ninh Thuận'),
(44, 'Tỉnh Phú Thọ'),
(45, 'Tỉnh Phú Yên'),
(46, 'Tỉnh Quảng Bình'),
(47, 'Tỉnh Quảng Nam'),
(48, 'Tỉnh Quảng Ngãi'),
(49, 'Tỉnh Quảng Ninh'),
(50, 'Tỉnh Quảng Trị'),
(51, 'Tỉnh Sóc Trăng'),
(52, 'Tỉnh Sơn La'),
(53, 'Tỉnh Tây Ninh'),
(54, 'Tỉnh Thái Bình'),
(55, 'Tỉnh Thái Nguyên'),
(56, 'Tỉnh Thanh Hóa'),
(57, 'Tỉnh Thừa Thiên Huế'),
(58, 'Tỉnh Tiền Giang'),
(59, 'Tỉnh Trà Vinh'),
(60, 'Tỉnh Tuyên Quang'),
(61, 'Tỉnh Vĩnh Long'),
(62, 'Tỉnh Vĩnh Phúc'),
(63, 'Tỉnh Yên Bái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `conversation`
--

CREATE TABLE `conversation` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district`, `city_id`) VALUES
(1, 'Huyện Cờ Đỏ', 1),
(2, 'Huyện Phong Điền', 1),
(3, 'Huyện Thới Lai', 1),
(4, 'Huyện Vĩnh Thạnh', 1),
(5, 'Quận Bình Thủy', 1),
(6, 'Quận Cái Răng', 1),
(7, 'Quận Ninh Kiều', 1),
(8, 'Quận Ô Môn', 1),
(9, 'Quận Thốt Nốt', 1),
(10, 'Huyện Hòa Vang', 2),
(11, 'Huyện Hoàng Sa', 2),
(12, 'Quận Cẩm Lệ', 2),
(13, 'Quận Hải Châu', 2),
(14, 'Quận Liên Chiểu', 2),
(15, 'Quận Ngũ Hành Sơn', 2),
(16, 'Quận Sơn Trà', 2),
(17, 'Quận Thanh Khê', 2),
(18, 'Huyện Ba Vì', 3),
(19, 'Huyện Chương Mỹ', 3),
(20, 'Huyện Đan Phượng', 3),
(21, 'Huyện Đông Anh', 3),
(22, 'Huyện Gia Lâm', 3),
(23, 'Huyện Hoài Đức', 3),
(24, 'Huyện Mê Linh', 3),
(25, 'Huyện Mỹ Đức', 3),
(26, 'Huyện Phú Xuyên', 3),
(27, 'Huyện Phúc Thọ', 3),
(28, 'Huyện Quốc Oai', 3),
(29, 'Huyện Sóc Sơn', 3),
(30, 'Huyện Thạch Thất', 3),
(31, 'Huyện Thanh Oai', 3),
(32, 'Huyện Thanh Trì', 3),
(33, 'Huyện Thường Tín', 3),
(34, 'Huyện Từ Liêm', 3),
(35, 'Huyện ứng Hòa', 3),
(36, 'Quận Ba Đình', 3),
(37, 'Quận Cầu Giấy', 3),
(38, 'Quận Đống Đa', 3),
(39, 'Quận Hà Đông', 3),
(40, 'Quận Hai Bà Trưng', 3),
(41, 'Quận Hoàn Kiếm', 3),
(42, 'Quận Hoàng Mai', 3),
(43, 'Quận Long Biên', 3),
(44, 'Quận Tây Hồ', 3),
(45, 'Quận Thanh Xuân', 3),
(46, 'Thị xã Sơn Tây', 3),
(47, 'Huyện An Dương', 4),
(48, 'Huyện An Lão', 4),
(49, 'Huyện Bạch Long Vĩ', 4),
(50, 'Huyện Cát Hải', 4),
(51, 'Huyện Kiến Thụy', 4),
(52, 'Huyện Thủy Nguyên', 4),
(53, 'Huyện Tiên Lãng', 4),
(54, 'Huyện Vĩnh Bảo', 4),
(55, 'Quận Đồ Sơn', 4),
(56, 'Quận Dương Kinh', 4),
(57, 'Quận Hải An', 4),
(58, 'Quận Hồng Bàng', 4),
(59, 'Quận Kiến An', 4),
(60, 'Quận Lê Chân', 4),
(61, 'Quận Ngô Quyền', 4),
(62, 'Huyện Bình Chánh', 5),
(63, 'Huyện Cần Giờ', 5),
(64, 'Huyện Củ Chi', 5),
(65, 'Huyện Hóc Môn', 5),
(66, 'Huyện Nhà Bè', 5),
(67, 'Quận 1', 5),
(68, 'Quận 10', 5),
(69, 'Quận 11', 5),
(70, 'Quận 12', 5),
(71, 'Quận 2', 5),
(72, 'Quận 3', 5),
(73, 'Quận 4', 5),
(74, 'Quận 5', 5),
(75, 'Quận 6', 5),
(76, 'Quận 7', 5),
(77, 'Quận 8', 5),
(78, 'Quận 9', 5),
(79, 'Quận Bình Tân', 5),
(80, 'Quận Bình Thạnh', 5),
(81, 'Quận Gò Vấp', 5),
(82, 'Quận Phú Nhuận', 5),
(83, 'Quận Tân Bình', 5),
(84, 'Quận Tân Phú', 5),
(85, 'Quận Thủ Đức', 5),
(86, 'Huyện An Phú', 6),
(87, 'Huyện Châu Phú', 6),
(88, 'Huyện Châu Thành', 6),
(89, 'Huyện Chợ Mới', 6),
(90, 'Huyện Phú Tân', 6),
(91, 'Huyện Thoại Sơn', 6),
(92, 'Huyện Tịnh Biên', 6),
(93, 'Huyện Tri Tôn', 6),
(94, 'Thành phố Long Xuyên', 6),
(95, 'Thị xã Châu Đốc', 6),
(96, 'Thị xã Tân Châu', 6),
(97, 'Huyện Châu Đức', 7),
(98, 'Huyện Côn Đảo', 7),
(99, 'Huyện Đất Đỏ', 7),
(100, 'Huyện Long Điền', 7),
(101, 'Huyện Tân Thành', 7),
(102, 'Huyện Xuyên Mộc', 7),
(103, 'Thành phố Vũng Tàu', 7),
(104, 'Thị xã Bà Rịa', 7),
(105, 'Huyện Hiệp Hòa', 8),
(106, 'Huyện Lạng Giang', 8),
(107, 'Huyện Lục Nam', 8),
(108, 'Huyện Lục Ngạn', 8),
(109, 'Huyện Sơn Động', 8),
(110, 'Huyện Tân Yên', 8),
(111, 'Huyện Việt Yên', 8),
(112, 'Huyện Yên Dũng', 8),
(113, 'Huyện Yên Thế', 8),
(114, 'Thành phố Bắc Giang', 8),
(115, 'Huyện Ba Bể', 9),
(116, 'Huyện Bạch Thông', 9),
(117, 'Huyện Chợ Đồn', 9),
(118, 'Huyện Chợ Mới', 9),
(119, 'Huyện Na Rì', 9),
(120, 'Huyện Ngân Sơn', 9),
(121, 'Huyện Pác Nặm', 9),
(122, 'Thị xã Bắc Kạn', 9),
(123, 'Huyện Đông Hải', 10),
(124, 'Huyện Giá Rai', 10),
(125, 'Huyện Hòa Bình', 10),
(126, 'Huyện Hồng Dân', 10),
(127, 'Huyện Phước Long', 10),
(128, 'Huyện Vĩnh Lợi', 10),
(129, 'Thành Phố Bạc Liêu', 10),
(130, 'Huyện Gia Bình', 11),
(131, 'Huyện Lương Tài', 11),
(132, 'Huyện Quế Võ', 11),
(133, 'Huyện Thuận Thành', 11),
(134, 'Huyện Tiên Du', 11),
(135, 'Huyện Yên Phong', 11),
(136, 'Thành phố Bắc Ninh', 11),
(137, 'Thị xã Từ Sơn', 11),
(138, 'Huyện Ba Tri', 12),
(139, 'Huyện Bình Đại', 12),
(140, 'Huyện Châu Thành', 12),
(141, 'Huyện Chợ Lách', 12),
(142, 'Huyện Giồng Trôm', 12),
(143, 'Huyện Mỏ Cày Bắc', 12),
(144, 'Huyện Mỏ Cày Nam', 12),
(145, 'Huyện Thạnh Phú', 12),
(146, 'Thành phố Bến Tre', 12),
(147, 'Huyện An Lão', 13),
(148, 'Huyện An Nhơn', 13),
(149, 'Huyện Hoài  Ân', 13),
(150, 'Huyện Hoài Nhơn', 13),
(151, 'Huyện Phù Mỹ', 13),
(152, 'Huyện Phù cát', 13),
(153, 'Huyện Tây Sơn', 13),
(154, 'Huyện Tuy Phước', 13),
(155, 'Huyện Vân Canh', 13),
(156, 'Huyện Vĩnh Thạnh', 13),
(157, 'Thành phố Quy Nhơn', 13),
(158, 'Huyện Bến Cát', 14),
(159, 'Huyện Dầu Tiếng', 14),
(160, 'Huyện Dĩ An', 14),
(161, 'Huyện Phú Giáo', 14),
(162, 'Huyện Tân Uyên', 14),
(163, 'Huyện Thuận An', 14),
(164, 'Thị xã Thủ Dầu Một', 14),
(165, 'Huyện Bù Đăng', 15),
(166, 'Huyện Bù Đốp', 15),
(167, 'Huyện Bù Gia Mập', 15),
(168, 'Huyện Chơn Thành', 15),
(169, 'Huyện Đồng Phú', 15),
(170, 'Huyện Hớn Quản', 15),
(171, 'Huyện Lộc Ninh', 15),
(172, 'Thị xã Bình Long', 15),
(173, 'Thị xã Đồng Xoài', 15),
(174, 'Thị xã Phước Long', 15),
(175, 'Huyện  Đức Linh', 16),
(176, 'Huyện Bắc Bình', 16),
(177, 'Huyện Hàm Tân', 16),
(178, 'Huyện Hàm Thuận Bắc', 16),
(179, 'Huyện Hàm Thuận Nam', 16),
(180, 'Huyện Phú Qúi', 16),
(181, 'Huyện Tánh Linh', 16),
(182, 'Huyện Tuy Phong', 16),
(183, 'Thành phố Phan Thiết', 16),
(184, 'Thị xã La Gi', 16),
(185, 'Huyện Cái Nước', 17),
(186, 'Huyện Đầm Dơi', 17),
(187, 'Huyện Năm Căn', 17),
(188, 'Huyện Ngọc Hiển', 17),
(189, 'Huyện Phú Tân', 17),
(190, 'Huyện Thới Bình', 17),
(191, 'Huyện Trần Văn Thời', 17),
(192, 'Huyện U Minh', 17),
(193, 'Thành phố Cà Mau', 17),
(194, 'Huyện Bảo Lạc', 18),
(195, 'Huyện Bảo Lâm', 18),
(196, 'Huyện Hạ Lang', 18),
(197, 'Huyện Hà Quảng', 18),
(198, 'Huyện Hòa An', 18),
(199, 'Huyện Nguyên Bình', 18),
(200, 'Huyện Phục Hòa', 18),
(201, 'Huyện Quảng Uyên', 18),
(202, 'Huyện Thạch An', 18),
(203, 'Huyện Thông Nông', 18),
(204, 'Huyện Trà Lĩnh', 18),
(205, 'Huyện Trùng Khánh', 18),
(206, 'Thị xã Cao Bằng', 18),
(207, 'Huyện Buôn Đôn', 19),
(208, 'Huyện Cư Kuin', 19),
(209, 'Huyện Cư MGar', 19),
(210, 'Huyện Ea Kar', 19),
(211, 'Huyện Ea Súp', 19),
(212, 'Huyện EaHLeo', 19),
(213, 'Huyện Krông Ana', 19),
(214, 'Huyện Krông Bông', 19),
(215, 'Huyện Krông Búk', 19),
(216, 'Huyện Krông Năng', 19),
(217, 'Huyện Krông Pắc', 19),
(218, 'Huyện Lắk', 19),
(219, 'Huyện MDrắk', 19),
(220, 'Thành phố Buôn Ma Thuột', 19),
(221, 'Thị xã Buôn Hồ', 19),
(222, 'Huyện Cư Jút', 20),
(223, 'Huyện Đắk GLong', 20),
(224, 'Huyện Đắk Mil', 20),
(225, 'Huyện Đắk RLấp', 20),
(226, 'Huyện Đắk Song', 20),
(227, 'Huyện KRông Nô', 20),
(228, 'Huyện Tuy Đức', 20),
(229, 'Thị xã Gia Nghĩa', 20),
(230, 'Huyện Điện Biên', 21),
(231, 'Huyện Điện Biên Đông', 21),
(232, 'Huyện Mường Chà', 21),
(233, 'Huyện Mương Nhé', 21),
(234, 'Huyện Mường ảng', 21),
(235, 'Huyện Tủa Chùa', 21),
(236, 'Huyện Tuần Giáo', 21),
(237, 'Thành phố Điện Biên phủ', 21),
(238, 'Thị xã Mường Lay', 21),
(239, 'Huyện Cẩm Mỹ', 22),
(240, 'Huyện Định Quán', 22),
(241, 'Huyện Long Thành', 22),
(242, 'Huyện Nhơn Trạch', 22),
(243, 'Huyện Tân Phú', 22),
(244, 'Huyện Thống Nhất', 22),
(245, 'Huyện Trảng Bom', 22),
(246, 'Huyện Vĩnh Cửu', 22),
(247, 'Huyện Xuân Lộc', 22),
(248, 'Thành phố Biên Hòa', 22),
(249, 'Thị xã Long Khánh', 22),
(250, 'Huyện Cao Lãnh', 23),
(251, 'Huyện Châu Thành', 23),
(252, 'Huyện Hồng Ngự', 23),
(253, 'Huyện Lai Vung', 23),
(254, 'Huyện Lấp Vò', 23),
(255, 'Huyện Tam Nông', 23),
(256, 'Huyện Tân Hồng', 23),
(257, 'Huyện Thanh Bình', 23),
(258, 'Huyện Tháp Mười', 23),
(259, 'Thành phố Cao Lãnh', 23),
(260, 'Thị xã Hồng Ngự', 23),
(261, 'Thị xã Sa Đéc', 23),
(262, 'Huyện Chư Păh', 24),
(263, 'Huyện Chư Pưh', 24),
(264, 'Huyện Chư Sê', 24),
(265, 'Huyện ChưPRông', 24),
(266, 'Huyện Đăk Đoa', 24),
(267, 'Huyện Đăk Pơ', 24),
(268, 'Huyện Đức Cơ', 24),
(269, 'Huyện Ia Grai', 24),
(270, 'Huyện Ia Pa', 24),
(271, 'Huyện KBang', 24),
(272, 'Huyện KBang', 24),
(273, 'Huyện Kông Chro', 24),
(274, 'Huyện Krông Pa', 24),
(275, 'Huyện Mang Yang', 24),
(276, 'Huyện Phú Thiện', 24),
(277, 'Thành phố Plei Ku', 24),
(278, 'Thị xã AYun Pa', 24),
(279, 'Thị xã An Khê', 24),
(280, 'Huyện Bắc Mê', 25),
(281, 'Huyện Bắc Quang', 25),
(282, 'Huyện Đồng Văn', 25),
(283, 'Huyện Hoàng Su Phì', 25),
(284, 'Huyện Mèo Vạc', 25),
(285, 'Huyện Quản Bạ', 25),
(286, 'Huyện Quang Bình', 25),
(287, 'Huyện Vị Xuyên', 25),
(288, 'Huyện Xín Mần', 25),
(289, 'Huyện Yên Minh', 25),
(290, 'Thành Phố Hà Giang', 25),
(291, 'Huyện Bình Lục', 26),
(292, 'Huyện Duy Tiên', 26),
(293, 'Huyện Kim Bảng', 26),
(294, 'Huyện Lý Nhân', 26),
(295, 'Huyện Thanh Liêm', 26),
(296, 'Thành phố Phủ Lý', 26),
(297, 'Huyện Cẩm Xuyên', 27),
(298, 'Huyện Can Lộc', 27),
(299, 'Huyện Đức Thọ', 27),
(300, 'Huyện Hương Khê', 27),
(301, 'Huyện Hương Sơn', 27),
(302, 'Huyện Kỳ Anh', 27),
(303, 'Huyện Lộc Hà', 27),
(304, 'Huyện Nghi Xuân', 27),
(305, 'Huyện Thạch Hà', 27),
(306, 'Huyện Vũ Quang', 27),
(307, 'Thành phố Hà Tĩnh', 27),
(308, 'Thị xã Hồng Lĩnh', 27),
(309, 'Huyện Bình Giang', 28),
(310, 'Huyện Cẩm Giàng', 28),
(311, 'Huyện Gia Lộc', 28),
(312, 'Huyện Kim Thành', 28),
(313, 'Huyện Kinh Môn', 28),
(314, 'Huyện Nam Sách', 28),
(315, 'Huyện Ninh Giang', 28),
(316, 'Huyện Thanh Hà', 28),
(317, 'Huyện Thanh Miện', 28),
(318, 'Huyện Tứ Kỳ', 28),
(319, 'Thành phố Hải Dương', 28),
(320, 'Thị xã Chí Linh', 28),
(321, 'Huyện Châu Thành', 29),
(322, 'Huyện Châu Thành A', 29),
(323, 'Huyện Long Mỹ', 29),
(324, 'Huyện Phụng Hiệp', 29),
(325, 'Huyện Vị Thủy', 29),
(326, 'Thành Phố Vị Thanh', 29),
(327, 'Thị xã Ngã Bảy', 29),
(328, 'Huyện Cao Phong', 30),
(329, 'Huyện Đà Bắc', 30),
(330, 'Huyện Kim Bôi', 30),
(331, 'Huyện Kỳ Sơn', 30),
(332, 'Huyện Lạc Sơn', 30),
(333, 'Huyện Lạc Thủy', 30),
(334, 'Huyện Lương Sơn', 30),
(335, 'Huyện Mai Châu', 30),
(336, 'Huyện Tân Lạc', 30),
(337, 'Huyện Yên Thủy', 30),
(338, 'Thành phố Hòa Bình', 30),
(339, 'Huyện Ân Thi', 31),
(340, 'Huyện Khoái Châu', 31),
(341, 'Huyện Kim Động', 31),
(342, 'Huyện Mỹ Hào', 31),
(343, 'Huyện Phù Cừ', 31),
(344, 'Huyện Tiên Lữ', 31),
(345, 'Huyện Văn Giang', 31),
(346, 'Huyện Văn Lâm', 31),
(347, 'Huyện Yên Mỹ', 31),
(348, 'Thành phố Hưng Yên', 31),
(349, 'Huyện Cam Lâm', 32),
(350, 'Huyện Diên Khánh', 32),
(351, 'Huyện Khánh Sơn', 32),
(352, 'Huyện Khánh Vĩnh', 32),
(353, 'Huyện Ninh Hòa', 32),
(354, 'Huyện Trường Sa', 32),
(355, 'Huyện Vạn Ninh', 32),
(356, 'Thành phố Nha Trang', 32),
(357, 'Thị xã Cam Ranh', 32),
(358, 'Huyện An Biên', 33),
(359, 'Huyện An Minh', 33),
(360, 'Huyện Châu Thành', 33),
(361, 'Huyện Giang Thành', 33),
(362, 'Huyện Giồng Riềng', 33),
(363, 'Huyện Gò Quao', 33),
(364, 'Huyện Hòn Đất', 33),
(365, 'Huyện Kiên Hải', 33),
(366, 'Huyện Kiên Lương', 33),
(367, 'Huyện Phú Quốc', 33),
(368, 'Huyện Tân Hiệp', 33),
(369, 'Huyện U Minh Thượng', 33),
(370, 'Huyện Vĩnh Thuận', 33),
(371, 'Thành phố Rạch Giá', 33),
(372, 'Thị xã Hà Tiên', 33),
(373, 'Huyện Đắk Glei', 34),
(374, 'Huyện Đắk Hà', 34),
(375, 'Huyện Đắk Tô', 34),
(376, 'Huyện Kon Plông', 34),
(377, 'Huyện Kon Rẫy', 34),
(378, 'Huyện Ngọc Hồi', 34),
(379, 'Huyện Sa Thầy', 34),
(380, 'Huyện Tu Mơ Rông', 34),
(381, 'Thành phố Kon Tum', 34),
(382, 'Huyện Mường Tè', 35),
(383, 'Huyện Phong Thổ', 35),
(384, 'Huyện Sìn Hồ', 35),
(385, 'Huyện Tam Đường', 35),
(386, 'Huyện Tân Uyên', 35),
(387, 'Huyện Than Uyên', 35),
(388, 'Thị xã Lai Châu', 35),
(389, 'Huyện Bảo Lâm', 36),
(390, 'Huyện Cát Tiên', 36),
(391, 'Huyện Đạ Huoai', 36),
(392, 'Huyện Đạ Tẻh', 36),
(393, 'Huyện Đam Rông', 36),
(394, 'Huyện Di Linh', 36),
(395, 'Huyện Đơn Dương', 36),
(396, 'Huyện Đức Trọng', 36),
(397, 'Huyện Lạc Dương', 36),
(398, 'Huyện Lâm Hà', 36),
(399, 'Thành phố Bảo Lộc', 36),
(400, 'Thành phố Đà Lạt', 36),
(401, 'Huyện Bắc Sơn', 37),
(402, 'Huyện Bình Gia', 37),
(403, 'Huyện Cao Lộc', 37),
(404, 'Huyện Chi Lăng', 37),
(405, 'Huyện Đình Lập', 37),
(406, 'Huyện Hữu Lũng', 37),
(407, 'Huyện Lộc Bình', 37),
(408, 'Huyện Tràng Định', 37),
(409, 'Huyện Văn Lãng', 37),
(410, 'Huyện Văn Quan', 37),
(411, 'Thành phố Lạng Sơn', 37),
(412, 'Huyện Bắc Hà', 38),
(413, 'Huyện Bảo Thắng', 38),
(414, 'Huyện Bảo Yên', 38),
(415, 'Huyện Bát Xát', 38),
(416, 'Huyện Mường Khương', 38),
(417, 'Huyện Sa Pa', 38),
(418, 'Huyện Si Ma Cai', 38),
(419, 'Huyện Văn Bàn', 38),
(420, 'Thành phố Lào Cai', 38),
(421, 'Huyện Bến Lức', 39),
(422, 'Huyện Cần Đước', 39),
(423, 'Huyện Cần Giuộc', 39),
(424, 'Huyện Châu Thành', 39),
(425, 'Huyện Đức Hòa', 39),
(426, 'Huyện Đức Huệ', 39),
(427, 'Huyện Mộc Hóa', 39),
(428, 'Huyện Tân Hưng', 39),
(429, 'Huyện Tân Thạnh', 39),
(430, 'Huyện Tân Trụ', 39),
(431, 'Huyện Thạnh Hóa', 39),
(432, 'Huyện Thủ Thừa', 39),
(433, 'Huyện Vĩnh Hưng', 39),
(434, 'Thành phố Tân An', 39),
(435, 'Huyện Giao Thủy', 40),
(436, 'Huyện Hải Hậu', 40),
(437, 'Huyện Mỹ Lộc', 40),
(438, 'Huyện Nam Trực', 40),
(439, 'Huyện Nghĩa Hưng', 40),
(440, 'Huyện Trực Ninh', 40),
(441, 'Huyện Vụ Bản', 40),
(442, 'Huyện Xuân Trường', 40),
(443, 'Huyện ý Yên', 40),
(444, 'Thành phố Nam Định', 40),
(445, 'Huyện Anh Sơn', 41),
(446, 'Huyện Con Cuông', 41),
(447, 'Huyện Diễn Châu', 41),
(448, 'Huyện Đô Lương', 41),
(449, 'Huyện Hưng Nguyên', 41),
(450, 'Huyện Kỳ Sơn', 41),
(451, 'Huyện Nam Đàn', 41),
(452, 'Huyện Nghi Lộc', 41),
(453, 'Huyện Nghĩa Đàn', 41),
(454, 'Huyện Quế Phong', 41),
(455, 'Huyện Quỳ Châu', 41),
(456, 'Huyện Quỳ Hợp', 41),
(457, 'Huyện Quỳnh Lưu', 41),
(458, 'Huyện Tân Kỳ', 41),
(459, 'Huyện Thanh Chương', 41),
(460, 'Huyện Tương Dương', 41),
(461, 'Huyện Yên Thành', 41),
(462, 'Thành phố Vinh', 41),
(463, 'Thị xã Cửa Lò', 41),
(464, 'Thị xã Thái Hòa', 41),
(465, 'Huyện Gia Viễn', 42),
(466, 'Huyện Hoa Lư', 42),
(467, 'Huyện Kim Sơn', 42),
(468, 'Huyện Nho Quan', 42),
(469, 'Huyện Yên Khánh', 42),
(470, 'Huyện Yên Mô', 42),
(471, 'Thành phố Ninh Bình', 42),
(472, 'Thị xã Tam Điệp', 42),
(473, 'Huyên Bác ái', 43),
(474, 'Huyện Ninh Hải', 43),
(475, 'Huyện Ninh Phước', 43),
(476, 'Huyện Ninh Sơn', 43),
(477, 'Huyện Thuận Bắc', 43),
(478, 'Huyện Thuận Nam', 43),
(479, 'Thành phố Phan Rang-Tháp Chàm', 43),
(480, 'Huyện Cẩm Khê', 44),
(481, 'Huyện Đoan Hùng', 44),
(482, 'Huyện Hạ Hòa', 44),
(483, 'Huyện Lâm Thao', 44),
(484, 'Huyện Phù Ninh', 44),
(485, 'Huyện Tam Nông', 44),
(486, 'Huyện Tân Sơn', 44),
(487, 'Huyện Thanh Ba', 44),
(488, 'Huyện Thanh Sơn', 44),
(489, 'Huyện Thanh Thủy', 44),
(490, 'Huyện Yên Lập', 44),
(491, 'Thành phố Việt Trì', 44),
(492, 'Thị xã Phú Thọ', 44),
(493, 'Huyện Đông Hòa', 45),
(494, 'Huyện Đồng Xuân', 45),
(495, 'Huyện Phú Hòa', 45),
(496, 'Huyện Sơn Hòa', 45),
(497, 'Huyện Sông Hinh', 45),
(498, 'Huyện Tây Hòa', 45),
(499, 'Huyện Tuy An', 45),
(500, 'Thành phố Tuy Hòa', 45),
(501, 'Thị xã Sông Cầu', 45),
(502, 'Huyện Bố Trạch', 46),
(503, 'Huyện Lệ Thủy', 46),
(504, 'Huyện MinhHoá', 46),
(505, 'Huyện Quảng Ninh', 46),
(506, 'Huyện Quảng Trạch', 46),
(507, 'Huyện Tuyên Hoá', 46),
(508, 'Thành phố Đồng Hới', 46),
(509, 'Huyện Bắc Trà My', 47),
(510, 'Huyện Đại Lộc', 47),
(511, 'Huyện Điện Bàn', 47),
(512, 'Huyện Đông Giang', 47),
(513, 'Huyện Duy Xuyên', 47),
(514, 'Huyện Hiệp Đức', 47),
(515, 'Huyện Nam Giang', 47),
(516, 'Huyện Nam Trà My', 47),
(517, 'Huyện Nông Sơn', 47),
(518, 'Huyện Núi Thành', 47),
(519, 'Huyện Phú Ninh', 47),
(520, 'Huyện Phước Sơn', 47),
(521, 'Huyện Quế Sơn', 47),
(522, 'Huyện Tây Giang', 47),
(523, 'Huyện Thăng Bình', 47),
(524, 'Huyện Tiên Phước', 47),
(525, 'Thành phố Hội An', 47),
(526, 'Thành phố Tam Kỳ', 47),
(527, 'Huyện Ba Tơ', 48),
(528, 'Huyện Bình Sơn', 48),
(529, 'Huyện Đức Phổ', 48),
(530, 'Huyện Lý sơn', 48),
(531, 'Huyện Minh Long', 48),
(532, 'Huyện Mộ Đức', 48),
(533, 'Huyện Nghĩa Hành', 48),
(534, 'Huyện Sơn Hà', 48),
(535, 'Huyện Sơn Tây', 48),
(536, 'Huyện Sơn Tịnh', 48),
(537, 'Huyện Tây Trà', 48),
(538, 'Huyện Trà Bồng', 48),
(539, 'Huyện Tư Nghĩa', 48),
(540, 'Thành phố Quảng Ngãi', 48),
(541, 'Huyện Ba Chẽ', 49),
(542, 'Huyện Bình Liêu', 49),
(543, 'Huyện Cô Tô', 49),
(544, 'Huyện Đầm Hà', 49),
(545, 'Huyện Đông Triều', 49),
(546, 'Huyện Hải Hà', 49),
(547, 'Huyện Hoành Bồ', 49),
(548, 'Huyện Tiên Yên', 49),
(549, 'Huyện Vân Đồn', 49),
(550, 'Huyện Yên Hưng', 49),
(551, 'Thành phố Hạ Long', 49),
(552, 'Thành phố Móng Cái', 49),
(553, 'Thị xã Cẩm Phả', 49),
(554, 'Thị xã Uông Bí', 49),
(555, 'Huyện Cam Lộ', 50),
(556, 'Huyện Cồn Cỏ', 50),
(557, 'Huyện Đa Krông', 50),
(558, 'Huyện Gio Linh', 50),
(559, 'Huyện Hải Lăng', 50),
(560, 'Huyện Hướng Hóa', 50),
(561, 'Huyện Triệu Phong', 50),
(562, 'Huyện Vính Linh', 50),
(563, 'Thành phố Đông Hà', 50),
(564, 'Thị xã Quảng Trị', 50),
(565, 'Huyện Châu Thành', 51),
(566, 'Huyện Cù Lao Dung', 51),
(567, 'Huyện Kế Sách', 51),
(568, 'Huyện Long Phú', 51),
(569, 'Huyện Mỹ Tú', 51),
(570, 'Huyện Mỹ Xuyên', 51),
(571, 'Huyện Ngã Năm', 51),
(572, 'Huyện Thạnh Trị', 51),
(573, 'Huyện Trần Đề', 51),
(574, 'Huyện Vĩnh Châu', 51),
(575, 'Thành phố Sóc Trăng', 51),
(576, 'Huyện Bắc Yên', 52),
(577, 'Huyện Mai Sơn', 52),
(578, 'Huyện Mộc Châu', 52),
(579, 'Huyện Mường La', 52),
(580, 'Huyện Phù Yên', 52),
(581, 'Huyện Quỳnh Nhai', 52),
(582, 'Huyện Sông Mã', 52),
(583, 'Huyện Sốp Cộp', 52),
(584, 'Huyện Thuận Châu', 52),
(585, 'Huyện Yên Châu', 52),
(586, 'Thành phố Sơn La', 52),
(587, 'Huyện Bến Cầu', 53),
(588, 'Huyện Châu Thành', 53),
(589, 'Huyện Dương Minh Châu', 53),
(590, 'Huyện Gò Dầu', 53),
(591, 'Huyện Hòa Thành', 53),
(592, 'Huyện Tân Biên', 53),
(593, 'Huyện Tân Châu', 53),
(594, 'Huyện Trảng Bàng', 53),
(595, 'Thị xã Tây Ninh', 53),
(596, 'Huyện Đông Hưng', 54),
(597, 'Huyện Hưng Hà', 54),
(598, 'Huyện Kiến Xương', 54),
(599, 'Huyện Quỳnh Phụ', 54),
(600, 'Huyện Thái Thụy', 54),
(601, 'Huyện Tiền Hải', 54),
(602, 'Huyện Vũ Thư', 54),
(603, 'Thành phố Thái Bình', 54),
(604, 'Huyện Đại Từ', 55),
(605, 'Huyện Định Hóa', 55),
(606, 'Huyện Đồng Hỷ', 55),
(607, 'Huyện Phổ Yên', 55),
(608, 'Huyện Phú Bình', 55),
(609, 'Huyện Phú Lương', 55),
(610, 'Huyện Võ Nhai', 55),
(611, 'Thành phố Thái Nguyên', 55),
(612, 'Thị xã Sông Công', 55),
(613, 'Huyện Bá Thước', 56),
(614, 'Huyện Cẩm Thủy', 56),
(615, 'Huyện Đông Sơn', 56),
(616, 'Huyện Hà Trung', 56),
(617, 'Huyện Hậu Lộc', 56),
(618, 'Huyện Hoằng Hóa', 56),
(619, 'Huyện Lang Chánh', 56),
(620, 'Huyện Mường Lát', 56),
(621, 'Huyện Nga Sơn', 56),
(622, 'Huyện Ngọc Lặc', 56),
(623, 'Huyện Như Thanh', 56),
(624, 'Huyện Như Xuân', 56),
(625, 'Huyện Nông Cống', 56),
(626, 'Huyện Quan Hóa', 56),
(627, 'Huyện Quan Sơn', 56),
(628, 'Huyện Quảng Xương', 56),
(629, 'Huyện Thạch Thành', 56),
(630, 'Huyện Thiệu Hóa', 56),
(631, 'Huyện Thọ Xuân', 56),
(632, 'Huyện Thường Xuân', 56),
(633, 'Huyện Tĩnh Gia', 56),
(634, 'Huyện Triệu Sơn', 56),
(635, 'Huyện Vĩnh Lộc', 56),
(636, 'Huyện Yên Định', 56),
(637, 'Thành phố Thanh Hóa', 56),
(638, 'Thị xã Bỉm Sơn', 56),
(639, 'Thị xã Sầm Sơn', 56),
(640, 'Huyện A Lưới', 57),
(641, 'Huyện Hương Trà', 57),
(642, 'Huyện Nam Dông', 57),
(643, 'Huyện Phong Điền', 57),
(644, 'Huyện Phú Lộc', 57),
(645, 'Huyện Phú Vang', 57),
(646, 'Huyện Quảng Điền', 57),
(647, 'Thành phố Huế', 57),
(648, 'thị xã Hương Thủy', 57),
(649, 'Huyện Cái Bè', 58),
(650, 'Huyện Cai Lậy', 58),
(651, 'Huyện Châu Thành', 58),
(652, 'Huyện Chợ Gạo', 58),
(653, 'Huyện Gò Công Đông', 58),
(654, 'Huyện Gò Công Tây', 58),
(655, 'Huyện Tân Phú Đông', 58),
(656, 'Huyện Tân Phước', 58),
(657, 'Thành phố Mỹ Tho', 58),
(658, 'Thị xã Gò Công', 58),
(659, 'Huyện Càng Long', 59),
(660, 'Huyện Cầu Kè', 59),
(661, 'Huyện Cầu Ngang', 59),
(662, 'Huyện Châu Thành', 59),
(663, 'Huyện Duyên Hải', 59),
(664, 'Huyện Tiểu Cần', 59),
(665, 'Huyện Trà Cú', 59),
(666, 'Thành phố Trà Vinh', 59),
(667, 'Huyện Chiêm Hóa', 60),
(668, 'Huyện Hàm Yên', 60),
(669, 'Huyện Na hang', 60),
(670, 'Huyện Sơn Dương', 60),
(671, 'Huyện Yên Sơn', 60),
(672, 'Thành phố Tuyên Quang', 60),
(673, 'Huyện Bình Minh', 61),
(674, 'Huyện Bình Tân', 61),
(675, 'Huyện Long Hồ', 61),
(676, 'Huyện Mang Thít', 61),
(677, 'Huyện Tam Bình', 61),
(678, 'Huyện Trà Ôn', 61),
(679, 'Huyện Vũng Liêm', 61),
(680, 'Thành phố Vĩnh Long', 61),
(681, 'Huyện Bình Xuyên', 62),
(682, 'Huyện Lập Thạch', 62),
(683, 'Huyện Sông Lô', 62),
(684, 'Huyện Tam Đảo', 62),
(685, 'Huyện Tam Dương', 62),
(686, 'Huyện Vĩnh Tường', 62),
(687, 'Huyện Yên Lạc', 62),
(688, 'Thành phố Vĩnh Yên', 62),
(689, 'Thị xã Phúc Yên', 62),
(690, 'Huyện Lục Yên', 63),
(691, 'Huyện Mù Cang Chải', 63),
(692, 'Huyện Trạm Tấu', 63),
(693, 'Huyện Trấn Yên', 63),
(694, 'Huyện Văn Chấn', 63),
(695, 'Huyện Văn Yên', 63),
(696, 'Huyện Yên Bình', 63),
(697, 'Thành phố Yên Bái', 63),
(698, 'Thị xã Nghĩa Lộ', 63);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `air_cond` tinyint(1) NOT NULL DEFAULT 0,
  `area` int(11) NOT NULL,
  `bath_rooms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `kitchen` enum('Bếp chung','Bếp riêng','Không nấu ăn') COLLATE utf8mb4_unicode_ci NOT NULL,
  `internet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `water_price` double NOT NULL,
  `electric_price` double NOT NULL,
  `bancony` tinyint(1) NOT NULL DEFAULT 0,
  `general_owner` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `facilities`
--

INSERT INTO `facilities` (`id`, `air_cond`, `area`, `bath_rooms`, `kitchen`, `internet`, `other`, `price`, `rooms`, `created_at`, `updated_at`, `water_price`, `electric_price`, `bancony`, `general_owner`) VALUES
(1, 1, 35, 'Khép kín, có nóng lạnh', 'Bếp chung', '70000VNĐ 1 tháng', NULL, '3000000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(2, 0, 40, 'Khép kín, có nóng lạnh', 'Bếp riêng', '80000VNĐ 1 tháng', NULL, '3500000', 3, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(3, 0, 20, 'Chung, có nóng lạnh', 'Bếp chung', '50000VNĐ 1 tháng', NULL, '1500000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(4, 1, 25, 'Khép kín, có nóng lạnh', 'Bếp chung', '50000VNĐ 1 tháng', NULL, '2000000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 0),
(5, 1, 25, 'Khép kín, có nóng lạnh', 'Bếp riêng', '50000VNĐ 1 tháng', NULL, '2500000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(6, 1, 20, 'Khép kín, có nóng lạnh', 'Không nấu ăn', '60000VNĐ 1 tháng', NULL, '1200000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(7, 0, 25, 'Khép kín, có nóng lạnh', 'Không nấu ăn', '60000VNĐ 1 tháng', NULL, '1800000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 1),
(8, 1, 35, 'Khép kín, có nóng lạnh', 'Bếp riêng', '60000VNĐ 1 tháng', NULL, '2800000', 3, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(9, 1, 20, 'Khép kín, không có nóng lạnh', 'Bếp chung', '60000VNĐ 1 tháng', NULL, '1500000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 1),
(10, 0, 27, 'Khép kín, có nóng lạnh', 'Bếp chung', '60000VNĐ 1 tháng', NULL, '2100000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 1),
(11, 0, 25, 'Khép kín, có nóng lạnh', 'Bếp chung', '60000VNĐ 1 tháng', NULL, '2000000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 0),
(12, 1, 20, 'Khép kín, không có nóng lạnh', 'Không nấu ăn', '60000VNĐ/tháng', NULL, '1800000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(13, 0, 26, 'Khép kín, có nóng lạnh', 'Bếp riêng', '60000VNĐ/tháng', NULL, '1500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(14, 1, 31, 'Khép kín, có nóng lạnh', 'Bếp riêng', '70000VNĐ/tháng', NULL, '2000000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(15, 1, 30, 'Khép kín, có nóng lạnh', 'Bếp chung', '70000VNĐ/tháng', NULL, '2800000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(16, 0, 15, 'Khép kín, có nóng lạnh', 'Không nấu ăn', '70000VNĐ/tháng', NULL, '1000000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(17, 0, 27, 'Khép kín, có nóng lạnh', 'Bếp riêng', '70000VNĐ/tháng', NULL, '2500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(18, 0, 20, 'Khép kín, không có nóng lạnh', 'Bếp riêng', '55000VNĐ/tháng', NULL, '1200000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 0),
(19, 1, 45, 'Khép kín, có nóng lạnh', 'Bếp riêng', '80000VNĐ/tháng', NULL, '4000000', 3, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 0),
(20, 1, 25, 'Khép kín, có nóng lạnh', 'Bếp riêng', '60000VNĐ/tháng', NULL, '2200000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(21, 0, 35, 'Khép kín,Không có nóng lạnh', 'Bếp chung', '50000VNĐ/tháng', NULL, '2000000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(22, 0, 25, 'Khép kín, không có nóng lạnh', 'Bếp riêng', '65000VNĐ/tháng', NULL, '1800000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(23, 1, 35, 'Khép kín, có nóng lạnh', 'Bếp riêng', '70000VNĐ/tháng', NULL, '2600000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(24, 0, 40, 'Khép kín, có nóng lạnh', 'Bếp riêng', '80000VNĐ/tháng', NULL, '2000000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(25, 1, 18, 'Chung, có nóng lạnh', 'Bếp chung', '70000VNĐ/tháng', NULL, '900000', 1, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(26, 1, 35, 'Khép kín, có nóng lạnh', 'Bếp riêng', '75000VNĐ/tháng', NULL, '3000000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 0),
(27, 1, 40, 'Khép kín, không có nóng lạnh', 'Bếp riêng', '70000VNĐ/tháng', NULL, '3600000', 3, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 0),
(28, 1, 30, 'Khép kín, có nóng lạnh', 'Bếp riêng', '70000VNĐ/tháng', NULL, '2500000', 3, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 0),
(29, 0, 22, 'Chung, có nóng lạnh', 'Bếp chung', '70000VNĐ/tháng', NULL, '1400000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 0, 1),
(30, 1, 20, 'Khép kín, có nóng lạnh', 'Bếp riêng', '60000VNĐ/tháng', NULL, '1600000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 3500, 1600, 1, 1),
(31, 1, 20, '1', 'Bếp riêng', '1', NULL, '3500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 20000, 3000, 0, 0),
(32, 1, 20, '1', 'Bếp riêng', '1', NULL, '3500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 20000, 3000, 0, 0),
(33, 1, 20, '1', 'Bếp riêng', '1', NULL, '3500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 20000, 3000, 0, 0),
(34, 1, 20, '1', 'Bếp riêng', '1', NULL, '3500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 20000, 3000, 0, 0),
(35, 1, 20, '1', 'Bếp riêng', '1', NULL, '3500000', 2, '2020-12-02 14:37:44', '2020-12-02 14:37:44', 20000, 3000, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourites`
--

CREATE TABLE `favourites` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favourites`
--

INSERT INTO `favourites` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2020-12-02 14:38:16', '2020-12-02 14:38:16'),
(2, 3, 2, '2020-12-02 14:38:16', '2020-12-02 14:38:16'),
(3, 4, 5, '2020-12-02 14:38:16', '2020-12-02 14:38:16'),
(4, 1, 4, '2020-12-02 14:38:16', '2020-12-02 14:38:16'),
(5, 2, 3, '2020-12-02 14:38:16', '2020-12-02 14:38:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `img_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `img_src`, `post_id`, `created_at`, `updated_at`) VALUES
(1, '1_img1.jpg', 1, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(2, '1_img2.jpg', 1, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(3, '1_img3.jpg', 1, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(4, '2_img1.jpg', 2, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(5, '2_img2.jpg', 2, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(6, '2_img3.jpg', 2, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(7, '2_img4.jpg', 2, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(8, '2_img5.jpg', 2, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(9, '2_img6.jpg', 2, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(10, '3_img1.jpg', 3, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(11, '3_img2.jpg', 3, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(12, '3_img3.jpg', 3, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(13, '4_img1.jpg', 4, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(14, '4_img2.jpg', 4, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(15, '4_img3.jpg', 4, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(16, '4_img4.jpg', 4, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(17, '5_img1.jpg', 5, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(18, '5_img2.jpg', 5, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(19, '5_img3.jpg', 5, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(20, '5_img4.jpg', 5, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(21, '6_img1.jpg', 6, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(22, '6_img2.jpg', 6, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(23, '6_img3.jpg', 6, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(24, '7_img1.jpg', 7, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(25, '7_img2.jpg', 7, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(26, '7_img3.jpg', 7, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(27, '7_img4.jpg', 7, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(28, '8_img1.jpg', 8, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(29, '8_img2.jpg', 8, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(30, '8_img3.jpg', 8, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(31, '8_img4.jpg', 8, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(32, '9_img1.jpg', 9, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(33, '9_img2.jpg', 9, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(34, '9_img3.jpg', 9, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(35, '9_img4.jpg', 9, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(36, '10_img1.jpg', 10, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(37, '10_img2.jpg', 10, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(38, '10_img3.jpg', 10, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(39, '11_img1.jpg', 11, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(40, '11_img2.jpg', 11, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(41, '11_img3.jpg', 11, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(42, '12_img1.jpg', 12, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(43, '12_img2.jpg', 12, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(44, '12_img3.jpg', 12, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(45, '12_img4.jpg', 12, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(46, '13_img1.jpg', 13, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(47, '13_img2.jpg', 13, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(48, '13_img3.jpg', 13, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(49, '13_img4.jpg', 13, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(50, '14_img1.jpg', 14, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(51, '14_img2.jpg', 14, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(52, '14_img3.jpg', 14, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(53, '14_img4.jpg', 14, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(54, '15_img1.jpg', 15, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(55, '15_img2.jpg', 15, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(56, '15_img3.jpg', 15, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(57, '16_img1.jpg', 16, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(58, '16_img2.jpg', 16, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(59, '16_img3.jpg', 16, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(60, '17_img1.jpeg', 17, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(61, '17_img2.jpeg', 17, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(62, '17_img3.jpeg', 17, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(63, '17_img4.jpeg', 17, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(64, '18_img1.jpg', 18, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(65, '18_img2.jpg', 18, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(66, '18_img3.jpg', 18, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(67, '19_img1.jpeg', 19, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(68, '19_img2.jpeg', 19, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(69, '19_img3.jpeg', 19, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(70, '19_img4.jpeg', 19, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(71, '20_img1.jpeg', 20, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(72, '20_img2.jpeg', 20, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(73, '20_img3.jpeg', 20, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(74, '20_img4.jpeg', 20, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(75, '20_img5.jpeg', 20, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(76, '21_img1.jpg', 21, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(77, '21_img2.jpg', 21, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(78, '21_img3.jpg', 21, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(79, '21_img4.jpg', 21, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(80, '22_img1.jpg', 22, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(81, '22_img2.jpg', 22, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(82, '22_img3.jpg', 22, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(83, '22_img4.jpg', 22, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(84, '22_img5.jpg', 22, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(85, '23_img1.jpg', 23, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(86, '23_img2.jpg', 23, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(87, '23_img3.jpg', 23, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(88, '24_img1.jpg', 24, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(89, '24_img2.jpg', 24, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(90, '24_img3.jpg', 24, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(91, '24_img4.jpg', 24, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(92, '25_img1.png', 25, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(93, '25_img2.png', 25, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(94, '25_img3.png', 25, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(95, '26_img1.jpeg', 26, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(96, '26_img2.jpg', 26, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(97, '26_img3.jpg', 26, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(98, '26_img4.jpeg', 26, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(99, '27_img1.jpg', 27, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(100, '27_img2.jpg', 27, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(101, '27_img3.jpg', 27, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(102, '27_img4.jpg', 27, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(103, '27_img5.jpg', 27, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(104, '29_img1.jpg', 29, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(105, '29_img2.jpg', 29, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(106, '29_img3.jpg', 29, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(107, '29_img4.jpg', 29, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(108, '30_img1.jpg', 30, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(109, '30_img2.jpg', 30, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(110, '30_img3.jpg', 30, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(111, '30_img4.jpg', 30, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(112, '28_img1.jpg', 28, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(113, '28_img2.jpg', 28, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(114, '28_img3.jpg', 28, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(115, '28_img4.jpg', 28, '2020-12-02 14:38:33', '2020-12-02 14:38:33'),
(116, '28_img5.jpg', 28, '2020-12-02 14:38:33', '2020-12-02 14:38:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_11_18_044437_create_admin_table', 1),
(2, '2020_11_18_044559_create_conversation_table', 2),
(3, '2020_11_18_044652_create_facilities_table', 2),
(4, '2020_11_18_044748_create_favourites_table', 2),
(5, '2020_11_18_044805_create_images_table', 2),
(6, '2020_11_18_044833_create_owners_table', 3),
(7, '2020_11_18_044855_create_posts_table', 3),
(8, '2020_11_18_044915_create_reacts_table', 3),
(9, '2020_11_18_044946_create_renters_table', 3),
(10, '2020_11_18_045010_create_reviews_table', 3),
(11, '2020_11_18_045033_create_types_table', 3),
(12, '2020_11_18_045110_create_address_table', 3),
(13, '2020_11_18_052014_create_chat_table', 3),
(14, '2014_10_12_100000_create_password_resets_table', 4),
(15, '2020_11_29_082123_add_paid_to_users_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities_id` int(11) NOT NULL,
  `react_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isRecommended` tinyint(1) NOT NULL,
  `remain` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `address_id`, `user_id`, `description`, `facilities_id`, `react_id`, `status`, `title`, `type_id`, `created_at`, `updated_at`, `isRecommended`, `remain`) VALUES
(1, 1, 1, 'Nhà đẹp giá rẻ', 1, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 0, 0),
(2, 3, 5, 'Phòng rộng rãi thoáng mát', 2, 2, 1, 'Nhà cho thuê', 3, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 0, 1),
(3, 2, 2, 'Phòng rộng rãi thoáng mát', 3, 3, 0, 'Nhà cho thuê', 3, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(4, 4, 4, 'Phòng rộng rãi thoáng mát', 4, 5, 1, 'Nhà cho thuê', 2, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(5, 5, 3, 'Phòng rộng rãi thoáng mát', 5, 4, 0, 'Nhà cho thuê', 5, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 0),
(6, 6, 5, 'Nhà đẹp giá rẻ', 6, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(7, 7, 5, 'Nhà đẹp giá rẻ', 7, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(8, 8, 5, 'Nhà đẹp giá rẻ', 8, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(9, 9, 5, 'Nhà đẹp giá rẻ', 9, 1, 0, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 0),
(10, 10, 5, 'Nhà đẹp giá rẻ', 10, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(11, 11, 5, 'Nhà đẹp giá rẻ', 11, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(12, 12, 5, 'Nhà đẹp giá rẻ', 12, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(13, 13, 5, 'Nhà đẹp giá rẻ', 13, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(14, 14, 5, 'Nhà đẹp giá rẻ', 14, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(15, 15, 5, 'Nhà đẹp giá rẻ', 15, 1, 0, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(16, 16, 5, 'Nhà đẹp giá rẻ', 16, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(17, 17, 5, 'Nhà đẹp giá rẻ', 17, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(18, 18, 5, 'Nhà đẹp giá rẻ', 18, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 0),
(19, 19, 5, 'Nhà đẹp giá rẻ', 19, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(20, 20, 5, 'Nhà đẹp giá rẻ', 20, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(21, 21, 5, 'Nhà đẹp giá rẻ', 21, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(22, 22, 5, 'Nhà đẹp giá rẻ', 22, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(23, 23, 5, 'Nhà đẹp giá rẻ', 23, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(24, 24, 5, 'Nhà đẹp giá rẻ', 24, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(25, 25, 5, 'Nhà đẹp giá rẻ', 25, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(26, 26, 5, 'Nhà đẹp giá rẻ', 26, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(27, 27, 5, 'Nhà đẹp giá rẻ', 27, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(28, 28, 5, 'Nhà đẹp giá rẻ', 28, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(29, 29, 5, 'Nhà đẹp giá rẻ', 29, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1),
(30, 30, 5, 'Nhà đẹp giá rẻ', 30, 1, 1, 'Nhà cho thuê', 1, '2020-12-02 14:38:49', '2020-12-02 14:38:49', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reacts`
--

CREATE TABLE `reacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `favourites_id` int(11) NOT NULL,
  `like_number` int(11) NOT NULL DEFAULT 0,
  `report_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reacts`
--

INSERT INTO `reacts` (`id`, `favourites_id`, `like_number`, `report_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2020-12-02 14:39:33', '2020-12-02 14:39:33'),
(2, 2, 4, 0, '2020-12-02 14:39:33', '2020-12-02 14:39:33'),
(3, 3, 6, 0, '2020-12-02 14:39:33', '2020-12-02 14:39:33'),
(4, 4, 3, 0, '2020-12-02 14:39:33', '2020-12-02 14:39:33'),
(5, 5, 2, 0, '2020-12-02 14:39:33', '2020-12-02 14:39:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_avt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `post_id`, `user_id`, `created_at`, `updated_at`, `user_name`, `user_avt`, `rating`) VALUES
(1, 'Đẹp', 2, 1, '2020-12-02 14:39:34', '2020-12-02 14:39:34', 'nga', 'user_1.jfif', 0),
(2, 'Không giống hình', 2, 2, '2020-12-02 14:39:34', '2020-12-02 14:39:34', 'nga', 'user_2.jfif', 0),
(3, 'Rộng', 3, 3, '2020-12-02 14:39:34', '2020-12-02 14:39:34', 'nga', 'user_3.jfif', 0),
(4, 'Hơi xấu', 4, 4, '2020-12-02 14:39:34', '2020-12-02 14:39:34', 'nga', 'user_4.jfif', 0),
(5, 'Đẹp', 5, 5, '2020-12-02 14:39:34', '2020-12-02 14:39:34', 'nga', 'user_5.jfif', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Phòng trọ', '2020-12-02 14:39:34', '2020-12-02 14:39:34'),
(2, 'Chung cư mini', '2020-12-02 14:39:34', '2020-12-02 14:39:34'),
(3, 'Nhà nguyên căn', '2020-12-02 14:39:34', '2020-12-02 14:39:34'),
(4, 'Chung cư nguyên căn', '2020-12-02 14:39:34', '2020-12-02 14:39:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `identification` varchar(55) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(55) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `img_src` varchar(255) NOT NULL DEFAULT 'avt_default.png',
  `role` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address_id`, `identification`, `password`, `phone_number`, `created_at`, `updated_at`, `img_src`, `role`, `description`) VALUES
(1, 'nga', 'nnnnn@gmail.com', 1, '1234567', '$2y$10$NSV1s.xiP4FqtQKMOOoOJ./l66SEyz2ZKMzQbKLcS1pCtLfp1oYia', '1234567', '2020-12-02', '2020-12-02', 'user_1.jfif', 1, 'Mang đến chỗ ở tốt nhất'),
(2, 'nga', 'kk@gmail.com', 2, '1234567', '$2y$10$rnGC2.EEtZ3s4npDxtYpHegJrOBcWfSt6SqG8WSdS5xIVF6/EgWGu', '1234567', '2020-12-02', '2020-12-02', 'user_2.jfif', 1, 'Mang đến chỗ ở tốt nhất'),
(3, 'nga', 'ttntrinhnga@gmail.com', 3, '1234567', '$2y$10$esweNLZ5Dnk552i92TMJ0uI0pog2nbVZo/kruqVNWyeH6cBqxJHVe', '1234567', '2020-12-02', '2020-12-02', 'user_2.jfif', 1, 'Mang đến chỗ ở tốt nhất'),
(4, 'nga', 'mm@gmail.com', 3, '1234567', '$2y$10$Ha2BTDIUOwsw7Ka76luT9.u8en7XCYMDiCL8WSgVa3vR2/3bXj.3m', '1234567', '2020-12-02', '2020-12-02', 'user_4.jfif', 1, 'Mang đến chỗ ở tốt nhất'),
(5, 'nga', 'trinhthao91@gmail.com', 6, '111111111', '$2y$10$1kpOjkFO8PffhQ.9zeNlfO41E.LyiyviU/ixtG5Ci5/FMgLC2TeQ6', '111111111', '2020-12-02', '2020-12-07', 'user_2.jfif', 1, 'cute'),
(6, 'nga', 'oo@gmail.com', NULL, NULL, '$2y$10$YIiHCE2/r.sXSgdlVikcmeuRMzPzoYWMwn.oW2vJLf5veyGYDzy9.', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(7, 'nga', 'hh@gmail.com', NULL, NULL, '$2y$10$dzX8UDBduF738gVhTUIHRu/POuGrMsNDgHNzbKlEfpg06.pOCMDVu', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(8, 'nga', 'pp@gmail.com', NULL, NULL, '$2y$10$69SQaYo/eLbkpsY.FYjVj.AUWYYKfejGPswVPf6lfEiJUxCNzTnQG', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(9, 'nga', 'aa@gmail.com', NULL, NULL, '$2y$10$uRt59ZHpRd.aRiEyobM0eOh79X.VKEmDkrZjHJA8bEr7FoazOPcam', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(10, 'nga', 'z@gmail.com', NULL, NULL, '$2y$10$lUSi2Ms35NafqMp8fw4JEug5NyqcISN.sDzXrDWo9aCS3zYSDffr.', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(11, 'gan', 'q@gmail.com', NULL, NULL, '$2y$10$67FNFaLUZllLuVorqGGq8OqYPPQbKuJ6yFmfPCoGn/G9Yru3tiU4i', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(12, 'ttntrinhnga@gmail.com', 'ttn@gmail.com', NULL, NULL, '$2y$10$zexTIet9yaY.Od3SvZZTaObsbup9zeGRUtB1YObH1bedy2ZbmU4/y', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(13, 'ttntrinhnga@gmail.com', 'ttnt@gmail.com', NULL, NULL, '$2y$10$HK16bNKhGs2t5BlAYS3/Ius53XT474mZYyXs53tsfjXv7fVLZEDSK', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(14, 'nga', 'ga@gmail.com', NULL, NULL, '$2y$10$yWmw0zvlLk/kxqwn74deeuT7A/9qv54AFrFKj1in6oDwMtxWTuZUK', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(15, 'nga', 'o@gmail.com', NULL, NULL, '$2y$10$0/N9cs5uYuh.uKwu5hOTlu.OX.UCqtpCn7F0Mi8PtkD2OK.LBrk4C', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(16, 'nga', 'g@gmail.com', NULL, NULL, '$2y$10$Yxoi/OwVQCzb6bfWbX9xpON9qLzuyu/EDu8P4YqseqBApsl5Fz2Rm', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(17, 'nga', 'u@gmail.com', NULL, NULL, '$2y$10$wVgWsS/b0Rjv7AjIrbgRHOrXT7MY5RdurPscEls4LTHdwe4D4LlNu', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(18, 'nga', 'ooo@gmail.com', NULL, NULL, '$2y$10$9y.vMxFhHaijs2CWbZRk3essTqTeLVx/RfyG.kobdYBbWHvaAKRGe', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(19, 'nga', 'x@gmail.com', NULL, NULL, '$2y$10$wTLB.j7tsYWwSrng8szJB.px7akvhwsy.wuxh.EIp7/NWXQqT.z72', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, ''),
(20, 'nga', 'l@gmail.com', NULL, NULL, '$2y$10$zT7XAQ1HUx57G.KQKdbN2uNRbSI6qYOyGHPv5MYtK8FVeMibHKAgq', NULL, '2020-12-02', '2020-12-02', 'avt_default.png', 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reacts`
--
ALTER TABLE `reacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;

--
-- AUTO_INCREMENT cho bảng `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `reacts`
--
ALTER TABLE `reacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
