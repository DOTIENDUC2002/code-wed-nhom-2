
CREATE DATABASE IF NOT EXISTS `shopthoitrang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopthoitrang`;
--

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `repassword` varchar(250) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `level` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `repassword`, `password`, `level`) VALUES
(7, 'thanh', '8478e2bdb758f8467225ae87ed3750c2', '8478e2bdb758f8467225ae87ed3750c2', 1),
(8, 'thanh1', '8478e2bdb758f8467225ae87ed3750c2', '8478e2bdb758f8467225ae87ed3750c2', 1),
(9, 'thanh1', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 1),
(10, 'vuchau', 'dba31bb5c75992690f20c2d3b370ec7c', 'dba31bb5c75992690f20c2d3b370ec7c', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catelog`
--

CREATE TABLE `catelog` (
  `catelogid` int(11) NOT NULL,
  `catelogname` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `catelog`
--

INSERT INTO `catelog` (`catelogid`, `catelogname`, `status`) VALUES
(1, 'Louis Vuitton', 1),
(2, 'Chanel', 1),
(3, 'Gucci', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `idhoadon` int(11) DEFAULT NULL,
  `idsanpham` int(11) DEFAULT NULL,
  `dongia` float NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`idhoadon`, `idsanpham`, `dongia`, `soluong`) VALUES
(17, 3, 42600000, 1),
(18, 3, 42600000, 1),
(NULL, 3, 42600000, 1),
(NULL, 2, 9568000, 1),
(NULL, 1, 18000000, 1),
(NULL, 1, 18000000, 1),
(24, 1, 18000000, 1),
(25, 2, 9568000, 1),
(26, 1, 18000000, 1),
(27, 1, 18000000, 4),
(28, 2, 9568000, 1),
(29, 2, 9568000, 1),
(NULL, 2, 9568000, 1),
(NULL, 1, 18000000, 2),
(NULL, 4, 20000000, 7),
(NULL, 1, 18000000, 1),
(NULL, 2, 9568000, 14),
(NULL, 1, 18000000, 1),
(NULL, 4, 20000000, 1),
(NULL, 1, 18000000, 1),
(NULL, 1, 18000000, 1),
(NULL, 4, 20000000, 2),
(NULL, 1, 18000000, 1),
(NULL, 1, 18000000, 1),
(NULL, 1, 18000000, 1),
(NULL, 4, 20000000, 1),
(NULL, 0, 0, 0),
(NULL, 1, 18000000, 1),
(NULL, 2, 9568000, 1),
(NULL, 1, 18000000, 1),
(NULL, 1, 18000000, 1),
(56, 1, 18000000, 1),
(57, 1, 18000000, 1),
(58, 1, 18000000, 1),
(58, 2, 9568000, 1),
(59, 1, 18000000, 1),
(60, 1, 18000000, 1),
(60, 4, 20000000, 2),
(61, 1, 18000000, 1),
(61, 2, 9568000, 1),
(62, 4, 20000000, 4),
(62, 1, 18000000, 5),
(64, 2, 9568000, 1),
(65, 1, 18000000, 1),
(66, 1, 18000000, 1),
(67, 58, 18000000, 12),
(67, 2, 9568000, 2),
(68, 3, 42600000, 1),
(68, 2, 9568000, 3),
(69, 3, 42600000, 1),
(69, 1, 18000000, 2),
(69, 2, 9568000, 1),
(69, 7, 5600000, 3),
(70, 1, 18000000, 1),
(71, 1, 18000000, 1),
(71, 2, 9568000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `idsanpham` int(11) DEFAULT NULL,
  `colorid` int(11) DEFAULT NULL,
  `sizeid` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`idsanpham`, `colorid`, `sizeid`, `soluong`, `status`) VALUES
(1, 1, 2, 10000, 1),
(2, 7, 1, 4300, 1),
(3, 3, 2, 60000, 1),
(4, 6, 2, 48000, 1),
(5, 4, 1, 3000, 1),
(6, 3, 2, 5000, 1),
(7, 7, 2, 2000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `colorid` int(11) NOT NULL,
  `colorname` varchar(20) NOT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`colorid`, `colorname`, `status`) VALUES
(1, 'xanh lá cây', 1),
(2, 'đỏ', 1),
(3, 'tím', 1),
(4, 'vàng', 1),
(5, 'xanh nước biển', 1),
(6, 'đen', 1),
(7, 'trắng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhoadon` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Tong_tien` float DEFAULT NULL,
  `Ngay_tao` datetime DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idhoadon`, `idkhachhang`, `name`, `address`, `phone`, `email`, `Tong_tien`, `Ngay_tao`, `soluong`, `status`) VALUES
(4, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(5, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(6, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(7, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(8, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(9, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(10, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(11, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(12, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(13, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(14, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(15, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(16, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(17, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(18, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(19, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(20, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(21, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(22, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(23, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(24, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(25, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(26, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(27, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 2),
(28, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(29, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(30, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', NULL, NULL, NULL, 1),
(31, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 2),
(32, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(33, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(34, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 133, NULL, NULL, 1),
(35, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(36, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 38, NULL, NULL, 1),
(37, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(39, 24, 'gggggg', 'ggggggg', 123456789, 'fffffff', 222222000, NULL, NULL, 1),
(40, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(41, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(42, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 58, NULL, NULL, 2),
(43, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(44, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(45, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(46, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(47, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(48, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(49, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 38, NULL, NULL, 2),
(50, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(51, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18, NULL, NULL, 1),
(52, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 1),
(53, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 9568000, NULL, NULL, 2),
(54, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 1),
(55, 24, 'thanh', 'hà nộirqưẻqưẻqưe', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 2),
(56, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 2),
(57, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 27568000, NULL, NULL, 2),
(58, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 27568000, NULL, NULL, 2),
(59, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 2),
(60, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 58000000, NULL, NULL, 2),
(61, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 27568000, NULL, NULL, 2),
(62, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 170000000, NULL, NULL, 2),
(63, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 0, NULL, NULL, 2),
(64, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 9568000, NULL, NULL, 2),
(65, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 2),
(66, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 2),
(67, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 235136000, NULL, NULL, 2),
(68, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 71304000, NULL, NULL, 2),
(69, 24, 'thanh', 'Hà Nội', 1234677, 'thanh@gmail.com', 104968000, NULL, NULL, 2),
(70, 24, 'thanh', 'hà nội', 1234677, 'thanh@gmail.com', 18000000, NULL, NULL, 1),
(71, 24, 'thanh', 'hà nộii', 1234677, 'thanh@gmail.com', 37136000, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachang`
--

CREATE TABLE `khachang` (
  `idkhachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachang`
--

INSERT INTO `khachang` (`idkhachhang`, `tenkhachhang`, `phone`, `address`, `email`, `username`, `matKhau`, `status`) VALUES
(24, 'thanhnguyen', 1234677, 'hà nội', 'thanh@gmail.com', 'thanh', 'e10adc3949ba59abbe56e057f20f883e', 0),
(26, 'than', 21474836, 'Biển đông', 'than@gmail.com', 'than', 'e10adc3949ba59abbe56e057f20f883e', 0),
(27, 'Vũ Châu', 336091630, 'hà lội', 'vuchau056@gmail.com', 'vuchau', 'dba31bb5c75992690f20c2d3b370ec7c', 0),
(28, 'Vũ Châu', 336091630, 'hà lội', 'vuchau056@gmail.com', 'vuchau', 'dba31bb5c75992690f20c2d3b370ec7c', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL,
  `catelogid` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `imgae` varchar(255) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  `noidungchitiet` varchar(255) DEFAULT NULL,
  `giadauvao` float NOT NULL,
  `giadaura` float NOT NULL,
  `luotxem` int(11) DEFAULT NULL,
  `mua` varchar(50) NOT NULL DEFAULT 'Mua Hàng',
  `muahang` tinyint(1) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `catelogid`, `tensanpham`, `imgae`, `noidung`, `noidungchitiet`, `giadauvao`, `giadaura`, `luotxem`, `mua`, `muahang`, `status`) VALUES
(1, 1, 'Áo Louis Vuitton nam', 'Áo_Louis_Vuitton_nam.jpg', 'okeeee', 'okeeee', 20000000, 18000000, NULL, 'Mua Hàng', 0, 1),
(2, 1, 'Áo Louis Vuitton nam ms2', 'Áo_Louis_Vuitton_nam_ms2.jpg', 'okeeee', 'okeeee', 20000000, 17500000, NULL, 'Mua Hàng', 0, 1),
(3, 1, 'Áo Louis Vuitton nam MS3', 'Áo_Louis_Vuitton_nam_MS3.jpg', 'okeeee', 'okeeee', 18000000, 14000000, NULL, 'Mua Hàng', 0, 1),
(4, 1, 'Áo Louis Vuitton nam MS4', 'Áo_Louis_Vuitton_nam_MS4.jpg', 'okeeee', 'okeeee', 12000000, 10500000, NULL, 'Mua Hàng', 0, 1),
(5, 2, 'Áo Chanel MS1', 'Áo_Chanel_MS1.jpg', 'okeeee', 'okeeee', 18000000, 15700000, NULL, 'Mua Hàng', 0, 1),
(6, 2, 'Áo Chanel MS2', 'Áo_Chanel_MS2.jpg', 'okeeee', 'okeeee', 15000000, 10000000, NULL, 'Mua Hàng', 0, 1),
(7, 3, 'Áo Gucci MS1', 'Áo_Gucci_MS1.jpg', 'okeeee', 'okeeee', 120000, 140000, NULL, 'Mua Hàng', 0, 1),
(122, 2, 'Áo Chanel MS3', 'Áo_Chanel_MS3.jpg', 'okeeee', 'okeeee', 120000, 140000, NULL, 'Mua Hàng', 0, 1),
(123, 3, 'Áo Gucci MS2', 'Áo_Gucci_MS2.jpg', 'okeeee', 'okeeee', 120000, 140000, NULL, 'Mua Hàng', 0, 1),
(124, 3, 'Áo Gucci MS3', 'Áo_Gucci_MS3.jpg', 'okeeee', 'okeeee', 120000, 140000, NULL, 'Mua Hàng', 0, 1),
(125, 3, 'Áo Gucci MS4', 'Áo_Gucci_MS4.jpg', 'okeeee', 'okeeee', 120000, 140000, NULL, 'Mua Hàng', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `sizeid` int(11) NOT NULL,
  `sizename` varchar(20) NOT NULL,
  `status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`sizeid`, `sizename`, `status`) VALUES
(1, '6,1 inch', 1),
(2, '6,7 inch', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catelog`
--
ALTER TABLE `catelog`
  ADD PRIMARY KEY (`catelogid`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD KEY `FK_ctdh` (`idhoadon`),
  ADD KEY `FK_ctdhsp` (`idsanpham`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD KEY `FK_ctsp` (`idsanpham`),
  ADD KEY `FK_ctspc` (`colorid`),
  ADD KEY `FK_ctsps` (`sizeid`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`colorid`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhoadon`),
  ADD KEY `FK_idkh` (`idkhachhang`);

--
-- Chỉ mục cho bảng `khachang`
--
ALTER TABLE `khachang`
  ADD PRIMARY KEY (`idkhachhang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD KEY `FK_idcate` (`catelogid`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`sizeid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `catelog`
--
ALTER TABLE `catelog`
  MODIFY `catelogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `khachang`
--
ALTER TABLE `khachang`
  MODIFY `idkhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK_ctdh` FOREIGN KEY (`idhoadon`) REFERENCES `hoadon` (`idhoadon`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `FK_ctsp` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`),
  ADD CONSTRAINT `FK_ctspc` FOREIGN KEY (`colorid`) REFERENCES `color` (`colorid`),
  ADD CONSTRAINT `FK_ctsps` FOREIGN KEY (`sizeid`) REFERENCES `size` (`sizeid`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_idkh` FOREIGN KEY (`idkhachhang`) REFERENCES `khachang` (`idkhachhang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_idcate` FOREIGN KEY (`catelogid`) REFERENCES `catelog` (`catelogid`);

