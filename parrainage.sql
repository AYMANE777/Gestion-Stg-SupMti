-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 09 fév. 2025 à 15:19
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parrainage`
--

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `title` varchar(85) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `attachment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `activities`
--

INSERT INTO `activities` (`activity_id`, `title`, `description`, `author`, `added_date`, `attachment`) VALUES
(1, 'test', 'test', 'Idrissi Mohammed', '2025-05-31 02:05:49', '../uploads/new2.png'),
(2, 'titre', 'teste', 'Idrissi Mohammed', '2025-06-11 11:06:10', '../uploads/SupMTI-logo-2.png'),
(3, 'stage', 'test', 'Raghib Mohammed', '2025-02-04 07:02:34', '../uploads/supmti-logo.png');

-- --------------------------------------------------------

--
-- Structure de la table `cad`
--

CREATE TABLE `cad` (
  `id` int(1) NOT NULL,
  `stagiaire_mat` varchar(20) NOT NULL,
  `fonction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cad`
--

INSERT INTO `cad` (`id`, `stagiaire_mat`, `fonction`) VALUES
(6, '2002102111018', 'Externe'),
(7, '1988042411018', 'Interne'),
(8, '2005060201623', 'student');

-- --------------------------------------------------------

--
-- Structure de la table `employés`
--

CREATE TABLE `employés` (
  `cin` varchar(60) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `fonction` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employés`
--

INSERT INTO `employés` (`cin`, `nom`, `prenom`, `fonction`, `password`) VALUES
('A548410', 'Said', 'Mohamed', 'Directeur', 'aa'),
('Z663404', 'Mohammed', 'Raghib', 'Conseilleur', 'aa');

-- --------------------------------------------------------

--
-- Structure de la table `engagements`
--

CREATE TABLE `engagements` (
  `eng_id` int(11) NOT NULL,
  `stagiaire_mat` varchar(20) NOT NULL,
  `groupe_id` varchar(20) NOT NULL,
  `date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `engagements`
--

INSERT INTO `engagements` (`eng_id`, `stagiaire_mat`, `groupe_id`, `date_creation`) VALUES
(1, '1999041511018', '1', '2025-05-31'),
(2, '2002043000256', '1', '2025-06-11'),
(3, '2002102111018', '2', '2025-02-04');

-- --------------------------------------------------------

--
-- Structure de la table `entretiens`
--

CREATE TABLE `entretiens` (
  `entretien_id` int(11) NOT NULL,
  `stagiaire_mat` varchar(20) NOT NULL,
  `formateur_mat` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `outil` varchar(50) NOT NULL,
  `date_entretien` varchar(50) NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `subject` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `entretiens`
--

INSERT INTO `entretiens` (`entretien_id`, `stagiaire_mat`, `formateur_mat`, `type`, `outil`, `date_entretien`, `heure_debut`, `heure_fin`, `subject`, `description`) VALUES
(2, '2002102111018', '19640215358', 'À Distance', 'Microsoft Teams', '2025-05-31', '14:05:00', '16:10:00', 'L&apos;adaptation avec la classe', 'Une discussion sur les problémes qui a affronté le stagiaire avec l&apos;integration.');

-- --------------------------------------------------------

--
-- Structure de la table `formateurs`
--

CREATE TABLE `formateurs` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `formation_year` varchar(50) NOT NULL,
  `groupe_id` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formateurs`
--

INSERT INTO `formateurs` (`matricule`, `nom`, `prenom`, `module`, `formation_year`, `groupe_id`, `password`) VALUES
('19640215358', 'Ayoub', 'Mahi', 'ASP.NET', '2022', 1, 'aa'),
('19791102302', 'Mortada', 'karib', 'Communication', '2022', 2, 'eerer');

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `groupe_id` int(11) NOT NULL,
  `groupe_nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`groupe_id`, `groupe_nom`) VALUES
(1, '2GI'),
(2, '3 GI ISI');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE `inscriptions` (
  `inscription_id` int(11) NOT NULL,
  `stagiaire_mat` varchar(20) NOT NULL,
  `groupe_id` varchar(20) NOT NULL,
  `date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`inscription_id`, `stagiaire_mat`, `groupe_id`, `date_creation`) VALUES
(1, '2002082700277', '1', '2025-05-31'),
(2, '2002102111018', '1', '2025-06-11'),
(3, '2002102111018', '2', '2025-02-04');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_sent` datetime NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `isRead` bit(1) NOT NULL,
  `isDeleted` bit(1) NOT NULL,
  `isStared` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`message_id`, `subject`, `content`, `date_sent`, `sender_id`, `receiver_id`, `isRead`, `isDeleted`, `isStared`) VALUES
(1, 'J&apos;ai un problème avec mon compte!', '&lt;p&gt;&lt;em&gt;Bonjour Monsieur,&lt;/em&gt;&lt;/p&gt;&lt;p&gt;j&apos;ai un probléme avec mon compte, j&apos;ai pas l&apos;access de réclamer&lt;/p&gt;', '2025-05-31 01:57:46', '2002082700154', '19640215358', b'1', b'0', 0),
(2, 'Quand nous avons notre dernier examen?', '&lt;p&gt;&lt;em&gt;Bonjour Monsieur,&lt;/em&gt;&lt;/p&gt;&lt;p&gt;Est-il possible de m&apos;informer de la date du dernier examen ?&lt;/p&gt;', '2025-05-31 02:00:06', '2001111000896', '19640215358', b'1', b'0', 0),
(3, 'test', '&lt;p&gt;test&lt;/p&gt;', '2025-05-31 02:25:35', '2002082700154', '19640215358', b'1', b'0', 0),
(4, 'test', '&lt;p&gt;test&lt;/p&gt;', '2025-05-31 02:26:26', '19640215358', '2002082700154', b'1', b'0', 0),
(5, 'mon permier', '&lt;p&gt;tset&lt;/p&gt;', '2025-06-11 11:14:20', '2002082700154', '19640215358', b'1', b'0', 0),
(6, 'a propos du projet', '&lt;p&gt;problem de code &lt;/p&gt;', '2025-02-04 07:46:12', '2002102111018', '19640215358', b'0', b'0', 0),
(7, 'salut', '&lt;p&gt;bonjour&lt;/p&gt;', '2025-02-04 07:48:00', '19640215358', '2001052700277', b'0', b'0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `receiver_id` varchar(50) NOT NULL,
  `action` text NOT NULL,
  `sender_id` varchar(50) NOT NULL,
  `isRead` int(2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `receiver_id`, `action`, `sender_id`, `isRead`, `date`) VALUES
(1, '19640215358', 'a envoyé un message', '2002082700154', 1, '2025-05-31 01:05:46'),
(2, '19640215358', 'a envoyé un message', '2001111000896', 1, '2025-05-31 02:05:06'),
(3, '19640215358', 'a envoyé un message', '2002082700154', 1, '2025-05-31 02:05:35'),
(4, '2002082700154', 'a envoyé un message', '19640215358', 1, '2025-05-31 02:05:26'),
(5, '19640215358', 'a envoyé un message', '2002082700154', 1, '2025-06-11 11:06:20'),
(6, '19640215358', 'a envoyé un message', '2002102111018', 1, '2025-02-04 07:02:12'),
(7, '2001052700277', 'a envoyé un message', '19640215358', 0, '2025-02-04 07:02:00');

-- --------------------------------------------------------

--
-- Structure de la table `problemes`
--

CREATE TABLE `problemes` (
  `problem_id` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date_reclamation` datetime NOT NULL,
  `statut` varchar(10) NOT NULL,
  `stagiaire_mat` varchar(20) NOT NULL,
  `type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `problemes`
--

INSERT INTO `problemes` (`problem_id`, `titre`, `content`, `date_reclamation`, `statut`, `stagiaire_mat`, `type`) VALUES
(1, 'J&apos;ai un probléme avec mon compte', 'test', '2025-02-01 02:21:14', 'Annulé', '2002102111018', 'Technique'),
(2, 'test', 'test', '2025-01-11 11:14:46', 'Résolu', '1988042411018', 'Administratif');

-- --------------------------------------------------------

--
-- Structure de la table `problemes_replies`
--

CREATE TABLE `problemes_replies` (
  `problem_reply_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `problem_reply` text NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `reply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `problemes_replies`
--

INSERT INTO `problemes_replies` (`problem_reply_id`, `problem_id`, `problem_reply`, `sender_id`, `reply_date`) VALUES
(1, 2, 'test', '2002082700154', '2025-01-11 11:15:06'),
(2, 2, 'test', '19640215358', '2025-02-11 11:22:58');

-- --------------------------------------------------------

--
-- Structure de la table `replies`
--

CREATE TABLE `replies` (
  `reply_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `reply` text NOT NULL,
  `reply_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `replies`
--

INSERT INTO `replies` (`reply_id`, `message_id`, `sender_id`, `reply`, `reply_date`) VALUES
(1, 2, '19640215358', 'Bonjour,\nLe jeudi prochain sera l&apos;examen', '2025-01-31 02:01:36'),
(2, 1, '19640215358', 'Bounjour,\nSi il&apos;est possible de me donne moi plus d&apos;informations.', '2025-02-01 02:02:22'),
(3, 4, '2002082700154', 'ets', '2025-02-02 02:26:37');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `formation_year` varchar(50) NOT NULL,
  `niveau` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `groupe_id` int(11) DEFAULT NULL,
  `filiere` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires`
--

INSERT INTO `stagiaires` (`matricule`, `nom`, `prenom`, `formation_year`, `niveau`, `password`, `groupe_id`, `filiere`) VALUES
('1988042411018', 'Semni', 'Rahim', '3eme année', 'Cycle ingénieur', '12345', 1, 'Ingenieurs de Systèmes Informatique\r\n'),
('2000012700154', 'Jelloul', 'Loraf', '2eme année', 'Cycle ingénieur', '12345', 1, 'Ingenieurs du Développement Informatique\r\n\r\n'),
('2001052700277', 'Tber', 'Nasser', '2eme année', 'Cycle ingénieur', '12345', 1, 'Ingenieurs d\'Intelligence Artificielle\r\n'),
('2002102111018', 'Briouel', 'Aymane', '3eme année', 'Cycle ingénieur', '12345', 2, 'Ingenieurs de Systèmes Informatique\r\n'),
('2003021400198', 'Bennani', 'Kobar', '2eme année', 'Cycle ingénieur', '12345', 1, 'Ingenieurs de Transformation Digitale Industrielle et Logistique\r\n'),
('2004033000256', 'bader', 'Tarik', '2eme année', 'Cycle supérieur', '12345', 1, 'Ingenieurs de Réseaux Informatique\r\n'),
('2005060201623', 'Armaoui', 'Ayoujil', '2eme année', 'Cycle ingénieur', '12345', 2, 'Ingenieurs du Data Science\r\n'),
('2009111000896', 'Korazon', 'Darif', '3eme année', 'Cycle ingénieur', '12345', 1, 'Ingenieurs de Développement Cloud et IoT\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `tutorials`
--

CREATE TABLE `tutorials` (
  `tuto_id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tutorials`
--

INSERT INTO `tutorials` (`tuto_id`, `title`, `youtube`, `description`) VALUES
(2, 'Activation de la carte SIM', 'https://www.example.com', 'Un petite tutoriel d&apos;activation cotre carte SIM .');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Index pour la table `cad`
--
ALTER TABLE `cad`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employés`
--
ALTER TABLE `employés`
  ADD PRIMARY KEY (`cin`);

--
-- Index pour la table `engagements`
--
ALTER TABLE `engagements`
  ADD PRIMARY KEY (`eng_id`);

--
-- Index pour la table `entretiens`
--
ALTER TABLE `entretiens`
  ADD PRIMARY KEY (`entretien_id`);

--
-- Index pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`groupe_id`);

--
-- Index pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`inscription_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `problemes`
--
ALTER TABLE `problemes`
  ADD PRIMARY KEY (`problem_id`);

--
-- Index pour la table `problemes_replies`
--
ALTER TABLE `problemes_replies`
  ADD PRIMARY KEY (`problem_reply_id`);

--
-- Index pour la table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`);

--
-- Index pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`tuto_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cad`
--
ALTER TABLE `cad`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `engagements`
--
ALTER TABLE `engagements`
  MODIFY `eng_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `entretiens`
--
ALTER TABLE `entretiens`
  MODIFY `entretien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `groupe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `inscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `problemes`
--
ALTER TABLE `problemes`
  MODIFY `problem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `problemes_replies`
--
ALTER TABLE `problemes_replies`
  MODIFY `problem_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `tuto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
