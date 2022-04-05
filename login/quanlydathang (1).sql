-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2021 lúc 12:44 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydathang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `ID_BAIVIET` int(11) NOT NULL,
  `MSNV` int(11) NOT NULL,
  `TieuDe` varchar(200) NOT NULL,
  `motangan` varchar(500) NOT NULL,
  `src` varchar(200) NOT NULL,
  `ngaytao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`ID_BAIVIET`, `MSNV`, `TieuDe`, `motangan`, `src`, `ngaytao`) VALUES
(78, 37, 'Dòng smartphone rẻ nhất của Vsmart với hàng đổi trả đã rẻ lại còn giảm giá, nhanh vô chốt đơn kẻo không còn', 'Vsmart Star 4 mang cho mình thiết kế đơn giản nhưng không kém phần cứng cáp, bền bỉ. Đã thế, với màn hình tràn viền có độ phân giải HD+ giúp hiển thị sắc nét, màu sắc chân thật từ mọi góc nhìn. Cùng với đó là bộ đôi camera sau AI với khả năng chụp ảnh và quay video khá tốt ở mức cơ bản.', 'https://www.thegioididong.com/tin-tuc/smartphone-re-nhat-cua-vsmart-voi-hang-doi-tra-da-re-lai-con-giam-gia-1352752', '0000-00-00'),
(79, 37, 'Không nằm ngoài cuộc chơi, OPPO đã hợp tác với một nhà sản xuất ô tô lớn để thử nghiệm chìa khóa kỹ thuật số', 'OPPO thông báo rằng sẽ làm việc với một số nhà sản xuất ô tô và các nhà cung ứng cấp 1, dự kiến sẽ cung cấp và hỗ trợ rộng rãi cho nhiều thương hiệu xe ô tô từ khắp nơi trên thế giới trong tương lai.', 'https://www.thegioididong.com/tin-tuc/oppo-thu-nghiem-chia-khoa-ky-thuat-so-1354348', '0000-00-00'),
(80, 47, 'sd', 'BÂU OI', 'ffff', '0000-00-00'),
(81, 47, 'CASIO 2021', '			TRƯƠNG PHỔ THÔNG DÂN TỘC NỘI TRÚ', 'DDD', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSHH` char(8) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaDatHang` decimal(19,4) DEFAULT NULL,
  `GiamGia` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoDonDH`, `MSHH`, `SoLuong`, `GiaDatHang`, `GiamGia`) VALUES
(480, 'HH000008', 2, '101998000.0000', '50999000.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSKH` int(11) DEFAULT NULL,
  `MSNV` int(11) DEFAULT NULL,
  `NGAYDH` datetime DEFAULT NULL,
  `NGAYGH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dathang`
--

INSERT INTO `dathang` (`SoDonDH`, `MSKH`, `MSNV`, `NGAYDH`, `NGAYGH`) VALUES
(479, 20, NULL, NULL, NULL),
(480, 20, 47, '2021-10-18 09:43:55', '2021-10-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachikh`
--

CREATE TABLE `diachikh` (
  `MaDC` int(11) NOT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `MSKH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diachikh`
--

INSERT INTO `diachikh` (`MaDC`, `DiaChi`, `MSKH`) VALUES
(14, 'Chau Lang, Tri Ton AG', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MSHH` char(8) NOT NULL,
  `TenHH` varchar(200) NOT NULL,
  `QuyCach` decimal(19,4) DEFAULT NULL,
  `Gia` decimal(19,4) DEFAULT NULL,
  `SoLuongHang` int(11) DEFAULT NULL,
  `MaLoaiHang` int(8) NOT NULL,
  `GhiChu` varchar(1200) DEFAULT NULL,
  `image` char(200) DEFAULT NULL,
  `QUANGCAO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `QuyCach`, `Gia`, `SoLuongHang`, `MaLoaiHang`, `GhiChu`, `image`, `QUANGCAO`) VALUES
('HH000001', 'MacBook Pro 13 inch 2020 M1 MYD82SA/A', '0.0000', '30999000.0000', 200, 1, 'CPU Apple M1 chip 8-core CPU with 4 performance cores and 4 efficiency cores RAM 8GB SSD 256GB Display 13.3Inch 2560x1600 IPS LED-backlit VGA 8-core GPU Color Space Grey (Xám) Weight 1.40 Kg OS macOS', '75_41847_zenbook_s_flip_ux371_h1.jpg', 1),
('HH000002', 'MacBook Air 13 inch 2020 M1 MGN93SA/A', '24690000.0000', '28999000.0000', 200, 1, 'MacBook Air 13 inch 2020 M1 MGN93SA/A Vào cuối năm 2020, Apple đã cho ra mắt con Chip M1, bộ vi xử lý ARM của riêng do chính Apple sản xuất để trang bị cho những sản phẩm Macbook của mình, thay vì phụ thuộc vào Intel như trước đây. Với sự ra đời của con Chip M1 này làm hoàn thiện thêm và bước thêm một bước tiến trong hệ sinh thái của Apple. Vậy những sản phẩm được trang bị con chip M1 thế hệ mới nhất này có những điều gì ấn tượng,', '18875_18878_macbook_air_13_inch_2020_m1_mgna3saa_1.jpg', NULL),
('HH000003', 'MacBook Air 13 inch 2020 M1 MGN63SA', '24690000.0000', '28999000.0000', 200, 1, 'CPU Apple M1 chip 8-core CPU with 4 perform­ance cores and 4 efficiency cores RAM 8GB SSD 256GB Display 13.3Inch 2560x1600 IPS LED-backlit VGA 7-core GPU Color Space Grey (Xám) Weight 1.29 Kg OS macOS', '18873_18877_macbook_air_13_inch_2020_m1_mgn73saa_1.jpg', NULL),
('HH000004', 'MacBook Pro 13 inch Apple M1 Chip - bản SSD', '0.0000', '52290000.0000', 200, 1, 'Tên bộ vi xử lý Apple M1 chip Tốc độ, nhân luồng Apple M1 chip with 8-core CPU, 8-core GPU Bộ nhớ đệm Đang cập nhật Bộ nhớ trong (RAM Laptop) Dung lượng 8GB Số khe cắm Max 16GB ', '19742_.jfif', NULL),
('HH000005', 'MacBook Air 13 inch M1 8C CPU', '30690000.0000', '32690000.0000', 200, 1, 'CPU Apple M1 chip with 8‑core CPU, 7‑core GPU, and 16‑core Neural Engine RAM 8GB SSD 512GB Display 13.3 inches, Retina (2560 x 1600) VGA 7-core GPU Color Gold (Vàng) Weight 1.29 Kg OS macOS', '19706_macbook_air_2020_m1_gold.jpg', NULL),
('HH000006', 'Apple Macbook Pro 13 Retina 2020', '0.0000', '50990000.0000', 200, 1, 'CPU: Intel Core i5 Gen 10 (2.4GHz Quad Core, Up to 4.1 GHz) RAM: 16GB LPDDR4 3733MHz (Onboard) SSD: 1TB PCIe® NVMe™ M.2 Display: 13.3Inch Retina (2560 x 1600) VGA: Integrated Iris® Plus Graphics Màu: Bạc OS: Mac OS', '19658_.jfif', NULL),
('HH000007', 'Apple iMac 21.5 2020 i5 2.3256GB ', '20990000.0000', '25500000.0000', 200, 1, 'Apple iMac 21.5 2020 i5 2.3 8GB 256GB – Đỉnh cao của desktop Chiếc PC chiếm quá nhiều diện tích để đặt CPU, điều đó thật thiếu tiện lợi và chiếm quá nhiều không gian. Vậy tại sao không tham khảo qua chiếc Apple iMac 21.5 2020 i5 2.3 8GB 256GB chính hãng tối giản về hình dáng và trọng lượng, nhưng vẫn đảm bảo sức mạnh vốn có của một chiếc desktop.  Tấm nền IPS, độ phân giải chân thực sắc nét iMac 21.5 2020 mang đến trải nghiệm chân thực nhất bởi màn hình tấm nền IPS, độ phân giải Full HD với hàng triệu màu. Người dùng hoàn toàn đắm chìm bên trong thế giới ảo.', 'imac_21_inch_2020_mac24h_xuo7-a6 (1).webp', NULL),
('HH000008', 'Macbook Pro 14 inch 2021', '50999000.0000', '59999000.0000', 200, 1, 'Macbook Pro 14 inch M1x - Chiếc Macbook đáng mong đợi nhất 2021 Kế thừa những tinh hoa từ đời MacBook tốt nhất cùng với những nâng cấp đáng kể trong nhiều năm qua, Apple Macbook Pro 14 inch 2021 dự kiến sẽ là mẫu laptop làm cho giới công nghệ ', 'macbook-pro-2021-14-inch.jpg', NULL),
('HH000009', 'iMac 24 2021 M1 256GB', '0.0000', '45500000.0000', 200, 1, 'iMac 24 2021 M1 8GPU 16GB 256GB là phiên bản iMac có cấu hình RAM cao, phù hợp cho những ai thường xuyên chạy những ứng dụng nặng. Với chiếc iMac 2021 M1 này, bạn sẽ được trải nghiệm hiệu năng vô cùng mạnh mẽ với chip M1 được tích hợp trong máy, giúp tiết kiện điện năng đồng thời cải thiện hiệu năng CPU và GPU.', 'imac-2021-1_2_2.jpg', NULL),
('HH000010', 'Apple Macbook Pro 16 Touch Bar I7', '50000000.0000', '59999000.0000', 200, 1, 'Macbook Pro 16 inch 2019 Touch Bar – Chiếc laptop toàn năng Chiếc máy tính phá vỡ mọi quy tắc và giới hạn lộ diện bởi thương hiệu không còn xa lạ đó là Macbook pro 2019. Macbook Pro 16 inch 2019 Touch Bar sở hữu cấu hình siêu mạnh, màn hình lớn cùng với đó là bàn phím mới mang đến nhiều tiện ích.  Màn hình kích thước lớn, tản nhiệt vượt trội Bạn sẽ được trải nghiệm giải trí và làm việc trên một màn hình rộng lớn. Với kích thước lên đến 16 inches đi kèm là công nghệ màn hình Retina tuyệt đẹp sẽ giúp tái tạo được màu sắc trung thực', 'macbook-pro-16-inch-2019-1.jpg', NULL),
('HH000011', 'iMac Pro 2021', '50990000.0000', '60990000.0000', 200, 1, 'iMac Pro 2021 – Mạnh mẽ vượt trội với chip Apple Silicon 32 nhân Dòng sản phẩm máy tính All-in-one của Apple – iMac Pro 2021 là một sự kết hợp hoàn hảo từ thiết kế cho đến sức mạnh. Với vẻ đẹp sang trọng cùng với “nội lực” mạnh mẽ, iMac Pro 2021 chính là một sản phẩm được nhiều người khao khát sở hữu.', 'imac_24inch.png', NULL),
('HH000012', 'Apple Mac mini M1 512GB 2020', '23500000.0000', '24990000.0000', 200, 1, 'Apple Mac mini M1 512GB 2020 chính hãng (MGNT3) - Nhỏ gọn nhưng đầy mạnh mẽ Đa số người dùng máy tính hiện nay đều tìm cho mình một bộ máy tính có kích thước nhỏ gọn gàng nhưng cũng không kém phần mạnh mẽ. Với nhu cầu đó thương hiệu Apple lớn của Mỹ đã cho ra đời sản phẩm Apple Mac mini M1 512GB 2020 mới, mang lại chất lượng vượt trội cho người dùng.  Thiết kế nhỏ gọn, cấu hình mạnh mẽ Apple Mac mini M1 2020 với thiết kế nhỏ gọn chỉ với 7.7 inch và trọng lượng 1.2 kg. Giúp người sử dụng dễ dàng mang theo mọi lúc mọi nơi và sử dụng khi cần thiết, một thiết bị luôn đồng hành cùng bạn.', 'img-apple-main_1_1.jpg', NULL),
('HH000013', 'Laptop Dell Vostro 5502 NT0X01', '20990000.0000', '22590000.0000', 200, 2, 'Laptop Dell Vostro 5502 NT0X01 – Màn hình lớn, hiệu năng cao Dell là một thương hiệu nổi tiếng với các mẫu laptop chất lượng nhận được đánh giá tích cực từ người dùng. Và với laptop Dell Vostro 5502 NT0X01, bạn sẽ lại một lần nữa có cơ hội được trải nghiệm một sản phẩm laptop sở hữu nhiều điểm nổi bật trong thiết kế cùng hiệu năng của hãng.  Thiết kế sang trọng, màn hình 15.6 inch FHD Anti-glare Laptop Dell Vostro 5502 NT0X01 sở hữu vẻ ngoài sang trọng. Chiếc laptop có trọng lượng 1.64kg cho phép người dùng có thể mang theo trong những chuyến công tác vì sự gọn nhẹ tiện lợi.', 'laptop-dell-vostro-5502-nt0x01-7.png', NULL),
('HH000014', 'Laptop Dell Latitude 3520 70251603', '13590000.0000', '14590000.0000', 200, 2, 'Laptop Dell Latitude 3520 70251603 – Cỗ máy làm việc không mệt mỏi Từ trước đến nay Dell luôn thể hiện mình là anh cả trong phân khúc laptop dành cho giới văn phòng và hiện nay cũng vậy, những sản phẩm thuộc phân khúc này luôn chiếm được tình cảm của người hâm mộ. Điển hình như laptop Dell Latitude 3520 70251603 đáp ứng rất tốt các tiêu chí của một chiếc laptop dành cho doanh nhân.', 'laptop-dell-latitude-3520-70251603-1.jpg', NULL),
('HH000015', 'Laptop Dell Inspiron 3501 5081BLK', '18490000.0000', '19990000.0000', 200, 2, 'Laptop Dell Inspiron 3501 5081BLK – laptop nhỏ gọn, cấu hình mạnh mẽ Bạn đang cần một chiếc laptop văn phòng lịch lãm cùng cấu hình khoẻ khoắn và khả năng phản hồi nhanh nhạy? Hãy thử ngay laptop Dell Inspiron 3501 5081BLK với bộ vi xử lý Intel Core i5 dưới đây!', 'laptop-dell-inspiron-3501-081blk-1_.jpg', NULL),
('HH000016', 'Laptop Dell Inspiron 15 3502', '0.0000', '9990000.0000', 200, 2, 'Laptop Dell Inspiron 15 3502 - Thiết kế nhẹ nhàng, sức mạnh vượt trội Laptop Dell Inspiron 15 3502 mang đến một thiết kế nhẹ nhàng, giúp bạn dễ dàng di chuyển hơn kết hợp cùng sức mạnh vượt trội của bộ vi xử lý cùng bộ nhớ có dung lượng cao giúp cải thiện hiệu suất tối ưu.', 'laptop-dell-inspiron-15-3502-pent-2 (1).jpg', NULL),
('HH000017', 'Laptop Dell Inspiron 5301 N3I3016W', '17000000.0000', '17690000.0000', 200, 2, 'Laptop Dell Inspiron 5301 N3I3016W cảm biến nhiệt độ, khởi động tức thì Với sự phát triển liên tục của thế giới công nghệ, một chiếc laptop không còn chỉ đem lại giá trị công việc. Mà còn được lồng ghép những tính năng độc đáo, thú vị khiến người dùng yêu thích không buông. Chiếc laptop Dell Inspiron 5301 N3I3016W sẽ giúp bạn cảm nhận rõ điều này!  Khởi động tức thì, cảm biến nhiệt độ Dell Inspiron 5301 N3I3016W có thiết kế đặc biệt giúp bạn có thể khởi động ngay tức thì chỉ bằng việc mở nắp thiết bị và đăng nhập. Nếu laptop của bạn đã tắt nguồn cũng đừng lo lắng, việc khởi động vẫn sẽ thực hiện ngay sau khi bạn mở nắp và đăng nhập.', 'laptop-dell-inspiron-5301-n3i3016w-5.jpg', NULL),
('HH000018', 'Laptop Dell Vostro 5410 V4I5014W', '20990000.0000', '21490000.0000', 200, 2, 'Laptop Dell Vostro 5410 V4I5014W – Laptop Dell hiệu năng ổn định Laptop Dell Vostro 5410 V4I5014W là mẫu laptop mỏng nhẹ rất thích hợp cho học sinh sinh viên hoặc nhân viên văn phòng. Dòng sản phẩm laptop Dell này sẽ hứa hẹn mang lại cho người dùng những trải nghiệm ấn tượng.  Laptop Dell màn hình mỏng nhẹ, màu sắc sống động Laptop Dell Vostro 5410 V4I5014W với thiết kế nhỏ gọn cùng màn hình 14 inch. Độ phân giải FHD cùng công nghệ chống chói Anti-Glare mang khả năng hiển thị rõ nét cùng màu sắc chân thực.', 'laptop-dell-vostro-5410-v4i5014w-1.jpg', NULL),
('HH000019', 'Laptop Dell Inspiron 3505 Y1N1T2', '14990000.0000', '17990000.0000', 200, 2, 'Laptop Dell Inspiron 3505 Y1N1T2 - Hiệu năng mạnh mẽ, ổn định Laptop Dell Inspiron 3505 Y1N1T2 là sự lựa chọn tối ưu của các dòng máy nằm ở phân khúc tầm trung, bởi thiết kế trang nhã, hiệu năng mạnh mẽ, ổn định để xử lý các tác vụ văn phòng mượt mà.  Thiết kế tinh giản, gọn nhẹ, màn hình Full HD rõ nét Laptop Dell Inspiron 3505 Y1N1T2 giúp cho việc mang theo di chuyển được nhẹ nhàng hơn, bởi thiết kế đem đến vẻ đẹp tinh giản cùng trọng lượng gọn nhẹ.', '37845_34832_t___i_xu___ng.jpg', NULL),
('HH000020', 'Laptop Dell Gaming G3 G3500CW', '25990000.0000', '27990000.0000', 200, 2, 'Loại CPU	Intel Core i7 10750H (2.6Ghz /12MB cache) Loại card đồ họa	Nvidia Geforce GTX1650Ti 4G DDR6 Dung lượng RAM	16GB Loại RAM	2 x 8GB DDR4 2933MHz, 2 khe cắm hỗ trợ tối đa 32GB Ổ cứng	1TB HDD + 256GB SSD M.2 PCIe NVMe Kích thước màn hình	15.6 inches Độ phân giải màn hình	1920 x 1080 pixels (FullHD) Cổng giao tiếp	1 x HDMI 2.0 1 x RJ-45 1 x USB 3.2 Gen 1 port with PowerShare 2 x USB 2.0 ports 2 x USB 3.2 Gen 2 (Type-C) port with DisplayPort Hệ điều hành	Windows 10 Home SL Pin	3 cell (51Whr)', 'laptop-dell-gaming-g3-g3500cw-1.jpg', NULL),
('HH000021', 'Laptop Dell Vostro 3405 V4R53500U003W', '17000000.0000', '17690000.0000', 200, 2, 'Laptop Dell Vostro 3405 V4R53500U003W được xem là mẫu laptop luôn mang đến những trải nghiệm ấn tượng cho người dùng. Không những được thiết kế một cách độc đáo, sang trọng, ấn tượng mà mẫu máy này còn có thể xử lý được nhiều tác vụ khác nhau một cách mượt mà nhơf vào bộ vi xử lý mạnh mẽ, ấn tượng. Cùng khám phá thêm mẫu laptop Dell Vostro 5402 70231338 có hiệu năng hoạt động nhanh chóng, hiệu quả. Giúp giải quyết nhiều tác vụ văn phòng một cách tiện lợi nhất.', '_0003_34994_vos_3405_2.jpg', NULL),
('HH000022', 'Laptop Dell Gaming G3 15 3500 70223130', '20890000.0000', '22490000.0000', 200, 2, 'Laptop dell gaming g3 15 3500: Laptop chơi game cao cấp Bạn là một người chuyên đi công tác và vẫn mong muốn có thể sử dụng một chiếc laptop linh hoạt đem theo tiện cho việc chiến game. Bạn đang tìm kiếm một nơi mua sắm chiếc Dell gaming g3 3500 chính hãng, mời bạn đọc tiếp bên dưới.  Thiết kế bền bỉ - chắc chắn cùng việc hỗ trợ Bluetooth 5.0 tiện lợi Mang trong mình một thiết kế chắc chắn, chiếc laptop Dell Gaming G3 15 3500 giúp cải thiện hơn về độ nặng của một laptop gaming. Cùng với đó, chúng còn cho một độ bền bỉ và khó bị hư hỏng do va đập mạnh các phần cạnh.', 'laptop-dell-gaming-g3-3500_4_.jpg', NULL),
('HH000023', 'Laptop HP Pavilion x360 14-DW1016TU 2H3Q0PA', '14290000.0000', '15190000.0000', 200, 3, 'Laptop HP Pavilion x360 14-DW1016TU 2H3Q0PA là dòng laptop được thiết kế đặc trưng bởi trọng lượng nhẹ, khả năng sử dụng linh hoạt, mang đến sự tiện dụng cho người dùng. Ngoài ra, chiếc laptop còn có cấu hình mạnh, có một tốc độ xử lý nhanh chóng, giúp đáp ứng được nhiều tác vụ khác nhau Khám phá thêm Laptop HP Pavilion x360 14-DW1019TU 2H3N7PA giúp người dùng có thể xử lý những tác vụ nặng một cách tốt nhất', 'laptop-hp-pavilion-x360-14-3.jpg', NULL),
('HH000024', 'Laptop HP Probook 450 G8 2Z6L0PA', '20590000.0000', '21990000.0000', 200, 3, 'Sản phẩm laptop HP Probook 450 G8 2Z6L0PA chính là mẫu laptop công sở với thiết kế thanh lịch cùng hiệu năng mạnh sẽ giúp bạn giải quyết trọn vẹn công việc, cho dù là ở văn phòng hay ở bất cứ đâu.  Thiết kế thanh lịch cùng màn hình hiển thị 15.6 inch Full HD Laptop HP Probook 450 G8 xứng đáng là lựa chọn tuyệt vời của học sinh, sinh viên và cả dân công sở. Chiếc máy được thiết kế gọn nhẹ linh hoạt, với lớp phủ nguyên khối màu bạc đầy thanh lịch giúp bạn dễ dàng mang máy theo bên mình và giải quyết công việc ở bất cứ đâu.', 'laptop-ksp-ban2.jpg', NULL),
('HH000025', 'Laptop HP Envy 13 AQ1022TU 8QN69PA', '0.0000', '22690000.0000', 200, 3, ' Loại CPU	Intel Core i5-10210U ( 1.6 GHz - 4.2 GHz / 6MB / 4 nhân, 8 luồng ) Loại card đồ họa	Intel UHD Graphics Dung lượng RAM	8GB Loại RAM	8 GBDDR4 (On board) 2400 MHz Ổ cứng	512GB SSD M.2 NVMe Kích thước màn hình	13.3 inches Độ phân giải màn hình	1920 x 1080 pixels (FullHD) Cổng giao tiếp	1 x M.2 SATA/NVMe M.2 SATA/NVMe 1 x USB Type C / DisplayPort / Power Delivery , 2 x USB 3.1 , 1 x SD card slot Hệ điều hành	Windows 10 Home SL Pin	4 cell 53 Wh , Pin liền', 'laptop_hp_envy_13-aq1022tu_8qn69pa__0005_layer_1_1 (1).jpg', NULL),
('HH000026', 'Laptop HP 15S-FQ2558TU 46M26PA', '0.0000', '18690000.0000', 200, 3, 'Laptop HP 15S-FQ2558TU 46M26PA - Phục vụ công việc tiện lợi Một trong những sản phẩm laptop văn phòng nổi bật của thương hiệu HP có thể nhắc đến laptop HP 15S-FQ2558TU 46M26PA - chiếc laptop vừa có yếu tố tiện lợi, vừa chứa đựng hiệu năng mạnh mẽ cho tất cả nhu cầu làm việc của bạn.  Vẻ ngoài công sở đầy tinh tế, màn hình 15.6 inch bắt mắt Laptop HP Pavilion này rất phù hợp với học sinh - sinh viên lẫn dân văn phòng vì thiết kế linh hoạt, gọn nhẹ và tiện lợi. Vỏ ngoài của HP 15S-FQ2558TU 46M26PA làm từ nhôm nguyên khối với tông màu bạc tinh tế, tạo nên nét đẹp thanh lịch và phù hợp với môi trường học đường lẫn môi trường công sở.', 'laptop-hp-15s-fq2558tu-46m26pa.jpg', NULL),
('HH000027', 'Laptop HP ProBook 430 G8 2H0P0PA', '24450000.0000', '25990000.0000', 200, 3, 'Laptop HP ProBook 430 G8 2H0P0PA - Chiếc laptop chuẩn dân văn phòng Với nhu cầu làm việc văn phòng cao cấp thì bạn đang quan tâm đến sản phẩm nào. Hẳn phải khó suy nghĩ lắm nhỉ, vậy thì hãy tham khảo ngay laptop HP ProBook 430 G8 2H0P0PA.', 'laptop-hp-probook-430-g8-2h0p0pa-1.jpg', NULL),
('HH000029', 'DELL XP RIA 2021', '12999000.0000', '18999000.0000', 200, 2, 'Laptop, máy tính xách tay Dell sử dụng màn hình cảm ứng, touchscreen giá rẻ, có trả góp 0% xét duyệt nhanh chóng. Mua online giao hàng tận nơi trong 1 giờ.', 'thay-man-hinh-cam-ung-laptop-dell-83.png', NULL),
('HH000031', 'DELL XP RIA 2021', '12999000.0000', '18999000.0000', 2, 4, 'Find that perfect color with our color picker and discover beautiful color harmonies, tints, shades and tones; input Hex color codes, RGB and HSL values, and generate HTML, CSS and SCSS styles.								\r\n							', 'B1805684_BT5_DANGNHAP.png', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MSKH` int(11) NOT NULL,
  `HoTenKH` varchar(120) NOT NULL,
  `TenCongTy` varchar(120) DEFAULT NULL,
  `SoDienThoai` char(12) NOT NULL,
  `Email` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `TenCongTy`, `SoDienThoai`, `Email`) VALUES
(20, 'QUYCH DET', 'DH CAN THO', '0344747623', 'isiquch2014@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihanghoa`
--

CREATE TABLE `loaihanghoa` (
  `MaLoaiHang` int(8) NOT NULL,
  `TenLoaiHang` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaihanghoa`
--

INSERT INTO `loaihanghoa` (`MaLoaiHang`, `TenLoaiHang`) VALUES
(1, 'APPLE'),
(2, 'DELL'),
(3, 'HP'),
(4, 'ASUS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MSNV` int(11) NOT NULL,
  `HoTenNV` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SoDT` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MSNV`, `HoTenNV`, `DiaChi`, `SoDT`) VALUES
(47, 'QUYCH ĐI', 'TRI TÔN - AN GIANG', '0344747623'),
(48, 'KIEU PHUONG', 'DONG THAP', '0399012157');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TENDANGNHAP` char(12) NOT NULL,
  `Pass` char(8) NOT NULL,
  `repass` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`TENDANGNHAP`, `Pass`, `repass`) VALUES
('0344747623', '12345678', ''),
('0399012157', '12345678', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`ID_BAIVIET`),
  ADD KEY `fk_2` (`MSNV`);

--
-- Chỉ mục cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`SoDonDH`,`MSHH`),
  ADD KEY `fk_mshh` (`MSHH`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`SoDonDH`),
  ADD KEY `fk_mskh` (`MSKH`),
  ADD KEY `FK_msnv` (`MSNV`);

--
-- Chỉ mục cho bảng `diachikh`
--
ALTER TABLE `diachikh`
  ADD PRIMARY KEY (`MaDC`),
  ADD KEY `fk_mskhDC` (`MSKH`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`),
  ADD KEY `fk_mahh` (`MaLoaiHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`),
  ADD KEY `fk_usercus` (`SoDienThoai`);

--
-- Chỉ mục cho bảng `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MSNV`),
  ADD KEY `fk_useremp` (`SoDT`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TENDANGNHAP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `ID_BAIVIET` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT cho bảng `dathang`
--
ALTER TABLE `dathang`
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT cho bảng `diachikh`
--
ALTER TABLE `diachikh`
  MODIFY `MaDC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MSKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MSNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`);

--
-- Các ràng buộc cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `fk_mshh` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sodondh` FOREIGN KEY (`SoDonDH`) REFERENCES `dathang` (`SoDonDH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `FK_msnv` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mskh` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `diachikh`
--
ALTER TABLE `diachikh`
  ADD CONSTRAINT `fk_mskhDC` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Các ràng buộc cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `fk_mahh` FOREIGN KEY (`MaLoaiHang`) REFERENCES `loaihanghoa` (`MaLoaiHang`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `fk_sodt` FOREIGN KEY (`SoDienThoai`) REFERENCES `taikhoan` (`TENDANGNHAP`),
  ADD CONSTRAINT `fk_tk` FOREIGN KEY (`SoDienThoai`) REFERENCES `taikhoan` (`TENDANGNHAP`),
  ADD CONSTRAINT `fk_usercus` FOREIGN KEY (`SoDienThoai`) REFERENCES `taikhoan` (`TENDANGNHAP`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_dt` FOREIGN KEY (`SoDT`) REFERENCES `taikhoan` (`TENDANGNHAP`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sodtnv` FOREIGN KEY (`SoDT`) REFERENCES `taikhoan` (`TENDANGNHAP`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`SoDT`) REFERENCES `taikhoan` (`TENDANGNHAP`),
  ADD CONSTRAINT `fk_useremp` FOREIGN KEY (`SoDT`) REFERENCES `taikhoan` (`TENDANGNHAP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
