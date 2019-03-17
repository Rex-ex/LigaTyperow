-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Cze 2018, 19:04
-- Wersja serwera: 10.1.32-MariaDB
-- Wersja PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mmanczak_lt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tgame`
--

CREATE TABLE `tgame` (
  `IDGame` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `HomeTeam` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `AwayTeam` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `HomeGoal` int(2) DEFAULT NULL,
  `AwayGoal` int(2) DEFAULT NULL,
  `GameResult` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tgame`
--

INSERT INTO `tgame` (`IDGame`, `Date`, `HomeTeam`, `AwayTeam`, `HomeGoal`, `AwayGoal`, `GameResult`) VALUES
(1, '2018-06-14', 'Rosja', 'Arabia S.', 5, 0, 1),
(2, '2018-06-15', 'Egipt', 'Urugwaj', 0, 1, 2),
(3, '2018-06-15', 'Maroko', 'Iran', 0, 1, 2),
(4, '2018-06-15', 'Portugalia', 'Hiszpania', 3, 3, 0),
(5, '2018-06-16', 'Francja', 'Australia', 2, 1, 1),
(6, '2018-06-16', 'Argentyna', 'Islandia', 1, 1, 0),
(7, '2018-06-16', 'Peru', 'Dania', 0, 1, 2),
(8, '2018-06-16', 'Chorwacja', 'Nigeria', 2, 0, 1),
(9, '2018-06-17', 'Kostaryka', 'Serbia', 0, 1, 2),
(10, '2018-06-17', 'Niemcy', 'Meksyk', 0, 1, 2),
(11, '2018-06-17', 'Brazylia', 'Szwajcaria', 1, 1, 0),
(12, '2018-06-18', 'Szwecja', 'Korea Płd.', 1, 0, 1),
(13, '2018-06-18', 'Belgia', 'Panama', 3, 0, 1),
(14, '2018-06-18', 'Tunezja', 'Anglia', 1, 2, 2),
(15, '2018-06-19', 'Polska', 'Senegal', 1, 2, 2),
(16, '2018-06-19', 'Kolumbia', 'Japonia', 1, 2, 2),
(17, '2018-06-19', 'Rosja', 'Egipt', 3, 1, 1),
(18, '2018-06-20', 'Portugalia', 'Maroko', 1, 0, 1),
(19, '2018-06-20', 'Urugwaj', 'Arabia S.', 1, 0, 1),
(20, '2018-06-20', 'Iran', 'Hiszpania', 0, 1, 2),
(21, '2018-06-21', 'Francja', 'Peru', 1, 0, 1),
(22, '2018-06-21', 'Dania', 'Australia', 1, 1, 0),
(23, '2018-06-21', 'Argentyna', 'Chorwacja', 0, 3, 2),
(24, '2018-06-22', 'Brazylia', 'Kostaryka', 2, 0, 1),
(25, '2018-06-22', 'Nigeria', 'Islandia', 2, 0, 1),
(26, '2018-06-22', 'Serbia', 'Szwajcaria', 1, 2, 2),
(27, '2018-06-23', 'Belgia', 'Tunezja', 5, 2, 1),
(28, '2018-06-23', 'Niemcy', 'Szwecja', 2, 1, 1),
(29, '2018-06-23', 'Korea Płd.', 'Meksyk', 1, 2, 2),
(30, '2018-06-24', 'Anglia', 'Panama', 6, 1, 1),
(31, '2018-06-24', 'Japonia', 'Senegal', 2, 2, 0),
(32, '2018-06-24', 'Polska', 'Kolumbia', 0, 3, 2),
(33, '2018-06-25', 'Urugwaj', 'Rosja', 3, 0, 1),
(34, '2018-06-25', 'Arabia S.', 'Egipt', 2, 1, 1),
(35, '2018-06-25', 'Iran', 'Portugalia', 1, 1, 0),
(36, '2018-06-25', 'Hiszpania', 'Maroko', 2, 2, 0),
(37, '2018-06-26', 'Dania', 'Francja', 0, 0, 0),
(38, '2018-06-26', 'Australia', 'Peru', 0, 2, 2),
(39, '2018-06-26', 'Nigeria', 'Argentyna', 1, 2, 2),
(40, '2018-06-26', 'Islandia', 'Chorwacja', 1, 2, 2),
(41, '2018-06-27', 'Korea Płd.', 'Niemcy', 2, 0, 1),
(42, '2018-06-27', 'Meksyk', 'Szwecja', 0, 3, 2),
(43, '2018-06-27', 'Serbia', 'Brazylia', 0, 2, 2),
(44, '2018-06-27', 'Szwajcaria', 'Kostaryka', 2, 2, 0),
(45, '2018-06-28', 'Anglia', 'Belgia', 0, 1, 2),
(46, '2018-06-28', 'Panama', 'Tunezja', 1, 2, 2),
(47, '2018-06-28', 'Japonia', 'Polska', 0, 1, 2),
(48, '2018-06-28', 'Senegal', 'Kolumbia', 0, 1, 2),
(49, '2018-06-30', 'Urugwaj', 'Portugalia', NULL, NULL, NULL),
(50, '2018-06-30', 'Francja', 'Argentyna', NULL, NULL, NULL),
(51, '2018-07-01', 'Hiszpania', 'Rosja', NULL, NULL, NULL),
(52, '2018-07-01', 'Chorwacja', 'Dania', NULL, NULL, NULL),
(53, '2018-07-02', 'Brazylia', 'Meksyk', NULL, NULL, NULL),
(54, '2018-07-02', 'Belgia', 'Japonia', NULL, NULL, NULL),
(55, '2018-07-03', 'Szwecja', 'Szwajcaria', NULL, NULL, NULL),
(56, '2018-07-03', 'Kolumbia', 'Anglia', NULL, NULL, NULL),
(57, '2018-07-06', NULL, NULL, NULL, NULL, NULL),
(58, '2018-07-06', NULL, NULL, NULL, NULL, NULL),
(59, '2018-07-07', NULL, NULL, NULL, NULL, NULL),
(60, '2018-07-07', NULL, NULL, NULL, NULL, NULL),
(61, '2018-07-10', NULL, NULL, NULL, NULL, NULL),
(62, '2018-07-11', NULL, NULL, NULL, NULL, NULL),
(63, '2018-07-14', NULL, NULL, NULL, NULL, NULL),
(64, '2018-07-15', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tplayers`
--

CREATE TABLE `tplayers` (
  `IDPlayer` int(2) NOT NULL,
  `Nick` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `TotalPoints` int(4) DEFAULT NULL,
  `PlayerGroup` varchar(6) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tplayers`
--

INSERT INTO `tplayers` (`IDPlayer`, `Nick`, `TotalPoints`, `PlayerGroup`) VALUES
(1, 'Michał', 0, 'R'),
(2, 'Maro', 0, 'RF'),
(3, 'Szczupi', 0, 'F'),
(4, 'Micz', 0, 'F'),
(5, 'Marta', 0, 'R'),
(6, 'Rysiu', 0, 'R');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tteams`
--

CREATE TABLE `tteams` (
  `IDTeam` int(11) NOT NULL,
  `TeamName` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `AliasCss` varchar(2) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tteams`
--

INSERT INTO `tteams` (`IDTeam`, `TeamName`, `AliasCss`) VALUES
(1, 'Rosja', 'ru'),
(2, 'Arabia S.', 'sa'),
(3, 'Egipt', 'eg'),
(4, 'Urugwaj', 'uy'),
(5, 'Portugalia', 'pt'),
(6, 'Hiszpania', 'es'),
(7, 'Maroko', 'ma'),
(8, 'Iran', 'ir'),
(9, 'Francja', 'fr'),
(10, 'Australia', 'au'),
(11, 'Peru', 'pe'),
(12, 'Dania', 'dk'),
(13, 'Argentyna', 'ar'),
(14, 'Islandia', 'is'),
(15, 'Chorwacja', 'hr'),
(16, 'Nigeria', 'ng'),
(17, 'Brazylia', 'br'),
(18, 'Szwajcaria', 'ch'),
(19, 'Kostaryka', 'cr'),
(20, 'Serbia', 'rs'),
(21, 'Niemcy', 'de'),
(22, 'Meksyk', 'mx'),
(23, 'Szwecja', 'se'),
(24, 'Korea Płd.', 'kr'),
(25, 'Belgia', 'be'),
(26, 'Panama', 'pa'),
(27, 'Tunezja', 'tn'),
(28, 'Anglia', 'gb'),
(29, 'Polska', 'pl'),
(30, 'Japonia', 'jp'),
(31, 'Senegal', 'sn'),
(32, 'Kolumbia', 'co');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ttypes`
--

CREATE TABLE `ttypes` (
  `IDType` int(11) NOT NULL,
  `GameID` int(11) DEFAULT NULL,
  `OwnerID` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `HomeType` int(11) DEFAULT NULL,
  `AwayType` int(11) DEFAULT NULL,
  `PointesEarned` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ttypes`
--

INSERT INTO `ttypes` (`IDType`, `GameID`, `OwnerID`, `HomeType`, `AwayType`, `PointesEarned`) VALUES
(15, 1, 'Maro', 1, 0, 1),
(16, 2, 'Maro', 1, 2, 1),
(17, 3, 'Maro', 1, 1, 0),
(18, 4, 'Maro', 0, 2, 0),
(19, 5, 'Maro', 2, 1, 2),
(20, 6, 'Maro', 2, 1, 0),
(21, 7, 'Maro', 0, 3, 1),
(22, 8, 'Maro', 1, 1, 0),
(23, 9, 'Maro', 1, 2, 1),
(24, 10, 'Maro', 2, 1, 0),
(25, 11, 'Maro', 3, 1, 0),
(26, 12, 'Maro', 1, 1, 0),
(27, 13, 'Maro', 1, 0, 1),
(28, 14, 'Maro', 0, 2, 1),
(29, 15, 'Maro', 3, 1, 0),
(30, 16, 'Maro', 2, 0, 0),
(31, 17, 'Maro', 1, 0, 1),
(32, 18, 'Maro', 3, 0, 1),
(33, 19, 'Maro', 2, 0, 1),
(34, 20, 'Maro', 0, 2, 1),
(35, 21, 'Maro', 1, 1, 0),
(36, 22, 'Maro', 2, 2, 1),
(37, 23, 'Maro', 2, 2, 0),
(38, 24, 'Maro', 3, 0, 1),
(39, 25, 'Maro', 1, 2, 0),
(40, 26, 'Maro', 0, 1, 1),
(41, 27, 'Maro', 2, 0, 1),
(42, 28, 'Maro', 2, 0, 1),
(43, 29, 'Maro', 1, 1, 0),
(44, 30, 'Maro', 2, 0, 1),
(45, 31, 'Maro', 0, 1, 0),
(46, 32, 'Maro', 1, 1, 0),
(47, 33, 'Maro', 2, 0, 1),
(48, 34, 'Maro', 0, 1, 0),
(49, 35, 'Maro', 0, 3, 0),
(50, 36, 'Maro', 3, 1, 0),
(51, 37, 'Maro', 2, 1, 0),
(52, 38, 'Maro', 1, 1, 0),
(53, 39, 'Maro', 0, 2, 1),
(54, 40, 'Maro', 0, 0, 0),
(55, 41, 'Maro', 0, 2, 0),
(56, 42, 'Maro', 2, 1, 0),
(57, 43, 'Maro', 0, 2, 2),
(58, 44, 'Maro', 1, 0, 0),
(59, 45, 'Maro', 1, 2, 1),
(60, 46, 'Maro', 0, 1, 1),
(61, 47, 'Maro', 0, 2, 1),
(62, 48, 'Maro', 1, 2, 1),
(63, 1, 'Michał', 2, 0, 1),
(64, 2, 'Michał', 2, 2, 0),
(65, 3, 'Michał', 1, 1, 0),
(66, 4, 'Michał', 0, 0, 1),
(67, 5, 'Michał', 3, 1, 1),
(68, 6, 'Michał', 1, 1, 2),
(69, 7, 'Michał', 0, 2, 1),
(70, 8, 'Michał', 2, 1, 1),
(71, 9, 'Michał', 1, 0, 0),
(72, 10, 'Michał', 3, 1, 0),
(73, 11, 'Michał', 2, 1, 0),
(74, 12, 'Michał', 3, 0, 1),
(75, 13, 'Michał', 1, 0, 1),
(76, 14, 'Michał', 0, 2, 1),
(77, 15, 'Michał', 1, 0, 0),
(78, 16, 'Michał', 4, 1, 0),
(79, 17, 'Michał', 1, 2, 0),
(80, 18, 'Michał', 3, 1, 1),
(81, 19, 'Michał', 3, 0, 1),
(82, 20, 'Michał', 1, 1, 0),
(83, 21, 'Michał', 3, 1, 1),
(84, 22, 'Michał', 3, 0, 0),
(85, 23, 'Michał', 2, 2, 0),
(86, 24, 'Michał', 2, 1, 1),
(87, 25, 'Michał', 1, 2, 0),
(88, 26, 'Michał', 0, 1, 1),
(89, 27, 'Michał', 3, 1, 1),
(90, 28, 'Michał', 0, 0, 0),
(91, 29, 'Michał', 1, 4, 1),
(92, 30, 'Michał', 2, 0, 1),
(93, 31, 'Michał', 2, 2, 2),
(94, 32, 'Michał', 0, 1, 1),
(95, 33, 'Michał', 1, 0, 1),
(96, 34, 'Michał', 0, 2, 0),
(97, 35, 'Michał', 0, 2, 0),
(98, 36, 'Michał', 4, 2, 0),
(99, 37, 'Michał', 1, 1, 1),
(100, 38, 'Michał', 0, 1, 1),
(101, 39, 'Michał', 0, 2, 1),
(102, 40, 'Michał', 1, 1, 0),
(103, 41, 'Michał', 0, 3, 0),
(104, 42, 'Michał', 1, 1, 0),
(105, 43, 'Michał', 1, 1, 0),
(106, 44, 'Michał', 2, 1, 0),
(107, 45, 'Michał', 1, 1, 0),
(108, 46, 'Michał', 1, 0, 0),
(109, 47, 'Michał', 0, 2, 1),
(110, 48, 'Michał', 2, 2, 0),
(111, 1, 'Szczupi', 1, 0, 1),
(112, 2, 'Szczupi', 1, 2, 1),
(113, 3, 'Szczupi', 1, 1, 0),
(114, 4, 'Szczupi', 1, 3, 0),
(115, 5, 'Szczupi', 3, 0, 1),
(116, 6, 'Szczupi', 3, 2, 0),
(117, 7, 'Szczupi', 1, 2, 1),
(118, 8, 'Szczupi', 2, 0, 2),
(119, 9, 'Szczupi', 2, 2, 0),
(120, 10, 'Szczupi', 3, 2, 0),
(121, 11, 'Szczupi', 3, 1, 0),
(122, 12, 'Szczupi', 2, 0, 1),
(123, 13, 'Szczupi', 4, 0, 1),
(124, 14, 'Szczupi', 1, 4, 1),
(125, 15, 'Szczupi', 1, 0, 0),
(126, 16, 'Szczupi', 3, 0, 0),
(127, 17, 'Szczupi', 1, 2, 0),
(128, 18, 'Szczupi', 3, 0, 1),
(129, 19, 'Szczupi', 4, 2, 1),
(130, 20, 'Szczupi', 1, 5, 1),
(131, 21, 'Szczupi', 2, 2, 0),
(132, 22, 'Szczupi', 2, 1, 0),
(133, 23, 'Szczupi', 1, 1, 0),
(134, 24, 'Szczupi', 4, 1, 1),
(135, 25, 'Szczupi', 1, 1, 0),
(136, 26, 'Szczupi', 1, 2, 2),
(137, 27, 'Szczupi', 5, 0, 1),
(138, 28, 'Szczupi', 3, 1, 1),
(139, 29, 'Szczupi', 1, 3, 1),
(140, 30, 'Szczupi', 3, 0, 1),
(141, 31, 'Szczupi', 1, 2, 0),
(142, 32, 'Szczupi', 2, 1, 0),
(143, 33, 'Szczupi', 3, 1, 1),
(144, 34, 'Szczupi', 0, 2, 0),
(145, 35, 'Szczupi', 1, 3, 0),
(146, 36, 'Szczupi', 4, 0, 0),
(147, 37, 'Szczupi', 1, 2, 0),
(148, 38, 'Szczupi', 1, 1, 0),
(149, 39, 'Szczupi', 1, 2, 2),
(150, 40, 'Szczupi', 2, 2, 0),
(151, 41, 'Szczupi', 1, 3, 0),
(152, 42, 'Szczupi', 1, 0, 0),
(153, 43, 'Szczupi', 0, 2, 2),
(154, 44, 'Szczupi', 3, 1, 0),
(155, 45, 'Szczupi', 3, 2, 0),
(156, 46, 'Szczupi', 0, 0, 0),
(157, 47, 'Szczupi', 1, 3, 1),
(158, 48, 'Szczupi', 1, 2, 1),
(159, 1, 'Micz', 2, 1, 1),
(160, 2, 'Micz', 1, 3, 1),
(161, 3, 'Micz', 2, 2, 0),
(162, 4, 'Micz', 2, 3, 0),
(163, 5, 'Micz', 3, 0, 1),
(164, 6, 'Micz', 2, 0, 0),
(165, 7, 'Micz', 1, 2, 1),
(166, 8, 'Micz', 1, 0, 1),
(167, 9, 'Micz', 1, 3, 1),
(168, 10, 'Micz', 2, 1, 0),
(169, 11, 'Micz', 3, 1, 0),
(170, 12, 'Micz', 1, 0, 2),
(171, 13, 'Micz', 3, 0, 2),
(172, 14, 'Micz', 1, 3, 1),
(173, 15, 'Micz', 2, 1, 0),
(174, 16, 'Micz', 3, 1, 0),
(175, 17, 'Micz', 0, 0, 0),
(176, 18, 'Micz', 2, 0, 1),
(177, 19, 'Micz', 5, 1, 1),
(178, 20, 'Micz', 0, 2, 1),
(179, 21, 'Micz', 3, 1, 1),
(180, 22, 'Micz', 2, 1, 0),
(181, 23, 'Micz', 2, 2, 0),
(182, 24, 'Micz', 4, 0, 1),
(183, 25, 'Micz', 1, 2, 0),
(184, 26, 'Micz', 1, 1, 0),
(185, 27, 'Micz', 3, 0, 1),
(186, 28, 'Micz', 3, 0, 1),
(187, 29, 'Micz', 0, 1, 1),
(188, 30, 'Micz', 3, 0, 1),
(189, 31, 'Micz', 1, 2, 0),
(190, 32, 'Micz', 2, 2, 0),
(191, 33, 'Micz', 3, 0, 2),
(192, 34, 'Micz', 1, 2, 0),
(193, 35, 'Micz', 0, 4, 0),
(194, 36, 'Micz', 4, 0, 0),
(195, 37, 'Micz', 2, 1, 0),
(196, 38, 'Micz', 2, 1, 0),
(197, 39, 'Micz', 2, 5, 1),
(198, 40, 'Micz', 0, 0, 0),
(199, 41, 'Micz', 1, 4, 0),
(200, 42, 'Micz', 1, 0, 0),
(201, 43, 'Micz', 0, 2, 2),
(202, 44, 'Micz', 2, 0, 0),
(203, 45, 'Micz', 2, 2, 0),
(204, 46, 'Micz', 0, 2, 1),
(205, 47, 'Micz', 1, 3, 1),
(206, 48, 'Micz', 0, 2, 1),
(207, 1, 'Marta', 1, 0, 1),
(208, 2, 'Marta', 0, 2, 1),
(209, 3, 'Marta', 1, 1, 0),
(210, 4, 'Marta', 1, 1, 1),
(211, 5, 'Marta', 2, 1, 2),
(212, 6, 'Marta', 1, 0, 0),
(213, 7, 'Marta', 0, 2, 1),
(214, 8, 'Marta', 0, 0, 0),
(215, 9, 'Marta', 1, 3, 1),
(216, 10, 'Marta', 1, 0, 0),
(217, 11, 'Marta', 2, 0, 0),
(218, 12, 'Marta', 2, 2, 0),
(219, 13, 'Marta', 3, 0, 2),
(220, 14, 'Marta', 0, 2, 1),
(221, 15, 'Marta', 1, 0, 0),
(222, 16, 'Marta', 1, 0, 0),
(223, 17, 'Marta', 0, 0, 0),
(224, 18, 'Marta', 2, 0, 1),
(225, 19, 'Marta', 3, 0, 1),
(226, 20, 'Marta', 0, 3, 1),
(227, 21, 'Marta', 2, 0, 1),
(228, 22, 'Marta', 2, 1, 0),
(229, 23, 'Marta', 1, 0, 0),
(230, 24, 'Marta', 3, 1, 1),
(231, 25, 'Marta', 1, 1, 0),
(232, 26, 'Marta', 2, 2, 0),
(233, 27, 'Marta', 2, 0, 1),
(234, 28, 'Marta', 1, 0, 1),
(235, 29, 'Marta', 1, 1, 0),
(236, 30, 'Marta', 1, 0, 1),
(237, 31, 'Marta', 0, 0, 1),
(238, 32, 'Marta', 1, 1, 0),
(239, 33, 'Marta', 1, 0, 1),
(240, 34, 'Marta', 0, 0, 0),
(241, 35, 'Marta', 0, 1, 0),
(242, 36, 'Marta', 2, 0, 0),
(243, 37, 'Marta', 0, 1, 0),
(244, 38, 'Marta', 1, 1, 0),
(245, 39, 'Marta', 2, 3, 1),
(246, 40, 'Marta', 1, 0, 0),
(247, 41, 'Marta', 1, 3, 0),
(248, 42, 'Marta', 2, 2, 0),
(249, 43, 'Marta', 1, 2, 1),
(250, 44, 'Marta', 0, 0, 1),
(251, 45, 'Marta', 2, 2, 0),
(252, 46, 'Marta', 0, 0, 0),
(253, 47, 'Marta', 0, 2, 1),
(254, 48, 'Marta', 0, 2, 1),
(255, 1, 'Rysiu', 2, 0, 1),
(256, 2, 'Rysiu', 1, 2, 1),
(257, 3, 'Rysiu', 1, 1, 0),
(258, 4, 'Rysiu', 1, 2, 0),
(259, 5, 'Rysiu', 2, 0, 1),
(260, 6, 'Rysiu', 2, 1, 0),
(261, 7, 'Rysiu', 0, 2, 1),
(262, 8, 'Rysiu', 1, 0, 1),
(263, 9, 'Rysiu', 0, 3, 1),
(264, 10, 'Rysiu', 2, 0, 0),
(265, 11, 'Rysiu', 3, 0, 0),
(266, 12, 'Rysiu', 1, 0, 2),
(267, 13, 'Rysiu', 3, 0, 2),
(268, 14, 'Rysiu', 0, 2, 1),
(269, 15, 'Rysiu', 2, 0, 0),
(270, 16, 'Rysiu', 1, 1, 0),
(271, 17, 'Rysiu', 2, 2, 0),
(272, 18, 'Rysiu', 3, 0, 1),
(273, 19, 'Rysiu', 2, 0, 1),
(274, 20, 'Rysiu', 0, 3, 1),
(275, 21, 'Rysiu', 2, 2, 0),
(276, 22, 'Rysiu', 2, 0, 0),
(277, 23, 'Rysiu', 1, 0, 0),
(278, 24, 'Rysiu', 2, 0, 2),
(279, 25, 'Rysiu', 2, 2, 0),
(280, 26, 'Rysiu', 2, 2, 0),
(281, 27, 'Rysiu', 2, 1, 1),
(282, 28, 'Rysiu', 2, 1, 2),
(283, 29, 'Rysiu', 2, 2, 0),
(284, 30, 'Rysiu', 3, 0, 1),
(285, 31, 'Rysiu', 1, 2, 0),
(286, 32, 'Rysiu', 2, 0, 0),
(287, 33, 'Rysiu', 2, 2, 0),
(288, 34, 'Rysiu', 1, 1, 0),
(289, 35, 'Rysiu', 0, 2, 0),
(290, 36, 'Rysiu', 2, 0, 0),
(291, 37, 'Rysiu', 0, 0, 2),
(292, 38, 'Rysiu', 0, 1, 1),
(293, 39, 'Rysiu', 1, 1, 0),
(294, 40, 'Rysiu', 1, 1, 0),
(295, 41, 'Rysiu', 0, 2, 0),
(296, 42, 'Rysiu', 1, 2, 1),
(297, 43, 'Rysiu', 0, 2, 2),
(298, 44, 'Rysiu', 1, 1, 1),
(299, 45, 'Rysiu', 0, 0, 0),
(300, 46, 'Rysiu', 1, 1, 0),
(301, 47, 'Rysiu', 1, 2, 1),
(302, 48, 'Rysiu', 2, 2, 0),
(303, 49, 'Maro', 2, 1, NULL),
(304, 50, 'Maro', 1, 1, NULL),
(305, 51, 'Maro', 2, 1, NULL),
(306, 52, 'Maro', 3, 2, NULL),
(307, 53, 'Maro', 1, 1, NULL),
(308, 54, 'Maro', 2, 1, NULL),
(309, 55, 'Maro', 1, 2, NULL),
(310, 56, 'Maro', 1, 1, NULL),
(311, 57, 'Maro', NULL, NULL, NULL),
(312, 58, 'Maro', NULL, NULL, NULL),
(313, 59, 'Maro', NULL, NULL, NULL),
(314, 60, 'Maro', NULL, NULL, NULL),
(315, 61, 'Maro', NULL, NULL, NULL),
(316, 62, 'Maro', NULL, NULL, NULL),
(317, 63, 'Maro', NULL, NULL, NULL),
(318, 64, 'Maro', NULL, NULL, NULL),
(319, 49, 'Michał', 1, 2, NULL),
(320, 50, 'Michał', 2, 2, NULL),
(321, 51, 'Michał', 2, 0, NULL),
(322, 52, 'Michał', 2, 1, NULL),
(323, 53, 'Michał', 2, 1, NULL),
(324, 54, 'Michał', 2, 1, NULL),
(325, 55, 'Michał', 2, 2, NULL),
(326, 56, 'Michał', 1, 2, NULL),
(327, 57, 'Michał', NULL, NULL, NULL),
(328, 58, 'Michał', NULL, NULL, NULL),
(329, 59, 'Michał', NULL, NULL, NULL),
(330, 60, 'Michał', NULL, NULL, NULL),
(331, 61, 'Michał', NULL, NULL, NULL),
(332, 62, 'Michał', NULL, NULL, NULL),
(333, 63, 'Michał', NULL, NULL, NULL),
(334, 64, 'Michał', NULL, NULL, NULL),
(335, 49, 'Szczupi', 2, 1, NULL),
(336, 50, 'Szczupi', 0, 1, NULL),
(337, 51, 'Szczupi', 3, 0, NULL),
(338, 52, 'Szczupi', 3, 1, NULL),
(339, 53, 'Szczupi', 2, 2, NULL),
(340, 54, 'Szczupi', 2, 0, NULL),
(341, 55, 'Szczupi', 1, 1, NULL),
(342, 56, 'Szczupi', 1, 2, NULL),
(343, 57, 'Szczupi', NULL, NULL, NULL),
(344, 58, 'Szczupi', NULL, NULL, NULL),
(345, 59, 'Szczupi', NULL, NULL, NULL),
(346, 60, 'Szczupi', NULL, NULL, NULL),
(347, 61, 'Szczupi', NULL, NULL, NULL),
(348, 62, 'Szczupi', NULL, NULL, NULL),
(349, 63, 'Szczupi', NULL, NULL, NULL),
(350, 64, 'Szczupi', NULL, NULL, NULL),
(351, 49, 'Micz', 1, 2, NULL),
(352, 50, 'Micz', 1, 1, NULL),
(353, 51, 'Micz', 3, 1, NULL),
(354, 52, 'Micz', 2, 0, NULL),
(355, 53, 'Micz', 2, 0, NULL),
(356, 54, 'Micz', 3, 1, NULL),
(357, 55, 'Micz', 2, 2, NULL),
(358, 56, 'Micz', 2, 1, NULL),
(359, 57, 'Micz', NULL, NULL, NULL),
(360, 58, 'Micz', NULL, NULL, NULL),
(361, 59, 'Micz', NULL, NULL, NULL),
(362, 60, 'Micz', NULL, NULL, NULL),
(363, 61, 'Micz', NULL, NULL, NULL),
(364, 62, 'Micz', NULL, NULL, NULL),
(365, 63, 'Micz', NULL, NULL, NULL),
(366, 64, 'Micz', NULL, NULL, NULL),
(367, 49, 'Marta', NULL, NULL, NULL),
(368, 50, 'Marta', NULL, NULL, NULL),
(369, 51, 'Marta', NULL, NULL, NULL),
(370, 52, 'Marta', NULL, NULL, NULL),
(371, 53, 'Marta', NULL, NULL, NULL),
(372, 54, 'Marta', NULL, NULL, NULL),
(373, 55, 'Marta', NULL, NULL, NULL),
(374, 56, 'Marta', NULL, NULL, NULL),
(375, 57, 'Marta', NULL, NULL, NULL),
(376, 58, 'Marta', NULL, NULL, NULL),
(377, 59, 'Marta', NULL, NULL, NULL),
(378, 60, 'Marta', NULL, NULL, NULL),
(379, 61, 'Marta', NULL, NULL, NULL),
(380, 62, 'Marta', NULL, NULL, NULL),
(381, 63, 'Marta', NULL, NULL, NULL),
(382, 64, 'Marta', NULL, NULL, NULL),
(383, 49, 'Rysiu', NULL, NULL, NULL),
(384, 50, 'Rysiu', NULL, NULL, NULL),
(385, 51, 'Rysiu', NULL, NULL, NULL),
(386, 52, 'Rysiu', NULL, NULL, NULL),
(387, 53, 'Rysiu', NULL, NULL, NULL),
(388, 54, 'Rysiu', NULL, NULL, NULL),
(389, 55, 'Rysiu', NULL, NULL, NULL),
(390, 56, 'Rysiu', NULL, NULL, NULL),
(391, 57, 'Rysiu', NULL, NULL, NULL),
(392, 58, 'Rysiu', NULL, NULL, NULL),
(393, 59, 'Rysiu', NULL, NULL, NULL),
(394, 60, 'Rysiu', NULL, NULL, NULL),
(395, 61, 'Rysiu', NULL, NULL, NULL),
(396, 62, 'Rysiu', NULL, NULL, NULL),
(397, 63, 'Rysiu', NULL, NULL, NULL),
(398, 64, 'Rysiu', NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tgame`
--
ALTER TABLE `tgame`
  ADD PRIMARY KEY (`IDGame`),
  ADD KEY `Home-Team` (`HomeTeam`),
  ADD KEY `Away-Team` (`AwayTeam`),
  ADD KEY `ID-Game` (`IDGame`);

--
-- Indeksy dla tabeli `tplayers`
--
ALTER TABLE `tplayers`
  ADD PRIMARY KEY (`IDPlayer`),
  ADD UNIQUE KEY `Nick` (`Nick`),
  ADD KEY `ID-Player` (`IDPlayer`);

--
-- Indeksy dla tabeli `tteams`
--
ALTER TABLE `tteams`
  ADD PRIMARY KEY (`IDTeam`),
  ADD UNIQUE KEY `TeamName` (`TeamName`),
  ADD KEY `ID-Team` (`IDTeam`);

--
-- Indeksy dla tabeli `ttypes`
--
ALTER TABLE `ttypes`
  ADD PRIMARY KEY (`IDType`),
  ADD KEY `Game-ID` (`GameID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tgame`
--
ALTER TABLE `tgame`
  MODIFY `IDGame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT dla tabeli `tplayers`
--
ALTER TABLE `tplayers`
  MODIFY `IDPlayer` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `tteams`
--
ALTER TABLE `tteams`
  MODIFY `IDTeam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `ttypes`
--
ALTER TABLE `ttypes`
  MODIFY `IDType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `tgame`
--
ALTER TABLE `tgame`
  ADD CONSTRAINT `tgame_ibfk_1` FOREIGN KEY (`HomeTeam`) REFERENCES `tteams` (`TeamName`),
  ADD CONSTRAINT `tgame_ibfk_2` FOREIGN KEY (`AwayTeam`) REFERENCES `tteams` (`TeamName`);

--
-- Ograniczenia dla tabeli `ttypes`
--
ALTER TABLE `ttypes`
  ADD CONSTRAINT `ttypes_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `tgame` (`IDGame`),
  ADD CONSTRAINT `ttypes_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `tplayers` (`Nick`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
