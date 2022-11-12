-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 12 nov. 2022 à 17:24
-- Version du serveur :  5.7.24
-- Version de PHP : 8.0.7

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
(7, 0, 0, 0, 1, '2022-11-11');

-- --------------------------------------------------------

--
-- Structure de la table `persos`
--

CREATE TABLE `persos` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `fdd` text NOT NULL,
  `haki` text NOT NULL,
  `genre` text NOT NULL,
  `occupation` text NOT NULL,
  `espece` text NOT NULL,
  `ocean` text NOT NULL,
  `style` text NOT NULL,
  `age` text,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `persos`
--

INSERT INTO `persos` (`id`, `nom`, `fdd`, `haki`, `genre`, `occupation`, `espece`, `ocean`, `style`, `age`, `image`) VALUES
(1, 'Monkey D. Luffy', 'Paramecia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps', '19 ans', 'luffy.png'),
(2, 'Sabo', 'Logia', 'Armement Observation', 'Homme', 'Révo', 'Humain', 'East Blue', 'Arme Contondante', '22 ans', 'sabo.png'),
(3, 'Akainu', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '55 ans', 'akainu.png'),
(4, 'Magellan', 'Paramecia', 'Armement Observation', 'Homme', 'Agent du GM', 'Humain', '?', 'Combat au corps à corps', '47 ans', 'magellan.png'),
(5, 'Gol D. Roger', 'Aucun', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps / Epéiste', 'Décédé', 'roger.png'),
(6, 'Roronoa Zoro', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Epéiste', '21 ans', 'zoro.png'),
(7, 'Nami', 'Aucun', 'Aucun', 'Femme', 'Pirate', 'Humain', 'East Blue', 'Arme Contondante', '20 ans', 'nami.png'),
(8, 'Sanji', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Combat au corps à corps', '21 ans', 'sanji.png'),
(9, 'Usopp', 'Aucun', 'Observation', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Tireur d\'élite', '19 ans', 'usopp.png'),
(10, 'Tony Tony Chopper', 'Zoan', 'Aucun', 'Homme', 'Pirate', 'Renne', 'East Blue', 'Combat au corps à corps', '17 ans', 'chopper.png'),
(11, 'Nico Robin', 'Paramecia', 'Aucun', 'Femme', 'Pirate', 'Humain', 'West Blue', 'Combat au corps à corps', '30 ans', 'robin.png'),
(12, 'Van Augur', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Tireur d\'élite', '27 ans', 'augur.png'),
(13, 'Franky', 'Aucun', 'Aucun', 'Homme', 'Pirate / Charpentier', 'Humain / Cyborg', 'Grand Line', 'Combat au corps à corps / Technologies\r\n\r\n', '36 ans', 'Franky.png'),
(14, 'Jinbei', 'Aucun', 'Armement Observation', 'Homme', 'Pirate / Timonier', 'Homme-Poisson', 'Grand Line', 'Arts-martiaux', '46 ans', 'Jinbei.png'),
(15, 'Brook', 'Paramecia', 'Aucun', 'Homme', 'Pirate / Musicien', 'Humain', 'West Blue', 'Epéiste', '90 ans', 'Brook.png '),
(16, 'Baggy', 'Paramecia', 'Aucun', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '39 ans', 'Baggy.png'),
(17, 'Crocodile', 'Logia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Poison', '46 ans', 'Crocodile.png'),
(18, 'Dracule Mihawk', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Epéiste', '43 ans', 'Mihawk.png'),
(19, 'Alvida', 'Paramecia', 'Aucun', 'Femme', 'Pirate', 'Humain', '?', 'Arme Contondante', '27 ans', 'Alvida.png'),
(20, 'Eustass Kidd', 'Paramecia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'South Blue', 'Combat au corps à corps', '23 ans', 'Kidd.png'),
(21, 'Killer', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'South Blue', 'Epéiste', '27 ans', 'Killer.png'),
(22, 'Trafalgar D. Water Law', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Epéiste', '26 ans', 'Law.png '),
(23, 'Bepo', 'Aucun', 'Aucun', 'Homme', 'Pirate', 'Mink', 'Grand Line', 'Arts-martiaux', '22 ans', 'Bepo.png'),
(24, 'Capone Bege ', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'West Blue', 'Armes à feu', '42 ans', 'Bege.png'),
(25, 'Jewelry Bonney', 'Paramecia', 'Armement Observation', 'Femme', 'Pirate', 'Humain', 'South Blue', 'Combat au corps à corps', '24 ans', 'Bonney.png'),
(26, 'Urouge', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain Céleste', 'Grand Line', 'Combat au corps à corps', '47 ans', 'Urouge.png'),
(27, 'Big Mom', 'Paramecia', 'Armement Observation HDR', 'Femme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Epéiste ', '68 ans', 'BigMom.png'),
(28, 'Charlotte Katakuri ', 'Paramecia', 'Armement Observation HDR ', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Combat au corps à corps / Arme Contondante', '48 ans', 'Katakuri.png'),
(29, 'Charlotte Smoothie', 'Paramecia', 'Armement Observation', 'Femme', 'Pirate', 'Humain / Longues-Jambes', 'Grand Line', 'Epéiste', '35 ans', 'Smoothie.png '),
(30, 'Charlotte Cracker', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Golem / Epéiste', '45 ans', 'Cracker.png'),
(31, 'Charlotte Perospero', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Arme Contondante', '50 ans', 'Perospero.png'),
(32, 'Charlotte Snack', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', '30 ans', 'Snack.png'),
(33, 'Rob Lucci', 'Zoan', 'Armement Observation', 'Homme', 'Agent du GM', 'Humain', '?', 'Combat au corps à corps', '30 ans', 'Lucci.png'),
(34, 'Sengoku', 'Zoan', 'Armement Observation HDR', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '79 ans', 'sengoku.png'),
(35, 'Monkey D. Garp', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '78 ans', 'garp.png'),
(36, 'Kuzan Aokiji', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '49 ans ', 'aokiji.png'),
(37, 'Borsalino Kizaru', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'North Blue', 'Combat au corps à corps', '58 ans ', 'kizaru.png'),
(38, 'Smoker', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '36 ans ', 'smoker.png'),
(39, 'Issho Fujitora', 'Paramecia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'Grand Line', 'Epéiste', '54 ans', 'fujitora.png'),
(40, 'Aramaki Ryokugyu', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '50 ans', 'Ryokugyu.png'),
(41, 'Koby', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '18 ans', 'koby.png'),
(42, 'Haguar D. Sauro', 'Aucun', 'Armement Observation', 'Homme', 'Marine / Pirate', 'Géant', 'South Blue', 'Combat au corps à corps', '105', 'Sauro.png'),
(43, 'Tashigi', 'Aucun', 'Armement Observation', 'Femme', 'Marine', 'Humain', 'East Blue', 'Epéiste', '23 ans', 'Tashigi.png'),
(44, 'Morgan', 'Aucun', 'Aucun', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '44 ans', 'Morgan.png'),
(45, 'Momonga', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'Grand Line', 'Epéiste', '48 ans', 'Momonga.png'),
(46, 'Kinemon', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '36 ans', 'Kinemon.png'),
(47, 'Denjiro', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '47 ans', 'Denjiro.png'),
(48, 'Kikunojo', 'Aucun', 'Armement Observation', 'Homme / Femme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '22 ans', 'Kikunojo.png'),
(49, 'Kurozumi Kanjuro', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'Kanjuro.png'),
(50, 'Raizo', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Ninja', '35 ans', 'Raizo.png'),
(51, 'Ashura Doji', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'Ashura.png'),
(52, 'Kawamatsu', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Homme-Poisson', 'Grand Line', 'Epéiste', '41 ans', 'Kawamatsu.png'),
(53, 'Nekomamushi', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Mink', 'Grand Line', 'Epéiste', '40 ans', 'Nekomamushi.png'),
(54, 'Inuarashi', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Mink', 'Grand Line', 'Epéiste', '40 ans', 'Inuarashi.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `persosprime`
--
ALTER TABLE `persosprime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
