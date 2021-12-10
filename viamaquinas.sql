-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 10-Dez-2021 às 04:08
-- Versão do servidor: 10.5.13-MariaDB-0ubuntu0.21.04.1
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viamaquinas`
--
CREATE DATABASE IF NOT EXISTS `viamaquinas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `viamaquinas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_abas`
--

CREATE TABLE `td_abas` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `atributos` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_abas`
--

INSERT INTO `td_abas` (`id`, `inativo`, `entidade`, `descricao`, `atributos`) VALUES
(1, NULL, 8, 'Capa', '43,44'),
(2, NULL, 5, 'Aba', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_aplicativo_dispositivo`
--

CREATE TABLE `td_aplicativo_dispositivo` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `token` varchar(256) NOT NULL,
  `aparelho` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_aplicativo_usuario`
--

CREATE TABLE `td_aplicativo_usuario` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_atividade`
--

CREATE TABLE `td_atividade` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text DEFAULT NULL,
  `tipo` smallint(6) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_atividade`
--

INSERT INTO `td_atividade` (`id`, `titulo`, `descricao`, `tipo`, `status`) VALUES
(1, 'Teste ....', 'Teste ...4', 1, 0),
(2, 'Urgente', 'Urgente ...', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_atributo`
--

CREATE TABLE `td_atributo` (
  `id` int(11) NOT NULL,
  `entidade` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `tamanho` int(11) DEFAULT NULL,
  `nulo` tinyint(4) NOT NULL,
  `omissao` varchar(30) DEFAULT NULL,
  `collection` varchar(35) DEFAULT NULL,
  `atributos` varchar(30) DEFAULT NULL,
  `indice` char(2) DEFAULT NULL,
  `autoincrement` tinyint(4) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `exibirgradededados` tinyint(4) DEFAULT NULL,
  `chaveestrangeira` int(11) DEFAULT NULL,
  `tipohtml` int(11) DEFAULT NULL,
  `dataretroativa` smallint(6) DEFAULT NULL,
  `ordem` float DEFAULT NULL,
  `inicializacao` varchar(200) DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT NULL,
  `exibirpesquisa` tinyint(1) DEFAULT NULL,
  `tipoinicializacao` tinyint(4) DEFAULT NULL,
  `atributodependencia` int(11) DEFAULT NULL,
  `labelzerocheckbox` varchar(35) DEFAULT NULL,
  `labelumcheckbox` varchar(35) DEFAULT NULL,
  `legenda` varchar(200) DEFAULT NULL,
  `desabilitar` tinyint(1) DEFAULT NULL,
  `criarsomatoriogradededados` tinyint(1) DEFAULT NULL,
  `naoexibircampo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_atributo`
--

INSERT INTO `td_atributo` (`id`, `entidade`, `nome`, `descricao`, `tipo`, `tamanho`, `nulo`, `omissao`, `collection`, `atributos`, `indice`, `autoincrement`, `comentario`, `exibirgradededados`, `chaveestrangeira`, `tipohtml`, `dataretroativa`, `ordem`, `inicializacao`, `readonly`, `exibirpesquisa`, `tipoinicializacao`, `atributodependencia`, `labelzerocheckbox`, `labelumcheckbox`, `legenda`, `desabilitar`, `criarsomatoriogradededados`, `naoexibircampo`) VALUES
(1, 1, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(2, 1, 'descricao', 'Descrição', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(3, 1, 'link', 'Link', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(4, 1, 'target', 'Target', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(5, 1, 'pai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(6, 1, 'ordem', 'Ordem', 'smallint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(7, 1, 'fixo', 'Fixo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(8, 1, 'tipomenu', 'Tipo de Menu', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(9, 1, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(10, 1, 'path', 'Path', 'varchar', 250, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(11, 1, 'icon', 'Icon', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(12, 2, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(13, 2, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(14, 3, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(15, 3, 'nome', 'Nome', 'varchar', 150, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(16, 3, 'login', 'Login', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(17, 3, 'email', 'E-Mail', 'varchar', 250, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(18, 3, 'senha', 'Senha', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, 6, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(19, 3, 'permitirexclusao', 'Permitir Exclusão ?', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(20, 3, 'permitirtrocarempresa', 'Permitir Trocar Empresa ?', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(21, 3, 'grupousuario', 'Grupo de Usuário', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(22, 3, 'perfilusuario', 'Perfil de Usuário ?', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(23, 3, 'perfil', 'Perfil', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(24, 3, 'fotoperfil', 'Foto (Perfil)', 'mediumblob', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, 10, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(25, 4, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(26, 4, 'pai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(27, 4, 'tipo', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(28, 4, 'filho', 'Filho', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(29, 4, 'atributo', 'Atributo', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(30, 4, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(31, 4, 'controller', 'Controller', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(32, 4, 'cardinalidade', 'Cadinalidade', 'char', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(33, 5, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(34, 5, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(35, 5, 'descricao', 'Descrição', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(36, 5, 'atributos', 'Atributos', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(37, 6, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(38, 6, 'entidadepai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(39, 6, 'entidadefilho', 'Filho', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(40, 6, 'regpai', 'Pai', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(41, 6, 'regfilho', 'Filho', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(42, 8, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(43, 8, 'nome', 'Nome', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(44, 8, 'projectdiretorio', 'Diretótio Projeto', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(45, 7, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(46, 9, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(47, 9, 'codigo', 'Código', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, 8, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(48, 9, 'nomefantasia', 'Nome Fantasia', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(49, 9, 'razaosocial', 'Razão Social', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(50, 9, 'cnpj', 'CNPJ', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 15, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(51, 9, 'inscricaoestadual', 'Inscrição Estadual', 'varchar', 40, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(52, 9, 'inscricaomunicipal', 'Inscrição Municipal', 'varchar', 40, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(53, 9, 'telefone', 'Telefone', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, 6, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(54, 9, 'email', 'E-Mail', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 12, 0, 6, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(55, 10, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(56, 10, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(57, 10, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(58, 10, 'menu', 'Menu', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(59, 10, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(60, 10, 'permissao', 'Permissão', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(61, 11, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(62, 11, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(63, 11, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(64, 11, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(65, 11, 'sigla', 'Sigla', 'char', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(66, 12, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(67, 12, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(68, 12, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(69, 12, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(70, 12, 'sigla', 'Sigla', 'char', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(71, 12, 'pais', 'País', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(72, 13, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(73, 13, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(74, 13, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(75, 13, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(76, 13, 'bairromapeado', 'Bairro Mapeado', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(77, 13, 'uf', 'UF', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(78, 14, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(79, 14, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(80, 14, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(81, 14, 'nome', 'Nome', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(82, 14, 'cidade', 'Cidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(83, 15, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(84, 15, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(85, 15, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(86, 15, 'bairro', 'Bairro', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(87, 15, 'logradouro', 'Logradouro', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(88, 15, 'numero', 'Número', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(89, 15, 'complemento', 'Complemento', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(90, 15, 'cep', 'CEP', 'varchar', 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 9, 0, 7, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(91, 7, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(92, 7, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(93, 7, 'nome', 'Nome', 'varchar', 150, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(94, 16, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(95, 16, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(96, 16, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(97, 16, 'tags', 'Tags', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(98, 16, 'atributo', 'Atributo', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(99, 16, 'valor', 'Valor', 'varchar', 150, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(100, 16, 'tagpai', 'Tag ( Pai )', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(101, 17, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(102, 17, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(103, 17, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(104, 17, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(105, 17, 'pagina', 'Página', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(106, 17, 'nome', 'Nome', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(107, 17, 'tagpai', 'Tag ( Pai )', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(108, 17, 'texto', 'Texto', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(109, 17, 'ordem', 'Ordem', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(110, 18, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(111, 18, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(112, 19, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(113, 19, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(114, 19, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(115, 19, 'datainicio', 'Data de Inicio', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(116, 19, 'datafinal', 'Data de Final', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(117, 19, 'tipoaviso', 'Tipo de Aviso', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(118, 19, 'mensagem', 'Mensagem', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(119, 20, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(120, 20, 'urlupload', 'URL Upload', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(121, 20, 'urlrequisicoes', 'URL Requisições', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(122, 20, 'urlsaveform', 'URL Salvar Form', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(123, 20, 'urlloadform', 'URL Load Form', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(124, 20, 'urluploadform', 'URL Upload Form', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(125, 20, 'urlpesquisafiltro', 'URL Pesquisa Filtro', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(126, 20, 'urlenderecofiltro', 'URL Endereço Filtro', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(127, 20, 'urlexcluirregistros', 'URL Excluir Registro', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(128, 20, 'urlinicializacao', 'URL Inicialização', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(129, 20, 'urlloading', 'URL Loading', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(130, 20, 'urlloadgradededados', 'URL Grade de Dados', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(131, 20, 'urlrelatorio', 'URL Relatório', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(132, 20, 'urlmenu', 'URL Menu', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(133, 20, 'bancodados', 'Banco de Dados', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(134, 20, 'linguagemprogramacao', 'Linguagem de Programação', 'varchar', 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(135, 20, 'pathfileupload', 'Diretório de Arquivos ( Upload )', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(136, 20, 'pathfileuploadtemp', 'Diretório Temporário de Arquivos ( Upload )', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(137, 20, 'testecharset', 'Teste CharSet', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(138, 20, 'tipogradedados', 'Tipo de Grade de Dados', 'varchar', 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(139, 21, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(140, 21, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(141, 21, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(142, 21, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(143, 21, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(144, 21, 'inserir', 'Inserir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(145, 21, 'excluir', 'Excluir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(146, 21, 'editar', 'Editar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(147, 21, 'visualizar', 'Visualizar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(148, 22, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(149, 22, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(150, 22, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(151, 22, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(152, 22, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(153, 22, 'inserir', 'Inserir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(154, 22, 'excluir', 'Excluir', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(155, 22, 'editar', 'Editar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(156, 22, 'visualizar', 'Visualizar', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(157, 23, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(158, 23, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(159, 23, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(160, 23, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(161, 24, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(162, 24, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(163, 24, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(164, 24, 'funcao', 'Função', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 23, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(165, 24, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(166, 24, 'permissao', 'Permissão', 'tinyint', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(167, 25, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(168, 25, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(169, 25, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(170, 25, 'campo', 'Campo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(171, 25, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(172, 25, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(173, 26, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(174, 26, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(175, 26, 'classe', 'Classe', 'varchar', 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(176, 27, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(177, 27, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(178, 27, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(179, 27, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(180, 27, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(181, 27, 'movimentacao', 'Movimentação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(182, 27, 'exibirbotaoeditar', 'Exibir Botão Editar', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(183, 27, 'exibirbotaoexcluir', 'Exibir Botão Excluir', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(184, 27, 'exibirbotaoemmassa', 'Exibir Botão Em Massa', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(185, 28, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(186, 28, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(187, 28, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(188, 28, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(189, 28, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(190, 28, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(191, 28, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(192, 29, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(193, 29, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(194, 29, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(195, 29, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(196, 29, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(197, 29, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(198, 29, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(199, 29, 'status', 'Status', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(200, 30, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(201, 30, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(202, 30, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(203, 30, 'consulta', 'Consulta', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(204, 30, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(205, 30, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(206, 30, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(207, 30, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(208, 31, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(209, 31, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(210, 31, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(211, 31, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(212, 31, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(213, 31, 'urlpersonalizada', 'URL Personalizada', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(214, 32, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(215, 32, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(216, 32, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(217, 32, 'relatorio', 'Relatório', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(218, 32, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(219, 32, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(220, 32, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(221, 33, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(222, 33, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(223, 33, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(224, 33, 'relatorio', 'Relatório', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(225, 33, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(226, 33, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(227, 33, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(228, 33, 'status', 'Status', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 26, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(229, 34, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(230, 34, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(231, 34, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(232, 34, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(233, 34, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(234, 34, 'motivo', 'Motivo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(235, 34, 'exigirobrigatorio', 'Exigir Obrigátorio', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(236, 34, 'exibirtitulo', 'Exigir Título', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(237, 34, 'exibirvaloresantigos', 'Exigir Valores Antigos', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(238, 35, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(239, 35, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(240, 35, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(241, 35, 'movimentacao', 'Movimentação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(242, 35, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(243, 35, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(244, 36, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(245, 36, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(246, 36, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(247, 36, 'movimentacao', 'Movimentação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(248, 36, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(249, 36, 'operador', 'Operador', 'varchar', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(250, 36, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(251, 37, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(252, 37, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(253, 37, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(254, 37, 'movimentacao', 'Movimentação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(255, 37, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(256, 37, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(257, 37, 'legenda', 'Legenda', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(258, 38, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(259, 38, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(260, 38, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(261, 38, 'movimentacao', 'Movimentação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(262, 38, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(263, 38, 'datahora', 'Data/Hora', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(264, 38, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(265, 38, 'valor', 'Valor', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(266, 38, 'valorold', 'Valor Antigo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(267, 38, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(268, 38, 'motivo', 'Motivo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(269, 38, 'entidademotivo', 'Entidade Motivo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(270, 38, 'observacao', 'Observação', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 14, 0, 12, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(271, 39, 'projeto', 'Projeto', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 4, 0, 1, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(272, 39, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(273, 39, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(274, 39, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(275, 39, 'entidade', 'Entidade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(276, 39, 'atributo', 'Atributo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(277, 39, 'valorid', 'Valor ID', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(278, 39, 'valornew', 'Valor New', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(279, 39, 'datahora', 'Data e Hora', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(280, 39, 'acao', 'Ação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(281, 39, 'registro', 'Registro', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(282, 40, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(283, 40, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(284, 40, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(285, 40, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(286, 41, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(287, 41, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(288, 41, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(289, 41, 'link', 'Link', 'varchar', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(290, 41, 'menu', 'Menu', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(291, 41, 'descricao', 'Descrição', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(292, 41, 'tipo', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(293, 42, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(294, 42, 'nome', 'Nome', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(295, 42, 'descricao', 'Descrição', 'varchar', 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(296, 43, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(297, 43, 'nome', 'Nome', 'varchar', 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(298, 43, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(299, 44, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(300, 44, 'host', 'Host', 'varchar', 255, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(301, 44, 'base', 'Banco', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(302, 44, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, 8, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(303, 44, 'user', 'Usuário', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(304, 44, 'password', 'Senha', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(305, 44, 'type', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 42, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(306, 44, 'projeto', 'Projeto', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(307, 44, 'sgdb', 'SGDB', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 43, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(308, 45, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(309, 45, 'host', 'Host', 'varchar', 255, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(310, 45, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 25, 0, 8, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(311, 45, 'user', 'Usuário', 'varchar', 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(312, 45, 'password', 'Senha', 'varchar', 50, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(313, 45, 'projeto', 'Projeto', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(314, 46, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(315, 46, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(316, 46, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL);
INSERT INTO `td_atributo` (`id`, `entidade`, `nome`, `descricao`, `tipo`, `tamanho`, `nulo`, `omissao`, `collection`, `atributos`, `indice`, `autoincrement`, `comentario`, `exibirgradededados`, `chaveestrangeira`, `tipohtml`, `dataretroativa`, `ordem`, `inicializacao`, `readonly`, `exibirpesquisa`, `tipoinicializacao`, `atributodependencia`, `labelzerocheckbox`, `labelumcheckbox`, `legenda`, `desabilitar`, `criarsomatoriogradededados`, `naoexibircampo`) VALUES
(317, 46, 'local', 'Local', 'varchar', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(318, 46, 'charset', 'CharSet', 'char', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(319, 47, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(320, 47, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(321, 47, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(322, 47, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(323, 48, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(324, 48, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(325, 48, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(326, 48, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(327, 48, 'datahora', 'Data e Hora', 'date', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(328, 48, 'entidade', 'Entidade', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(329, 48, 'atributo', 'Atributo', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(330, 48, 'valorold', 'Valor Antigo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(331, 48, 'valornew', 'Valor Novo', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(332, 48, 'registro', 'Registro', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(333, 48, 'acao', 'Ação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 47, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(334, 48, 'observacao', 'Observação', 'text', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(335, 49, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(336, 49, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(337, 49, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(338, 49, 'datainicio', 'Data de Inicio', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(339, 49, 'datafinal', 'Data de Final', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(340, 49, 'titulo', 'Título', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(341, 49, 'mensagem', 'Mensagem', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(342, 50, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(343, 50, 'host', 'Host', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(344, 50, 'username', 'Nome de Usuário', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(345, 50, 'password', 'Senha', 'varchar', 120, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, 6, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(346, 50, 'issmtp', 'Usar SMTP ?', 'boolean', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(347, 50, 'smtpsecure', 'SMTP Secure', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(348, 50, 'port', 'Porta', 'varchar', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(349, 51, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(350, 51, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(351, 52, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(352, 52, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(353, 53, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(354, 53, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(355, 54, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(356, 54, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(357, 54, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(358, 54, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(359, 54, 'ticket', 'Ticket', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 22, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(360, 55, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(361, 55, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(362, 55, 'tipo', 'Tipo', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 53, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(363, 55, 'prioridade', 'Prioridade', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 52, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(364, 55, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 16, 0, 1, 'session.userid', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(365, 55, 'responsavel', 'Responsável', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 16, 0, 1, 'session.userid', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(366, 55, 'titulo', 'Título', 'varchar', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(367, 55, 'descricao', 'Descrição', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 21, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(368, 55, 'previsaoentrega', 'Previsão de Entrega', 'datetime', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(369, 55, 'datacriacao', 'Data de Criação', 'datetime', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 23, 0, 5, '', 1, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(370, 55, 'anexo', 'Anexo', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, 10, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(371, 55, 'status', 'Status', 'tinyint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Aberto', 'Finalizado', '', NULL, NULL, NULL),
(372, 56, 'projeto', 'Projeto', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, 16, 0, 1, 'session.projeto', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(373, 56, 'empresa', 'Empresa', 'smallint', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 16, 0, 1, 'session.empresa', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(374, 56, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(375, 56, 'descricao', 'Descrição', 'text', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 21, 0, 9, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(376, 56, 'data', 'Data', 'datetime', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 23, 0, 5, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(377, 56, 'anexo', 'Anexo', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 19, 0, 10, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(378, 56, 'ticket', 'Ticket', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 55, 16, 0, 1, '', 0, NULL, 0, NULL, '', '', '', NULL, NULL, NULL),
(379, 56, 'usuario', 'Usuário', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 16, 0, 1, 'session.userid', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(380, 57, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(381, 57, 'ticket', 'Ticket', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 55, 16, 0, 1, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(382, 57, 'ticketinteraction', 'Ticket Interação', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 56, 16, 0, 1, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(383, 57, 'arquivo', 'Arquivo', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(384, 58, 'inativo', 'Inativo', 'boolean', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(385, 58, 'usuario', 'Usuário', 'int', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16, 0, 1, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(386, 58, 'token', 'Token', 'varchar', 256, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(387, 58, 'aparelho', 'Iparelho', 'varchar', 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(388, 59, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(389, 59, 'nome', 'Nome', 'varchar', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(390, 59, 'celular', 'Celular', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, 6, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(391, 60, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(392, 60, 'nome', 'Nome', 'varchar', 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(393, 61, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(394, 61, 'nome', 'Nome', 'varchar', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(395, 62, 'inativo', 'Inativo', 'boolean', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 11, '', 0, NULL, 1, NULL, 'Não', 'Sim', '', NULL, NULL, NULL),
(396, 62, 'dia', 'Dia', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 25, 0, 8, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(397, 62, 'mes', 'Mês', 'int', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, 4, 0, 4, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(398, 62, 'nome', 'Nome', 'varchar', 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 2, '', 0, NULL, 1, NULL, '', '', '', NULL, NULL, NULL),
(399, 63, 'descricao', 'Descrição', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0),
(400, 64, 'titulo', 'Título', 'varchar', 200, 0, NULL, NULL, NULL, '', NULL, NULL, 1, 0, 3, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0),
(401, 64, 'descricao', 'Descrição', 'text', 0, 1, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 14, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0),
(402, 64, 'tipo', 'Tipo', 'smallint', 0, 0, NULL, NULL, NULL, '', NULL, NULL, 1, 63, 4, 0, NULL, '', 0, NULL, 1, 0, '', '', '', 0, 0, 0),
(403, 64, 'status', 'Status', 'boolean', 0, 1, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 7, 0, NULL, '', 0, NULL, 1, 0, 'Não', 'Sim', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_atributofiltro`
--

CREATE TABLE `td_atributofiltro` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `campo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_atributopermissoes`
--

CREATE TABLE `td_atributopermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `atributo` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `inserir` tinyint(4) NOT NULL,
  `excluir` tinyint(4) NOT NULL,
  `editar` tinyint(4) NOT NULL,
  `visualizar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_aviso`
--

CREATE TABLE `td_aviso` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `datainicio` datetime NOT NULL,
  `datafinal` datetime NOT NULL,
  `tipoaviso` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_bairro`
--

CREATE TABLE `td_bairro` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_charset`
--

CREATE TABLE `td_charset` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `local` varchar(500) NOT NULL,
  `charset` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_charset`
--

INSERT INTO `td_charset` (`id`, `projeto`, `empresa`, `inativo`, `local`, `charset`) VALUES
(1, NULL, NULL, NULL, 'Página principal (index)', 'D'),
(2, NULL, NULL, NULL, 'Grade de Dados (load)', 'E'),
(3, NULL, NULL, NULL, 'Formulário (load)', 'N'),
(4, NULL, NULL, NULL, 'Classe Campos', 'N'),
(5, NULL, NULL, NULL, 'MDM Embituido PHP', 'E'),
(6, NULL, NULL, NULL, 'MDM Salvar Form com Submit', 'E'),
(7, NULL, NULL, NULL, 'Gerar HTML no CRUD', 'D'),
(8, NULL, NULL, NULL, 'Javascript Embutido no PHP', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_cidade`
--

CREATE TABLE `td_cidade` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `bairromapeado` tinyint(4) NOT NULL,
  `uf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_comunicado`
--

CREATE TABLE `td_comunicado` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `datainicio` datetime NOT NULL,
  `datafinal` datetime NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_conexoes`
--

CREATE TABLE `td_conexoes` (
  `id` int(11) NOT NULL,
  `host` varchar(60) DEFAULT NULL,
  `base` varchar(60) DEFAULT NULL,
  `porta` varchar(15) DEFAULT NULL,
  `usuario` varchar(60) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `td_conexoes`
--

INSERT INTO `td_conexoes` (`id`, `host`, `base`, `porta`, `usuario`, `senha`, `tipo`) VALUES
(1, 'localhost', 'viamaquinas', '3308', 'admin', 'spespcfc10', 'mysql');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_config`
--

CREATE TABLE `td_config` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `urlupload` text NOT NULL,
  `urlrequisicoes` text NOT NULL,
  `urlsaveform` text NOT NULL,
  `urlloadform` text NOT NULL,
  `urluploadform` text NOT NULL,
  `urlpesquisafiltro` text NOT NULL,
  `urlenderecofiltro` text NOT NULL,
  `urlexcluirregistros` text NOT NULL,
  `urlinicializacao` text NOT NULL,
  `urlloading` text NOT NULL,
  `urlloadgradededados` text NOT NULL,
  `urlrelatorio` text NOT NULL,
  `urlmenu` text NOT NULL,
  `bancodados` varchar(35) NOT NULL,
  `linguagemprogramacao` varchar(35) NOT NULL,
  `pathfileupload` varchar(200) DEFAULT NULL,
  `pathfileuploadtemp` varchar(200) DEFAULT NULL,
  `testecharset` text NOT NULL,
  `tipogradedados` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_config`
--

INSERT INTO `td_config` (`id`, `inativo`, `urlupload`, `urlrequisicoes`, `urlsaveform`, `urlloadform`, `urluploadform`, `urlpesquisafiltro`, `urlenderecofiltro`, `urlexcluirregistros`, `urlinicializacao`, `urlloading`, `urlloadgradededados`, `urlrelatorio`, `urlmenu`, `bancodados`, `linguagemprogramacao`, `pathfileupload`, `pathfileuploadtemp`, `testecharset`, `tipogradedados`) VALUES
(1, NULL, 'index.php?controller=upload', 'index.php?controller=requisicoes', 'index.php?controller=salvarform', 'index.php?controller=loadform', 'index.php?controller=upload', 'index.php', 'index.php', 'index.php?controller=excluirregistros', 'index.php?controller=inicializacao', 'index.php?controller=loading', 'index.php?controller=gradededados', 'index.php?controller=relatorio', 'index.php?controller=menu', 'mysql', 'php', 'projects/1/arquivos', 'projects/1/arquivos/temp', 'á', 'table');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_connectiondatabase`
--

CREATE TABLE `td_connectiondatabase` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `base` varchar(50) NOT NULL,
  `port` varchar(5) DEFAULT NULL,
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `projeto` int(11) DEFAULT NULL,
  `sgdb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_connectionftp`
--

CREATE TABLE `td_connectionftp` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `port` varchar(5) DEFAULT NULL,
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `projeto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_consulta`
--

CREATE TABLE `td_consulta` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `movimentacao` int(11) NOT NULL,
  `exibirbotaoeditar` tinyint(1) DEFAULT NULL,
  `exibirbotaoexcluir` tinyint(1) DEFAULT NULL,
  `exibirbotaoemmassa` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_consultafiltro`
--

CREATE TABLE `td_consultafiltro` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_consultafiltroinicial`
--

CREATE TABLE `td_consultafiltroinicial` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_consultastatus`
--

CREATE TABLE `td_consultastatus` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `consulta` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_database`
--

CREATE TABLE `td_database` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_database`
--

INSERT INTO `td_database` (`id`, `inativo`, `nome`, `descricao`) VALUES
(1, NULL, 'mysql', 'MySQL'),
(2, NULL, 'cache', 'CACHÉ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_diasemana`
--

CREATE TABLE `td_diasemana` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_email`
--

CREATE TABLE `td_email` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `host` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(120) NOT NULL,
  `issmtp` tinyint(1) NOT NULL,
  `smtpsecure` varchar(5) DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_empresa`
--

CREATE TABLE `td_empresa` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nomefantasia` varchar(120) NOT NULL,
  `razaosocial` varchar(200) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `inscricaoestadual` varchar(40) DEFAULT NULL,
  `inscricaomunicipal` varchar(40) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_endereco`
--

CREATE TABLE `td_endereco` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `bairro` varchar(35) NOT NULL,
  `logradouro` varchar(200) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(200) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_entidade`
--

CREATE TABLE `td_entidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `exibirmenuadministracao` tinyint(4) NOT NULL,
  `exibircabecalho` tinyint(4) NOT NULL,
  `pai` int(11) DEFAULT NULL,
  `ncolunas` tinyint(4) NOT NULL,
  `campodescchave` int(11) DEFAULT NULL,
  `atributogeneralizacao` int(11) NOT NULL,
  `exibirlegenda` smallint(6) NOT NULL,
  `onloadjs` text DEFAULT NULL,
  `beforesavejs` text DEFAULT NULL,
  `tipopesquisa` smallint(6) DEFAULT NULL,
  `htmlpagefile` blob DEFAULT NULL,
  `registrounico` tinyint(4) DEFAULT NULL,
  `carregarlibjavascript` tinyint(4) DEFAULT NULL,
  `pacote` varchar(50) DEFAULT NULL,
  `btnimportarcsv` tinyint(1) DEFAULT NULL,
  `btnexportarcsv` tinyint(1) DEFAULT NULL,
  `btnimprimirtodosregistroshtml` tinyint(1) DEFAULT NULL,
  `btnimprimirtodosregistrospdf` tinyint(1) DEFAULT NULL,
  `tipoaba` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_entidade`
--

INSERT INTO `td_entidade` (`id`, `nome`, `descricao`, `exibirmenuadministracao`, `exibircabecalho`, `pai`, `ncolunas`, `campodescchave`, `atributogeneralizacao`, `exibirlegenda`, `onloadjs`, `beforesavejs`, `tipopesquisa`, `htmlpagefile`, `registrounico`, `carregarlibjavascript`, `pacote`, `btnimportarcsv`, `btnexportarcsv`, `btnimprimirtodosregistroshtml`, `btnimprimirtodosregistrospdf`, `tipoaba`) VALUES
(1, 'td_menu', 'Menu', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(2, 'td_grupousuario', 'Grupo de Usuário', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(3, 'td_usuario', 'Usuário', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(4, 'td_relacionamento', 'Relacionamento', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(5, 'td_abas', 'Abas', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(6, 'td_lista', 'Lista', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(7, 'td_pagina', 'Página', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(8, 'td_projeto', 'Projeto', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(9, 'td_empresa', 'Empresa', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(10, 'td_menupermissoes', 'Menu Permissões', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(11, 'td_pais', 'País', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(12, 'td_uf', 'Estado', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(13, 'td_cidade', 'Cidade', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(14, 'td_bairro', 'Bairro', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(15, 'td_endereco', 'Endereço', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(16, 'td_tagsattributes', 'Tags Atributos', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(17, 'td_tags', 'Tags', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(18, 'td_tipoaviso', 'Tipo de Aviso', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(19, 'td_aviso', 'Aviso', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(20, 'td_config', 'Configurações', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(21, 'td_entidadepermissoes', 'Entidade Permissões', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(22, 'td_atributopermissoes', 'Atributo Permissões', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(23, 'td_funcao', 'Função', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(24, 'td_funcaopermissoes', 'Função Permissões', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(25, 'td_atributofiltro', 'Atributo Filtro', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(26, 'td_status', 'Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(27, 'td_consulta', 'Consulta', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(28, 'td_consultafiltro', 'Consulta Filtros', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(29, 'td_consultastatus', 'Consulta Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(30, 'td_consultafiltroinicial', 'Consulta Filtros Iniciais', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(31, 'td_relatorio', 'Relatório', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(32, 'td_relatoriofiltro', 'Relatório Filtros', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(33, 'td_relatoriostatus', 'Relatório Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(34, 'td_movimentacao', 'Movimentação', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(35, 'td_movimentacaoalterar', 'Movimentação Alterar', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(36, 'td_movimentacaostatus', 'Movimentação Status', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(37, 'td_movimentacaohistorico', 'Movimentação Histórico', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(38, 'td_movimentacaohistoricoalteracao', 'Movimentação Histórico Alteração', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(39, 'td_log', 'Log', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(40, 'td_menucrud', 'Menu ( CRUD )', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(41, 'td_menucruditens', 'Menu CRUD Itens', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(42, 'td_typeconnectiondatabase', 'Tipo de Conexão Banco de Dados', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(43, 'td_database', 'Banco de Dados', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(44, 'td_connectiondatabase', 'Conexão Base de Dados', 0, 0, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(45, 'td_connectionftp', 'Conexão com FTP', 0, 0, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(46, 'td_charset', 'CharSet', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(47, 'td_historicoacao', 'Ação  no Histórico', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(48, 'td_historicoatividade', 'Histórico de Atividade', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(49, 'td_comunicado', 'Comunicado', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(50, 'td_email', 'E-Mail', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(51, 'td_ticketstatus', 'Status', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(52, 'td_ticketprioridade', 'Prioridade', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(53, 'td_tickettipo', 'Tipo', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(54, 'td_ticketseguidores', 'Seguidores', 0, 0, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(55, 'td_ticket', 'Ticket', 1, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(56, 'td_ticketinteraction', 'Ticket Interação', 0, 0, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(57, 'td_ticketanexo', 'Anexos', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(58, 'td_aplicativo_dispositivo', 'Dispositivo', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(59, 'td_aplicativo_usuario', 'Usuário', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(60, 'td_mes', 'Mês', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(61, 'td_diasemana', 'Dia Semana', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(62, 'td_geral_feriado', 'Feriado', 0, 1, NULL, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(63, 'td_tipoatividade', 'Tipo de Atividade', 0, 1, NULL, 1, 399, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs'),
(64, 'td_atividade', 'Atividade', 0, 1, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, 'tabs');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_entidadepermissoes`
--

CREATE TABLE `td_entidadepermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `inserir` tinyint(4) NOT NULL,
  `excluir` tinyint(4) NOT NULL,
  `editar` tinyint(4) NOT NULL,
  `visualizar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_funcao`
--

CREATE TABLE `td_funcao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_funcaopermissoes`
--

CREATE TABLE `td_funcaopermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `funcao` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_geral_feriado`
--

CREATE TABLE `td_geral_feriado` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_grupousuario`
--

CREATE TABLE `td_grupousuario` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_grupousuario`
--

INSERT INTO `td_grupousuario` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Desenvolvimento'),
(2, NULL, 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_historicoacao`
--

CREATE TABLE `td_historicoacao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_historicoatividade`
--

CREATE TABLE `td_historicoatividade` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `datahora` date NOT NULL,
  `entidade` int(11) DEFAULT NULL,
  `atributo` int(11) DEFAULT NULL,
  `valorold` varchar(200) NOT NULL,
  `valornew` varchar(200) NOT NULL,
  `registro` int(11) NOT NULL,
  `acao` int(11) NOT NULL,
  `observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_instalacao`
--

CREATE TABLE `td_instalacao` (
  `id` int(11) NOT NULL,
  `bancodedadoscriado` tinyint(4) DEFAULT NULL,
  `sistemainstalado` tinyint(4) DEFAULT NULL,
  `pacoteconfigurado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `td_instalacao`
--

INSERT INTO `td_instalacao` (`id`, `bancodedadoscriado`, `sistemainstalado`, `pacoteconfigurado`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_lista`
--

CREATE TABLE `td_lista` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidadepai` int(11) NOT NULL,
  `entidadefilho` int(11) NOT NULL,
  `regpai` int(11) NOT NULL,
  `regfilho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_log`
--

CREATE TABLE `td_log` (
  `id` int(11) NOT NULL,
  `projeto` int(11) NOT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `entidade` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `valorid` varchar(200) NOT NULL,
  `valornew` varchar(200) DEFAULT NULL,
  `datahora` datetime NOT NULL,
  `acao` int(11) NOT NULL,
  `registro` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_menu`
--

CREATE TABLE `td_menu` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(120) NOT NULL,
  `link` varchar(200) NOT NULL,
  `target` varchar(15) DEFAULT NULL,
  `pai` int(11) NOT NULL,
  `ordem` smallint(6) NOT NULL,
  `fixo` varchar(200) NOT NULL,
  `tipomenu` varchar(35) NOT NULL,
  `entidade` int(11) NOT NULL,
  `path` varchar(250) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_menu`
--

INSERT INTO `td_menu` (`id`, `inativo`, `descricao`, `link`, `target`, `pai`, `ordem`, `fixo`, `tipomenu`, `entidade`, `path`, `icon`) VALUES
(1, NULL, 'Administração', '#', '', 0, 1, 'adm', '1', 0, NULL, NULL),
(2, NULL, 'Usuário', 'files/cadastro/3/td_usuario.html', '', 1, 1, '', '1', 3, NULL, NULL),
(3, NULL, 'Menu', 'files/cadastro/1/td_menu.html', '', 1, 2, '', '1', 1, NULL, NULL),
(4, NULL, 'Projeto', 'files/cadastro/8/td_projeto.html', '', 1, 3, '', '1', 8, NULL, NULL),
(5, NULL, 'Empresa', 'files/cadastro/9/td_empresa.html', '', 1, 4, '', '1', 9, NULL, NULL),
(6, NULL, 'Aviso', 'files/cadastro/19/td_aviso.html', '', 1, 5, '', '1', 19, NULL, NULL),
(7, NULL, 'Grupo de Usuário', 'files/cadastro/2/td_grupousuario.html', '', 1, 6, '', '1', 2, NULL, NULL),
(8, NULL, 'Ticket', '#', '', 0, 2, 'ticket', '1', 0, NULL, NULL),
(9, NULL, 'Status', 'files/cadastro/51/td_ticketstatus.html', '', 8, 1, '', '1', 51, NULL, NULL),
(10, NULL, 'Prioridade', 'files/cadastro/52/td_ticketprioridade.html', '', 8, 2, '', '1', 52, NULL, NULL),
(11, NULL, 'Tipo', 'files/cadastro/53/td_tickettipo.html', '', 8, 3, '', '1', 53, NULL, NULL),
(12, NULL, 'Ticket', 'files/cadastro/55/td_ticket.html', '', 8, 4, '', '1', 55, NULL, NULL),
(13, NULL, 'Ticket Interação', 'files/cadastro/56/td_ticketinteraction.html', '', 8, 5, '', '1', 56, NULL, NULL),
(14, NULL, 'Seguidores', 'files/cadastro/54/td_ticketseguidores.html', '', 8, 6, '', '1', 54, NULL, NULL),
(15, NULL, 'Compilar', 'index.php?controller=compilar', '', 1, 7, '', 'personalizado', 0, NULL, NULL),
(16, NULL, 'Teste', '#', NULL, 0, 3, '', 'raiz', 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_menucrud`
--

CREATE TABLE `td_menucrud` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_menucruditens`
--

CREATE TABLE `td_menucruditens` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `link` varchar(500) NOT NULL,
  `menu` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_menupermissoes`
--

CREATE TABLE `td_menupermissoes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `menu` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_menupermissoes`
--

INSERT INTO `td_menupermissoes` (`id`, `projeto`, `empresa`, `inativo`, `menu`, `usuario`, `permissao`) VALUES
(1, 1, 1, NULL, 1, 1, 1),
(2, 1, 1, NULL, 2, 1, 1),
(3, 1, 1, NULL, 3, 1, 1),
(4, 1, 1, NULL, 4, 1, 1),
(5, 1, 1, NULL, 5, 1, 1),
(6, 1, 1, NULL, 6, 1, 1),
(7, 1, 1, NULL, 7, 1, 1),
(8, 1, 1, NULL, 8, 1, 1),
(9, 1, 1, NULL, 9, 1, 1),
(10, 1, NULL, NULL, 16, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_mes`
--

CREATE TABLE `td_mes` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_movimentacao`
--

CREATE TABLE `td_movimentacao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `exigirobrigatorio` tinyint(4) DEFAULT NULL,
  `exibirtitulo` tinyint(4) DEFAULT NULL,
  `exibirvaloresantigos` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_movimentacaoalterar`
--

CREATE TABLE `td_movimentacaoalterar` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_movimentacaohistorico`
--

CREATE TABLE `td_movimentacaohistorico` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `entidade` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_movimentacaohistoricoalteracao`
--

CREATE TABLE `td_movimentacaohistoricoalteracao` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `datahora` datetime NOT NULL,
  `atributo` int(11) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `valorold` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `entidademotivo` int(11) NOT NULL,
  `observacao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_movimentacaostatus`
--

CREATE TABLE `td_movimentacaostatus` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `movimentacao` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_pagina`
--

CREATE TABLE `td_pagina` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_pais`
--

CREATE TABLE `td_pais` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_projeto`
--

CREATE TABLE `td_projeto` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(120) NOT NULL,
  `projectdiretorio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_projeto`
--

INSERT INTO `td_projeto` (`id`, `inativo`, `nome`, `projectdiretorio`) VALUES
(1, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_relacionamento`
--

CREATE TABLE `td_relacionamento` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `pai` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `filho` int(11) NOT NULL,
  `atributo` int(11) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `controller` text DEFAULT NULL,
  `cardinalidade` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_relacionamento`
--

INSERT INTO `td_relacionamento` (`id`, `inativo`, `pai`, `tipo`, `filho`, `atributo`, `descricao`, `controller`, `cardinalidade`) VALUES
(1, NULL, 9, 1, 15, 0, 'Endereço', NULL, '11'),
(2, NULL, 8, 2, 44, 306, 'Banco de Dados', NULL, '1N'),
(3, NULL, 8, 1, 45, 313, 'FTP', NULL, '11'),
(4, NULL, 55, 6, 56, 378, 'Interação', NULL, '1N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_relatorio`
--

CREATE TABLE `td_relatorio` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `entidade` int(11) NOT NULL,
  `urlpersonalizada` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_relatoriofiltro`
--

CREATE TABLE `td_relatoriofiltro` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `relatorio` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `legenda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_relatoriostatus`
--

CREATE TABLE `td_relatoriostatus` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `relatorio` int(11) NOT NULL,
  `atributo` int(11) NOT NULL,
  `operador` varchar(5) NOT NULL,
  `valor` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_status`
--

CREATE TABLE `td_status` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `classe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_status`
--

INSERT INTO `td_status` (`id`, `inativo`, `descricao`, `classe`) VALUES
(1, NULL, 'Ativo', 'td-status-ativo'),
(2, NULL, 'Sucesso', 'td-status-sucesso'),
(3, NULL, 'Alerta', 'td-status-alerta'),
(4, NULL, 'Erro', 'td-status-erro'),
(5, NULL, 'Informativo', 'td-status-info');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tags`
--

CREATE TABLE `td_tags` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `entidade` int(11) NOT NULL,
  `pagina` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tagpai` int(11) NOT NULL,
  `texto` varchar(200) NOT NULL,
  `ordem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tagsattributes`
--

CREATE TABLE `td_tagsattributes` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `tags` int(11) NOT NULL,
  `atributo` varchar(50) NOT NULL,
  `valor` varchar(150) NOT NULL,
  `tagpai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_ticket`
--

CREATE TABLE `td_ticket` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `prioridade` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `responsavel` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `previsaoentrega` datetime DEFAULT NULL,
  `datacriacao` datetime NOT NULL,
  `anexo` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_ticketanexo`
--

CREATE TABLE `td_ticketanexo` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `ticket` int(11) NOT NULL,
  `ticketinteraction` int(11) NOT NULL,
  `arquivo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_ticketinteraction`
--

CREATE TABLE `td_ticketinteraction` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` text NOT NULL,
  `data` datetime DEFAULT NULL,
  `anexo` varchar(200) DEFAULT NULL,
  `ticket` int(11) DEFAULT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_ticketprioridade`
--

CREATE TABLE `td_ticketprioridade` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_ticketprioridade`
--

INSERT INTO `td_ticketprioridade` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Alta'),
(2, NULL, 'Média'),
(3, NULL, 'Baixa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_ticketseguidores`
--

CREATE TABLE `td_ticketseguidores` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_ticketstatus`
--

CREATE TABLE `td_ticketstatus` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_ticketstatus`
--

INSERT INTO `td_ticketstatus` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Abrir'),
(2, NULL, 'Aguardar'),
(3, NULL, 'Interagir'),
(4, NULL, 'Finalizar'),
(5, NULL, 'Reabrir');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tickettipo`
--

CREATE TABLE `td_tickettipo` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tipoatividade`
--

CREATE TABLE `td_tipoatividade` (
  `id` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_tipoatividade`
--

INSERT INTO `td_tipoatividade` (`id`, `descricao`) VALUES
(1, 'Desenvolvimento'),
(2, 'Atendimento'),
(3, 'Manutenção'),
(4, 'Manutenção Urgente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_tipoaviso`
--

CREATE TABLE `td_tipoaviso` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_tipoaviso`
--

INSERT INTO `td_tipoaviso` (`id`, `inativo`, `descricao`) VALUES
(1, NULL, 'Sucesso'),
(2, NULL, 'Alerta'),
(3, NULL, 'Erro'),
(4, NULL, 'Informativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_typeconnectiondatabase`
--

CREATE TABLE `td_typeconnectiondatabase` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_typeconnectiondatabase`
--

INSERT INTO `td_typeconnectiondatabase` (`id`, `inativo`, `nome`, `descricao`) VALUES
(1, NULL, 'desenv', 'Desenvolvimento'),
(2, NULL, 'teste', 'Testes'),
(3, NULL, 'homolog', 'Homologação'),
(4, NULL, 'producao', 'Produção');

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_uf`
--

CREATE TABLE `td_uf` (
  `id` int(11) NOT NULL,
  `projeto` smallint(6) DEFAULT NULL,
  `empresa` smallint(6) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `sigla` char(2) NOT NULL,
  `pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `td_usuario`
--

CREATE TABLE `td_usuario` (
  `id` int(11) NOT NULL,
  `inativo` tinyint(1) DEFAULT NULL,
  `nome` varchar(150) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `senha` varchar(50) NOT NULL,
  `permitirexclusao` tinyint(4) DEFAULT NULL,
  `permitirtrocarempresa` tinyint(4) DEFAULT NULL,
  `grupousuario` int(11) DEFAULT NULL,
  `perfilusuario` tinyint(4) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `fotoperfil` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `td_usuario`
--

INSERT INTO `td_usuario` (`id`, `inativo`, `nome`, `login`, `email`, `senha`, `permitirexclusao`, `permitirtrocarempresa`, `grupousuario`, `perfilusuario`, `perfil`, `fotoperfil`) VALUES
(1, NULL, 'ROOT', 'root', 'root@localhost', '63a9f0ea7bb98050796b649e85481845', 1, 1, 1, 0, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `td_abas`
--
ALTER TABLE `td_abas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_aplicativo_dispositivo`
--
ALTER TABLE `td_aplicativo_dispositivo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_aplicativo_usuario`
--
ALTER TABLE `td_aplicativo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_atividade`
--
ALTER TABLE `td_atividade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_atributo`
--
ALTER TABLE `td_atributo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_atributofiltro`
--
ALTER TABLE `td_atributofiltro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_atributopermissoes`
--
ALTER TABLE `td_atributopermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_aviso`
--
ALTER TABLE `td_aviso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_bairro`
--
ALTER TABLE `td_bairro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_charset`
--
ALTER TABLE `td_charset`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_cidade`
--
ALTER TABLE `td_cidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_comunicado`
--
ALTER TABLE `td_comunicado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_conexoes`
--
ALTER TABLE `td_conexoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_config`
--
ALTER TABLE `td_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_connectiondatabase`
--
ALTER TABLE `td_connectiondatabase`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_connectionftp`
--
ALTER TABLE `td_connectionftp`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_consulta`
--
ALTER TABLE `td_consulta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_consultafiltro`
--
ALTER TABLE `td_consultafiltro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_consultafiltroinicial`
--
ALTER TABLE `td_consultafiltroinicial`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_consultastatus`
--
ALTER TABLE `td_consultastatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_database`
--
ALTER TABLE `td_database`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_diasemana`
--
ALTER TABLE `td_diasemana`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_email`
--
ALTER TABLE `td_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_empresa`
--
ALTER TABLE `td_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_endereco`
--
ALTER TABLE `td_endereco`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_entidade`
--
ALTER TABLE `td_entidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_entidadepermissoes`
--
ALTER TABLE `td_entidadepermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_funcao`
--
ALTER TABLE `td_funcao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_funcaopermissoes`
--
ALTER TABLE `td_funcaopermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_geral_feriado`
--
ALTER TABLE `td_geral_feriado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_grupousuario`
--
ALTER TABLE `td_grupousuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_historicoacao`
--
ALTER TABLE `td_historicoacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_historicoatividade`
--
ALTER TABLE `td_historicoatividade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_instalacao`
--
ALTER TABLE `td_instalacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_lista`
--
ALTER TABLE `td_lista`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_log`
--
ALTER TABLE `td_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_menu`
--
ALTER TABLE `td_menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_menucrud`
--
ALTER TABLE `td_menucrud`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_menucruditens`
--
ALTER TABLE `td_menucruditens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_menupermissoes`
--
ALTER TABLE `td_menupermissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_mes`
--
ALTER TABLE `td_mes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_movimentacao`
--
ALTER TABLE `td_movimentacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_movimentacaoalterar`
--
ALTER TABLE `td_movimentacaoalterar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_movimentacaohistorico`
--
ALTER TABLE `td_movimentacaohistorico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_movimentacaohistoricoalteracao`
--
ALTER TABLE `td_movimentacaohistoricoalteracao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_movimentacaostatus`
--
ALTER TABLE `td_movimentacaostatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_pagina`
--
ALTER TABLE `td_pagina`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_pais`
--
ALTER TABLE `td_pais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_projeto`
--
ALTER TABLE `td_projeto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_relacionamento`
--
ALTER TABLE `td_relacionamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_relatorio`
--
ALTER TABLE `td_relatorio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_relatoriofiltro`
--
ALTER TABLE `td_relatoriofiltro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_relatoriostatus`
--
ALTER TABLE `td_relatoriostatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_status`
--
ALTER TABLE `td_status`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_tags`
--
ALTER TABLE `td_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_tagsattributes`
--
ALTER TABLE `td_tagsattributes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_ticket`
--
ALTER TABLE `td_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_ticketanexo`
--
ALTER TABLE `td_ticketanexo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_ticketinteraction`
--
ALTER TABLE `td_ticketinteraction`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_ticketprioridade`
--
ALTER TABLE `td_ticketprioridade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_ticketseguidores`
--
ALTER TABLE `td_ticketseguidores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_ticketstatus`
--
ALTER TABLE `td_ticketstatus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_tickettipo`
--
ALTER TABLE `td_tickettipo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_tipoatividade`
--
ALTER TABLE `td_tipoatividade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_tipoaviso`
--
ALTER TABLE `td_tipoaviso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_typeconnectiondatabase`
--
ALTER TABLE `td_typeconnectiondatabase`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_uf`
--
ALTER TABLE `td_uf`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `td_usuario`
--
ALTER TABLE `td_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `td_menupermissoes`
--
ALTER TABLE `td_menupermissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
