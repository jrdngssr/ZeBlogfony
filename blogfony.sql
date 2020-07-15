-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 15 juil. 2020 à 21:10
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blogfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgsrc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreate` datetime NOT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `imgsrc`, `datecreate`, `updatedate`) VALUES
(41, 'Islande', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://img-4.linternaute.com/r8dYXJxrZiaJXdQmgi-UG6140p4=/1080x/smart/c2e8f1b193564f388e115296dd525528/ccmcms-linternaute/11293348.jpg', '2020-07-08 06:18:03', NULL),
(42, 'Welch', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://media-cdn.tripadvisor.com/media/photo-s/10/58/09/9c/welch.jpg', '2020-07-03 07:50:27', NULL),
(43, 'Japon', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://www.routesdumonde.com/wp-content/uploads/2019/06/Thumbnail-Japon.jpg', '2020-07-02 21:51:39', NULL),
(44, 'Atlantide', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://cdn-images-1.medium.com/max/900/1*tKp60qDXYlkmSJFdRv2NGg.jpeg', '2020-07-25 03:54:19', NULL),
(45, 'Aldebaran', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://www.qualitativelife.com/civilisations/files/2016/05/aldebaran-star-alpha-tauri.jpg', '2020-07-07 07:07:07', NULL),
(46, 'Nouvelle-Zélande', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://lepetitjournal.com/sites/default/files/styles/main_article/public/2020-04/%C3%96mer%20Faruk%20Bekdemir%20-%20NZ%20photo%20Unsplash.jpg?itok=ZtAPpcFd', '2020-07-28 17:27:11', NULL),
(47, 'Porchetta', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://barbecuebible.com/wp-content/uploads/2019/08/kalamazoo-wood-fired-porchetta-1024x640.jpg', '2020-07-01 11:00:10', NULL),
(48, 'Astrolabe', 'Et fabricarum ut sub ipso ob molitioni culpasse enim adminicula.', 'https://image.jimcdn.com/app/cms/image/transf/dimension=501x1024:format=jpg/path/s36e9e592af8a7cbf/image/i21e7788fdba450bc/version/1480680384/image.jpg', '2020-07-24 09:21:47', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `articles_id` int(11) DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecreate` datetime NOT NULL,
  `updatedate` datetime DEFAULT NULL,
  `username` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9BEC0C4A76ED395` (`user_id`),
  KEY `IDX_D9BEC0C41EBAF6CC` (`articles_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `user_id`, `articles_id`, `contenu`, `datecreate`, `updatedate`, `username`) VALUES
(1, 3, 41, 'Oh c\'est chouette comme photo!', '2020-07-15 15:15:02', NULL, 'Lolo'),
(2, 1, 41, 'Il doit faire froid là bas!', '2020-07-15 15:15:43', NULL, 'toto'),
(3, 3, 41, 'Ah ouais pas faux. Je me demande si on baigne habillé chez eux?', '2020-07-15 15:19:19', NULL, 'Lolo'),
(6, 3, 48, 'Oh la belle montre!', '2020-07-15 06:31:11', NULL, 'Lolo'),
(7, 1, 46, 'Kamaté Kamaté ha ...', '2020-07-15 20:22:09', NULL, 'toto'),
(8, 1, 44, 'J\'ai toujours voulu y aller.', '2015-01-01 04:10:00', NULL, 'toto'),
(9, 2, 45, 'Un peu plus prêt des étoiles...', '2020-07-21 09:11:56', NULL, 'jojo'),
(10, 2, 42, 'Un petit tour au BURO?', '2020-07-05 17:17:34', NULL, 'jojo'),
(11, 3, 47, 'C\'est vegan?', '2020-07-11 00:00:00', NULL, 'Lolo'),
(12, 4, 43, '...', '2020-09-21 00:11:25', NULL, 'Rooter'),
(13, 4, 46, 'Il y a de jolies paysages la-bas.', '2020-06-23 19:21:00', NULL, 'Rooter');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200714162720', '2020-07-14 16:27:35', 122),
('DoctrineMigrations\\Version20200715171943', '2020-07-15 17:20:01', 146);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`) VALUES
(1, 'toto', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ak94VU45OXhyZjlVUjY5Sg$YKLbxCvtk4h1UC/OsetZJszlGQLmnUoo+gCExBgp0g4', 'toto@toto.fr'),
(2, 'jojo', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dmlXb3JRL2tsTHg3Y3I2WQ$QYqFqezkGdvbmHJ606vcHCNOictKT8zEwxVBZMb0uW0', 'jojo@jojo.fr'),
(3, 'Lolo', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dkEzVHZKY3dWRVJPTDVsQw$HcBq5vgOb/PQOUNH+OSNEaMGs30+eZi8qWUdVZ7KI3Y', 'lolo@lolo.fr'),
(4, 'Rooter', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$TnB6YURlbHl2VkdkMy5IYQ$l26Fc8rdSVgxjjZRPVqvlzYwpvWix522yBlkPidfIv8', 'rooter@rooter.fr');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_D9BEC0C41EBAF6CC` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `FK_D9BEC0C4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
