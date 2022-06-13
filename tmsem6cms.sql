-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql01.marianowas11.beep.pl:3306
-- Czas generowania: 13 Cze 2022, 13:30
-- Wersja serwera: 5.7.31-34-log
-- Wersja PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `tmsem6cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pytanie` varchar(30) NOT NULL,
  `odpowiedz` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `chat`
--

INSERT INTO `chat` (`id`, `data`, `pytanie`, `odpowiedz`) VALUES
(1, '2022-06-09 08:55:19', 'czesc', 'Witaj Szanowny Kliencie!'),
(2, '2022-06-09 09:06:25', '?', 'Potrafie odpowiedziec na pytan'),
(3, '2022-06-09 09:07:50', 'kontakt', 'Telefon: 123456789'),
(4, '2022-06-09 09:08:02', 'adres', 'Telefon: 123456789'),
(5, '2022-06-09 09:08:12', 'oferta', 'Oferujemy uslugi zwiazane z po'),
(6, '2022-06-09 09:17:36', '?', 'Potrafie odpowiedziec na pytan'),
(7, '2022-06-12 14:21:12', '?', 'Potrafie odpowiedziec na pytan'),
(8, '2022-06-13 11:20:04', '?', 'Potrafie odpowiedziec na pytan'),
(9, '2022-06-13 11:20:13', '?', 'Potrafie odpowiedziec na pytan');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `textarea` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `text`
--

INSERT INTO `text` (`id`, `textarea`) VALUES
(2, '   O naszej firmie to by bylo na tyle\r\n            '),
(3, 'NO i tyle'),
(5, 'Edytuje dla testu'),
(6, 'cos cos cos las lisciasty'),
(7, '                cos cos cos las lisciasty  cos '),
(8, '                                cos cos cos las lisciasty  cos cos 3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `textAbout`
--

CREATE TABLE `textAbout` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `textAbout`
--

INSERT INTO `textAbout` (`id`, `text`) VALUES
(1, 'TEST sekcji about'),
(2, 'Test czy dziala'),
(3, 'Test czy na pewno dziala'),
(4, 'Robimy fajne reklamy.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `textDojazd`
--

CREATE TABLE `textDojazd` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `textDojazd`
--

INSERT INTO `textDojazd` (`id`, `text`) VALUES
(1, 'testDojazd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `textKontakt`
--

CREATE TABLE `textKontakt` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `textKontakt`
--

INSERT INTO `textKontakt` (`id`, `text`) VALUES
(1, 'testkontakt'),
(2, 'testkontakt edit'),
(3, 'Telefon:123456789'),
(4, 'Telefon: 123456789'),
(6, 'Telefon: 123456789');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `textOferta`
--

CREATE TABLE `textOferta` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `textOferta`
--

INSERT INTO `textOferta` (`id`, `text`) VALUES
(5, 'Oferujemy uslugi zwiazane z reklamami.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `pass` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `textAbout`
--
ALTER TABLE `textAbout`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `textDojazd`
--
ALTER TABLE `textDojazd`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `textKontakt`
--
ALTER TABLE `textKontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `textOferta`
--
ALTER TABLE `textOferta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `textAbout`
--
ALTER TABLE `textAbout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `textDojazd`
--
ALTER TABLE `textDojazd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `textKontakt`
--
ALTER TABLE `textKontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `textOferta`
--
ALTER TABLE `textOferta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
