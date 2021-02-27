-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2020 às 16:45
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sgv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `cod_cat` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `unidade` int(11) NOT NULL,
  `tamanho` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`cod_cat`, `nome`, `descricao`, `unidade`, `tamanho`, `data`) VALUES
(1, 'rotulo5', 'embalagem', 30, '5 litros', '2019-12-06 18:46:06'),
(2, 'rotulo2', 'embalagem', 20, '2 litros', '2019-12-06 18:46:54'),
(3, 'rotulo1', 'embalagem', 40, '1.5 litros', '2019-12-06 18:47:22'),
(4, 'rotulo18', 'embalagem', 60, '18.9 litros', '2019-12-06 18:47:47'),
(5, 'vasilhame1', 'caixa', 29, '1.5 litros', '2019-12-06 18:48:29'),
(6, 'vasilhame2', 'caixa', 25, '2 litros', '2019-12-06 18:48:51'),
(7, 'vasilhame5', 'caixa', 25, '5 litros', '2019-12-06 18:49:52'),
(8, 'vasilhame18', 'caixa', 120, '18.9 litros', '2019-12-06 18:50:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_cl` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `contacto` int(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `valorD` double DEFAULT NULL,
  `galoes` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cod_cl`, `nome`, `contacto`, `email`, `categoria`, `bairro`, `valorD`, `galoes`, `foto`, `data`) VALUES
(8, 'aicha ', 846223748, 'aicha@gmail.com', 'Singular', 'machava', 5000, 10, 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/cliente/l1.jpg', '2019-12-13 20:46:21'),
(6, 'antonio', 872323398, 'juniorcua@Gmail.com', 'empresa', 'liberdade', 1500, 2, 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/cliente/l3.png', '2019-12-13 14:17:00'),
(9, 'omar', 73883833, 'omar@gmail.com', 'empresa', 'ksdhdfhdfhdhd', 15000, 10, 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/cliente/l2.png', '2019-12-13 20:54:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `Produto_C` varchar(200) NOT NULL,
  `Quantidade` int(30) NOT NULL,
  `Preco` double NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id_compra`, `Produto_C`, `Quantidade`, `Preco`, `Data`) VALUES
(1, 'garafa2', 0, 14, '2019-12-13 10:30:15'),
(2, 'galao18', 0, 200, '2019-12-13 10:46:27'),
(3, 'garafa1', 0, 20, '2019-12-13 10:46:43'),
(4, 'garafa2', 0, 35, '2019-12-13 10:47:25'),
(5, 'galao18', 0, 120, '2019-12-13 11:33:42'),
(6, 'garafa2', 0, 35, '2019-12-13 11:34:08'),
(7, 'garafa5', 0, 110, '2019-12-13 11:36:40'),
(8, 'rotulo2', 40, 50, '2019-12-13 18:22:10'),
(9, 'rotulo2', 0, 50, '2019-12-13 18:22:21'),
(10, 'garafa1', 0, 20, '2019-12-20 12:33:30'),
(11, 'galao18', 0, 120, '2019-12-20 12:33:47'),
(12, 'garafa2', 0, 35, '2019-12-20 12:34:01'),
(13, 'galao18', 0, 120, '2019-12-20 12:42:21'),
(14, 'garafa1', 0, 200, '2019-12-20 13:59:34'),
(15, 'garafa1', 0, 20, '2019-12-20 13:59:40'),
(16, 'galao18', 0, 120, '2019-12-20 13:59:50'),
(17, 'garafa2', 0, 35, '2019-12-20 14:00:07'),
(18, 'garafa1', 0, 20, '2019-12-20 14:09:16'),
(19, 'garafa1', 0, 45, '2019-12-20 14:12:20'),
(20, 'garafa1', 0, 45, '2019-12-21 14:07:24'),
(21, 'garafa1', 0, 45, '2019-12-21 14:10:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `descricao_vendas`
--

CREATE TABLE `descricao_vendas` (
  `id_Tvendas` int(11) NOT NULL,
  `id_Tavenda` int(11) NOT NULL,
  `id_Mercadoria` int(11) NOT NULL,
  `Preco` double NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_pagar` double NOT NULL,
  `Desconto` double NOT NULL,
  `NomeP` varchar(1000) NOT NULL,
  `Stock` int(11) NOT NULL,
  `VRB` double NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `descricao_vendas`
--

INSERT INTO `descricao_vendas` (`id_Tvendas`, `id_Tavenda`, `id_Mercadoria`, `Preco`, `quantidade`, `valor_pagar`, `Desconto`, `NomeP`, `Stock`, `VRB`, `Data`) VALUES
(8, 2, 34, 45, 4, 180, 0, 'garafa1', 200, 390, '2019-12-21 14:15:35'),
(9, 2, 32, 105, 1, 105, 0, 'garafa5', 40, 390, '2019-12-21 14:15:35'),
(10, 2, 32, 105, 1, 105, 0, 'garafa5', 40, 390, '2019-12-21 14:15:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id_for` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `contacto` int(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp(),
  `foto` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_for`, `Nome`, `contacto`, `Email`, `endereco`, `Data`, `foto`) VALUES
(14, 'agua moamba', 84356920, 'aguamoamba@gmail.com', 'moamba', '2019-11-29 12:20:13', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/fornecedor/FOR.jpg'),
(5, 'galoes, lda', 846463383, 'galao@gmail.com', 'Boane', '2019-02-11 11:18:00', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/fornecedor/FOR.jpg'),
(7, 'vasilhame', 847372620, 'vasilham@gmail.com', 'matola', '2019-02-11 11:48:18', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/fornecedor/FOR.jpg'),
(10, 'rotulo, lda', 846382637, 'rotulo@gmail.com', 'Matola rio', '2019-02-11 11:56:18', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/fornecedor/FOR.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `Nome_User` varchar(100) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp(),
  `Ide` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_login`, `Nome_User`, `Senha`, `Data`, `Ide`) VALUES
(10, 'Antonio', '12345', '2019-04-05 07:52:23', 12),
(9, 'Antonio', '12345', '2019-04-01 07:25:30', 12),
(8, 'Antonio', '12345', '2019-03-31 20:41:44', 12),
(7, 'Antonio', '12345', '2019-03-31 20:38:50', 12),
(5, 'Antonio', '12345', '2019-03-15 10:38:56', 12),
(6, 'Antonio', '12345', '2019-03-15 10:41:43', 12),
(11, 'Antonio', '12345', '2019-04-30 18:22:40', 12),
(12, 'Antonio', '12345', '2019-09-19 20:26:10', 12),
(13, 'Antonio', '12345', '2019-09-22 15:06:54', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercadoria`
--

CREATE TABLE `mercadoria` (
  `id_mercadoria` int(11) NOT NULL,
  `cod_baras` int(11) DEFAULT NULL,
  `nome_produto` varchar(200) NOT NULL,
  `id_Produto` int(11) DEFAULT NULL,
  `tamanho` varchar(15) DEFAULT NULL,
  `Quantidade` int(11) NOT NULL,
  `q_usada` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `P_venda` double DEFAULT NULL,
  `Descontos` double DEFAULT NULL,
  `Fornecedor` varchar(100) DEFAULT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mercadoria`
--

INSERT INTO `mercadoria` (`id_mercadoria`, `cod_baras`, `nome_produto`, `id_Produto`, `tamanho`, `Quantidade`, `q_usada`, `valor`, `P_venda`, `Descontos`, `Fornecedor`, `Data`) VALUES
(34, 10000, 'garafa1', 1, '1.5 litros', 196, NULL, 10350, 45, 0, 'agua moamba', '2019-12-20 14:12:10'),
(26, 20000, 'galao18', 2, '18.9 litros', 330, NULL, 42000, 120, 5, 'agua moamba', '2019-12-13 10:44:41'),
(27, 3000, 'garafa2', 4, '2 litros', 10, NULL, 700, 35, 0, 'agua moamba', '2019-12-13 10:45:09'),
(32, 40000, 'garafa5', 5, '5 litros', 38, NULL, 4200, 105, 0, 'agua moamba', '2019-12-20 13:59:16'),
(33, 10000, 'garafa1', 1, '1.5 litros', -20, NULL, 1200, 40, 0, 'agua moamba', '2019-12-20 14:06:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mprima`
--

CREATE TABLE `mprima` (
  `cod_mp` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `q_usada` int(11) DEFAULT NULL,
  `preco` double NOT NULL,
  `valor` double NOT NULL,
  `fornecedor` varchar(100) NOT NULL,
  `cod_f` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_compra` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mprima`
--

INSERT INTO `mprima` (`cod_mp`, `categoria`, `quantidade`, `q_usada`, `preco`, `valor`, `fornecedor`, `cod_f`, `data`, `data_compra`) VALUES
(3, 'rotulo2', 30, 0, 40, 1200, 'rotulo, lda', 0, '2019-12-06 19:00:04', '2019-12-06 19:00:04'),
(4, 'rotulo18', 70, 0, 60, 4200, 'rotulo, lda', 0, '2019-12-06 19:00:34', '2019-12-06 19:00:34'),
(5, 'vasilhame1', 20, 0, 20, 400, 'vasilhame', 0, '2019-12-06 19:01:05', '2019-12-06 19:01:05'),
(7, 'rotulo1', 100, NULL, 30, 3000, 'rotulo, lda', 0, '2019-12-11 15:24:27', '2019-12-11 15:24:27'),
(8, 'rotulo5', 200, NULL, 10, 2000, 'rotulo, lda', 0, '2019-12-11 16:23:20', '2019-12-11 16:23:20'),
(9, 'rotulo2', 10, NULL, 50, 5000, 'rotulo, lda', 0, '2019-12-13 18:21:24', '2019-12-13 18:21:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codP` int(11) NOT NULL,
  `cod_baras` int(11) DEFAULT NULL,
  `nomeP` varchar(200) NOT NULL,
  `categoriaP` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `Descricao` varchar(200) DEFAULT NULL,
  `unidade` int(11) DEFAULT NULL,
  `tamanho` varchar(20) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codP`, `cod_baras`, `nomeP`, `categoriaP`, `foto`, `Descricao`, `unidade`, `tamanho`, `Data`) VALUES
(1, 10000, 'garafa1', 'bebida', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/Produto/1.5L.jpg', 'caixa', 24, '1.5 litros', '2019-11-28 15:46:44'),
(2, 20000, 'galao18', 'bebida', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/Produto/GALAO.jpg', 'caixa', 4, '18.9 litros', '2019-11-28 15:50:49'),
(4, 3000, 'garafa2', 'bebida', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/Produto/2LI.jpg', 'caixa', 12, '2 litros', '2019-11-29 12:49:07'),
(5, 40000, 'garafa5', 'bebida', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/Produto/5LI.jpg', 'caixa', 2, '5 litros', '2019-11-29 12:49:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `taxas`
--

CREATE TABLE `taxas` (
  `id_Taxa` int(11) NOT NULL,
  `Iva` double NOT NULL,
  `Data` timestamp NULL DEFAULT current_timestamp(),
  `Usuario` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `taxas`
--

INSERT INTO `taxas` (`id_Taxa`, `Iva`, `Data`, `Usuario`) VALUES
(1, 17, '2019-02-16 07:40:31', NULL),
(3, 10, '2019-02-19 17:58:26', NULL),
(4, 17, '2019-02-19 17:58:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(30) NOT NULL,
  `nome_User` varchar(200) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Co_Senha` varchar(50) NOT NULL,
  `contacto_User` int(50) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `funcao` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `Nivel` varchar(100) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_user`, `nome_User`, `Senha`, `Co_Senha`, `contacto_User`, `sexo`, `funcao`, `endereco`, `Email`, `foto`, `Nivel`, `Data`) VALUES
(13, 'antonio', '0001', '0001', 84372623, 'Feminino', 'Usuario', 'beluluane', 'karen@gmail.com', 'C:/Users/Junior Cua/Documents/NetBeansProjects/LoginS/foto/Usuario/l2.png', 'Usuario', '2019-03-14 18:35:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id_Venda` int(11) NOT NULL,
  `VRecebido` double NOT NULL,
  `VPago` double NOT NULL,
  `Trocos` double NOT NULL,
  `codcl` int(11) DEFAULT NULL,
  `nomecl` varchar(100) DEFAULT NULL,
  `Desconto` double NOT NULL,
  `Iva` double NOT NULL,
  `Plastico` double NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id_Venda`, `VRecebido`, `VPago`, `Trocos`, `codcl`, `nomecl`, `Desconto`, `Iva`, `Plastico`, `Data`) VALUES
(1, 2630, 3000, 370, 2147483647, NULL, 5, 0, 0, '2019-12-20 14:03:30'),
(2, 390, 2300, 1910, NULL, NULL, 0, 0, 0, '2019-12-21 14:15:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cod_cat`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cl`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`);

--
-- Índices para tabela `descricao_vendas`
--
ALTER TABLE `descricao_vendas`
  ADD PRIMARY KEY (`id_Tvendas`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`Nome`),
  ADD KEY `id_for` (`id_for`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Índices para tabela `mercadoria`
--
ALTER TABLE `mercadoria`
  ADD PRIMARY KEY (`id_mercadoria`);

--
-- Índices para tabela `mprima`
--
ALTER TABLE `mprima`
  ADD PRIMARY KEY (`cod_mp`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codP`),
  ADD UNIQUE KEY `tamanho` (`tamanho`);

--
-- Índices para tabela `taxas`
--
ALTER TABLE `taxas`
  ADD PRIMARY KEY (`id_Taxa`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nome_User`),
  ADD KEY `id` (`id_user`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_Venda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cod_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `descricao_vendas`
--
ALTER TABLE `descricao_vendas`
  MODIFY `id_Tvendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id_for` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `mercadoria`
--
ALTER TABLE `mercadoria`
  MODIFY `id_mercadoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `mprima`
--
ALTER TABLE `mprima`
  MODIFY `cod_mp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `taxas`
--
ALTER TABLE `taxas`
  MODIFY `id_Taxa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_Venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
