-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 15:16
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
-- Banco de dados: `biblioteca_uml`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos`
--

CREATE TABLE `acervos` (
  `codigo` int(11) NOT NULL,
  `titulo_1` varchar(255) NOT NULL,
  `titulo_2` varchar(255) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `outros_autores` varchar(255) DEFAULT NULL,
  `edicao` varchar(50) DEFAULT NULL,
  `tipo_acervo` varchar(50) NOT NULL,
  `cod_editora` int(11) DEFAULT NULL,
  `ano_edicao` year(4) DEFAULT NULL,
  `origem` varchar(100) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `num_tombo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervos`
--

INSERT INTO `acervos` (`codigo`, `titulo_1`, `titulo_2`, `autor`, `outros_autores`, `edicao`, `tipo_acervo`, `cod_editora`, `ano_edicao`, `origem`, `categoria`, `num_tombo`) VALUES
(1, 'Eu, Robô', NULL, 'Isaac Asimov', NULL, NULL, 'Livro', 1, '1950', NULL, 1, 1001),
(2, 'Orgulho e Preconceito', NULL, 'Jane Austen', NULL, NULL, 'Livro', 2, '0000', NULL, 2, 1002),
(3, 'Sapiens: Uma Breve História da Humanidade', NULL, 'Yuval Noah Harari', NULL, NULL, 'Livro', 3, '2011', NULL, 3, 1003),
(4, 'Uma Breve História do Tempo', NULL, 'Stephen Hawking', NULL, NULL, 'Livro', 4, '1988', NULL, 4, 1004),
(5, 'Ansiedade: Como enfrentar o mal do século', NULL, 'Augusto Cury', NULL, NULL, 'Livro', 5, '2014', NULL, 5, 1005);

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos_autor`
--

CREATE TABLE `acervos_autor` (
  `cod_acervo` int(11) NOT NULL,
  `cod_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `num_autor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`codigo`, `nome`, `num_autor`) VALUES
(1, 'Isaac Asimov', 101),
(2, 'Jane Austen', 102),
(3, 'Yuval Noah Harari', 103),
(4, 'Stephen Hawking', 104),
(5, 'Augusto Cury', 105);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`codigo`, `descricao`) VALUES
(5, 'Autoajuda'),
(4, 'Ciências Exatas'),
(1, 'Ficção Científica'),
(3, 'História'),
(2, 'Romance');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `situacao` char(1) NOT NULL DEFAULT 'A',
  `cod_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`codigo`, `nome`, `endereco`, `cidade`, `telefone`, `observacao`, `situacao`, `cod_cliente`) VALUES
(1, 'Bruno Costa', 'Rua A, 10', 'São Paulo', '(11) 99887-7665', 'Estudante de engenharia', 'A', 2),
(2, 'Carlos Dias', 'Av. B, 20', 'Rio de Janeiro', '(21) 97654-3210', 'Professor de história', 'A', 3),
(3, 'Eduardo Ferreira', 'Rua C, 30', 'Curitiba', '(41) 95432-1098', 'Aposentado', 'A', 5),
(4, 'Fernanda Gomes', 'Travessa D, 40', 'Belo Horizonte', '(31) 94321-0987', 'Nova cliente', 'A', 1),
(5, 'Gustavo Neves', 'Alameda E, 50', 'São Paulo', '(11) 93210-9876', 'Bloqueado por multas', 'B', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`codigo`, `descricao`, `telefone`) VALUES
(1, 'Editora Alfa', '(11) 3000-1000'),
(2, 'Editora Beta', '(21) 4000-2000'),
(3, 'Editora Gama', '(31) 5000-3000'),
(4, 'Editora Delta', '(41) 6000-4000'),
(5, 'Editora Epsilon', '(51) 7000-5000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `codigo` int(11) NOT NULL,
  `data_emp` varchar(10) NOT NULL,
  `data_prev_dev` varchar(10) NOT NULL,
  `data_real_dev` varchar(10) DEFAULT NULL,
  `cod_acervo` int(11) NOT NULL,
  `cod_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `parametros_da_biblioteca`
--

CREATE TABLE `parametros_da_biblioteca` (
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `valor_multa` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `parametros_da_biblioteca`
--

INSERT INTO `parametros_da_biblioteca` (`nome`, `endereco`, `cidade`, `estado`, `pais`, `cep`, `telefone`, `email`, `valor_multa`) VALUES
('Biblioteca Central', 'Rua das Letras, 100', 'São Paulo', 'SP', 'Brasil', '01000-000', '(11) 5555-1234', 'contato@bc.com', 2.50),
('Filial Norte', 'Av. Conhecimento, 50', 'Campinas', 'SP', 'Brasil', '13000-000', '(19) 4444-5678', 'norte@bc.com', 2.50),
('Filial Sul', 'Estrada do Saber, 200', 'Curitiba', 'PR', 'Brasil', '80000-000', '(41) 3333-9876', 'sul@bc.com', 2.50),
('Ponto de Leitura Oeste', 'Praça do Livro, 30', 'Rio de Janeiro', 'RJ', 'Brasil', '20000-000', '(21) 2222-4321', 'oeste@bc.com', 2.50),
('Setor Digital', 'Online, 0', 'Belo Horizonte', 'MG', 'Brasil', '30000-000', '(31) 1111-8765', 'digital@bc.com', 2.50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `nome`, `tipo_usuario`, `telefone`, `login`, `senha`) VALUES
(1, 'Ana Silva', 'Bibliotecário', '(11) 98765-4321', 'asilva', 'hash123'),
(2, 'Bruno Costa', 'Cliente', '(11) 99887-7665', 'bcosta', 'hash456'),
(3, 'Carlos Dias', 'Cliente', '(21) 97654-3210', 'cdias', 'hash789'),
(4, 'Daniela Souza', 'Administrador', '(31) 96543-2109', 'dsouza', 'hash012'),
(5, 'Eduardo Ferreira', 'Cliente', '(41) 95432-1098', 'eferreira', 'hash345');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acervos`
--
ALTER TABLE `acervos`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `num_tombo` (`num_tombo`),
  ADD KEY `cod_editora` (`cod_editora`),
  ADD KEY `categoria` (`categoria`);

--
-- Índices de tabela `acervos_autor`
--
ALTER TABLE `acervos_autor`
  ADD PRIMARY KEY (`cod_acervo`,`cod_autor`),
  ADD KEY `cod_autor` (`cod_autor`);

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `num_autor` (`num_autor`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `cod_cliente` (`cod_cliente`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `cod_acervo` (`cod_acervo`),
  ADD KEY `cod_cliente` (`cod_cliente`);

--
-- Índices de tabela `parametros_da_biblioteca`
--
ALTER TABLE `parametros_da_biblioteca`
  ADD PRIMARY KEY (`nome`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acervos`
--
ALTER TABLE `acervos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acervos`
--
ALTER TABLE `acervos`
  ADD CONSTRAINT `acervos_ibfk_1` FOREIGN KEY (`cod_editora`) REFERENCES `editora` (`codigo`),
  ADD CONSTRAINT `acervos_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`codigo`);

--
-- Restrições para tabelas `acervos_autor`
--
ALTER TABLE `acervos_autor`
  ADD CONSTRAINT `acervos_autor_ibfk_1` FOREIGN KEY (`cod_acervo`) REFERENCES `acervos` (`codigo`),
  ADD CONSTRAINT `acervos_autor_ibfk_2` FOREIGN KEY (`cod_autor`) REFERENCES `autor` (`codigo`);

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `usuarios` (`codigo`);

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`cod_acervo`) REFERENCES `acervos` (`codigo`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
