-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 21, 2022 alle 11:07
-- Versione del server: 10.4.25-MariaDB
-- Versione PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ottica`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `occhiale`
--

CREATE TABLE `occhiale` (
  `id` int(11) NOT NULL,
  `descrizione` varchar(255) NOT NULL,
  `materiale` varchar(255) NOT NULL,
  `tipologia` varchar(255) NOT NULL,
  `genere` varchar(255) NOT NULL,
  `colore` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `prezzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id`, `email`, `password`) VALUES
(1, 'danielemaledetti@gmail.com', 'admin\r\n');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `occhiale`
--
ALTER TABLE `occhiale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materiale` (`materiale`),
  ADD KEY `tipologia` (`tipologia`),
  ADD KEY `genere` (`genere`),
  ADD KEY `colore` (`colore`),
  ADD KEY `marca` (`marca`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `occhiale`
--
ALTER TABLE `occhiale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
