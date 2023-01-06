-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 06 jan. 2023 à 10:27
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `seeders`
--

-- --------------------------------------------------------

--
-- Structure de la table `anne_formation`
--

CREATE TABLE `anne_formation` (
  `id` int(10) UNSIGNED NOT NULL,
  `Annee_scolaire` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `anne_formation`
--

INSERT INTO `anne_formation` (`id`, `Annee_scolaire`) VALUES
(1, '2011-1984'),
(2, '1975-2008');

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prenom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Adress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_naissance` date DEFAULT NULL,
  `Image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id`, `Nom`, `Prenom`, `Email`, `Phone`, `Adress`, `CIN`, `Date_naissance`, `Image`) VALUES
(1, 'Tatyana', 'Gibson', 'hkonopelski@hotmail.com', '1-520-726-3788', '235 Loraine Lock Apt. 566\nPort Dejuanmouth, WV 30568-5973', 'Apt. 939', '1981-06-09', 'https://via.placeholder.com/1x0.png/0000ee?text=1+debitis'),
(2, 'Christy', 'Pfannerstill', 'alexandra61@gmail.com', '+1 (540) 272-6794', '96225 Mercedes Freeway\nNew Mabelfurt, UT 32735-9751', 'Suite 942', '1971-03-20', 'https://via.placeholder.com/1x0.png/008866?text=1+quam'),
(3, 'Grady', 'Gottlieb', 'leffler.stephanie@yahoo.com', '+1-317-356-2195', '61143 Reynolds Lock\nGorczanyport, MO 95994', 'Suite 373', '2001-12-03', 'https://via.placeholder.com/1x0.png/00aacc?text=1+animi'),
(4, 'Gonzalo', 'Turcotte', 'randi.beer@hotmail.com', '1-458-518-7018', '6350 Lesly Freeway Suite 866\nSouth Nicholaus, SC 54541-4286', 'Apt. 435', '2009-09-11', 'https://via.placeholder.com/1x0.png/00aa33?text=1+qui'),
(5, 'Antonietta', 'Goodwin', 'kertzmann.sallie@gmail.com', '+13523227223', '32905 Kassandra Mill Suite 178\nNew Walton, NV 93639', 'Suite 450', '2004-08-10', 'https://via.placeholder.com/1x0.png/00eeff?text=1+possimus');

-- --------------------------------------------------------

--
-- Structure de la table `brief`
--

CREATE TABLE `brief` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Date_affectation` date DEFAULT NULL,
  `Preparation_brief_id` int(10) UNSIGNED DEFAULT NULL,
  `Apprenant_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brief`
--

INSERT INTO `brief` (`id`, `Date_affectation`, `Preparation_brief_id`, `Apprenant_id`) VALUES
(1, '1982-04-13', 2, 3),
(2, '1974-01-15', 2, 1),
(3, '1994-12-07', 4, 3),
(4, '2009-08-06', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom_formateur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prenom_formateur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email_formateur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Adress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formateur`
--

INSERT INTO `formateur` (`id`, `Nom_formateur`, `Prenom_formateur`, `Email_formateur`, `Phone`, `Adress`, `CIN`, `Image`) VALUES
(1, 'Delphia', 'Murray', 'jessy.kozey@hotmail.com', '657.212.3109', '9975 Magali Stream Apt. 985\nMalvinamouth, HI 20701-4071', 'Suite 185', 'https://via.placeholder.com/1x0.png/00eeaa?text=1+sint'),
(2, 'Mario', 'Walsh', 'omohr@will.com', '+1-570-526-1529', '7233 Skiles Knoll\nEugenefurt, HI 68955', 'Apt. 946', 'https://via.placeholder.com/1x0.png/002200?text=1+quasi');

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom_groupe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Annee_formation_id` int(10) UNSIGNED DEFAULT NULL,
  `Formateur_id` int(10) UNSIGNED DEFAULT NULL,
  `Logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id`, `Nom_groupe`, `Annee_formation_id`, `Formateur_id`, `Logo`) VALUES
(1, 'Joe Steuber', 1, 1, 'https://via.placeholder.com/1x0.png/0077ee?text=1+voluptatibus'),
(2, 'Enola Wolf', 2, 2, 'https://via.placeholder.com/1x0.png/00bb33?text=1+omnis');

-- --------------------------------------------------------

--
-- Structure de la table `groupes_apprenant`
--

CREATE TABLE `groupes_apprenant` (
  `id` int(10) UNSIGNED NOT NULL,
  `Groupe_id` int(10) UNSIGNED DEFAULT NULL,
  `Apprenant_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes_apprenant`
--

INSERT INTO `groupes_apprenant` (`id`, `Groupe_id`, `Apprenant_id`) VALUES
(1, 1, 3),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `groupes_preparation_brief`
--

CREATE TABLE `groupes_preparation_brief` (
  `id` int(10) UNSIGNED NOT NULL,
  `Apprenant_preparation_brief_id` bigint(20) UNSIGNED NOT NULL,
  `Groupe_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupes_preparation_brief`
--

INSERT INTO `groupes_preparation_brief` (`id`, `Apprenant_preparation_brief_id`, `Groupe_id`) VALUES
(1, 3, 2),
(2, 2, 2),
(3, 4, 2),
(4, 1, 2),
(5, 3, 2),
(6, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_27_080903_create_formateur_table', 1),
(6, '2022_12_27_081119_create_anne_formation_table', 1),
(7, '2022_12_27_081822_create_groupes_table', 1),
(8, '2022_12_27_081850_create_apprenant_table', 1),
(9, '2022_12_27_081956_create_preparation_brief_table', 1),
(10, '2022_12_27_082059_create_preparation_tache_table', 1),
(11, '2022_12_27_082129_create_groupes_apprenant_table', 1),
(12, '2022_12_27_082223_create_brief_table', 1),
(13, '2022_12_27_082246_create_tache_table', 1),
(14, '2022_12_27_082349_create_groupes_preparation_brief_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `preparation_brief`
--

CREATE TABLE `preparation_brief` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom_du_brief` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Duree` int(11) DEFAULT NULL,
  `Formateur_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `preparation_brief`
--

INSERT INTO `preparation_brief` (`id`, `Nom_du_brief`, `Description`, `Duree`, `Formateur_id`) VALUES
(1, 'Alessandra Simonis II', 'blanditiis', 0, 2),
(2, 'Jolie Romaguera I', 'ea', 3, 1),
(3, 'Alessia Rice', 'rem', 0, 2),
(4, 'Dr. Charley Rice', 'vero', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `preparation_tache`
--

CREATE TABLE `preparation_tache` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nom_tache` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Duree` int(11) DEFAULT NULL,
  `Preparation_brief_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `preparation_tache`
--

INSERT INTO `preparation_tache` (`id`, `Nom_tache`, `Description`, `Duree`, `Preparation_brief_id`) VALUES
(1, 'Ms. Eugenia Morar', 'in', 4, 3),
(2, 'Miss Kailey Bartoletti', 'eum', 2, 3),
(3, 'Prof. Imelda Ernser', 'pariatur', 9, 4),
(4, 'August O\'Connell', 'autem', 0, 1),
(5, 'Lorine Kulas', 'ad', 9, 1),
(6, 'Daren Nicolas', 'dicta', 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preparation_tache_id` int(10) UNSIGNED NOT NULL,
  `Apprenant_id` int(10) UNSIGNED NOT NULL,
  `apprenant_P_brief_id` bigint(20) UNSIGNED NOT NULL,
  `Etat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en pouse',
  `preparation_brief_id` int(10) UNSIGNED NOT NULL,
  `date_debut` timestamp NULL DEFAULT NULL,
  `date_fin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tache`
--

INSERT INTO `tache` (`id`, `preparation_tache_id`, `Apprenant_id`, `apprenant_P_brief_id`, `Etat`, `preparation_brief_id`, `date_debut`, `date_fin`) VALUES
(1, 4, 4, 4, 'terminer', 3, '2002-01-24 23:00:00', '2002-11-11 23:00:00'),
(2, 2, 2, 3, 'en pause', 2, '1977-05-12 23:00:00', '2006-10-20 23:00:00'),
(3, 1, 4, 3, 'en pause', 4, '2012-02-20 23:00:00', '2022-01-15 23:00:00'),
(4, 3, 5, 1, 'terminer', 1, '2014-08-20 23:00:00', '2005-04-05 00:00:00'),
(5, 1, 2, 2, 'terminer', 4, '1981-09-14 23:00:00', '2021-08-11 23:00:00'),
(6, 2, 4, 4, 'en cours', 1, '1995-01-14 23:00:00', '2006-11-10 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `google_id`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nada Stito', 'nadastito1087@gmail.com', NULL, NULL, '101336173057199811996', NULL, NULL, '2023-01-06 08:23:51', '2023-01-06 08:23:51');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `anne_formation`
--
ALTER TABLE `anne_formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `brief`
--
ALTER TABLE `brief`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brief_apprenant_id_foreign` (`Apprenant_id`),
  ADD KEY `brief_preparation_brief_id_foreign` (`Preparation_brief_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupes_annee_formation_id_foreign` (`Annee_formation_id`),
  ADD KEY `groupes_formateur_id_foreign` (`Formateur_id`);

--
-- Index pour la table `groupes_apprenant`
--
ALTER TABLE `groupes_apprenant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupes_apprenant_groupe_id_foreign` (`Groupe_id`),
  ADD KEY `groupes_apprenant_apprenant_id_foreign` (`Apprenant_id`);

--
-- Index pour la table `groupes_preparation_brief`
--
ALTER TABLE `groupes_preparation_brief`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupes_preparation_brief_apprenant_preparation_brief_id_foreign` (`Apprenant_preparation_brief_id`),
  ADD KEY `groupes_preparation_brief_groupe_id_foreign` (`Groupe_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `preparation_brief`
--
ALTER TABLE `preparation_brief`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preparation_brief_formateur_id_foreign` (`Formateur_id`);

--
-- Index pour la table `preparation_tache`
--
ALTER TABLE `preparation_tache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preparation_tache_preparation_brief_id_foreign` (`Preparation_brief_id`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tache_preparation_tache_id_foreign` (`preparation_tache_id`),
  ADD KEY `tache_apprenant_p_brief_id_foreign` (`apprenant_P_brief_id`),
  ADD KEY `tache_apprenant_id_foreign` (`Apprenant_id`),
  ADD KEY `tache_preparation_brief_id_foreign` (`preparation_brief_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `anne_formation`
--
ALTER TABLE `anne_formation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `brief`
--
ALTER TABLE `brief`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `groupes_apprenant`
--
ALTER TABLE `groupes_apprenant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `groupes_preparation_brief`
--
ALTER TABLE `groupes_preparation_brief`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preparation_brief`
--
ALTER TABLE `preparation_brief`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `preparation_tache`
--
ALTER TABLE `preparation_tache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tache`
--
ALTER TABLE `tache`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `brief`
--
ALTER TABLE `brief`
  ADD CONSTRAINT `brief_apprenant_id_foreign` FOREIGN KEY (`Apprenant_id`) REFERENCES `apprenant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brief_preparation_brief_id_foreign` FOREIGN KEY (`Preparation_brief_id`) REFERENCES `preparation_brief` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD CONSTRAINT `groupes_annee_formation_id_foreign` FOREIGN KEY (`Annee_formation_id`) REFERENCES `anne_formation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groupes_formateur_id_foreign` FOREIGN KEY (`Formateur_id`) REFERENCES `formateur` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `groupes_apprenant`
--
ALTER TABLE `groupes_apprenant`
  ADD CONSTRAINT `groupes_apprenant_apprenant_id_foreign` FOREIGN KEY (`Apprenant_id`) REFERENCES `apprenant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groupes_apprenant_groupe_id_foreign` FOREIGN KEY (`Groupe_id`) REFERENCES `groupes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `groupes_preparation_brief`
--
ALTER TABLE `groupes_preparation_brief`
  ADD CONSTRAINT `groupes_preparation_brief_apprenant_preparation_brief_id_foreign` FOREIGN KEY (`Apprenant_preparation_brief_id`) REFERENCES `brief` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groupes_preparation_brief_groupe_id_foreign` FOREIGN KEY (`Groupe_id`) REFERENCES `groupes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `preparation_brief`
--
ALTER TABLE `preparation_brief`
  ADD CONSTRAINT `preparation_brief_formateur_id_foreign` FOREIGN KEY (`Formateur_id`) REFERENCES `formateur` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `preparation_tache`
--
ALTER TABLE `preparation_tache`
  ADD CONSTRAINT `preparation_tache_preparation_brief_id_foreign` FOREIGN KEY (`Preparation_brief_id`) REFERENCES `preparation_brief` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `tache`
--
ALTER TABLE `tache`
  ADD CONSTRAINT `tache_apprenant_id_foreign` FOREIGN KEY (`Apprenant_id`) REFERENCES `apprenant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tache_apprenant_p_brief_id_foreign` FOREIGN KEY (`apprenant_P_brief_id`) REFERENCES `brief` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tache_preparation_brief_id_foreign` FOREIGN KEY (`preparation_brief_id`) REFERENCES `preparation_brief` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tache_preparation_tache_id_foreign` FOREIGN KEY (`preparation_tache_id`) REFERENCES `preparation_tache` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
