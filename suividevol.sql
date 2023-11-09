-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3309
-- Généré le :  jeu. 09 nov. 2023 à 12:13
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `suividevol`
--

-- --------------------------------------------------------

--
-- Structure de la table `aeroports`
--

DROP TABLE IF EXISTS `aeroports`;
CREATE TABLE IF NOT EXISTS `aeroports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `ville` varchar(200) NOT NULL,
  `pays_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pays_id` (`pays_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `aeroports`
--

INSERT INTO `aeroports` (`id`, `name`, `ville`, `pays_id`) VALUES
(1, 'Orly', 'Paris', 1);

-- --------------------------------------------------------

--
-- Structure de la table `compagnies`
--

DROP TABLE IF EXISTS `compagnies`;
CREATE TABLE IF NOT EXISTS `compagnies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `name`) VALUES
(1, 'France'),
(2, 'Belgique'),
(3, 'Suisse'),
(4, 'Madagascar'),
(5, 'Nigeria'),
(6, 'Comore'),
(7, 'Maurice');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

DROP TABLE IF EXISTS `vols`;
CREATE TABLE IF NOT EXISTS `vols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(200) NOT NULL,
  `compagnie_id` int(11) NOT NULL,
  `aeroportDepart_id` int(11) NOT NULL,
  `aeroportArrivee_id` int(11) NOT NULL,
  `dateHeureDepartPrevue` datetime NOT NULL,
  `dateHeureArriveePrevue` datetime NOT NULL,
  `statut` varchar(200) NOT NULL,
  `porteEmbarquement` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aeroports`
--
ALTER TABLE `aeroports`
  ADD CONSTRAINT `aeroports_ibfk_1` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
