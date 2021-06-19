-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Haz 2021, 21:32:29
-- Sunucu sürümü: 10.4.16-MariaDB
-- PHP Sürümü: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bulutmd`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma`
--

CREATE TABLE `firma` (
  `id` int(11) NOT NULL,
  `isim` varchar(85) COLLATE utf8_turkish_ci NOT NULL,
  `tc` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `adres` text COLLATE utf8_turkish_ci NOT NULL,
  `tel` varchar(13) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `dtarih` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `soru1` varchar(1) COLLATE utf8_turkish_ci NOT NULL,
  `soru2` text COLLATE utf8_turkish_ci NOT NULL,
  `isadres` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `miktar` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `notlar` text COLLATE utf8_turkish_ci NOT NULL,
  `silindimi` varchar(1) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `firma`
--

INSERT INTO `firma` (`id`, `isim`, `tc`, `adres`, `tel`, `email`, `dtarih`, `soru1`, `soru2`, `isadres`, `miktar`, `notlar`, `silindimi`) VALUES
(1, 'ugur', '11111111111', 'Adres Bilgileri', '555-999-99-99', 'aaa@aa.com', '2021-06-24', '', 'Turkiyenin En iyi Markasi', 'Merkez/Corlu/Tekirdag', '10.000 TL', 'yok', '0'),
(2, 'TEST', '11111111111', 'Yeni Adres', '555-999-99-99', 'aaa@aa.com', '2021-06-11', '', 'TESTTESTTESTTESTTESTTEST', 'TESTTESTTESTTEST', 'TESTTESTTESTTEST', 'TESTTESTTESTTEST', '0'),
(3, 'Son Deneme', '11111111111', 'Deneme', '555-999-99-99', 'aaa@aa.com', '2021-06-10', '0', 'Last', 'Test', 'TEST', 'TESTTESTTESTTESTTESTTESTTEST', '0');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `firma`
--
ALTER TABLE `firma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
