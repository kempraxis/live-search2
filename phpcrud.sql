-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2019. Nov 06. 14:45
-- Kiszolgáló verziója: 5.7.14
-- PHP verzió: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `phpcrud`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_hungarian_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `crud`
--

INSERT INTO `crud` (`id`, `name`, `email`, `phone`, `photo`) VALUES
(1, 'Edmonton Warren', 'edmonton.warren@edmonton.org', '9876567', 'uploads/Edmonston-Warren.jpg'),
(16, 'Myrna Loy', 'myrna.loy@yahoo.com', '8978987', 'uploads/myrna_loy.jpg'),
(15, 'Eva Kornyikova', 'eva.kornyikova@eva.com', '5555555', 'uploads/Ava-Nude.jpg'),
(4, 'Miler Color', 'miler.color@hotmail.net', '6666666', 'uploads/Miller-Colors.jpg'),
(5, 'Jimmy McCowan', 'jimmy.mcowan@citromail.org', '7681234', 'uploads/McCowan-Jimmy.jpg'),
(6, 'Bob Dylan', 'bob.dylan@hotmail.com', '3456120', 'uploads/bob_dylan.jpg'),
(18, 'Teszt Lali', 'teszt.lali@lali.net', '1212121', 'uploads/McCowan-Jimmy.jpg');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
