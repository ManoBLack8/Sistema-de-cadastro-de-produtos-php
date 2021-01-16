-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/01/2021 às 23:21
-- Versão do servidor: 10.4.14-MariaDB
-- Versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(100) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  `tamanho` varchar(50) NOT NULL,
  `tamanho_veste` varchar(200) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descricao` varchar(10000) NOT NULL,
  `idcategoria` int(50) NOT NULL,
  `statu` varchar(50) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `comprimento` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `nome_url`, `imagem`, `tamanho`, `tamanho_veste`, `valor`, `descricao`, `idcategoria`, `statu`, `tags`, `peso`, `largura`, `altura`, `comprimento`) VALUES
(6, 'Juliet', 'juliet', 'Juliet.PNG', 'GG', NULL, '45.00', '20', 1, 'disponivel', '', 0.00, 0.00, 0.00, 0.00),
(8, 'Pochet', 'pochet', 'pochet.png', 'Normal', NULL, '15.00', '.......', 0, 'disponivel', '....', 0.00, 0.00, 0.00, 0.00),
(9, 'Macacãooooooo', 'encontrei-la!-brecho!', 'product/macacoes.png', 'GG', NULL, '45.00', '...', 5, 'disponivel', 'foda', 20.00, 20.00, 20.00, 20.00),
(10, 'calça', 'calca', 'calça.PNG', '', NULL, '0.00', '', 0, '', '', 0.00, 0.00, 0.00, 0.00),
(11, 'Kimonoo', 'kimonoo', 'k1.png', '', NULL, '0.00', '', 0, '', '', 0.00, 0.00, 0.00, 0.00),
(12, 'Kimonoo', 'kimonoo', 'k1.png', '', NULL, '0.00', '', 0, '', '', 0.00, 0.00, 0.00, 0.00),
(13, 'Kimonoo', 'kimonoo', 'k1.png', '', NULL, '0.00', '', 0, '', '', 0.00, 0.00, 0.00, 0.00),
(14, 'Macacão', 'macacao', 'sem-foto.jpg', '', NULL, '0.00', '', 0, '', '', 0.00, 0.00, 0.00, 0.00),
(16, 'Macacão', 'macacao', 'macacoes.PNG', 'Normal', NULL, '0.00', '', 0, '', '', 0.00, 0.00, 0.00, 0.00),
(19, 'Kimono', 'kimono', 'k1.png', 'GG', 'M, G, GG, XG', '45.00', 'gg', 3, '', 'bola ', 20.00, 20.00, 20.00, 20.00),
(25, 'bolsa', 'bolsa', 'bolsa.PNG', 'Normal', 'sem informação', '100.00', '⚠️VENDIDO\r\nBlusa Marfinno soltinha vermelho vinho, mega confortável! - Tamanho: M/ veste: M G2 / busto- 124 cm/ comprimento- 70cm/ comprimento da manga- 32cm / R$ 27,00\r\n.\r\n.\r\n.\r\n☆Por mais R$ 12,00 você leva seu garimpo em uma ecobag artesanal linda!☆\r\n\r\n.\r\n⚠️Comente \"QUERO\" e aguarde nosso contato por direct!\r\n⚠️Entregas a domicílio aos sábados e terças!\r\n⚠️Taxa de entrega fixa R$ 7,00 Cuiabá e R$10,00 Várzea Grande', 11, '', 'Sorriso maroto', 0.00, 0.00, 0.00, 0.00),
(26, 'All-star foda', 'all-star-foda', 'sapato.PNG', '39', '39', '20.00', '⚠️VENDIDO\r\nBlusa Marfinno soltinha vermelho vinho, mega confortável! - Tamanho: M/ veste: M G2 / busto- 124 cm/ comprimento- 70cm/ comprimento da manga- 32cm / R$ 27,00\r\n.\r\n.\r\n.\r\n☆Por mais R$ 12,00 você leva seu garimpo em uma ecobag artesanal linda!☆\r\n\r\n.\r\n⚠️Comente \"QUERO\" e aguarde nosso contato por direct!\r\n⚠️Entregas a domicílio aos sábados e terças!\r\n⚠️Taxa de entrega fixa R$ 7,00 Cuiabá e R$10,00 Várzea Grande', 7, '', '', 0.00, 0.00, 0.00, 0.00),
(27, 'calça', 'calca', 'calça.PNG', '46', '43,44,45', '40.00', '⚠️VENDIDO\r\nBlusa Marfinno soltinha vermelho vinho, mega confortável! - Tamanho: M/ veste: M G2 / busto- 124 cm/ comprimento- 70cm/ comprimento da manga- 32cm / R$ 27,00\r\n.\r\n.\r\n.\r\n☆Por mais R$ 12,00 você leva seu garimpo em uma ecobag artesanal linda!☆\r\n\r\n.\r\n⚠️Comente \"QUERO\" e aguarde nosso contato por direct!\r\n⚠️Entregas a domicílio aos sábados e terças!\r\n⚠️Taxa de entrega fixa R$ 7,00 Cuiabá e R$10,00 Várzea Grande', 4, '', 'Kimono, GG, encontrei lá, peças, lindas, ', 20.00, 20.00, 20.00, 20.00),
(28, 'Kimono', 'kimono', 'k1.png', 'xgg', 'M, G, GG, XG', '49.99', 'kiono lindo mara gostoso', 10, '', 'kimono plus size', 0.00, 0.00, 0.00, 0.00);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
