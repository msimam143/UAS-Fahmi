-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for projek
CREATE DATABASE IF NOT EXISTS `projek` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `projek`;

-- Dumping structure for table projek.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table projek.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table projek.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.auth_permission: ~32 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add artikel', 7, 'add_artikel'),
	(26, 'Can change artikel', 7, 'change_artikel'),
	(27, 'Can delete artikel', 7, 'delete_artikel'),
	(28, 'Can view artikel', 7, 'view_artikel'),
	(29, 'Can add kategori', 8, 'add_kategori'),
	(30, 'Can change kategori', 8, 'change_kategori'),
	(31, 'Can delete kategori', 8, 'delete_kategori'),
	(32, 'Can view kategori', 8, 'view_kategori'),
	(33, 'Can add komen', 9, 'add_komen'),
	(34, 'Can change komen', 9, 'change_komen'),
	(35, 'Can delete komen', 9, 'delete_komen'),
	(36, 'Can view komen', 9, 'view_komen');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table projek.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.auth_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$bu1rJLJ4TYgC5trtH8fCo0$XkME4G+czXgQKJl3Dhe9vs6XyLiNU2KkgI89BcTz1c0=', '2022-12-24 00:55:32.893762', 1, 'admin', '', '', 'fahmi35@gmail.com', 1, 1, '2022-12-21 06:44:00.046309');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table projek.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table projek.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table projek.blog_artikel
CREATE TABLE IF NOT EXISTS `blog_artikel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` datetime(6) DEFAULT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_artikel_kategori_id_d850ff1f_fk_blog_kategori_id` (`kategori_id`),
  KEY `blog_artikel_slug_73a9d6d3` (`slug`),
  CONSTRAINT `blog_artikel_kategori_id_d850ff1f_fk_blog_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `blog_kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.blog_artikel: ~2 rows (approximately)
/*!40000 ALTER TABLE `blog_artikel` DISABLE KEYS */;
INSERT INTO `blog_artikel` (`id`, `judul`, `isi`, `tanggal`, `kategori_id`, `slug`, `gambar`) VALUES
	(2, 'ini brita satu', 'isi berita', '2022-12-21 07:10:50.507426', 1, NULL, NULL),
	(3, 'ini pengumuman', 'isi pengumuman satu', '2022-12-21 07:11:24.831972', 3, NULL, NULL);
/*!40000 ALTER TABLE `blog_artikel` ENABLE KEYS */;

-- Dumping structure for table projek.blog_kategori
CREATE TABLE IF NOT EXISTS `blog_kategori` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_kategori_slug_92bd33f7` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.blog_kategori: ~3 rows (approximately)
/*!40000 ALTER TABLE `blog_kategori` DISABLE KEYS */;
INSERT INTO `blog_kategori` (`id`, `nama`, `keterangan`, `slug`) VALUES
	(1, 'Berita satu baru', 'ini artikel artikel dengan kategori berita', 'berita-satu-baru'),
	(2, 'Pengumuman', 'penting woy', NULL),
	(3, 'info', 'info buat pengunjung', 'info');
/*!40000 ALTER TABLE `blog_kategori` ENABLE KEYS */;

-- Dumping structure for table projek.blog_komen
CREATE TABLE IF NOT EXISTS `blog_komen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime(6) DEFAULT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artikel_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_komen_artikel_id_82177ddd_fk_blog_artikel_id` (`artikel_id`),
  CONSTRAINT `blog_komen_artikel_id_82177ddd_fk_blog_artikel_id` FOREIGN KEY (`artikel_id`) REFERENCES `blog_artikel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.blog_komen: ~1 rows (approximately)
/*!40000 ALTER TABLE `blog_komen` DISABLE KEYS */;
INSERT INTO `blog_komen` (`id`, `tanggal`, `isi`, `email`, `artikel_id`) VALUES
	(1, '2022-12-22 19:42:07.382654', 'bagus bang', 'fahmi123@gmail.com', 2);
/*!40000 ALTER TABLE `blog_komen` ENABLE KEYS */;

-- Dumping structure for table projek.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.django_admin_log: ~18 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-12-21 06:45:00.270353', '1', 'artikel object (1)', 1, '[{"added": {}}]', 7, 1),
	(2, '2022-12-21 07:02:51.020575', '1', 'Berita', 1, '[{"added": {}}]', 8, 1),
	(3, '2022-12-21 07:03:26.833775', '2', 'Pengumuman', 1, '[{"added": {}}]', 8, 1),
	(4, '2022-12-21 07:04:26.974031', '1', 'halo semua', 3, '', 7, 1),
	(5, '2022-12-21 07:10:36.075247', '3', 'info', 1, '[{"added": {}}]', 8, 1),
	(6, '2022-12-21 07:10:50.512207', '2', 'ini brita satu', 1, '[{"added": {}}]', 7, 1),
	(7, '2022-12-21 07:11:24.834000', '3', 'ini pengumuman', 1, '[{"added": {}}]', 7, 1),
	(8, '2022-12-21 10:47:04.626319', '1', 'Berita satu', 2, '[{"changed": {"fields": ["Nama"]}}]', 8, 1),
	(9, '2022-12-21 12:18:20.753265', '1', 'Berita satu baru', 2, '[{"changed": {"fields": ["Nama"]}}]', 8, 1),
	(10, '2022-12-21 12:54:36.918022', '1', 'Berita satu baru', 2, '[]', 8, 1),
	(11, '2022-12-21 12:55:13.706853', '3', 'info', 2, '[]', 8, 1),
	(12, '2022-12-21 12:57:35.218568', '3', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(13, '2022-12-21 15:53:39.061278', '3', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(14, '2022-12-21 18:16:01.671857', 'None', 'halo dosen', 1, '[{"added": {}}]', 7, 1),
	(15, '2022-12-21 18:17:35.110757', 'None', 'halo pak rofi', 1, '[{"added": {}}]', 7, 1),
	(16, '2022-12-21 18:18:36.752023', 'None', 'halo', 1, '[{"added": {}}]', 7, 1),
	(17, '2022-12-21 18:21:46.291569', 'None', 'fahmi', 1, '[{"added": {}}]', 8, 1),
	(18, '2022-12-21 18:22:15.899347', 'None', 'info', 1, '[{"added": {}}]', 8, 1),
	(19, '2022-12-21 18:30:21.083897', 'None', 'halo dosen', 1, '[{"added": {}}]', 7, 1),
	(20, '2022-12-22 19:42:07.389079', '1', 'komen object (1)', 1, '[{"added": {}}]', 9, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table projek.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.django_content_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'blog', 'artikel'),
	(8, 'blog', 'kategori'),
	(9, 'blog', 'komen'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table projek.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.django_migrations: ~29 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-12-21 06:16:37.396165'),
	(2, 'auth', '0001_initial', '2022-12-21 06:16:38.122902'),
	(3, 'admin', '0001_initial', '2022-12-21 06:16:38.324072'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-21 06:16:38.356329'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-21 06:16:38.389573'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-21 06:16:38.531798'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-21 06:16:38.619001'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-12-21 06:16:38.686569'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-12-21 06:16:38.718137'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-12-21 06:16:38.800787'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-12-21 06:16:38.808026'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-21 06:16:38.837695'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-12-21 06:16:38.900233'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-21 06:16:38.962781'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-12-21 06:16:39.022396'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-12-21 06:16:39.061411'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-21 06:16:39.127552'),
	(18, 'sessions', '0001_initial', '2022-12-21 06:16:39.215675'),
	(19, 'blog', '0001_initial', '2022-12-21 06:29:36.121868'),
	(20, 'blog', '0002_alter_artikel_isi', '2022-12-21 06:40:20.169406'),
	(21, 'blog', '0003_artikel_tanggal', '2022-12-21 06:51:06.472160'),
	(22, 'blog', '0004_kategori', '2022-12-21 07:01:19.520105'),
	(23, 'blog', '0005_artikel_kategori', '2022-12-21 07:08:49.444403'),
	(24, 'blog', '0006_artikel_slug', '2022-12-21 10:44:29.592913'),
	(25, 'blog', '0007_kategori_slug', '2022-12-21 10:56:04.161837'),
	(26, 'blog', '0008_remove_kategori_slug', '2022-12-21 12:16:17.644377'),
	(27, 'blog', '0009_kategori_slug', '2022-12-21 12:26:06.688916'),
	(28, 'blog', '0010_artikel_gambar', '2022-12-21 12:50:19.866534'),
	(29, 'blog', '0011_komen', '2022-12-22 19:34:14.922679');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table projek.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table projek.django_session: ~6 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('2eghdpopwmbmbtshltekmivwqwb1sc7e', '.eJxVjDEOwjAMRe-SGUUxTezCyM4ZKsd2aQE1UtNOiLtDpQ6w_vfef7mO12Xo1mpzN6o7O3CH3y2zPGzagN55uhUvZVrmMftN8Tut_lrUnpfd_TsYuA7fOuRgEFBPkAGJMvXEbSOULLQptGBERzaMUWIjQggIihklgfaQGnXvD8bLNzw:1p8sp2:F6PikVmVXsxPEpC-BFQVVpJCMT5fOQS2ENi92pcGGXs', '2023-01-07 00:55:32.897461'),
	('356elmey0s51ku921851dr4h0swb9qrv', '.eJxVjDEOwjAMRe-SGUUxTezCyM4ZKsd2aQE1UtNOiLtDpQ6w_vfef7mO12Xo1mpzN6o7O3CH3y2zPGzagN55uhUvZVrmMftN8Tut_lrUnpfd_TsYuA7fOuRgEFBPkAGJMvXEbSOULLQptGBERzaMUWIjQggIihklgfaQGnXvD8bLNzw:1p81Nr:NLulRXdVKNsC-aiJ67irYnAQYvUehKlMiI3y-3Fd770', '2023-01-04 15:51:55.013364'),
	('6kidi2vqhrqadv6gicwbf6ud28ev8tit', '.eJxVjDEOwjAMRe-SGUUxTezCyM4ZKsd2aQE1UtNOiLtDpQ6w_vfef7mO12Xo1mpzN6o7O3CH3y2zPGzagN55uhUvZVrmMftN8Tut_lrUnpfd_TsYuA7fOuRgEFBPkAGJMvXEbSOULLQptGBERzaMUWIjQggIihklgfaQGnXvD8bLNzw:1p86DX:oz6hFXG96Z-GqcxRDCWnIYuN27Dw-pjW-y_xMomMIM4', '2023-01-04 21:01:35.629648'),
	('owdto6drbd9k1ebts9zbu91h0yici79t', '.eJxVjDEOwjAMRe-SGUUxTezCyM4ZKsd2aQE1UtNOiLtDpQ6w_vfef7mO12Xo1mpzN6o7O3CH3y2zPGzagN55uhUvZVrmMftN8Tut_lrUnpfd_TsYuA7fOuRgEFBPkAGJMvXEbSOULLQptGBERzaMUWIjQggIihklgfaQGnXvD8bLNzw:1p7sq8:4vVtTctoX5mhUlGIdO4XRK6yZxEoHVePFJwV-tkBUK8', '2023-01-04 06:44:32.264861'),
	('shvicwsnexgwpva0mjg7c5klr7mpbqmv', '.eJxVjDEOwjAMRe-SGUUxTezCyM4ZKsd2aQE1UtNOiLtDpQ6w_vfef7mO12Xo1mpzN6o7O3CH3y2zPGzagN55uhUvZVrmMftN8Tut_lrUnpfd_TsYuA7fOuRgEFBPkAGJMvXEbSOULLQptGBERzaMUWIjQggIihklgfaQGnXvD8bLNzw:1p8peM:Bt3BMdx90ozZkmC55XDYvPyDIvuM9l_3illuABtaLQc', '2023-01-06 21:32:18.700725'),
	('xnetun4btfirv5lf30yacmco5qopkmo4', '.eJxVjDEOwjAMRe-SGUUxTezCyM4ZKsd2aQE1UtNOiLtDpQ6w_vfef7mO12Xo1mpzN6o7O3CH3y2zPGzagN55uhUvZVrmMftN8Tut_lrUnpfd_TsYuA7fOuRgEFBPkAGJMvXEbSOULLQptGBERzaMUWIjQggIihklgfaQGnXvD8bLNzw:1p8Qr2:XxhsfzzJiVa7jhz7ZxJiQ12u1xtoEw_o8b7W62GgLJI', '2023-01-05 19:03:44.996718');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
