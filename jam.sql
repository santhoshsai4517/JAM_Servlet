-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 05:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jam`
--

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic`) VALUES
(1, 'Censorship in Movies & Our Culture '),
(2, 'Do Women make Good Managers? '),
(3, 'Advantages of Co-education '),
(4, 'Is God Male? '),
(5, 'Are Cricketers to be blamed for Match Fixing? '),
(6, 'Terrorism in India '),
(7, 'How to Deal with High Oil Prices? '),
(8, 'Security Cameras & Privacy '),
(9, 'Examinations - has it killed education '),
(10, 'Classical Music Heritage and the Growing Pop-Culture'),
(11, 'Rules are Meant to be Broken '),
(12, 'T20 Cricket killing Real Cricketing Skills? '),
(13, 'Retirement Age for Politicians '),
(14, 'Our Culture is Decaying '),
(15, 'Are Indians Less Quality Conscious? '),
(16, 'Foreign Universities in India '),
(17, 'Films are corrupting the Indian Youth '),
(18, 'Is Reservation in Higher Education Only Alternative for Social Equality? '),
(19, 'Women are better at Multi-Tasking '),
(20, 'Is India a Soft Nation? '),
(21, 'Should Smoking be banned completely? '),
(22, 'Men are from Mars; Women are from Venus '),
(23, 'Is our Political System Reason for our Backwardness? '),
(24, 'Marriage is a social trap'),
(25, 'Cleanliness is a Fundamental Responsibility of an Indian Citizen '),
(26, 'Universal Disarmament is a Must '),
(27, 'Should Agricultural Subsidies be stopped? '),
(28, 'Effects of Television on Youth '),
(29, 'Just as we have smoke free zones, we should have child free zones'),
(30, 'Should India break Diplomatic Ties with Pakistan?'),
(31, 'Reservations in the Private Sector '),
(32, 'Does Morality have an Essence in Corporate Life? '),
(33, 'Role of Ethics in Business '),
(34, 'Love Marriages Vs Arranged Marriages '),
(35, 'Advertising is a Waste of Resources '),
(36, 'E-Learning: A Substitute for Classroom Learning? '),
(37, 'Nuclear War cannot be won and should not be fought '),
(38, 'Whether Hard-Working or Smart-Working is Desirable? '),
(39, 'Is Remixing Good Trend in Music? '),
(40, 'Should the Government Set-up More IITs and IIMs, OR should it be use the Money for Primary & Secondary Education? '),
(41, 'Doctors\' Accountability to Improve Health-Care '),
(42, 'Educational qualification for Politicians '),
(43, 'Indians Perform Better as Individuals than in Groups/Teams '),
(44, 'Is the Consumer really the King in India? '),
(45, 'Women are not fit for Defense Services '),
(46, 'Need for Good Leaders in India '),
(47, 'We Need More Entrepreneurs than Managers '),
(48, 'Is Love Precious or Poisonous? '),
(49, 'Nice Guys Finish Last '),
(50, 'Skilled Manpower Shortage in India '),
(51, 'Showing Violence and Crimes should not be allowed in films and on television.'),
(52, 'Should Research on Human Cloning be banned? '),
(53, 'If I was the Finance Minister/Prime Minister '),
(54, 'Indian villages - our strength or our weakness? '),
(55, 'We are not serious about saving Wildlife/Environment '),
(56, 'Are beauty contests degrading womanhood? '),
(57, 'Religion should not be mixed with Politics'),
(58, 'Corruption is a Necessary Evil for Success in Any Sphere '),
(59, 'Who says MNCs are superior to Indian companies? '),
(60, 'Smaller businesses and start-ups have more scope for professional growth. '),
(61, 'Private Educational Institutions: Good or Bad '),
(62, 'How can a Business get rid of the Bad Name that it has earned?'),
(63, 'Indian Army as a Career Option '),
(64, 'Bride burning and dowry may look bad, but are an integral part of India. '),
(65, 'India should go for the presidential form of democracy'),
(66, 'Influence of Online Social Networks on our Youth '),
(67, 'Should Animals be used for Testing New Drugs & Medical Procedures? '),
(68, 'Space Missions are a Wastage of Resources for a Resource-Starved Nation like India'),
(69, 'Is Dependence on Computers a Good Thing?'),
(70, 'Advertisements Cheat People, Hence Should Be Banned ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
