-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jan-2023 às 23:38
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
-- Banco de dados: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(220) NOT NULL,
  `email_usuario` varchar(220) NOT NULL,
  `foto_usuario` varchar(220) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome_usuario`, `email_usuario`, `foto_usuario`, `created`, `modified`) VALUES
(1, 'Hugo', 'hugoapga626@gmail.com', 'WhatsApp Image 2023-01-08 at 20.45.53 (1).jpeg', '2023-01-10 16:22:48', NULL),
(2, 'Hugo Aparecido', 'hugoapga2626@gmail.com', 'WhatsApp Image 2023-01-08 at 20.45.54.jpeg', '2023-01-10 16:23:33', NULL),
(4, 'Hugo', 'hugoapga626@gmail.com', '', '2023-01-10 17:10:12', NULL),
(5, 'Hugo Aparecido', 'hugoapga626@gmail.com', 'WhatsApp Image 2023-01-08 at 20.45.52.jpeg', '2023-01-10 17:28:00', '2023-01-10 19:19:48'),
(6, 'Hugo', 'hugoapga626@gmail.com', 'WhatsApp Image 2023-01-08 at 20.45.52 (1).jpeg', '2023-01-10 19:33:39', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
