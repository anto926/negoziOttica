-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 05, 2023 alle 11:46
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
  `marca` varchar(255) CHARACTER SET utf8 NOT NULL,
  `modello` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descrizione` text NOT NULL,
  `materiale` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tipologia` varchar(255) CHARACTER SET utf8 NOT NULL,
  `genere` varchar(255) CHARACTER SET utf8 NOT NULL,
  `colore` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prezzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `occhiale`
--

INSERT INTO `occhiale` (`id`, `marca`, `modello`, `descrizione`, `materiale`, `tipologia`, `genere`, `colore`, `prezzo`) VALUES
(1, 'Ray-Ban', 'RB6275', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dellocchialeria da sole e da vista.\r\n\r\nScegli il tuo stile Ray-Ban e scopri il modello RB6275 Optics\r\n\r\nGenere: unisex\r\nColore della montatura: gunmetal\r\nMateriale della montatura: metallo\r\nForma: rettangolare\r\nTipo di montatura: cerchio intero\r\nColore delle lenti: trasparente\r\nTrattamenti: lente demo\r\n\r\nVestibilità e caratteristiche della montatura\r\n\r\nVestibilità stretta.\r\n', 'Metallo', 'Da uomo', 'Da uomo', 'Nero', 155),
(2, 'Persol', 'PO3263V', 'Persol è il marchio leggendario degli occhiali Made in Italy. Il suo nome evocativo, derivato da \"per il sole\", identifica un occhiale che eredita e conserva una cultura di eccellenza, di manifattura artigianale e di alchimia perfetta tra estetica e tecnologia.\n\nScegli il tuo stile Persol e scopri il modello PO3263V\n\nGenere: unisex\nColore della montatura: nero\nMateriale della montatura: acetato\nForma: squadrata\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.', 'plastica', 'da vista', 'unisex', 'nero', 210),
(3, 'Ray-Ban', 'RB2180V', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.\n\nScegli il tuo stile Ray-Ban e scopri il modello RB2180V Optics\n\nGenere: unisex\nColore della montatura: havana scuro\nMateriale della montatura: acetato\nForma: phantos\nTipo di montatura: cerchio intero\nColore delle lenti: trasparente\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'plastica', 'da vista', 'unisex', 'multicolore', 135),
(4, 'Persol', 'PO3007V', 'Persol è il marchio leggendario degli occhiali Made in Italy. Il suo nome evocativo, derivato da “per il sole”, identifica un occhiale che eredita e conserva una cultura di eccellenza, di manifattura artigianale e di alchimia perfetta tra estetica e tecnologia.\r\n\r\nScegli il tuo stile Persol e scopri il modello PO3007V\r\n\r\nGenere: uomo\r\nColore della montatura: nero\r\nMateriale della montatura: acetato\r\nForma: squadrata\r\nTipo di montatura: cerchio intero\r\nColore delle lenti: lente demo\r\nTrattamenti: lente demo\r\n\r\nVestibilità e caratteristiche della montatura\r\n\r\nVestibilità stretta.\r\n', 'plastica', 'da vista', 'uomo', 'nero', 200),
(5, 'Armani', 'EA3193', 'Creato agli inizi degli anni \'80 da Giorgio Armani, il marchio soddisfa le esigenze di una clientela alla moda che ama il DNA Armani. La cifra stilistica di Armani viene rivisitata in uno stile fresco e moderno, con design innovativi e colori di tendenza che si distinguono per linee, forme e materiali contemporanei.\n\nScegli il tuo stile Emporio Armani e scopri il modello EA3193\n\nGenere: donna\nColore della montatura: rosa lucido havana, rosa\nMateriale della montatura: acetato\nForma: cat eye\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'plastica', 'da vista', 'donna', 'rosa', 130),
(6, 'Persol', 'PO2462V', 'Persol è il marchio leggendario degli occhiali Made in Italy. Il suo nome evocativo, derivato da “per il sole”, identifica un occhiale che eredita e conserva una cultura di eccellenza, di manifattura artigianale e di alchimia perfetta tra estetica e tecnologia.\n\nScegli il tuo stile Persol e scopri il modello PO2462V\n\nGenere: unisex\nColore della montatura: oro-havana, oro\nMateriale della montatura: metallo\nForma: rettangolare\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'metallo', 'da vista', 'unisex', 'oro', 221),
(7, 'Dolce&Gabbana', 'DG5074', 'Dolce & Gabbana è un marchio del lusso famoso per la sua originalità stilistica unita all’eccellente qualità delle sue creazioni. Piena espressione di un mix esplosivo di sensazioni, tradizione e cultura mediterranea.\n\nScegli il tuo stile Dolce&Gabbana e scopri il modello DG5074\n\nGenere: uomo\nColore della montatura: nero opaco, nero\nMateriale della montatura: iniettato\nForma: phantos\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'plastica', 'da vista', 'uomo', 'nero', 160),
(8, 'Dolce&Gabbana', 'DG1322', 'Dolce & Gabbana è un marchio del lusso famoso per la sua originalità stilistica unita all’eccellente qualità delle sue creazioni. Piena espressione di un mix esplosivo di sensazioni, tradizione e cultura mediterranea.\n\nScegli il tuo stile Dolce&Gabbana e scopri il modello DG1322\n\nGenere: donna\nColore della montatura: oro/blu, oro\nMateriale della montatura: metallo\nForma: phantos\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità stretta.\n', 'metallo', 'da vista', 'donna', 'oro', 210),
(9, 'Dolce&Gabbana', 'DG5051', 'Dolce & Gabbana è un marchio del lusso famoso per la sua originalità stilistica unita all\'eccellente qualità delle sue creazioni. Piena espressione di un mix esplosivo di sensazioni, tradizione e cultura mediterranea.\n\nScegli il tuo stile Dolce&Gabbana e scopri il modello DG5051\n\nGenere: donna\nColore della montatura: grigio trasparente, oro\nMateriale della montatura: iniettato\nForma: rotonda\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'plastica', 'da vista', 'donna', 'multicolore', 210),
(10, 'Armani', 'AR7167', 'Il Brand Giorgio Armani nasce nel 1975 e si distingue per l’eccellenza della realizzazione, l’estrema cura dei dettagli, la purezza delle linee e l’uso di materiali di qualità superiore.\n\nScegli il tuo stile Giorgio Armani e scopri il modello AR7167\n\nGenere: uomo\nColore della montatura: nero, gunmetal opaco\nMateriale della montatura: iniettato\nForma: squadrata\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità stretta.\n', 'plastica', 'da vista', 'uomo', 'nero', 220),
(11, 'Ray-Ban', 'RB7216', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.\r\n\r\nScegli il tuo stile Ray-Ban e scopri il modello RB7216 NEW CLUBMASTER OPTICS\r\n\r\nGenere: unisex\r\nColore della montatura: nero su argento, argento\r\nMateriale della montatura: iniettato\r\nForma: squadrata\r\nTipo di montatura: cerchio intero\r\nColore delle lenti: lente demo\r\nTrattamenti: lente demo\r\n\r\nVestibilità e caratteristiche della montatura\r\n\r\nVestibilità standard.\r\n', 'plastica', 'da vista', 'unisex', 'nero', 155),
(12, 'Dolce&Gabbana', 'DG5047', 'Dolce & Gabbana è un marchio del lusso famoso per la sua originalità stilistica unita all’eccellente qualità delle sue creazioni. Piena espressione di un mix esplosivo di sensazioni, tradizione e cultura mediterranea.\n\nScegli il tuo stile Dolce&Gabbana e scopri il modello DG5047\n\nGenere: uomo\nColore della montatura: blu opaco\nMateriale della montatura: iniettato\nForma: squadrata\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'plastica', 'da vista', 'uomo', 'blu', 201),
(13, 'Armani', 'AR5110', 'Il Brand Giorgio Armani nasce nel 1975 e si distingue per l’eccellenza della realizzazione, l’estrema cura dei dettagli, la purezza delle linee e l’uso di materiali di qualità superiore.\r\n\r\nScegli il tuo stile Giorgio Armani e scopri il modello AR5110\r\n\r\nGenere: donna\r\nColore della montatura: oro rosé opaco e oro rosé brillante, rose gold\r\nMateriale della montatura: metallo\r\nForma: squadrata\r\nTipo di montatura: cerchio intero\r\nColore delle lenti: lente demo\r\n\r\nVestibilità e caratteristiche della montatura\r\n\r\nVestibilità stretta.\r\n', 'metallo', 'da vista', 'donna', 'oro', 250),
(14, 'Ray-Ban', 'RB3694V', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.\r\n\r\nScegli il tuo stile Ray-Ban e scopri il modello RB3694V JIM OPTICS\r\n\r\nGenere: unisex\r\nColore della montatura: gunmetal\r\nMateriale della montatura: metallo\r\nForma: irregolare\r\nTipo di montatura: cerchio intero\r\nColore delle lenti: lente demo\r\nTrattamenti: lente demo\r\n\r\nVestibilità e caratteristiche della montatura\r\n\r\nVestibilità stretta.\r\n', 'metallo', 'da vista', 'unisex', 'grigio', 145),
(15, 'Versace', 'VE1283', 'La collezione eyewear combina innovazione tecnica e l\'essenza del marchio, ed è fortemente caratterizzata dall’estetica negli elementi decorativi che da sempre contraddistingue la Maison.\n\nScegli il tuo stile Versace e scopri il modello VE1283\n\nGenere: donna\nColore della montatura: oro\nMateriale della montatura: metallo\nForma: irregolare\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: tinta unita\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'metallo', 'da vista', 'donna', 'oro', 230),
(16, 'Ray-Ban', 'RB3447V', 'Stile, autenticità, libertà di espressione, qualità e funzionalità sono i valori chiave di Ray-Ban, da generazioni leader dell’occhialeria da sole e da vista.\n\nScegli il tuo stile Ray-Ban e scopri il modello RB3447V ROUND METAL\n\nGenere: unisex\nColore della montatura: nero su argento, argento\nMateriale della montatura: metallo\nForma: rotonda\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità stretta.\n', 'metallo', 'da vista', 'unisex', 'multicolore', 135),
(17, 'Prada', 'PR09ZV', 'La qualità totale come punto di partenza, la costante innovazione nel rispetto della tradizione, la ricerca e la selezione dei materiali coniugata ad un\'impeccabile manifattura: gli occhiali Prada sono contraddistinti da uno stile inconfondibile.\n\nScegli il tuo stile Prada e scopri il modello PR 09ZV\n\nGenere: donna\nColore della montatura: miele tartarugato\nMateriale della montatura: acetato\nForma: squadrata\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità standard.\n', 'plastica', 'da vista', 'donna', 'multicolore', 290),
(18, 'Bvlgari', 'BV1109', 'Il marchio si colloca nel segmento più alto dell\'occhialeria-gioiello grazie all\'artigianalità italiana, al design audace e all\'utilizzo di materiali pregiati quali oro e pietre colorate, oltre ai cristalli, applicati su creazioni esclusive e senza tempo.\n\nScegli il tuo stile Bvlgari e scopri il modello BV1109\n\nGenere: uomo\nColore della montatura: gunmetal, gunmetal/nero opaco\nMateriale della montatura: metallo\nForma: rettangolare\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità stretta.\n', 'metallo', 'da vista', 'uomo', 'grigio', 260),
(19, 'Bvlgari', 'BV1113', 'Il marchio si colloca nel segmento più alto dell\'occhialeria-gioiello grazie all\'artigianalità italiana, al design audace e all\'utilizzo di materiali pregiati quali oro e pietre colorate, oltre ai cristalli, applicati su creazioni esclusive e senza tempo.\nScegli il tuo stile Bvlgari e scopri il modello BV1113\n\nGenere: uomo\nColore della montatura: argento opaco/blu, argento opaco\nMateriale della montatura: metallo\nForma: rettangolare\nTipo di montatura: cerchio intero\nColore delle lenti: lente demo\nTrattamenti: lente demo\n\nVestibilità e caratteristiche della montatura\n\nVestibilità stretta.\n', 'metallo', 'da vista', 'uomo', 'blu', 260),
(20, 'Burberry', 'BE2301', 'Il brand fondato nel 1856 è diventato protagonista della storia inglese, accompagnando le grandi imprese dei sudditi di sua Maestà con classe ed eleganza. Burberry in oltre 150 anni di attività ha mantenuto inalterate queste caratteristiche, che si esprimono appieno nelle collezioni di occhiali, linee e forme innovative, che mantengono inalterato l’antico prestigio.\r\n\r\nScegli il tuo stile Burberry e scopri il modello BE2301\r\n\r\nGenere: donna\r\nColore della montatura: top nero/stampa tb rossa/beige\r\nMateriale della montatura: acetato\r\nForma: squadrata\r\nTipo di montatura: cerchio intero\r\nColore delle lenti: lente demo\r\n\r\nVestibilità e caratteristiche della montatura\r\n\r\nVestibilità standard.\r\n', 'plastica', 'da vista', 'donna', 'multicolore', 201),
(30, 'XYLOMIA', 'XYLADM30', 'Bellissimi occhiali di legno', 'Legno', 'Da donna', 'Da uomo', 'Marrone', 130),
(31, 'XYLOMIA', 'XYLA32MD', 'Bellissimo occhiale di legno da sole', 'Legno', 'Da donna', 'Unisex', 'Marrone', 80),
(32, 'Oakley', 'XY432TD', 'Belissimo occhiale di legno', 'Legno', 'Da donna', 'Da donna', 'Marrone', 86),
(33, 'XYLOMIA', 'XY543SF', 'Bellissimi occhiali', 'Legno', 'Da uomo', 'Unisex', 'Marrone', 95),
(34, 'Oakley', 'OAK201', 'Bellissimi occhiali da sole', 'Legno', 'Da donna', 'Da uomo', 'Marrone', 70);

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin\r\n'),
(2, 'a', 'a'),
(3, 'admin', 'admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
