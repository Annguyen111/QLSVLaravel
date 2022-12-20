-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2022 lúc 06:34 PM
-- Phiên bản máy phục vụ: 8.0.27
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `studentmanagement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `id` int UNSIGNED NOT NULL,
  `diemcc` double NOT NULL,
  `diemtx` double NOT NULL,
  `diemgk` double NOT NULL,
  `diemck` double NOT NULL,
  `diemtong` double DEFAULT NULL,
  `diemchu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monhoc_id` int UNSIGNED NOT NULL,
  `sinhvien_id` int UNSIGNED NOT NULL,
  `hocky` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`id`, `diemcc`, `diemtx`, `diemgk`, `diemck`, `diemtong`, `diemchu`, `monhoc_id`, `sinhvien_id`, `hocky`, `created_at`, `updated_at`) VALUES
(1, 10, 10, 10, 10, 10, 'A', 1, 1, 1, NULL, NULL),
(2, 10, 10, 10, 10, 10, 'A', 1, 1, 2, '2022-12-20 10:13:00', '2022-12-20 10:13:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `id` int UNSIGNED NOT NULL,
  `tengv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucdanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `khoa_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`id`, `tengv`, `ngaysinh`, `gioitinh`, `sodienthoai`, `chucdanh`, `avatar`, `khoa_id`, `created_at`, `updated_at`) VALUES
(1, 'Võ Ngọc Đạt', '1999-09-07', 'Nam', '0356593936', 'Tiến sĩ', 'thanhn.png', 1, NULL, NULL),
(2, 'Huỳnh Công Pháp', '1994-06-08', 'Nam', '905114500', 'Phó giáo sư - Tiến sĩ', 'hcphap.png', 1, '2022-12-20 09:41:55', '2022-12-20 09:41:55'),
(3, 'Nguyễn Đức Hiển', '1990-07-24', 'Nam', '905734949', 'Tiến sĩ', 'ndhien.png', 1, '2022-12-20 09:42:44', '2022-12-20 09:42:44'),
(4, 'Huỳnh Ngọc Thọ', '1994-06-07', 'Nam', '982191459', 'Tiến sĩ', 'hntho.png', 1, '2022-12-20 09:43:38', '2022-12-20 09:43:38'),
(5, 'Lê Thị Thu Nga', '1991-07-20', 'Nữ', '942191079', 'Tiến sĩ', 'lttnga.png', 1, '2022-12-20 09:44:25', '2022-12-20 09:44:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int UNSIGNED NOT NULL,
  `tenkhoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `tenkhoa`, `created_at`, `updated_at`) VALUES
(1, 'Khoa Học Máy Tính', NULL, NULL),
(2, 'Thương mại điện tử', '2022-12-20 09:39:47', '2022-12-20 09:39:47'),
(3, 'Kĩ thuật máy tính', '2022-12-20 09:40:00', '2022-12-20 09:40:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int UNSIGNED NOT NULL,
  `tenlop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoa_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `tenlop`, `khoa_id`, `created_at`, `updated_at`) VALUES
(1, '21JIT', 1, NULL, NULL),
(2, '21AD', 1, '2022-12-20 09:49:30', '2022-12-20 09:49:30'),
(3, '21CE1', 3, '2022-12-20 09:49:38', '2022-12-20 09:49:38'),
(4, '21EL', 2, '2022-12-20 09:49:51', '2022-12-20 09:49:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_11_02_041255_create_khoa_table', 1),
(5, '2022_11_02_041350_create_lop_table', 1),
(6, '2022_11_02_041559_create_sinhvien_table', 1),
(7, '2022_11_02_041650_create_monhoc_table', 1),
(8, '2022_11_02_041720_create_giangvien_table', 1),
(9, '2022_11_02_045403_create_diem_table', 1),
(10, '2022_11_18_061936_create_users_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `id` int UNSIGNED NOT NULL,
  `tenmon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sotinchi` int NOT NULL,
  `sotiet` int NOT NULL,
  `khoa_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`id`, `tenmon`, `sotinchi`, `sotiet`, `khoa_id`, `created_at`, `updated_at`) VALUES
(1, 'Kỹ năng mềm', 2, 30, 1, NULL, NULL),
(2, 'Đường lối cách mạng của ĐCS VN', 3, 45, 1, NULL, NULL),
(3, 'Tiếng Anh cơ bản 2', 3, 45, 1, NULL, NULL),
(4, 'Vật lý 2 và thí nghiệm', 3, 45, 1, NULL, NULL),
(5, 'Toán rời rạc', 2, 30, 1, NULL, NULL),
(6, 'Cơ sở dữ liệu', 3, 45, 1, NULL, NULL),
(7, ' Bóng chuyền ', 1, 45, 1, NULL, NULL),
(8, 'Toán kỹ thuật', 2, 30, 1, NULL, NULL),
(9, 'Cấu kiện điện tử', 2, 30, 1, NULL, NULL),
(10, 'Lý thuyết mạch', 2, 30, 1, NULL, NULL),
(11, 'Cầu lông ', 1, 45, 1, NULL, NULL);

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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int UNSIGNED NOT NULL,
  `hovaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quequan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lop_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `hovaten`, `gioitinh`, `ngaysinh`, `quequan`, `email`, `anhdaidien`, `lop_id`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Quốc An', 'Nam', '2003-09-07', 'Núi Thành, Quảng Nam', 'anvy1791@gmail.com', 'quocan.jpg', 1, NULL, NULL),
(2, 'Hoàng Văn Tùng', 'Nam', '2017-12-11', 'Đà Nẵng', 'tung123@gmail.com', 'hvtung.jpg', 1, NULL, NULL),
(3, 'Nguyễn Ngọc Lanh', 'Nam', '2017-12-11', 'Quảng Nam', 'lanh123@gmail.com', 'nnlanh.jpg', 1, NULL, NULL),
(5, 'Cao Văn Tính', 'Nam', '2022-11-29', 'Đà Nẵng', 'caotinh123@gmail.com', 'cvtinh.jpg', 1, '2022-12-20 10:26:38', '2022-12-20 10:26:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeuser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'teacher',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `typeuser`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$jXThSBMo5C6u16E3LQ8qF.qK98bKWeBtdR68uTsDzL1ST3FKmkvpK', 'admin', NULL, NULL, NULL),
(2, 'Nguyễn Quốc An', 'anvy1791@gmail.com', NULL, '$2y$10$fN68o4NRGqVz7QifewBtiek2rO1SBbBGD7rYX6t.riH5Q5mqkobGG', 'student', NULL, '2022-12-20 10:22:03', '2022-12-20 10:22:03'),
(3, 'Cao Văn Tính', 'caotinh123@gmail.com', NULL, '$2y$10$fh3F9L1/xZdL.tGiCJvyoOeonJp49fXoDuQC05vn4TiF8zmG.NHQu', 'student', NULL, '2022-12-20 10:26:38', '2022-12-20 10:26:38'),
(4, 'Võ Ngọc Đạt', 'dat123@gmail.com', NULL, '$2y$10$tZ.mEA.oyeEn3AXT2/0gCu5tTaYvJZpKYEb494ShBhBNlCFnzxK06', 'teacher', NULL, '2022-12-20 10:31:27', '2022-12-20 10:31:27');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_classcount`
-- (See below for the actual view)
--
CREATE TABLE `v_classcount` (
`soluonglop` bigint
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_studentcount`
-- (See below for the actual view)
--
CREATE TABLE `v_studentcount` (
`total` bigint
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_teachercount`
-- (See below for the actual view)
--
CREATE TABLE `v_teachercount` (
`soluonggv` bigint
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `v_usercount`
-- (See below for the actual view)
--
CREATE TABLE `v_usercount` (
`soluong` bigint
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_classcount`
--
DROP TABLE IF EXISTS `v_classcount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_classcount`  AS SELECT count(`lop`.`id`) AS `soluonglop` FROM `lop``lop`  ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_studentcount`
--
DROP TABLE IF EXISTS `v_studentcount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_studentcount`  AS SELECT count(`sinhvien`.`id`) AS `total` FROM `sinhvien``sinhvien`  ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_teachercount`
--
DROP TABLE IF EXISTS `v_teachercount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_teachercount`  AS SELECT count(`giangvien`.`id`) AS `soluonggv` FROM `giangvien``giangvien`  ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `v_usercount`
--
DROP TABLE IF EXISTS `v_usercount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usercount`  AS SELECT count(`users`.`id`) AS `soluong` FROM `users``users`  ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diem_monhoc_id_foreign` (`monhoc_id`),
  ADD KEY `diem_sinhvien_id_foreign` (`sinhvien_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giangvien_khoa_id_foreign` (`khoa_id`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lop_khoa_id_foreign` (`khoa_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monhoc_khoa_id_foreign` (`khoa_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sinhvien_lop_id_foreign` (`lop_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `diem`
--
ALTER TABLE `diem`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_monhoc_id_foreign` FOREIGN KEY (`monhoc_id`) REFERENCES `monhoc` (`id`),
  ADD CONSTRAINT `diem_sinhvien_id_foreign` FOREIGN KEY (`sinhvien_id`) REFERENCES `sinhvien` (`id`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `giangvien_khoa_id_foreign` FOREIGN KEY (`khoa_id`) REFERENCES `khoa` (`id`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_khoa_id_foreign` FOREIGN KEY (`khoa_id`) REFERENCES `khoa` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_khoa_id_foreign` FOREIGN KEY (`khoa_id`) REFERENCES `khoa` (`id`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
