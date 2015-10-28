-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 28-Out-2015 às 23:17
-- Versão do servidor: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `events-service`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE IF NOT EXISTS `events` (
`id` bigint(20) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `author`, `date_time`, `description`, `location`, `title`) VALUES
(7, 'Bruno Ferrari', '2015-10-19 00:02:29', 'test event modified', 'Ocean av. Miami beach. Miami, FL', 'TEST-MODIFICADO'),
(8, 'Bruno Ferrari', '2015-10-31 00:00:00', 'test event modified', 'Avenida Paulista, São Paulo, Brazil', 'TEST-MODIFICADO'),
(9, 'Bruno Ferrari', '2015-10-19 00:02:29', 'test event modified', 'Ocean av. Miami beach. Miami, FL', 'TEST-MODIFICADOaeeee'),
(10, 'Bruno Ferrari', '2015-10-19 00:02:29', 'test event modified', 'Ocean av. Miami beach. Miami, FL', 'TEST-MODIFICADOUGAUGAUGA'),
(11, 'Default', '2015-10-24 23:25:31', 'asdasdasd', 'asdasdasd', 'asdasd'),
(12, 'Default', '2015-10-24 23:29:30', 'dasdasdasd', 'asdasdas', 'adasd'),
(14, 'Default', '2015-10-25 01:11:16', 'asdasdasd', 'sasdasdasd', 'asdasda'),
(15, 'Default', '2015-10-25 01:11:50', 'soh um teste pra ver se vai funcionar essa bagaca', 'Ourinhos - SP', 'to aqui testando...'),
(16, 'Default', '2015-10-25 01:13:13', 'soh um teste denovo', 'Ourinhos', 'to aqui testando denovo...'),
(17, 'Default', '3915-12-12 02:00:00', 'Ola datepicker', 'Sao Paulo', 'testando o datepicker'),
(18, 'Default', '3917-01-05 02:00:00', 'sadasdasdasdasdasdasdasdasdasdasdasdasxczxczxc', 'qwerty', 'qwerty'),
(19, 'Default', '3915-10-31 00:00:00', 'sera que vai funcionar, venha testar conosco!!!!!', 'Ourinhos', 'testando tudo denovo'),
(20, 'Default', '3915-10-25 03:03:00', 'teste', 'asdasdasd', 'teste1'),
(21, 'Default', '3915-10-25 04:06:00', 'asdasd', 'asdasd', 'dasda'),
(22, 'Default', '3915-10-25 05:25:00', 'qweqwe', 'qweqwe', 'qweqwe'),
(23, 'Bruno Ferrari', '2015-10-29 00:00:00', 'KALJDKLAJSDLKAJSDLKJASDLKSAJD', 'Ourinhos', 'Angular rocks!'),
(24, 'Bruno Ferrari', '2015-10-30 00:00:00', ';askdlkasd;lkasdl;kas;ldkal;ksdasd', 'Sao Paulo', 'tentando inserir denovo'),
(25, 'teste', '2015-10-31 00:00:00', 'asdasdasdasdasdasd', 'owieowoai', 'lalsdkalskdlaskdlask'),
(26, 'Bruno Ferrari', '2015-10-28 00:00:00', 'teste testeteste testeteste testeteste testeteste testeteste testeteste testeteste testeteste testeteste testeteste teste teste testeteste testeteste testeteste testeteste testeteste testeteste testeteste testeteste teste', 'Ourinhos - SP', 'Testando'),
(27, 'asdasd', '2015-10-29 00:00:00', 'asdasdas', 'asdadas', 'Asdasdasdas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
