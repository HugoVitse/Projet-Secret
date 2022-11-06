-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 06 nov. 2022 à 21:49
-- Version du serveur :  5.7.24
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db`
--

-- --------------------------------------------------------

--
-- Structure de la table `dailyid`
--

CREATE TABLE `dailyid` (
  `classicid` int(11) NOT NULL,
  `bountyid` int(11) NOT NULL,
  `quoteid` int(11) NOT NULL,
  `splashid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lastupdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dailyid`
--

INSERT INTO `dailyid` (`classicid`, `bountyid`, `quoteid`, `splashid`, `id`, `lastupdate`) VALUES
(3, 0, 0, 0, 1, '2022-11-06');

-- --------------------------------------------------------

--
-- Structure de la table `persos`
--

CREATE TABLE `persos` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `fdd` text NOT NULL,
  `haki` tinyint(1) NOT NULL,
  `genre` text NOT NULL,
  `occupation` text NOT NULL,
  `espece` text NOT NULL,
  `ocean` text NOT NULL,
  `style` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `persos`
--

INSERT INTO `persos` (`id`, `nom`, `fdd`, `haki`, `genre`, `occupation`, `espece`, `ocean`, `style`, `image`) VALUES
(1, 'Monkey D. Luffy', 'Gomu Gomu no Mi', 1, 'Homme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps', 'luffy.png'),
(2, 'Sabo', 'Mera Mera no Mi', 1, 'Homme', 'Révolutionnaire', 'Humain', 'East Blue', 'Combat au corps à corps', 'sabo.png'),
(3, 'Akainu', 'Magu Magu no Mi', 1, 'Humain', 'Marine', 'Humain', '?', 'Combat au corps à corps', 'akainu.png'),
(4, 'Magellan', 'Doku Doku no Mi', 1, 'Homme', 'Agent du GM', 'Humain', '?', 'Combat au corps à corps', 'magellan.png');

-- --------------------------------------------------------

--
-- Structure de la table `persosprime`
--

CREATE TABLE `persosprime` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `bounty` bigint(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dailyid`
--
ALTER TABLE `dailyid`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `persos`
--
ALTER TABLE `persos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `persosprime`
--
ALTER TABLE `persosprime`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dailyid`
--
ALTER TABLE `dailyid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `persos`
--
ALTER TABLE `persos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `persosprime`
--
ALTER TABLE `persosprime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
