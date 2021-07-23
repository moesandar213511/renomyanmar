-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4306
-- Generation Time: Jul 23, 2021 at 12:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renomyanmar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_feedbacks`
--

CREATE TABLE `admin_feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_feedbacks`
--

INSERT INTO `admin_feedbacks` (`id`, `picture`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '5c3388dbabf4b_49512288_2840954172585170_2222993790153523200_n.jpg', 'Phyo Wai Aung1', 'Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, '2019-01-07 17:14:03'),
(2, 'client-2.jpg', 'Phyo Wai Aung2', ' Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, NULL),
(3, 'client-3.jpg', 'Phyo Wai Aung3', ' Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, NULL),
(4, 'client-4.jpg', 'Phyo Wai Aung4', ' Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, NULL),
(5, 'client-5.jpg', 'Phyo Wai Aung5', ' Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, NULL),
(6, 'client-6.jpg', 'Zayya', 'Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, '2019-01-07 13:47:52'),
(7, '5c3358ec1c36d_49592466_2840954112585176_2669726296526815232_n.jpg', 'Aung Aung', 'Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, '2019-01-07 13:49:32'),
(8, 'client-2.jpg', 'Phyo Wai Aung', ' Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', NULL, NULL),
(9, '5c32f53343e9d_49592466_2840954112585176_2669726296526815232_n.jpg', 'Ye Yint Ko', 'sum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', '2019-01-07 06:44:03', '2019-01-07 13:46:16'),
(11, '5c3359cce6dac_wallPaper.png', 'Ye Yint', 'dfdfdfdf1500s, when an unknown printer to1500s, when an unknown printer to', '2019-01-07 13:52:38', '2019-01-07 13:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `photo`, `created_at`, `updated_at`, `link`, `start_date`, `end_date`) VALUES
(1, '5cb0287c616ce_download (1).jpg', '2019-04-12 05:56:12', '2019-04-12 05:56:12', 'http://localhost/renomyanmar/public/', '2019-04-12', '2019-05-10'),
(2, '5cb0299b8a188_download (2).jpg', '2019-04-12 06:00:59', '2019-04-12 06:00:59', 'http://localhost/promotion/public/', '2019-04-12', '2019-05-17'),
(3, '5cb02a2be23e8_download (3).jpg', '2019-04-12 06:03:23', '2019-04-12 06:03:23', 'http://localhost/promotion/public/', '2019-04-01', '2019-04-16'),
(4, '5cb035d221c34_download (4).jpg', '2019-04-12 06:53:06', '2019-04-12 06:53:06', 'http://localhost/promotion/public/', '2019-04-14', '2019-05-17'),
(5, '5cb03a5c281e8_images.png', '2019-04-12 07:12:28', '2019-04-12 07:12:28', 'http://localhost/promotion/public/', '2019-04-01', '2019-04-15'),
(6, '5cb165021600f_download.jpg', '2019-04-13 04:26:42', '2019-04-13 04:26:42', 'http://localhost/promotion/public/', '2019-04-13', '2019-05-31'),
(7, '5cb165891836c_download.png', '2019-04-13 04:28:57', '2019-04-13 04:28:57', 'http://localhost/renomyanmar/public/', '2019-04-13', '2019-05-31'),
(8, '5cb165a7ac335_images (1).jpg', '2019-04-13 04:29:27', '2019-04-13 04:29:27', 'http://localhost/promotion/public/', '2019-04-13', '2019-05-31'),
(9, '5cb165ea05148_images (2).jpg', '2019-04-13 04:30:34', '2019-04-13 04:30:34', 'http://localhost/renomyanmar/public/', '2019-04-13', '2019-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `ads_webpages`
--

CREATE TABLE `ads_webpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `webpage_id` int(11) NOT NULL,
  `ads_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_webpages`
--

INSERT INTO `ads_webpages` (`id`, `webpage_id`, `ads_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-04-12 05:56:12', '2019-04-12 05:56:12'),
(2, 2, 1, '2019-04-12 05:56:12', '2019-04-12 05:56:12'),
(3, 2, 2, '2019-04-12 06:00:59', '2019-04-12 06:00:59'),
(4, 3, 2, '2019-04-12 06:00:59', '2019-04-12 06:00:59'),
(5, 1, 3, '2019-04-12 06:03:24', '2019-04-12 06:03:24'),
(6, 2, 3, '2019-04-12 06:03:24', '2019-04-12 06:03:24'),
(7, 3, 3, '2019-04-12 06:03:24', '2019-04-12 06:03:24'),
(8, 4, 3, '2019-04-12 06:03:24', '2019-04-12 06:03:24'),
(9, 1, 4, '2019-04-12 06:53:06', '2019-04-12 06:53:06'),
(10, 2, 4, '2019-04-12 06:53:06', '2019-04-12 06:53:06'),
(11, 3, 4, '2019-04-12 06:53:06', '2019-04-12 06:53:06'),
(12, 4, 4, '2019-04-12 06:53:06', '2019-04-12 06:53:06'),
(13, 2, 5, '2019-04-12 07:12:28', '2019-04-12 07:12:28'),
(14, 3, 6, '2019-04-13 04:26:42', '2019-04-13 04:26:42'),
(15, 4, 6, '2019-04-13 04:26:42', '2019-04-13 04:26:42'),
(16, 3, 7, '2019-04-13 04:28:57', '2019-04-13 04:28:57'),
(17, 4, 7, '2019-04-13 04:28:57', '2019-04-13 04:28:57'),
(18, 1, 8, '2019-04-13 04:29:27', '2019-04-13 04:29:27'),
(19, 2, 8, '2019-04-13 04:29:27', '2019-04-13 04:29:27'),
(20, 3, 8, '2019-04-13 04:29:27', '2019-04-13 04:29:27'),
(21, 4, 8, '2019-04-13 04:29:27', '2019-04-13 04:29:27'),
(22, 1, 9, '2019-04-13 04:30:34', '2019-04-13 04:30:34'),
(23, 3, 9, '2019-04-13 04:30:34', '2019-04-13 04:30:34'),
(24, 4, 9, '2019-04-13 04:30:34', '2019-04-13 04:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Residential Foundation Work @ Dala Progress Photos', 'Rangoon Tea House ၏ ဆိုင္ခြဲ အသစ္အေနျဖင့္\r\nဖြင့္လွစ္ထားေသာ ဘိုကေလးေစ်းလမ္း အတြင္းရွိ “ဘူးသီး” ဆိုင္ေလးကို decoration ျပင္ေပးထားတဲ့ Project ေလးပါ။\r\nရိုုးရာဓေလ့ အစားအေသာက္ေကာင္း ၾကိဳက္ႏွစ္သက္သူမ်ား အတြက္ေတာ့ မျဖစ္မေန သြားေရာက္ စားသံုးသင့္တဲ့ cozy ထမင္းဆိုင္ ေလး တစ္ခုျဖစ္ပါတယ္။\r\nယံုၾကည့္စိတ္ခ်စြာ လုပ္ငန္း အပ္ႏွံလာတဲ့ RTH Group ကိုလဲ က်ေနာ္တို႕ M-Square မွ အထူးပင္\r\nေက်းဇူးတင္ရွိပါေၾကာင္း။\r\n\r\nလူၾကီးမင္းတို႕ ေနအိမ္တိုက္ခန္း၊ ရံုုးခန္း၊ ဆိုင္ခန္း မ်ားကို ေခတ္မွီ Design လွလွေလးမ်ားနဲ႕\r\nဖန္တီး တည္ေဆာက္ခ်င္တယ္ ဆိုရင္ေတာ့ . က်ေနာ္တို႕\r\nM-Square Construction & Decoration Co.,Ltd နဲ႕ ဆက္သြယ္လိုက္ဖို႕ ဖိတ္ေခၚပါတယ္။\r\n100% စိတ္ေက်နပ္ မႈ၊ ေစ်းႏႈန္း မွန္ကန္မႈ ႏွင့္ အရည္အေသြးျပည့္မွီဖို႕ အတြက္ေတာ့အျပည့္အ၀ တာ၀န္ယူပါတယ္။\r\n\r\n*Interior Design and Conceptualisation by Atelier Sao Design\r\n*Build, Project Consultation and Project Management by M-square\r\n\r\nNo252, Khayay Myaing Street ,VIP 3 Thuwanna Township , Yangon\r\nContact No : 09426999918,09256999918', '5c1b5767c74d8_promo2-1080x675.jpg', '2018-12-20 08:48:40', '2018-12-20 08:48:40'),
(2, 'December Promotion: Interior Design & Decoration', 'ယခု လုိ ၀ါ က်ြတ္ အခါ သမယ မွာ မ ဂၤ လာ လာ ေဆာင္ ပဲြ ေတြ က်င္း ပ ျက မယ့္ မ ဂၤ လာ ေမာင္ နွံ ေတြ အတြက္ သတင္း ေကာင္း ေလး ပါး ခ်င္ လုိ့ ပါ\r\nမ ဂၤ လာ ေဆာင္ ျပီး တူ နွစ္ ကုိယ္ တစ္ မုိး ေအာက္ ေန ခ်င္ သူ မ်ား အတြက္ ေခတ္ မွီ ျပီး သာယာ လွ ပ တဲ့ အိမ္ ေလး အျဖစ္ က်ြန္ မ တုိ့ M-SQUARE မွ လွ ပ ဆန္း သစ္ ေသာ ဒီ ဇုိငး္ မ်ား နဲ့ ပံု ေဖာ္ ဖန္ တီး ျပဳ ျပင္ ေပး ေန ပါ တယ္ ရွင္\r\nအထူး promotion အေန ျဖင့္ မ ဂၤ လာ ေမာင္ ႏွံ မ်ား ေန ထုိင္ မည့္ အိမ္ ၊တုိက္ ခန္း ၊ကြန္ ဒို အခန္း မ်ား ကုိ သိန္း တစ္ ရာ ႏွင့္ အထက္ ျပဳ ျပင္ မည္ ဆုိ ပါ က king size\r\nမ ဂၤလာ ကု တင္ (customize ) တစ္ လုံး ကုိ လက္ ေဆာင္ အေန နွင့္ ထည္သြင္း ေပး သြား မွာ ျဖစ္ ပါ တယ္ က်ြန္ မ တုိ့ ႏွင့္ အခန္း အပ္ နွံ မည္ ဆုိ ပါ က ဒီ ဇုိငး္ ခ ကုိ လဲ မယူ ပဲ အခ မဲ့ အေန နဲ႔ မ ဂၤ လာ ေမာင္ ႏွံ တုိ့ စိတ္ ျကိုက္ ေရးဆဲြ ေပး သြား မွာ ျဖစ္ လုိ့ အျမန္ ဆံုး ပဲ ဆက္ သြယ္ နုိင္ ဖုိ့ သတင္းေကာင္း ေပး လုိက္ ပါ တယ္ ရွင္\r\n\r\nဆက္ သြယ္ ရန္\r\nအမွတ္ (၂၅၂) ခေရ ျမိဳင္ လမ္း၊ ဗိုလ္ခ်ဳပ္ရြာ ၃ ၊သုဝဏၰျမိဳ့\r\nနယ္\r\nဖုန္း 09426999918, 09256999918\r\n\r\nweb : www.msquaremyanmar.com\r\nmail : customercare@msquaremyanmar.com', '5c1b58ed069b1_Render_Bedroom_sc2_edt-1080x675.jpg', '2018-12-20 08:55:09', '2018-12-20 08:55:09'),
(3, 'December Promotion: Interior Design & Decoration', 'ယခု လုိ ၀ါ က်ြတ္ အခါ သမယ မွာ မ ဂၤ လာ လာ ေဆာင္ ပဲြ ေတြ က်င္း ပ ျက မယ့္ မ ဂၤ လာ ေမာင္ နွံ ေတြ အတြက္ သတင္း ေကာင္း ေလး ပါး ခ်င္ လုိ့ ပါ\r\nမ ဂၤ လာ ေဆာင္ ျပီး တူ နွစ္ ကုိယ္ တစ္ မုိး ေအာက္ ေန ခ်င္ သူ မ်ား အတြက္ ေခတ္ မွီ ျပီး သာယာ လွ ပ တဲ့ အိမ္ ေလး အျဖစ္ က်ြန္ မ တုိ့ M-SQUARE မွ လွ ပ ဆန္း သစ္ ေသာ ဒီ ဇုိငး္ မ်ား နဲ့ ပံု ေဖာ္ ဖန္ တီး ျပဳ ျပင္ ေပး ေန ပါ တယ္ ရွင္\r\nအထူး promotion အေန ျဖင့္ မ ဂၤ လာ ေမာင္ ႏွံ မ်ား ေန ထုိင္ မည့္ အိမ္ ၊တုိက္ ခန္း ၊ကြန္ ဒို အခန္း မ်ား ကုိ သိန္း တစ္ ရာ ႏွင့္ အထက္ ျပဳ ျပင္ မည္ ဆုိ ပါ က king size\r\nမ ဂၤလာ ကု တင္ (customize ) တစ္ လုံး ကုိ လက္ ေဆာင္ အေန နွင့္ ထည္သြင္း ေပး သြား မွာ ျဖစ္ ပါ တယ္ က်ြန္ မ တုိ့ ႏွင့္ အခန္း အပ္ နွံ မည္ ဆုိ ပါ က ဒီ ဇုိငး္ ခ ကုိ လဲ မယူ ပဲ အခ မဲ့ အေန နဲ႔ မ ဂၤ လာ ေမာင္ ႏွံ တုိ့ စိတ္ ျကိုက္ ေရးဆဲြ ေပး သြား မွာ ျဖစ္ လုိ့ အျမန္ ဆံုး ပဲ ဆက္ သြယ္ နုိင္ ဖုိ့ သတင္းေကာင္း ေပး လုိက္ ပါ တယ္ ရွင္\r\n\r\nဆက္ သြယ္ ရန္\r\nအမွတ္ (၂၅၂) ခေရ ျမိဳင္ လမ္း၊ ဗိုလ္ခ်ဳပ္ရြာ ၃ ၊သုဝဏၰျမိဳ့\r\nနယ္\r\nဖုန္း 09426999918, 09256999918\r\n\r\nweb : www.msquaremyanmar.com\r\nmail : customercare@msquaremyanmar.com', '5c1c7e5ed536a_Render_Bedroom_sc2_edt-1080x675.jpg', '2018-12-21 05:47:10', '2018-12-21 05:47:10'),
(4, 'RC လုံးခ်င္း Building သီတင္းကၽြတ္ အထူး Promotion', 'ေပ ၂၀ x ၆၀ ျခံ ၀န္း ေလး ထဲ တြင္ ေဆာက္ လုုပ္ နုုိင္ သည့္ ၁၈ x ၄၄ ေပ RC ၃ ထပ္ အဆာက္ အဦး ဒီ ဇုုိင္း ေလး ျဖစ္ပါတယ္ ရွင္\r\nကုုန္ က် စရိတ္ အေန နဲ့ ဆုုိ ရင္ ေတာ့ သိန္း ၅၂၀ ၀န္း က်င္ ေလာက္ ကုုန္ က် မည္ ျဖစ္ ပါသည္\r\n\r\nအ ေဆာက္ အဦး တြင္ ပါ ၀င္ မည့္ အခ်က္ အလက္ မ်ား က ေတာ့\r\n\r\n* ေရ မီး ေဆး (standard condition)\r\n* အ ေဆာက္ အဦး အျပင္ ပုုိင္း အား design ပါ အတုုိင္း တည္ ေဆာက္ ေပး ျခင္း\r\n* အ ေဆာက္ အဦး အတြင္း အခန္း မ်ား ကုိ drawing ပါ အတိုုင္း ကန့္ ေပး ျခင္း\r\n* ေရ ခ်ိး ခန္း အိမ္ သာ ျကမ္း ခင္း မ်ား ကုုိ ေျကြျပား ကပ္ ေပးျခင္း\r\n* ဘုုိ ထုုိင္ ေဘ ဇင္ မ်ား ကုုိ drawing ပါ အတိုုင္း တပ္ဆင္ ေပးျခင္း\r\n* အတြင္း RC ေလွကား နွင့္ ေလွကား လက္ ရန္း အား steel (GI) ျဖင့္ တပ္ဆင္ေပးျခင္း\r\n* အေရး ေပၚ ေလွ ကား အား steel (GI) ျဖင့္ တပ္ဆင္ တည္ေဆာက္ ေပးျခင္း\r\n* ျပဴ တင္း ေပါက္ မ်ား အား aluminium (powder coated) မ်ား ျဖင့္ တပ္ဆင္ေပးျခင္း\r\n* Main Door အား ကၽြန္း တံခါး တပ္ဆင္ ေပး ျခင္း\r\n* မီး ဖိုု ခံုု ျပဳ လုုပ္ တည္ ေဆာက္ ေပး ျခင္း\r\n* Ground Tank ထည့္ ေပး ျခင္း\r\n* Spetic Tank ထည့္ ေပး ျခင္း\r\n* Water Tank (၁၀၀၀ လီတာ) နွစ္ လုုံး ထည့္ ေပး ျခင္း\r\n\r\n==> အျခား အလွ ဆင္ လုုပ္ ငန္း မ်ား မ ၀င္ ပါ\r\n\r\nDesign By – M-Square\r\n\r\nအ ေသး စိတ္ သိ ရွိ လုုိ ပါ\r\n\r\nM-Square Construction & Decoration Co.,Ltd\r\nNo252, Khayay Myaing Street ,VIP 3 Thuwanna Township , Yangon\r\nContact No : 09426999918 / 09256999918', '5c1c7ed0e71cb_Promo1-960x675.jpg', '2018-12-21 05:49:04', '2018-12-21 05:49:04'),
(5, 'What we can do for you…', 'Why you need us ?\r\nဥပမာေပါ့\r\n\r\nPainting ဆိုတာ လြယ္ပါတယ္။ ပတ္တီး႐ိုက္မယ္ ကိုယ္ႀကိဳက္တဲ့ အေရာင္ေလးကို ေဆးဆိုင္ကဝယ္ Roller ေလးနဲ႔ လွိမ့္လိုက္႐ုံေပါ့။ ဟုတ္တယ္ေနာ္။\r\n\r\nဒါေပမယ့္ ကၽြန္ေတာ္တို႔က သင့္ အိမ္၊ အိပ္ခန္းေလး၊ ႐ုံးခန္းေလးကို သင့္ႀကိဳက္တဲ့ အေရာင္ေပၚမူတည္ၿပီး meaningful ျဖစ္ေအာင္ သင္စိတ္ကူးထားတဲ့ အေရာင္ေလးေတြရဲ႕ အဓိပၸါယ္ေလးေတြ ေလးနက္မႈရွိေအာင္ အၾကံေပးႏိုင္ပါတယ္။ ဘယ္ေဆးသုတ္ရင္ ဘယ္ေလာက္ခံၿပီး အာမခံေပးတာ အထိေပါ့။\r\n\r\nမီးႀကိဳးေတြဆြဲမယ္ မီးဆရာေခၚၿပီး မီးလိုင္းေတြေျပးလိုက္႐ုံပဲေလ။ ဟုတ္တယ္ေနာ္။\r\nဒါေပမယ့္ Basic standard ေလးေတြကို follow ၿပီး စနစ္တက်တပ္ဆင္ေပးမယ့္သူရွိရင္ေတာ့ သင့္အတြက္ Safety ပိုျဖစ္မယ္၊ Comfort ပိုျဖစ္ေစမွာပါ။\r\n\r\nဒါတင္မကေသးဘူးေလ၊ သင့္ အိမ္၊ ႐ုံးခန္း၊ ဆိုင္ခန္းေတြကို တိုးတက္လာတဲ့ ေခတ္နဲ႔အညီ ဘယ္လို renovate လုပ္ရင္ သင့္ေလ်ာ္မယ္၊ ဘယ္လို repurpose လုပ္လို႔ ရမယ္ဆိုတာေတြကိုလည္း M-Square က အၾကံေပးႏိုင္ပါတယ္။\r\n\r\nက်ေနာ္၊က်မက ေတာ့ ဒီ Budget အတြင္းပဲ လုပ္ႏိုင္ေသးလို႔ ဘယ္လိုေလးနဲ႔ အဆင္ေျပမလဲဆိုလည္း MSquare က အၾကံဉာဏ္ေပးဖို႔ welcome ပါပဲ ခင္ဗ်ာ။\r\n\r\nကၽြန္ေတာ္တို႔မွာရွိတဲ့ wide range of material knowledgeေတြ၊ Construction Experience ေတြနဲ႔ သင္စိတ္ကူးထားတဲ့ design ေလးေတြ reality ျဖစ္ေအာင္ ကူညီေပးႏိုင္ပါတယ္။\r\n\r\nကၽြန္ေတာ္တို႔ M-Square မွာ စကၤာပူမွ Architect မ်ား in-house အသင့္ရွိသည့္အျပင္ Design & Build ျဖစ္သည့္အတြက္ Construction အမ်ားစုျဖစ္ေနေသာ Design-Operations conflicts မ်ားကို အလြယ္တကူနဲ႔ အခ်ိန္တိုအတြင္း ေျဖရွင္းေပးႏိုင္ပါတယ္။ အဲ့အတြက္ Client အေနနဲ႔ စိတ္ခ်မ္းသာမႈ အျပည့္အဝရရွိေစမွာပါ။\r\n\r\nတကယ္က MSquare Design ဆိုေပမယ့္ ကၽြန္ေတာ္တို႔ကေတာ့ Client စိတ္ကူးထဲက Design လို႔ပဲ ေခၚပါရေစ။\r\nClient ရဲ ့စိတ္ကူးေတြကို reality ျဖစ္ေအာင္ ကၽြန္ေတာ္တို႔က ေဆာင္ရႊက္ေပးေနတာပါ။\r\nဒီဟာေလးကေတာ့ ဒီလိုရွိတယ္။ ဒီလိုေလးလုပ္ရင္ေတာ့ ဒီလိုျဖစ္မယ္။ ၾကာရွည္ခံမယ္၊ comfort ျဖစ္မယ္၊ အစရွိတာေတြကို Client ကို အသိေပး။ Client ရဲ႕ အသုံးျပဳလို႔တဲ့ Purpose ေပၚမူတည္ၿပီး ကၽြန္ေတာ္တို႔ Designer ေတြက လူႀကီးမင္းတို႔စိတ္တိုင္းက်ဆြဲၿပီးမွ Detail drawing, working drawing မ်ားျဖင့္ work schedule အတိုင္း ေဆာက္လုပ္ေပးျခင္းျဖစ္ပါတယ္။\r\n\r\nMSquare ရဲ႕ ရည္ရႊယ္ခ်က္က “Not just build a house, We make home” ပါ။ ဘာေလးပဲ ေဆာက္ေဆာက္ ကၽြန္ေတာ္တို႔က Customer တိုင္းရဲ႕ Memories Maker ျဖစ္ခ်င္တာပါ။\r\n\r\nကၽြန္ေတာ္တို႔ MSquare ကို ဆက္သြယ္ခ်င္ရင္ေတာ့\r\nOffice address\r\nNo.252, Khayae Myaing Street, Ward 30, VIP-3, Thuwunna Township, Yangon, 11071 သို႔၎\r\nဖုန္းျဖင့္ 095136939 (သို႔) 09426999918 သို႔ဖုန္းဆက္၍၎\r\nEmail ျဖင့္ customercare@msquaremyanmar.com သို႔၎ ဆက္သြယ္ေမးျမန္းႏိုင္ပါသည္ခင္ဗ်ား။', '5c1c7f033d1ba_basic.jpg', '2018-12-21 05:49:55', '2018-12-21 05:49:55'),
(6, 'ဘူးသီး ႏွင့္ Mr Wok မီးေတာက္ေခါက္ဆြဲ ဆုိင္ခြဲသစ္ ၿပင္ဆင္မႈၿပီးစီး', 'Rangoon Tea House ၏ ဆိုင္ခြဲ အသစ္အေနျဖင့္\r\nဖြင့္လွစ္ထားေသာ ဘိုကေလးေစ်းလမ္း အတြင္းရွိ “ဘူးသီး” ဆိုင္ေလးကို decoration ျပင္ေပးထားတဲ့ Project ေလးပါ။\r\nရိုုးရာဓေလ့ အစားအေသာက္ေကာင္း ၾကိဳက္ႏွစ္သက္သူမ်ား အတြက္ေတာ့ မျဖစ္မေန သြားေရာက္ စားသံုးသင့္တဲ့ cozy ထမင္းဆိုင္ ေလး တစ္ခုျဖစ္ပါတယ္။\r\nယံုၾကည့္စိတ္ခ်စြာ လုပ္ငန္း အပ္ႏွံလာတဲ့ RTH Group ကိုလဲ က်ေနာ္တို႕ M-Square မွ အထူးပင္\r\nေက်းဇူးတင္ရွိပါေၾကာင္း။\r\n\r\nလူၾကီးမင္းတို႕ ေနအိမ္တိုက္ခန္း၊ ရံုုးခန္း၊ ဆိုင္ခန္း မ်ားကို ေခတ္မွီ Design လွလွေလးမ်ားနဲ႕\r\nဖန္တီး တည္ေဆာက္ခ်င္တယ္ ဆိုရင္ေတာ့ . က်ေနာ္တို႕\r\nM-Square Construction & Decoration Co.,Ltd နဲ႕ ဆက္သြယ္လိုက္ဖို႕ ဖိတ္ေခၚပါတယ္။\r\n100% စိတ္ေက်နပ္ မႈ၊ ေစ်းႏႈန္း မွန္ကန္မႈ ႏွင့္ အရည္အေသြးျပည့္မွီဖို႕ အတြက္ေတာ့အျပည့္အ၀ တာ၀န္ယူပါတယ္။\r\n\r\n*Interior Design and Conceptualisation by Atelier Sao Design\r\n*Build, Project Consultation and Project Management by M-square\r\n\r\nNo252, Khayay Myaing Street ,VIP 3 Thuwanna Township , Yangon\r\nContact No : 09426999918,09256999918', '5c1c800e4b0cf_Buthee-Upstair-2-1080x675.jpg', '2018-12-21 05:54:22', '2018-12-21 05:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_lat` double DEFAULT NULL,
  `google_map_lon` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'free',
  `vision_and_mission` longtext COLLATE utf8mb4_unicode_ci,
  `what_we_do` longtext COLLATE utf8mb4_unicode_ci,
  `why_join_us` longtext COLLATE utf8mb4_unicode_ci,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'nologo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `email`, `phone`, `facebook_url`, `website_url`, `address`, `description`, `location`, `google_map_lat`, `google_map_lon`, `type`, `vision_and_mission`, `what_we_do`, `why_join_us`, `verify`, `status`, `photo`, `created_at`, `updated_at`) VALUES
(23, 'GreenHackers', 'greenhacker@gmail.com', '09771672511', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'No(51) A ,Bayathe Street, TaMaw, Yangon', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', 9, 9, 'paid', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, '5cbc985d75204_images.png', '2018-11-06 08:49:48', '2019-04-21 17:46:41'),
(25, 'Samsung', 'samsung@gmail.com', '098877788', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'Yangon, Bahan', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Yangon', NULL, NULL, 'free', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'lwin.png', '2018-11-10 13:18:32', '2019-01-11 12:13:03'),
(26, 'CodeX', 'codex@gmail.com', '0977676677', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TesyADdress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Yangon', NULL, NULL, 'paid', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'typ.png', '2018-11-11 16:40:21', '2019-01-09 03:08:14'),
(27, 'Idea', 'idea@gmail.com', '099888999', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Yangon', NULL, NULL, 'paid', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'llk.png', '2018-11-11 16:40:49', '2018-12-23 09:31:56'),
(28, 'Arrow', 'arrow@gmail.com', '098888899', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', NULL, NULL, 'paid', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'lpt.png', '2018-11-11 16:41:19', '2019-01-09 03:08:24'),
(29, 'Speed', 'speed@gmail.com', '098877889', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', NULL, NULL, 'free', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'pnam.png', '2018-11-11 16:41:48', '2018-11-11 16:41:48'),
(30, 'Burn', 'burn@gmail.com', '098889988', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'Tangyi, 34 ', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', NULL, NULL, 'paid', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'kec.png', '2018-11-11 16:42:07', '2019-01-27 04:07:22'),
(32, 'D2', 'd2@gmail.com', '09888888', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Yangon', NULL, NULL, 'free', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, 'pnm.png', '2018-11-11 16:42:58', '2018-12-23 09:48:39'),
(33, 'Code10', 'code10@gmail.com', '09876888', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Other', NULL, NULL, 'free', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 0, 1, 'pnytn.png', '2018-11-11 16:45:03', '2018-11-11 16:45:03'),
(34, 'Idea Info', 'ideainfo@gmail.com', '09771672511', 'https://soundcloud.com/nyein-nyi', 'https://en.wikipedia.org/wiki/Web', 'Yangon, bla bla, Myanmar, bla bla', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Yangon', NULL, NULL, 'paid', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in', 1, 1, '5cbbf0f06fd59_images.png', '2018-11-23 08:09:43', '2019-04-21 04:26:24'),
(37, 'Myint Moh', 'myintmoh@outlook.com', '0987888877', NULL, '', NULL, 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', NULL, NULL, 'free', NULL, NULL, NULL, 0, 1, '5c375e0a16dd5_49592466_2840954112585176_2669726296526815232_n.jpg', '2018-12-22 10:14:17', '2019-01-10 15:00:26'),
(38, 'AungLwingKoKO', 'aung@gmail.com', '09876888', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Other', NULL, NULL, 'free', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 0, 1, 'pnytn.png', '2018-11-11 16:45:03', '2019-01-08 10:25:08'),
(39, 'Iron Cross', 'cross@gmail.com', '09771672511', 'https://www.facebook.com/lamodasuits/', 'https://en.wikipedia.org/wiki/Web', NULL, 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Yangon', NULL, NULL, 'paid', 'rambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'rambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'rambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 1, '5cbbf0b6c7676_download.jpg', '2018-11-23 08:09:43', '2019-04-21 04:40:49'),
(40, 'Lady OO OO', 'ladyoo@outlook.com', '0987888877', 'www.facebook.com', '', NULL, 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', NULL, NULL, 'free', 'crambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrascrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'crambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrascrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'crambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrascrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 0, '5cbbef05e3067_images (2).jpg', '2018-12-22 10:14:17', '2019-04-21 04:18:14'),
(41, 'Speed', 'speed@gmail.com', '098877889', 'https://www.facebook.com/profile.php?id=100011426835764', 'https://en.wikipedia.org/wiki/Web', 'TestAddress', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'Mandalay', NULL, NULL, 'free', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letras', 1, 0, '5cbbf09cbbbed_images (1).jpg', '2018-11-11 16:41:48', '2019-04-21 04:25:00'),
(43, 'BluePhoenix', 'bluephonenix@bluephoenix.com', '0988778889', 'https://soundcloud.com/nyein-nyi', 'https://www.greenhackeronline.com/', 'Yangon, bla bla, Myanmar, bla bla', 'asaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a aasaasaaaa  a a a a a aaaaa  aa aa a a', 'Yangon', NULL, NULL, 'paid', 'bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b bb b b b b b b b  b b', 'ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c ccccc  c c c c c c c  c c c c', 'dddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d ddddddddd  dddd d d  ddddd d d d d d  d d', 1, 1, '5cbbf43b94e4c_download (1).jpg', '2018-12-31 03:04:55', '2019-04-21 04:40:27'),
(44, 'Adault', 'adault@gmail.com', '098888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, 0, 0, 'nologo.png', '2019-01-30 16:07:27', '2019-01-30 16:25:45'),
(45, 'love', 'love@gmail.com', '09988899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, 0, 1, 'nologo.png', '2019-02-13 11:18:59', '2019-02-13 11:18:59'),
(46, 'thuyeinsoe', 'thuyeinsoe@gmail.com', '09888899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, 0, 1, 'nologo.png', '2019-02-13 11:23:21', '2019-02-13 11:23:21'),
(47, 'Little Apple', 'littleapple@gmail.com', '098877788777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, 0, 1, 'nologo.png', '2019-04-21 04:51:08', '2019-04-21 04:58:03'),
(48, 'Moe Moe', 'moemoekyawkyaw@gmail.com', '09771672511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'free', NULL, NULL, NULL, 0, 1, 'nologo.png', '2019-04-24 09:55:13', '2019-04-24 09:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `company_feedbacks`
--

CREATE TABLE `company_feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_feedbacks`
--

INSERT INTO `company_feedbacks` (`id`, `picture`, `company_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '5c2e04337833c_8551.jpg', 23, 'Ye Yint ko', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, '2019-01-03 12:46:43'),
(2, 'client-4.jpg', 23, 'Aung Aung', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(3, 'client-2.jpg', 23, 'Naing Lin', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(4, '5c2e047f6387c_favicon.png', 23, 'Aung Aung', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, '2019-01-03 12:47:59'),
(5, 'client-1.jpg', 27, 'Ye Yint Ko', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(6, 'client-4.jpg', 27, 'Aung Aung', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(7, 'client-2.jpg', 28, 'Naing Lin', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(8, 'client-3.jpg', 29, 'Aung Aung', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(9, 'client-2.jpg', 23, 'Naing Lin', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, NULL),
(10, '5c336bdbbb3e0_49592466_2840954112585176_2669726296526815232_n.jpg', 23, 'Aung Aung', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', NULL, '2019-01-07 15:10:19'),
(11, '5c336be7a5000_49745690_2840954005918520_546117757544955904_n.jpg', 23, 'Thu Yein Soe', 'fjdf jdkjfsadjfk dsfkjdfklsdjf djkfljfdfjdljf\r\nljlhjh ljhh', '2018-11-15 13:39:50', '2019-01-07 15:10:31'),
(12, '5c505cc45017c_8551.jpg', 23, 'Thu Yein Soe', 'jfdjf kldsjfdkjf dfdjf dsfkljdfkj fdfjfjdkfjd', '2018-11-15 13:46:25', '2019-01-29 14:01:40'),
(13, '5c2e0498f0ce4_basic.jpg', 23, 'AAAAAAA', 'dfjdkfjdf asd;kfjd lkflksdf asdfkdjfdj fd', '2019-01-03 12:48:24', '2019-01-03 12:48:24'),
(14, '5c32c9c1206dd_DSC-W530409.JPG', 34, 'Ye Yint Ko', 'Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer tookIpsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer tookIpsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took', '2019-01-07 03:38:41', '2019-01-07 03:39:41'),
(15, '5c51f1c932077_maxresdefault.jpg', 43, 'Ye Yint Ko', 'aa bbb cccaa bbb cccaa bbb cccaa bbb ccc', '2019-01-30 18:49:45', '2019-01-30 18:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `android` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instragram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_and_mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `what_we_do` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `email`, `phone`, `address`, `video`, `android`, `ios`, `facebook`, `google`, `twitter`, `instragram`, `about_us`, `vision_and_mission`, `what_we_do`, `created_at`, `updated_at`) VALUES
(1, 'ideainfo@gmail.com', '09771672511', 'Yangon, bla bla, Myanmar, bla bla', 'https://www.youtube.com/embed/1X0SdKtnwo8', 'https://play.google.com/store/apps/details?id=kyawhtut.itnews', 'https://play.google.com/store/apps/details?id=kyawhtut.itnews', 'https://soundcloud.com/big-biggy-769518585', 'https://en.wikipedia.org/wiki/Web', 'https://www.facebook.com/allinoneNESW/?modal=admin_todo_tour', 'https://www.facebook.com/allinoneNESW/?modal=admin_todo_tour', 'nd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with', 'nd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the', 'nd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with', NULL, '2019-02-15 18:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `company_projects`
--

CREATE TABLE `company_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `project_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_projects`
--

INSERT INTO `company_projects` (`id`, `company_id`, `project_title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 23, 'Photo 1 bla bla', '5c670afe52e53_200c0y000000ma2cs9603_R_1136_750_R5_D.jpg', '2018-11-15 14:50:31', '2019-02-15 18:54:54'),
(2, 23, 'bbb', '5c2dfad64d64a_w.jpg', '2018-11-15 15:02:26', '2019-01-03 12:06:46'),
(3, 23, 'BBB', '5bed8ab878f14_[From www.metacafe.com] 1437796.7305947.1.jpg', '2018-11-15 15:03:20', '2018-11-15 15:03:20'),
(4, 23, 'Hello', '5bed8b61beb40_[From www.metacafe.com] 1437796.7305953.1.jpg', '2018-11-15 15:06:09', '2018-11-15 15:06:09'),
(5, 23, 'Ye Yint', '5bed8bfeaa510_[From www.metacafe.com] 1437796.7305953.1.jpg', '2018-11-15 15:08:46', '2018-11-15 15:08:46'),
(6, 23, 'UUUU', '5bed8c5583ae9_[From www.metacafe.com] 1437796.7305951.1.jpg', '2018-11-15 15:10:13', '2018-11-15 15:10:13'),
(7, 23, 'Page', '5c2d9ac2dfa68_maxresdefault.jpg', '2019-01-03 05:08:29', '2019-01-03 05:16:50'),
(8, 34, 'MKn', '5c32c0e818e2d_DSC-W530411.JPG', '2019-01-07 03:00:56', '2019-01-07 03:00:56'),
(9, 23, 'Page Apple', '5c517257a800a_[From www.metacafe.com] 1437796.7305961.1.jpg', '2019-01-30 09:45:59', '2019-01-30 09:45:59'),
(10, 43, 'December Promotion:', '5c51cd1b08723_49745690_2840954005918520_546117757544955904_n.jpg', '2019-01-30 16:13:15', '2019-01-30 16:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `company__keywords`
--

CREATE TABLE `company__keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company__keywords`
--

INSERT INTO `company__keywords` (`id`, `company_id`, `keyword_id`, `created_at`, `updated_at`) VALUES
(1, 34, 1, NULL, NULL),
(2, 34, 2, NULL, NULL),
(3, 23, 3, NULL, NULL),
(4, 23, 4, NULL, NULL),
(5, 30, 1, NULL, NULL),
(6, 30, 2, NULL, NULL),
(7, 27, 3, NULL, NULL),
(8, 27, 4, NULL, NULL),
(9, 28, 4, NULL, NULL),
(10, 28, 5, NULL, NULL),
(11, 29, 6, NULL, NULL),
(12, 29, 5, NULL, NULL),
(13, 31, 4, NULL, NULL),
(14, 31, 3, NULL, NULL),
(15, 32, 2, NULL, NULL),
(16, 32, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Ye Yint Ko', 'greenhacker@gmail.com', '0977887666', 'sdsdsd', 'fsddddddddddddddd', '2019-02-15 16:22:15', '2019-02-15 16:22:15'),
(2, 'Khine', 'khine@gmail.com', '098888889', 'Hello', 'dsjdkjfdjf dfdf dfdf', '2019-02-18 16:39:33', '2019-02-18 16:39:33'),
(3, 'Aung Aung', 'ideainfo@gmail.com', '09771672511', 'AA', 'jfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd f', '2019-02-18 17:04:24', '2019-02-18 17:04:24'),
(4, 'Aung Aung', 'ideainfo@gmail.com', '09771672511', 'AA', 'jfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd f', '2019-02-18 17:09:18', '2019-02-18 17:09:18'),
(5, 'Aung Aung', 'ideainfo@gmail.com', '09771672511', 'AA', 'jfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd f', '2019-02-18 17:09:53', '2019-02-18 17:09:53'),
(6, 'Aung Aung', 'ideainfo@gmail.com', '09771672511', 'AA', 'jfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd f', '2019-02-18 17:10:33', '2019-02-18 17:10:33'),
(7, 'Aung Aung', 'ideainfo@gmail.com', '09771672511', 'AA', 'jfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd f', '2019-02-18 17:10:58', '2019-02-18 17:10:58'),
(8, 'Aung Aung', 'ideainfo@gmail.com', '09771672511', 'AA', 'jfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd fjfkfjjf s;sdjfds sdjf asdjf dsfjd f', '2019-02-18 17:15:21', '2019-02-18 17:15:21'),
(9, 'Mo Mo', 'molaohein@gmail.com', '099888899', 'Hello', 'ddsfj asdfj dfjd fadsjfjdfjd', '2019-02-18 17:20:09', '2019-02-18 17:20:09'),
(10, 'Aung Aung', 'ideainfo@gmail.com', '09998999', 'AA', 'mnm,nmnnm', '2019-02-18 17:22:53', '2019-02-18 17:22:53'),
(11, 'Grand Diamond Guest House', 'yeyintko.mkn@gmail.com', '09998999', 'Hello', 'nmnmn', '2019-02-18 17:27:31', '2019-02-18 17:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget_range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id_arr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_type_arr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `current_situation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `username`, `email`, `phone`, `address`, `budget_range`, `category_id_arr`, `project_type_arr`, `start_date`, `current_situation`, `note`, `file`, `created_at`, `updated_at`) VALUES
(23, 'Ye Yint Ko', 'yeyintko.mkn@gmail.com', '09771672511', 'MKN', '50laks', '[\"2\",\"3\"]', '[\"1\",\"2\"]', '2018-12-28', 'aaaa', 'bbbbbbbbb', '', '2018-12-15 11:06:57', '2018-12-15 11:06:57'),
(24, 'Wai Lin aung', 'wailinaung@gmail.com', '09878999', 'Myitkyina', '200laks', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '2019-01-31', 'dfddfdfd', 'sdfdfdfdf', '', '2018-12-31 05:12:58', '2018-12-31 05:12:58'),
(25, 'Thu Yein', 'thuyeinsoe@gmail.com', '09877788', 'Yagon', '50laks', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '2019-01-17', 'dfddfdfd', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', '', '2019-01-04 04:47:15', '2019-01-04 04:47:15'),
(26, 'Chit Min Thu', 'chitminthu@gmail.com', '09771672511', 'Yangon, bla bla, Myanmar, bla bla', '200laks', '[\"1\"]', '[\"1\"]', '2019-01-16', 'aaaa', 'sdfdfdfdf', '', '2019-01-08 04:41:24', '2019-01-08 04:41:24'),
(27, 'Su Wai Wai Aung', 'suwaiwaiaung.mkn@gmail.com', '0988899999', 'Myitkyina, bla bla, Myanmar, bla bla', 'more300laks', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"3\",\"5\",\"6\"]', '2019-01-31', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', '', '2019-01-08 08:01:15', '2019-01-08 08:01:15'),
(28, 'Sai Arkar', 'saiarkar@gmail.com', '09888998', 'Myitkyina, AyeSayti', '300laks', '[\"1\",\"2\"]', '[\"1\",\"2\",\"3\"]', '2019-01-24', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', '', '2019-01-08 13:06:44', '2019-01-08 13:06:44'),
(29, 'Kwee', 'kwee@gmail.com', '09888999', 'Bysdfj askdjf d, Yangon', '200laks', '[\"1\",\"3\"]', '[\"5\",\"6\"]', '2019-01-26', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', '', '2019-01-09 02:31:02', '2019-01-09 02:31:02'),
(30, 'ခ်စ္မင္းသူ', 'chitmin@gmail.co', '099888888', 'Yagon', 'more300laks', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"3\"]', '2019-01-26', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', '', '2019-01-15 08:21:54', '2019-01-15 08:21:54'),
(31, 'Moe Kyaw Kyaw', 'moekyaw@gmail.com', '0998777888', 'Myitkyina', '300laks', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"3\"]', '2019-01-31', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'dfjdkfjdf asd;kfjd lkflksdf asdfkdjfdj fd', '', '2019-01-27 10:56:57', '2019-01-27 10:56:57'),
(32, 'That Phoo Ngon', 'that@gmail.com', '09887778', 'Myitkyina', '100laks', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', '2019-01-30', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', '', '2019-01-27 10:59:54', '2019-01-27 10:59:54'),
(38, 'Mo Lao Hein', 'molaohein@gmail.com', '09771672511', 'Yangon, bla bla, Myanmar, bla bla', '200laks', '[\"1\",\"2\"]', '[\"1\",\"2\"]', '2019-01-30', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', '', '2019-01-27 13:33:11', '2019-01-27 13:33:11'),
(39, 'Khin Moe Aye', 'khinmoeaye@gmail.com', '099889999', 'Myitkyina', '300laks', '[\"1\",\"2\"]', '[\"2\",\"4\",\"6\"]', '2019-01-31', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', '5c501c9ae129c_50807582_792061294490544_627213234083987456_n.jpg', '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(40, 'Moe Kyaw', 'moe@gmail.com', '09998999', 'Myitkyina', '200laks', '[\"1\",\"2\"]', '[\"1\",\"4\",\"6\"]', '2019-01-24', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', '5c501d57c3612_12 things to do ubuntu 18.04.pdf', '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(41, 'Ye Yint Ko', 'yeyintko.mkn@gmail.com', '09771672511', '677767767', '300laks', '[\"1\"]', '[\"1\",\"2\"]', '2019-02-21', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'dfjdkfjdf asd;kfjd lkflksdf asdfkdjfdj fd', '5c6544510d8f7_49745690_2840954005918520_546117757544955904_n.jpg', '2019-02-14 10:35:09', '2019-02-14 10:35:09'),
(42, 'Khin', 'khinmoeaye@gmail.com', '098777788', 'Myitkyina', '300laks', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\"]', '2019-03-31', 'mmodare per. Regione debitis neglegentur mea ei, cum homero petentium persequeris ex. Ea feugait disputationi his. Nominavi deleniti nam et. Novum tollit incorrupte et vim, eu quo cibo diceret. Eu pro partem voluptua forensibus.', 'd scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets cont', '', '2019-03-06 09:22:04', '2019-03-06 09:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `employee__companies`
--

CREATE TABLE `employee__companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee__companies`
--

INSERT INTO `employee__companies` (`id`, `employee_id`, `company_id`, `created_at`, `updated_at`) VALUES
(25, 23, 34, '2018-12-15 11:06:57', '2018-12-15 11:06:57'),
(26, 23, 30, '2018-12-15 11:06:58', '2018-12-15 11:06:58'),
(27, 23, 32, '2018-12-15 11:06:58', '2018-12-15 11:06:58'),
(28, 24, 34, '2018-12-31 05:12:59', '2018-12-31 05:12:59'),
(29, 24, 30, '2018-12-31 05:12:59', '2018-12-31 05:12:59'),
(30, 24, 32, '2018-12-31 05:12:59', '2018-12-31 05:12:59'),
(31, 25, 34, '2019-01-04 04:47:16', '2019-01-04 04:47:16'),
(32, 25, 30, '2019-01-04 04:47:16', '2019-01-04 04:47:16'),
(33, 25, 32, '2019-01-04 04:47:16', '2019-01-04 04:47:16'),
(34, 26, 30, '2019-01-08 04:41:24', '2019-01-08 04:41:24'),
(35, 27, 34, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(36, 27, 30, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(37, 27, 32, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(38, 27, 23, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(39, 27, 27, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(41, 27, 28, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(42, 27, 29, '2019-01-08 08:01:16', '2019-01-08 08:01:16'),
(44, 28, 23, '2019-01-08 13:06:44', '2019-01-08 13:06:44'),
(45, 28, 27, '2019-01-08 13:06:44', '2019-01-08 13:06:44'),
(46, 28, 34, '2019-01-08 13:06:44', '2019-01-08 13:06:44'),
(47, 28, 32, '2019-01-08 13:06:44', '2019-01-08 13:06:44'),
(49, 29, 28, '2019-01-09 02:31:02', '2019-01-09 02:31:02'),
(50, 29, 29, '2019-01-09 02:31:02', '2019-01-09 02:31:02'),
(51, 30, 23, '2019-01-15 08:21:54', '2019-01-15 08:21:54'),
(52, 30, 27, '2019-01-15 08:21:54', '2019-01-15 08:21:54'),
(53, 30, 32, '2019-01-15 08:21:54', '2019-01-15 08:21:54'),
(54, 30, 34, '2019-01-15 08:21:54', '2019-01-15 08:21:54'),
(55, 31, 27, '2019-01-27 10:56:57', '2019-01-27 10:56:57'),
(56, 31, 30, '2019-01-27 10:56:57', '2019-01-27 10:56:57'),
(57, 32, 30, '2019-01-27 10:59:54', '2019-01-27 10:59:54'),
(58, 32, 23, '2019-01-27 10:59:54', '2019-01-27 10:59:54'),
(59, 32, 27, '2019-01-27 10:59:55', '2019-01-27 10:59:55'),
(60, 32, 28, '2019-01-27 10:59:55', '2019-01-27 10:59:55'),
(61, 32, 34, '2019-01-27 10:59:55', '2019-01-27 10:59:55'),
(62, 32, 32, '2019-01-27 10:59:55', '2019-01-27 10:59:55'),
(63, 32, 29, '2019-01-27 10:59:55', '2019-01-27 10:59:55'),
(72, 38, 32, '2019-01-27 13:33:11', '2019-01-27 13:33:11'),
(73, 38, 34, '2019-01-27 13:33:11', '2019-01-27 13:33:11'),
(74, 39, 23, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(75, 39, 28, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(76, 39, 30, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(77, 39, 27, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(78, 39, 29, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(79, 39, 34, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(80, 39, 32, '2019-01-29 09:29:22', '2019-01-29 09:29:22'),
(81, 40, 27, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(82, 40, 28, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(83, 40, 30, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(84, 40, 23, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(85, 40, 29, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(86, 40, 34, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(87, 40, 32, '2019-01-29 09:32:41', '2019-01-29 09:32:41'),
(88, 41, 30, '2019-02-14 10:35:09', '2019-02-14 10:35:09'),
(89, 41, 34, '2019-02-14 10:35:09', '2019-02-14 10:35:09'),
(90, 42, 30, '2019-03-06 09:22:05', '2019-03-06 09:22:05'),
(91, 42, 32, '2019-03-06 09:22:05', '2019-03-06 09:22:05'),
(92, 42, 34, '2019-03-06 09:22:05', '2019-03-06 09:22:05'),
(93, 43, 23, '2019-04-21 15:55:02', '2019-04-21 15:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Residential', NULL, NULL),
(2, 'Commercial & Offices', NULL, NULL),
(3, 'Industrial & Infrastructure', NULL, NULL),
(4, 'Healthcare & Hospitality', NULL, NULL),
(5, 'Public, Cultural & Religious', NULL, NULL),
(6, 'Landscape & Urbanism', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Service Company', '2018-11-06 23:01:37', '2018-11-06 23:01:37'),
(2, 'Supplier', '2018-11-06 23:02:31', '2018-11-06 23:02:31'),
(3, 'RenoBusiness', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_11_04_145114_create_companies_tabel', 1),
(2, '2018_11_04_145308_create_main_categories_tabel', 2),
(3, '2018_11_04_145348_create_sub_categories_tabel', 3),
(4, '2018_11_04_145421_create_projects_tabel', 4),
(5, '2018_11_04_145831_create_sub_categroy_company_tabel', 5),
(6, '2018_11_04_150357_create_admins_tabel', 6),
(7, '2018_11_04_160356_create_company_feedbacks_tabel', 7),
(8, '2018_11_06_144826_create_companies_table', 8),
(9, '2018_11_12_202325_create_top_companies_table', 9),
(12, '2018_11_13_033453_create_user_company_record_view', 10),
(13, '2018_11_14_001216_create_company_feedbacks_table', 11),
(14, '2018_11_14_172706_create_view_user_companies_table', 12),
(15, '2018_11_14_210650_create_admin_feedbacks_table', 13),
(16, '2018_11_15_210154_create_company_projects_table', 14),
(17, '2018_11_22_210501_create_employees_table', 15),
(18, '2018_11_22_213853_create_employee__companies_table', 16),
(19, '2018_12_15_120804_create_keywords_table', 17),
(20, '2018_12_15_121525_create_company__keywords_table', 17),
(21, '2018_12_20_144725_create_blogs_table', 18),
(22, '2018_12_27_194632_create_company_profiles_table', 19),
(23, '2019_01_28_152610_create_ads_table', 20),
(24, '2019_01_28_152858_create_webpages_table', 21),
(25, '2019_01_28_153031_create_ads_webpages_table', 21),
(26, '2019_02_14_214937_create_contacts_table', 22),
(28, '2019_04_13_170311_create_view_main_category_companies_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `main_category_id`, `category_name`, `logo`, `created_at`, `updated_at`) VALUES
(1, '1', 'Developers', 'fa fa-bar-chart', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(2, '1', 'Constructions', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(3, '1', 'Interior Decoration', 'fa fa-google', '2018-11-07 10:10:58', '2018-11-07 10:10:58'),
(5, '2', 'Flooring', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(6, '2', 'Glass', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(7, '1', 'Architecture Design', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(8, '1', 'Interior Design', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(9, '1', 'Engineering', 'fa fa-google', '2018-11-07 10:10:58', '2018-11-07 10:10:58'),
(10, '1', 'Plumbing', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(11, '1', 'Air-con Services', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(12, '1', 'Research Labs', 'fa fa-google', '2018-11-07 10:10:58', '2018-11-07 10:10:58'),
(13, '2', 'Stone', 'fa fa-google', '2018-11-07 10:11:07', '2018-11-07 10:11:07'),
(14, '2', 'Aluminium/ Iron/ Steel', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(15, '2', 'Hardwood/ Engineered Wood', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(16, '2', 'Eco-Friendly Materials', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(17, '2', 'Furnitures', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(18, '2', 'Decorative Accessories', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(19, '2', 'Equipments & Machinery', 'fa fa-google', '2018-11-07 10:11:07', '2018-11-07 10:11:07'),
(20, '2', 'Plastics', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(21, '2', 'Lighting', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(22, '2', 'Plumbing Fixtures', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(23, '2', 'Safety & Security', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(24, '3', 'Freelancers', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(25, '3', 'Sub Contractors', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(26, '3', 'Real Estate', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(27, '3', 'Printing & Advertising', 'fa fa-google', '2018-11-06 23:16:46', '2018-11-06 23:16:46'),
(28, '3', 'Banking & Insurance', 'fa fa-google', '2018-11-07 10:11:07', '2018-11-07 10:11:07'),
(29, '3', 'Law Firms', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(30, '3', 'Rental Services', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21'),
(31, '3', 'Training & Courses', 'fa fa-google', '2018-11-07 10:11:13', '2018-11-07 10:11:13'),
(32, '3', 'Government Offices', 'fa fa-google', '2018-11-07 10:11:21', '2018-11-07 10:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_companies`
--

CREATE TABLE `sub_category_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category_companies`
--

INSERT INTO `sub_category_companies` (`id`, `company_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(3, 25, 1, NULL, NULL),
(4, 25, 2, NULL, NULL),
(5, 27, 7, NULL, NULL),
(6, 28, 8, NULL, NULL),
(7, 27, 5, NULL, NULL),
(8, 27, 2, NULL, NULL),
(9, 26, 1, NULL, NULL),
(10, 26, 2, NULL, NULL),
(11, 26, 5, NULL, NULL),
(12, 27, 3, NULL, NULL),
(14, 28, 9, NULL, NULL),
(15, 29, 11, NULL, NULL),
(16, 29, 10, NULL, NULL),
(17, 30, 13, NULL, NULL),
(18, 30, 14, NULL, NULL),
(19, 30, 12, NULL, NULL),
(20, 31, 2, NULL, NULL),
(21, 31, 15, NULL, NULL),
(22, 31, 17, NULL, NULL),
(23, 32, 20, NULL, NULL),
(24, 32, 19, NULL, NULL),
(25, 33, 23, NULL, NULL),
(26, 33, 22, NULL, NULL),
(27, 34, 2, NULL, NULL),
(28, 34, 1, NULL, NULL),
(29, 27, 6, NULL, NULL),
(32, 25, 3, NULL, NULL),
(33, 32, 18, NULL, NULL),
(34, 33, 24, NULL, NULL),
(35, 34, 3, NULL, NULL),
(37, 33, 25, NULL, NULL),
(38, 32, 21, NULL, NULL),
(39, 23, 1, '2019-04-21 17:45:54', '2019-04-21 17:45:54'),
(40, 23, 2, '2019-04-21 17:45:54', '2019-04-21 17:45:54'),
(41, 23, 3, '2019-04-21 17:45:54', '2019-04-21 17:45:54'),
(42, 23, 9, '2019-04-21 17:45:54', '2019-04-21 17:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `top_companies`
--

CREATE TABLE `top_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_companies`
--

INSERT INTO `top_companies` (`id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '27', '2018-11-12 14:40:19', '2018-11-12 14:40:19'),
(2, '28', '2018-11-12 14:40:20', '2018-11-12 14:40:20'),
(8, '34', '2019-01-11 12:12:36', '2019-01-11 12:12:36'),
(9, '31', '2019-01-11 12:12:40', '2019-01-11 12:12:40'),
(10, '29', '2019-01-11 12:12:44', '2019-01-11 12:12:44'),
(11, '23', '2019-01-11 12:12:54', '2019-01-11 12:12:54'),
(12, '25', '2019-01-11 12:13:05', '2019-01-11 12:13:05'),
(13, '43', '2019-01-13 13:51:45', '2019-01-13 13:51:45'),
(14, '39', '2019-01-13 14:46:50', '2019-01-13 14:46:50'),
(15, '32', '2019-01-13 14:47:06', '2019-01-13 14:47:06'),
(16, '26', '2019-01-27 04:07:08', '2019-01-27 04:07:08'),
(17, '30', '2019-01-27 04:07:25', '2019-01-27 04:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(255) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 0, 'admin@gmail.com', NULL, '$2y$10$btqFuU2zU0csQur8mD2Qo.9TBKLMI6R/cjdfKoq.IrhevshXjLSde', NULL, '2018-11-06 08:49:49', '2018-11-06 08:49:49'),
(5, 24, 'apple@gmail.com', NULL, '$2y$10$.QVZVf3Kp793hS/9tk252OZamMmEgxs/ehYeGEQTsy0MRHlAgGwfq', NULL, '2018-11-10 06:04:49', '2018-11-10 06:04:49'),
(6, 25, 'samsung@gmail.com', NULL, '$2y$10$3GLYTFmsyRH6YIWhVHhOxu6Vv4FdbgSz/4yAMeK2M3LJNuUm3KFiu', NULL, '2018-11-10 13:18:32', '2018-11-10 13:18:32'),
(7, 26, 'codex@gmail.com', NULL, '$2y$10$a/ZRCC5FHS.UC3BPTVqlb.ifdilUXEhjt1/kevrPGWhw7e.SSwY8S', NULL, '2018-11-11 16:40:22', '2018-11-11 16:40:22'),
(8, 27, 'idea@gmail.com', NULL, '$2y$10$lhuyW9pvToE0AIB0Eu0Gsur.af0ZeG8dRLLZahp5xF0D45QCXfBv.', NULL, '2018-11-11 16:40:49', '2018-11-11 16:40:49'),
(9, 28, 'arrow@gmail.com', NULL, '$2y$10$1IWSYwYftkjRs.uqLvX0YuGFrpI4Aq4sCHRVj7bKa29kEA3tM/UH.', NULL, '2018-11-11 16:41:19', '2018-11-11 16:41:19'),
(10, 29, 'speed@gmail.com', NULL, '$2y$10$oLx8vcRgFat.5SXN2RYsL.uuaodlH4wblzOX2DtrLuVLm/hwdiBTu', NULL, '2018-11-11 16:41:49', '2018-11-11 16:41:49'),
(11, 30, 'burn@gmail.com', NULL, '$2y$10$kJN7pwArvysEN2gBilkj0.NjnD7H2lxzZ.heZIsuuX9uTlh/UZQ0O', NULL, '2018-11-11 16:42:08', '2018-11-11 16:42:08'),
(12, 31, 'rommy@gmail.com', NULL, '$2y$10$AH0/8C0ppVSKWZkh/9Dan.letGyktus3bMTHHOCRqakrye8a5Qt0O', NULL, '2018-11-11 16:42:35', '2018-11-11 16:42:35'),
(13, 32, 'd2@gmail.com', NULL, '$2y$10$T.cjprXwLZ9gR/XbAo0DQ.ZOiXMuZFfOM0UDBVK05ncYMKCPxwSz2', NULL, '2018-11-11 16:42:58', '2018-11-11 16:42:58'),
(14, 33, 'code10@gmail.com', NULL, '$2y$10$KpMEC2GDi5HuxaK1Zpe22.RpE.TMxzG.iHV2Jl5WXWcmyIalOKeyi', NULL, '2018-11-11 16:45:03', '2018-11-11 16:45:03'),
(15, 34, 'ideainfo@gmail.com', NULL, '$2y$10$3lG1IplE0l.Syq9jKbBBHuOhXk/u7bmLCgYwGRX6bFEnlo1i7Fg2q', NULL, '2018-11-23 08:09:44', '2018-11-23 08:09:44'),
(16, 37, 'myintmoh@outlook.com', NULL, '$2y$10$6W7p8Sl3BEz6Nnhdn/bsSOj2L5Jb3Pihh3B4CabsCJ7ZcSUxbdUMa', NULL, '2018-12-22 10:14:18', '2018-12-22 10:14:18'),
(17, 43, 'cto@bluephoenix.com', NULL, '$2y$10$SCR2IQMJ2bajgXHrbywfQumw8p6o08Q7JaCXkcd/1XeiSMNj7fhli', NULL, '2018-12-31 03:04:55', '2018-12-31 03:04:55'),
(18, 23, 'greenhacker@gmail.com', NULL, '$2y$10$btqFuU2zU0csQur8mD2Qo.9TBKLMI6R/cjdfKoq.IrhevshXjLSde', NULL, '2018-11-06 08:49:49', '2018-11-06 08:49:49'),
(19, 44, 'adault@gmail.com', NULL, '$2y$10$22xvqLSYGcrl0hYIjK8ZAuJvXMaQK6ek/qLjjT5kXNFMl8Qszel6u', NULL, '2019-01-30 16:07:27', '2019-01-30 16:07:27'),
(20, 45, 'love@gmail.com', NULL, '$2y$10$JwC5b1MF3ZrxOpqVnZPdK.ZLIbXAAQeiNNSIEy85J39m/4/9Spu2K', NULL, '2019-02-13 11:19:00', '2019-02-13 11:19:00'),
(21, 46, 'thuyeinsoe@gmail.com', NULL, '$2y$10$fV31MmRH4PwC7GreQSMmjOjA6QodEIZ4pchLM2LYVsgfdcBAiOi6O', NULL, '2019-02-13 11:23:21', '2019-02-13 11:23:21'),
(22, 47, 'littleapple@gmail.com', NULL, '$2y$10$JX./nQHDiRoQpw3TGenG5uB.oQLJMPqj8ltGFoNQd/3v8RwrLbdWa', NULL, '2019-04-21 04:51:09', '2019-04-21 04:51:09');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_main_category_companies`
-- (See below for the actual view)
--
CREATE TABLE `view_main_category_companies` (
`id` int(10) unsigned
,`company_id` int(11)
,`subcategory_id` int(11)
,`created_at` timestamp
,`updated_at` timestamp
,`main_category_id` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_companies`
-- (See below for the actual view)
--
CREATE TABLE `view_user_companies` (
`id` int(10) unsigned
,`company_name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`facebook_url` varchar(255)
,`website_url` text
,`address` varchar(255)
,`description` longtext
,`location` varchar(255)
,`google_map_lat` double
,`google_map_lon` double
,`type` varchar(255)
,`vision_and_mission` longtext
,`what_we_do` longtext
,`why_join_us` longtext
,`verify` tinyint(1)
,`status` tinyint(1)
,`photo` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE `webpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Area 1', NULL, NULL),
(2, 'Area 2', NULL, NULL),
(3, 'Area 3', NULL, NULL),
(4, 'Area 4', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `view_main_category_companies`
--
DROP TABLE IF EXISTS `view_main_category_companies`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_main_category_companies`  AS  select `sub_category_companies`.`id` AS `id`,`sub_category_companies`.`company_id` AS `company_id`,`sub_category_companies`.`subcategory_id` AS `subcategory_id`,`sub_category_companies`.`created_at` AS `created_at`,`sub_category_companies`.`updated_at` AS `updated_at`,`sub_categories`.`main_category_id` AS `main_category_id` from (`sub_category_companies` left join `sub_categories` on((`sub_category_companies`.`subcategory_id` = `sub_categories`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_companies`
--
DROP TABLE IF EXISTS `view_user_companies`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_companies`  AS  select `companies`.`id` AS `id`,`companies`.`company_name` AS `company_name`,`companies`.`email` AS `email`,`companies`.`phone` AS `phone`,`companies`.`facebook_url` AS `facebook_url`,`companies`.`website_url` AS `website_url`,`companies`.`address` AS `address`,`companies`.`description` AS `description`,`companies`.`location` AS `location`,`companies`.`google_map_lat` AS `google_map_lat`,`companies`.`google_map_lon` AS `google_map_lon`,`companies`.`type` AS `type`,`companies`.`vision_and_mission` AS `vision_and_mission`,`companies`.`what_we_do` AS `what_we_do`,`companies`.`why_join_us` AS `why_join_us`,`companies`.`verify` AS `verify`,`companies`.`status` AS `status`,`companies`.`photo` AS `photo`,`companies`.`created_at` AS `created_at`,`companies`.`updated_at` AS `updated_at` from `companies` where ((`companies`.`verify` = 1) and (`companies`.`status` = 1)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_feedbacks`
--
ALTER TABLE `admin_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_webpages`
--
ALTER TABLE `ads_webpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_feedbacks`
--
ALTER TABLE `company_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_projects`
--
ALTER TABLE `company_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company__keywords`
--
ALTER TABLE `company__keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee__companies`
--
ALTER TABLE `employee__companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_companies`
--
ALTER TABLE `sub_category_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_companies`
--
ALTER TABLE `top_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_feedbacks`
--
ALTER TABLE `admin_feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ads_webpages`
--
ALTER TABLE `ads_webpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `company_feedbacks`
--
ALTER TABLE `company_feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_projects`
--
ALTER TABLE `company_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company__keywords`
--
ALTER TABLE `company__keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `employee__companies`
--
ALTER TABLE `employee__companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sub_category_companies`
--
ALTER TABLE `sub_category_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `top_companies`
--
ALTER TABLE `top_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
