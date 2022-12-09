-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql210.epizy.com
-- Généré le :  ven. 09 déc. 2022 à 18:14
-- Version du serveur :  10.3.27-MariaDB
-- Version de PHP :  7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `epiz_32988969_db`
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
(31, 85, 57, 52, 1, '2022-12-10');

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
  `age` text DEFAULT NULL,
  `image` text NOT NULL,
  `quote` text NOT NULL,
  `quoteimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `persos`
--

INSERT INTO `persos` (`id`, `nom`, `fdd`, `haki`, `genre`, `occupation`, `espece`, `ocean`, `style`, `age`, `image`, `quote`, `quoteimg`) VALUES
(1, 'Monkey D. Luffy', 'Paramecia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps', '19 ans', 'luffy.png', 'Le Roi des Pirates, ce sera moi !', 'luffyquote.png'),
(2, 'Sabo', 'Logia', 'Armement Observation', 'Homme', 'Révo', 'Humain', 'East Blue', 'Arme Contondante', '22 ans', 'sabo.png', 'Les flammes d\'Ace ne vous ont pas pardonné', 'saboquote.png'),
(3, 'Akainu', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '55 ans', 'akainu.png', 'zizi :', 'akainuquote.png'),
(4, 'Magellan', 'Paramecia', 'Armement Observation', 'Homme', 'Agent du GM', 'Humain', '?', 'Combat au corps à corps', '47 ans', 'magellan.png', '', 'magellanquote.png'),
(5, 'Gol D. Roger', 'Aucun', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps / Epéiste', 'Décédé', 'roger.png', 'Je ne mourrai pas ... compagnon', 'rogerquote.png'),
(6, 'Roronoa Zoro', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Epéiste', '21 ans', 'zoro.png', 'Il ne s\'est ... rien passé du tout !', 'zoroquote.png'),
(7, 'Nami', 'Aucun', 'Aucun', 'Femme', 'Pirate', 'Humain', 'East Blue', 'Arme Contondante', '20 ans', 'nami.png', '', ''),
(8, 'Sanji', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Combat au corps à corps', '21 ans', 'sanji.png', '', ''),
(9, 'Usopp', 'Aucun', 'Observation', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Tireur d\'élite', '19 ans', 'usopp.png', '', ''),
(10, 'Tony Tony Chopper', 'Zoan', 'Aucun', 'Homme', 'Pirate', 'Renne', 'East Blue', 'Combat au corps à corps', '17 ans', 'chopper.png', '', ''),
(11, 'Nico Robin', 'Paramecia', 'Aucun', 'Femme', 'Pirate', 'Humain', 'West Blue', 'Combat au corps à corps', '30 ans', 'robin.png', 'JE VEUX VIRE !', 'robinquote.png'),
(12, 'Van Augur', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'East Blue', 'Tireur d\'élite', '27 ans', 'augur.png', '', ''),
(13, 'Franky', 'Aucun', 'Aucun', 'Homme', 'Pirate / Charpentier', 'Humain / Cyborg', 'Grand Line', 'Combat au corps à corps / Technologies\r\n\r\n', '36 ans', 'franky.png', '', ''),
(14, 'Jinbei', 'Aucun', 'Armement Observation', 'Homme', 'Pirate / Timonier', 'Homme-Poisson', 'Grand Line', 'Arts-martiaux', '46 ans', 'jinbei.png', '', ''),
(15, 'Brook', 'Paramecia', 'Aucun', 'Homme', 'Pirate / Musicien', 'Humain', 'West Blue', 'Epéiste', '90 ans', 'brook.png ', '', ''),
(16, 'Baggy', 'Paramecia', 'Aucun', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '39 ans', 'baggy.png', '', ''),
(17, 'Crocodile', 'Logia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Poison', '46 ans', 'crocodile.png', '', ''),
(18, 'Dracule Mihawk', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Epéiste', '43 ans', 'mihawk.png', 'Ne sois pas si pressé de mourir ... Ton heure viendra bien assez vite jeune homme !', 'mihawkquote.png'),
(19, 'Alvida', 'Paramecia', 'Aucun', 'Femme', 'Pirate', 'Humain', '?', 'Arme Contondante', '27 ans', 'alvida.png', '', ''),
(20, 'Eustass Kidd', 'Paramecia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'South Blue', 'Combat au corps à corps', '23 ans', 'kidd.png', '', ''),
(21, 'Killer', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'South Blue', 'Epéiste', '27 ans', 'killer.png', '', ''),
(22, 'Trafalgar D. Water Law', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Epéiste', '26 ans', 'law.png ', '', ''),
(23, 'Bepo', 'Aucun', 'Aucun', 'Homme', 'Pirate', 'Mink', 'Grand Line', 'Arts-martiaux', '22 ans', 'bepo.png', '', ''),
(24, 'Capone Bege ', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'West Blue', 'Armes à feu', '42 ans', 'bege.png', '', ''),
(25, 'Jewelry Bonney', 'Paramecia', 'Armement Observation', 'Femme', 'Pirate', 'Humain', 'South Blue', 'Combat au corps à corps', '24 ans', 'bonney.png', '', ''),
(26, 'Urouge', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain Céleste', 'Grand Line', 'Combat au corps à corps', '47 ans', 'urouge.png', '', ''),
(27, 'Big Mom', 'Paramecia', 'Armement Observation HDR', 'Femme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Epéiste ', '68 ans', 'bigMom.png', '', ''),
(28, 'Charlotte Katakuri ', 'Paramecia', 'Armement Observation HDR ', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Combat au corps à corps / Arme Contondante', '48 ans', 'katakuri.png', '', ''),
(29, 'Charlotte Smoothie', 'Paramecia', 'Armement Observation', 'Femme', 'Pirate', 'Humain / Longues-Jambes', 'Grand Line', 'Epéiste', '35 ans', 'smoothie.png ', '', ''),
(30, 'Charlotte Cracker', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Golem / Epéiste', '45 ans', 'cracker.png', '', ''),
(31, 'Charlotte Perospero', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Arme Contondante', '50 ans', 'perospero.png', '', ''),
(32, 'Charlotte Snack', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', '30 ans', 'snack.png', '', ''),
(33, 'Rob Lucci', 'Zoan', 'Armement Observation', 'Homme', 'Agent du GM', 'Humain', '?', 'Combat au corps à corps', '30 ans', 'lucci.png', '', ''),
(34, 'Sengoku', 'Zoan', 'Armement Observation HDR', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '79 ans', 'sengoku.png', '', ''),
(35, 'Monkey D. Garp', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '78 ans', 'garp.png', '', ''),
(36, 'Kuzan Aokiji', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '49 ans ', 'aokiji.png', 'Tant que tu seras en vie, Ohara continuera d\'exister.', 'aokijiquote.png'),
(37, 'Borsalino Kizaru', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'North Blue', 'Combat au corps à corps', '58 ans ', 'kizaru.png', '', ''),
(38, 'Smoker', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '36 ans ', 'smoker.png', '', ''),
(39, 'Issho Fujitora', 'Paramecia', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'Grand Line', 'Epéiste', '54 ans', 'fujitora.png', '', ''),
(40, 'Aramaki Ryokugyu', 'Logia', 'Armement Observation', 'Homme', 'Marine', 'Humain', '?', 'Combat au corps à corps', '50 ans', 'ryokugyu.png', '', ''),
(41, 'Koby', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '18 ans', 'koby.png', '', ''),
(42, 'Haguar D. Sauro', 'Aucun', 'Armement Observation', 'Homme', 'Marine / Pirate', 'Géant', 'South Blue', 'Combat au corps à corps', '105', 'sauro.png', '', ''),
(43, 'Tashigi', 'Aucun', 'Armement Observation', 'Femme', 'Marine', 'Humain', 'East Blue', 'Epéiste', '23 ans', 'tashigi.png', '', ''),
(44, 'Morgan', 'Aucun', 'Aucun', 'Homme', 'Marine', 'Humain', 'East Blue', 'Combat au corps à corps', '44 ans', 'morgan.png', '', ''),
(45, 'Momonga', 'Aucun', 'Armement Observation', 'Homme', 'Marine', 'Humain', 'Grand Line', 'Epéiste', '48 ans', 'momonga.png', '', ''),
(46, 'Kinemon', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '36 ans', 'kinemon.png', '', ''),
(47, 'Denjiro', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '47 ans', 'denjiro.png', '', ''),
(48, 'Kikunojo', 'Aucun', 'Armement Observation', 'Homme / Femme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', '22 ans', 'kikunojo.png', '', ''),
(49, 'Kurozumi Kanjuro', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'kanjuro.png', '', ''),
(50, 'Raizo', 'Paramecia', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Ninja', '35 ans', 'raizo.png', '', ''),
(51, 'Ashura Doji', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'ashura.png', '', ''),
(52, 'Kawamatsu', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Homme-Poisson', 'Grand Line', 'Epéiste', '41 ans', 'kawamatsu.png', '', ''),
(53, 'Nekomamushi', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Mink', 'Grand Line', 'Epéiste', '40 ans', 'nekomamushi.png', '', ''),
(54, 'Inuarashi', 'Aucun', 'Armement Observation', 'Homme', 'Fourreau Rouge', 'Mink', 'Grand Line', 'Epéiste', '40 ans', 'inuarashi.png', '', ''),
(55, 'Monkey D. Dragon', 'Aucun', 'Armement Observation', 'Homme', 'Révo', 'Humain', '?', '?', '55 ans', 'dragon.png', '', ''),
(56, 'Bartholomew Kuma', 'Paramecia', 'Armement Observation', 'Homme', 'Marine / Révo / Pirate', 'Humain / Cyborg', 'Grand Line', 'Combat au corps à corps', '47 ans', 'kuma.png', '', ''),
(57, 'Koala', 'Aucun', 'Armement Observation', 'Femme', 'Révo', 'Humain', '?', 'Combat au corps à corps', '23 ans', 'koala.png', '', ''),
(58, 'Morley', 'Paramecia', 'Armement Observation', 'Homme / Femme', 'Révo', 'Géant', 'West Blue', 'Arme Contondante', '160 ans', 'morley.png', '', ''),
(59, 'Belo Betty', 'Paramecia', 'Armement Observation', 'Femme', 'Révo', 'Humain', 'East Blue', 'Yes bébé alors ca marche', '34 ans', 'betty.png', '', ''),
(60, 'Emporio Ivankov', 'Paramecia', 'Armement Observation', 'Homme / Femme', 'Révo', 'Humain', '?', 'Combat au corps à corps', '58 ans', 'ivankov.png', '', ''),
(61, 'Inazuma', 'Paramecia', 'Armement Observation', 'Homme / Femme', 'Révo', 'Humain', 'South Blue', 'Combat au corps à corps', '29 ans', 'inazuma.png', '', ''),
(62, 'Bon Clay', 'Paramecia', 'Aucun', 'Homme / Femme', 'Pirate', 'Humain', 'East Blue', 'Combat au corps à corps', '32 ans', 'bonclay.png', '', ''),
(63, 'Carrot', 'Aucun', 'Armement Observation', 'Mink', 'Pirate', 'Mink', 'Grand Line', 'Combat au corps à corps', '15 ans', 'carrot.png', '', ''),
(64, 'Wanda', 'Aucun', 'Armement Observation', 'Femme', 'Pirate', 'Mink', 'Grand Line', 'Epéiste', '28 ans', 'wanda.png', '', ''),
(65, 'Marshall D. Teach', 'Paramecia Logia', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '40 ans', 'teach.png', 'Jamais les hommes ne renonceront à leurs rêves', 'teachquote.png'),
(66, 'Shiliew', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', '44 ans', 'shiliew.png', '', ''),
(67, 'Jesus Burgess', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps', '29 ans', 'burgess.png', '', ''),
(68, 'Avalo Pizarro', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Combat au corps à corps', '42 ans', 'pizzaro.png', '', ''),
(69, 'Doc Q', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', '?', '28 ans', 'docq.png', '', ''),
(70, 'Sanjuan Wolf', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Géant', 'West Blue', 'Combat au corps à corps', '99 ans', 'wolf.png', '', ''),
(71, 'Laffitte', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'West Blue', '?', '41 ans', 'laffitte.png', '', ''),
(72, 'Catarina Devon', 'Zoan', 'Armement Observation', 'Femme', 'Pirate', 'Humain', 'South Blue', '?', '36 ans', 'devon.png', '', ''),
(73, 'Vasco Shot', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'South Blue', '?', '38 ans', 'shot.png', '', ''),
(74, 'Caribou', 'Logia', 'Aucun', 'Homme', 'Pirate', 'Humain', 'North Blue', '?', '32 ans', 'caribou.png', '', ''),
(75, 'Silvers Rayleigh', 'Aucun', 'Armement Observation HDR', 'Homme', 'Pirate', 'Homme', '?', 'Epéiste', '78 ans', 'rayleigh.png', 'Roger, lui pouvait entendre ...  les voix de toutes choses', 'rayleighquote.png'),
(76, 'Kozuki Oden', 'Aucun', 'Armement Observation HDR', 'Homme', 'Pirate', 'Humain', 'Grand Line', 'Epéiste', 'Décédé', 'oden.png', '', ''),
(77, 'Crocus', 'Aucun', 'Observation', 'Homme', 'Pirate', 'Humain', '?', '?', '73 ans', 'crocus.png', '', ''),
(78, 'Scopper Gaban', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Arme contondante', '?', 'gaban.png', '', ''),
(79, 'Fisher Tiger', 'Aucun', 'Armement Observation', 'Homme', 'Pirate', 'Homme-Poisson', 'Grand Line', 'Combat au corps à corps', 'Décédé', 'tiger.png', '', ''),
(80, 'Neptune', 'Aucun', 'Aucun', 'Homme', 'Famille Royale', 'Homme-Poisson', 'Grand Line', 'Arme Contondante', '70 ans', 'neptune.png', '', ''),
(81, 'Shirahoshi', 'Aucun', 'Aucun', 'Femme', 'Famille Royale', 'Homme-Poisson', 'Grand Line', '?', '16 ans', 'shirahoshi.png', '', ''),
(82, 'Nefertari Cobra', 'Aucun', 'Aucun', 'Homme', 'Famille Royale', 'Humain', 'Grand Line', '?', 'Décédé', 'cobra.png', '', ''),
(83, 'Nefertari Vivi', 'Aucun', 'Aucun', 'Femme', 'Famille Royale', 'Humain', 'Grand Line', '?', '18 ans', 'vivi.png', '', ''),
(84, 'Riku Doldo III', 'Aucun', 'Aucun', 'Homme', 'Famille Royale', 'Homme', 'Grand Line', 'Epéiste', '60 ans', 'riku.png', '', ''),
(85, 'Rebecca', 'Aucun', 'Aucun', 'Femme', 'Famille Royale', 'Humain', 'Grand Line', 'Epéiste', '16 ans', 'rebecca.png', '', ''),
(86, 'Kaido', 'Zoan', 'Armement Observation HDR', 'Homme', 'Pirate', '?', 'Grand Line', 'Arme Contondante', '59 ans', 'kaido.png', '', ''),
(87, 'Kurozumi Orochi', 'Zoan', 'Aucun', 'Homme', 'Famille Royale', 'Humain', 'Grand Line', '?', 'Décédé', 'orochi.png', '', ''),
(88, 'Jack', 'Zoan', 'Armement Observation', 'Homme', 'Pirate', 'Homme-Poisson', 'Grand Line', 'Combat au corps à corps / Epéiste', '28 ans', 'jack.png', '', ''),
(89, 'Queen', 'Zoan', 'Armement Observation', 'Homme', 'Pirate', 'Humain', '?', 'Combat au corps à corps / Technologies / Poison / FDD', '56 ans', 'queen.png', '', ''),
(90, 'King', 'Zoan', 'Armement Observation', 'Homme', 'Pirate', 'Lunaria', '?', 'Epéiste / FDD', '47 ans', 'king.png', '', ''),
(91, 'Basil Hawkins', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Humain', 'North Blue', 'Epéiste / FDD', '31 ans', 'hawkins.png', '', ''),
(92, 'Holdem', 'SMILE', 'Aucun', 'Homme', 'Pirate', 'Humain', '?', 'Epéiste / FDD', '30 ans', 'holdem.png', '', ''),
(93, 'Scratchmen Apoo', 'Paramecia', 'Armement Observation', 'Homme', 'Pirate', 'Long-bras', 'Grand Line', 'FDD', '31 ans', 'apoo.png', '', ''),
(94, 'Bao Huang', 'SMILE', 'Aucun', 'Femme', 'Pirate / Agent du GM', 'Humain', '?', '?', '?', 'bao.png', '', ''),
(95, 'Nojiko', 'Aucun', 'Aucun', 'Femme', 'Civil', 'Humain', 'East Blue', '?', '22 ans', 'nojiko.png', '', ''),
(96, 'Makino', 'Aucun', 'Aucun', 'Femme', 'Civil', 'Humain', 'East Blue', '?', '31 ans', 'makino.png', '', ''),
(97, 'Curly Dadan', 'Aucun', 'Aucun', 'Femme', 'Civil / Bandit', 'Humain', 'East Blue', '?', '55 ans', 'dadan.png', '', ''),
(98, 'Laboon', 'Aucun', 'Aucun', 'Homme', '?', 'Baleine', 'West Blue', '?', '53 ans', 'laboon.png', '', ''),
(99, 'Kaya', 'Aucun', 'Aucun', 'Femme', 'Civil', 'Humain', 'East Blue', '?', '19 ans', 'kaya.png', '', ''),
(100, 'Kozuki Toki', 'Paramecia', 'Aucun', 'Femme', 'Famille Royale', 'Humain', 'Grand Line', '?', 'Décédé', 'toki.png', '', '');

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
(2, 'KING', 1390000000, 'king.png'),
(3, 'GOL D. ROGER', 5564800000, 'roger.png'),
(4, 'EDWARD NEWGATE', 5046000000, 'newgate.png'),
(5, 'KAIDO', 4611100000, 'kaido.png'),
(6, 'CHARLOTTE LINLIN', 4388000000, 'bigMom.png'),
(7, 'SHANKS', 4048900000, 'shanks.png'),
(8, 'MARSHALL D. TEACH', 3996000000, 'teach.png'),
(9, 'DRACULE MIHAWK', 3590000000, 'mihawk.png'),
(10, 'BAGGY', 3189000000, 'baggy.png'),
(11, 'EUSTASS KID', 3000000000, 'kid.png'),
(12, 'TRAFALGAR LAW', 3000000000, 'law.png'),
(13, 'CROCODILE', 1965000000, 'crocodile.png'),
(14, 'BOA HANCOCK', 1659000000, 'hancock.png'),
(15, 'MARCO', 1374000000, 'marco.png'),
(16, 'QUEEN', 1320000000, 'queen.png'),
(17, 'JINBE', 1100000000, 'jimbei.png'),
(18, 'CHARLOTTE KATAKURI', 1057000000, 'katakuri.png'),
(19, 'VINSMOKE SANJI', 1032000000, 'sanji.png'),
(20, 'JACK', 1000000000, 'jack.png'),
(21, 'CHARLOTTE SMOOTHIE', 932000000, 'smoothie.png'),
(22, 'NICO ROBIN', 930000000, 'robin.png'),
(23, 'CHARLOTTE PEROSPERO', 700000000, 'perospero.png'),
(24, 'SABO', 602000000, 'sabo.png'),
(25, 'CHARLOTTE SNACK', 600000000, 'snack.png'),
(26, 'LITTLE OARS JR.', 550000000, 'oz.png'),
(27, 'PORTGAS D. ACE', 550000000, 'ace.png'),
(28, 'WHO\'S WHO', 546000000, 'whoswho.png'),
(29, 'CHINJAO', 542000000, 'chinjao.png'),
(30, 'IZOU', 510000000, 'izou.png'),
(31, 'GOD USOPP', 500000000, 'usopp.png'),
(32, 'BLACK MARIA', 480000000, 'blackmaria.png'),
(33, 'SASAKI', 472000000, 'sasaki.png'),
(34, 'BELO BETTY', 457000000, 'belobetty.png'),
(35, 'TAMAGO', 429000000, 'tamago.png'),
(36, 'KARASU', 400000000, 'karasu.png'),
(37, 'ULTI', 400000000, 'ulti.png'),
(38, 'FRANKY', 394000000, 'franky.png'),
(39, 'BROOK', 383000000, 'brook.png'),
(40, 'PEDRO', 382000000, 'pedro.png'),
(41, 'NAMI', 366000000, 'nami.png'),
(42, 'CAPONE BEGE', 350000000, 'bege.png'),
(43, 'SCRATCHMEN APOO', 350000000, 'apoo.png'),
(44, 'DON QUICHOTTE DOFLAMINGO', 340000000, 'doflamingo.png'),
(45, 'PEKOMS', 330000000, 'pekoms.png'),
(46, 'CAVENDISH', 330000000, 'cavendish.png'),
(47, 'JEWERLY BONNEY', 320000000, 'bonney.png'),
(48, 'BASIL HAWKINS', 320000000, 'moria.png'),
(49, 'LINDBERGH', 316000000, 'lindbergh.png'),
(50, 'CESAR CLOWN', 300000000, 'cesar.png'),
(51, 'CHARLOTTE DAIFUKU', 300000000, 'daifuku.png'),
(52, 'CHHARLOTTE OVEN', 300000000, 'oven.png'),
(53, 'MORLEY', 293000000, 'morley.png'),
(54, 'PAGE ONE', 290000000, 'pageone.png'),
(55, 'FISHER TIGER', 230000000, 'fishertiger.png'),
(56, 'X DRAKE', 220000000, 'drake.png'),
(57, 'CARIBOU', 210000000, 'caribou.png'),
(58, 'SQUARDO', 210000000, 'squardo.png'),
(59, 'SAI', 210000000, 'sai.png'),
(60, 'KILLER', 200000000, 'killer.png'),
(61, 'BARTOLOMEO', 200000000, 'bartolomeo.png'),
(62, 'BELLAMY', 195000000, 'bellamy.png'),
(63, 'CORIBOU', 190000000, 'coribou.png'),
(64, 'ORLUMBUS', 148000000, 'orlumbus.png'),
(65, 'CHARLOTTE MONT D\'OR', 120000000, 'montdor.png'),
(66, 'UROUGE', 108000000, 'urouge.png'),
(67, 'BOBBIN', 105000000, 'bobbin.png'),
(68, 'DORRY', 100000000, 'dorry.png'),
(69, 'BROGY', 100000000, 'brogy.png'),
(70, 'DIAMANTE', 99000000, 'diamante.png'),
(71, 'PICA', 99000000, 'pica.png'),
(72, 'TREBOL', 99000000, 'trebol.png'),
(73, 'VITO', 95000000, 'vito.png'),
(74, 'ROCKSTAR', 94000000, 'rockstar.png'),
(75, 'ALBION', 92000000, 'albion.png'),
(76, 'GOTTI', 90000000, 'gotti.png'),
(77, 'LIP DOUGHTY', 88000000, 'doughty.png'),
(78, 'BARBE ROUSSE', 80060000, 'barberousse.png'),
(79, 'NICO OLVIA', 79000000, 'olvia.png'),
(80, 'MR 1', 75000000, 'mr1.png'),
(81, 'SULEIMAN', 67000000, 'suleiman.png'),
(82, 'LAO G', 61000000, 'laog.png'),
(83, 'SENOR PINK', 58000000, 'senorpink.png'),
(84, 'BARBE ROSE', 52000000, 'barberose.png'),
(85, 'SHOJO', 36000000, 'shojo.png'),
(86, 'MISS DOUBLEFINGER', 35000000, 'doublefinger.png'),
(87, 'BONCLAY', 32000000, 'bonclay.png'),
(88, 'GLADIUS', 31000000, 'gladius.png'),
(89, 'MISS GOLDENWEEK', 29000000, 'goldenweek.png'),
(90, 'DEMALO BLACK', 26000000, 'demaloblack.png'),
(91, 'MONT BLANC CRICKET', 25000000, 'cricket.png'),
(92, 'FOXY', 24000000, 'foxy.png'),
(93, 'MR 3', 24000000, 'mr3.png'),
(94, 'CHARLOTTE LOLA', 24000000, 'laura.png'),
(95, 'MASIRA', 23000000, 'masira.png'),
(96, 'SCOTCH', 20000000, 'scotch.png'),
(97, 'ROCK', 20000000, 'rock.png'),
(98, 'ARLONG', 20000000, 'arlong.png'),
(99, 'DON KRIEG', 17000000, 'donkrieg.png'),
(100, 'CAPTAIN KURO', 16000000, 'kuro.png'),
(101, 'DELLINGER', 15000000, 'dellinger.png'),
(102, 'BLUEJAM', 14300000, 'bluejam.png'),
(103, 'MISS MERRYCHRISTMAS', 14000000, 'merrychristmas.png'),
(104, 'GIN', 12000000, 'gin.png'),
(105, 'MACHVISE', 11000000, 'machvise.png'),
(106, 'MR 5', 10000000, 'mr5.png'),
(107, 'DJANGO', 9000000, 'django.png'),
(108, 'HIGUMA', 8000000, 'higuma.png'),
(109, 'OCTY', 8000000, 'octy.png'),
(110, 'CURLY DADAN', 7800000, 'dadan.png'),
(111, 'MISS VALENTINE', 7500000, 'valentine.png'),
(112, 'SHAM', 7000000, 'sham.png'),
(113, 'BUCHI', 7000000, 'buchi.png'),
(114, 'ALVIDA', 5000000, 'alvida.png'),
(115, 'MR 4', 3200000, 'mr4.png'),
(116, 'TONY TONY CHOPPER', 1000, 'chopper.png'),
(117, 'BEPO', 500, 'bepo.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
