-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Cze 2018, 20:10
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
-- Baza danych: `lt_ms_2018`
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
(1, '2018-06-14', 'Rosja', 'Arabia S.', NULL, NULL, NULL),
(2, '2018-06-15', 'Egipt', 'Urugwaj', NULL, NULL, NULL),
(3, '2018-06-15', 'Maroko', 'Iran', NULL, NULL, NULL),
(4, '2018-06-15', 'Portugalia', 'Hiszpania', NULL, NULL, NULL),
(5, '2018-06-16', 'Francja', 'Australia', NULL, NULL, NULL),
(6, '2018-06-16', 'Argentyna', 'Islandia', NULL, NULL, NULL),
(7, '2018-06-16', 'Peru', 'Dania', NULL, NULL, NULL),
(8, '2018-06-16', 'Chorwacja', 'Nigeria', NULL, NULL, NULL),
(9, '2018-06-17', 'Kostaryka', 'Serbia', NULL, NULL, NULL),
(10, '2018-06-17', 'Niemcy', 'Meksyk', NULL, NULL, NULL),
(11, '2018-06-17', 'Brazylia', 'Szwajcaria', NULL, NULL, NULL),
(12, '2018-06-18', 'Szwecja', 'Korea Płd.', NULL, NULL, NULL),
(13, '2018-06-18', 'Belgia', 'Panama', NULL, NULL, NULL),
(14, '2018-06-18', 'Tunezja', 'Anglia', NULL, NULL, NULL),
(15, '2018-06-19', 'Polska', 'Senegal', NULL, NULL, NULL),
(16, '2018-06-19', 'Kolumbia', 'Japonia', NULL, NULL, NULL),
(17, '2018-06-19', 'Rosja', 'Egipt', NULL, NULL, NULL),
(18, '2018-06-20', 'Portugalia', 'Maroko', NULL, NULL, NULL),
(19, '2018-06-20', 'Urugwaj', 'Arabia S.', NULL, NULL, NULL),
(20, '2018-06-20', 'Iran', 'Hiszpania', NULL, NULL, NULL),
(21, '2018-06-21', 'Francja', 'Peru', NULL, NULL, NULL),
(22, '2018-06-21', 'Dania', 'Australia', NULL, NULL, NULL),
(23, '2018-06-21', 'Argentyna', 'Chorwacja', NULL, NULL, NULL),
(24, '2018-06-22', 'Brazylia', 'Kostaryka', NULL, NULL, NULL),
(25, '2018-06-22', 'Nigeria', 'Islandia', NULL, NULL, NULL),
(26, '2018-06-22', 'Serbia', 'Szwajcaria', NULL, NULL, NULL),
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
  `TotalPoints` int(4) NOT NULL,
  `PlayerGroup` varchar(6) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tplayers`
--

INSERT INTO `tplayers` (`IDPlayer`, `Nick`, `TotalPoints`, `PlayerGroup`) VALUES
(1, 'Michał', 0, 'R'),
(2, 'Maro', 0, 'RF'),
(3, 'Szczupi', 0, 'F'),
(4, 'Micz', 0, 'F');

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
(1, 1, 'Michał', 2, 0, NULL),
(2, 2, 'Michał', 2, 2, NULL),
(3, 3, 'Michał', 1, 1, NULL),
(4, 1, 'Szczupi', 1, 0, NULL),
(5, 2, 'Szczupi', 1, 2, NULL),
(6, 3, 'Szczupi', 1, 1, NULL),
(7, 1, 'Maro', 1, 0, NULL),
(8, 2, 'Maro', 1, 2, NULL),
(9, 3, 'Maro', 1, 0, NULL);

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
  MODIFY `IDPlayer` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `tteams`
--
ALTER TABLE `tteams`
  MODIFY `IDTeam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `ttypes`
--
ALTER TABLE `ttypes`
  MODIFY `IDType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
