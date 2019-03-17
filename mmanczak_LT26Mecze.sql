-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 23 Cze 2018, 11:12
-- Wersja serwera: 5.6.36
-- Wersja PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mmanczak_LT`
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
(27, '2018-06-23', 'Belgia', 'Tunezja', NULL, NULL, NULL),
(28, '2018-06-23', 'Niemcy', 'Szwecja', NULL, NULL, NULL),
(29, '2018-06-23', 'Korea Płd.', 'Meksyk', NULL, NULL, NULL),
(30, '2018-06-24', 'Anglia', 'Panama', NULL, NULL, NULL),
(31, '2018-06-24', 'Japonia', 'Senegal', NULL, NULL, NULL),
(32, '2018-06-24', 'Polska', 'Kolumbia', NULL, NULL, NULL),
(33, '2018-06-25', 'Urugwaj', 'Rosja', NULL, NULL, NULL),
(34, '2018-06-25', 'Arabia S.', 'Egipt', NULL, NULL, NULL),
(35, '2018-06-25', 'Iran', 'Portugalia', NULL, NULL, NULL),
(36, '2018-06-25', 'Hiszpania', 'Maroko', NULL, NULL, NULL),
(37, '2018-06-26', 'Dania', 'Francja', NULL, NULL, NULL),
(38, '2018-06-26', 'Australia', 'Peru', NULL, NULL, NULL),
(39, '2018-06-26', 'Nigeria', 'Argentyna', NULL, NULL, NULL),
(40, '2018-06-26', 'Islandia', 'Chorwacja', NULL, NULL, NULL),
(41, '2018-06-27', 'Korea Płd.', 'Niemcy', NULL, NULL, NULL),
(42, '2018-06-27', 'Meksyk', 'Szwecja', NULL, NULL, NULL),
(43, '2018-06-27', 'Serbia', 'Brazylia', NULL, NULL, NULL),
(44, '2018-06-27', 'Szwajcaria', 'Kostaryka', NULL, NULL, NULL),
(45, '2018-06-28', 'Anglia', 'Belgia', NULL, NULL, NULL),
(46, '2018-06-28', 'Panama', 'Tunezja', NULL, NULL, NULL),
(47, '2018-06-28', 'Japonia', 'Polska', NULL, NULL, NULL),
(48, '2018-06-28', 'Senegal', 'Kolumbia', NULL, NULL, NULL);

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
(15, 1, 'Maro', 1, 0, NULL),
(16, 2, 'Maro', 1, 2, NULL),
(17, 3, 'Maro', 1, 1, NULL),
(18, 4, 'Maro', 0, 2, NULL),
(19, 5, 'Maro', 2, 1, NULL),
(20, 6, 'Maro', 2, 1, NULL),
(21, 7, 'Maro', 0, 3, NULL),
(22, 8, 'Maro', 1, 1, NULL),
(23, 9, 'Maro', 1, 2, NULL),
(24, 10, 'Maro', 2, 1, NULL),
(25, 11, 'Maro', 3, 1, NULL),
(26, 12, 'Maro', 1, 1, NULL),
(27, 13, 'Maro', 1, 0, NULL),
(28, 14, 'Maro', 0, 2, NULL),
(29, 15, 'Maro', 3, 1, NULL),
(30, 16, 'Maro', 2, 0, NULL),
(31, 17, 'Maro', 1, 0, NULL),
(32, 18, 'Maro', 3, 0, NULL),
(33, 19, 'Maro', 2, 0, NULL),
(34, 20, 'Maro', 0, 2, NULL),
(35, 21, 'Maro', 1, 1, NULL),
(36, 22, 'Maro', 2, 2, NULL),
(37, 23, 'Maro', 2, 2, NULL),
(38, 24, 'Maro', 3, 0, NULL),
(39, 25, 'Maro', 1, 2, NULL),
(40, 26, 'Maro', 0, 1, NULL),
(41, 27, 'Maro', 2, 0, NULL),
(42, 28, 'Maro', 2, 0, NULL),
(43, 29, 'Maro', 1, 1, NULL),
(44, 30, 'Maro', 2, 0, NULL),
(45, 31, 'Maro', 0, 1, NULL),
(46, 32, 'Maro', 1, 1, NULL),
(47, 33, 'Maro', 2, 0, NULL),
(48, 34, 'Maro', 0, 1, NULL),
(49, 35, 'Maro', 0, 3, NULL),
(50, 36, 'Maro', 3, 1, NULL),
(51, 37, 'Maro', 2, 1, NULL),
(52, 38, 'Maro', 1, 1, NULL),
(53, 39, 'Maro', 0, 2, NULL),
(54, 40, 'Maro', 0, 0, NULL),
(55, 41, 'Maro', 0, 2, NULL),
(56, 42, 'Maro', 2, 1, NULL),
(57, 43, 'Maro', 0, 2, NULL),
(58, 44, 'Maro', 1, 0, NULL),
(59, 45, 'Maro', 1, 2, NULL),
(60, 46, 'Maro', 0, 1, NULL),
(61, 47, 'Maro', 0, 2, NULL),
(62, 48, 'Maro', 1, 2, NULL),
(63, 1, 'Michał', 2, 0, NULL),
(64, 2, 'Michał', 2, 2, NULL),
(65, 3, 'Michał', 1, 1, NULL),
(66, 4, 'Michał', 0, 0, NULL),
(67, 5, 'Michał', 3, 1, NULL),
(68, 6, 'Michał', 1, 1, NULL),
(69, 7, 'Michał', 0, 2, NULL),
(70, 8, 'Michał', 2, 1, NULL),
(71, 9, 'Michał', 1, 0, NULL),
(72, 10, 'Michał', 3, 1, NULL),
(73, 11, 'Michał', 2, 1, NULL),
(74, 12, 'Michał', 3, 0, NULL),
(75, 13, 'Michał', 1, 0, NULL),
(76, 14, 'Michał', 0, 2, NULL),
(77, 15, 'Michał', 1, 0, NULL),
(78, 16, 'Michał', 4, 1, NULL),
(79, 17, 'Michał', 1, 2, NULL),
(80, 18, 'Michał', 3, 1, NULL),
(81, 19, 'Michał', 3, 0, NULL),
(82, 20, 'Michał', 1, 1, NULL),
(83, 21, 'Michał', 3, 1, NULL),
(84, 22, 'Michał', 3, 0, NULL),
(85, 23, 'Michał', 2, 2, NULL),
(86, 24, 'Michał', 2, 1, NULL),
(87, 25, 'Michał', 1, 2, NULL),
(88, 26, 'Michał', 0, 1, NULL),
(89, 27, 'Michał', 3, 1, NULL),
(90, 28, 'Michał', 0, 0, NULL),
(91, 29, 'Michał', 1, 4, NULL),
(92, 30, 'Michał', 2, 0, NULL),
(93, 31, 'Michał', 2, 2, NULL),
(94, 32, 'Michał', 0, 1, NULL),
(95, 33, 'Michał', 1, 0, NULL),
(96, 34, 'Michał', 0, 2, NULL),
(97, 35, 'Michał', 0, 2, NULL),
(98, 36, 'Michał', 4, 2, NULL),
(99, 37, 'Michał', 1, 1, NULL),
(100, 38, 'Michał', 0, 1, NULL),
(101, 39, 'Michał', 0, 2, NULL),
(102, 40, 'Michał', 1, 1, NULL),
(103, 41, 'Michał', 0, 3, NULL),
(104, 42, 'Michał', 1, 1, NULL),
(105, 43, 'Michał', 1, 1, NULL),
(106, 44, 'Michał', 2, 1, NULL),
(107, 45, 'Michał', 1, 1, NULL),
(108, 46, 'Michał', 1, 0, NULL),
(109, 47, 'Michał', 0, 2, NULL),
(110, 48, 'Michał', 2, 2, NULL),
(111, 1, 'Szczupi', 1, 0, NULL),
(112, 2, 'Szczupi', 1, 2, NULL),
(113, 3, 'Szczupi', 1, 1, NULL),
(114, 4, 'Szczupi', 1, 3, NULL),
(115, 5, 'Szczupi', 3, 0, NULL),
(116, 6, 'Szczupi', 3, 2, NULL),
(117, 7, 'Szczupi', 1, 2, NULL),
(118, 8, 'Szczupi', 2, 0, NULL),
(119, 9, 'Szczupi', 2, 2, NULL),
(120, 10, 'Szczupi', 3, 2, NULL),
(121, 11, 'Szczupi', 3, 1, NULL),
(122, 12, 'Szczupi', 2, 0, NULL),
(123, 13, 'Szczupi', 4, 0, NULL),
(124, 14, 'Szczupi', 1, 4, NULL),
(125, 15, 'Szczupi', 1, 0, NULL),
(126, 16, 'Szczupi', 3, 0, NULL),
(127, 17, 'Szczupi', 1, 2, NULL),
(128, 18, 'Szczupi', 3, 0, NULL),
(129, 19, 'Szczupi', 4, 2, NULL),
(130, 20, 'Szczupi', 1, 5, NULL),
(131, 21, 'Szczupi', 2, 2, NULL),
(132, 22, 'Szczupi', 2, 1, NULL),
(133, 23, 'Szczupi', 1, 1, NULL),
(134, 24, 'Szczupi', 4, 1, NULL),
(135, 25, 'Szczupi', 1, 1, NULL),
(136, 26, 'Szczupi', 1, 2, NULL),
(137, 27, 'Szczupi', 5, 0, NULL),
(138, 28, 'Szczupi', 3, 1, NULL),
(139, 29, 'Szczupi', 1, 3, NULL),
(140, 30, 'Szczupi', 3, 0, NULL),
(141, 31, 'Szczupi', 1, 2, NULL),
(142, 32, 'Szczupi', 2, 1, NULL),
(143, 33, 'Szczupi', 3, 1, NULL),
(144, 34, 'Szczupi', 0, 2, NULL),
(145, 35, 'Szczupi', 1, 3, NULL),
(146, 36, 'Szczupi', 4, 0, NULL),
(147, 37, 'Szczupi', 1, 2, NULL),
(148, 38, 'Szczupi', 1, 1, NULL),
(149, 39, 'Szczupi', 1, 2, NULL),
(150, 40, 'Szczupi', 2, 2, NULL),
(151, 41, 'Szczupi', 1, 3, NULL),
(152, 42, 'Szczupi', 1, 0, NULL),
(153, 43, 'Szczupi', 0, 2, NULL),
(154, 44, 'Szczupi', 3, 1, NULL),
(155, 45, 'Szczupi', 3, 2, NULL),
(156, 46, 'Szczupi', 0, 0, NULL),
(157, 47, 'Szczupi', 1, 3, NULL),
(158, 48, 'Szczupi', 1, 2, NULL),
(159, 1, 'Micz', 2, 1, NULL),
(160, 2, 'Micz', 1, 3, NULL),
(161, 3, 'Micz', 2, 2, NULL),
(162, 4, 'Micz', 2, 3, NULL),
(163, 5, 'Micz', 3, 0, NULL),
(164, 6, 'Micz', 2, 0, NULL),
(165, 7, 'Micz', 1, 2, NULL),
(166, 8, 'Micz', 1, 0, NULL),
(167, 9, 'Micz', 1, 3, NULL),
(168, 10, 'Micz', 2, 1, NULL),
(169, 11, 'Micz', 3, 1, NULL),
(170, 12, 'Micz', 1, 0, NULL),
(171, 13, 'Micz', 3, 0, NULL),
(172, 14, 'Micz', 1, 3, NULL),
(173, 15, 'Micz', 2, 1, NULL),
(174, 16, 'Micz', 3, 1, NULL),
(175, 17, 'Micz', 0, 0, NULL),
(176, 18, 'Micz', 2, 0, NULL),
(177, 19, 'Micz', 5, 1, NULL),
(178, 20, 'Micz', 0, 2, NULL),
(179, 21, 'Micz', 3, 1, NULL),
(180, 22, 'Micz', 2, 1, NULL),
(181, 23, 'Micz', 2, 2, NULL),
(182, 24, 'Micz', 4, 0, NULL),
(183, 25, 'Micz', 1, 2, NULL),
(184, 26, 'Micz', 1, 1, NULL),
(185, 27, 'Micz', 3, 0, NULL),
(186, 28, 'Micz', 3, 0, NULL),
(187, 29, 'Micz', 0, 1, NULL),
(188, 30, 'Micz', 3, 0, NULL),
(189, 31, 'Micz', 1, 2, NULL),
(190, 32, 'Micz', 2, 2, NULL),
(191, 33, 'Micz', 3, 0, NULL),
(192, 34, 'Micz', 1, 2, NULL),
(193, 35, 'Micz', 0, 4, NULL),
(194, 36, 'Micz', 4, 0, NULL),
(195, 37, 'Micz', 2, 1, NULL),
(196, 38, 'Micz', 2, 1, NULL),
(197, 39, 'Micz', 2, 5, NULL),
(198, 40, 'Micz', 0, 0, NULL),
(199, 41, 'Micz', 1, 4, NULL),
(200, 42, 'Micz', 1, 0, NULL),
(201, 43, 'Micz', 0, 2, NULL),
(202, 44, 'Micz', 2, 0, NULL),
(203, 45, 'Micz', 2, 2, NULL),
(204, 46, 'Micz', 0, 2, NULL),
(205, 47, 'Micz', 1, 3, NULL),
(206, 48, 'Micz', 0, 2, NULL),
(207, 1, 'Marta', 1, 0, NULL),
(208, 2, 'Marta', 0, 2, NULL),
(209, 3, 'Marta', 1, 1, NULL),
(210, 4, 'Marta', 1, 1, NULL),
(211, 5, 'Marta', 2, 1, NULL),
(212, 6, 'Marta', 1, 0, NULL),
(213, 7, 'Marta', 0, 2, NULL),
(214, 8, 'Marta', 0, 0, NULL),
(215, 9, 'Marta', 1, 3, NULL),
(216, 10, 'Marta', 1, 0, NULL),
(217, 11, 'Marta', 2, 0, NULL),
(218, 12, 'Marta', 2, 2, NULL),
(219, 13, 'Marta', 3, 0, NULL),
(220, 14, 'Marta', 0, 2, NULL),
(221, 15, 'Marta', 1, 0, NULL),
(222, 16, 'Marta', 1, 0, NULL),
(223, 17, 'Marta', 0, 0, NULL),
(224, 18, 'Marta', 2, 0, NULL),
(225, 19, 'Marta', 3, 0, NULL),
(226, 20, 'Marta', 0, 3, NULL),
(227, 21, 'Marta', 2, 0, NULL),
(228, 22, 'Marta', 2, 1, NULL),
(229, 23, 'Marta', 1, 0, NULL),
(230, 24, 'Marta', 3, 1, NULL),
(231, 25, 'Marta', 1, 1, NULL),
(232, 26, 'Marta', 2, 2, NULL),
(233, 27, 'Marta', 2, 0, NULL),
(234, 28, 'Marta', 1, 0, NULL),
(235, 29, 'Marta', 1, 1, NULL),
(236, 30, 'Marta', 1, 0, NULL),
(237, 31, 'Marta', 0, 0, NULL),
(238, 32, 'Marta', 1, 1, NULL),
(239, 33, 'Marta', 1, 0, NULL),
(240, 34, 'Marta', 0, 0, NULL),
(241, 35, 'Marta', 0, 1, NULL),
(242, 36, 'Marta', 2, 0, NULL),
(243, 37, 'Marta', 0, 1, NULL),
(244, 38, 'Marta', 1, 1, NULL),
(245, 39, 'Marta', 2, 3, NULL),
(246, 40, 'Marta', 1, 0, NULL),
(247, 41, 'Marta', 1, 3, NULL),
(248, 42, 'Marta', 2, 2, NULL),
(249, 43, 'Marta', 1, 2, NULL),
(250, 44, 'Marta', 0, 0, NULL),
(251, 45, 'Marta', 2, 2, NULL),
(252, 46, 'Marta', 0, 0, NULL),
(253, 47, 'Marta', 0, 2, NULL),
(254, 48, 'Marta', 0, 2, NULL),
(255, 1, 'Rysiu', 2, 0, NULL),
(256, 2, 'Rysiu', 1, 2, NULL),
(257, 3, 'Rysiu', 1, 1, NULL),
(258, 4, 'Rysiu', 1, 2, NULL),
(259, 5, 'Rysiu', 2, 0, NULL),
(260, 6, 'Rysiu', 2, 1, NULL),
(261, 7, 'Rysiu', 0, 2, NULL),
(262, 8, 'Rysiu', 1, 0, NULL),
(263, 9, 'Rysiu', 0, 3, NULL),
(264, 10, 'Rysiu', 2, 0, NULL),
(265, 11, 'Rysiu', 3, 0, NULL),
(266, 12, 'Rysiu', 1, 0, NULL),
(267, 13, 'Rysiu', 3, 0, NULL),
(268, 14, 'Rysiu', 0, 2, NULL),
(269, 15, 'Rysiu', 2, 0, NULL),
(270, 16, 'Rysiu', 1, 1, NULL),
(271, 17, 'Rysiu', 2, 2, NULL),
(272, 18, 'Rysiu', 3, 0, NULL),
(273, 19, 'Rysiu', 2, 0, NULL),
(274, 20, 'Rysiu', 0, 3, NULL),
(275, 21, 'Rysiu', 2, 2, NULL),
(276, 22, 'Rysiu', 2, 0, NULL),
(277, 23, 'Rysiu', 1, 0, NULL),
(278, 24, 'Rysiu', 2, 0, NULL),
(279, 25, 'Rysiu', 2, 2, NULL),
(280, 26, 'Rysiu', 2, 2, NULL),
(281, 27, 'Rysiu', 2, 1, NULL),
(282, 28, 'Rysiu', 2, 1, NULL),
(283, 29, 'Rysiu', 2, 2, NULL),
(284, 30, 'Rysiu', 3, 0, NULL),
(285, 31, 'Rysiu', 1, 2, NULL),
(286, 32, 'Rysiu', 2, 0, NULL),
(287, 33, 'Rysiu', 2, 2, NULL),
(288, 34, 'Rysiu', 1, 1, NULL),
(289, 35, 'Rysiu', 0, 2, NULL),
(290, 36, 'Rysiu', 2, 0, NULL),
(291, 37, 'Rysiu', 0, 0, NULL),
(292, 38, 'Rysiu', 0, 1, NULL),
(293, 39, 'Rysiu', 1, 1, NULL),
(294, 40, 'Rysiu', 1, 1, NULL),
(295, 41, 'Rysiu', 0, 2, NULL),
(296, 42, 'Rysiu', 1, 2, NULL),
(297, 43, 'Rysiu', 0, 2, NULL),
(298, 44, 'Rysiu', 1, 1, NULL),
(299, 45, 'Rysiu', 0, 0, NULL),
(300, 46, 'Rysiu', 1, 1, NULL),
(301, 47, 'Rysiu', 1, 2, NULL),
(302, 48, 'Rysiu', 2, 2, NULL);

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
  MODIFY `IDGame` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `IDType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

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
