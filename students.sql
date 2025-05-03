-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 04:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seat_allocation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `registration_number` varchar(50) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `seat_number` varchar(20) DEFAULT NULL,
  `exam_name` varchar(100) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `exam_time` time DEFAULT NULL,
  `exam_center` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `registration_number`, `session`, `name`, `seat_number`, `exam_name`, `exam_date`, `exam_time`, `exam_center`, `dept`) VALUES
(3, '2001011041', '2020-2021', 'Rahul Biswas', 'A1041', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(4, '2001011042', '2020-2021', 'Emran Mahmud', 'A1042', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(19, '2001011028', '2020-2021', 'Sujit Chakma', 'A1028', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(20, '2001011034', '2020-2021', 'Eshan Chakma', 'A1034', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(21, '2001011032', '2020-2021', 'Nato Chakma', 'A1032', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(22, '2001011019', '2020-2021', 'Aynul Islam', 'A1019', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(23, '2001011024', '2020-2021', 'Farhan Islam', 'A1024', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(24, '2001011020', '2020-2021', 'Shahriar Jahan', 'A1020', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(25, '2001011002', '2020-2021', 'M.Aktaruzzaman Opu', 'A1002', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(26, '2001011006', '2020-2021', 'Shahidul Islam', 'A1006', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(27, '2001011012', '2020-2021', 'Istiaq Uddin', 'A1012', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(28, '2001011048', '2020-2021', 'Nafis Hasan', 'A1048', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(29, '2001011023', '2020-2021', 'Prioyota Paul', 'A1023', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(30, '2001011004', '2020-2021', 'Arifuzzaman Chy', 'A1004', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(31, '2001011015', '2020-2021', 'Purna Paul', 'A1015', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(32, '2001011022', '2020-2021', 'Ashpriya Akter Mukti', 'A1022', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(33, '2001011016', '2020-2021', 'Shakibul Islam', 'A1016', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Bulding-1', 'CSE'),
(34, '2001011011', '2020-2021', 'Prattoy Paban Dhar', 'A1011', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(35, '2001011010', '2020-2021', 'Sourav Barua', 'A1010', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(36, '2001011046', '2020-2021', 'Sukanta Datta', 'A1046', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(37, '2001011027', '2020-2021', 'Shakila Sharin Tonima', 'A1027', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(38, '2001011025', '2020-2021', 'Abdur Rabbi Tota', 'A1025', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(39, '2001011014', '2020-2021', 'Nusrat Jahan', 'A1014', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(40, '2001011031', '2020-2021', 'Maddry Chakma', 'A1031', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(41, '2001011044', '2020-2021', 'Sejuti Das', 'A1044', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(42, '2001011039', '2020-2021', 'Pattam Chakma', 'A1039', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(43, '2001011038', '2020-2021', 'Arnon Ghagra', 'A1038', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(44, '2001011013', '2020-2021', 'Sipat Tasnim Maya', 'A1013', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(45, '2001011018', '2020-2021', 'Devjyoti Das', 'A1018', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(46, '2001011003', '2020-2021', 'Obaidul Hasan', 'A1003', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(47, '2001011043', '2020-2021', 'Monem Shahriar', 'A1043', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(48, '2001011026', '2020-2021', 'Prathay Barua', 'A1026', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(49, '2001011040', '2020-2021', 'Ashraful Nuhash', 'A1040', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(50, '2001011009', '2020-2021', 'Tabassum Tahiyat', 'A1009', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(51, '2001011007', '2020-2021', 'Syeda Humayra Jannat', 'A1007', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(52, '2001011001', '2020-2021', 'Israt Jahan Mahiya', 'A1001', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(53, '2001011021', '2020-2021', 'Farjana Yesmin Rifat', 'A1021', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(54, '2001011029', '2020-2021', 'Praggapan Chakma', 'A1029', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(55, '2001011030', '2020-2021', 'Churchil Chakma', 'A1030', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(56, '2001011037', '2020-2021', 'Noyan Chakma', 'A1037', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(57, '2001011033', '2020-2021', 'Purna Bikash Chakma', 'A1033', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE'),
(58, '2001011047', '2020-2021', 'Jafrin Akter', 'A1047', '3rd Year, 1st Semester Final Exam-2025', '2023-12-15', '10:00:00', 'Acedemic Building-1', 'CSE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
