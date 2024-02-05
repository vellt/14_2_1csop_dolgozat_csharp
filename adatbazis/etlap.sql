-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 05. 08:04
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
  `id` int(11) NOT NULL COMMENT 'Az étel azonosítója.',
  `neve` varchar(100) NOT NULL COMMENT 'Az étel neve.',
  `energia` int(11) NOT NULL COMMENT 'Az étel energiatartalma.',
  `szenh` int(11) NOT NULL COMMENT ' Az étel szénhidráttartalma.',
  `ara` int(11) NOT NULL COMMENT 'Az étel ára.',
  `kategoria` int(11) NOT NULL COMMENT 'az étel kategóriája.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `etlap`
--

INSERT INTO `etlap` (`id`, `neve`, `energia`, `szenh`, `ara`, `kategoria`) VALUES
(1, 'Almaleves', 130, 9, 550, 0),
(2, 'Fehérboros gombakrémleves', 120, 4, 550, 0),
(3, 'Fokhagymakrémleves', 360, 8, 550, 0),
(4, 'Gyümölcsleves', 120, 14, 550, 0),
(5, 'Málnakrémleves', 90, 6, 550, 0),
(6, 'Paradicsomleves', 310, 9, 600, 0),
(7, 'Póréhagyma krémleves', 360, 8, 550, 0),
(8, 'Szederkrémleves', 110, 5, 550, 0),
(9, 'Szilvaleves', 110, 12, 550, 0),
(10, 'Tárkonyos csirkeraguleves', 290, 9, 600, 0),
(11, 'Kapros tökfőzelék vagdalttal', 440, 23, 880, 0),
(12, 'Parajfőzelék vagdalttal', 520, 7, 920, 0),
(13, 'Rántott csirkemell meggymártással', 490, 13, 1040, 0),
(14, 'Sóskafőzelék tükörtojással', 290, 6, 840, 0),
(15, 'Zöldbabfőzelék rántott csirkemellel', 670, 22, 970, 0),
(16, 'Zöldborsófőzelék töltött csirkemellel', 720, 24, 920, 0),
(17, 'Cordon Bleu csirkemell spárgapürével', 700, 12, 1210, 0),
(18, 'Csirkepaprikás galuskával', 520, 8, 1210, 0),
(19, 'Fehérboros csirkemell paradicsomsalátával', 410, 10, 1210, 0),
(20, 'Gombás-tejszínes pulykamellszelet galuskával', 470, 17, 970, 0),
(21, 'Joghurtos csirkecomb galuskával', 600, 9, 1040, 0),
(22, 'Májjal töltött rántott pulykamell salátával', 490, 12, 1090, 0),
(23, 'Mézes-mustáros csirkecomb párolt karfiollal', 510, 13, 970, 0),
(24, 'Pirított pulykamell sopszka salátával', 350, 9, 1210, 0),
(25, 'Pulykaragu pitában zöldsalátával és joghurtos önte', 380, 7, 980, 0),
(26, 'Rántott csirkemell franciasalátával', 570, 18, 1160, 0),
(27, 'Rántott csirkemell grillezett zöldségekkel', 450, 15, 1090, 0),
(28, 'Rántott sajt salátával', 570, 13, 1040, 0),
(29, 'Sült csirkecomb tejszínes gombamártással', 590, 5, 970, 0),
(30, 'Sült csirkemell tojásos zöldsalátával', 440, 5, 1080, 0),
(31, 'Sült csirkemellcsíkok almás salátával', 470, 14, 1080, 0),
(32, 'Sült pulykacomb mozzarellás sült zöldségekkel', 550, 18, 1160, 0),
(33, 'Vadas pulykatokány spagettivel', 500, 12, 1040, 0),
(34, 'Vajban sült csirkemell paradicsomos gombasalátával', 310, 9, 1210, 0),
(35, 'Csőben sült brokkoli sajttal', 340, 10, 1210, 0),
(36, 'Rakott karalábé (pulykacombból)', 500, 25, 1040, 0),
(37, 'Rakott sajtos patisszon', 590, 25, 1000, 0),
(38, 'Rántott cukkini almás sajtsalátával', 560, 30, 1000, 0),
(39, 'Székelykáposzta (pulykacombból)', 390, 15, 1210, 0),
(40, 'Tojásos lecsó virslivel és galuskával', 630, 8, 1000, 0),
(41, 'Töltött padlizsán tejfölös zöldmártással', 470, 21, 1000, 0),
(42, 'Csirkés pizza', 930, 14, 1470, 0),
(43, 'Juhtúrós sztrapacska', 790, 8, 1040, 0),
(44, 'Milánói spagetti', 470, 14, 1090, 0),
(45, 'Mustáros szűzpecsenye spagettivel', 470, 12, 1210, 0),
(46, 'Négysajtos pizza', 770, 11, 1210, 0),
(47, 'Sajtos-sonkás pizza', 780, 10, 1210, 0),
(48, 'Almás-fahéjas palacsinta vaníliaöntettel', 130, 9, 470, 0),
(49, 'Barackos lepény', 190, 6, 480, 0),
(50, 'Császármorzsa', 330, 14, 550, 0),
(51, 'Cseresznyés pite', 220, 10, 480, 0),
(52, 'Máglyarakás', 310, 11, 550, 0),
(53, 'Meggyes piskóta', 330, 18, 480, 0),
(54, 'Somlói galuska', 380, 9, 470, 0),
(55, 'Szilvás lepény', 340, 20, 480, 0),
(56, 'Túrógombóc fahéjas öntettel', 440, 11, 600, 0),
(57, 'Túrós palacsinta eperöntettel', 240, 9, 480, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Az étel azonosítója.', AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
