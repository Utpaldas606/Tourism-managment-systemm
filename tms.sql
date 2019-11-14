-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 04:47 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) CHARACTER SET utf32 NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'admin', '202cb962ac59075b964b07152d234b70', '2019-07-10 14:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) CHARACTER SET latin1 NOT NULL,
  `FromDate` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ToDate` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Comment` mediumtext CHARACTER SET latin1 NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, '1', '2019-09-14', '2019-09-14', 'Qui repellendus Con', '2019-09-13 20:22:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'aboutus', '																				বাংলাদেশ পর্যটন করপোরেশন অতিথি সেবায় অদ্বিতীয় প্রতিষ্ঠান। স্বাধীন বাংলাদেশকে পর্যটকদের কাছে বিশ্বের অন্যতম পর্যটন নগরী হিসাবে গড়ে তুলতে সর্বকালের সর্বশ্রেষ্ঠ বাঙ্গালী জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমান ১৯৭২ সালের সংবিধানে ১৪৩ নং আদেশের মাধ্যমে সংস্থাটি প্রতিষ্ঠা করেন। প্রতিষ্ঠানটি ১৯৭৩ সাল থেকে দেশের একমাত্র সরকারি পর্যটন সংস্থা হিসাবে যাত্রা শুরু করে।  সৃষ্টি লগ্ন থেকে প্রতিষ্ঠানটি রূপময় বাংলাদেশের ঐতিহ্য ও পর্যটন আকর্ষণীয় স্থাপনাসমূহ দেশি-বিদেশি পর্যটকদের কাছে প্রচার এবং পর্যটন সেবা প্রদান করে আসছে।  বাংলাদেশের পর্যটন শিল্পের উন্নয়নে এ প্রতিষ্ঠানটির অবদান অপরিসীম। পর্যটন খাতে বেসরকারি প্রতিষ্ঠানকে উৎসায়িত করা ও  নতুন পর্যটন আকর্ষণীয় এলাকা চিহ্নিতকরণ এবং প্রশিক্ষণের মাধ্যমে দক্ষ জনবল তৈরি এ প্রতিষ্ঠানটির একটি বড় চ্যালেঞ্জ । গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের ঘোষিত ‘রূপকল্প ভিশন ২০২১’ বাস্তবায়নে জন্য ডিজিটাল বাংলাদেশ বিনির্মাণের লক্ষ্যে বাংলাদেশ পর্যটন করপোরেশন এর অধীনস্থ সকল বার্ণিজ্যিক হোটেল-মোটেলসমূহে অনলাইন বুকিং সিস্টেম চালু করেছে। এ অনলাইন বুকিং সেবা গ্রহণ করে খুব সহজেই বাংলাদেশ পর্যটন করপোরেশনের সকল হোটেল-মোটেলে অতিথি হওয়া যায়। নিম্নোক্ত লিংকটির মাধ্যমে বুকিং করা যাবে-'),
(2, 'terms', '										হারিজমা অ্যালায়েন্স এলপি (\"হারিজমা\" বা \"আমরা\") আপনাকে তার ওয়েবসাইট তে স্বাগত জানাতে (\"গ্রাহক\" বা \"আপনি\") স্বাগত জানাই। সাইটটির রেফারেন্সগুলি ডেরাইভেটিভস অন্তর্ভুক্ত অন্তর্ভুক্ত বলে মনে করা হয়, যার মধ্যে মোবাইল ওয়েবসাইট এবং অ্যাপ্লিকেশনগুলিতে অগত্যা সীমাবদ্ধ নয়। ব্যবহারের শর্তাবলী নীচের সংজ্ঞায়িত- অনলাইন পরিষেবাগুলি, গ্রাহক পরিষেবা অনুরোধগুলি বা অন্যথা সহ, যে কোনও উপায়ে সরাসরি বা পরোক্ষভাবে আপনার কাছে উপলব্ধ করা আমাদের পরিষেবাগুলিতে প্রযোজ্য। সাইটটি অ্যাক্সেস, ব্রাউজিং এবং ব্যবহার করে এবং / অথবা হারিজমার মাধ্যমে রিজার্ভেশন করে, আপনি ব্যবহারের শর্তাবলী পড়তে, বুঝে এবং সম্মত হয়ে সম্মত হন এবং সম্মত হন। নিচের শর্তাবলী এবং নীতিগুলি যৌথভাবে \"ব্যবহারের শর্তাবলী\" হিসাবে উল্লেখ করা হয়। আপনি যদি ব্যবহারের শর্তাদির সাথে একমত না হন তবে দয়া করে সাইটটির ব্যবহার অবিলম্বে বন্ধ করুন। ব্যবহারের শর্তাবলী - সময়-সময়ে সংশোধন করা যেতে পারে - সম্পূর্ণ চুক্তি গঠন করে এবং অন্য কোনও চুক্তি না থাকলে অন্য কোন চুক্তি বা বোঝার (মৌখিক বা লিখিত), আপনার এবং আমাদের বিষয়গুলির সাথে সম্পর্কিত।\r\n										'),
(3, 'privacy', 'আমরা গ্রাহকদের বা বুকিংগুলি (বা নির্দিষ্ট ক্ষেত্রে বাতিল নিশ্চিতকরণ বাতিল করতে) আমাদের বিবেচনার ভিত্তিতে এবং কোনও (আইনি) কারণ ছাড়াই যেমন অস্বীকার প্রত্যাখ্যান করার প্রয়োজনীয়তা গ্রহণ না করার অধিকার রাখি। গ্রাহক বা বুকিং প্রত্যাখ্যান করার বিশেষ কারণগুলি অন্তর্ভুক্ত রয়েছে, তবে এতে সীমাবদ্ধ নয়: আবাসন অনুরোধ, ব্যবহারের শর্তাবলী লঙ্ঘন, জোরপূর্বক ঘটনা, বাণিজ্য বা অর্থনৈতিক নিষেধাজ্ঞা, নিষেধাজ্ঞা, আইনি সীমাবদ্ধতা, (জালিয়াতির সন্দেহ) জালিয়াতি বা চুরি, সন্দেহভাজন অপরাধী কার্যকলাপ, সন্দেহজনক বুকিং, বিভ্রান্তিকর বা ভুল তথ্য গ্রাহক দ্বারা জমা, ক্রেডিট কার্ড সমস্যা, অনুপযুক্ত আচরণ, হুমকি, অপমান, সহিংসতা, তথ্য সরবরাহ করতে অস্বীকার, বাস্তব বাধা, যোগাযোগ সমস্যা, সুস্পষ্ট ত্রুটি (নীচে দেখুন), ইতিহাস, সরকার দ্বারা কালো তালিকাভুক্তি অথবা আন্তর্জাতিক সংস্থাগুলি (মার্কিন যুক্তরাষ্ট্র, ইইউ, জাতিসংঘ, সিঙ্গাপুরে, ...) ইত্যাদি। হরিজমা দ্বারা বুকিং বাতিল বা বাতিল করা হলে এবং ইতিমধ্যেই অর্থ প্রদান করা হয়েছে, আপনি মোট বুকিং মূল্যের ফেরত পাবেন। আমরা স্থায়ী বা অস্থায়ী ভিত্তিতে, আমাদের বিবেচনার ভিত্তিতে, ব্যবহারকারীদের বার (\"কালো তালিকা\") ব্যবহারকারীদের অধিকার সংরক্ষণ করি। এই ধরনের কালো তালিকাভুক্ত ব্যবহারকারীর অন্য কোনও নামে বা অন্য কোনো ব্যবহারকারীর মাধ্যমে সাইটটি ব্যবহার করার চেষ্টা করা উচিত নয়। আমাদের জালিয়াতি প্রতিরোধ পদ্ধতির জন্য নীচের দেখুন।\r\n\r\nবিরল ক্ষেত্রে, যেমন ত্রুটিগুলির উত্স থেকে স্বাধীন, \"সুস্পষ্ট ত্রুটি\" কারণে আমরা বুকিং বাতিল বা প্রত্যাখ্যান করতেও পারি। স্বচ্ছতার জন্য, একটি সুস্পষ্ট ত্রুটি সাইটটিতে একটি ভুল (উদাঃ মূল্যের শর্তে) যা যুক্তিসঙ্গত ব্যক্তিটি স্বাভাবিক বলে বিবেচিত হবে না। চার্জ ছাড়াই এই ক্ষেত্রে চার্জ ছাড়াই পরিশোধ করা হবে। এই কারণের জন্য বুকিং বাতিল বা বাতিল করতে হবে হ্যারিজমা এর নিজস্ব বিবেচনার ভিত্তিতে।\r\n\r\nঅনুগ্রহ করে লক্ষ্য করুন যে সন্দেহভাজন গ্রুপ বুকিংগুলি হারিজমা বা আবাসন দ্বারা প্রত্যাখ্যাত বা বাতিল করা যেতে পারে কারণ অধিকাংশ আবাসনগুলিতে গ্রুপ বুকিংগুলির জন্য নির্দিষ্ট পদ্ধতি রয়েছে। আরো তথ্যের জন্য আমাদের গ্রাহক সেবা দলের সাথে যোগাযোগ করুন।'),
(4, 'contact', 'আমাদের ইমেল : mdshihabuddinm@gmail.com\r\nআমাদের মোবাইল নং : ০১৭৮০৫৯৭১৪৩\r\nআমাদের ঠিকানা : বারোঘরিয়া, চাঁপাইনবাবগঞ্জ ।');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'সোনা মসজিদ', 'সাধারন', 'চা্পাইনবাবগঞ্জ', 2000, 'এসি,খাবার', 'আমার সোনার বাংলা আমি তমাই ভাল বাশি', 'Desert.jpg', '2019-05-24 10:36:28', '2019-05-24 11:13:11'),
(2, ' সুন্দরবন হিরন পয়েন্ট তিন দিনের Adventurous ট্যুর প্যাকেজ', 'ফ্যামিলি', 'খুলনা', 1500, 'এসি /নন এসি,টুইন বিছানা / দম্পতি বিছানা / একক বিছানা / 3bed ভাগ ভিত্তি সঙ্গে কেবিন/খাবার', 'সুন্দরবনের হিরন বিন্দু সাহসিক সফর প্যাকেজটি বনভূমির মধ্যে ক্রুজ, টুইন শেয়ারিংয়ের ভিত্তিতে ক্রুজারের বাসস্থান, সব খাবার 1 দিন 3 দিন, ভ্রমণের সময় বনের সমস্ত কার্যক্রম, ক্ষুদ্র খাল / খাল, খনিজ জলের জন্য ছোট দেশ নৌকা, বনের ফি এবং অনুমতি, বন বিভাগ থেকে সশস্ত্র বন রক্ষী, ভ্রমণের সময় গাইড সহ।প্যাকেজ বাদ দেওয়া হয় - হার্ড এবং নরম উভয়, ব্যক্তিগত প্রকৃতি আইটেম এবং উপরের উল্লেখ না আইটেম, পানীয় জন্য ভিডিও এবং অতিথি ক্যামেরা উভয় পানীয়।', 'giant_65911.jpg', '2019-05-24 11:07:19', '2019-05-24 11:13:24'),
(3, 'সেন্ট মার্টিন-চেরা ডুইপ 2 দিন 3 রাত্রি নিয়মিত ট্যুর প্যাকেজ', 'দম্পতি', 'সেন্ট মার্টিন / চারা আইল্যান্ড', 1800, 'পরিবহন, বাসস্থান, ব্রেকফাস্ট, লাঞ্চ, ডিনার', 'সেন্ট মার্টিন-চেরা ডুইপ 2 দিন 3 রাতের নিয়মিত সফর প্যাকেজে বাস / জাহাজ, 3/2 তারকা বা অনুরূপ হোটেল থাকার ব্যবস্থা রয়েছে।', 'giant_79854.jpg', '2019-05-24 11:12:43', '0000-00-00 00:00:00'),
(4, 'ঢাকা কুয়ালালামপুর ঢাকা ৩দিন/২রাত প্যাকেজ টুর', 'ফ্যামিলি', 'কুয়ালালামপুর, মালয়েশিয়া', 0, 'এসি /নন এসি,টুইন বিছানা / দম্পতি বিছানা / একক বিছানা / 3bed ভাগ ভিত্তি সঙ্গে কেবিন/খাবার', 'ঢাকা কুয়ালালামপুর ঢাকা 3 ডি / ২ এন প্যাকেজ সফর রিটার্ন এয়ার টিকেট, লিও প্যালেস হোটেলে (রাত্রি বাণিজ্য বাণিজ্য কেন্দ্র, কুয়ালালামপুর, মালয়েশিয়া) ২ রাতের বাসস্থান, বিমানবন্দর স্থানান্তর (কেএলআইএ / এলসিটিসি বিমানবন্দর হোটেল কেএলআইএ / এলসিসিটিটি বিমানবন্দর), এসআইসি স্থানান্তর করে হোটেলে সকালের নাস্তা, কুয়ালালামপুরে অর্ধ দিবসের ট্যুর, সমস্ত গও। ট্যাক্স অন্তর্ভুক্ত, শেষ রাতের / সকালে সকালে স্থানান্তর (2000-0800 ঘন্টা), MYR 25.00 প্রতি ব্যক্তি / প্রতি ওয়ে (ন্যূনতম ২ জন ব্যক্তি), পরিষেবা চার্জ শুধুমাত্র 1000 / - টাকা, ন্যূনতম 2 জন ব্যক্তির জন্য প্যাকেজ, আমাদের সকল ট্যুর এবং স্থানান্তর ড্রাইভার সহ নির্দেশিকা দ্বারা পরিচালিত হয় এবং ড্রাইভারের সাথে নয় এবং একটি গাইড পৃথক থাকে, হার পূর্বে নোটিশ ছাড়াই পরিবর্তিত হতে পারে / কেবলমাত্র প্রাপ্যতা সাপেক্ষে', 'giant_16003.jpg', '2019-05-24 11:16:12', '0000-00-00 00:00:00'),
(5, 'কক্সবাজার ২ দিন 1 রাতের নিয়মিত ট্যুর প্যাকেজ', 'দম্পতি', 'কক্সবাজার ', 0, 'পরিবহন, বাসস্থান, ব্রেকফাস্ট, লাঞ্চ, ডিনার', 'কক্সবাজারের নিয়মিত ট্যুর প্যাকেজটি ২ দিন এবং 1 রাতের বাসস্থান, এই ট্যুর প্যাকেজে বাস ভাড়া অন্তর্ভুক্ত।', 'giant_80944.jpg', '2019-05-24 11:17:24', '0000-00-00 00:00:00'),
(6, 'ব্যাংকক Pattaya 4 দিন এবং 3 রাত্রি 3 স্টার ট্র্যাভেল প্যাকেজ', 'ফ্যামিলি', 'ব্যাংকক Pattaya', 18000, 'পরিবহন, বাসস্থান, ব্রেকফাস্ট, লাঞ্চ, ডিনার', 'ব্যাংকক পটিয়া 4 দিন এবং 3 রাত ভ্রমণের প্যাকেজ সহ ফেরত বিমান টিকিট, 3 রাতের আবাসন + এবিএফ, ব্যক্তিগত রাউন্ড-ট্রিপ স্থানান্তর, অর্ধদিবসের মন্দির এবং শহর সফর, দুপুরের খাবারের সাথে করাল আইল্যান্ড সফর।', 'giant_31351.jpg', '2019-05-24 11:18:47', '0000-00-00 00:00:00'),
(7, 'সাজেকভাল্লী-খাগড়াছড়ি 2 দিন 3 রাত্রি নিয়মিত ট্যুর প্যাকেজ', 'ফ্যামিলি', 'সাজেকভাল্লী-খাগড়াছড়ি ', 18000, 'এসি /নন এসি,টুইন বিছানা / দম্পতি বিছানা / একক বিছানা / 3bed ভাগ ভিত্তি সঙ্গে কেবিন/খাবার', 'সাজেকভাল্লী-খাগড়াছড়ি ২ দিন 3 রাত্রি নিয়মিত সফর প্যাকেজে বাস / জিপ, চন্দর গারি পরিবহন, 3/2 তারকা বা অনুরূপ হোটেল বাসস্থান রয়েছে।\r\nআমাদের গ্রুপ দ্বিতীয় এবং তৃতীয় বৃহস্পতিবার প্রতি বৃহস্পতিবার।', 'giant_79844.jpg', '2019-05-24 11:21:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'shihab', '0178059714', 'shihab@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-07-10 14:55:28', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
