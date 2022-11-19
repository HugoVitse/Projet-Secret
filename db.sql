-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 19 nov. 2022 à 13:48
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
(89, 2, 0, 0, 1, '2022-11-19');

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
(13, 'Franky', 'Aucun', 'Aucun', 'Homme', 'Pirate / Charpentier', 'Humain / Cyborg', 'Grand Line', 'Combat au corps à corps / Technologies\r\n\r\n', '36 ans', 'franky.png'),
(14, 'Jinbei', 'Aucun', 'Armement Observation', 'Homme', 'Pirate / Timonier', 'Homme-Poisson', 'Grand Line', 'Arts-martiaux', '46 ans', 'jinbei.png'),
(15, 'Brook', 'Paramecia', 'Aucun', 'Homme', 'Pirate / Musicien', 'Humain', 'West Blue', 'Epéiste', '90 ans', 'brook.png '),
(16, 'Baggy', 'Paramecia', 'Aucun', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '39 ans', 'baggy.png'),
(17, 'Crocodile', 'Logia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Poison', '46 ans', 'crocodile.png'),
(18, 'Dracule Mihawk', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Epéiste', '43 ans', 'mihawk.png'),
(19, 'Alvida', 'Paramecia', 'Aucun', 'Femme', 'Pirate', 'Humain', '?', 'Arme Contondante', '27 ans', 'alvida.png'),
(20, 'Eustass Kidd', 'Paramecia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'South Blue', 'Combat au corps à corps', '23 ans', 'kidd.png'),
(21, 'Killer', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'South Blue', 'Epéiste', '27 ans', 'killer.png'),
(22, 'Trafalgar D. Water Law', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Epéiste', '26 ans', 'law.png '),
(23, 'Bepo', 'Aucun', 'Aucun', 'Homme', 'Pirate', 'Mink', 'Grand Line', 'Arts-martiaux', '22 ans', 'bepo.png'),
(24, 'Capone Bege ', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'West Blue', 'Armes à feu', '42 ans', 'bege.png'),
(25, 'Jewelry Bonney', 'Paramecia', 'Armement Observation', 'Femme', 'Pirate', 'Humain', 'South Blue', 'Combat au corps à corps', '24 ans', 'bonney.png'),
(26, 'Urouge', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain Céleste', 'Grand Line', 'Combat au corps à corps', '47 ans', 'urouge.png'),
(27, 'Big Mom', 'Paramecia', 'Armement Observation HDR', 'Femme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Epéiste ', '68 ans', 'bigMom.png'),
(28, 'Charlotte Katakuri ', 'Paramecia', 'Armement Observation HDR ', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Combat au corps à corps / Arme Contondante', '48 ans', 'katakuri.png'),
(29, 'Charlotte Smoothie', 'Paramecia', 'Armement Observation', 'Femme', 'Pirate', 'Humain / Longues-Jambes', 'Grand Line', 'Epéiste', '35 ans', 'smoothie.png '),
(30, 'Charlotte Cracker', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Golem / Epéiste', '45 ans', 'cracker.png'),
(31, 'Charlotte Perospero', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Arme Contondante', '50 ans', 'perospero.png'),
(32, 'Charlotte Snack', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', '30 ans', 'snack.png'),
(33, 'Rob Lucci', 'Zoan', 'Armement Observation', 'Homme', 'Agent du GM', 'Humain', '?', 'Combat au corps à corps', '30 ans', 'lucci.png'),
(34, 'Sengoku', 'Zoan', 'Armement Observation HDR', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '79 ans', 'sengoku.png'),
(35, 'Monkey D. Garp', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '78 ans', 'garp.png'),
(36, 'Kuzan Aokiji', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '49 ans ', 'aokiji.png'),
(37, 'Borsalino Kizaru', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'North Blue', 'Combat au corps à corps', '58 ans ', 'kizaru.png'),
(38, 'Smoker', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '36 ans ', 'smoker.png'),
(39, 'Issho Fujitora', 'Paramecia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'Grand Line', 'Epéiste', '54 ans', 'fujitora.png'),
(40, 'Aramaki Ryokugyu', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '50 ans', 'ryokugyu.png'),
(41, 'Koby', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '18 ans', 'koby.png'),
(42, 'Haguar D. Sauro', 'Aucun', 'Armement Observation', 'Homme', 'Marine / Pirate', 'Géant', 'South Blue', 'Combat au corps à corps', '105', 'sauro.png'),
(43, 'Tashigi', 'Aucun', 'Armement Observation', 'Femme', 'Marine', 'Humain', 'East Blue', 'Epéiste', '23 ans', 'tashigi.png'),
(44, 'Morgan', 'Aucun', 'Aucun', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '44 ans', 'morgan.png'),
(45, 'Momonga', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'Grand Line', 'Epéiste', '48 ans', 'momonga.png'),
(46, 'Kinemon', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '36 ans', 'kinemon.png'),
(47, 'Denjiro', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '47 ans', 'denjiro.png'),
(48, 'Kikunojo', 'Aucun', 'Armement Observation', 'Homme / Femme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '22 ans', 'kikunojo.png'),
(49, 'Kurozumi Kanjuro', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'kanjuro.png'),
(50, 'Raizo', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Ninja', '35 ans', 'raizo.png'),
(51, 'Ashura Doji', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'ashura.png'),
(52, 'Kawamatsu', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Homme-Poisson', 'Grand Line', 'Epéiste', '41 ans', 'kawamatsu.png'),
(53, 'Nekomamushi', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Mink', 'Grand Line', 'Epéiste', '40 ans', 'nekomamushi.png'),
(54, 'Inuarashi', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Mink', 'Grand Line', 'Epéiste', '40 ans', 'inuarashi.png'),
(55, 'Monkey D. Dragon', 'Aucun', 'Armement Observation', 'Homme', 'Révo', 'Humain', '?', '?', '55 ans', 'dragon.png'),
(56, 'Bartholomew Kuma', 'Paramecia', 'Armement Observation', 'Homme', 'Marine / Révo / Pirate', 'Humain / Cyborg', 'Grand Line', 'Combat au corps à corps', '47 ans', 'kuma.png'),
(57, 'Koala', 'Aucun', 'Armement Observation', 'Femme', 'Révo', 'Humain', '?', 'Combat au corps à corps', '23 ans', 'koala.png'),
(58, 'Morley', 'Paramecia', 'Armement Observation', 'Homme / Femme', 'Révo', 'Géant', 'West Blue', 'Arme Contondante', '160 ans', 'morley.png'),
(59, 'Belo Betty', 'Paramecia', 'Armement Observation', 'Femme', 'Révo', 'Humain', 'East Blue', 'Yes bébé alors ca marche', '34 ans', 'betty.png'),
(60, 'Emporio Ivankov', 'Paramecia', 'Armement Observation', 'Homme / Femme', 'Révo', 'Humain', '?', 'Combat au corps à corps', '58 ans', 'ivankov.png'),
(61, 'Inazuma', 'Paramecia', 'Armement Observation', 'Homme / Femme', 'Révo', 'Humain', 'South Blue', 'Combat au corps à corps', '29 ans', 'inazuma.png'),
(62, 'Bon Clay', 'Paramecia', 'Aucun', 'Homme / Femme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps', '32 ans', 'bonclay.png'),
(63, 'Carrot', 'Aucun', 'Armement Observation', 'Mink', 'Pirate', 'Mink', 'Grand Line', 'Combat au corps à corps', '15 ans', 'carrot.png'),
(64, 'Wanda', 'Aucun', 'Armement Observation', 'Femme', 'Pirate', 'Mink', 'Grand Line', 'Epéiste', '28 ans', 'wanda.png'),
(65, 'Marshall D.Teach', 'Paramecia Logia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '40 ans', 'teach.png'),
(66, 'Shiliew', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', '44 ans', 'shiliew.png'),
(67, 'Jesus Burgess', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '29 ans', 'burgess.png'),
(68, 'Avalo Pizarro', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Combat au corps à corps', '42 ans', 'pizzaro.png'),
(69, 'Doc Q', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', '?', '28 ans', 'docq.png'),
(70, 'Sanjuan Wolf', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Géant', 'West Blue', 'Combat au corps à corps', '99 ans', 'wolf.png'),
(71, 'Laffitte', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'West Blue', '?', '41 ans', 'laffitte.png'),
(72, 'Catarina Devon', 'Zoan', 'Armement Observation', 'Femme', 'Pirate', 'Humain', 'South Blue', '?', '36 ans', 'devon.png'),
(73, 'Vasco Shot', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'South Blue', '?', '38 ans', 'shot.png'),
(74, 'Caribou', 'Logia', 'Aucun', 'Homme', 'Pirate', 'Humain', 'North Blue', '?', '32 ans', 'caribou.png'),
(75, 'Silvers Rayleigh', 'Aucun', 'Armement Observation HDR', 'Homme', 'Pirate', 'Homme', '?', 'Epéiste', '78 ans', 'rayleigh.png'),
(76, 'Kozuki Oden', 'Aucun', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'oden.png'),
(77, 'Crocus', 'Aucun', 'Observation', 'Homme', 'Pirate', 'Humain', '?', '?', '73 ans', 'crocus.png'),
(78, 'Scopper Gaban', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Arme contondante', '?', 'gaban.png'),
(79, 'Fisher Tiger', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Homme-Poisson', 'Grand Line', 'Combat au corps à corps', 'Décédé', 'tiger.png'),
(80, 'Neptune', 'Aucun', 'Aucun', 'Homme', 'Famille Royale', 'Homme-Poisson', 'Grand Line', 'Arme Contondante', '70 ans', 'neptune.png'),
(81, 'Shirahoshi', 'Aucun', 'Aucun', 'Femme', 'Famille Royale', 'Homme-Poisson', 'Grand Line', '?', '16 ans', 'shirahoshi.png'),
(82, 'Nefertari Cobra', 'Aucun', 'Aucun', 'Homme', 'Famille Royale', 'Humain', 'Grand Line', '?', 'Décédé', '50 ans'),
(83, 'Nefertari Vivi', 'Aucun', 'Aucun', 'Femme', 'Famille Royale', 'Humain', 'Grand Line', '?', '18 ans', 'vivi.png'),
(84, 'Riku Doldo III', 'Aucun', 'Aucun', 'Homme', 'Famille Royale', 'Homme', 'Grand Line', 'Epéiste', '60 ans', 'riku.png'),
(85, 'Rebecca', 'Aucun', 'Aucun', 'Femme', 'Famille Royale', 'Humain', 'Grand Line', 'Epéiste', '16 ans', 'rebecca.png'),
(86, 'Kaido', 'Zoan', 'Armement Observation HDR', 'Homme', 'Pirate', '?', 'Grand Line', 'Arme Contondante', '59 ans', 'kaido.png'),
(87, 'Kurozumi Orochi', 'Zoan', 'Aucun', 'Homme', 'Famille Royale', 'Humain', 'Grand Line', '?', 'Décédé', 'orochi.png'),
(88, 'Jack', 'Zoan', 'Armement Observation', 'Homme', 'Pirate', 'Homme-Poisson', 'Grand Line', 'Combat au corps à corps / Epéiste', '28 ans', 'jack.png'),
(89, 'Queen', 'Zoan', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Technologies / Poison / FDD', '56 ans', 'queen.png'),
(90, 'King', 'Zoan', 'Armement Observation', 'Homme', 'Pirate', 'Lunaria', '?', 'Epéiste / FDD', '47 ans', 'king.png'),
(91, 'Basil Hawkins', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Epéiste / FDD', '31 ans', 'hawkins.png'),
(92, 'Holdem', 'SMILE', 'Aucun', 'Homme', 'Pirate', 'Humain', '?', 'Epéiste / FDD', '30 ans', 'holdem.png'),
(93, 'Scratchmen Apoo', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Long-bras', 'Grand Line', 'FDD', '31 ans', 'apoo.png'),
(94, 'Bao Huang', 'SMILE', 'Aucun', 'Femme', 'Pirate / Agent du GM', 'Humain', '?', '?', '?', 'bao.png'),
(95, 'Nojiko', 'Aucun', 'Aucun', 'Femme', 'Civil', 'Humain', 'East Blue', '?', '22 ans', 'nojiko.png'),
(96, 'Makino', 'Aucun', 'Aucun', 'Femme', 'Civil', 'Humain', 'East Blue', '?', '31 ans', 'makino.png'),
(97, 'Curly Dadan', 'Aucun', 'Aucun', 'Femme', 'Civil / Bandit', 'Humain', 'East Blue', '?', '55 ans', 'dadan.png'),
(98, 'Laboon', 'Aucun', 'Aucun', 'Homme', '?', 'Baleine', 'West Blue', '?', '53 ans', 'laboon.png'),
(99, 'Kaya', 'Aucun', 'Aucun', 'Femme', 'Civil', 'Humain', 'East Blue', '?', '19 ans', 'kaya.png'),
(100, 'Kozuki Toki', 'Paramecia', 'Aucun', 'Femme', 'Famille Royale', 'Humain', 'Grand Line', '?', 'Décédé', 'toki.png');

-- --------------------------------------------------------

--
-- Structure de la table `persosprime`
--

CREATE TABLE `persosprime` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `bounty` bigint(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `persosprime`
--

INSERT INTO `persosprime` (`id`, `name`, `bounty`, `image`) VALUES
(1, 'MONKEY D. LUFFY', 3000000000, 'luffy.png'),
(2, 'KING', 1390000000, 'king.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `persosprime`
--
ALTER TABLE `persosprime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
