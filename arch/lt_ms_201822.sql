-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Cze 2018, 20:15
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
-- Struktura tabeli dla tabeli `t-game`
--

CREATE TABLE `t-game` (
  `ID-Game` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Home-Team` int(11) DEFAULT NULL,
  `Away-Team` int(11) DEFAULT NULL,
  `Home-Goal` int(2) DEFAULT NULL,
  `Away-Goal` int(2) DEFAULT NULL,
  `Game-Result` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `t-game`
--

INSERT INTO `t-game` (`ID-Game`, `Date`, `Home-Team`, `Away-Team`, `Home-Goal`, `Away-Goal`, `Game-Result`) VALUES
(1, '2018-06-14', 1, 2, NULL, NULL, NULL),
(2, '2018-06-15', 3, 4, NULL, NULL, NULL),
(3, '2018-06-15', 7, 8, NULL, NULL, NULL),
(4, '2018-06-15', 5, 6, NULL, NULL, NULL),
(5, '2018-06-16', 9, 10, NULL, NULL, NULL),
(6, '2018-06-16', 13, 14, NULL, NULL, NULL),
(7, '2018-06-16', 11, 12, NULL, NULL, NULL),
(8, '2018-06-16', 15, 16, NULL, NULL, NULL),
(9, '2018-06-17', 19, 20, NULL, NULL, NULL),
(10, '2018-06-17', 21, 22, NULL, NULL, NULL),
(11, '2018-06-17', 17, 18, NULL, NULL, NULL),
(12, '2018-06-18', 23, 24, NULL, NULL, NULL),
(13, '2018-06-18', 25, 26, NULL, NULL, NULL),
(14, '2018-06-18', 27, 28, NULL, NULL, NULL),
(15, '2018-06-19', 29, 31, NULL, NULL, NULL),
(16, '2018-06-19', 32, 30, NULL, NULL, NULL),
(17, '2018-06-19', 1, 3, NULL, NULL, NULL),
(18, '2018-06-20', 5, 7, NULL, NULL, NULL),
(19, '2018-06-20', 4, 2, NULL, NULL, NULL),
(20, '2018-06-20', 8, 6, NULL, NULL, NULL),
(21, '2018-06-21', 9, 11, NULL, NULL, NULL),
(22, '2018-06-21', 12, 10, NULL, NULL, NULL),
(23, '2018-06-21', 13, 15, NULL, NULL, NULL),
(24, '2018-06-22', 17, 19, NULL, NULL, NULL),
(25, '2018-06-22', 16, 14, NULL, NULL, NULL),
(26, '2018-06-22', 20, 18, NULL, NULL, NULL),
(27, '2018-06-23', 25, 27, NULL, NULL, NULL),
(28, '2018-06-23', 21, 23, NULL, NULL, NULL),
(29, '2018-06-23', 24, 22, NULL, NULL, NULL),
(30, '2018-06-24', 28, 26, NULL, NULL, NULL),
(31, '2018-06-24', 30, 31, NULL, NULL, NULL),
(32, '2018-06-24', 29, 32, NULL, NULL, NULL),
(33, '2018-06-25', 4, 1, NULL, NULL, NULL),
(34, '2018-06-25', 2, 3, NULL, NULL, NULL),
(35, '2018-06-25', 8, 5, 0, NULL, NULL),
(36, '2018-06-25', 6, 7, NULL, NULL, NULL),
(37, '2018-06-26', 12, 9, NULL, NULL, NULL),
(38, '2018-06-26', 10, 11, NULL, NULL, NULL),
(39, '2018-06-26', 16, 13, NULL, NULL, NULL),
(40, '2018-06-26', 14, 15, NULL, NULL, NULL),
(41, '2018-06-27', 24, 21, NULL, NULL, NULL),
(42, '2018-06-27', 22, 23, NULL, NULL, NULL),
(43, '2018-06-27', 20, 17, NULL, NULL, NULL),
(44, '2018-06-27', 18, 19, NULL, NULL, NULL),
(45, '2018-06-28', 28, 25, NULL, NULL, NULL),
(46, '2018-06-28', 26, 27, NULL, NULL, NULL),
(47, '2018-06-28', 30, 29, NULL, NULL, NULL),
(48, '2018-06-28', 31, 32, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `t-players`
--

CREATE TABLE `t-players` (
  `ID-Player` int(2) NOT NULL,
  `Nick` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Total-Points` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `t-teams`
--

CREATE TABLE `t-teams` (
  `ID-Team` int(11) NOT NULL,
  `Team_Name` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Alias-css` varchar(2) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `t-teams`
--

INSERT INTO `t-teams` (`ID-Team`, `Team_Name`, `Alias-css`) VALUES
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
-- Struktura tabeli dla tabeli `t-types`
--

CREATE TABLE `t-types` (
  `ID-type` int(11) NOT NULL,
  `Game-ID` int(11) DEFAULT NULL,
  `Owner-ID` int(11) DEFAULT NULL,
  `Home-Type` int(11) DEFAULT NULL,
  `Away-Type` int(11) DEFAULT NULL,
  `Pointes-Earned` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `t-game`
--
ALTER TABLE `t-game`
  ADD PRIMARY KEY (`ID-Game`),
  ADD KEY `Home-Team` (`Home-Team`),
  ADD KEY `Away-Team` (`Away-Team`),
  ADD KEY `ID-Game` (`ID-Game`);

--
-- Indeksy dla tabeli `t-players`
--
ALTER TABLE `t-players`
  ADD PRIMARY KEY (`ID-Player`),
  ADD KEY `ID-Player` (`ID-Player`);

--
-- Indeksy dla tabeli `t-teams`
--
ALTER TABLE `t-teams`
  ADD PRIMARY KEY (`ID-Team`),
  ADD KEY `ID-Team` (`ID-Team`);

--
-- Indeksy dla tabeli `t-types`
--
ALTER TABLE `t-types`
  ADD PRIMARY KEY (`ID-type`),
  ADD KEY `Game-ID` (`Game-ID`),
  ADD KEY `Owner-ID` (`Owner-ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `t-game`
--
ALTER TABLE `t-game`
  MODIFY `ID-Game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT dla tabeli `t-players`
--
ALTER TABLE `t-players`
  MODIFY `ID-Player` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `t-teams`
--
ALTER TABLE `t-teams`
  MODIFY `ID-Team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT dla tabeli `t-types`
--
ALTER TABLE `t-types`
  MODIFY `ID-type` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `t-game`
--
ALTER TABLE `t-game`
  ADD CONSTRAINT `t-game_ibfk_1` FOREIGN KEY (`Home-Team`) REFERENCES `t-teams` (`ID-Team`),
  ADD CONSTRAINT `t-game_ibfk_2` FOREIGN KEY (`Away-Team`) REFERENCES `t-teams` (`ID-Team`);

--
-- Ograniczenia dla tabeli `t-types`
--
ALTER TABLE `t-types`
  ADD CONSTRAINT `t-types_ibfk_1` FOREIGN KEY (`Game-ID`) REFERENCES `t-game` (`ID-Game`),
  ADD CONSTRAINT `t-types_ibfk_2` FOREIGN KEY (`Owner-ID`) REFERENCES `t-players` (`ID-Player`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
