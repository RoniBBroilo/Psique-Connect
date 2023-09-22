-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2023 a las 21:42:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `psiqueconnect`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corriente`
--

CREATE TABLE `corriente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `corriente`
--

INSERT INTO `corriente` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Psicoanalisis', '2023-06-26 07:48:19', '2023-06-26 07:48:19'),
(2, 'Cognitivo-Conductual', '2023-06-26 07:48:26', '2023-06-26 07:48:26'),
(3, 'Humanista', '2023-06-26 07:48:26', '2023-06-26 07:48:26'),
(4, 'Clinica', '2023-06-26 07:48:26', '2023-06-26 07:48:26'),
(5, 'Psicologia Sistematica', '2023-06-26 07:48:26', '2023-06-26 07:48:26'),
(6, 'Gestalt', '2023-06-26 07:51:33', '2023-06-26 07:51:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Las Lajas', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(2, 'Manzano Amargo', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(3, 'Picun Leufu', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(4, 'Plottier', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(5, 'Rincon de Los Sauces', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(6, 'Varvarco', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(7, 'Villa Lago Meliquina', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(8, 'Zapala', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(9, 'Alumine', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(10, 'Arroyito', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(11, 'Centenario', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(12, 'Copahue', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(13, 'El Cholar', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(14, 'Huinganco', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(15, 'Las Ovejas', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(16, 'Moquehue', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(17, 'Piedra del Aguila', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(18, 'Primeros Pinos', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(19, 'San Martin de Los Andes', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(20, 'Villa el Chocón', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(21, 'Villa Pehuenia', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(22, 'Andacollo', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(23, 'Caviahue', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(24, 'Chos Malal', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(25, 'Cutral Co', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(26, 'El Huecu', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(27, 'Junin de los Andes', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(28, 'Loncopue', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(29, 'Neuquén Capital', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(30, 'Plaza Huincul', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(31, 'Pulmari', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(32, 'Tricao Malal', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(33, 'Villa la Angostura', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(34, 'Villa Traful', '2023-05-28 19:15:50', '2023-05-28 19:15:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_21_192639_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mutual`
--

CREATE TABLE `mutual` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mutual`
--

INSERT INTO `mutual` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'OSDIPP', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(2, 'Swiss Medical', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(3, 'Galeno', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(4, 'Mutual Policial Neuquén', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(5, 'Mutual Sancor', '2023-05-28 20:19:47', '2023-05-28 20:19:47'),
(6, 'OS Poder Judicial', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(7, 'SOSUNC', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(8, 'MEDICUS', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(9, 'ISSN', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(10, 'OS Camioneros', '2023-05-28 20:19:47', '2023-05-28 20:19:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tematica`
--

CREATE TABLE `tematica` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tematica`
--

INSERT INTO `tematica` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Agorafobia', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(2, 'Ansiedad', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(3, 'ArteTerapia', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(4, 'Ataques de Pánico', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(5, 'Dependencia Emocional', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(6, 'Depresión', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(7, 'Duelo', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(8, 'Estrés', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(9, 'Estrés Laboral', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(10, 'Insomnio', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(11, 'Laboral', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(12, 'LGBTIQ+', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(13, 'Análisis de Sueños', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(14, 'Perspectiva de Género', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(15, 'Adicciones', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(16, 'Ansiedad', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(17, 'Anorexia', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(18, 'Bulimia', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(19, 'Bullying', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(20, 'Familiar', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(21, 'Psicosomático', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(22, 'Sentido de la Vida', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(23, 'Neuropsicología', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(24, 'Trastornos Alimenticios', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(25, 'Estrés Postraumático', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(26, 'Trastornos de Personalidad', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(27, 'Terapia Vocacional', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(28, 'Enfermedad Crónica', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(29, 'TDAH', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(30, 'Meditación', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(31, 'Mindfulness', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(32, 'Adolescencia', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(33, 'Perinatal', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(34, 'TOC', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(35, 'Suicidio', '2023-05-28 19:15:50', '2023-05-28 19:15:50'),
(36, 'Logoterapia', '2023-05-28 19:15:50', '2023-05-28 19:15:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `codigo_area` varchar(50) NOT NULL,
  `telefono` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `corriente`
--
ALTER TABLE `corriente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `mutual`
--
ALTER TABLE `mutual`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `tematica`
--
ALTER TABLE `tematica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
