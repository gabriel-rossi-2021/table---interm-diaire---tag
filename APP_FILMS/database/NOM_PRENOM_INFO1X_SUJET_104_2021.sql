-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 09:05 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

--
-- Database: `rossi_gabriel_info1c_timbrage_bd_104`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_collaborateur`
--
DROP DATABASE if exists rossi_gabriel_info1c_timbrage_bd_104;

-- CrÃƒÂ©ation d'un nouvelle base de donnÃƒÂ©e

CREATE DATABASE IF NOT EXISTS rossi_gabriel_info1c_timbrage_bd_104;

-- Utilisation de cette base de donnÃƒÂ©e

USE rossi_gabriel_info1c_timbrage_bd_104;

CREATE TABLE `t_collaborateur` (
  `id_collaborateur` int(11) NOT NULL,
  `nom_famille` varchar(42) NOT NULL,
  `prenom` varchar(42) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_collaborateur`
--

INSERT INTO `t_collaborateur` (`id_collaborateur`, `nom_famille`, `prenom`, `role`) VALUES
(1, 'Rossi', 'Gabriel', 1),
(2, 'Maccaud', 'Olivier', 0),
(3, 'Skaloud', 'Matej', 0),
(4, 'Rossi', 'Maxime', 0),
(5, 'Urbano', 'Fabian', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_collaborateur_details_collaborateur`
--

CREATE TABLE `t_collaborateur_details_collaborateur` (
  `id_collaborateur_details_collaborateur` int(11) NOT NULL,
  `FK_collaborateur` int(11) NOT NULL,
  `FK_details_collaborateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_collaborateur_details_collaborateur`
--

INSERT INTO `t_collaborateur_details_collaborateur` (`id_collaborateur_details_collaborateur`, `FK_collaborateur`, `FK_details_collaborateur`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_collaborateur_horaires`
--

CREATE TABLE `t_collaborateur_horaires` (
  `id_collaborateur_horaires` int(11) NOT NULL,
  `FK_collaborateur` int(11) NOT NULL,
  `FK_horaires` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_collaborateur_horaires`
--

INSERT INTO `t_collaborateur_horaires` (`id_collaborateur_horaires`, `FK_collaborateur`, `FK_horaires`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_collaborateur_identification`
--

CREATE TABLE `t_collaborateur_identification` (
  `id_collaborateur_identification` int(11) NOT NULL,
  `FK_collaborateur` int(11) NOT NULL,
  `FK_identification` int(11) NOT NULL,
  `date_et_heure_arrivee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_et_heure_depart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_collaborateur_identification`
--

INSERT INTO `t_collaborateur_identification` (`id_collaborateur_identification`, `FK_collaborateur`, `FK_identification`, `date_et_heure_arrivee`, `date_et_heure_depart`) VALUES
(1, 1, 1, '2021-02-19 08:09:46', '2021-02-19 08:09:46'),
(2, 2, 2, '2021-02-19 08:09:46', '2021-02-19 08:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `t_collaborateur_specificite`
--

CREATE TABLE `t_collaborateur_specificite` (
  `id_collaborateur_specificite` int(11) NOT NULL,
  `FK_collaborateur` int(11) NOT NULL,
  `FK_specificite` int(11) NOT NULL,
  `date_et_heure` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_collaborateur_specificite`
--

INSERT INTO `t_collaborateur_specificite` (`id_collaborateur_specificite`, `FK_collaborateur`, `FK_specificite`, `date_et_heure`) VALUES
(1, 1, 1, '2021-02-19 08:11:12'),
(2, 2, 2, '2021-02-19 08:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `t_details_collaborateur`
--

CREATE TABLE `t_details_collaborateur` (
  `id_details_collaborateur` int(11) NOT NULL,
  `sexe` varchar(5) NOT NULL,
  `rue` varchar(50) NOT NULL,
  `numero_rue` int(11) NOT NULL,
  `npa` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `pays` varchar(20) NOT NULL,
  `telephone` int(50) NOT NULL,
  `date_entree_entreprise` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_details_collaborateur`
--

INSERT INTO `t_details_collaborateur` (`id_details_collaborateur`, `sexe`, `rue`, `numero_rue`, `npa`, `ville`, `pays`, `telephone`, `date_entree_entreprise`) VALUES
(1, 'Homme', 'Chemin de Rente', 4, 1030, 'Bussigny', 'Suisse', 788237818, '2021-02-19'),
(2, 'Homme', 'Chemin de la Couille', 69, 1004, 'Lausanne', 'Suisse', 775789289, '2021-02-22'),
(3, 'Homme', '', 43, 1020, 'Renens', 'Suisse', 789567438, '2021-03-02'),
(8, 'Femme', 'Chemn de cocagne', 12, 1030, 'Bussigny', 'Suisse', 782345235, '2021-03-01'),
(9, 'Femme', 'Chemin des Femmes', 32, 10343, 'Berlin', 'Allemagne', 776574656, '2021-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `t_horaires`
--

CREATE TABLE `t_horaires` (
  `id_horaires` int(11) NOT NULL,
  `date_et_heure_horaires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `est_un_timbrage` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_horaires`
--

INSERT INTO `t_horaires` (`id_horaires`, `date_et_heure_horaires`, `est_un_timbrage`) VALUES
(1, '2021-02-19 08:11:51', 1),
(2, '2021-02-19 08:11:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_identification`
--

CREATE TABLE `t_identification` (
  `id_identification` int(11) NOT NULL,
  `nom_utilisateur` varchar(30) NOT NULL,
  `mot_de_passe` varchar(30) NOT NULL,
  `courriel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_identification`
--

INSERT INTO `t_identification` (`id_identification`, `nom_utilisateur`, `mot_de_passe`, `courriel`) VALUES
(1, 'rossig', '1234', 'gabir2004@gmail.com'),
(2, 'maccaudo', '5678', 'olivier.maccaud@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `t_specificite`
--

CREATE TABLE `t_specificite` (
  `id_specificite` int(11) NOT NULL,
  `nb_heures_par_semaine` double NOT NULL,
  `nb_jours_vacance_par_an` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_specificite`
--

INSERT INTO `t_specificite` (`id_specificite`, `nb_heures_par_semaine`, `nb_jours_vacance_par_an`) VALUES
(1, 40, 30),
(2, 40, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_collaborateur`
--
ALTER TABLE `t_collaborateur`
  ADD PRIMARY KEY (`id_collaborateur`);

--
-- Indexes for table `t_collaborateur_details_collaborateur`
--
ALTER TABLE `t_collaborateur_details_collaborateur`
  ADD PRIMARY KEY (`id_collaborateur_details_collaborateur`),
  ADD KEY `FK_collaborateur` (`FK_collaborateur`,`FK_details_collaborateur`),
  ADD KEY `FK_details_collaborateur` (`FK_details_collaborateur`);

--
-- Indexes for table `t_collaborateur_horaires`
--
ALTER TABLE `t_collaborateur_horaires`
  ADD PRIMARY KEY (`id_collaborateur_horaires`),
  ADD KEY `FK_collaborateur` (`FK_collaborateur`),
  ADD KEY `FK_horaires` (`FK_horaires`);

--
-- Indexes for table `t_collaborateur_identification`
--
ALTER TABLE `t_collaborateur_identification`
  ADD PRIMARY KEY (`id_collaborateur_identification`),
  ADD KEY `FK_collaborateur` (`FK_collaborateur`),
  ADD KEY `FK_identification` (`FK_identification`);

--
-- Indexes for table `t_collaborateur_specificite`
--
ALTER TABLE `t_collaborateur_specificite`
  ADD PRIMARY KEY (`id_collaborateur_specificite`),
  ADD KEY `FK_collaborateur` (`FK_collaborateur`,`FK_specificite`),
  ADD KEY `FK_specificite` (`FK_specificite`);

--
-- Indexes for table `t_details_collaborateur`
--
ALTER TABLE `t_details_collaborateur`
  ADD PRIMARY KEY (`id_details_collaborateur`);

--
-- Indexes for table `t_horaires`
--
ALTER TABLE `t_horaires`
  ADD PRIMARY KEY (`id_horaires`);

--
-- Indexes for table `t_identification`
--
ALTER TABLE `t_identification`
  ADD PRIMARY KEY (`id_identification`);

--
-- Indexes for table `t_specificite`
--
ALTER TABLE `t_specificite`
  ADD PRIMARY KEY (`id_specificite`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_collaborateur`
--
ALTER TABLE `t_collaborateur`
  MODIFY `id_collaborateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_collaborateur_details_collaborateur`
--
ALTER TABLE `t_collaborateur_details_collaborateur`
  MODIFY `id_collaborateur_details_collaborateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_collaborateur_horaires`
--
ALTER TABLE `t_collaborateur_horaires`
  MODIFY `id_collaborateur_horaires` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_collaborateur_identification`
--
ALTER TABLE `t_collaborateur_identification`
  MODIFY `id_collaborateur_identification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_collaborateur_specificite`
--
ALTER TABLE `t_collaborateur_specificite`
  MODIFY `id_collaborateur_specificite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_details_collaborateur`
--
ALTER TABLE `t_details_collaborateur`
  MODIFY `id_details_collaborateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_horaires`
--
ALTER TABLE `t_horaires`
  MODIFY `id_horaires` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_identification`
--
ALTER TABLE `t_identification`
  MODIFY `id_identification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_specificite`
--
ALTER TABLE `t_specificite`
  MODIFY `id_specificite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_collaborateur_details_collaborateur`
--
ALTER TABLE `t_collaborateur_details_collaborateur`
  ADD CONSTRAINT `t_collaborateur_details_collaborateur_ibfk_1` FOREIGN KEY (`FK_collaborateur`) REFERENCES `t_collaborateur` (`id_collaborateur`),
  ADD CONSTRAINT `t_collaborateur_details_collaborateur_ibfk_2` FOREIGN KEY (`FK_details_collaborateur`) REFERENCES `t_details_collaborateur` (`id_details_collaborateur`);

--
-- Constraints for table `t_collaborateur_horaires`
--
ALTER TABLE `t_collaborateur_horaires`
  ADD CONSTRAINT `t_collaborateur_horaires_ibfk_1` FOREIGN KEY (`FK_collaborateur`) REFERENCES `t_collaborateur` (`id_collaborateur`),
  ADD CONSTRAINT `t_collaborateur_horaires_ibfk_2` FOREIGN KEY (`FK_horaires`) REFERENCES `t_horaires` (`id_horaires`);

--
-- Constraints for table `t_collaborateur_identification`
--
ALTER TABLE `t_collaborateur_identification`
  ADD CONSTRAINT `t_collaborateur_identification_ibfk_1` FOREIGN KEY (`FK_collaborateur`) REFERENCES `t_collaborateur` (`id_collaborateur`),
  ADD CONSTRAINT `t_collaborateur_identification_ibfk_2` FOREIGN KEY (`FK_identification`) REFERENCES `t_identification` (`id_identification`);

--
-- Constraints for table `t_collaborateur_specificite`
--
ALTER TABLE `t_collaborateur_specificite`
  ADD CONSTRAINT `t_collaborateur_specificite_ibfk_1` FOREIGN KEY (`FK_collaborateur`) REFERENCES `t_collaborateur` (`id_collaborateur`),
  ADD CONSTRAINT `t_collaborateur_specificite_ibfk_2` FOREIGN KEY (`FK_specificite`) REFERENCES `t_specificite` (`id_specificite`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;