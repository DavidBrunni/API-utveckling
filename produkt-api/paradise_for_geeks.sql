-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 24 apr 2025 kl 22:05
-- Serverversion: 10.4.28-MariaDB
-- PHP-version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `paradise_for_geeks`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Gamingmöss'),
(2, 'Datorskärmar'),
(3, 'Tangentbord');

-- --------------------------------------------------------

--
-- Tabellstruktur `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `stock`, `price`, `image`, `created_date`, `category_id`) VALUES
(1, 'Razer DeathAdder V2', 'Ergonomisk gamingmus med hög precision och optisk sensor.', 120, 999.99, 'razer_deathadder_v2.jpg', '2025-04-22 22:08:19', 1),
(2, 'Logitech G Pro X', 'Gamingmus med ultra låg latens och anpassningsbara knappar.', 80, 799.99, 'logitech_g_pro_x.jpg', '2025-04-22 22:08:19', 1),
(3, 'SteelSeries Rival 600', 'Gamingmus med dubbla sensorer och justerbar vikt.', 60, 1199.99, 'steelseries_rival_600.jpg', '2025-04-22 22:08:19', 1),
(4, 'Samsung Odyssey G7', '27-tums gamingmonitor med 240Hz uppdateringsfrekvens och QHD-upplösning.', 50, 5499.99, 'samsung_odyssey_g7.jpg', '2025-04-22 22:08:49', 2),
(5, 'BenQ Zowie XL2546', '24,5-tums gamingmonitor med 240Hz uppdateringsfrekvens och DyAc-teknologi.', 30, 4499.99, 'benq_zowie_xl2546.jpg', '2025-04-22 22:08:49', 2),
(6, 'ASUS ROG Swift PG259QN', '24,5-tums Full HD monitor med 360Hz och 1ms responstid.', 20, 7999.99, 'asus_rog_swift_pg259qn.jpg', '2025-04-22 22:08:49', 2),
(7, 'Corsair K95 RGB Platinum', 'Mekaniskt tangentbord med RGB-belysning och makrotangent.', 100, 1899.99, 'corsair_k95_rgb_platinum.jpg', '2025-04-22 22:09:42', 3),
(8, 'Logitech G915', 'Trådlöst mekaniskt tangentbord med låg profil och RGB-belysning.', 70, 2299.99, 'logitech_g915.jpg', '2025-04-22 22:09:42', 3),
(9, 'Razer Huntsman Elite', 'Mekaniskt tangentbord med opto-mekaniska switchar och anpassningsbara RGB-lampor.', 90, 2499.99, 'razer_huntsman_elite.jpg', '2025-04-22 22:09:42', 3);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT för tabell `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
