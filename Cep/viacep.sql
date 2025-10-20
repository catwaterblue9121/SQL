-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 20:13
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
-- Banco de dados: `viacep`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ceps`
--

CREATE TABLE `ceps` (
  `id_cep` int(11) NOT NULL,
  `cep` char(9) NOT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `ddd` char(3) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ceps`
--

INSERT INTO `ceps` (`id_cep`, `cep`, `logradouro`, `complemento`, `bairro`, `ddd`, `id_cidade`) VALUES
(1, '18040040', 'Rua João Wagner Wey', '', 'Jardim América', '15', 3),
(2, '18040100', 'Rua da Penha', '', 'Centro', '15', 3),
(3, '18040300', 'Rua Souza Pereira', '', 'Centro', '15', 3),
(4, '18040600', 'Rua Moreira César', '', 'Centro', '15', 3),
(5, '18040800', 'Rua Padre Luiz', '', 'Centro', '15', 3),
(6, '18041000', 'Rua Visconde do Rio Branco', '', 'Centro', '15', 3),
(7, '18041200', 'Rua Capitão Grandino', '', 'Centro', '15', 3),
(8, '18041500', 'Rua Monsenhor João Soares', '', 'Centro', '15', 3),
(9, '18041800', 'Rua Brigadeiro Tobias', '', 'Centro', '15', 3),
(10, '18042000', 'Rua da Constituição', '', 'Centro', '15', 3),
(11, '20040002', 'Rua da Quitanda', '', 'Centro', '21', 6),
(12, '20050000', 'Rua do Ouvidor', '', 'Centro', '21', 6),
(13, '20060000', 'Avenida Rio Branco', '', 'Centro', '21', 6),
(14, '20070000', 'Rua São José', '', 'Centro', '21', 6),
(15, '20080000', 'Rua Sete de Setembro', '', 'Centro', '21', 6),
(16, '20090000', 'Rua México', '', 'Centro', '21', 6),
(17, '20100000', 'Rua da Assembleia', '', 'Centro', '21', 6),
(18, '20110000', 'Rua do Rosário', '', 'Centro', '21', 6),
(19, '20120000', 'Rua da Carioca', '', 'Centro', '21', 6),
(20, '20130000', 'Rua do Carmo', '', 'Centro', '21', 6),
(21, '80010000', 'Rua XV de Novembro', '', 'Centro', '41', 11),
(22, '80020000', 'Avenida Marechal Floriano Peixoto', '', 'Centro', '41', 11),
(23, '80030000', 'Rua Comendador Araújo', '', 'Centro', '41', 11),
(24, '80040000', 'Rua Voluntários da Pátria', '', 'Centro', '41', 11),
(25, '80050000', 'Rua Cruz Machado', '', 'Centro', '41', 11),
(26, '80060000', 'Rua Saldanha Marinho', '', 'Centro', '41', 11),
(27, '80070000', 'Rua André de Barros', '', 'Centro', '41', 11),
(28, '80080000', 'Rua Alfredo Bufren', '', 'Centro', '41', 11),
(29, '80090000', 'Rua Conselheiro Laurindo', '', 'Centro', '41', 11),
(30, '80100000', 'Rua Visconde de Nácar', '', 'Centro', '41', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `codigo_ibge` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id_cidade`, `nome`, `codigo_ibge`, `id_estado`) VALUES
(1, 'São Paulo', 3550308, 25),
(2, 'Campinas', 3509502, 25),
(3, 'Sorocaba', 3552205, 25),
(4, 'Santos', 3548500, 25),
(5, 'Ribeirão Preto', 3543402, 25),
(6, 'Rio de Janeiro', 3304557, 19),
(7, 'Niterói', 3303302, 19),
(8, 'Campos dos Goytacazes', 3301009, 19),
(9, 'Nova Iguaçu', 3303500, 19),
(10, 'Petrópolis', 3303906, 19),
(11, 'Curitiba', 4106902, 16),
(12, 'Londrina', 4113700, 16),
(13, 'Maringá', 4115200, 16),
(14, 'Ponta Grossa', 4119905, 16),
(15, 'Cascavel', 4104808, 16);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `uf` char(2) NOT NULL,
  `regiao` varchar(50) DEFAULT NULL,
  `codigo_ibge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estados`
--

INSERT INTO `estados` (`id_estado`, `nome`, `uf`, `regiao`, `codigo_ibge`) VALUES
(1, 'Acre', 'AC', 'Norte', 12),
(2, 'Alagoas', 'AL', 'Nordeste', 27),
(3, 'Amapá', 'AP', 'Norte', 16),
(4, 'Amazonas', 'AM', 'Norte', 13),
(5, 'Bahia', 'BA', 'Nordeste', 29),
(6, 'Ceará', 'CE', 'Nordeste', 23),
(7, 'Distrito Federal', 'DF', 'Centro-Oeste', 53),
(8, 'Espírito Santo', 'ES', 'Sudeste', 32),
(9, 'Goiás', 'GO', 'Centro-Oeste', 52),
(10, 'Maranhão', 'MA', 'Nordeste', 21),
(11, 'Mato Grosso', 'MT', 'Centro-Oeste', 51),
(12, 'Mato Grosso do Sul', 'MS', 'Centro-Oeste', 50),
(13, 'Minas Gerais', 'MG', 'Sudeste', 31),
(14, 'Pará', 'PA', 'Norte', 15),
(15, 'Paraíba', 'PB', 'Nordeste', 25),
(16, 'Paraná', 'PR', 'Sul', 41),
(17, 'Pernambuco', 'PE', 'Nordeste', 26),
(18, 'Piauí', 'PI', 'Nordeste', 22),
(19, 'Rio de Janeiro', 'RJ', 'Sudeste', 33),
(20, 'Rio Grande do Norte', 'RN', 'Nordeste', 24),
(21, 'Rio Grande do Sul', 'RS', 'Sul', 43),
(22, 'Rondônia', 'RO', 'Norte', 11),
(23, 'Roraima', 'RR', 'Norte', 14),
(24, 'Santa Catarina', 'SC', 'Sul', 42),
(25, 'São Paulo', 'SP', 'Sudeste', 35),
(26, 'Sergipe', 'SE', 'Nordeste', 28),
(27, 'Tocantins', 'TO', 'Norte', 17);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ceps`
--
ALTER TABLE `ceps`
  ADD PRIMARY KEY (`id_cep`),
  ADD KEY `id_cidade` (`id_cidade`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices de tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`),
  ADD UNIQUE KEY `codigo_ibge` (`codigo_ibge`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ceps`
--
ALTER TABLE `ceps`
  MODIFY `id_cep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ceps`
--
ALTER TABLE `ceps`
  ADD CONSTRAINT `ceps_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);

--
-- Restrições para tabelas `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidades_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
