-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 25 Juillet 2024 à 16:23
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `location`
--

-- --------------------------------------------------------

--
-- Structure de la table `connectiondata`
--

CREATE TABLE IF NOT EXISTS `connectiondata` (
  `idcon` int(10) NOT NULL AUTO_INCREMENT,
  `usercon` varchar(75) NOT NULL,
  `passcon` varchar(45) NOT NULL,
  PRIMARY KEY (`idcon`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `connectiondata`
--

INSERT INTO `connectiondata` (`idcon`, `usercon`, `passcon`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `gestionclient`
--

CREATE TABLE IF NOT EXISTS `gestionclient` (
  `numeroclient` int(20) NOT NULL,
  `prenomnom` varchar(60) NOT NULL,
  `numeropermis` int(25) NOT NULL,
  `adresse` varchar(99) NOT NULL,
  `telephone` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `gestionclient`
--

INSERT INTO `gestionclient` (`numeroclient`, `prenomnom`, `numeropermis`, `adresse`, `telephone`) VALUES
(2255, 'fggthhn nhn', 22252, 'rgthhjnh,hn', 425252525),
(110, 'Abdoulaye diop', 1010, 'Grand-dakar', 707695878),
(10, ' fa diop', 45, 'hyte', 1254),
(14, 'awa diop', 56, 'mpal', 707896352),
(12, 'de gg', 444, 'vggb', 1225844),
(14, 'fa dieye', 562, 'katy', 787452585),
(10, 'bh,b', 205, 'juu', 552),
(45, 'gb gg', 1458, 'frtht', 5510),
(35353, 'fhbghngn', 58583, 'dgfrhtg', 55355),
(10, 'idrissa diop', 63, 'pol', 458254),
(12, 'sez', 52, 'zz', 87422),
(800, 'Moussa fall', 654, 'ndiole', 785462545),
(500, 'khady fall', 400, 'mouit', 707894520),
(154, 'mouna ka', 6025, 'pilote', 98745211),
(455, 'hgbgb f', 4788, 'nnhnh', 12255),
(14, 'gffh', 42424, 'fghg', 552525),
(270, 'omar fall', 80010, 'fallene', 787896552),
(9, 'awa diop', 369, 'coeur', 7854215);

-- --------------------------------------------------------

--
-- Structure de la table `gestionlocation`
--

CREATE TABLE IF NOT EXISTS `gestionlocation` (
  `matriculevoiture` int(15) NOT NULL AUTO_INCREMENT,
  `nomduclient` varchar(50) NOT NULL,
  `etat` varchar(30) NOT NULL,
  `téléphoneclient` int(11) NOT NULL,
  `duréprévu` int(11) NOT NULL,
  `prixdelocation` int(11) NOT NULL,
  `datededébut` varchar(14) NOT NULL,
  `datedefin` varchar(14) NOT NULL,
  PRIMARY KEY (`matriculevoiture`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7896 ;

--
-- Contenu de la table `gestionlocation`
--

INSERT INTO `gestionlocation` (`matriculevoiture`, `nomduclient`, `etat`, `téléphoneclient`, `duréprévu`, `prixdelocation`, `datededébut`, `datedefin`) VALUES
(789, 'Abdoulaye Diop', 'Location', 781363881, 4, 75000, '23/07/2024', '27/07/2024'),
(1222, 'nafy fall', 'location', 784561254, 1, 18000, '22/07/2024', '23/07/2024'),
(1414, 'fvdgg', '', 42425253, 1, 255, '22/07/2024', '23/07/2024'),
(4587, 'Magatte Diop', 'Location', 771055279, 2, 50000, '23/07/2024', '25/07/2024'),
(7895, 'Omar fall', '', 784568545, 4, 25000, '22/07/2024', '26/07/2024');

-- --------------------------------------------------------

--
-- Structure de la table `gestionvehicule`
--

CREATE TABLE IF NOT EXISTS `gestionvehicule` (
  `matricule` int(50) NOT NULL,
  `nomvoiture` varchar(75) NOT NULL,
  `prixvoiture` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `gestionvehicule`
--

INSERT INTO `gestionvehicule` (`matricule`, `nomvoiture`, `prixvoiture`) VALUES
(455, 'lolo', 654),
(125, 'BMW', 2000000),
(1554, 'Toyota', 4000000),
(112, 'Benz', 2500000),
(145, 'Merzedez', 3000000);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE IF NOT EXISTS `vente` (
  `mvoiture` varchar(11) NOT NULL,
  `modvoiture` varchar(30) NOT NULL,
  `privoiture` int(11) NOT NULL,
  `nomclient` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `paiement` varchar(11) NOT NULL,
  `heure` varchar(11) NOT NULL,
  `datevendu` varchar(15) NOT NULL,
  PRIMARY KEY (`mvoiture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vente`
--

INSERT INTO `vente` (`mvoiture`, `modvoiture`, `privoiture`, `nomclient`, `phone`, `adresse`, `paiement`, `heure`, `datevendu`) VALUES
('504', 'TATA', 7000000, 'Fallou fall', 778521254, 'pilote', 'cheque', '10:27', '18/06/2024'),
('AA504', 'TATA', 7000000, 'Fallou fall', 778521254, 'pilote', 'cheque', '10:27', '18/06/2024'),
('AA505', 'TATA', 7000000, 'Fallou fall', 778521254, 'pilote', 'cheque', '10:27', '18/06/2024'),
('ABO5', 'Merdzs', 21000000, 'Sokhna fall', 784561236, 'pilote', 'cheque', '11:45', '25/07/2024'),
('ABOIU', 'Merdzs', 21000000, 'Sokhna fall', 784561236, 'pilote', 'espece', '11:45', '25/07/2024'),
('B200', 'Merdzs', 21000000, 'Sokhna fall', 784561236, 'pilote', 'espece', '11:45', '25/07/2024'),
('B800', 'L200', 2000000, 'Modou fall', 784561236, 'Gandiol', 'espece', '12:31', '25/07/2024'),
('B801', 'L202', 2000000, 'Modou fall', 784561235, 'Gandiol', 'espece', '12:32', '25/07/2024'),
('C400', 'Toyota', 4500000, 'Modou ka', 78456158, 'Mouit', 'cheque', '13:01', '25/07/2024');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
