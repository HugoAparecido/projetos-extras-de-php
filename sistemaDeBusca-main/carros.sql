-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jan-2023 às 19:58
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `carros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL,
  `fabricante` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `veiculo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `fabricante`, `modelo`, `veiculo`) VALUES
(1, 'ford', 'ford ka 1.0 se 12v', 'ka'),
(2, 'ford', 'ford ka 1.0 se 12v', 'ka'),
(3, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(4, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(5, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(6, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(7, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(8, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(9, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(10, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(11, 'volkswagen ', 'volkswagen fox 1.6 mi 8v', 'fox'),
(12, 'fiat', 'fiat grand siena 1.0 evo', 'evo'),
(13, 'fiat', 'fiat grand siena 1.0 evo', 'evo'),
(14, 'fiat', 'fiat grand siena 1.0 evo', 'evo'),
(15, 'fiat', 'fiat grand siena 1.0 evo', 'evo'),
(16, 'ford', 'ford ecosport 1.5 ti-vct freestyle', 'ecosport'),
(17, 'ford', 'ford ecosport 1.5 ti-vct freestyle', 'ecosport'),
(18, 'ford', 'ford ecosport 1.5 ti-vct freestyle', 'ecosport'),
(19, 'ford', 'ford ecosport 1.5 ti-vct freestyle', 'ecosport'),
(20, 'ford', 'ford ecosport 1.5 ti-vct freestyle', 'ecosport'),
(21, 'hyundai', 'hyundai tucson 2.0 mpfi gls 16v 143cv 2wd', 'tucson'),
(22, 'hyundai', 'hyundai tucson 2.0 mpfi gls 16v 143cv 2wd', 'tucson'),
(23, 'hyundai', 'hyundai tucson 2.0 mpfi gls 16v 143cv 2wd', 'tucson'),
(24, 'hyundai', 'hyundai tucson 2.0 mpfi gls 16v 143cv 2wd', 'tucson'),
(25, 'hyundai', 'hyundai tucson 2.0 mpfi gls 16v 143cv 2wd', 'tucson');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
