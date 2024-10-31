-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 02:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `author_tbl`
--

CREATE TABLE `author_tbl` (
  `collection_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author_tbl`
--

INSERT INTO `author_tbl` (`collection_id`, `author_id`, `name`) VALUES
(0, 1, 'Hello world'),
(0, 2, 'Harper Lee'),
(0, 3, 'George Orwell'),
(0, 4, 'Jane Austen'),
(0, 5, 'J.D. Salinger'),
(0, 7, 'JohnySins'),
(0, 8, 'JOHN REY'),
(0, 9, 'thomas'),
(0, 11, 'James Mc Arthur'),
(0, 12, 'John Rey B');

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `collection_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`collection_id`, `book_id`, `author_id`) VALUES
(0, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books_tbl`
--

CREATE TABLE `books_tbl` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_tbl`
--

INSERT INTO `books_tbl` (`book_id`, `title`, `author_id`) VALUES
(5, 'Rizal', 1),
(7, '1984', 3),
(8, 'Pride and Prejudice', 4),
(9, 'The Catcher in the Rye', 5),
(10, 'The Incredible Hulk', 1),
(11, 'The micerables', 2),
(12, 'The eyyyyy', 3),
(13, 'The eyyyyybiiisiii', 4),
(14, 'works of Rizal', 4),
(15, 'works', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tokens_tbl`
--

CREATE TABLE `tokens_tbl` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('active','expired') DEFAULT 'active',
  `expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tokens_tbl`
--

INSERT INTO `tokens_tbl` (`id`, `token`, `user_id`, `status`, `expiry`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1MzQ3MTUsImV4cCI6MTcyODUzODMxNSwiZGF0YSI6eyJ1c2VyaWQiOjF9fQ.by4DG6Q5Hd5ofgLJlR7NSR4bqTH_OTyR9vRLx65y5DQ', 1, 'active', NULL),
(3, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg1NDA2NzIsImV4cCI6MTcyODU0NDI3MiwiZGF0YSI6eyJ1c2VyaWQiOjF9fQ.UYDTnNSXWxf3CeUu7N3ouwHutorCj_UxaL4gvqQe25w', 1, 'active', NULL),
(4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4NjgyMDksImV4cCI6MTcyODg3MTgwOSwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.s3xehuzGx70POqoEAa0Q0y2X1cnKgufBF1HYrcY3v7M', 6, '', NULL),
(5, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4Njg4MzAsImV4cCI6MTcyODg3MjQzMCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.qK2NFZOJbBZZV6vLZ4La3FRhkOXTf3mCsF1Z9huapeU', 6, 'active', NULL),
(6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4ODc2NjQsImV4cCI6MTcyODg5MTI2NCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.3IbQi9T817wKHMFsVkt01d4EaJ6xY7VuAPckc4acvQM', 6, '', NULL),
(7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4ODc4MTQsImV4cCI6MTcyODg5MTQxNCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.oHAztD8XuUemH5gsvpr7s0geADto5SDkFpKuUOnauG0', 6, 'active', NULL),
(8, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4ODgyNzMsImV4cCI6MTcyODg5MTg3MywiZGF0YSI6eyJ1c2VyX2lkIjo3fX0.MFFJcfQLxswKUHKaTevScSIQs9pZGvLqhFmjE89volE', 7, '', NULL),
(9, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTE1NDcsImV4cCI6MTcyODg5NTE0NywiZGF0YSI6eyJ1c2VyX2lkIjo4fX0.5U_F44ifDLqEU89W5Qla8DWvpTEomovshejcuvEJgTg', 8, 'active', NULL),
(10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTE3MTUsImV4cCI6MTcyODg5NTMxNSwiZGF0YSI6eyJ1c2VyX2lkIjo4fX0.qlcqAL3J45JJPLRA4Gi1Ip8LtbUXYKrTbaPfV-ZmfkA', 8, '', NULL),
(11, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTE3MzEsImV4cCI6MTcyODg5NTMzMSwiZGF0YSI6eyJ1c2VyX2lkIjo4fX0.jT54SAG1FmwwwBuVhfOSc1U0oTIwc44MaOI0lusFHwA', 8, '', NULL),
(12, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTE3ODUsImV4cCI6MTcyODg5NTM4NSwiZGF0YSI6eyJ1c2VyX2lkIjo4fX0.Rz1b-anccdKzQHlgpaqdcU-UN4PA4znOvz79TX5wI4o', 8, '', NULL),
(13, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTIwNjQsImV4cCI6MTcyODg5NTY2NCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.pejS767uGIvwy6Y-BCww1lH-CqC_MJ5Ik6caekDGNss', 6, '', NULL),
(14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTIxNzMsImV4cCI6MTcyODg5NTc3MywiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.NqXTgCFcTTShoRf1mRZXSdY4GXeFhnaw8DqSbr6kRR4', 6, 'active', NULL),
(15, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTIzNzMsImV4cCI6MTcyODg5NTk3MywiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.RdSllIcdlq91qYEE28ud0gY7FynXsILggWcJo7NW-3A', 6, 'active', NULL),
(16, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTIzNzUsImV4cCI6MTcyODg5NTk3NSwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.WM7auiwnuOfymgWkWk7RUO1tLfHeCzfm9MUCmWodQ0s', 6, 'active', NULL),
(17, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTI1MjksImV4cCI6MTcyODg5NjEyOSwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.dnr7e5rGps4QCLM-CiYgvSVMPiBn5lfLBYOhVR-hPbs', 6, '', NULL),
(18, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTI1NjgsImV4cCI6MTcyODg5NjE2OCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.I9fqcteS4pRUQqxQV4-CZ393JYQFUtQZ2dGzOLDXt-o', 6, 'active', NULL),
(19, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM1OTAsImV4cCI6MTcyODg5NzE5MCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.8gygPE4FMiMclzrUNJ88HNgO4r3E8VoI6zgOBBHhqjU', 6, 'active', NULL),
(20, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM1OTEsImV4cCI6MTcyODg5NzE5MSwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.lkinoPI1rusAuFUFSX9k6toqB5Ult0bKkKlwdd4HZc8', 6, '', NULL),
(21, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM2MDQsImV4cCI6MTcyODg5NzIwNCwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.NpV3d75t-UkuSVAJHTLr1QmEcD6AyHd8bXlDx6h3dtA', 6, 'active', NULL),
(22, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM2MzEsImV4cCI6MTcyODg5NzIzMSwiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.Z8uIg7FtTo4cdTL9yuxNlLQM9o7KXcGx8MPAE0TyPHs', 6, 'active', NULL),
(23, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM2MzMsImV4cCI6MTcyODg5NzIzMywiZGF0YSI6eyJ1c2VyX2lkIjo2fX0.qM-g9_Gv3MKzhjpEwFgYrNGXeb_Emu4o6SXIzbPXdKA', 6, 'active', NULL),
(24, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM2NzQsImV4cCI6MTcyODg5NzI3NCwiZGF0YSI6eyJ1c2VyX2lkIjozfX0.d-MnfEo9ZnaFwZ0F0gdXrS71YcXmeJDf-u2SaDmOmVM', 3, '', NULL),
(25, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM3MDcsImV4cCI6MTcyODg5NzMwNywiZGF0YSI6eyJ1c2VyX2lkIjozfX0.lDuYcXcOHaevDGUQOrbmMFOdX7sC_Neki7vxxtBPxnc', 3, '', NULL),
(26, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM4NjEsImV4cCI6MTcyODg5NzQ2MSwiZGF0YSI6eyJ1c2VyX2lkIjozfX0.SPZjAeOddVdZszsMmAm9_9cX_uTGCF2goy11KB9x6SU', 3, 'active', NULL),
(27, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM5MTUsImV4cCI6MTcyODg5NzUxNSwiZGF0YSI6eyJ1c2VyX2lkIjozfX0.DIdT2tf43boDUfgrr8hrX5G9HJQiVT_Gt7nAzzVFugs', 3, '', NULL),
(28, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTM5MjksImV4cCI6MTcyODg5NzUyOSwiZGF0YSI6eyJ1c2VyX2lkIjozfX0.hDC02jr78Kx1vQjUefUOWACx9LF7f_Rg8Cwp9EqK1Wg', 3, 'active', NULL),
(29, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQwMjgsImV4cCI6MTcyODg5NzYyOCwiZGF0YSI6eyJ1c2VyX2lkIjozfX0.28XxlFHdvyNLXEFlR-I9UesJ6AlkObylrBVSTgSwRqk', 3, 'active', NULL),
(30, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQxNjAsImV4cCI6MTcyODg5Nzc2MCwiZGF0YSI6eyJ1c2VyX2lkIjo5fX0.AT-lM6xWWtLq5UoHyU4oHg8cQoD2TLHowu9o32ITuhM', 9, '', NULL),
(31, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQxOTQsImV4cCI6MTcyODg5Nzc5NCwiZGF0YSI6eyJ1c2VyX2lkIjo5fX0.PWawn8fo-ngxQZYYI3DsV2nmO4QZ2nTjrzwcEGDA74Q', 9, 'active', NULL),
(32, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQyMzgsImV4cCI6MTcyODg5NzgzOCwiZGF0YSI6eyJ1c2VyX2lkIjo5fX0.e08rfBWjL-wLD0vXGAbPSewq1_ucydKUfludUY3lm8I', 9, '', NULL),
(33, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQyNTIsImV4cCI6MTcyODg5Nzg1MiwiZGF0YSI6eyJ1c2VyX2lkIjo5fX0.M1vwBwDS_JF1DUokj3SLW2pDk2r_ZTOP8l7asUNQQNU', 9, 'active', NULL),
(34, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQyOTMsImV4cCI6MTcyODg5Nzg5MywiZGF0YSI6eyJ1c2VyX2lkIjo5fX0.EnzhMpTtUr0HnYZFzsubXvPxb4dTCtfeexvXcg00EBE', 9, '', NULL),
(35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg4OTQ1OTYsImV4cCI6MTcyODg5ODE5NiwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.fSURr3FyxW2_oVfZUh1GA6GbvogZMm9w0yG_fwk4qps', 1, 'active', NULL),
(36, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjUyMTMsImV4cCI6MTcyODk2ODgxMywiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.wJ2fn4cQxOwEvWKTnzydEvD3dPQr-sdDP_CEuIQcbn8', 1, 'active', NULL),
(37, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjYyMDAsImV4cCI6MTcyODk2OTgwMCwiZGF0YSI6eyJ1c2VyX2lkIjoxMH19.ze4QZmkm7HHv5ltel8DC1fGq0wvNd51LXIxBooeTmEM', 10, '', NULL),
(38, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjYyNDAsImV4cCI6MTcyODk2OTg0MCwiZGF0YSI6eyJ1c2VyX2lkIjoxMH19.zSUNzps96AATeyUqCRsfcKyYLcy8WzwF5qq8WSmjyAk', 10, 'active', NULL),
(39, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjYzMDQsImV4cCI6MTcyODk2OTkwNCwiZGF0YSI6eyJ1c2VyX2lkIjoxMH19.muxFZX6so__32Xygz4ixuSx95T0qRywiYQf1t31R1kM', 10, '', NULL),
(40, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjYzMjQsImV4cCI6MTcyODk2OTkyNCwiZGF0YSI6eyJ1c2VyX2lkIjoxMH19.BU0qqF7H-Treo93C0ku5ECKHaylW2Z-YUhutfzqqmu4', 10, 'active', NULL),
(41, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjYzNjUsImV4cCI6MTcyODk2OTk2NSwiZGF0YSI6eyJ1c2VyX2lkIjoxMH19._GqufrzPpqE9HrImi_05fvFoQLvJSCEcs5hIfxP4cqU', 10, '', NULL),
(42, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY0ODQsImV4cCI6MTcyODk3MDA4NCwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.kl1wtYjhM6TaK4GUoenKUeHKPKEtZ2CLzu9uGARMiRg', 1, '', NULL),
(43, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY1MTgsImV4cCI6MTcyODk3MDExOCwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.CZGYkCgw4kEzd7AofNX4Ytz9890IpZH_izcXJSu5FFI', 1, 'active', NULL),
(44, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY1NzAsImV4cCI6MTcyODk3MDE3MCwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.8rY-mH4a7KNBwu2srNGRc4o_OwQvGKWQiPY50tmd1w0', 1, '', NULL),
(45, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY2MTcsImV4cCI6MTcyODk3MDIxNywiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.XMvCN7M5i-xGs_6tLeX9Tup5_5j8DTqkrQsZxekAEbM', 1, 'active', NULL),
(46, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY2NjMsImV4cCI6MTcyODk3MDI2MywiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.UXDbHV9Uu86QaUL6ONp9Ze0JqKdR1ciRhn6Htd-pRDc', 1, '', NULL),
(47, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY2OTUsImV4cCI6MTcyODk3MDI5NSwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.hQeNeWBhhP_Tz9bl-kdBYLVqIIsoZ0Kl8tXEvR86gjw', 1, 'active', NULL),
(48, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjg5NjY3MDksImV4cCI6MTcyODk3MDMwOSwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.hMG7SLKg4ZPXXE8gQVDLlAi9F3qvfDlfIW6MdYsBUDI', 1, 'active', NULL),
(49, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxNzgzNzksImV4cCI6MTcyOTE4MTk3OSwiZGF0YSI6eyJ1c2VyX2lkIjoxMn19.EyZ-GwropICif6b1k71OxFrVp503rHiAECD3n-suV6o', 12, 'active', NULL),
(50, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxNzg1MTQsImV4cCI6MTcyOTE4MjExNCwiZGF0YSI6eyJ1c2VyX2lkIjoxMn19.lSaPOVQRu4_qPcGoKoaEpoAlVKTfClWPW9XEGLGgfJU', 12, 'active', NULL),
(51, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxNzg1NzQsImV4cCI6MTcyOTE4MjE3NCwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.bHhVsV5Mae0HSbVAZ2TrXoXOI_tlrUHennhaV2OmClw', 1, '', NULL),
(52, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxNzg2MzQsImV4cCI6MTcyOTE4MjIzNCwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.OdymNn3bVHaLJ9gCdA81eo9Vn-HVAyiIqvWqWpXfElQ', 1, 'active', NULL),
(53, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODMwNzIsImV4cCI6MTcyOTE4NjY3MiwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.GswJAGFd8s6oTzItTLgptvsUvSpmpYcRP5fVEVJEC6w', 1, 'active', NULL),
(54, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODMxODcsImV4cCI6MTcyOTE4Njc4NywiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.D887le-FUL9b8ENMLrTgogC9PYI5oZucFOzrGWKxjvQ', 1, '', NULL),
(55, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODMyMTMsImV4cCI6MTcyOTE4NjgxMywiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.25dVcI700PufKRMlkzVTFfX1wfoyMPzKIDf0SuYICig', 1, 'active', NULL),
(56, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODMyNzUsImV4cCI6MTcyOTE4Njg3NSwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.Sbsr20SGH0u-Pv_8-C5jn6OwTAcLpI5-Rp0BASMopJI', 1, 'active', NULL),
(57, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODMzNTYsImV4cCI6MTcyOTE4Njk1NiwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.AwL4KodT_tpsmwQgXqcfuFS0-8A6VDDZ4jEsnv0w1pA', 1, 'active', NULL),
(58, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODM0NzMsImV4cCI6MTcyOTE4NzA3MywiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.m_jDxtMyJTpcgjTXaJYCQJylW6iiAVbt27Aqez8BVbU', 1, 'active', NULL),
(59, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODM0ODksImV4cCI6MTcyOTE4NzA4OSwiZGF0YSI6eyJ1c2VyX2lkIjoxfX0.-rqBakxszKLZi4M3ualdb3wNUMgvTpjVCoosOs8JsCc', 1, '', NULL),
(60, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODM3MjMsImV4cCI6MTcyOTE4NzMyMywiZGF0YSI6eyJ1c2VyX2lkIjoxNH19.YEWR6-cLcl8uNqpwNoTLTSso3LEMhk728uxcpjfcTJA', 14, 'active', NULL),
(61, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODM3NzQsImV4cCI6MTcyOTE4NzM3NCwiZGF0YSI6eyJ1c2VyX2lkIjoxNH19.945SqBdlvwr2nlt86p7E043SVyWGGsr5T5wRgFNB22A', 14, 'active', NULL),
(62, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODM4NTcsImV4cCI6MTcyOTE4NzQ1NywiZGF0YSI6eyJ1c2VyX2lkIjoxNH19.CisOoEiM-g4o8mZznlkY-1nfVmMrHHsurBCAjmOECVU', 14, '', NULL),
(63, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQyMzUsImV4cCI6MTcyOTE4NzgzNSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.WnM7egcRkNuVnhy3-5o83fYQW_y1tS8KWEqh7-hIh2g', 2, '', NULL),
(64, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQyNjIsImV4cCI6MTcyOTE4Nzg2MiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.mA3xEHyMme5rc9w3RTtt-LJP41euVxSe7NvAEZ4sd2Q', 2, '', NULL),
(65, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQyNzYsImV4cCI6MTcyOTE4Nzg3NiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.Iynb6qGp70IpZFP6Ro_Axt33j3idlLixu7VuCi9iMjs', 2, '', NULL),
(66, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQzMDAsImV4cCI6MTcyOTE4NzkwMCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.fc0Y2reHEdcI2g2x5jpCSB9H8VI0ubwq6NTt-AjwSsA', 2, 'active', NULL),
(67, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQzOTIsImV4cCI6MTcyOTE4Nzk5MiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.YUTk9JNJolok8InVThbMqnS2UXT21RTssN5IooYU1wE', 2, 'active', NULL),
(68, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ3MTgsImV4cCI6MTcyOTE4ODMxOCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.i2q9xlstJwTdvE0GVUTxfPtarnRryxwopaGz1p8uGaQ', 2, '', NULL),
(69, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ3NzUsImV4cCI6MTcyOTE4ODM3NSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.Kl51cVklAP_ZAoHsm-5tYGIDwClehvO5ptFotYVCX0Y', 2, 'active', NULL),
(70, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ4NTEsImV4cCI6MTcyOTE4ODQ1MSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.3f-zo8FtFa1pA11JsMjJQiB-mkwEjzsLVb3-Mf4SB_I', 2, '', NULL),
(71, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ4NzUsImV4cCI6MTcyOTE4ODQ3NSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.6P86spuEq49Q93ym4G0FAIaT87xhJITWFJkLMDX4hc8', 2, 'active', NULL),
(72, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ5MTYsImV4cCI6MTcyOTE4ODUxNiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.YX31fqx3IhCWzTWiemN3ky5bxnpAjrmWOqvbJOFKmRo', 2, '', NULL),
(73, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ5NDUsImV4cCI6MTcyOTE4ODU0NSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.hmS25B6L5_qBD1CMLXgF5AKrQKnSWIbNAft3KS1mboE', 2, 'active', NULL),
(74, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODQ5ODYsImV4cCI6MTcyOTE4ODU4NiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.sDoSYV4NXx676a6YQ4hjwQqeqI8ZPLmTsVnSbmiQ5h4', 2, '', NULL),
(75, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODUwMjksImV4cCI6MTcyOTE4ODYyOSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.04YYOsebVCJh7v9lyGTjqEP1q2UbqkcYUCLkA7ZJhBQ', 2, 'active', NULL),
(76, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODUwOTMsImV4cCI6MTcyOTE4ODY5MywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.T3Sq1-HxKeQT7-Q2BrsiT9aDD_4gF9ORx-xLrJ_t9n0', 2, '', NULL),
(77, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODUxMTAsImV4cCI6MTcyOTE4ODcxMCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.rcWLUKfz1k2Ws2cM4EcWswCQWisGCFAuH_npIrdJ3NY', 2, '', NULL),
(78, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODUyODgsImV4cCI6MTcyOTE4ODg4OCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.wSbSZ0xPQLpTuYv01osoxK90ST-xse3sMMiyMKLrPJA', 2, '', NULL),
(79, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODU1MzEsImV4cCI6MTcyOTE4OTEzMSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.MBeLSUaFnT_Y11bhCD8RUFQ1BOtD8mb9lm8BWmmqMcA', 2, '', NULL),
(80, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODU3MzAsImV4cCI6MTcyOTE4OTMzMCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.e_H8Am4SdHeZvw6pqb1Zev6dF6JTO3B_Q8_4aHupca0', 2, 'active', NULL),
(81, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODU4NjYsImV4cCI6MTcyOTE4OTQ2NiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.A3BnDFTdcOnPSDo4T6sI9oOCijghj_DgawzeNKxrm88', 2, 'active', NULL),
(82, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODYyOTIsImV4cCI6MTcyOTE4OTg5MiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.rx_19owDxY68CM9OcKaUpxSC-sRAvfRzWqmjbWctmoQ', 2, 'active', NULL),
(83, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODY1MDksImV4cCI6MTcyOTE5MDEwOSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.vMQV5BiI51jQutsK8_tnuQR_kMqDsvAJHBfIWMFvmxs', 2, 'active', NULL),
(84, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODY1NzAsImV4cCI6MTcyOTE5MDE3MCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.5G-K4UrnJl1A5jTLvtxlT5VuIOKPjlHv7_11GPC1IUM', 2, '', NULL),
(85, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODY1OTksImV4cCI6MTcyOTE5MDE5OSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.g2G_-JWn_842kKwqC3MVDKTtbC1V_gej9ucQF1EmBWI', 2, 'active', NULL),
(86, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODY2NDgsImV4cCI6MTcyOTE5MDI0OCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.HWdPNqDLReMqXyqy7BL_GFH9y9DW0YLLvkZHIHp35jc', 2, '', NULL),
(87, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODc0MzcsImV4cCI6MTcyOTE5MTAzNywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.zwn0G_IVc5JMMDxEDOLgLfzqBv7H7E_P-a2FxTncWeo', 2, 'active', NULL),
(88, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODc3NzAsImV4cCI6MTcyOTE5MTM3MCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.7ZxrtoIuUFbgr-842twpD1lr8wQriY1IFHYzTh7Ijfw', 2, '', NULL),
(89, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODc4NzcsImV4cCI6MTcyOTE5MTQ3NywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.vogbMd5PwOsY4aMVaSyZ3JeZBaRs3UhANmaaIISu_OQ', 2, 'active', NULL),
(90, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgxMDYsImV4cCI6MTcyOTE5MTcwNiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.BBEmu1oZnwdlaBVf5y9EcMq9w2CDu8gAL-OSaa9k4Bk', 2, '', NULL),
(91, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgxNzgsImV4cCI6MTcyOTE5MTc3OCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.KWTPC_e5rTtUOJEihGaQfEScYhf48_Am2k6SPQyxKOE', 2, 'active', NULL),
(92, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgyNTIsImV4cCI6MTcyOTE5MTg1MiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.ho78mhNZ9PStC36LLzbKMuyGmZIrSOEDKMP-hF-3jS4', 2, '', NULL),
(93, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgyODYsImV4cCI6MTcyOTE5MTg4NiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.Wi_Hw5t6JcYOQF1OmOiWsADHcdTyhNs20vysph1KRR4', 2, '', NULL),
(94, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgzMDQsImV4cCI6MTcyOTE5MTkwNCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.TAgF-ZvXzZL-VGm2P9rf9av4YPHLTMfr8DEYL0ym8hk', 2, 'active', NULL),
(95, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgzMzQsImV4cCI6MTcyOTE5MTkzNCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.oHlijn691VJiiCUD8zqQY5ZQ9o7MYiR-6m7ve-juXCk', 2, '', NULL),
(96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgzODEsImV4cCI6MTcyOTE5MTk4MSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.KKn2lHO63qzMuQZdJAQZ22P6crGEgDGS2FFkXOpVYNU', 2, '', NULL),
(97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODgzOTksImV4cCI6MTcyOTE5MTk5OSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.SbvtF5_hYTqO_Hc6iJzcDAmFMuSAn3HQz0mTXWf2QIg', 2, 'active', NULL),
(98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODg0ODAsImV4cCI6MTcyOTE5MjA4MCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.-m6hwZF3TRhM2dfrdveBFRQ1m-2ukWbTOpi9_U17J-I', 2, '', NULL),
(99, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODg1NDEsImV4cCI6MTcyOTE5MjE0MSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.ebjlTIe7Mw5SwrEsXVKDPx349W2VEPofEOCIAiFJqso', 2, 'active', NULL),
(100, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODg2NDYsImV4cCI6MTcyOTE5MjI0NiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.iwdviX8g2iyTFYndREMBBWFwXYLu0lv4UKm_G97zrvI', 2, '', NULL),
(101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODg2NzYsImV4cCI6MTcyOTE5MjI3NiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.-BXy3-YiARUQFQBpainQ-z2rYl9uoiYxca-4KoeICkc', 2, '', NULL),
(102, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkxODg5NDAsImV4cCI6MTcyOTE5MjU0MCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.Qgk8YAUB2uBH6C0wFBAovvuzdCjaWknt1QjAAaogJp0', 2, 'active', NULL),
(103, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjIyMjIsImV4cCI6MTcyOTIyNDAyMiwiZGF0YSI6eyJ1c2VyX2lkIjoxNn19.RGQJCbV8_dRHZ-GyVAdF3yYwLI7EPJxL4SD8cuGgz0Y', 16, '', NULL),
(104, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjIyNjksImV4cCI6MTcyOTIyNDA2OSwiZGF0YSI6eyJ1c2VyX2lkIjoxNn19.Toa7xDOUA2kjsrx_czhMqtNkk4oGXkpdFMGFX4e4UZE', 16, '', NULL),
(105, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjIzNzEsImV4cCI6MTcyOTIyNDE3MSwiZGF0YSI6eyJ1c2VyX2lkIjoxNn19.lyWxHcavsRbrYevEtK-gqJBoOJ3f2zdgiH7kuyuitoo', 16, '', NULL),
(106, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI1MzUsImV4cCI6MTcyOTIyNDMzNSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.sD_32sQgmtqg3rTkbutDqFRjambINcNjOuanApIaKd8', 2, '', NULL),
(107, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI1NjksImV4cCI6MTcyOTIyNDM2OSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.lpCCPhKRtfTZRSAmDqK8odrkCfiN2gHMJUyPwAuInAI', 2, '', NULL),
(108, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI1OTIsImV4cCI6MTcyOTIyNDM5MiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.Jy-g7Y5vZNzYBKKbTr0R_inVmrsdhDc2KUsvJCpmE4E', 2, '', NULL),
(109, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI2MjUsImV4cCI6MTcyOTIyNDQyNSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.P_kABhrJLTkDt5d6qmOi5WsQfLGHK0hOtVMJP9mALNI', 2, '', NULL),
(110, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI2NTcsImV4cCI6MTcyOTIyNDQ1NywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.YGguyinEseHvw7mXtf28DHurggLQnzUEYLqa_gubiXI', 2, '', NULL),
(111, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI2OTMsImV4cCI6MTcyOTIyNDQ5MywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.3PxrWschaYR3_bwuIuMtIMVhJ3-xzK-qBORwTyXtors', 2, '', NULL),
(112, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI3MjQsImV4cCI6MTcyOTIyNDUyNCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.okjoGklCzj3o38ADA8uN5q0mB7hOruDb7tYok8vT5UU', 2, '', NULL),
(113, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI3NzEsImV4cCI6MTcyOTIyNDU3MSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.29SQvEzuAAHO8DjpKfqSJO9VzLTU1tVE_1szj3hdl5g', 2, '', NULL),
(114, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI4MDMsImV4cCI6MTcyOTIyNDYwMywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.M7jJ7c-wcUZUyxbTXu54KHQZiVs7s7U_jKGYJLv9c98', 2, '', NULL),
(115, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI4MzQsImV4cCI6MTcyOTIyNDYzNCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.xCIrEEo284r9-lSoWbZCsbjyxNvc64ll--_MKACXV-s', 2, '', NULL),
(116, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI4NjAsImV4cCI6MTcyOTIyNDY2MCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.kRQDrFCibuvQOtnj18cM8sBfc9syDVuh-jbQgkkaFwc', 2, '', NULL),
(117, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MjkyMjI4ODAsImV4cCI6MTcyOTIyNDY4MCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.OCFfL_QB8ELRSKVwoUJA4AlzSlutV_7qYQWBioXO9mQ', 2, 'active', NULL),
(118, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzAzNjksImV4cCI6MTcyOTQ3MjE2OSwiZGF0YSI6eyJ1c2VyX2lkIjoxOH19.K_H1OqQ9lGUIk44ZGgBFNHUjyV2Y61mqSSGKkr0DcE8', 18, '', NULL),
(119, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzAzOTMsImV4cCI6MTcyOTQ3MjE5MywiZGF0YSI6eyJ1c2VyX2lkIjoxOH19.P7Y1x_ibl5q85hc3fXMZctufbzfwikuNnaaf04RgdGM', 18, '', NULL),
(120, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA0NTQsImV4cCI6MTcyOTQ3MjI1NCwiZGF0YSI6eyJ1c2VyX2lkIjoxOH19.tYS2M8CS2iqXpyQKe0rSxgKayECu0ZsIqvQ4QJm_RDI', 18, '', NULL),
(121, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA1NTQsImV4cCI6MTcyOTQ3MjM1NCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.-2-GICM-0ZMs5mGNQvIwaBceFNXJiBWdMQvoFb1f5Rg', 2, '', NULL),
(122, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA1OTQsImV4cCI6MTcyOTQ3MjM5NCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.qSJqs7TIPJSEX_gTTlF-WUbWM7teVrSsUMInBsv0kP0', 2, 'active', NULL),
(123, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA2NDMsImV4cCI6MTcyOTQ3MjQ0MywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.mhaljozJ4wblKs9MpxFyyTjmzdJb7S_gWg5ONYPM9t0', 2, '', NULL),
(124, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA2NTgsImV4cCI6MTcyOTQ3MjQ1OCwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.fQA5c-4oW-_8ovuYDfBJ85V27D3Q3PR8JIrgq7gAO-Y', 2, 'active', NULL),
(125, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA3MDYsImV4cCI6MTcyOTQ3MjUwNiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.OC72ewhJFCf-QtfhbIAf58rUqdbdRbWaqi0ShW-J1zg', 2, '', NULL),
(126, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA3MzMsImV4cCI6MTcyOTQ3MjUzMywiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.SUr-XUFAM4mhWU1LLG4p-GBJ4Ey17fmnQ83JIG7kESo', 2, '', NULL),
(127, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA3NjIsImV4cCI6MTcyOTQ3MjU2MiwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.2q7jh92X5SIcRY9Dpfn2AjcG2feToisjUVtbe9KyYUc', 2, '', NULL),
(128, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA3ODEsImV4cCI6MTcyOTQ3MjU4MSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.CFr5_KfeP21eiXezrsdy7DcQXxbLhUzuDpf24VaaBkA', 2, '', NULL),
(129, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3Mjk0NzA4MDUsImV4cCI6MTcyOTQ3MjYwNSwiZGF0YSI6eyJ1c2VyX2lkIjoyfX0.HYAOKrR-uKMMIQHOcdybWLbB2YdpKuV1u12dhshuIMg', 2, 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`user_id`, `username`, `password`) VALUES
(2, 'admin1', '25f43b1486ad95a1398e3eeb3d83bc4010015fcc9bedb35b432e00298d5021f7'),
(3, 'user', '04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb'),
(4, 'admin123', '04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fb'),
(5, 'admin12', 'bd35283fe8fcfd77d7c05a8bf2adb85c773281927e12c9829c72a9462092f7c4'),
(6, 'HAHAHA', '92240dc25f269ae44fa36219c764294094b31367ca1c2c94bf6277c2dbe97815'),
(11, 'a', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'),
(12, 'abc', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'),
(13, 'cbd', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'),
(15, 'johnrey', 'ea98e557fb6211a2cc6b6f1af902889cf25dec1644a3706f00ad181d4178cc5e'),
(17, 'johnreybaliguat', '3297ae2a9175ffac49b6ce098dd038d7f737cd363e39fe05980aa9e89ce7fc6d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author_tbl`
--
ALTER TABLE `author_tbl`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD PRIMARY KEY (`book_id`,`author_id`),
  ADD KEY `fk_author` (`author_id`);

--
-- Indexes for table `books_tbl`
--
ALTER TABLE `books_tbl`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `authorid` (`author_id`);

--
-- Indexes for table `tokens_tbl`
--
ALTER TABLE `tokens_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tokens_tbl_ibfk_1` (`user_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author_tbl`
--
ALTER TABLE `author_tbl`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `books_tbl`
--
ALTER TABLE `books_tbl`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tokens_tbl`
--
ALTER TABLE `tokens_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `fk_author` FOREIGN KEY (`author_id`) REFERENCES `author_tbl` (`author_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_book` FOREIGN KEY (`book_id`) REFERENCES `books_tbl` (`book_id`) ON DELETE CASCADE;

--
-- Constraints for table `books_tbl`
--
ALTER TABLE `books_tbl`
  ADD CONSTRAINT `books_tbl_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author_tbl` (`author_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
