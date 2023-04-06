-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 06, 2023 at 02:02 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` text,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `price`, `description`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'SABLE', 'cuilleres.jpg', 47, 'Ustensiles à Salade de fabrication artisanale.', 'Cuisine', '2023-03-23 00:00:00', '2023-04-06 00:55:25'),
(2, 'COLTON', 'table.png', 1229, 'Une table au look unique et singulier qui vous permettra de réunir vos amis ou votre famille autour d\'un bon repas.', 'Meubles', '2023-03-23 00:00:00', '2023-03-30 20:20:51'),
(3, 'CALABRIA', 'lampe.png', 540, 'Cette magnifique lampe illuminera votre intérieur avec charme. Sa base en céramique apporte une touche authentique, raffinée et naturelle à votre décoration.', 'Lampes', '2023-04-05 22:20:16', '2023-04-05 22:20:16'),
(4, 'DUPRE', 'mirroir.png', 236, 'À l\'horizontal ou à la verticale, ce miroir déco habille avec caractère un pan de mur.', 'Décorations', '2023-04-05 22:31:11', '2023-04-05 22:31:11'),
(5, 'LINA', 'coussin.jpg', 98, 'Coussin de couleur olive et fait de lin avec 95% de plume.', 'Décorations', '2023-04-05 22:33:50', '2023-04-05 22:33:50'),
(6, 'FLORINE', 'vase.png', 84, 'Vase en céramique avec oiseaux, multicolore.', 'Décorations', '2023-04-05 22:35:04', '2023-04-05 22:35:04'),
(7, 'HARSTAD', 'goblet.jpg', 18.5, 'Gobelet en ciment de fabrication aritisanale.', 'Salle de bain', '2023-04-05 22:36:25', '2023-04-05 22:36:25'),
(8, 'CANE', 'chaise.png', 388, 'Chaise en bois de manguier avec assise confortable, recouverte en lin.', 'Meubles', '2023-04-05 22:37:34', '2023-04-05 22:37:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
