-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2021 at 02:23 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Login` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Login`, `Password`) VALUES
(1, 'admin', 'admin1234'),
(2, 'Yoann', 'password59');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `Id_article` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Article` text NOT NULL,
  `Categorie` varchar(255) NOT NULL,
  `Date_creation` datetime NOT NULL,
  `Auteur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`Id_article`, `Titre`, `Article`, `Categorie`, `Date_creation`, `Auteur`) VALUES
(11, 'La technique de l’échec musculaire', 'Pour qu’un muscle puisse se développer, il doit devenir plus fort et s’adapter en permanence à des charges plus lourdes. Installé dans sa zone de confort, il n’a pas de raison de se renforcer et d’accroître ses performances. C’est en l’obligeant à se dépasser qu’il devient plus fort et par conséquent plus volumineux.<br />\r\n<br />\r\nC’est l’ultime répétition, faite avec toute l’énergie qui vous reste, qui est la répétition la plus utile au développement. Lors des séances d’entraînement, les répétitions précédentes ne sont que le moyen d’arriver à celle qui permet de progresser.  ', 'Dépasser ses limites', '2021-03-08 09:28:58', 'Jules Defever'),
(12, 'Le bilan athlétique', 'Il est parfois difficile de mesurer sa progression quand on pratique de la musculation. Impatient de voir les résultats des efforts consentis tant sur le plan des entrainements que nutritionnel, nous attendons tous que le reflet du miroir nous révèle les transformations.<br />\r\n<br />\r\nMalheureusement, la vitesse du développement de nos muscles n’est pas celle de nos envies. Il est parfois nécessaire de faire appel à autre chose que notre image pour mesurer objectivement les progrès. On observe bien de petits changements, le corps est plus tonique, les bras font apparaître des galbes encore inconnus jusque-là. La taille s’affine, les cuisses semblent plus massives… mais qu’en est-il vraiment ?', 'Bilan Athlétique', '2021-03-08 09:29:40', 'Thomas Amara'),
(13, 'Les exercices les plus complets', 'La pratique de la musculation peut avoir de nombreux objectifs. Certains sportifs font de la musculation en complément d’un autre sport afin d’y être plus performants. D’autres cherchent à gagner de la force « pure » en vue d’améliorer leurs performances dans des disciplines telles que l’haltérophilie ou le power lifting. Les derniers seront plutôt à la recherche de l’amélioration de leur physique tant sur le plan de l’esthétique que de la santé.<br />\r\n<br />\r\nPour ces objectifs, de nombreux exercices sont à notre disposition mais il est parfois difficile de faire le bon choix. On a tendance à opter pour ses exercices préférés. Alors que ce ne sont pas forcément les plus efficaces. Il arrive aussi qu’on confonde exercices de base ou d’isolation. S’il fallait n’en garder que quelques-uns, quels exercices choisirait-on?', 'Conseils exercices', '2021-03-08 09:30:23', 'Boris Dhaene');

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

CREATE TABLE `commentaires` (
  `Id` int(11) NOT NULL,
  `Id_article` int(11) DEFAULT '0',
  `Pseudo` varchar(255) NOT NULL,
  `Commentaire` varchar(255) NOT NULL,
  `Date_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`Id`, `Id_article`, `Pseudo`, `Commentaire`, `Date_publication`) VALUES
(15, 13, 'OuiOui', 'Bonne article', '2021-03-08 14:43:22'),
(16, 13, 'Garfield', 'test', '2021-03-08 14:45:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`Id_article`);

--
-- Indexes for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_article` (`Id_article`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `Id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`Id_article`) REFERENCES `article` (`Id_article`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
