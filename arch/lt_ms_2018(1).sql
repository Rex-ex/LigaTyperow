-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Cze 2018, 19:05
-- Wersja serwera: 10.1.29-MariaDB
-- Wersja PHP: 7.2.0

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
(1, '2018-06-14', 1, 2, NULL, NULL, NULL);

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
-- Indexes for table `t-game`
--
ALTER TABLE `t-game`
  ADD PRIMARY KEY (`ID-Game`);

--
-- Indexes for table `t-players`
--
ALTER TABLE `t-players`
  ADD PRIMARY KEY (`ID-Player`);

--
-- Indexes for table `t-teams`
--
ALTER TABLE `t-teams`
  ADD PRIMARY KEY (`ID-Team`),
  ADD KEY `ID-Team` (`ID-Team`);

--
-- Indexes for table `t-types`
--
ALTER TABLE `t-types`
  ADD PRIMARY KEY (`ID-type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `t-game`
--
ALTER TABLE `t-game`
  MODIFY `ID-Game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
