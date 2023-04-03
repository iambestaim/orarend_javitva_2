-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 29. 10:37
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `orarend`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `evfolyamok`
--

CREATE TABLE `evfolyamok` (
  `Az` int(11) NOT NULL,
  `Osztalyok` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `evfolyamok`
--

INSERT INTO `evfolyamok` (`Az`, `Osztalyok`) VALUES
(1, '10.A'),
(2, '10.B'),
(3, '11.A'),
(4, '11.B'),
(5, '12.A'),
(6, '12.B'),
(7, '9.A'),
(8, '9.B');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `napok`
--

CREATE TABLE `napok` (
  `id` int(11) NOT NULL,
  `Napnev` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `napok`
--

INSERT INTO `napok` (`id`, `Napnev`) VALUES
(1, 'Hétfő'),
(2, 'Kedd'),
(3, 'Szerda'),
(4, 'Csütörtök'),
(5, 'Péntek');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orak`
--

CREATE TABLE `orak` (
  `Osztalyok` int(11) NOT NULL,
  `Oraszam` int(11) NOT NULL,
  `Tantargy` int(11) NOT NULL,
  `Nap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `orak`
--

INSERT INTO `orak` (`Osztalyok`, `Oraszam`, `Tantargy`, `Nap`) VALUES
(7, 1, 6, 1),
(7, 2, 7, 1),
(7, 3, 3, 1),
(7, 4, 1, 1),
(7, 5, 4, 1),
(7, 1, 6, 2),
(7, 2, 1, 2),
(7, 3, 5, 2),
(7, 4, 4, 2),
(7, 5, 8, 2),
(7, 1, 6, 3),
(7, 2, 5, 3),
(7, 3, 1, 3),
(7, 4, 4, 3),
(7, 5, 8, 3),
(7, 1, 2, 4),
(7, 3, 5, 4),
(7, 4, 1, 4),
(7, 5, 2, 4),
(7, 1, 4, 5),
(7, 2, 2, 5),
(7, 3, 7, 5),
(7, 4, 3, 5),
(7, 5, 5, 5),
(8, 1, 1, 1),
(8, 2, 4, 1),
(8, 3, 2, 1),
(8, 4, 6, 1),
(8, 5, 7, 1),
(8, 1, 8, 2),
(8, 2, 3, 2),
(8, 3, 4, 2),
(8, 4, 6, 2),
(8, 5, 8, 2),
(8, 1, 5, 3),
(8, 2, 1, 3),
(8, 3, 7, 3),
(8, 4, 2, 3),
(8, 5, 8, 3),
(8, 1, 1, 4),
(8, 2, 2, 4),
(8, 3, 3, 4),
(8, 4, 4, 4),
(8, 5, 6, 4),
(7, 2, 5, 4),
(8, 1, 7, 5),
(8, 2, 4, 5),
(8, 3, 6, 5),
(8, 4, 3, 5),
(8, 5, 1, 5),
(1, 1, 3, 1),
(1, 2, 3, 1),
(1, 3, 7, 1),
(1, 4, 8, 1),
(1, 5, 3, 1),
(1, 1, 1, 2),
(1, 2, 8, 2),
(1, 3, 8, 2),
(1, 4, 6, 2),
(1, 5, 7, 2),
(1, 1, 7, 3),
(1, 2, 8, 3),
(1, 3, 4, 3),
(1, 4, 1, 3),
(1, 5, 5, 3),
(1, 1, 3, 4),
(1, 2, 4, 4),
(1, 3, 6, 4),
(1, 4, 2, 4),
(1, 5, 1, 4),
(1, 1, 8, 5),
(1, 2, 8, 5),
(1, 3, 8, 5),
(1, 4, 8, 5),
(1, 5, 3, 5),
(2, 1, 4, 1),
(2, 2, 6, 1),
(2, 3, 1, 1),
(2, 4, 3, 1),
(2, 5, 8, 1),
(2, 1, 4, 2),
(2, 2, 8, 2),
(2, 3, 8, 2),
(2, 4, 7, 2),
(2, 5, 1, 2),
(2, 1, 4, 3),
(2, 2, 6, 3),
(2, 3, 2, 3),
(2, 4, 3, 3),
(2, 5, 3, 3),
(2, 1, 4, 4),
(2, 2, 1, 4),
(2, 3, 7, 4),
(2, 4, 3, 4),
(2, 5, 2, 4),
(2, 1, 8, 5),
(2, 2, 8, 5),
(2, 3, 8, 5),
(2, 4, 8, 5),
(2, 5, 6, 5),
(3, 1, 8, 1),
(3, 2, 8, 1),
(3, 3, 4, 1),
(3, 4, 3, 1),
(3, 5, 8, 1),
(3, 1, 7, 2),
(3, 2, 5, 2),
(3, 3, 6, 2),
(3, 4, 2, 2),
(3, 5, 4, 2),
(3, 1, 2, 3),
(3, 2, 4, 3),
(3, 3, 8, 3),
(3, 4, 8, 3),
(3, 5, 3, 3),
(3, 1, 8, 4),
(3, 2, 8, 4),
(3, 3, 3, 4),
(3, 4, 6, 4),
(3, 5, 4, 4),
(3, 1, 1, 5),
(3, 2, 8, 5),
(3, 3, 1, 5),
(3, 4, 1, 5),
(3, 5, 8, 5),
(4, 1, 8, 1),
(4, 2, 8, 1),
(4, 3, 3, 1),
(4, 4, 4, 1),
(4, 5, 8, 1),
(4, 1, 2, 2),
(4, 2, 4, 2),
(4, 3, 8, 2),
(4, 4, 8, 2),
(4, 5, 4, 2),
(4, 1, 1, 3),
(4, 2, 2, 3),
(4, 3, 8, 3),
(4, 4, 8, 3),
(4, 5, 2, 3),
(4, 1, 8, 4),
(4, 2, 8, 4),
(4, 3, 1, 4),
(4, 4, 7, 4),
(4, 5, 3, 4),
(4, 2, 8, 5),
(4, 3, 1, 5),
(4, 4, 1, 5),
(4, 5, 8, 5),
(4, 6, 8, 5),
(5, 1, 7, 1),
(5, 2, 1, 1),
(5, 3, 8, 1),
(5, 4, 8, 1),
(5, 5, 8, 1),
(5, 1, 8, 2),
(5, 2, 6, 2),
(5, 3, 6, 2),
(5, 4, 1, 2),
(5, 5, 5, 2),
(5, 1, 8, 3),
(5, 2, 8, 3),
(5, 3, 6, 3),
(5, 4, 3, 3),
(5, 5, 1, 3),
(5, 1, 6, 4),
(5, 2, 5, 4),
(5, 3, 8, 4),
(5, 4, 8, 4),
(5, 5, 3, 4),
(5, 1, 8, 5),
(5, 2, 1, 5),
(5, 3, 3, 5),
(5, 4, 4, 5),
(5, 5, 6, 5),
(6, 1, 1, 1),
(6, 2, 4, 1),
(6, 3, 8, 1),
(6, 4, 8, 1),
(6, 5, 8, 1),
(6, 1, 8, 2),
(6, 2, 7, 2),
(6, 3, 4, 2),
(6, 4, 4, 2),
(6, 5, 3, 2),
(6, 1, 8, 3),
(6, 2, 8, 3),
(6, 3, 6, 3),
(6, 4, 7, 3),
(6, 5, 5, 3),
(6, 1, 1, 4),
(6, 2, 1, 4),
(6, 3, 8, 4),
(6, 4, 8, 4),
(6, 5, 7, 4),
(6, 1, 8, 5),
(6, 2, 3, 5),
(6, 3, 3, 5),
(6, 4, 4, 5),
(6, 5, 1, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orak_fajtai`
--

CREATE TABLE `orak_fajtai` (
  `Az` int(11) NOT NULL,
  `Tantargy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `orak_fajtai`
--

INSERT INTO `orak_fajtai` (`Az`, `Tantargy`) VALUES
(0, 'Szakma'),
(1, 'Angol'),
(2, 'Fizika'),
(3, 'Magyar nyelvtan-, irodalom'),
(4, 'Matematika'),
(5, 'Osztályfőnöki'),
(6, 'Testnevelés'),
(7, 'Történelem'),
(8, 'Szakma');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orarend`
--

CREATE TABLE `orarend` (
  `Oraszam` int(11) NOT NULL,
  `Becsengetés` time NOT NULL,
  `Kicsengetes` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `orarend`
--

INSERT INTO `orarend` (`Oraszam`, `Becsengetés`, `Kicsengetes`) VALUES
(1, '08:00:00', '08:45:00'),
(2, '08:55:00', '09:40:00'),
(3, '09:50:00', '10:35:00'),
(4, '10:45:00', '11:30:00'),
(5, '11:40:00', '12:25:00'),
(6, '12:35:00', '13:20:00'),
(7, '13:25:00', '14:10:00'),
(8, '14:15:00', '15:00:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `evfolyamok`
--
ALTER TABLE `evfolyamok`
  ADD PRIMARY KEY (`Az`);

--
-- A tábla indexei `napok`
--
ALTER TABLE `napok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `orak`
--
ALTER TABLE `orak`
  ADD KEY `Osztalyok` (`Osztalyok`,`Oraszam`,`Tantargy`),
  ADD KEY `Oraszam` (`Oraszam`),
  ADD KEY `Nap` (`Nap`),
  ADD KEY `Tantargy` (`Tantargy`);

--
-- A tábla indexei `orak_fajtai`
--
ALTER TABLE `orak_fajtai`
  ADD PRIMARY KEY (`Az`);

--
-- A tábla indexei `orarend`
--
ALTER TABLE `orarend`
  ADD PRIMARY KEY (`Oraszam`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `napok`
--
ALTER TABLE `napok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `orarend`
--
ALTER TABLE `orarend`
  MODIFY `Oraszam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `orak`
--
ALTER TABLE `orak`
  ADD CONSTRAINT `orak_ibfk_2` FOREIGN KEY (`Oraszam`) REFERENCES `orarend` (`Oraszam`) ON DELETE CASCADE,
  ADD CONSTRAINT `orak_ibfk_3` FOREIGN KEY (`Osztalyok`) REFERENCES `evfolyamok` (`Az`) ON DELETE CASCADE,
  ADD CONSTRAINT `orak_ibfk_4` FOREIGN KEY (`Nap`) REFERENCES `napok` (`id`),
  ADD CONSTRAINT `orak_ibfk_5` FOREIGN KEY (`Tantargy`) REFERENCES `orak_fajtai` (`Az`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
