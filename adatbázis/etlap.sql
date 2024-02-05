-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 05. 08:14
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `etterem`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `etlap`
--

CREATE TABLE `etlap` (
  `id` int(20) NOT NULL,
  `neve` varchar(20) NOT NULL,
  `energia` int(20) NOT NULL,
  `szenh` double NOT NULL,
  `ara` int(20) NOT NULL,
  `kategoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `etlap`
--

INSERT INTO `etlap` (`id`, `neve`, `energia`, `szenh`, `ara`, `kategoria`) VALUES
(1, 'Almaleves', 130, 9, 550, 'L'),
(2, 'Fehérboros gombakrém', 120, 4, 550, 'L'),
(3, 'Fokhagymakrémleves', 360, 8, 550, 'L'),
(4, 'Gyümölcsleves', 120, 14, 550, 'L'),
(5, 'Málnakrémleves', 90, 6, 550, 'L'),
(6, 'Paradicsomleves', 310, 9, 600, 'L'),
(7, 'Póréhagyma krémleves', 360, 8, 550, 'L'),
(8, 'Szederkrémleves', 110, 5, 550, 'L'),
(9, 'Szilvaleves', 110, 12, 550, 'L'),
(10, 'Tárkonyos csirkeragu', 290, 9, 600, 'L'),
(11, 'Kapros tökfőzelék va', 440, 23, 880, 'F'),
(12, 'Parajfőzelék vagdalt', 520, 7, 920, 'F'),
(13, 'Rántott csirkemell m', 490, 13, 1040, 'F'),
(14, 'Sóskafőzelék tükörto', 290, 6, 840, 'F'),
(15, 'Zöldbabfőzelék ránto', 670, 22, 970, 'F'),
(16, 'Zöldborsófőzelék töl', 720, 24, 920, 'F'),
(17, 'Cordon Bleu csirkeme', 700, 12, 1210, 'F'),
(18, 'Csirkepaprikás galus', 520, 8, 1210, 'F'),
(19, 'Fehérboros csirkemel', 410, 10, 1210, 'F'),
(20, 'Gombás-tejszínes pul', 470, 17, 970, 'F'),
(21, 'Joghurtos csirkecomb', 600, 9, 1040, 'F'),
(22, 'Májjal töltött ránto', 490, 12, 1090, 'F'),
(23, 'Mézes-mustáros csirk', 510, 13, 970, 'F'),
(24, 'Pirított pulykamell ', 350, 9, 1210, 'F'),
(25, 'Pulykaragu pitában z', 380, 7, 980, 'F'),
(26, 'Rántott csirkemell f', 570, 18, 1160, 'F'),
(27, 'Rántott csirkemell g', 450, 15, 1090, 'F'),
(28, 'Rántott sajt salátáv', 570, 13, 1040, 'F'),
(29, 'Sült csirkecomb tejs', 590, 5, 970, 'F'),
(30, 'Sült csirkemell tojá', 440, 5, 1080, 'F'),
(31, 'Sült csirkemellcsíko', 470, 14, 1080, 'F'),
(32, 'Sült pulykacomb mozz', 550, 18, 1160, 'F'),
(33, 'Vadas pulykatokány s', 500, 12, 1040, 'F'),
(34, 'Vajban sült csirkeme', 310, 9, 1210, 'F'),
(35, 'Csőben sült brokkoli', 340, 10, 1210, 'F'),
(36, 'Rakott karalábé (pul', 500, 25, 1040, 'F'),
(37, 'Rakott sajtos patiss', 590, 25, 1000, 'F'),
(38, 'Rántott cukkini almá', 560, 30, 1000, 'F'),
(39, 'Székelykáposzta (pul', 390, 15, 1210, 'F'),
(40, 'Tojásos lecsó virsli', 630, 8, 1000, 'F'),
(41, 'Töltött padlizsán te', 470, 21, 1000, 'F'),
(42, 'Csirkés pizza', 930, 14, 1470, 'F'),
(43, 'Juhtúrós sztrapacska', 790, 8, 1040, 'F'),
(44, 'Milánói spagetti', 470, 14, 1090, 'F'),
(45, 'Mustáros szűzpecseny', 470, 12, 1210, 'F'),
(46, 'Négysajtos pizza', 770, 11, 1210, 'F'),
(47, 'Sajtos-sonkás pizza', 780, 10, 1210, 'F'),
(48, 'Almás-fahéjas palacs', 130, 9, 470, ''),
(49, 'Barackos lepény', 190, 6, 480, ''),
(50, 'Császármorzsa', 330, 14, 550, ''),
(51, 'Cseresznyés pite', 220, 10, 480, ''),
(52, 'Máglyarakás', 310, 11, 550, ''),
(53, 'Meggyes piskóta', 330, 18, 480, ''),
(54, 'Somlói galuska', 380, 9, 470, ''),
(55, 'Szilvás lepény', 340, 20, 480, ''),
(56, 'Túrógombóc fahéjas ö', 440, 11, 600, ''),
(57, 'Túrós palacsinta epe', 240, 9, 480, '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `etlap`
--
ALTER TABLE `etlap`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `etlap`
--
ALTER TABLE `etlap`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
