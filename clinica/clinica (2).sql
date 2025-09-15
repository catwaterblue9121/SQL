-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:50
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Carlos Souza', 'Cardiologista', '5555-6666', 'CRM12345'),
(2, 'Dra. Ana Lima', 'Pediatra', '7878-0000', 'CRM7890'),
(3, 'Dra. Marileine Bash', 'Pediatra', '5234-6436', 'CRM12134'),
(5, 'Dr. James Fruta', 'Ginecologista', '5464-8329', 'CRM10694'),
(6, 'Dra. Noelle Silva', 'Gineologista', '2348-9823', 'CRM823716'),
(7, 'Dr. Magna Swing', 'Dermatologista', '9023-9743', 'CRM73926'),
(8, 'Dr. Luck Voltcha', 'Ginecologista', '6572-9623', 'CRM92346'),
(9, 'Dra. Charmy Papitston', 'Nutricionista', '2573-7824', 'CRM02958'),
(10, 'Dr. Yami Sukehiro', 'Dermatologista', '0984-2958', 'CRM02578');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'Ana Beatriz Costa', '1990-04-15', '98345-2314', 'Rua das Flores, 123, Centro, São Paulo - SP', '01001-000', 'ana.costa@email.com'),
(2, 'Lucas Henrique Silva', '1985-11-30', '97234-8765', 'Av. Brasil, 456, Jardim América, Rio de Janeiro - RJ', '22250-040', 'lucas.silva@email.com'),
(3, 'Mariana Lopes Freitas', '1998-06-22', '98576-2345', 'Rua dos Jacarandás, 78, Centro, Belo Horizonte - MG', '30140-000', 'mariana.freitas@email.com'),
(4, 'Carlos Eduardo Ramos', '1977-03-09', '96432-1123', 'Rua São João, 302, Liberdade, Salvador - BA', '40045-545', 'carlos.ramos@email.com'),
(5, 'Fernanda Souza Lima', '1992-12-05', '99876-5432', 'Av. Independência, 1001, Aldeota, Fortaleza - CE', '60150-000', 'fernanda.lima@email.com'),
(6, 'Thiago Martins Gomes', '2000-01-17', '97654-3210', 'Rua das Acácias, 44, Centro, Curitiba - PR', '80010-110', 'thiago.gomes@email.com'),
(7, 'Juliana Alves Pereira', '1989-08-13', '96789-4321', 'Av. das Nações, 555, Asa Sul, Brasília - DF', '70390-045', 'juliana.pereira@email.com'),
(8, 'Gabriel Nunes Rocha', '1995-10-28', '95432-1987', 'Rua Pedro II, 210, Centro, Porto Alegre - RS', '90010-000', 'gabriel.rocha@email.com'),
(9, 'Roberta Dias Mello', '1993-02-02', '94678-3456', 'Rua XV de Novembro, 789, Centro, Florianópolis - SC', '88010-001', 'roberta.mello@email.com'),
(10, 'Felipe Andrade Torres', '1980-07-19', '93567-8123', 'Av. Atlântica, 1500, Copacabana, Rio de Janeiro - RJ', '22021-001', 'felipe.torres@email.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
