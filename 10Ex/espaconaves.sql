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
-- Banco de dados: `espaconaves`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `espaconaves`
--

CREATE TABLE `espaconaves` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `agencia` varchar(50) DEFAULT NULL,
  `tripulacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `espaconaves`
--

INSERT INTO `espaconaves` (`id`, `nome`, `agencia`, `tripulacao`) VALUES
(1, 'Apollo 11', 'NASA', 3),
(2, 'Soyuz MS-20', 'Roscosmos', 3),
(3, 'Dragon Crew 1', 'SpaceX', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `espaconaves`
--
ALTER TABLE `espaconaves`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
