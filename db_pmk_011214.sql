/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.6.16 : Database - db_pmk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_pmk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dbpmk`;

/*Table structure for table `assigned_roles` */

DROP TABLE IF EXISTS `assigned_roles`;

CREATE TABLE `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `assigned_roles` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`description`) values (1,'admin','Administrator'),(2,'members','General User');

/*Table structure for table `login_attempts` */

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `login_attempts` */

/*Table structure for table `mast_jurusan` */

DROP TABLE IF EXISTS `mast_jurusan`;

CREATE TABLE `mast_jurusan` (
  `id_jurusan` smallint(8) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mast_jurusan` */

/*Table structure for table `mast_kelas` */

DROP TABLE IF EXISTS `mast_kelas`;

CREATE TABLE `mast_kelas` (
  `id_kelas` smallint(8) NOT NULL AUTO_INCREMENT,
  `id_jurusan` smallint(8) NOT NULL,
  `kelas` varchar(150) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mast_kelas` */

/*Table structure for table `mast_materi` */

DROP TABLE IF EXISTS `mast_materi`;

CREATE TABLE `mast_materi` (
  `id_materi` smallint(8) NOT NULL AUTO_INCREMENT,
  `materi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mast_materi` */

/*Table structure for table `mast_menu` */

DROP TABLE IF EXISTS `mast_menu`;

CREATE TABLE `mast_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `deskripsi` text,
  `link_image` varchar(255) DEFAULT '',
  `status_aktif` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `mast_menu` */

insert  into `mast_menu`(`id_menu`,`nama_menu`,`url`,`deskripsi`,`link_image`,`status_aktif`) values (1,'Beranda','frontend/beranda',NULL,'','Y');

/*Table structure for table `mast_penandatangan` */

DROP TABLE IF EXISTS `mast_penandatangan`;

CREATE TABLE `mast_penandatangan` (
  `id_penanda` smallint(8) NOT NULL AUTO_INCREMENT,
  `nama_penanda` varchar(150) NOT NULL,
  `jabatan` enum('Ketua','Sekretaris','Bendahara','Koordinator','Anggota') NOT NULL,
  PRIMARY KEY (`id_penanda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mast_penandatangan` */

/*Table structure for table `mast_periode` */

DROP TABLE IF EXISTS `mast_periode`;

CREATE TABLE `mast_periode` (
  `id_periode` smallint(8) NOT NULL AUTO_INCREMENT,
  `periode` varchar(50) NOT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mast_periode` */

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1416304629),('m130524_201442_init',1416304637);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2014_10_06_015017_create_jenis_kelamin_table',1),('2014_10_06_015420_create_agama_table',1),('2014_10_06_022154_create_users_table',1),('2014_10_15_152856_create_diklat_table',1),('2014_10_15_154427_create_pendidikan_table',1),('2014_10_19_083742_create_diklat_angkatan_table',1),('2014_10_19_083809_create_diklat_registrasi_table',1),('2014_10_19_084039_create_diklat_kelas_table',1),('2014_10_19_084632_create_registrasi_table',1),('2014_10_26_095014_create_registrasi_diklat_table',1),('2014_10_27_082543_create_diklat_prasyarat_table',1),('2014_11_20_113423_confide_setup_users_table',2),('2014_11_20_114404_entrust_setup_tables',3);

/*Table structure for table `migrations_ci` */

DROP TABLE IF EXISTS `migrations_ci`;

CREATE TABLE `migrations_ci` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `migrations_ci` */

insert  into `migrations_ci`(`version`) values (2);

/*Table structure for table `password_reminders` */

DROP TABLE IF EXISTS `password_reminders`;

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_reminders` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permission_role` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissions` */

/*Table structure for table `ref_level` */

DROP TABLE IF EXISTS `ref_level`;

CREATE TABLE `ref_level` (
  `level_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `Levelakses` varchar(50) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ref_level` */

insert  into `ref_level`(`level_id`,`Levelakses`) values (1,'Super Admin'),(2,'Administrator'),(3,'Pengurus'),(4,'Alumni'),(5,'Anggota');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `roles` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `order` int(11) NOT NULL,
  `isi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

/*Table structure for table `sys_sessions` */

DROP TABLE IF EXISTS `sys_sessions`;

CREATE TABLE `sys_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_sessions` */

insert  into `sys_sessions`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_data`) values ('8aab48961ea33ffb14babd7874ca94a1','::1','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36',1415378667,''),('cfe85f7c964a71f47a6eb7b9b481bdc7','::1','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36',1415378303,''),('f7e167d7c6bd66684933eaaa9bb6e12e','::1','Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36',1416287102,'');

/*Table structure for table `sys_userss` */

DROP TABLE IF EXISTS `sys_userss`;

CREATE TABLE `sys_userss` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `levelakses` varchar(30) NOT NULL,
  `tgl_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sys_userss` */

insert  into `sys_userss`(`id`,`email`,`password`,`nama`,`levelakses`,`tgl_login`) values (1,'hansenmakangiras@gmail.com','03CB3E7B7CD5770D95E7F3FE8A977CF4A4183033C85EDB18104882DA1E366C56840F78E33F939909C6077C7C2C7512C5897ECB97F6DC7555EE2B425E6F2D85E7','Hansen Makangiras','Super Admin','2014-08-03 18:35:09'),(2,'blackid.85@gmail.com','03CB3E7B7CD5770D95E7F3FE8A977CF4A4183033C85EDB18104882DA1E366C56840F78E33F939909C6077C7C2C7512C5897ECB97F6DC7555EE2B425E6F2D85E7','Hansen Moko','Administrator','2014-08-03 18:35:19');

/*Table structure for table `tbl_alumni` */

DROP TABLE IF EXISTS `tbl_alumni`;

CREATE TABLE `tbl_alumni` (
  `id_alumni` smallint(8) NOT NULL AUTO_INCREMENT,
  `nama_alumni` varchar(100) NOT NULL,
  `angkatan` year(4) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_rekening` varchar(30) NOT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_alumni` */

/*Table structure for table `tbl_anggota` */

DROP TABLE IF EXISTS `tbl_anggota`;

CREATE TABLE `tbl_anggota` (
  `id_anggota` smallint(8) NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(11) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `angkatan` year(4) NOT NULL,
  `id_jurusan` smallint(8) NOT NULL,
  `id_kelas` smallint(6) NOT NULL,
  `hobby` varchar(200) DEFAULT NULL,
  `penyakit_yg_diderita` varchar(150) DEFAULT NULL,
  `asal_sekolah` varchar(150) DEFAULT NULL,
  `suku` varchar(100) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `jenis_anggota` enum('Maba','Pengurus','Alumni') NOT NULL DEFAULT 'Maba',
  `status` enum('Aktif','Non Aktif') NOT NULL DEFAULT 'Aktif',
  PRIMARY KEY (`id_anggota`,`no_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_anggota` */

/*Table structure for table `tbl_anggota_kelas` */

DROP TABLE IF EXISTS `tbl_anggota_kelas`;

CREATE TABLE `tbl_anggota_kelas` (
  `id_kelas` smallint(8) NOT NULL,
  `id_anggota` smallint(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_anggota_kelas` */

/*Table structure for table `tbl_grup_menu` */

DROP TABLE IF EXISTS `tbl_grup_menu`;

CREATE TABLE `tbl_grup_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL COMMENT 'Referensi tabel mast_menu',
  `id_grup_menu` int(11) NOT NULL COMMENT 'Referensi Tabel tbl_menu_grup',
  PRIMARY KEY (`id`),
  KEY `id_menu` (`id_menu`),
  KEY `id_grup_menu` (`id_grup_menu`),
  CONSTRAINT `tbl_grup_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `mast_menu` (`id_menu`),
  CONSTRAINT `tbl_grup_menu_ibfk_2` FOREIGN KEY (`id_grup_menu`) REFERENCES `tbl_menu_grup` (`id_grup_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_grup_menu` */

insert  into `tbl_grup_menu`(`id`,`id_menu`,`id_grup_menu`) values (1,1,1);

/*Table structure for table `tbl_halaman` */

DROP TABLE IF EXISTS `tbl_halaman`;

CREATE TABLE `tbl_halaman` (
  `id_halaman` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `isi` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `url` varchar(150) NOT NULL,
  `created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_halaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_halaman` */

/*Table structure for table `tbl_menu_grup` */

DROP TABLE IF EXISTS `tbl_menu_grup`;

CREATE TABLE `tbl_menu_grup` (
  `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT,
  `grup` varchar(100) NOT NULL,
  PRIMARY KEY (`id_grup_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_menu_grup` */

insert  into `tbl_menu_grup`(`id_grup_menu`,`grup`) values (1,'Frontend'),(2,'Backend');

/*Table structure for table `tbl_pengumuman` */

DROP TABLE IF EXISTS `tbl_pengumuman`;

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` smallint(8) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_pengumuman` */

insert  into `tbl_pengumuman`(`id_pengumuman`,`judul`,`isi_pengumuman`,`created_date`,`updated_date`) values (1,'Kisah Cinta','teradsadfsadfsdfasdfffffffffff','2014-07-26','0000-00-00 00:00:00');

/*Table structure for table `tbl_persuratan` */

DROP TABLE IF EXISTS `tbl_persuratan`;

CREATE TABLE `tbl_persuratan` (
  `id_surat` smallint(8) NOT NULL AUTO_INCREMENT,
  `kop_surat` varchar(150) NOT NULL,
  `no_surat` varchar(30) NOT NULL,
  `perihal_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isi_surat` text NOT NULL,
  `kepada` varchar(100) NOT NULL,
  `nama_ketua` varchar(100) NOT NULL,
  `nama_sekretaris` varchar(100) NOT NULL,
  `mengetahui` varchar(100) NOT NULL,
  `status_surat` enum('Surat Masuk','Surat Keluar') NOT NULL DEFAULT 'Surat Keluar',
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_persuratan` */

/*Table structure for table `tbl_pesan` */

DROP TABLE IF EXISTS `tbl_pesan`;

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` varchar(20) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `status_baca` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_pesan` */

/*Table structure for table `tbl_profil` */

DROP TABLE IF EXISTS `tbl_profil`;

CREATE TABLE `tbl_profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `profil_pmk` text NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_profil` */

/*Table structure for table `tbl_proker` */

DROP TABLE IF EXISTS `tbl_proker`;

CREATE TABLE `tbl_proker` (
  `id_proker` smallint(8) NOT NULL AUTO_INCREMENT,
  `program_kerja` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_proker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_proker` */

/*Table structure for table `tbl_setting` */

DROP TABLE IF EXISTS `tbl_setting`;

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `site_title` varchar(150) DEFAULT NULL,
  `site_deskripsi` varchar(250) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_version` varchar(100) DEFAULT NULL,
  `site_footer` text,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_setting` */

/*Table structure for table `tbl_study` */

DROP TABLE IF EXISTS `tbl_study`;

CREATE TABLE `tbl_study` (
  `id_study` smallint(8) NOT NULL AUTO_INCREMENT,
  `id_anggota` smallint(8) NOT NULL,
  `id_materi` smallint(8) NOT NULL,
  `id_pengajar` smallint(8) NOT NULL,
  `waktu` date NOT NULL,
  `lama_studi` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_study`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_study` */

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`id`,`ip_address`,`username`,`password`,`salt`,`email`,`activation_code`,`forgotten_password_code`,`forgotten_password_time`,`remember_code`,`created_on`,`last_login`,`active`,`first_name`,`last_name`,`company`,`phone`) values (1,'127.0.0.1','administrator','$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36','','admin@admin.com','',NULL,NULL,NULL,1268889823,1268889823,1,'Admin','istrator','ADMIN','0');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`role`,`status`,`created_at`,`updated_at`) values (2,'hansenmakangiras','Zwjz1eXcDp24JEA9kgIlQMmGu0OTpBGu','$2y$13$uD.1gHOlUdJVnELs/8doRepWS8celbol.nqvX2sSx1MHn7e/dyXCm',NULL,'hansenmakangiras@gmail.com',10,10,1416427338,1416427338);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`confirmation_code`,`remember_token`,`confirmed`,`created_at`,`updated_at`) values (1,'hansenmakangiras','hansenmakangiras@gmail.com','$2y$10$mQBUn4qhfzQq2DrR7aaLD.KVWhVzvlcCAujE.aK.tSRRF3KL39Wre','d1d59989e5836b38ecb0e98cbbc64f18','BylBTm2w48v1vdlvgOybAXBXxJ7CVAzUh97iym9iEZrcp3FCwo8eLGxBwnFC',1,'2014-11-21 03:41:59','2014-11-21 18:04:20');

/*Table structure for table `users_eloquent` */

DROP TABLE IF EXISTS `users_eloquent`;

CREATE TABLE `users_eloquent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users_eloquent` */

insert  into `users_eloquent`(`id`,`ip_address`,`username`,`password`,`salt`,`email`,`activation_code`,`forgotten_password_code`,`forgotten_password_time`,`remember_code`,`created_on`,`last_login`,`active`,`first_name`,`last_name`,`company`,`phone`) values (1,'127.0.0.1','administrator','$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36','','admin@admin.com','','',NULL,'',1268889823,1268889823,1,'Admin','istrator','ADMIN','0');

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users_eloquent` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_groups` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
