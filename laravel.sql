-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 06:31 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `pic`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bhargavi', 'khan@example.com', '$2y$10$CaxO6EIKAtMYJZcguQjLUOzXpai/TRD/OTVg4RBUyF6anJeefxB6m', 'girl.png', 'xMtheFoNPbq6dq8FuufuRpNSFjI1ThHj3PFCu8zGutK2vvpnaWlanwbXK0W1', '2018-08-10 20:21:05', '2018-08-10 20:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `discount_code` varchar(50) DEFAULT NULL,
  `discount_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `discount_code`, `discount_percentage`) VALUES
(13, 'abc123', 40),
(16, 'Discount30', 30);

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

CREATE TABLE `membership_type` (
  `id` int(11) NOT NULL,
  `membership_type` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`id`, `membership_type`, `amount`) VALUES
(1, 'Platinum', 15),
(2, 'Gold', 10),
(6, 'Diamond', 50),
(7, 'Carbon', 80),
(8, 'Basic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_upgrade_request`
--

CREATE TABLE `membership_upgrade_request` (
  `userid` int(11) NOT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) DEFAULT NULL,
  `membershiptype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_upgrade_request`
--

INSERT INTO `membership_upgrade_request` (`userid`, `amount_paid`, `payment_id`, `created_at`, `active`, `membershiptype`) VALUES
(1, NULL, NULL, '2018-09-23 05:11:36', 0, ''),
(9, 15, 'wewewewawewew', '2018-09-25 13:22:09', 0, ''),
(2, 50, 'PAY-2R486522AX7542358LO4F4UI', '2018-10-06 07:05:39', 1, ''),
(2, 50, 'PAY-8GA87898SK121531NLO4XR3Y', '2018-10-07 03:09:56', 1, NULL),
(2, 15, 'PAY-04491623SV360191RLO4X7MQ', '2018-10-07 03:38:42', 1, '[\"Platinum\"]'),
(2, 50, 'PAY-40K016735T929583TLO4YVPY', '2018-10-07 04:26:51', 1, '[\"Diamond\"]'),
(2, 10, 'PAY-1BL752678F132715NLO5TN3Y', '2018-10-08 10:53:21', 1, '[\"Gold\"]'),
(2, 30, 'PAY-95G40926L2705312HLO5TOYA', '2018-10-08 10:54:42', 1, '[]'),
(2, 50, 'PAY-1BS79522H06768304LO5TRVI', '2018-10-08 11:00:57', 1, '[\"Diamond\"]'),
(2, 30, 'PAY-0ST42815823797125LO5TTLA', '2018-10-08 11:04:30', 1, '[\"Diamond\"]'),
(2, 10, 'PAY-90104743K0860650TLO5TV2Q', '2018-10-08 11:10:09', 1, '[\"Gold\"]'),
(2, 6, 'PAY-4X775862DR265021WLO5TWLA', '2018-10-08 11:11:03', 1, '[\"Gold\"]'),
(15, 6, 'PAY-5X880801TL071631GLO5UD3Q', '2018-10-08 12:07:12', 0, '[\"Gold\"]'),
(15, 68, 'PAY-9GP45037JS590674RLO5U2OQ', '2018-10-08 12:28:17', 1, '[\"Carbon\"]'),
(16, 30, 'PAY-4DW02809R1560543RLO56RKY', '2018-10-08 23:31:51', 1, '[\"Diamond\"]'),
(17, 6, 'PAY-5SN53596C5079542JLO57LVQ', '2018-10-09 00:27:40', 1, '[\"Gold\"]'),
(17, 15, 'PAY-9RY11814DH324341JLO57MRQ', '2018-10-09 00:29:14', 1, '[\"Platinum\"]'),
(15, 15, 'PAY-2B628821V9332003BLPIAC4I', '2018-10-24 05:23:51', 1, '[\"Platinum\"]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_11_033419_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `imagepath` varchar(200) DEFAULT NULL,
  `membership` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `imagepath`, `membership`) VALUES
(18, 'Welcome Gold User', 'Get 20% discount for Platinum membership. Buy Today', '1540358066.jpg', 'Gold');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('atiqkhan19@hotmail.com', '$2y$10$NGmKfmo1HRHaR57r2v1m1.EZxAbNWIOs78oLDTYP3ocYrW9myBhvC', '2018-10-07 01:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `membership` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender`, `name`, `email`, `password`, `pic`, `membership`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'male', 'test1234', 'atiqkhan19@hotmail.com', '$2y$10$e5L9y.9cBJovaNefxwpbx.Zas79SRmz8fm3K/Wf3Fr633aIF.j9HO', 'girl.png', 'Gold', 1, 'ig3ouyFViccj6TL0KXpVuaijxKajusbkwgwBJRhLFyu3TfKneg1jlmJxiGcR', '2018-08-11 16:09:08', '2018-10-05 18:07:33'),
(5, 'male', 'atiqkhan', 'atik@example.com', '$2y$10$C82amUDGQEGEji59xvhW3.iikEdGnwS5YioyKGRAnG3.vNKrbpxVK', 'boy.png', NULL, 1, 'I8QCnyyLYqR5VBSEwFjqUG7orbkVNC8IaBbZ5HBdPxPvSEbc9OR9fHPwF0b4', '2018-08-11 17:37:49', '2018-08-11 17:37:49'),
(9, 'male', 'abhi123', 'atiqk551@gmail.com', '$2y$10$BxZhKq.2sGTK2yez3TI2IO926zfuqj9rCFBZ4aO1o3mTm9m6rpAqS', 'boy.png', 'Platinum', 0, 'tlk6wPfjwHmIPVR50jMahuxGqC6zbBdeItAjWCvafPysLjRpiPhvKvCqLqMM', '2018-08-13 02:13:58', '2018-09-25 03:22:09'),
(11, 'male', 'atiqkhan', 'aishwarya.kathal@yahoo.com', '$2y$10$J.8yq7JY7VdZwnlDnCWay.lg8gSPEEFI2m8B1QSTF9O/0TvfGzySq', 'boy.png', 'Basic', 1, NULL, '2018-06-22 04:58:01', '2018-09-15 23:17:26'),
(14, 'female', 'bhargavi', 'bhargavin.nelluri@gmail.com', '$2y$10$nZKuV3SwfIbl/yk9SEGMJ.2m2Avzr0uyr7AQ9HLobH1.wsLo2SwdC', 'girl.png', 'Basic', 1, NULL, '2018-09-30 16:25:20', '2018-09-30 16:25:20'),
(15, 'male', 'Harsh Budholiya', 'aishwarya.kathal@gmail.com', '$2y$10$2SKJSZMgCC1kqb9RPoh94OfeRzTyDHIqFj26pEsFcOuUUqrR4CzRe', 'boy.png', 'Gold', 1, '7mXUIV2O1SGeTT26A0OXyYo92AWyjbDlEo3Hmoa1wcwPwFbODqXTTfkQIQ66', '2018-10-08 00:35:26', '2018-10-08 01:07:12'),
(16, 'male', 'Jun Shen', 'jshan@uow.edu.au', '$2y$10$y1kaBRWeE/Y4uYaxilKBa.JDr4mOYbeSHLyCjUjTr9NmlgfQgv.0G', 'boy.png', 'Basic', 1, 'm6asizq8uNZYNqdlY62tbABFwRKHQRqQyYpJcm0Wd2Ux7Or44rEHt2fuu99a', '2018-10-08 12:18:52', '2018-10-08 12:18:52'),
(17, 'male', 'Jianquing', 'jw937@uowmail.edu.au', '$2y$10$DRSNpnOB9IKlYbxPfqxiX.qlohRuiPKx4Vw7hqR1JzCgn92/rESvG', 'boy.png', 'Basic', 1, 'or3dP6PsMoELRiD6zSHweitmBHelzyZDKZfsKJalb40xmbFdDUv9Oqb1Nem8', '2018-10-08 13:08:32', '2018-10-08 13:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `welcome_slider`
--

CREATE TABLE `welcome_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `imagepath` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome_slider`
--

INSERT INTO `welcome_slider` (`id`, `title`, `description`, `imagepath`) VALUES
(1, '', '', '111.jpe'),
(2, 'Welcome to ACAA', '', '222.jpg'),
(3, '', '', '333.jpg'),
(4, '', '', '1539604095.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_type`
--
ALTER TABLE `membership_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `welcome_slider`
--
ALTER TABLE `welcome_slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `membership_type`
--
ALTER TABLE `membership_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `welcome_slider`
--
ALTER TABLE `welcome_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
