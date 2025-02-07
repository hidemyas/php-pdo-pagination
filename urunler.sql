-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Şub 2025, 12:18:45
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `egtim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(10) UNSIGNED NOT NULL,
  `urunadi` varchar(255) NOT NULL,
  `ufunfiyati` double NOT NULL,
  `parabirimi` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `urunadi`, `ufunfiyati`, `parabirimi`) VALUES
(1, 'Samsung Galaxy S8 Plus', 4500, 'TL'),
(2, 'Samsung LCD TV', 2500, 'USD'),
(3, 'Asus Notebook', 6500, 'USD'),
(4, 'Logitech MX Mouse', 270, 'EUR'),
(5, 'MSI Monitör', 3100, 'TL'),
(6, 'Coolermaster Kasa', 1800, 'TL'),
(7, 'Razor Klavye', 890, 'EUR'),
(8, 'İstikbal Yatak', 2000, 'USD'),
(9, 'İstikbal Baza', 1000, 'TRY'),
(10, 'MSI LAPTOP', 5200, 'USD'),
(11, 'Razor Gamer Kulaklık', 500, 'EUR'),
(12, 'Samsung Galaxy S23 ULTRA', 15000, 'TL'),
(13, 'Samsung GALAXY A31', 2500, 'USD'),
(14, 'Asus ZENBOOK', 9800, 'USD'),
(15, 'Logitech KLAVYE', 300, 'EUR'),
(16, 'MSI KASA', 17800, 'TL'),
(17, 'Coolermaster FAN', 3500, 'USD'),
(18, 'Razor Gaming Masa', 1050, 'EUR'),
(19, 'Samsung Galaxy S8 Plus', 4500, 'TL'),
(20, 'Samsung LCD TV', 2500, 'USD'),
(21, 'Asus Notebook', 6500, 'USD'),
(22, 'Logitech MX Mouse', 270, 'EUR'),
(23, 'MSI Monitör', 3100, 'TL'),
(24, 'Coolermaster Kasa', 1800, 'TL'),
(25, 'Razor Klavye', 890, 'EUR'),
(26, 'İstikbal Yatak', 2000, 'USD'),
(27, 'İstikbal Baza', 1000, 'TRY'),
(28, 'MSI LAPTOP', 5200, 'USD'),
(29, 'Razor Gamer Kulaklık', 500, 'EUR'),
(30, 'Samsung Galaxy S23 ULTRA', 15000, 'TL'),
(31, 'Samsung GALAXY A31', 2500, 'USD'),
(32, 'Asus ZENBOOK', 9800, 'USD'),
(33, 'Logitech KLAVYE', 300, 'EUR'),
(34, 'MSI KASA', 17800, 'TL'),
(35, 'Coolermaster FAN', 3500, 'USD'),
(36, 'Razor Gaming Masa', 1050, 'EUR'),
(37, 'Samsung Galaxy S8 Plus', 4500, 'TL'),
(38, 'Samsung LCD TV', 2500, 'USD'),
(39, 'Asus Notebook', 6500, 'USD'),
(40, 'Logitech MX Mouse', 270, 'EUR'),
(41, 'MSI Monitör', 3100, 'TL'),
(42, 'Coolermaster Kasa', 1800, 'TL'),
(43, 'Razor Klavye', 890, 'EUR'),
(44, 'İstikbal Yatak', 2000, 'USD'),
(45, 'İstikbal Baza', 1000, 'TRY'),
(46, 'MSI LAPTOP', 5200, 'USD'),
(47, 'Razor Gamer Kulaklık', 500, 'EUR'),
(48, 'Samsung Galaxy S23 ULTRA', 15000, 'TL'),
(49, 'Samsung GALAXY A31', 2500, 'USD'),
(50, 'Asus ZENBOOK', 9800, 'USD'),
(51, 'Logitech KLAVYE', 300, 'EUR'),
(52, 'MSI KASA', 17800, 'TL'),
(53, 'Coolermaster FAN', 3500, 'USD'),
(54, 'Razor Gaming Masa', 1050, 'EUR'),
(55, 'Samsung Galaxy S8 Plus', 4500, 'TL'),
(56, 'Samsung LCD TV', 2500, 'USD'),
(57, 'Asus Notebook', 6500, 'USD'),
(58, 'Logitech MX Mouse', 270, 'EUR'),
(59, 'MSI Monitör', 3100, 'TL'),
(60, 'Coolermaster Kasa', 1800, 'TL'),
(61, 'Razor Klavye', 890, 'EUR');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
