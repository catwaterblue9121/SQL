-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/10/2025 às 20:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sat_com`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `sat_com`
--

CREATE TABLE `sat_com` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `operador` varchar(50) DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sat_com`
--

INSERT INTO `sat_com` (`id`, `nome`, `operador`, `cobertura`) VALUES
(1, 'Starlink-1', 'SpaceX', 'Global'),
(2, 'Intelsat 35e', 'Intelsat', 'Américas'),
(3, 'Brasilsat B4', 'Embratel', 'Brasil');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `sat_com`
--
ALTER TABLE `sat_com`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
