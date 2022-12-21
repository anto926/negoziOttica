-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 21, 2022 alle 12:59
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
  `marca` varchar(255) NOT NULL,
  `modello` varchar(255) NOT NULL,
  `descrizione` text NOT NULL,
  `materiale` varchar(255) NOT NULL,
  `tipologia` varchar(255) NOT NULL,
  `genere` varchar(255) NOT NULL,
  `colore` varchar(255) NOT NULL,
  `prezzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `occhiale`
--

INSERT INTO `occhiale` (`id`, `marca`, `modello`, `descrizione`, `materiale`, `tipologia`, `genere`, `colore`, `prezzo`) VALUES
(1, 'Burberry', 'BE1373 HUGO', 'Il brand fondato nel 1856 è diventato protagonista della storia inglese, accompagnando le grandi imprese dei sudditi di sua Maestà con classe ed eleganza. Burberry in oltre 150 anni di attività ha mantenuto inalterate queste caratteristiche, che si esprimono appieno nelle collezioni di occhiali, linee e forme innovative, che mantengono inalterato l’antico prestigio.', 'Metallo', 'Da vista', 'Da uomo', 'Nero', 230),
(2, 'Oakley', 'OX3217 SOCKET 5.0', 'Oakley è il marchio di occhiali leader mondiale nel segmento sportivo, unico ed inimitabile grazie al mix di tecnologia e design di tutti i suoi prodotti.', 'Metallo', 'Da vista', 'Da uomo', 'Marrone', 155),
(3, 'Ray-Ban', 'RB3694V JIM OPTICS', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.', 'Metallo', 'Da vista', 'Da uomo', 'Argento', 145),
(4, 'Ray-Ban', 'RB6498 OPTICS', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.', 'Metallo', 'Da vista', 'Unisex', 'Oro', 145),
(5, 'Emporio Armani', 'EA1087', 'Creato agli inizi degli anni \'80 da Giorgio Armani, il marchio soddisfa le esigenze di una clientela alla moda che ama il DNA Armani. La cifra stilistica di Armani viene rivisitata in uno stile fresco e moderno, con design innovativi e colori di tendenza che si distinguono per linee, forme e materiali contemporanei.', 'Metallo', 'Da vista', 'Da donna', 'Argento', 140),
(6, 'Ray-Ban', 'RB6267I', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.', 'Metallo', 'Da vista', 'Unisex', 'Rosa', 79),
(7, 'Oliver Peoples', 'OV1313 ÉLIANE', 'Oliver Peoples è un marchio Hollywoodiano caratterizzato da linee semplici e accattivanti con una vastissima varietà di stili. L\'utilizzo di materiali di altissimo livello è una caratteristica che rende questo marchio un \"must have\".', 'Metallo', 'Da vista', 'Da donna', 'Oro', 315),
(8, 'Bvlgari', 'BV2248B', 'Il marchio si colloca nel segmento più alto dell’occhialeria-gioiello grazie all’artigianalità italiana, al design audace e all’utilizzo di materiali pregiati quali oro e pietre colorate, oltre ai cristalli, applicati su creazioni esclusive e senza tempo.', 'Metallo', 'Da vista', 'Da donna', 'Rosa', 350),
(9, 'Oliver Peoples', 'OV1312 HOLENDER', 'Oliver Peoples è un marchio Hollywoodiano caratterizzato da linee semplici e accattivanti con una vastissima varietà di stili. L\'utilizzo di materiali di altissimo livello è una caratteristica che rende questo marchio un \"must have\".', 'Metallo', 'Da vista', 'Unisex', 'Nero', 345),
(10, 'XYLOMIA', 'GSJDGDSF6213', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da uomo', 'Multicolore', 200),
(11, 'XYLOMIA', 'SHFJHDG354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Unisex', 'Multicolore', 300),
(12, 'XYLOMIA', '6GAJF3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da donna', 'Rosso', 250),
(13, 'XYLOMIA', 'AJGF734R', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da donna', 'Rosso', 321),
(14, 'XYLOMIA', 'FA4JF34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da uomo', 'Multicolore', 299),
(15, 'XYLOMIA', 'FGF7123', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da uomo', 'Multicolore', 260),
(16, 'XYLOMIA', 'GOEGET65', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da uomo', 'Blu', 350),
(17, 'XYLOMIA', 'WTRWERY8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da uomo', 'Marrone', 370),
(18, 'XYLOMIA', 'EGJAROT5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus tellus vel sem sodales, id accumsan mi pretium. Proin eu augue ullamcorper, pellentesque risus scelerisque, scelerisque nunc. Sed lobortis mollis tortor, vitae porta velit commodo eget. Proin ultricies interdum ipsum, non interdum quam consequat mattis. Nullam at pellentesque libero. Sed pellentesque porta sem sit amet feugiat. Pellentesque ut sem sed orci viverra pharetra. Quisque quis ipsum ligula. Ut fringilla eros et pharetra vestibulum. Aenean a congue ipsum. In hac habitasse platea dictumst. Sed quis erat nunc. Etiam non euismod tortor. Phasellus aliquam scelerisque elit, at porttitor nibh sodales in. Ut sed ullamcorper neque.', 'Legno', 'Da vista', 'Da donna', 'Marrone', 350);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
