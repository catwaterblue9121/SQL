-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:11
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
-- Banco de dados: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `DataCadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nome`, `Email`, `Senha`, `CPF`, `Endereco`, `Cidade`, `Estado`, `CEP`, `DataCadastro`) VALUES
(1, 'João Silva', 'joao@email.com', 'senha123', '12345678901', 'Rua A, 123', 'São Paulo', 'SP', '01001000', '2025-09-17 00:00:00'),
(2, 'Maria Oliveira', 'maria@email.com', 'senha123', '23456789012', 'Rua B, 456', 'Rio de Janeiro', 'RJ', '20020000', '2025-09-17 00:00:00'),
(3, 'Carlos Souza', 'carlos@email.com', 'senha123', '34567890123', 'Rua C, 789', 'Belo Horizonte', 'MG', '30130000', '2025-09-17 00:00:00'),
(4, 'Ana Costa', 'ana@email.com', 'senha123', '45678901234', 'Rua D, 101', 'Curitiba', 'PR', '80040000', '2025-09-17 00:00:00'),
(5, 'Pedro Lima', 'pedro@email.com', 'senha123', '56789012345', 'Rua E, 202', 'Porto Alegre', 'RS', '90050000', '2025-09-17 00:00:00'),
(6, 'Juliana Pereira', 'juliana@email.com', 'senha123', '67890123456', 'Rua F, 303', 'Salvador', 'BA', '40060000', '2025-09-17 00:00:00'),
(7, 'Ricardo Martins', 'ricardo@email.com', 'senha123', '78901234567', 'Rua G, 404', 'Fortaleza', 'CE', '60070000', '2025-09-17 00:00:00'),
(8, 'Fernanda Rocha', 'fernanda@email.com', 'senha123', '89012345678', 'Rua H, 505', 'Recife', 'PE', '70080000', '2025-09-17 00:00:00'),
(9, 'Lucas Silva', 'lucas@email.com', 'senha123', '90123456789', 'Rua I, 606', 'Manaus', 'AM', '80090000', '2025-09-17 00:00:00'),
(10, 'Carla Santos', 'carla@email.com', 'senha123', '01234567890', 'Rua J, 707', 'Belém', 'PA', '90010000', '2025-09-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `ID_ItemPedido` int(11) NOT NULL,
  `ID_Pedido` int(11) DEFAULT NULL,
  `ID_Produto` int(11) DEFAULT NULL,
  `Quantidade` int(11) DEFAULT NULL,
  `PrecoUnitario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`ID_ItemPedido`, `ID_Pedido`, `ID_Produto`, `Quantidade`, `PrecoUnitario`) VALUES
(1, 1, 1, 2, 10.99),
(2, 1, 2, 1, 20.99),
(3, 2, 3, 3, 15.49),
(4, 2, 4, 2, 7.99),
(5, 3, 5, 1, 30.49),
(6, 4, 6, 1, 12.99),
(7, 5, 7, 5, 25.99),
(8, 6, 8, 10, 5.99),
(9, 7, 9, 2, 50),
(10, 8, 10, 3, 13.75);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `ID_Pedido` int(11) NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `DataPedido` datetime DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `ValorTotal` double DEFAULT NULL,
  `EnderecoEntrega` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`ID_Pedido`, `ID_Cliente`, `DataPedido`, `Status`, `ValorTotal`, `EnderecoEntrega`) VALUES
(1, 1, '2025-09-17 00:00:00', 'Em andamento', 120.99, 'Rua A, 123, São Paulo, SP'),
(2, 2, '2025-09-17 00:00:00', 'Concluído', 250.99, 'Rua B, 456, Rio de Janeiro, RJ'),
(3, 3, '2025-09-17 00:00:00', 'Cancelado', 99.49, 'Rua C, 789, Belo Horizonte, MG'),
(4, 4, '2025-09-17 00:00:00', 'Em andamento', 150, 'Rua D, 101, Curitiba, PR'),
(5, 5, '2025-09-17 00:00:00', 'Concluído', 200, 'Rua E, 202, Porto Alegre, RS'),
(6, 6, '2025-09-17 00:00:00', 'Em andamento', 180, 'Rua F, 303, Salvador, BA'),
(7, 7, '2025-09-17 00:00:00', 'Concluído', 220.75, 'Rua G, 404, Fortaleza, CE'),
(8, 8, '2025-09-17 00:00:00', 'Em andamento', 100.99, 'Rua H, 505, Recife, PE'),
(9, 9, '2025-09-17 00:00:00', 'Concluído', 300.5, 'Rua I, 606, Manaus, AM'),
(10, 10, '2025-09-17 00:00:00', 'Em andamento', 130.99, 'Rua J, 707, Belém, PA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID_Produto` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Descricao` text DEFAULT NULL,
  `Preco` double DEFAULT NULL,
  `SKU` varchar(100) DEFAULT NULL,
  `Estoque` int(11) DEFAULT NULL,
  `DataCriacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`ID_Produto`, `Nome`, `Descricao`, `Preco`, `SKU`, `Estoque`, `DataCriacao`) VALUES
(1, 'Produto A', 'Descrição do Produto A', 10.99, 'SKU001', 100, '2025-09-17 00:00:00'),
(2, 'Produto B', 'Descrição do Produto B', 20.99, 'SKU002', 50, '2025-09-17 00:00:00'),
(3, 'Produto C', 'Descrição do Produto C', 15.49, 'SKU003', 200, '2025-09-17 00:00:00'),
(4, 'Produto D', 'Descrição do Produto D', 7.99, 'SKU004', 75, '2025-09-17 00:00:00'),
(5, 'Produto E', 'Descrição do Produto E', 30.49, 'SKU005', 150, '2025-09-17 00:00:00'),
(6, 'Produto F', 'Descrição do Produto F', 12.99, 'SKU006', 100, '2025-09-17 00:00:00'),
(7, 'Produto G', 'Descrição do Produto G', 25.99, 'SKU007', 60, '2025-09-17 00:00:00'),
(8, 'Produto H', 'Descrição do Produto H', 5.99, 'SKU008', 300, '2025-09-17 00:00:00'),
(9, 'Produto I', 'Descrição do Produto I', 50, 'SKU009', 20, '2025-09-17 00:00:00'),
(10, 'Produto J', 'Descrição do Produto J', 13.75, 'SKU010', 120, '2025-09-17 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`ID_ItemPedido`),
  ADD KEY `ID_Pedido` (`ID_Pedido`),
  ADD KEY `ID_Produto` (`ID_Produto`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID_Pedido`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID_Produto`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`ID_Pedido`) REFERENCES `pedidos` (`ID_Pedido`),
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`ID_Produto`) REFERENCES `produtos` (`ID_Produto`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
