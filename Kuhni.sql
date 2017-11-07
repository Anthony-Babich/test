-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 07 2017 г., 22:13
-- Версия сервера: 5.5.53-log
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Kuhni`
--

-- --------------------------------------------------------

--
-- Структура таблицы `acl_classes`
--

CREATE TABLE `acl_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `acl_classes`
--

INSERT INTO `acl_classes` (`id`, `class_type`) VALUES
(36, 'Application\\Sonata\\UserBundle\\Entity\\User'),
(12, 'Kuhni\\Bundle\\Admin\\CallBackAdmin'),
(1, 'Kuhni\\Bundle\\Admin\\CatalogAdmin'),
(17, 'Kuhni\\Bundle\\Admin\\CostProjectAdmin'),
(13, 'Kuhni\\Bundle\\Admin\\DesignerAtHomeAdmin'),
(11, 'Kuhni\\Bundle\\Admin\\FasadColorAdmin'),
(10, 'Kuhni\\Bundle\\Admin\\FasadTypeAdmin'),
(16, 'Kuhni\\Bundle\\Admin\\FreeDesignProjectAdmin'),
(2, 'Kuhni\\Bundle\\Admin\\KuhniAdmin'),
(4, 'Kuhni\\Bundle\\Admin\\KuhniColorAdmin'),
(8, 'Kuhni\\Bundle\\Admin\\KuhniConfigAdmin'),
(9, 'Kuhni\\Bundle\\Admin\\KuhniImagesAdmin'),
(5, 'Kuhni\\Bundle\\Admin\\KuhniMassiveAdmin'),
(7, 'Kuhni\\Bundle\\Admin\\KuhniMaterialAdmin'),
(6, 'Kuhni\\Bundle\\Admin\\KuhniMdfAdmin'),
(3, 'Kuhni\\Bundle\\Admin\\KuhniStyleAdmin'),
(14, 'Kuhni\\Bundle\\Admin\\RequestCallAdmin'),
(18, 'Kuhni\\Bundle\\Admin\\UserAdmin'),
(15, 'Kuhni\\Bundle\\Admin\\ZayavkaRazmerAdmin'),
(30, 'Kuhni\\Bundle\\Entity\\CallBack'),
(19, 'Kuhni\\Bundle\\Entity\\Catalog'),
(35, 'Kuhni\\Bundle\\Entity\\CostProject'),
(31, 'Kuhni\\Bundle\\Entity\\DesignerAtHome'),
(29, 'Kuhni\\Bundle\\Entity\\FasadColor'),
(28, 'Kuhni\\Bundle\\Entity\\FasadType'),
(34, 'Kuhni\\Bundle\\Entity\\freeDesignProject'),
(20, 'Kuhni\\Bundle\\Entity\\Kuhni'),
(22, 'Kuhni\\Bundle\\Entity\\KuhniColor'),
(26, 'Kuhni\\Bundle\\Entity\\KuhniConfig'),
(27, 'Kuhni\\Bundle\\Entity\\KuhniImages'),
(23, 'Kuhni\\Bundle\\Entity\\KuhniMassive'),
(25, 'Kuhni\\Bundle\\Entity\\KuhniMaterial'),
(24, 'Kuhni\\Bundle\\Entity\\KuhniMdf'),
(21, 'Kuhni\\Bundle\\Entity\\KuhniStyle'),
(32, 'Kuhni\\Bundle\\Entity\\RequestCall'),
(33, 'Kuhni\\Bundle\\Entity\\ZayavkaRazmer');

-- --------------------------------------------------------

--
-- Структура таблицы `acl_entries`
--

CREATE TABLE `acl_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `security_identity_id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) UNSIGNED NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `acl_entries`
--

INSERT INTO `acl_entries` (`id`, `class_id`, `object_identity_id`, `security_identity_id`, `field_name`, `ace_order`, `mask`, `granting`, `granting_strategy`, `audit_success`, `audit_failure`) VALUES
(1, 1, NULL, 1, NULL, 0, 64, 1, 'all', 0, 0),
(2, 1, NULL, 2, NULL, 1, 8224, 1, 'all', 0, 0),
(3, 1, NULL, 3, NULL, 2, 4098, 1, 'all', 0, 0),
(4, 1, NULL, 4, NULL, 3, 4096, 1, 'all', 0, 0),
(5, 2, NULL, 5, NULL, 0, 64, 1, 'all', 0, 0),
(6, 2, NULL, 6, NULL, 1, 8224, 1, 'all', 0, 0),
(7, 2, NULL, 7, NULL, 2, 4098, 1, 'all', 0, 0),
(8, 2, NULL, 8, NULL, 3, 4096, 1, 'all', 0, 0),
(9, 3, NULL, 9, NULL, 0, 64, 1, 'all', 0, 0),
(10, 3, NULL, 10, NULL, 1, 8224, 1, 'all', 0, 0),
(11, 3, NULL, 11, NULL, 2, 4098, 1, 'all', 0, 0),
(12, 3, NULL, 12, NULL, 3, 4096, 1, 'all', 0, 0),
(13, 4, NULL, 13, NULL, 0, 64, 1, 'all', 0, 0),
(14, 4, NULL, 14, NULL, 1, 8224, 1, 'all', 0, 0),
(15, 4, NULL, 15, NULL, 2, 4098, 1, 'all', 0, 0),
(16, 4, NULL, 16, NULL, 3, 4096, 1, 'all', 0, 0),
(17, 5, NULL, 17, NULL, 0, 64, 1, 'all', 0, 0),
(18, 5, NULL, 18, NULL, 1, 8224, 1, 'all', 0, 0),
(19, 5, NULL, 19, NULL, 2, 4098, 1, 'all', 0, 0),
(20, 5, NULL, 20, NULL, 3, 4096, 1, 'all', 0, 0),
(21, 6, NULL, 21, NULL, 0, 64, 1, 'all', 0, 0),
(22, 6, NULL, 22, NULL, 1, 8224, 1, 'all', 0, 0),
(23, 6, NULL, 23, NULL, 2, 4098, 1, 'all', 0, 0),
(24, 6, NULL, 24, NULL, 3, 4096, 1, 'all', 0, 0),
(25, 7, NULL, 25, NULL, 0, 64, 1, 'all', 0, 0),
(26, 7, NULL, 26, NULL, 1, 8224, 1, 'all', 0, 0),
(27, 7, NULL, 27, NULL, 2, 4098, 1, 'all', 0, 0),
(28, 7, NULL, 28, NULL, 3, 4096, 1, 'all', 0, 0),
(29, 8, NULL, 29, NULL, 0, 64, 1, 'all', 0, 0),
(30, 8, NULL, 30, NULL, 1, 8224, 1, 'all', 0, 0),
(31, 8, NULL, 31, NULL, 2, 4098, 1, 'all', 0, 0),
(32, 8, NULL, 32, NULL, 3, 4096, 1, 'all', 0, 0),
(33, 9, NULL, 33, NULL, 0, 64, 1, 'all', 0, 0),
(34, 9, NULL, 34, NULL, 1, 8224, 1, 'all', 0, 0),
(35, 9, NULL, 35, NULL, 2, 4098, 1, 'all', 0, 0),
(36, 9, NULL, 36, NULL, 3, 4096, 1, 'all', 0, 0),
(37, 10, NULL, 37, NULL, 0, 64, 1, 'all', 0, 0),
(38, 10, NULL, 38, NULL, 1, 8224, 1, 'all', 0, 0),
(39, 10, NULL, 39, NULL, 2, 4098, 1, 'all', 0, 0),
(40, 10, NULL, 40, NULL, 3, 4096, 1, 'all', 0, 0),
(41, 11, NULL, 41, NULL, 0, 64, 1, 'all', 0, 0),
(42, 11, NULL, 42, NULL, 1, 8224, 1, 'all', 0, 0),
(43, 11, NULL, 43, NULL, 2, 4098, 1, 'all', 0, 0),
(44, 11, NULL, 44, NULL, 3, 4096, 1, 'all', 0, 0),
(45, 12, NULL, 45, NULL, 0, 64, 1, 'all', 0, 0),
(46, 12, NULL, 46, NULL, 1, 8224, 1, 'all', 0, 0),
(47, 12, NULL, 47, NULL, 2, 4098, 1, 'all', 0, 0),
(48, 12, NULL, 48, NULL, 3, 4096, 1, 'all', 0, 0),
(49, 13, NULL, 49, NULL, 0, 64, 1, 'all', 0, 0),
(50, 13, NULL, 50, NULL, 1, 8224, 1, 'all', 0, 0),
(51, 13, NULL, 51, NULL, 2, 4098, 1, 'all', 0, 0),
(52, 13, NULL, 52, NULL, 3, 4096, 1, 'all', 0, 0),
(53, 14, NULL, 53, NULL, 0, 64, 1, 'all', 0, 0),
(54, 14, NULL, 54, NULL, 1, 8224, 1, 'all', 0, 0),
(55, 14, NULL, 55, NULL, 2, 4098, 1, 'all', 0, 0),
(56, 14, NULL, 56, NULL, 3, 4096, 1, 'all', 0, 0),
(57, 15, NULL, 57, NULL, 0, 64, 1, 'all', 0, 0),
(58, 15, NULL, 58, NULL, 1, 8224, 1, 'all', 0, 0),
(59, 15, NULL, 59, NULL, 2, 4098, 1, 'all', 0, 0),
(60, 15, NULL, 60, NULL, 3, 4096, 1, 'all', 0, 0),
(61, 16, NULL, 61, NULL, 0, 64, 1, 'all', 0, 0),
(62, 16, NULL, 62, NULL, 1, 8224, 1, 'all', 0, 0),
(63, 16, NULL, 63, NULL, 2, 4098, 1, 'all', 0, 0),
(64, 16, NULL, 64, NULL, 3, 4096, 1, 'all', 0, 0),
(65, 17, NULL, 65, NULL, 0, 64, 1, 'all', 0, 0),
(66, 17, NULL, 66, NULL, 1, 8224, 1, 'all', 0, 0),
(67, 17, NULL, 67, NULL, 2, 4098, 1, 'all', 0, 0),
(68, 17, NULL, 68, NULL, 3, 4096, 1, 'all', 0, 0),
(69, 18, NULL, 69, NULL, 0, 64, 1, 'all', 0, 0),
(70, 18, NULL, 70, NULL, 1, 8224, 1, 'all', 0, 0),
(71, 18, NULL, 71, NULL, 2, 4098, 1, 'all', 0, 0),
(72, 18, NULL, 72, NULL, 3, 4096, 1, 'all', 0, 0),
(73, 19, NULL, 1, NULL, 0, 64, 1, 'all', 0, 0),
(74, 19, NULL, 2, NULL, 1, 32, 1, 'all', 0, 0),
(75, 19, NULL, 3, NULL, 2, 4, 1, 'all', 0, 0),
(76, 19, NULL, 4, NULL, 3, 1, 1, 'all', 0, 0),
(77, 20, NULL, 5, NULL, 0, 64, 1, 'all', 0, 0),
(78, 20, NULL, 6, NULL, 1, 32, 1, 'all', 0, 0),
(79, 20, NULL, 7, NULL, 2, 4, 1, 'all', 0, 0),
(80, 20, NULL, 8, NULL, 3, 1, 1, 'all', 0, 0),
(81, 21, NULL, 9, NULL, 0, 64, 1, 'all', 0, 0),
(82, 21, NULL, 10, NULL, 1, 32, 1, 'all', 0, 0),
(83, 21, NULL, 11, NULL, 2, 4, 1, 'all', 0, 0),
(84, 21, NULL, 12, NULL, 3, 1, 1, 'all', 0, 0),
(85, 22, NULL, 13, NULL, 0, 64, 1, 'all', 0, 0),
(86, 22, NULL, 14, NULL, 1, 32, 1, 'all', 0, 0),
(87, 22, NULL, 15, NULL, 2, 4, 1, 'all', 0, 0),
(88, 22, NULL, 16, NULL, 3, 1, 1, 'all', 0, 0),
(89, 23, NULL, 17, NULL, 0, 64, 1, 'all', 0, 0),
(90, 23, NULL, 18, NULL, 1, 32, 1, 'all', 0, 0),
(91, 23, NULL, 19, NULL, 2, 4, 1, 'all', 0, 0),
(92, 23, NULL, 20, NULL, 3, 1, 1, 'all', 0, 0),
(93, 24, NULL, 21, NULL, 0, 64, 1, 'all', 0, 0),
(94, 24, NULL, 22, NULL, 1, 32, 1, 'all', 0, 0),
(95, 24, NULL, 23, NULL, 2, 4, 1, 'all', 0, 0),
(96, 24, NULL, 24, NULL, 3, 1, 1, 'all', 0, 0),
(97, 25, NULL, 25, NULL, 0, 64, 1, 'all', 0, 0),
(98, 25, NULL, 26, NULL, 1, 32, 1, 'all', 0, 0),
(99, 25, NULL, 27, NULL, 2, 4, 1, 'all', 0, 0),
(100, 25, NULL, 28, NULL, 3, 1, 1, 'all', 0, 0),
(101, 26, NULL, 29, NULL, 0, 64, 1, 'all', 0, 0),
(102, 26, NULL, 30, NULL, 1, 32, 1, 'all', 0, 0),
(103, 26, NULL, 31, NULL, 2, 4, 1, 'all', 0, 0),
(104, 26, NULL, 32, NULL, 3, 1, 1, 'all', 0, 0),
(105, 27, NULL, 33, NULL, 0, 64, 1, 'all', 0, 0),
(106, 27, NULL, 34, NULL, 1, 32, 1, 'all', 0, 0),
(107, 27, NULL, 35, NULL, 2, 4, 1, 'all', 0, 0),
(108, 27, NULL, 36, NULL, 3, 1, 1, 'all', 0, 0),
(109, 28, NULL, 37, NULL, 0, 64, 1, 'all', 0, 0),
(110, 28, NULL, 38, NULL, 1, 32, 1, 'all', 0, 0),
(111, 28, NULL, 39, NULL, 2, 4, 1, 'all', 0, 0),
(112, 28, NULL, 40, NULL, 3, 1, 1, 'all', 0, 0),
(113, 29, NULL, 41, NULL, 0, 64, 1, 'all', 0, 0),
(114, 29, NULL, 42, NULL, 1, 32, 1, 'all', 0, 0),
(115, 29, NULL, 43, NULL, 2, 4, 1, 'all', 0, 0),
(116, 29, NULL, 44, NULL, 3, 1, 1, 'all', 0, 0),
(117, 30, NULL, 45, NULL, 0, 64, 1, 'all', 0, 0),
(118, 30, NULL, 46, NULL, 1, 32, 1, 'all', 0, 0),
(119, 30, NULL, 47, NULL, 2, 4, 1, 'all', 0, 0),
(120, 30, NULL, 48, NULL, 3, 1, 1, 'all', 0, 0),
(121, 31, NULL, 49, NULL, 0, 64, 1, 'all', 0, 0),
(122, 31, NULL, 50, NULL, 1, 32, 1, 'all', 0, 0),
(123, 31, NULL, 51, NULL, 2, 4, 1, 'all', 0, 0),
(124, 31, NULL, 52, NULL, 3, 1, 1, 'all', 0, 0),
(125, 32, NULL, 53, NULL, 0, 64, 1, 'all', 0, 0),
(126, 32, NULL, 54, NULL, 1, 32, 1, 'all', 0, 0),
(127, 32, NULL, 55, NULL, 2, 4, 1, 'all', 0, 0),
(128, 32, NULL, 56, NULL, 3, 1, 1, 'all', 0, 0),
(129, 33, NULL, 57, NULL, 0, 64, 1, 'all', 0, 0),
(130, 33, NULL, 58, NULL, 1, 32, 1, 'all', 0, 0),
(131, 33, NULL, 59, NULL, 2, 4, 1, 'all', 0, 0),
(132, 33, NULL, 60, NULL, 3, 1, 1, 'all', 0, 0),
(133, 34, NULL, 61, NULL, 0, 64, 1, 'all', 0, 0),
(134, 34, NULL, 62, NULL, 1, 32, 1, 'all', 0, 0),
(135, 34, NULL, 63, NULL, 2, 4, 1, 'all', 0, 0),
(136, 34, NULL, 64, NULL, 3, 1, 1, 'all', 0, 0),
(137, 35, NULL, 65, NULL, 0, 64, 1, 'all', 0, 0),
(138, 35, NULL, 66, NULL, 1, 32, 1, 'all', 0, 0),
(139, 35, NULL, 67, NULL, 2, 4, 1, 'all', 0, 0),
(140, 35, NULL, 68, NULL, 3, 1, 1, 'all', 0, 0),
(141, 36, NULL, 69, NULL, 0, 64, 1, 'all', 0, 0),
(142, 36, NULL, 70, NULL, 1, 32, 1, 'all', 0, 0),
(143, 36, NULL, 71, NULL, 2, 4, 1, 'all', 0, 0),
(144, 36, NULL, 72, NULL, 3, 1, 1, 'all', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_object_identities`
--

CREATE TABLE `acl_object_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `acl_object_identities`
--

INSERT INTO `acl_object_identities` (`id`, `parent_object_identity_id`, `class_id`, `object_identifier`, `entries_inheriting`) VALUES
(1, NULL, 1, 'app.admin.catalog', 1),
(2, NULL, 2, 'app.admin.kuhni', 1),
(3, NULL, 3, 'app.admin.kuhni.style', 1),
(4, NULL, 4, 'app.admin.kuhni.color', 1),
(5, NULL, 5, 'app.admin.kuhni.massive', 1),
(6, NULL, 6, 'app.admin.kuhni.mdf', 1),
(7, NULL, 7, 'app.admin.kuhni.material', 1),
(8, NULL, 8, 'app.admin.kuhni.config', 1),
(9, NULL, 9, 'app.admin.kuhni.images', 1),
(10, NULL, 10, 'app.admin.fasades.type', 1),
(11, NULL, 11, 'app.admin.fasades.color', 1),
(12, NULL, 12, 'app.admin.order.callback', 1),
(13, NULL, 13, 'app.admin.order.designerathome', 1),
(14, NULL, 14, 'app.admin.order.requestcall', 1),
(15, NULL, 15, 'app.admin.order.zayavkarazmer', 1),
(16, NULL, 16, 'app.admin.order.freedesignproject', 1),
(17, NULL, 17, 'app.admin.order.costproject', 1),
(18, NULL, 18, 'sonata.user.admin.user', 1),
(19, NULL, 19, '1', 1),
(20, NULL, 19, '2', 1),
(21, NULL, 19, '3', 1),
(22, NULL, 19, '4', 1),
(23, NULL, 19, '5', 1),
(24, NULL, 20, '1', 1),
(25, NULL, 20, '2', 1),
(26, NULL, 20, '3', 1),
(27, NULL, 20, '4', 1),
(28, NULL, 20, '5', 1),
(29, NULL, 20, '6', 1),
(30, NULL, 20, '7', 1),
(31, NULL, 20, '8', 1),
(32, NULL, 20, '9', 1),
(33, NULL, 20, '10', 1),
(34, NULL, 20, '11', 1),
(35, NULL, 20, '12', 1),
(36, NULL, 20, '13', 1),
(37, NULL, 20, '14', 1),
(38, NULL, 20, '15', 1),
(39, NULL, 20, '16', 1),
(40, NULL, 20, '17', 1),
(41, NULL, 20, '18', 1),
(42, NULL, 20, '19', 1),
(43, NULL, 20, '20', 1),
(44, NULL, 20, '21', 1),
(45, NULL, 20, '22', 1),
(46, NULL, 20, '23', 1),
(47, NULL, 20, '24', 1),
(48, NULL, 20, '25', 1),
(49, NULL, 20, '26', 1),
(50, NULL, 20, '27', 1),
(51, NULL, 20, '28', 1),
(52, NULL, 20, '29', 1),
(53, NULL, 20, '30', 1),
(54, NULL, 20, '31', 1),
(55, NULL, 20, '32', 1),
(56, NULL, 20, '33', 1),
(57, NULL, 20, '34', 1),
(58, NULL, 20, '35', 1),
(59, NULL, 20, '36', 1),
(60, NULL, 20, '37', 1),
(61, NULL, 20, '38', 1),
(62, NULL, 20, '39', 1),
(63, NULL, 21, '1', 1),
(64, NULL, 21, '2', 1),
(65, NULL, 21, '3', 1),
(66, NULL, 21, '4', 1),
(67, NULL, 21, '5', 1),
(68, NULL, 21, '6', 1),
(69, NULL, 21, '7', 1),
(70, NULL, 21, '8', 1),
(71, NULL, 21, '9', 1),
(72, NULL, 21, '10', 1),
(73, NULL, 22, '1', 1),
(74, NULL, 22, '2', 1),
(75, NULL, 22, '3', 1),
(76, NULL, 22, '4', 1),
(77, NULL, 22, '5', 1),
(78, NULL, 22, '6', 1),
(79, NULL, 22, '7', 1),
(80, NULL, 22, '8', 1),
(81, NULL, 22, '9', 1),
(82, NULL, 22, '10', 1),
(83, NULL, 22, '11', 1),
(84, NULL, 22, '12', 1),
(85, NULL, 23, '1', 1),
(86, NULL, 23, '2', 1),
(87, NULL, 23, '3', 1),
(88, NULL, 24, '1', 1),
(89, NULL, 24, '2', 1),
(90, NULL, 24, '3', 1),
(91, NULL, 24, '4', 1),
(92, NULL, 24, '5', 1),
(93, NULL, 25, '1', 1),
(94, NULL, 25, '2', 1),
(95, NULL, 25, '3', 1),
(96, NULL, 25, '4', 1),
(97, NULL, 25, '5', 1),
(98, NULL, 25, '6', 1),
(99, NULL, 25, '7', 1),
(100, NULL, 25, '8', 1),
(101, NULL, 25, '9', 1),
(102, NULL, 25, '10', 1),
(103, NULL, 25, '11', 1),
(104, NULL, 25, '12', 1),
(105, NULL, 25, '13', 1),
(106, NULL, 26, '1', 1),
(107, NULL, 26, '2', 1),
(108, NULL, 26, '3', 1),
(109, NULL, 26, '4', 1),
(110, NULL, 26, '5', 1),
(111, NULL, 26, '6', 1),
(112, NULL, 26, '7', 1),
(113, NULL, 27, '1', 1),
(114, NULL, 27, '2', 1),
(115, NULL, 27, '3', 1),
(116, NULL, 27, '4', 1),
(117, NULL, 27, '5', 1),
(118, NULL, 27, '6', 1),
(119, NULL, 27, '7', 1),
(120, NULL, 27, '8', 1),
(121, NULL, 27, '9', 1),
(122, NULL, 27, '10', 1),
(123, NULL, 27, '11', 1),
(124, NULL, 27, '12', 1),
(125, NULL, 27, '13', 1),
(126, NULL, 27, '14', 1),
(127, NULL, 27, '15', 1),
(128, NULL, 27, '16', 1),
(129, NULL, 27, '17', 1),
(130, NULL, 27, '18', 1),
(131, NULL, 27, '19', 1),
(132, NULL, 27, '20', 1),
(133, NULL, 27, '21', 1),
(134, NULL, 27, '22', 1),
(135, NULL, 27, '23', 1),
(136, NULL, 27, '24', 1),
(137, NULL, 27, '25', 1),
(138, NULL, 27, '26', 1),
(139, NULL, 27, '27', 1),
(140, NULL, 27, '28', 1),
(141, NULL, 27, '29', 1),
(142, NULL, 27, '30', 1),
(143, NULL, 27, '31', 1),
(144, NULL, 27, '32', 1),
(145, NULL, 27, '33', 1),
(146, NULL, 27, '34', 1),
(147, NULL, 27, '35', 1),
(148, NULL, 27, '36', 1),
(149, NULL, 27, '37', 1),
(150, NULL, 27, '38', 1),
(151, NULL, 27, '39', 1),
(152, NULL, 27, '40', 1),
(153, NULL, 27, '41', 1),
(154, NULL, 27, '42', 1),
(155, NULL, 27, '43', 1),
(156, NULL, 27, '44', 1),
(157, NULL, 27, '45', 1),
(158, NULL, 27, '46', 1),
(159, NULL, 27, '47', 1),
(160, NULL, 27, '48', 1),
(161, NULL, 27, '49', 1),
(162, NULL, 27, '50', 1),
(163, NULL, 27, '51', 1),
(164, NULL, 27, '52', 1),
(165, NULL, 27, '53', 1),
(166, NULL, 27, '54', 1),
(167, NULL, 27, '55', 1),
(168, NULL, 27, '56', 1),
(169, NULL, 27, '57', 1),
(170, NULL, 27, '58', 1),
(171, NULL, 27, '59', 1),
(172, NULL, 27, '60', 1),
(173, NULL, 27, '61', 1),
(174, NULL, 27, '62', 1),
(175, NULL, 27, '63', 1),
(176, NULL, 27, '64', 1),
(177, NULL, 27, '65', 1),
(178, NULL, 27, '66', 1),
(179, NULL, 27, '67', 1),
(180, NULL, 27, '68', 1),
(181, NULL, 27, '69', 1),
(182, NULL, 27, '70', 1),
(183, NULL, 27, '71', 1),
(184, NULL, 27, '72', 1),
(185, NULL, 27, '73', 1),
(186, NULL, 27, '74', 1),
(187, NULL, 27, '75', 1),
(188, NULL, 27, '76', 1),
(189, NULL, 27, '77', 1),
(190, NULL, 27, '78', 1),
(191, NULL, 27, '79', 1),
(192, NULL, 27, '80', 1),
(193, NULL, 27, '81', 1),
(194, NULL, 27, '82', 1),
(195, NULL, 27, '83', 1),
(196, NULL, 27, '84', 1),
(197, NULL, 27, '85', 1),
(198, NULL, 27, '86', 1),
(199, NULL, 27, '87', 1),
(200, NULL, 27, '88', 1),
(201, NULL, 27, '89', 1),
(202, NULL, 27, '90', 1),
(203, NULL, 27, '91', 1),
(204, NULL, 27, '92', 1),
(205, NULL, 27, '93', 1),
(206, NULL, 27, '94', 1),
(207, NULL, 27, '95', 1),
(208, NULL, 27, '96', 1),
(209, NULL, 27, '97', 1),
(210, NULL, 27, '98', 1),
(211, NULL, 27, '99', 1),
(212, NULL, 27, '100', 1),
(213, NULL, 27, '101', 1),
(214, NULL, 27, '102', 1),
(215, NULL, 27, '103', 1),
(216, NULL, 27, '104', 1),
(217, NULL, 27, '105', 1),
(218, NULL, 27, '106', 1),
(219, NULL, 27, '107', 1),
(220, NULL, 27, '108', 1),
(221, NULL, 27, '109', 1),
(222, NULL, 27, '110', 1),
(223, NULL, 27, '111', 1),
(224, NULL, 27, '112', 1),
(225, NULL, 27, '113', 1),
(226, NULL, 27, '114', 1),
(227, NULL, 27, '115', 1),
(228, NULL, 27, '116', 1),
(229, NULL, 27, '117', 1),
(230, NULL, 27, '118', 1),
(231, NULL, 27, '119', 1),
(232, NULL, 27, '120', 1),
(233, NULL, 27, '121', 1),
(234, NULL, 27, '122', 1),
(235, NULL, 27, '123', 1),
(236, NULL, 27, '124', 1),
(237, NULL, 27, '125', 1),
(238, NULL, 27, '126', 1),
(239, NULL, 27, '127', 1),
(240, NULL, 27, '128', 1),
(241, NULL, 27, '129', 1),
(242, NULL, 27, '130', 1),
(243, NULL, 27, '131', 1),
(244, NULL, 27, '132', 1),
(245, NULL, 27, '133', 1),
(246, NULL, 27, '134', 1),
(247, NULL, 27, '135', 1),
(248, NULL, 27, '136', 1),
(249, NULL, 27, '137', 1),
(250, NULL, 27, '138', 1),
(251, NULL, 27, '139', 1),
(252, NULL, 27, '140', 1),
(253, NULL, 27, '141', 1),
(254, NULL, 27, '142', 1),
(255, NULL, 27, '143', 1),
(256, NULL, 28, '1', 1),
(257, NULL, 28, '2', 1),
(258, NULL, 28, '3', 1),
(259, NULL, 28, '4', 1),
(260, NULL, 28, '5', 1),
(261, NULL, 28, '6', 1),
(262, NULL, 28, '7', 1),
(263, NULL, 28, '8', 1),
(264, NULL, 28, '9', 1),
(265, NULL, 28, '10', 1),
(266, NULL, 28, '11', 1),
(267, NULL, 28, '12', 1),
(268, NULL, 28, '13', 1),
(269, NULL, 28, '14', 1),
(270, NULL, 28, '15', 1),
(271, NULL, 28, '16', 1),
(272, NULL, 28, '17', 1),
(273, NULL, 28, '18', 1),
(274, NULL, 28, '19', 1),
(275, NULL, 28, '20', 1),
(276, NULL, 28, '21', 1),
(277, NULL, 28, '22', 1),
(278, NULL, 28, '23', 1),
(279, NULL, 28, '24', 1),
(280, NULL, 28, '25', 1),
(281, NULL, 28, '26', 1),
(282, NULL, 28, '27', 1),
(283, NULL, 28, '28', 1),
(284, NULL, 28, '29', 1),
(285, NULL, 28, '30', 1),
(286, NULL, 28, '31', 1),
(287, NULL, 28, '32', 1),
(288, NULL, 28, '33', 1),
(289, NULL, 28, '34', 1),
(290, NULL, 28, '35', 1),
(291, NULL, 28, '36', 1),
(292, NULL, 28, '37', 1),
(293, NULL, 28, '38', 1),
(294, NULL, 28, '39', 1),
(295, NULL, 28, '40', 1),
(296, NULL, 28, '41', 1),
(297, NULL, 28, '42', 1),
(298, NULL, 28, '43', 1),
(299, NULL, 28, '44', 1),
(300, NULL, 28, '45', 1),
(301, NULL, 28, '46', 1),
(302, NULL, 28, '47', 1),
(303, NULL, 28, '48', 1),
(304, NULL, 28, '49', 1),
(305, NULL, 28, '50', 1),
(306, NULL, 28, '51', 1),
(307, NULL, 28, '52', 1),
(308, NULL, 28, '53', 1),
(309, NULL, 28, '54', 1),
(310, NULL, 28, '55', 1),
(311, NULL, 28, '56', 1),
(312, NULL, 28, '57', 1),
(313, NULL, 28, '58', 1),
(314, NULL, 28, '59', 1),
(315, NULL, 28, '60', 1),
(316, NULL, 28, '61', 1),
(317, NULL, 28, '62', 1),
(318, NULL, 28, '63', 1),
(319, NULL, 28, '64', 1),
(320, NULL, 28, '65', 1),
(321, NULL, 28, '66', 1),
(322, NULL, 28, '67', 1),
(323, NULL, 28, '68', 1),
(324, NULL, 28, '69', 1),
(325, NULL, 28, '70', 1),
(326, NULL, 28, '71', 1),
(327, NULL, 28, '72', 1),
(328, NULL, 28, '73', 1),
(329, NULL, 28, '74', 1),
(330, NULL, 28, '75', 1),
(331, NULL, 28, '76', 1),
(332, NULL, 28, '77', 1),
(333, NULL, 28, '78', 1),
(334, NULL, 28, '79', 1),
(335, NULL, 28, '80', 1),
(336, NULL, 28, '81', 1),
(337, NULL, 28, '82', 1),
(338, NULL, 28, '83', 1),
(339, NULL, 28, '84', 1),
(340, NULL, 28, '85', 1),
(341, NULL, 28, '86', 1),
(342, NULL, 28, '87', 1),
(343, NULL, 28, '88', 1),
(344, NULL, 28, '89', 1),
(345, NULL, 28, '90', 1),
(346, NULL, 28, '91', 1),
(347, NULL, 28, '92', 1),
(348, NULL, 28, '93', 1),
(349, NULL, 28, '94', 1),
(350, NULL, 28, '95', 1),
(351, NULL, 28, '96', 1),
(352, NULL, 28, '97', 1),
(353, NULL, 28, '98', 1),
(354, NULL, 28, '99', 1),
(355, NULL, 28, '100', 1),
(356, NULL, 28, '101', 1),
(357, NULL, 28, '102', 1),
(358, NULL, 28, '103', 1),
(359, NULL, 28, '104', 1),
(360, NULL, 28, '105', 1),
(361, NULL, 28, '106', 1),
(362, NULL, 28, '107', 1),
(363, NULL, 28, '108', 1),
(364, NULL, 28, '109', 1),
(365, NULL, 28, '110', 1),
(366, NULL, 28, '111', 1),
(367, NULL, 28, '112', 1),
(368, NULL, 28, '113', 1),
(369, NULL, 28, '114', 1),
(370, NULL, 28, '115', 1),
(371, NULL, 28, '116', 1),
(372, NULL, 28, '117', 1),
(373, NULL, 28, '118', 1),
(374, NULL, 28, '119', 1),
(375, NULL, 28, '120', 1),
(376, NULL, 28, '121', 1),
(377, NULL, 28, '122', 1),
(378, NULL, 28, '123', 1),
(379, NULL, 28, '124', 1),
(380, NULL, 28, '125', 1),
(381, NULL, 28, '126', 1),
(382, NULL, 28, '127', 1),
(383, NULL, 28, '128', 1),
(384, NULL, 28, '129', 1),
(385, NULL, 28, '130', 1),
(386, NULL, 28, '131', 1),
(387, NULL, 28, '132', 1),
(388, NULL, 28, '133', 1),
(389, NULL, 28, '134', 1),
(390, NULL, 28, '135', 1),
(391, NULL, 28, '136', 1),
(392, NULL, 28, '137', 1),
(393, NULL, 28, '138', 1),
(394, NULL, 28, '139', 1),
(395, NULL, 28, '140', 1),
(396, NULL, 28, '141', 1),
(397, NULL, 28, '142', 1),
(398, NULL, 28, '143', 1),
(399, NULL, 28, '144', 1),
(400, NULL, 28, '145', 1),
(401, NULL, 28, '146', 1),
(402, NULL, 28, '147', 1),
(403, NULL, 28, '148', 1),
(404, NULL, 28, '149', 1),
(405, NULL, 28, '150', 1),
(406, NULL, 28, '151', 1),
(407, NULL, 28, '152', 1),
(408, NULL, 28, '153', 1),
(409, NULL, 28, '154', 1),
(410, NULL, 28, '155', 1),
(411, NULL, 28, '156', 1),
(412, NULL, 29, '1', 1),
(413, NULL, 29, '2', 1),
(414, NULL, 29, '3', 1),
(415, NULL, 29, '4', 1),
(416, NULL, 29, '5', 1),
(417, NULL, 29, '6', 1),
(418, NULL, 29, '7', 1),
(419, NULL, 29, '8', 1),
(420, NULL, 29, '9', 1),
(421, NULL, 29, '10', 1),
(422, NULL, 29, '11', 1),
(423, NULL, 29, '12', 1),
(424, NULL, 29, '13', 1),
(425, NULL, 29, '14', 1),
(426, NULL, 29, '15', 1),
(427, NULL, 29, '16', 1),
(428, NULL, 29, '17', 1),
(429, NULL, 29, '18', 1),
(430, NULL, 29, '19', 1),
(431, NULL, 29, '20', 1),
(432, NULL, 29, '21', 1),
(433, NULL, 29, '22', 1),
(434, NULL, 29, '23', 1),
(435, NULL, 29, '24', 1),
(436, NULL, 29, '25', 1),
(437, NULL, 29, '26', 1),
(438, NULL, 29, '27', 1),
(439, NULL, 29, '28', 1),
(440, NULL, 29, '29', 1),
(441, NULL, 29, '30', 1),
(442, NULL, 29, '31', 1),
(443, NULL, 29, '32', 1),
(444, NULL, 29, '33', 1),
(445, NULL, 29, '34', 1),
(446, NULL, 29, '35', 1),
(447, NULL, 29, '36', 1),
(448, NULL, 29, '37', 1),
(449, NULL, 29, '38', 1),
(450, NULL, 29, '39', 1),
(451, NULL, 29, '40', 1),
(452, NULL, 29, '41', 1),
(453, NULL, 29, '42', 1),
(454, NULL, 29, '43', 1),
(455, NULL, 29, '44', 1),
(456, NULL, 29, '45', 1),
(457, NULL, 29, '46', 1),
(458, NULL, 29, '47', 1),
(459, NULL, 29, '48', 1),
(460, NULL, 29, '49', 1),
(461, NULL, 29, '50', 1),
(462, NULL, 29, '51', 1),
(463, NULL, 29, '52', 1),
(464, NULL, 29, '53', 1),
(465, NULL, 29, '54', 1),
(466, NULL, 29, '55', 1),
(467, NULL, 29, '56', 1),
(468, NULL, 29, '57', 1),
(469, NULL, 29, '58', 1),
(470, NULL, 29, '59', 1),
(471, NULL, 29, '60', 1),
(472, NULL, 29, '61', 1),
(473, NULL, 29, '62', 1),
(474, NULL, 29, '63', 1),
(475, NULL, 29, '64', 1),
(476, NULL, 29, '65', 1),
(477, NULL, 29, '66', 1),
(478, NULL, 29, '67', 1),
(479, NULL, 29, '68', 1),
(480, NULL, 29, '69', 1),
(481, NULL, 29, '70', 1),
(482, NULL, 29, '71', 1),
(483, NULL, 29, '72', 1),
(484, NULL, 29, '73', 1),
(485, NULL, 29, '74', 1),
(486, NULL, 29, '75', 1),
(487, NULL, 29, '76', 1),
(488, NULL, 29, '77', 1),
(489, NULL, 29, '78', 1),
(490, NULL, 29, '79', 1),
(491, NULL, 29, '80', 1),
(492, NULL, 29, '81', 1),
(493, NULL, 29, '82', 1),
(494, NULL, 29, '83', 1),
(495, NULL, 29, '84', 1),
(496, NULL, 29, '85', 1),
(497, NULL, 29, '86', 1),
(498, NULL, 29, '87', 1),
(499, NULL, 29, '88', 1),
(500, NULL, 29, '89', 1),
(501, NULL, 29, '90', 1),
(502, NULL, 29, '91', 1),
(503, NULL, 29, '92', 1),
(504, NULL, 29, '93', 1),
(505, NULL, 29, '94', 1),
(506, NULL, 29, '95', 1),
(507, NULL, 29, '96', 1),
(508, NULL, 29, '97', 1),
(509, NULL, 29, '98', 1),
(510, NULL, 29, '99', 1),
(511, NULL, 29, '100', 1),
(512, NULL, 29, '101', 1),
(513, NULL, 29, '102', 1),
(514, NULL, 29, '103', 1),
(515, NULL, 29, '104', 1),
(516, NULL, 29, '105', 1),
(517, NULL, 29, '106', 1),
(518, NULL, 29, '107', 1),
(519, NULL, 29, '108', 1),
(520, NULL, 29, '109', 1),
(521, NULL, 29, '110', 1),
(522, NULL, 29, '111', 1),
(523, NULL, 29, '112', 1),
(524, NULL, 29, '113', 1),
(525, NULL, 29, '114', 1),
(526, NULL, 29, '115', 1),
(527, NULL, 29, '116', 1),
(528, NULL, 29, '117', 1),
(529, NULL, 29, '118', 1),
(530, NULL, 29, '119', 1),
(531, NULL, 29, '120', 1),
(532, NULL, 29, '121', 1),
(533, NULL, 29, '122', 1),
(534, NULL, 29, '123', 1),
(535, NULL, 29, '124', 1),
(536, NULL, 29, '125', 1),
(537, NULL, 29, '126', 1),
(538, NULL, 29, '127', 1),
(539, NULL, 29, '128', 1),
(540, NULL, 29, '129', 1),
(541, NULL, 29, '130', 1),
(542, NULL, 29, '131', 1),
(543, NULL, 29, '132', 1),
(544, NULL, 29, '133', 1),
(545, NULL, 29, '134', 1),
(546, NULL, 29, '135', 1),
(547, NULL, 29, '136', 1),
(548, NULL, 29, '137', 1),
(549, NULL, 29, '138', 1),
(550, NULL, 29, '139', 1),
(551, NULL, 29, '140', 1),
(552, NULL, 29, '141', 1),
(553, NULL, 29, '142', 1),
(554, NULL, 29, '143', 1),
(555, NULL, 29, '144', 1),
(556, NULL, 29, '145', 1),
(557, NULL, 29, '146', 1),
(558, NULL, 30, '1', 1),
(559, NULL, 30, '2', 1),
(560, NULL, 30, '3', 1),
(561, NULL, 30, '4', 1),
(562, NULL, 30, '5', 1),
(563, NULL, 30, '6', 1),
(564, NULL, 30, '7', 1),
(565, NULL, 30, '8', 1),
(566, NULL, 30, '9', 1),
(567, NULL, 30, '10', 1),
(568, NULL, 30, '11', 1),
(569, NULL, 30, '12', 1),
(570, NULL, 30, '13', 1),
(571, NULL, 30, '14', 1),
(572, NULL, 30, '15', 1),
(573, NULL, 30, '16', 1),
(574, NULL, 30, '17', 1),
(575, NULL, 30, '18', 1),
(576, NULL, 30, '19', 1),
(577, NULL, 30, '20', 1),
(578, NULL, 30, '21', 1),
(579, NULL, 30, '22', 1),
(580, NULL, 30, '23', 1),
(581, NULL, 30, '24', 1),
(582, NULL, 30, '25', 1),
(583, NULL, 30, '26', 1),
(584, NULL, 30, '27', 1),
(585, NULL, 30, '28', 1),
(586, NULL, 30, '29', 1),
(587, NULL, 30, '30', 1),
(588, NULL, 30, '31', 1),
(589, NULL, 30, '32', 1),
(590, NULL, 30, '33', 1),
(591, NULL, 30, '34', 1),
(592, NULL, 30, '35', 1),
(593, NULL, 30, '36', 1),
(594, NULL, 30, '37', 1),
(595, NULL, 30, '38', 1),
(596, NULL, 30, '39', 1),
(597, NULL, 30, '40', 1),
(598, NULL, 30, '41', 1),
(599, NULL, 31, '1', 1),
(600, NULL, 32, '1', 1),
(601, NULL, 32, '2', 1),
(602, NULL, 32, '3', 1),
(603, NULL, 32, '4', 1),
(604, NULL, 32, '5', 1),
(605, NULL, 32, '6', 1),
(606, NULL, 33, '1', 1),
(607, NULL, 34, '1', 1),
(608, NULL, 34, '2', 1),
(609, NULL, 35, '90', 1),
(610, NULL, 35, '91', 1),
(611, NULL, 36, '1', 1),
(612, NULL, 36, '2', 1),
(613, NULL, 36, '3', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_object_identity_ancestors`
--

CREATE TABLE `acl_object_identity_ancestors` (
  `object_identity_id` int(10) UNSIGNED NOT NULL,
  `ancestor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `acl_object_identity_ancestors`
--

INSERT INTO `acl_object_identity_ancestors` (`object_identity_id`, `ancestor_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100),
(101, 101),
(102, 102),
(103, 103),
(104, 104),
(105, 105),
(106, 106),
(107, 107),
(108, 108),
(109, 109),
(110, 110),
(111, 111),
(112, 112),
(113, 113),
(114, 114),
(115, 115),
(116, 116),
(117, 117),
(118, 118),
(119, 119),
(120, 120),
(121, 121),
(122, 122),
(123, 123),
(124, 124),
(125, 125),
(126, 126),
(127, 127),
(128, 128),
(129, 129),
(130, 130),
(131, 131),
(132, 132),
(133, 133),
(134, 134),
(135, 135),
(136, 136),
(137, 137),
(138, 138),
(139, 139),
(140, 140),
(141, 141),
(142, 142),
(143, 143),
(144, 144),
(145, 145),
(146, 146),
(147, 147),
(148, 148),
(149, 149),
(150, 150),
(151, 151),
(152, 152),
(153, 153),
(154, 154),
(155, 155),
(156, 156),
(157, 157),
(158, 158),
(159, 159),
(160, 160),
(161, 161),
(162, 162),
(163, 163),
(164, 164),
(165, 165),
(166, 166),
(167, 167),
(168, 168),
(169, 169),
(170, 170),
(171, 171),
(172, 172),
(173, 173),
(174, 174),
(175, 175),
(176, 176),
(177, 177),
(178, 178),
(179, 179),
(180, 180),
(181, 181),
(182, 182),
(183, 183),
(184, 184),
(185, 185),
(186, 186),
(187, 187),
(188, 188),
(189, 189),
(190, 190),
(191, 191),
(192, 192),
(193, 193),
(194, 194),
(195, 195),
(196, 196),
(197, 197),
(198, 198),
(199, 199),
(200, 200),
(201, 201),
(202, 202),
(203, 203),
(204, 204),
(205, 205),
(206, 206),
(207, 207),
(208, 208),
(209, 209),
(210, 210),
(211, 211),
(212, 212),
(213, 213),
(214, 214),
(215, 215),
(216, 216),
(217, 217),
(218, 218),
(219, 219),
(220, 220),
(221, 221),
(222, 222),
(223, 223),
(224, 224),
(225, 225),
(226, 226),
(227, 227),
(228, 228),
(229, 229),
(230, 230),
(231, 231),
(232, 232),
(233, 233),
(234, 234),
(235, 235),
(236, 236),
(237, 237),
(238, 238),
(239, 239),
(240, 240),
(241, 241),
(242, 242),
(243, 243),
(244, 244),
(245, 245),
(246, 246),
(247, 247),
(248, 248),
(249, 249),
(250, 250),
(251, 251),
(252, 252),
(253, 253),
(254, 254),
(255, 255),
(256, 256),
(257, 257),
(258, 258),
(259, 259),
(260, 260),
(261, 261),
(262, 262),
(263, 263),
(264, 264),
(265, 265),
(266, 266),
(267, 267),
(268, 268),
(269, 269),
(270, 270),
(271, 271),
(272, 272),
(273, 273),
(274, 274),
(275, 275),
(276, 276),
(277, 277),
(278, 278),
(279, 279),
(280, 280),
(281, 281),
(282, 282),
(283, 283),
(284, 284),
(285, 285),
(286, 286),
(287, 287),
(288, 288),
(289, 289),
(290, 290),
(291, 291),
(292, 292),
(293, 293),
(294, 294),
(295, 295),
(296, 296),
(297, 297),
(298, 298),
(299, 299),
(300, 300),
(301, 301),
(302, 302),
(303, 303),
(304, 304),
(305, 305),
(306, 306),
(307, 307),
(308, 308),
(309, 309),
(310, 310),
(311, 311),
(312, 312),
(313, 313),
(314, 314),
(315, 315),
(316, 316),
(317, 317),
(318, 318),
(319, 319),
(320, 320),
(321, 321),
(322, 322),
(323, 323),
(324, 324),
(325, 325),
(326, 326),
(327, 327),
(328, 328),
(329, 329),
(330, 330),
(331, 331),
(332, 332),
(333, 333),
(334, 334),
(335, 335),
(336, 336),
(337, 337),
(338, 338),
(339, 339),
(340, 340),
(341, 341),
(342, 342),
(343, 343),
(344, 344),
(345, 345),
(346, 346),
(347, 347),
(348, 348),
(349, 349),
(350, 350),
(351, 351),
(352, 352),
(353, 353),
(354, 354),
(355, 355),
(356, 356),
(357, 357),
(358, 358),
(359, 359),
(360, 360),
(361, 361),
(362, 362),
(363, 363),
(364, 364),
(365, 365),
(366, 366),
(367, 367),
(368, 368),
(369, 369),
(370, 370),
(371, 371),
(372, 372),
(373, 373),
(374, 374),
(375, 375),
(376, 376),
(377, 377),
(378, 378),
(379, 379),
(380, 380),
(381, 381),
(382, 382),
(383, 383),
(384, 384),
(385, 385),
(386, 386),
(387, 387),
(388, 388),
(389, 389),
(390, 390),
(391, 391),
(392, 392),
(393, 393),
(394, 394),
(395, 395),
(396, 396),
(397, 397),
(398, 398),
(399, 399),
(400, 400),
(401, 401),
(402, 402),
(403, 403),
(404, 404),
(405, 405),
(406, 406),
(407, 407),
(408, 408),
(409, 409),
(410, 410),
(411, 411),
(412, 412),
(413, 413),
(414, 414),
(415, 415),
(416, 416),
(417, 417),
(418, 418),
(419, 419),
(420, 420),
(421, 421),
(422, 422),
(423, 423),
(424, 424),
(425, 425),
(426, 426),
(427, 427),
(428, 428),
(429, 429),
(430, 430),
(431, 431),
(432, 432),
(433, 433),
(434, 434),
(435, 435),
(436, 436),
(437, 437),
(438, 438),
(439, 439),
(440, 440),
(441, 441),
(442, 442),
(443, 443),
(444, 444),
(445, 445),
(446, 446),
(447, 447),
(448, 448),
(449, 449),
(450, 450),
(451, 451),
(452, 452),
(453, 453),
(454, 454),
(455, 455),
(456, 456),
(457, 457),
(458, 458),
(459, 459),
(460, 460),
(461, 461),
(462, 462),
(463, 463),
(464, 464),
(465, 465),
(466, 466),
(467, 467),
(468, 468),
(469, 469),
(470, 470),
(471, 471),
(472, 472),
(473, 473),
(474, 474),
(475, 475),
(476, 476),
(477, 477),
(478, 478),
(479, 479),
(480, 480),
(481, 481),
(482, 482),
(483, 483),
(484, 484),
(485, 485),
(486, 486),
(487, 487),
(488, 488),
(489, 489),
(490, 490),
(491, 491),
(492, 492),
(493, 493),
(494, 494),
(495, 495),
(496, 496),
(497, 497),
(498, 498),
(499, 499),
(500, 500),
(501, 501),
(502, 502),
(503, 503),
(504, 504),
(505, 505),
(506, 506),
(507, 507),
(508, 508),
(509, 509),
(510, 510),
(511, 511),
(512, 512),
(513, 513),
(514, 514),
(515, 515),
(516, 516),
(517, 517),
(518, 518),
(519, 519),
(520, 520),
(521, 521),
(522, 522),
(523, 523),
(524, 524),
(525, 525),
(526, 526),
(527, 527),
(528, 528),
(529, 529),
(530, 530),
(531, 531),
(532, 532),
(533, 533),
(534, 534),
(535, 535),
(536, 536),
(537, 537),
(538, 538),
(539, 539),
(540, 540),
(541, 541),
(542, 542),
(543, 543),
(544, 544),
(545, 545),
(546, 546),
(547, 547),
(548, 548),
(549, 549),
(550, 550),
(551, 551),
(552, 552),
(553, 553),
(554, 554),
(555, 555),
(556, 556),
(557, 557),
(558, 558),
(559, 559),
(560, 560),
(561, 561),
(562, 562),
(563, 563),
(564, 564),
(565, 565),
(566, 566),
(567, 567),
(568, 568),
(569, 569),
(570, 570),
(571, 571),
(572, 572),
(573, 573),
(574, 574),
(575, 575),
(576, 576),
(577, 577),
(578, 578),
(579, 579),
(580, 580),
(581, 581),
(582, 582),
(583, 583),
(584, 584),
(585, 585),
(586, 586),
(587, 587),
(588, 588),
(589, 589),
(590, 590),
(591, 591),
(592, 592),
(593, 593),
(594, 594),
(595, 595),
(596, 596),
(597, 597),
(598, 598),
(599, 599),
(600, 600),
(601, 601),
(602, 602),
(603, 603),
(604, 604),
(605, 605),
(606, 606),
(607, 607),
(608, 608),
(609, 609),
(610, 610),
(611, 611),
(612, 612),
(613, 613);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_security_identities`
--

CREATE TABLE `acl_security_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `acl_security_identities`
--

INSERT INTO `acl_security_identities` (`id`, `identifier`, `username`) VALUES
(1, 'ROLE_APP_ADMIN_CATALOG_ADMIN', 0),
(2, 'ROLE_APP_ADMIN_CATALOG_EDITOR', 0),
(4, 'ROLE_APP_ADMIN_CATALOG_GUEST', 0),
(3, 'ROLE_APP_ADMIN_CATALOG_STAFF', 0),
(41, 'ROLE_APP_ADMIN_FASADES_COLOR_ADMIN', 0),
(42, 'ROLE_APP_ADMIN_FASADES_COLOR_EDITOR', 0),
(44, 'ROLE_APP_ADMIN_FASADES_COLOR_GUEST', 0),
(43, 'ROLE_APP_ADMIN_FASADES_COLOR_STAFF', 0),
(37, 'ROLE_APP_ADMIN_FASADES_TYPE_ADMIN', 0),
(38, 'ROLE_APP_ADMIN_FASADES_TYPE_EDITOR', 0),
(40, 'ROLE_APP_ADMIN_FASADES_TYPE_GUEST', 0),
(39, 'ROLE_APP_ADMIN_FASADES_TYPE_STAFF', 0),
(5, 'ROLE_APP_ADMIN_KUHNI_ADMIN', 0),
(13, 'ROLE_APP_ADMIN_KUHNI_COLOR_ADMIN', 0),
(14, 'ROLE_APP_ADMIN_KUHNI_COLOR_EDITOR', 0),
(16, 'ROLE_APP_ADMIN_KUHNI_COLOR_GUEST', 0),
(15, 'ROLE_APP_ADMIN_KUHNI_COLOR_STAFF', 0),
(29, 'ROLE_APP_ADMIN_KUHNI_CONFIG_ADMIN', 0),
(30, 'ROLE_APP_ADMIN_KUHNI_CONFIG_EDITOR', 0),
(32, 'ROLE_APP_ADMIN_KUHNI_CONFIG_GUEST', 0),
(31, 'ROLE_APP_ADMIN_KUHNI_CONFIG_STAFF', 0),
(6, 'ROLE_APP_ADMIN_KUHNI_EDITOR', 0),
(8, 'ROLE_APP_ADMIN_KUHNI_GUEST', 0),
(33, 'ROLE_APP_ADMIN_KUHNI_IMAGES_ADMIN', 0),
(34, 'ROLE_APP_ADMIN_KUHNI_IMAGES_EDITOR', 0),
(36, 'ROLE_APP_ADMIN_KUHNI_IMAGES_GUEST', 0),
(35, 'ROLE_APP_ADMIN_KUHNI_IMAGES_STAFF', 0),
(17, 'ROLE_APP_ADMIN_KUHNI_MASSIVE_ADMIN', 0),
(18, 'ROLE_APP_ADMIN_KUHNI_MASSIVE_EDITOR', 0),
(20, 'ROLE_APP_ADMIN_KUHNI_MASSIVE_GUEST', 0),
(19, 'ROLE_APP_ADMIN_KUHNI_MASSIVE_STAFF', 0),
(25, 'ROLE_APP_ADMIN_KUHNI_MATERIAL_ADMIN', 0),
(26, 'ROLE_APP_ADMIN_KUHNI_MATERIAL_EDITOR', 0),
(28, 'ROLE_APP_ADMIN_KUHNI_MATERIAL_GUEST', 0),
(27, 'ROLE_APP_ADMIN_KUHNI_MATERIAL_STAFF', 0),
(21, 'ROLE_APP_ADMIN_KUHNI_MDF_ADMIN', 0),
(22, 'ROLE_APP_ADMIN_KUHNI_MDF_EDITOR', 0),
(24, 'ROLE_APP_ADMIN_KUHNI_MDF_GUEST', 0),
(23, 'ROLE_APP_ADMIN_KUHNI_MDF_STAFF', 0),
(7, 'ROLE_APP_ADMIN_KUHNI_STAFF', 0),
(9, 'ROLE_APP_ADMIN_KUHNI_STYLE_ADMIN', 0),
(10, 'ROLE_APP_ADMIN_KUHNI_STYLE_EDITOR', 0),
(12, 'ROLE_APP_ADMIN_KUHNI_STYLE_GUEST', 0),
(11, 'ROLE_APP_ADMIN_KUHNI_STYLE_STAFF', 0),
(45, 'ROLE_APP_ADMIN_ORDER_CALLBACK_ADMIN', 0),
(46, 'ROLE_APP_ADMIN_ORDER_CALLBACK_EDITOR', 0),
(48, 'ROLE_APP_ADMIN_ORDER_CALLBACK_GUEST', 0),
(47, 'ROLE_APP_ADMIN_ORDER_CALLBACK_STAFF', 0),
(65, 'ROLE_APP_ADMIN_ORDER_COSTPROJECT_ADMIN', 0),
(66, 'ROLE_APP_ADMIN_ORDER_COSTPROJECT_EDITOR', 0),
(68, 'ROLE_APP_ADMIN_ORDER_COSTPROJECT_GUEST', 0),
(67, 'ROLE_APP_ADMIN_ORDER_COSTPROJECT_STAFF', 0),
(49, 'ROLE_APP_ADMIN_ORDER_DESIGNERATHOME_ADMIN', 0),
(50, 'ROLE_APP_ADMIN_ORDER_DESIGNERATHOME_EDITOR', 0),
(52, 'ROLE_APP_ADMIN_ORDER_DESIGNERATHOME_GUEST', 0),
(51, 'ROLE_APP_ADMIN_ORDER_DESIGNERATHOME_STAFF', 0),
(61, 'ROLE_APP_ADMIN_ORDER_FREEDESIGNPROJECT_ADMIN', 0),
(62, 'ROLE_APP_ADMIN_ORDER_FREEDESIGNPROJECT_EDITOR', 0),
(64, 'ROLE_APP_ADMIN_ORDER_FREEDESIGNPROJECT_GUEST', 0),
(63, 'ROLE_APP_ADMIN_ORDER_FREEDESIGNPROJECT_STAFF', 0),
(53, 'ROLE_APP_ADMIN_ORDER_REQUESTCALL_ADMIN', 0),
(54, 'ROLE_APP_ADMIN_ORDER_REQUESTCALL_EDITOR', 0),
(56, 'ROLE_APP_ADMIN_ORDER_REQUESTCALL_GUEST', 0),
(55, 'ROLE_APP_ADMIN_ORDER_REQUESTCALL_STAFF', 0),
(57, 'ROLE_APP_ADMIN_ORDER_ZAYAVKARAZMER_ADMIN', 0),
(58, 'ROLE_APP_ADMIN_ORDER_ZAYAVKARAZMER_EDITOR', 0),
(60, 'ROLE_APP_ADMIN_ORDER_ZAYAVKARAZMER_GUEST', 0),
(59, 'ROLE_APP_ADMIN_ORDER_ZAYAVKARAZMER_STAFF', 0),
(69, 'ROLE_SONATA_USER_ADMIN_USER_ADMIN', 0),
(70, 'ROLE_SONATA_USER_ADMIN_USER_EDITOR', 0),
(72, 'ROLE_SONATA_USER_ADMIN_USER_GUEST', 0),
(71, 'ROLE_SONATA_USER_ADMIN_USER_STAFF', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `call_back`
--

CREATE TABLE `call_back` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `call_back`
--

INSERT INTO `call_back` (`id`, `name`, `email`, `phone`, `geoIP`, `created`, `url`, `message`, `id_salon`) VALUES
(1, 'Павео', 'antosha.1998.ru@mail.ru', '+745646514564', 'Не удалось определить координаты посетителя', '2017-10-18 10:46:53', '123', 'gfdhngf', NULL),
(2, 'Anthony', 'antosha.1998.ru@mail.ru', '+', 'Не удалось определить координаты посетителя', '2017-10-18 10:48:07', '123', 'sas', NULL),
(3, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+37512312313123', 'Не удалось определить координаты посетителя', '2017-10-18 10:55:39', '123', 'я тут', NULL),
(4, 'Anthony', 'antosha.1998.ru@mail.ru', '+7298324405', 'Не удалось определить координаты посетителя', '2017-10-18 11:01:39', '123', 'пукпуцпку', NULL),
(5, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+754644565465', 'Не удалось определить координаты посетителя', '2017-10-18 11:04:01', '123', 'hrthdrthrt', NULL),
(6, 'Anthony', 'antosha.1998.ru@mail.ru', '+722222222222', 'Не удалось определить координаты посетителя', '2017-10-18 11:06:05', '123', 'fewewfwe', NULL),
(7, 'Anthony', 'antosha.1998.ru@mail.ru', '+722222222222', 'Не удалось определить координаты посетителя', '2017-10-18 11:06:45', '123', 'fewewfwe', NULL),
(8, 'Anthony', 'antosha.1998.ru@mail.ru', '+712312312', 'Не удалось определить координаты посетителя', '2017-10-18 11:10:37', '123', '2rewre', NULL),
(9, 'Anthony', 'antosha.1998.ru@mail.ru', '+71', 'Не удалось определить координаты посетителя', '2017-10-18 11:13:12', '123', 'fewertg', NULL),
(10, 'Anthony', 'antosha.1998.ru@mail.ru', '+7298324405', 'Не удалось определить координаты посетителя', '2017-10-18 11:16:15', '123', 'dvf', NULL),
(11, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7298324405', 'Не удалось определить координаты посетителя', '2017-10-18 11:16:54', '123', 'mgghm', NULL),
(12, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7298324405', 'Не удалось определить координаты посетителя', '2017-10-18 11:17:53', '123', 'trhsrt', NULL),
(13, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7298324405', 'Не удалось определить координаты посетителя', '2017-10-18 11:35:19', '123', 'rhrhert', NULL),
(14, '', '', '+70', 'Не удалось определить координаты посетителя', '2017-10-18 11:55:21', '123', '', NULL),
(15, '', '', '+70', 'Не удалось определить координаты посетителя', '2017-10-18 11:59:39', '123', '', NULL),
(16, '', '', '+70', 'Не удалось определить координаты посетителя', '2017-10-18 12:02:27', '123', '', NULL),
(17, '', '', '+70', 'Не удалось определить координаты посетителя', '2017-10-18 12:03:58', '123', '', NULL),
(18, '', '', '+70', 'Не удалось определить координаты посетителя', '2017-10-18 12:04:45', '123', '', NULL),
(19, '', '', '+70', 'Не удалось определить координаты посетителя', '2017-10-18 12:06:59', '123', '', NULL),
(20, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '++7 (___) 345-32-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:20:35', 'http://kitchen/web/app_dev.php/', 'rth', NULL),
(21, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '++7 (_34) 234-23-42', 'Не удалось определить координаты посетителя', '2017-10-18 12:23:09', 'http://kitchen/web/app_dev.php/', 'geweghw', NULL),
(22, 'Anthony', 'antosha.1998.ru@mail.ru', '++7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:24:15', 'http://kitchen/web/app_dev.php/', 'regqre', NULL),
(23, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:26:23', 'http://kitchen/web/app_dev.php/', 'dsgre', NULL),
(24, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:26:26', 'http://kitchen/web/app_dev.php/', 'dsgre', NULL),
(25, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:26:26', 'http://kitchen/web/app_dev.php/', 'dsgre', NULL),
(26, 'Anthony', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:27:10', 'http://kitchen/web/app_dev.php/', 'dfbzdf', NULL),
(27, 'Anthony', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:27:12', 'http://kitchen/web/app_dev.php/', 'dfbzdf', NULL),
(28, 'Anthony', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:27:12', 'http://kitchen/web/app_dev.php/', 'dfbzdf', NULL),
(29, 'Anthony', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:27:13', 'http://kitchen/web/app_dev.php/', 'dfbzdf', NULL),
(30, 'Павео', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:30:18', 'http://kitchen/web/app_dev.php/', 'k', NULL),
(31, 'Павео', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:30:19', 'http://kitchen/web/app_dev.php/', 'k', NULL),
(32, 'Павео', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:30:20', 'http://kitchen/web/app_dev.php/', 'k', NULL),
(33, 'Anthony', 'antosha.1998.ru@mail.ru', '+298324405', 'Не удалось определить координаты посетителя', '2017-10-18 12:30:57', 'http://kitchen/web/app_dev.php/', 'gfsnf', NULL),
(34, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:31:08', 'http://kitchen/web/app_dev.php/', 'ydjty', NULL),
(35, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:31:10', 'http://kitchen/web/app_dev.php/', 'ydjty', NULL),
(36, 'Anthony', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:32:15', 'http://kitchen/web/app_dev.php/', 'hjf', NULL),
(37, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', '2017-10-18 12:32:38', 'http://kitchen/web/app_dev.php/', 'reger', NULL),
(38, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-20 09:10:04', 'http://kitchen/web/app_dev.php/', 'ytjty', NULL),
(39, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-20 11:17:26', 'http://kitchen/web/app_dev.php/', 'tyuity', NULL),
(40, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-20 11:19:11', 'http://kitchen/web/app_dev.php/', '4r34', NULL),
(41, 'Павео', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-20 11:21:29', 'http://kitchen/web/app_dev.php/', 'hdteh', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `title`, `description`, `keywords`, `alt`, `imageName`, `imageSize`, `updated`) VALUES
(1, 'КУХНИ', 'Каталог кухонь', 'В нашем салоне в Москве вы можете приобрести кухонный гарнитур от фабрики ЗОВ', 'кухни, москва, кухни зов', 'Кухни Москва', 'catalog_home.jpg', 12200, '2017-10-02 11:44:12'),
(2, 'СТОЛЫ И СТУЛЬЯ', 'Обеденные группы', 'В нашем салоне в Москве вы можете приобрести кухонный гарнитур от фабрики ЗОВ', 'кухни, москва, кухни зов', 'Alpha Lack', 'catalog_home_stoly.jpg', 12200, '2017-10-02 11:44:12'),
(3, 'ГОСТИНЫЕ и СПАЛЬНИ', 'Корпусная мебель', 'В нашем салоне в Москве вы можете приобрести кухонный гарнитур от фабрики ЗОВ', 'кухни, москва, кухни зов', 'Гостиные Спальни Москва', 'catalog_home_gostinye.jpg', 12200, '2017-10-02 11:44:12'),
(4, 'ДВЕРИ ИЗ МАССИВА', 'Межкомнатные двери', 'В нашем салоне в Москве вы можете приобрести кухонный гарнитур от фабрики ЗОВ', 'кухни, москва, кухни зов', 'Двери межкомнатные Москва', 'catalog_home_dveri.jpg', 12200, '2017-10-02 11:44:12'),
(5, 'КОМПЛЕКТУЮЩИЕ', 'Наполнение кухонь', 'В нашем салоне в Москве вы можете приобрести кухонный гарнитур от фабрики ЗОВ', 'кухни, москва, кухни зов', 'Glas Tec Plus', 'catalog_home_furnitura.jpg', 12200, '2017-10-02 11:44:12');

-- --------------------------------------------------------

--
-- Структура таблицы `cost_project`
--

CREATE TABLE `cost_project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `cost_project`
--

INSERT INTO `cost_project` (`id`, `name`, `phone`, `email`, `message`, `url`, `geoIP`, `imageName`, `imageSize`, `updated`, `id_salon`) VALUES
(90, 'Антон Бабич', '+7 (495)123-45-678', 'antosha.1998.ru@mail.ru', 'уцкцу', 'http://kitchen/web/app_dev.php/', 'Не удалось определить координаты посетителя', 'fasad-acryl-shampagnemetallik.jpg', 12997, '2017-10-23 10:43:18', NULL),
(91, 'Антон Бабич', '+7 (495)123-45-678', 'antosha.1998.ru@mail.ru', 'Пожалуйста', 'http://kitchen/web/app_dev.php/', 'Не удалось определить координаты посетителя', 'fasad-acryl-belyi.jpg', 12366, '2017-10-23 10:44:07', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `designer_at_home`
--

CREATE TABLE `designer_at_home` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `designer_at_home`
--

INSERT INTO `designer_at_home` (`id`, `name`, `phone`, `message`, `geoIP`, `url`, `created`, `id_salon`) VALUES
(1, 'антон', '726545645', 'йцуйцкуйа', '1231', '141', '2017-10-26 10:28:28', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `design_project_shag`
--

CREATE TABLE `design_project_shag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `design_project_shag`
--

INSERT INTO `design_project_shag` (`id`, `name`, `email`, `phone`, `geoIP`, `created`, `url`, `style`, `config`, `id_salon`) VALUES
(1, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-30 10:31:11', 'http://kitchen/web/app_dev.php/', 'Классические', '', NULL),
(2, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '298324405', 'Не удалось определить координаты посетителя', '2017-10-30 10:49:00', 'http://kitchen/web/app_dev.php/', 'Классические', 'kitchentype_pobraznye', NULL),
(3, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-30 10:53:47', 'http://kitchen/web/app_dev.php/', 'Классические', 'kitchentype_pobraznye', NULL),
(4, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-30 10:56:05', 'http://kitchen/web/app_dev.php/', 'Классические', 'kitchentype_pobraznye', NULL),
(5, 'Антон Бабич', 'antosha.1998.ru@mail.ru', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-10-30 10:58:23', 'http://kitchen/web/app_dev.php/', 'Классические', 'kitchentype_pobraznye', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fasad_color`
--

CREATE TABLE `fasad_color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `id_kuhni_material` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fasad_color`
--

INSERT INTO `fasad_color` (`id`, `name`, `title`, `imageName`, `alt`, `imageSize`, `updated`, `id_kuhni_material`) VALUES
(1, '101', 'Фасад массив цвет 101 — Бежевая патина', 'fasad-massiv-101.jpg', 'Фасад массив цвет 101 — Бежевая патина', 1024, '2017-10-06 15:25:36', 1),
(2, '102', 'Фасад массив цвет 102 — Черная патина', 'fasad-massiv-102.jpg', 'Фасад массив цвет 102 — Черная патина', 1024, '0000-00-00 15:25:36', 2),
(3, '106', 'Фасад массив цвет 106 — Черная патина', 'fasad-massiv-106.jpg', 'Фасад массив цвет 106 — Черная патина', 1024, '0000-00-00 15:25:36', 3),
(4, '109', 'Фасад массив цвет 109 — Черная патина', 'fasad-massiv-109.jpg', 'Фасад массив цвет 109 — Черная патина', 1024, '0000-00-00 15:25:36', 4),
(5, '110', 'Фасад массив цвет 110 — Бежевая патина', 'fasad-massiv-110.jpg', 'Фасад массив цвет 110 — Бежевая патина', 1024, '0000-00-00 15:25:36', 5),
(6, '111*', 'Фасад массив цвет 111 — Черная патина (кроме ольхи)', 'fasad-massiv-111.jpg', 'Фасад массив цвет 111 — Черная патина (кроме ольхи)', 1024, '0000-00-00 15:25:36', 6),
(7, '112', 'Фасад массив цвет 112 — Рыжая патина', 'fasad-massiv-112.jpg', 'Фасад массив цвет 112 — Рыжая патина', 1024, '0000-00-00 15:25:36', 7),
(8, '112', 'Фасад массив цвет 112 — Патина X109', 'fasad-massiv-112-2.jpg', 'Фасад массив цвет 112 — Патина X109', 1024, '0000-00-00 15:25:36', 8),
(9, '113', 'Фасад массив цвет 113 — Черная патина', 'fasad-massiv-113.jpg', 'Фасад массив цвет 113 — Черная патина', 1024, '0000-00-00 15:25:36', 9),
(10, '114*', 'Фасад массив цвет 114 — Патина серебро (кроме ольхи)', 'fasad-massiv-114.jpg', 'Фасад массив цвет 114 — Патина серебро (кроме ольхи)', 1024, '0000-00-00 15:25:36', 10),
(11, '115', 'Фасад массив цвет 115 — Золотая патина', 'fasad-massiv-115.jpg', 'Фасад массив цвет 115 — Золотая патина', 1024, '0000-00-00 15:25:36', 11),
(12, '116', 'Фасад массив цвет 116 — Золотая патина', 'fasad-massiv-116.jpg', 'Фасад массив цвет 116 — Золотая патина', 1024, '0000-00-00 15:25:36', 12),
(13, '117', 'Фасад массив цвет 117 — Бежевая патина', 'fasad-massiv-117.jpg', 'Фасад массив цвет 117 — Бежевая патина', 1024, '0000-00-00 15:25:36', 13),
(14, '118', 'Фасад массив цвет 118 — Патина серебро', 'fasad-massiv-118.jpg', 'Фасад массив цвет 118 — Патина серебро', 1024, '2017-10-06 15:25:36', 1),
(15, '120', 'Фасад массив цвет 120', 'fasad-massiv-120.jpg', 'Фасад массив цвет 120', 1024, '2017-10-06 15:25:36', 2),
(16, '121', 'Фасад массив цвет 121', 'fasad-massiv-121.jpg', 'Фасад массив цвет 121', 1024, '2017-10-06 15:25:36', 3),
(17, '122', 'Фасад массив цвет 122 — Белая патина', 'fasad-massiv-122.jpg', 'Фасад массив цвет 122 — Белая патина', 1024, '2017-10-06 15:25:36', 4),
(18, '123', 'Фасад массив цвет 123 — Черная патина', 'fasad-massiv-123.jpg', 'Фасад массив цвет 123 — Черная патина', 1024, '2017-10-06 15:25:36', 5),
(19, '124', 'Фасад массив цвет 124', 'fasad-massiv-124.jpg', 'Фасад массив цвет 124', 1024, '2017-10-06 15:25:36', 6),
(20, '125', 'Фасад массив цвет 125', 'fasad-massiv-125.jpg', 'Фасад массив цвет 125', 1024, '2017-10-06 15:25:36', 7),
(21, '126', 'Фасад массив цвет 126 — Золотая патина', 'fasad-massiv-126.jpg', 'Фасад массив цвет 126 — Золотая патина', 1024, '2017-10-06 15:25:36', 8),
(22, '127', 'Фасад массив цвет 127 — Черная патина', 'fasad-massiv-127.jpg', 'Фасад массив цвет 127 — Черная патина', 1024, '2017-10-06 15:25:36', 9),
(23, '128', 'Фасад массив цвет 128 — Черная патина', 'fasad-massiv-128.jpg', 'Фасад массив цвет 128 — Черная патина', 1024, '2017-10-06 15:25:36', 10),
(24, '129', 'Фасад массив цвет 129 — Патина серебро', 'fasad-massiv-129.jpg', 'Фасад массив цвет 129 — Патина серебро', 1024, '2017-10-06 15:25:36', 11),
(25, '130', 'Фасад массив цвет 130 — Черная патина', 'fasad-massiv-130.jpg', 'Фасад массив цвет 130 — Черная патина', 1024, '2017-10-06 15:25:36', 12),
(26, '131', 'Фасад массив цвет 131 — Патина шоколад', 'fasad-massiv-131.jpg', 'Фасад массив цвет 131 — Патина шоколад', 1024, '2017-10-06 15:25:36', 13),
(27, '132', 'Фасад массив цвет 132 — Патина шоколад', 'fasad-massiv-132.jpg', 'Фасад массив цвет 132 — Патина шоколад', 1024, '2017-10-06 15:25:36', 3),
(28, '133', 'Фасад массив цвет 133 — Золотая патина', 'fasad-massiv-133.jpg', 'Фасад массив цвет 133 — Золотая патина', 1024, '2017-10-06 15:25:36', 4),
(29, '134', 'Фасад массив цвет 134 — Черная патина', 'fasad-massiv-134.jpg', 'Фасад массив цвет 134 — Черная патина', 1024, '2017-10-06 15:25:36', 5),
(30, '135 (F167)', 'Фасад массив цвет 135 (F167) — Патина графит', 'fasad-massiv-135.jpg', 'Фасад массив цвет 135 (F167) — Патина графит', 1024, '2017-10-06 15:25:36', 6),
(31, '136 (S052)', 'Фасад массив цвет 136 (S052) — Патина X109', 'fasad-massiv-136.jpg', 'Фасад массив цвет 136 (S052) — Патина X109', 1024, '2017-10-06 15:25:36', 7),
(32, '137 (N031)', 'Фасад массив цвет 137 (N031) — Золотая патина лак глянец 50', 'fasad-massiv-137.jpg', 'Фасад массив цвет 137 (N031) — Золотая патина лак глянец 50', 1024, '2017-10-06 15:25:36', 8),
(33, 'Зебрано светлый', 'Фасад из акрила цвет Зебрано светлый', 'fasad-acryl-zebranosvetlyi.jpg', 'Фасад из акрила цвет Зебрано светлый', 0, '0000-00-00 00:00:00', 1),
(34, 'Вишня', 'Фасад из акрила цвет Вишня', 'fasad-acryl-vishnia.jpg', 'Фасад из акрила цвет Вишня', 0, '0000-00-00 00:00:00', 2),
(35, 'Винил', 'Фасад из акрила цвет Винил', 'fasad-acryl-vinyl.jpg', 'Фасад из акрила цвет Винил', 0, '0000-00-00 00:00:00', 3),
(36, 'Уголь металлик', 'Фасад из акрила цвет Уголь металлик', 'fasad-acryl-ugolmetallik.jpg', 'Фасад из акрила цвет Уголь металлик', 0, '0000-00-00 00:00:00', 4),
(37, 'Трюфель', 'Фасад из акрила цвет Трюфель', 'fasad-acryl-trufel.jpg', 'Фасад из акрила цвет Трюфель', 0, '0000-00-00 00:00:00', 5),
(38, 'Тальк', 'Фасад из акрила цвет Тальк', 'fasad-acryl-talk.jpg', 'Фасад из акрила цвет Тальк', 0, '0000-00-00 00:00:00', 6),
(39, 'Светлосерый', 'Фасад из акрила цвет Светлосерый', 'fasad-acryl-svetloseryi.jpg', 'Фасад из акрила цвет Светлосерый', 0, '0000-00-00 00:00:00', 7),
(40, 'Сталь', 'Фасад из акрила цвет Сталь', 'fasad-acryl-stal.jpg', 'Фасад из акрила цвет Сталь', 0, '0000-00-00 00:00:00', 8),
(41, 'Сливки', 'Фасад из акрила цвет Сливки', 'fasad-acryl-slivki.jpg', 'Фасад из акрила цвет Сливки', 0, '0000-00-00 00:00:00', 9),
(42, 'Шоколад', 'Фасад из акрила цвет Шоколад', 'fasad-acryl-shokolad.jpg', 'Фасад из акрила цвет Шоколад', 0, '0000-00-00 00:00:00', 10),
(43, 'Шампань металлик', 'Фасад из акрила цвет Шампань металлик', 'fasad-acryl-shampagnemetallik.jpg', 'Фасад из акрила цвет Шампань металлик', 0, '0000-00-00 00:00:00', 11),
(44, 'Сахар', 'Фасад из акрила цвет Сахар', 'fasad-acryl-sahar.jpg', 'Фасад из акрила цвет Сахар', 0, '0000-00-00 00:00:00', 12),
(45, 'Пепел', 'Фасад из акрила цвет Пепел', 'fasad-acryl-pepel.jpg', 'Фасад из акрила цвет Пепел', 0, '0000-00-00 00:00:00', 13),
(46, 'Облепиха', 'Фасад из акрила цвет Облепиха', 'fasad-acryl-oblepiha.jpg', 'Фасад из акрила цвет Облепиха', 0, '0000-00-00 00:00:00', 1),
(47, 'Какао', 'Фасад из акрила цвет Какао', 'fasad-acryl-kakao.jpg', 'Фасад из акрила цвет Какао', 0, '0000-00-00 00:00:00', 2),
(48, 'Грифель металлик', 'Фасад из акрила цвет Грифель металлик', 'fasad-acryl-griffelmetallik.jpg', 'Фасад из акрила цвет Грифель металлик', 0, '0000-00-00 00:00:00', 3),
(49, 'Графит', 'Фасад из акрила цвет Графит', 'fasad-acryl-graphite.jpg', 'Фасад из акрила цвет Графит', 0, '0000-00-00 00:00:00', 4),
(50, 'Гранат', 'Фасад из акрила цвет Гранат', 'fasad-acryl-granat.jpg', 'Фасад из акрила цвет Гранат', 0, '0000-00-00 00:00:00', 5),
(51, 'Фиолет', 'Фасад из акрила цвет Фиолет', 'fasad-acryl-fiolet.jpg', 'Фасад из акрила цвет Фиолет', 0, '0000-00-00 00:00:00', 6),
(52, 'Ежевика', 'Фасад из акрила цвет Ежевика', 'fasad-acryl-ezhevika.jpg', 'Фасад из акрила цвет Ежевика', 0, '0000-00-00 00:00:00', 7),
(53, 'Бордо', 'Фасад из акрила цвет Бордо', 'fasad-acryl-bordo.jpg', 'Фасад из акрила цвет Бордо', 0, '0000-00-00 00:00:00', 8),
(54, 'Белый', 'Фасад из акрила цвет Белый', 'fasad-acryl-belyi.jpg', 'Фасад из акрила цвет Белый', 0, '0000-00-00 00:00:00', 9),
(55, 'Желтый', 'Фасад из пластика цвет Желтый', 'fasad-plastic-zheltyi.jpg', 'Фасад из пластика цвет Желтый', 0, '0000-00-00 00:00:00', 10),
(56, 'Зеленый', 'Фасад из пластика цвет Зеленый', 'fasad-plastic-zelenyi.jpg', 'Фасад из пластика цвет Зеленый', 0, '0000-00-00 00:00:00', 11),
(57, 'Туя', 'Фасад из пластика цвет Туя', 'fasad-plastic-tuia.jpg', 'Фасад из пластика цвет Туя', 0, '0000-00-00 00:00:00', 12),
(58, 'Шторм', 'Фасад из пластика цвет Шторм', 'fasad-plastic-storm.jpg', 'Фасад из пластика цвет Шторм', 0, '0000-00-00 00:00:00', 13),
(59, 'Снежный', 'Фасад из пластика цвет Снежный', 'fasad-plastic-snezhnyi.jpg', 'Фасад из пластика цвет Снежный', 0, '0000-00-00 00:00:00', 3),
(60, 'Шелк', 'Фасад из пластика цвет Шелк', 'fasad-plastic-silk.jpg', 'Фасад из пластика цвет Шелк', 0, '0000-00-00 00:00:00', 4),
(61, 'Серый перламутр', 'Фасад из пластика цвет Серый перламутр', 'fasad-plastic-seryiperlamutr.jpg', 'Фасад из пластика цвет Серый перламутр', 0, '0000-00-00 00:00:00', 5),
(62, 'Серый', 'Фасад из пластика цвет Серый', 'fasad-plastic-seryi.jpg', 'Фасад из пластика цвет Серый', 0, '0000-00-00 00:00:00', 6),
(63, 'Салатовый', 'Фасад из пластика цвет Салатовый', 'fasad-plastic-salatovyi.jpg', 'Фасад из пластика цвет Салатовый', 0, '0000-00-00 00:00:00', 7),
(64, 'Полосатый дуб', 'Фасад из пластика цвет Полосатый дуб', 'fasad-plastic-polosatyidub.jpg', 'Фасад из пластика цвет Полосатый дуб', 0, '0000-00-00 00:00:00', 8),
(65, 'Нуга', 'Фасад из пластика цвет Нуга', 'fasad-plastic-nuga.jpg', 'Фасад из пластика цвет Нуга', 0, '0000-00-00 00:00:00', 1),
(66, 'Ночь', 'Фасад из пластика цвет Ночь', 'fasad-plastic-noch.jpg', 'Фасад из пластика цвет Ночь', 0, '0000-00-00 00:00:00', 2),
(67, 'Мореный дуб', 'Фасад из пластика цвет Мореный дуб', 'fasad-plastic-morenyidub.jpg', 'Фасад из пластика цвет Мореный дуб', 0, '0000-00-00 00:00:00', 3),
(68, 'Мята', 'Фасад из пластика цвет Мята', 'fasad-plastic-mint.jpg', 'Фасад из пластика цвет Мята', 0, '0000-00-00 00:00:00', 4),
(69, 'Медь перламутр', 'Фасад из пластика цвет Медь перламутр', 'fasad-plastic-med.jpg', 'Фасад из пластика цвет Медь перламутр', 0, '0000-00-00 00:00:00', 5),
(70, 'Махонь', 'Фасад из пластика цвет Махонь', 'fasad-plastic-mahon.jpg', 'Фасад из пластика цвет Махонь', 0, '0000-00-00 00:00:00', 6),
(71, 'Лотос черный', 'Фасад из пластика цвет Лотос черный', 'fasad-plastic-lotoschernyi.jpg', 'Фасад из пластика цвет Лотос черный', 0, '0000-00-00 00:00:00', 7),
(72, 'Лотос белый', 'Фасад из пластика цвет Лотос белый', 'fasad-plastic-lotosbelyi.jpg', 'Фасад из пластика цвет Лотос белый', 0, '0000-00-00 00:00:00', 8),
(73, 'Крем перламутр', 'Фасад из пластика цвет Крем перламутр', 'fasad-plastic-krem.jpg', 'Фасад из пластика цвет Крем перламутр', 0, '0000-00-00 00:00:00', 9),
(74, 'Красный', 'Фасад из пластика цвет Красный', 'fasad-plastic-krasnyi.jpg', 'Фасад из пластика цвет Красный', 0, '0000-00-00 00:00:00', 10),
(75, 'Корица', 'Фасад из пластика цвет Корица', 'fasad-plastic-koritsa.jpg', 'Фасад из пластика цвет Корица', 0, '0000-00-00 00:00:00', 11),
(76, 'Кофе', 'Фасад из пластика цвет Кофе', 'fasad-plastic-kofe.jpg', 'Фасад из пластика цвет Кофе', 0, '0000-00-00 00:00:00', 12),
(77, 'Капучино', 'Фасад из пластика цвет Капучино', 'fasad-plastic-kapuchino.jpg', 'Фасад из пластика цвет Капучино', 0, '0000-00-00 00:00:00', 13),
(78, 'Ива', 'Фасад из пластика цвет Ива', 'fasad-plastic-iva.jpg', 'Фасад из пластика цвет Ива', 0, '0000-00-00 00:00:00', 1),
(79, 'Хаки', 'Фасад из пластика цвет Хаки', 'fasad-plastic-haki.jpg', 'Фасад из пластика цвет Хаки', 0, '0000-00-00 00:00:00', 2),
(80, 'Фиалка', 'Фасад из пластика цвет Фиалка', 'fasad-plastic-fialka.jpg', 'Фасад из пластика цвет Фиалка', 0, '0000-00-00 00:00:00', 3),
(81, 'Цитрус', 'Фасад из пластика цвет Цитрус', 'fasad-plastic-citrus.jpg', 'Фасад из пластика цвет Цитрус', 0, '0000-00-00 00:00:00', 4),
(82, 'Бирюзовый', 'Фасад из пластика цвет Бирюзовый', 'fasad-plastic-biruzovyi.jpg', 'Фасад из пластика цвет Бирюзовый', 0, '0000-00-00 00:00:00', 5),
(83, 'Бежевый', 'Фасад из пластика цвет Бежевый', 'fasad-plastic-bezhevyi.jpg', 'Фасад из пластика цвет Бежевый', 0, '0000-00-00 00:00:00', 6),
(84, 'Баклажан', 'Фасад из пластика цвет Баклажан', 'fasad-plastic-baklazhan.jpg', 'Фасад из пластика цвет Баклажан', 0, '0000-00-00 00:00:00', 7),
(85, 'Арктик белый', 'Фасад из пластика цвет Арктик белый', 'fasad-plastic-arcticbelyi.jpg', 'Фасад из пластика цвет Арктик белый', 0, '0000-00-00 00:00:00', 8),
(86, 'Апельсин', 'Фасад из пластика цвет Апельсин', 'fasad-plastic-apelsin.jpg', 'Фасад из пластика цвет Апельсин', 0, '0000-00-00 00:00:00', 9),
(87, 'Антрацит перламутр', 'Фасад из пластика цвет Антрацит перламутр', 'fasad-plastic-antratsit.jpg', 'Фасад из пластика цвет Антрацит перламутр', 0, '0000-00-00 00:00:00', 10),
(88, 'Жемчуг', 'Фасад из стекла цвет Жемчуг', 'fasad-glass-zhemchug.jpg', 'Фасад из стекла цвет Жемчуг', 0, '0000-00-00 00:00:00', 11),
(89, 'Ультрабелый', 'Фасад из стекла цвет Ультрабелый', 'fasad-glass-ultrabelyi.jpg', 'Фасад из стекла цвет Ультрабелый', 0, '0000-00-00 00:00:00', 12),
(90, 'Саншайн', 'Фасад из стекла цвет Саншайн', 'fasad-glass-sunshine.jpg', 'Фасад из стекла цвет Саншайн', 0, '0000-00-00 00:00:00', 13),
(91, 'Смоль', 'Фасад из стекла цвет Смоль', 'fasad-glass-smol.jpg', 'Фасад из стекла цвет Смоль', 0, '0000-00-00 00:00:00', 3),
(92, 'Миндаль', 'Фасад из стекла цвет Миндаль', 'fasad-glass-mindal.jpg', 'Фасад из стекла цвет Миндаль', 0, '0000-00-00 00:00:00', 4),
(93, 'Каштан', 'Фасад из стекла цвет Каштан', 'fasad-glass-kashtan.jpg', 'Фасад из стекла цвет Каштан', 0, '0000-00-00 00:00:00', 5),
(94, 'Изумруд', 'Фасад из стекла цвет Изумруд', 'fasad-glass-izumrud.jpg', 'Фасад из стекла цвет Изумруд', 0, '0000-00-00 00:00:00', 6),
(95, 'Гавана', 'Фасад из стекла цвет Гавана', 'fasad-glass-gavana.jpg', 'Фасад из стекла цвет Гавана', 0, '0000-00-00 00:00:00', 7),
(96, 'Алый', 'Фасад из стекла цвет Алый', 'fasad-glass-alyi.jpg', 'Фасад из стекла цвет Алый', 0, '0000-00-00 00:00:00', 8),
(97, 'Аква', 'Фасад из стекла цвет Аква', 'fasad-glass-akva.jpg', 'Фасад из стекла цвет Аква', 0, '0000-00-00 00:00:00', 1),
(98, 'Золото', 'Фасад/корпус ДСП цвет Золото', 'fasad-dsp-zoloto.jpg', 'Фасад/корпус ДСП цвет Золото', 0, '0000-00-00 00:00:00', 2),
(99, 'Верба', 'Фасад/корпус ДСП цвет Верба', 'fasad-dsp-verba.jpg', 'Фасад/корпус ДСП цвет Верба', 0, '0000-00-00 00:00:00', 3),
(100, 'Сантана', 'Фасад/корпус ДСП цвет Сантана', 'fasad-dsp-santana.jpg', 'Фасад/корпус ДСП цвет Сантана', 0, '0000-00-00 00:00:00', 4),
(101, 'Самшит', 'Фасад/корпус ДСП цвет Самшит', 'fasad-dsp-samshit.jpg', 'Фасад/корпус ДСП цвет Самшит', 0, '0000-00-00 00:00:00', 5),
(102, 'Рустикаль', 'Фасад/корпус ДСП цвет Рустикаль', 'fasad-dsp-rustikal.jpg', 'Фасад/корпус ДСП цвет Рустикаль', 0, '0000-00-00 00:00:00', 6),
(103, 'Платина', 'Фасад/корпус ДСП цвет Платина', 'fasad-dsp-platina.jpg', 'Фасад/корпус ДСП цвет Платина', 0, '0000-00-00 00:00:00', 7),
(104, 'Пихта', 'Фасад/корпус ДСП цвет Пихта', 'fasad-dsp-pihta.jpg', 'Фасад/корпус ДСП цвет Пихта', 0, '0000-00-00 00:00:00', 8),
(105, 'Пепел', 'Фасад/корпус ДСП цвет Пепел', 'fasad-dsp-pepel.jpg', 'Фасад/корпус ДСП цвет Пепел', 0, '0000-00-00 00:00:00', 9),
(106, 'Орех', 'Фасад/корпус ДСП цвет Орех', 'fasad-dsp-oreh.jpg', 'Фасад/корпус ДСП цвет Орех', 0, '0000-00-00 00:00:00', 10),
(107, 'Негро', 'Фасад/корпус ДСП цвет Негро', 'fasad-dsp-negro.jpg', 'Фасад/корпус ДСП цвет Негро', 0, '0000-00-00 00:00:00', 11),
(108, 'Марино', 'Фасад/корпус ДСП цвет Марино', 'fasad-dsp-marino.jpg', 'Фасад/корпус ДСП цвет Марино', 0, '0000-00-00 00:00:00', 12),
(109, 'Магия', 'Фасад/корпус ДСП цвет Магия', 'fasad-dsp-magija.jpg', 'Фасад/корпус ДСП цвет Магия', 0, '0000-00-00 00:00:00', 13),
(110, 'Лиственница', 'Фасад/корпус ДСП цвет Лиственница', 'fasad-dsp-listvennitsa.jpg', 'Фасад/корпус ДСП цвет Лиственница', 0, '0000-00-00 00:00:00', 1),
(111, 'Легно табак', 'Фасад/корпус ДСП цвет Легно табак', 'fasad-dsp-legnotabak.jpg', 'Фасад/корпус ДСП цвет Легно табак', 0, '0000-00-00 00:00:00', 2),
(112, 'Легно светлый', 'Фасад/корпус ДСП цвет Легно светлый', 'fasad-dsp-legnosvetlyj.jpg', 'Фасад/корпус ДСП цвет Легно светлый', 0, '0000-00-00 00:00:00', 3),
(113, 'Крем', 'Фасад/корпус ДСП цвет Крем', 'fasad-dsp-krem.jpg', 'Фасад/корпус ДСП цвет Крем', 0, '0000-00-00 00:00:00', 4),
(114, 'Кордия', 'Фасад/корпус ДСП цвет Кордия', 'fasad-dsp-kordija.jpg', 'Фасад/корпус ДСП цвет Кордия', 0, '0000-00-00 00:00:00', 5),
(115, 'Клен', 'Фасад/корпус ДСП цвет Клен', 'fasad-dsp-klen.jpg', 'Фасад/корпус ДСП цвет Клен', 0, '0000-00-00 00:00:00', 6),
(116, 'Груша', 'Фасад/корпус ДСП цвет Груша', 'fasad-dsp-grusha.jpg', 'Фасад/корпус ДСП цвет Груша', 0, '0000-00-00 00:00:00', 7),
(117, 'Графит', 'Фасад/корпус ДСП цвет Графит', 'fasad-dsp-grafit.jpg', 'Фасад/корпус ДСП цвет Графит', 0, '0000-00-00 00:00:00', 8),
(118, 'Гасиенда', 'Фасад/корпус ДСП цвет Гасиенда', 'fasad-dsp-gasienda.jpg', 'Фасад/корпус ДСП цвет Гасиенда', 0, '0000-00-00 00:00:00', 9),
(119, 'Черешня', 'Фасад/корпус ДСП цвет Черешня', 'fasad-dsp-chereshnia.jpg', 'Фасад/корпус ДСП цвет Черешня', 0, '0000-00-00 00:00:00', 10),
(120, 'Белый премиум', 'Фасад/корпус ДСП цвет Белый премиум', 'fasad-dsp-belyipremium.jpg', 'Фасад/корпус ДСП цвет Белый премиум', 0, '0000-00-00 00:00:00', 11),
(121, 'Белое дерево', 'Фасад/корпус ДСП цвет Белое дерево', 'fasad-dsp-beloederevo.jpg', 'Фасад/корпус ДСП цвет Белое дерево', 0, '0000-00-00 00:00:00', 12),
(122, 'Алюминий', 'Фасад/корпус ДСП цвет Алюминий', 'fasad-dsp-aluminij.jpg', 'Фасад/корпус ДСП цвет Алюминий', 0, '0000-00-00 00:00:00', 13),
(123, 'Акация', 'Фасад/корпус ДСП цвет Акация', 'fasad-dsp-akatsia.jpg', 'Фасад/корпус ДСП цвет Акация', 0, '0000-00-00 00:00:00', 3),
(124, 'Зебрано темный', 'Фасад из акрила цвет Зебрано темный', 'fasad-acryl-zebranotemnyi.jpg', 'Фасад из акрила цвет Зебрано темный', 0, '0000-00-00 00:00:00', 4),
(125, 'Зебрано светлый', 'Фасад из акрила цвет Зебрано светлый', 'fasad-acryl-zebranosvetlyi.jpg', 'Фасад из акрила цвет Зебрано светлый', 0, '0000-00-00 00:00:00', 5),
(126, 'Вишня', 'Фасад из акрила цвет Вишня', 'fasad-acryl-vishnia.jpg', 'Фасад из акрила цвет Вишня', 0, '0000-00-00 00:00:00', 6),
(127, 'Винил', 'Фасад из акрила цвет Винил', 'fasad-acryl-vinyl.jpg', 'Фасад из акрила цвет Винил', 0, '0000-00-00 00:00:00', 7),
(128, 'Уголь металлик', 'Фасад из акрила цвет Уголь металлик', 'fasad-acryl-ugolmetallik.jpg', 'Фасад из акрила цвет Уголь металлик', 0, '0000-00-00 00:00:00', 8),
(129, 'Трюфель', 'Фасад из акрила цвет Трюфель', 'fasad-acryl-trufel.jpg', 'Фасад из акрила цвет Трюфель', 0, '0000-00-00 00:00:00', 1),
(130, 'Тальк', 'Фасад из акрила цвет Тальк', 'fasad-acryl-talk.jpg', 'Фасад из акрила цвет Тальк', 0, '0000-00-00 00:00:00', 2),
(131, 'Светлосерый', 'Фасад из акрила цвет Светлосерый', 'fasad-acryl-svetloseryi.jpg', 'Фасад из акрила цвет Светлосерый', 0, '0000-00-00 00:00:00', 3),
(132, 'Сталь', 'Фасад из акрила цвет Сталь', 'fasad-acryl-stal.jpg', 'Фасад из акрила цвет Сталь', 0, '0000-00-00 00:00:00', 4),
(133, 'Сливки', 'Фасад из акрила цвет Сливки', 'fasad-acryl-slivki.jpg', 'Фасад из акрила цвет Сливки', 0, '0000-00-00 00:00:00', 5),
(134, 'Шоколад', 'Фасад из акрила цвет Шоколад', 'fasad-acryl-shokolad.jpg', 'Фасад из акрила цвет Шоколад', 0, '0000-00-00 00:00:00', 6),
(135, 'Шампань металлик', 'Фасад из акрила цвет Шампань металлик', 'fasad-acryl-shampagnemetallik.jpg', 'Фасад из акрила цвет Шампань металлик', 0, '0000-00-00 00:00:00', 7),
(136, 'Сахар', 'Фасад из акрила цвет Сахар', 'fasad-acryl-sahar.jpg', 'Фасад из акрила цвет Сахар', 0, '0000-00-00 00:00:00', 8),
(137, 'Пепел', 'Фасад из акрила цвет Пепел', 'fasad-acryl-pepel.jpg', 'Фасад из акрила цвет Пепел', 0, '0000-00-00 00:00:00', 9),
(138, 'Облепиха', 'Фасад из акрила цвет Облепиха', 'fasad-acryl-oblepiha.jpg', 'Фасад из акрила цвет Облепиха', 0, '0000-00-00 00:00:00', 10),
(139, 'Какао', 'Фасад из акрила цвет Какао', 'fasad-acryl-kakao.jpg', 'Фасад из акрила цвет Какао', 0, '0000-00-00 00:00:00', 11),
(140, 'Грифель металлик', 'Фасад из акрила цвет Грифель металлик', 'fasad-acryl-griffelmetallik.jpg', 'Фасад из акрила цвет Грифель металлик', 0, '0000-00-00 00:00:00', 12),
(141, 'Графит', 'Фасад из акрила цвет Графит', 'fasad-acryl-graphite.jpg', 'Фасад из акрила цвет Графит', 0, '0000-00-00 00:00:00', 13),
(142, 'Гранат', 'Фасад из акрила цвет Гранат', 'fasad-acryl-granat.jpg', 'Фасад из акрила цвет Гранат', 0, '0000-00-00 00:00:00', 1),
(143, 'Фиолет', 'Фасад из акрила цвет Фиолет', 'fasad-acryl-fiolet.jpg', 'Фасад из акрила цвет Фиолет', 0, '0000-00-00 00:00:00', 2),
(144, 'Ежевика', 'Фасад из акрила цвет Ежевика', 'fasad-acryl-ezhevika.jpg', 'Фасад из акрила цвет Ежевика', 0, '0000-00-00 00:00:00', 3),
(145, 'Бордо', 'Фасад из акрила цвет Бордо', 'fasad-acryl-bordo.jpg', 'Фасад из акрила цвет Бордо', 0, '0000-00-00 00:00:00', 4),
(146, 'Белый', 'Фасад из акрила цвет Белый', 'fasad-acryl-belyi.jpg', 'Фасад из акрила цвет Белый', 0, '0000-00-00 00:00:00', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fasad_type`
--

CREATE TABLE `fasad_type` (
  `id` int(11) NOT NULL,
  `id_kuhni_material` int(11) DEFAULT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fasad_type`
--

INSERT INTO `fasad_type` (`id`, `id_kuhni_material`, `imageName`, `imageSize`, `updated`, `name`, `title`, `alt`) VALUES
(1, 1, 'fasad-massiv-101.jpg', 1024, '2017-10-06 15:25:36', '101', 'Фасад массив цвет 101 — Бежевая патина', 'Фасад массив цвет 101 — Бежевая патина'),
(2, 2, 'fasad-massiv-102.jpg', 1024, '2017-10-06 15:25:36', '102', 'Фасад массив цвет 102 — Черная патина', 'Фасад массив цвет 102 — Черная патина'),
(3, 3, 'fasad-massiv-106.jpg', 1024, '2017-10-06 15:25:36', '106', 'Фасад массив цвет 106 — Черная патина', 'Фасад массив цвет 106 — Черная патина'),
(4, 4, 'fasad-massiv-109.jpg', 1024, '2017-10-06 15:25:36', '109', 'Фасад массив цвет 109 — Черная патина', 'Фасад массив цвет 109 — Черная патина'),
(5, 5, 'fasad-massiv-110.jpg', 1024, '2017-10-06 15:25:36', '110', 'Фасад массив цвет 110 — Бежевая патина', 'Фасад массив цвет 110 — Бежевая патина'),
(6, 6, 'fasad-massiv-111.jpg', 1024, '2017-10-06 15:25:36', '111*', 'Фасад массив цвет 111 — Черная патина (кроме ольхи)', 'Фасад массив цвет 111 — Черная патина (кроме ольхи)'),
(7, 7, 'fasad-massiv-112.jpg', 1024, '2017-10-06 15:25:36', '112', 'Фасад массив цвет 112 — Рыжая патина', 'Фасад массив цвет 112 — Рыжая патина'),
(8, 8, 'fasad-massiv-112-2.jpg', 1024, '2017-10-06 15:25:36', '112', 'Фасад массив цвет 112 — Патина X109', 'Фасад массив цвет 112 — Патина X109'),
(9, 9, 'fasad-massiv-113.jpg', 1024, '2017-10-06 15:25:36', '113', 'Фасад массив цвет 113 — Черная патина', 'Фасад массив цвет 113 — Черная патина'),
(10, 10, 'fasad-massiv-114.jpg', 1024, '2017-10-06 15:25:36', '114*', 'Фасад массив цвет 114 — Патина серебро (кроме ольхи)', 'Фасад массив цвет 114 — Патина серебро (кроме ольхи)'),
(11, 11, 'fasad-massiv-115.jpg', 1024, '2017-10-06 15:25:36', '115', 'Фасад массив цвет 115 — Золотая патина', 'Фасад массив цвет 115 — Золотая патина'),
(12, 12, 'fasad-massiv-116.jpg', 1024, '2017-10-06 15:25:36', '116', 'Фасад массив цвет 116 — Золотая патина', 'Фасад массив цвет 116 — Золотая патина'),
(13, 13, 'fasad-massiv-117.jpg', 1024, '2017-10-06 15:25:36', '117', 'Фасад массив цвет 117 — Бежевая патина', 'Фасад массив цвет 117 — Бежевая патина'),
(14, 1, 'fasad-massiv-118.jpg', 1024, '2017-10-06 15:25:36', '118', 'Фасад массив цвет 118 — Патина серебро', 'Фасад массив цвет 118 — Патина серебро'),
(15, 2, 'fasad-massiv-120.jpg', 1024, '2017-10-06 15:25:36', '120', 'Фасад массив цвет 120', 'Фасад массив цвет 120'),
(16, 3, 'fasad-massiv-121.jpg', 1024, '2017-10-06 15:25:36', '121', 'Фасад массив цвет 121', 'Фасад массив цвет 121'),
(17, 4, 'fasad-massiv-122.jpg', 1024, '2017-10-06 15:25:36', '122', 'Фасад массив цвет 122 — Белая патина', 'Фасад массив цвет 122 — Белая патина'),
(18, 5, 'fasad-massiv-123.jpg', 1024, '2017-10-06 15:25:36', '123', 'Фасад массив цвет 123 — Черная патина', 'Фасад массив цвет 123 — Черная патина'),
(19, 6, 'fasad-massiv-124.jpg', 1024, '2017-10-06 15:25:36', '124', 'Фасад массив цвет 124', 'Фасад массив цвет 124'),
(20, 7, 'fasad-massiv-125.jpg', 1024, '2017-10-06 15:25:36', '125', 'Фасад массив цвет 125', 'Фасад массив цвет 125'),
(21, 8, 'fasad-massiv-126.jpg', 1024, '2017-10-06 15:25:36', '126', 'Фасад массив цвет 126 — Золотая патина', 'Фасад массив цвет 126 — Золотая патина'),
(22, 9, 'fasad-massiv-127.jpg', 1024, '2017-10-06 15:25:36', '127', 'Фасад массив цвет 127 — Черная патина', 'Фасад массив цвет 127 — Черная патина'),
(23, 10, 'fasad-massiv-128.jpg', 1024, '2017-10-06 15:25:36', '128', 'Фасад массив цвет 128 — Черная патина', 'Фасад массив цвет 128 — Черная патина'),
(24, 11, 'fasad-massiv-129.jpg', 1024, '2017-10-06 15:25:36', '129', 'Фасад массив цвет 129 — Патина серебро', 'Фасад массив цвет 129 — Патина серебро'),
(25, 12, 'fasad-massiv-130.jpg', 1024, '2017-10-06 15:25:36', '130', 'Фасад массив цвет 130 — Черная патина', 'Фасад массив цвет 130 — Черная патина'),
(26, 13, 'fasad-massiv-131.jpg', 1024, '2017-10-06 15:25:36', '131', 'Фасад массив цвет 131 — Патина шоколад', 'Фасад массив цвет 131 — Патина шоколад'),
(27, 3, 'fasad-massiv-132.jpg', 1024, '2017-10-06 15:25:36', '132', 'Фасад массив цвет 132 — Патина шоколад', 'Фасад массив цвет 132 — Патина шоколад'),
(28, 4, 'fasad-massiv-133.jpg', 1024, '2017-10-06 15:25:36', '133', 'Фасад массив цвет 133 — Золотая патина', 'Фасад массив цвет 133 — Золотая патина'),
(29, 5, 'fasad-massiv-134.jpg', 1024, '2017-10-06 15:25:36', '134', 'Фасад массив цвет 134 — Черная патина', 'Фасад массив цвет 134 — Черная патина'),
(30, 6, 'fasad-massiv-135.jpg', 1024, '2017-10-06 15:25:36', '135 (F167)', 'Фасад массив цвет 135 (F167) — Патина графит', 'Фасад массив цвет 135 (F167) — Патина графит'),
(31, 7, 'fasad-massiv-136.jpg', 1024, '2017-10-06 15:25:36', '136 (S052)', 'Фасад массив цвет 136 (S052) — Патина X109', 'Фасад массив цвет 136 (S052) — Патина X109'),
(32, 8, 'fasad-massiv-137.jpg', 1024, '2017-10-06 15:25:36', '137 (N031)', 'Фасад массив цвет 137 (N031) — Золотая патина лак глянец 50', 'Фасад массив цвет 137 (N031) — Золотая патина лак глянец 50'),
(33, 1, 'fasad-acryl-zebranosvetlyi.jpg', 1024, '2017-10-06 15:25:36', 'Зебрано светлый', 'Фасад из акрила цвет Зебрано светлый', 'Фасад из акрила цвет Зебрано светлый'),
(34, 2, 'fasad-acryl-vishnia.jpg', 1024, '2017-10-06 15:25:36', 'Вишня', 'Фасад из акрила цвет Вишня', 'Фасад из акрила цвет Вишня'),
(35, 3, 'fasad-acryl-vinyl.jpg', 1024, '2017-10-06 15:25:36', 'Винил', 'Фасад из акрила цвет Винил', 'Фасад из акрила цвет Винил'),
(36, 4, 'fasad-acryl-ugolmetallik.jpg', 1024, '2017-10-06 15:25:36', 'Уголь металлик', 'Фасад из акрила цвет Уголь металлик', 'Фасад из акрила цвет Уголь металлик'),
(37, 5, 'fasad-acryl-trufel.jpg', 1024, '2017-10-06 15:25:36', 'Трюфель', 'Фасад из акрила цвет Трюфель', 'Фасад из акрила цвет Трюфель'),
(38, 6, 'fasad-acryl-talk.jpg', 1024, '2017-10-06 15:25:36', 'Тальк', 'Фасад из акрила цвет Тальк', 'Фасад из акрила цвет Тальк'),
(39, 7, 'fasad-acryl-svetloseryi.jpg', 1024, '2017-10-06 15:25:36', 'Светлосерый', 'Фасад из акрила цвет Светлосерый', 'Фасад из акрила цвет Светлосерый'),
(40, 8, 'fasad-acryl-stal.jpg', 1024, '2017-10-06 15:25:36', 'Сталь', 'Фасад из акрила цвет Сталь', 'Фасад из акрила цвет Сталь'),
(41, 9, 'fasad-acryl-slivki.jpg', 1024, '2017-10-06 15:25:36', 'Сливки', 'Фасад из акрила цвет Сливки', 'Фасад из акрила цвет Сливки'),
(42, 10, 'fasad-acryl-shokolad.jpg', 1024, '2017-10-06 15:25:36', 'Шоколад', 'Фасад из акрила цвет Шоколад', 'Фасад из акрила цвет Шоколад'),
(43, 11, 'fasad-acryl-shampagnemetallik.jpg', 1024, '2017-10-06 15:25:36', 'Шампань металлик', 'Фасад из акрила цвет Шампань металлик', 'Фасад из акрила цвет Шампань металлик'),
(44, 12, 'fasad-acryl-sahar.jpg', 1024, '2017-10-06 15:25:36', 'Сахар', 'Фасад из акрила цвет Сахар', 'Фасад из акрила цвет Сахар'),
(45, 13, 'fasad-acryl-pepel.jpg', 1024, '2017-10-06 15:25:36', 'Пепел', 'Фасад из акрила цвет Пепел', 'Фасад из акрила цвет Пепел'),
(46, 1, 'fasad-acryl-oblepiha.jpg', 1024, '2017-10-06 15:25:36', 'Облепиха', 'Фасад из акрила цвет Облепиха', 'Фасад из акрила цвет Облепиха'),
(47, 2, 'fasad-acryl-kakao.jpg', 1024, '2017-10-06 15:25:36', 'Какао', 'Фасад из акрила цвет Какао', 'Фасад из акрила цвет Какао'),
(48, 3, 'fasad-acryl-griffelmetallik.jpg', 1024, '2017-10-06 15:25:36', 'Грифель металлик', 'Фасад из акрила цвет Грифель металлик', 'Фасад из акрила цвет Грифель металлик'),
(49, 4, 'fasad-acryl-graphite.jpg', 1024, '2017-10-06 15:25:36', 'Графит', 'Фасад из акрила цвет Графит', 'Фасад из акрила цвет Графит'),
(50, 5, 'fasad-acryl-granat.jpg', 1024, '2017-10-06 15:25:36', 'Гранат', 'Фасад из акрила цвет Гранат', 'Фасад из акрила цвет Гранат'),
(51, 6, 'fasad-acryl-fiolet.jpg', 1024, '2017-10-06 15:25:36', 'Фиолет', 'Фасад из акрила цвет Фиолет', 'Фасад из акрила цвет Фиолет'),
(52, 7, 'fasad-acryl-ezhevika.jpg', 1024, '2017-10-06 15:25:36', 'Ежевика', 'Фасад из акрила цвет Ежевика', 'Фасад из акрила цвет Ежевика'),
(53, 8, 'fasad-acryl-bordo.jpg', 1024, '2017-10-06 15:25:36', 'Бордо', 'Фасад из акрила цвет Бордо', 'Фасад из акрила цвет Бордо'),
(54, 9, 'fasad-acryl-belyi.jpg', 1024, '2017-10-06 15:25:36', 'Белый', 'Фасад из акрила цвет Белый', 'Фасад из акрила цвет Белый'),
(55, 10, 'fasad-plastic-zheltyi.jpg', 1024, '2017-10-06 15:25:36', 'Желтый', 'Фасад из пластика цвет Желтый', 'Фасад из пластика цвет Желтый'),
(56, 11, 'fasad-plastic-zelenyi.jpg', 1024, '2017-10-06 15:25:36', 'Зеленый', 'Фасад из пластика цвет Зеленый', 'Фасад из пластика цвет Зеленый'),
(57, 12, 'fasad-plastic-tuia.jpg', 1024, '2017-10-06 15:25:36', 'Туя', 'Фасад из пластика цвет Туя', 'Фасад из пластика цвет Туя'),
(58, 13, 'fasad-plastic-storm.jpg', 1024, '2017-10-06 15:25:36', 'Шторм', 'Фасад из пластика цвет Шторм', 'Фасад из пластика цвет Шторм'),
(59, 3, 'fasad-plastic-snezhnyi.jpg', 1024, '2017-10-06 15:25:36', 'Снежный', 'Фасад из пластика цвет Снежный', 'Фасад из пластика цвет Снежный'),
(60, 4, 'fasad-plastic-silk.jpg', 1024, '2017-10-06 15:25:36', 'Шелк', 'Фасад из пластика цвет Шелк', 'Фасад из пластика цвет Шелк'),
(61, 5, 'fasad-plastic-seryiperlamutr.jpg', 1024, '2017-10-06 15:25:36', 'Серый перламутр', 'Фасад из пластика цвет Серый перламутр', 'Фасад из пластика цвет Серый перламутр'),
(62, 6, 'fasad-plastic-seryi.jpg', 1024, '2017-10-06 15:25:36', 'Серый', 'Фасад из пластика цвет Серый', 'Фасад из пластика цвет Серый'),
(63, 7, 'fasad-plastic-salatovyi.jpg', 1024, '2017-10-06 15:25:36', 'Салатовый', 'Фасад из пластика цвет Салатовый', 'Фасад из пластика цвет Салатовый'),
(64, 8, 'fasad-plastic-polosatyidub.jpg', 1024, '2017-10-06 15:25:36', 'Полосатый дуб', 'Фасад из пластика цвет Полосатый дуб', 'Фасад из пластика цвет Полосатый дуб'),
(65, 1, 'fasad-plastic-nuga.jpg', 1024, '2017-10-06 15:25:36', 'Нуга', 'Фасад из пластика цвет Нуга', 'Фасад из пластика цвет Нуга'),
(66, 2, 'fasad-plastic-noch.jpg', 1024, '2017-10-06 15:25:36', 'Ночь', 'Фасад из пластика цвет Ночь', 'Фасад из пластика цвет Ночь'),
(67, 3, 'fasad-plastic-morenyidub.jpg', 1024, '2017-10-06 15:25:36', 'Мореный дуб', 'Фасад из пластика цвет Мореный дуб', 'Фасад из пластика цвет Мореный дуб'),
(68, 4, 'fasad-plastic-mint.jpg', 1024, '2017-10-06 15:25:36', 'Мята', 'Фасад из пластика цвет Мята', 'Фасад из пластика цвет Мята'),
(69, 5, 'fasad-plastic-med.jpg', 1024, '2017-10-06 15:25:36', 'Медь перламутр', 'Фасад из пластика цвет Медь перламутр', 'Фасад из пластика цвет Медь перламутр'),
(70, 6, 'fasad-plastic-mahon.jpg', 1024, '2017-10-06 15:25:36', 'Махонь', 'Фасад из пластика цвет Махонь', 'Фасад из пластика цвет Махонь'),
(71, 7, 'fasad-plastic-lotoschernyi.jpg', 1024, '2017-10-06 15:25:36', 'Лотос черный', 'Фасад из пластика цвет Лотос черный', 'Фасад из пластика цвет Лотос черный'),
(72, 8, 'fasad-plastic-lotosbelyi.jpg', 1024, '2017-10-06 15:25:36', 'Лотос белый', 'Фасад из пластика цвет Лотос белый', 'Фасад из пластика цвет Лотос белый'),
(73, 9, 'fasad-plastic-krem.jpg', 1024, '2017-10-06 15:25:36', 'Крем перламутр', 'Фасад из пластика цвет Крем перламутр', 'Фасад из пластика цвет Крем перламутр'),
(74, 10, 'fasad-plastic-krasnyi.jpg', 1024, '2017-10-06 15:25:36', 'Красный', 'Фасад из пластика цвет Красный', 'Фасад из пластика цвет Красный'),
(75, 11, 'fasad-plastic-koritsa.jpg', 1024, '2017-10-06 15:25:36', 'Корица', 'Фасад из пластика цвет Корица', 'Фасад из пластика цвет Корица'),
(76, 12, 'fasad-plastic-kofe.jpg', 1024, '2017-10-06 15:25:36', 'Кофе', 'Фасад из пластика цвет Кофе', 'Фасад из пластика цвет Кофе'),
(77, 13, 'fasad-plastic-kapuchino.jpg', 1024, '2017-10-06 15:25:36', 'Капучино', 'Фасад из пластика цвет Капучино', 'Фасад из пластика цвет Капучино'),
(78, 1, 'fasad-plastic-iva.jpg', 1024, '2017-10-06 15:25:36', 'Ива', 'Фасад из пластика цвет Ива', 'Фасад из пластика цвет Ива'),
(79, 2, 'fasad-plastic-haki.jpg', 1024, '2017-10-06 15:25:36', 'Хаки', 'Фасад из пластика цвет Хаки', 'Фасад из пластика цвет Хаки'),
(80, 3, 'fasad-plastic-fialka.jpg', 1024, '2017-10-06 15:25:36', 'Фиалка', 'Фасад из пластика цвет Фиалка', 'Фасад из пластика цвет Фиалка'),
(81, 4, 'fasad-plastic-citrus.jpg', 1024, '2017-10-06 15:25:36', 'Цитрус', 'Фасад из пластика цвет Цитрус', 'Фасад из пластика цвет Цитрус'),
(82, 5, 'fasad-plastic-biruzovyi.jpg', 1024, '2017-10-06 15:25:36', 'Бирюзовый', 'Фасад из пластика цвет Бирюзовый', 'Фасад из пластика цвет Бирюзовый'),
(83, 6, 'fasad-plastic-bezhevyi.jpg', 1024, '2017-10-06 15:25:36', 'Бежевый', 'Фасад из пластика цвет Бежевый', 'Фасад из пластика цвет Бежевый'),
(84, 7, 'fasad-plastic-baklazhan.jpg', 1024, '2017-10-06 15:25:36', 'Баклажан', 'Фасад из пластика цвет Баклажан', 'Фасад из пластика цвет Баклажан'),
(85, 8, 'fasad-plastic-arcticbelyi.jpg', 1024, '2017-10-06 15:25:36', 'Арктик белый', 'Фасад из пластика цвет Арктик белый', 'Фасад из пластика цвет Арктик белый'),
(86, 9, 'fasad-plastic-apelsin.jpg', 1024, '2017-10-06 15:25:36', 'Апельсин', 'Фасад из пластика цвет Апельсин', 'Фасад из пластика цвет Апельсин'),
(87, 10, 'fasad-plastic-antratsit.jpg', 1024, '2017-10-06 15:25:36', 'Антрацит перламутр', 'Фасад из пластика цвет Антрацит перламутр', 'Фасад из пластика цвет Антрацит перламутр'),
(88, 11, 'fasad-glass-zhemchug.jpg', 1024, '2017-10-06 15:25:36', 'Жемчуг', 'Фасад из стекла цвет Жемчуг', 'Фасад из стекла цвет Жемчуг'),
(89, 12, 'fasad-glass-ultrabelyi.jpg', 1024, '2017-10-06 15:25:36', 'Ультрабелый', 'Фасад из стекла цвет Ультрабелый', 'Фасад из стекла цвет Ультрабелый'),
(90, 13, 'fasad-glass-sunshine.jpg', 1024, '2017-10-06 15:25:36', 'Саншайн', 'Фасад из стекла цвет Саншайн', 'Фасад из стекла цвет Саншайн'),
(91, 3, 'fasad-glass-smol.jpg', 1024, '2017-10-06 15:25:36', 'Смоль', 'Фасад из стекла цвет Смоль', 'Фасад из стекла цвет Смоль'),
(92, 4, 'fasad-glass-mindal.jpg', 1024, '2017-10-06 15:25:36', 'Миндаль', 'Фасад из стекла цвет Миндаль', 'Фасад из стекла цвет Миндаль'),
(93, 5, 'fasad-glass-kashtan.jpg', 1024, '2017-10-06 15:25:36', 'Каштан', 'Фасад из стекла цвет Каштан', 'Фасад из стекла цвет Каштан'),
(94, 6, 'fasad-glass-izumrud.jpg', 1024, '2017-10-06 15:25:36', 'Изумруд', 'Фасад из стекла цвет Изумруд', 'Фасад из стекла цвет Изумруд'),
(95, 7, 'fasad-glass-gavana.jpg', 1024, '2017-10-06 15:25:36', 'Гавана', 'Фасад из стекла цвет Гавана', 'Фасад из стекла цвет Гавана'),
(96, 8, 'fasad-glass-alyi.jpg', 1024, '2017-10-06 15:25:36', 'Алый', 'Фасад из стекла цвет Алый', 'Фасад из стекла цвет Алый'),
(97, 1, 'fasad-glass-akva.jpg', 1024, '2017-10-06 15:25:36', 'Аква', 'Фасад из стекла цвет Аква', 'Фасад из стекла цвет Аква'),
(98, 2, 'fasad-dsp-zoloto.jpg', 1024, '2017-10-06 15:25:36', 'Золото', 'Фасад/корпус ДСП цвет Золото', 'Фасад/корпус ДСП цвет Золото'),
(99, 3, 'fasad-dsp-verba.jpg', 1024, '2017-10-06 15:25:36', 'Верба', 'Фасад/корпус ДСП цвет Верба', 'Фасад/корпус ДСП цвет Верба'),
(100, 4, 'fasad-dsp-santana.jpg', 1024, '2017-10-06 15:25:36', 'Сантана', 'Фасад/корпус ДСП цвет Сантана', 'Фасад/корпус ДСП цвет Сантана'),
(101, 5, 'fasad-dsp-samshit.jpg', 1024, '2017-10-06 15:25:36', 'Самшит', 'Фасад/корпус ДСП цвет Самшит', 'Фасад/корпус ДСП цвет Самшит'),
(102, 6, 'fasad-dsp-rustikal.jpg', 1024, '2017-10-06 15:25:36', 'Рустикаль', 'Фасад/корпус ДСП цвет Рустикаль', 'Фасад/корпус ДСП цвет Рустикаль'),
(103, 7, 'fasad-dsp-platina.jpg', 1024, '2017-10-06 15:25:36', 'Платина', 'Фасад/корпус ДСП цвет Платина', 'Фасад/корпус ДСП цвет Платина'),
(104, 8, 'fasad-dsp-pihta.jpg', 1024, '2017-10-06 15:25:36', 'Пихта', 'Фасад/корпус ДСП цвет Пихта', 'Фасад/корпус ДСП цвет Пихта'),
(105, 9, 'fasad-dsp-pepel.jpg', 1024, '2017-10-06 15:25:36', 'Пепел', 'Фасад/корпус ДСП цвет Пепел', 'Фасад/корпус ДСП цвет Пепел'),
(106, 10, 'fasad-dsp-oreh.jpg', 1024, '2017-10-06 15:25:36', 'Орех', 'Фасад/корпус ДСП цвет Орех', 'Фасад/корпус ДСП цвет Орех'),
(107, 11, 'fasad-dsp-negro.jpg', 1024, '2017-10-06 15:25:36', 'Негро', 'Фасад/корпус ДСП цвет Негро', 'Фасад/корпус ДСП цвет Негро'),
(108, 12, 'fasad-dsp-marino.jpg', 1024, '2017-10-06 15:25:36', 'Марино', 'Фасад/корпус ДСП цвет Марино', 'Фасад/корпус ДСП цвет Марино'),
(109, 13, 'fasad-dsp-magija.jpg', 1024, '2017-10-06 15:25:36', 'Магия', 'Фасад/корпус ДСП цвет Магия', 'Фасад/корпус ДСП цвет Магия'),
(110, 1, 'fasad-dsp-listvennitsa.jpg', 1024, '2017-10-06 15:25:36', 'Лиственница', 'Фасад/корпус ДСП цвет Лиственница', 'Фасад/корпус ДСП цвет Лиственница'),
(111, 2, 'fasad-dsp-legnotabak.jpg', 1024, '2017-10-06 15:25:36', 'Легно табак', 'Фасад/корпус ДСП цвет Легно табак', 'Фасад/корпус ДСП цвет Легно табак'),
(112, 3, 'fasad-dsp-legnosvetlyj.jpg', 1024, '2017-10-06 15:25:36', 'Легно светлый', 'Фасад/корпус ДСП цвет Легно светлый', 'Фасад/корпус ДСП цвет Легно светлый'),
(113, 4, 'fasad-dsp-krem.jpg', 1024, '2017-10-06 15:25:36', 'Крем', 'Фасад/корпус ДСП цвет Крем', 'Фасад/корпус ДСП цвет Крем'),
(114, 5, 'fasad-dsp-kordija.jpg', 1024, '2017-10-06 15:25:36', 'Кордия', 'Фасад/корпус ДСП цвет Кордия', 'Фасад/корпус ДСП цвет Кордия'),
(115, 6, 'fasad-dsp-klen.jpg', 1024, '2017-10-06 15:25:36', 'Клен', 'Фасад/корпус ДСП цвет Клен', 'Фасад/корпус ДСП цвет Клен'),
(116, 7, 'fasad-dsp-grusha.jpg', 1024, '2017-10-06 15:25:36', 'Груша', 'Фасад/корпус ДСП цвет Груша', 'Фасад/корпус ДСП цвет Груша'),
(117, 8, 'fasad-dsp-grafit.jpg', 1024, '2017-10-06 15:25:36', 'Графит', 'Фасад/корпус ДСП цвет Графит', 'Фасад/корпус ДСП цвет Графит'),
(118, 9, 'fasad-dsp-gasienda.jpg', 1024, '2017-10-06 15:25:36', 'Гасиенда', 'Фасад/корпус ДСП цвет Гасиенда', 'Фасад/корпус ДСП цвет Гасиенда'),
(119, 10, 'fasad-dsp-chereshnia.jpg', 1024, '2017-10-06 15:25:36', 'Черешня', 'Фасад/корпус ДСП цвет Черешня', 'Фасад/корпус ДСП цвет Черешня'),
(120, 11, 'fasad-dsp-belyipremium.jpg', 1024, '2017-10-06 15:25:36', 'Белый премиум', 'Фасад/корпус ДСП цвет Белый премиум', 'Фасад/корпус ДСП цвет Белый премиум'),
(121, 12, 'fasad-dsp-beloederevo.jpg', 1024, '2017-10-06 15:25:36', 'Белое дерево', 'Фасад/корпус ДСП цвет Белое дерево', 'Фасад/корпус ДСП цвет Белое дерево'),
(122, 12, 'fasad-dsp-aluminij.jpg', 1024, '2017-10-06 15:25:36', 'Алюминий', 'Фасад/корпус ДСП цвет Алюминий', 'Фасад/корпус ДСП цвет Алюминий'),
(123, 3, 'fasad-dsp-akatsia.jpg', 1024, '2017-10-06 15:25:36', 'Акация', 'Фасад/корпус ДСП цвет Акация', 'Фасад/корпус ДСП цвет Акация'),
(124, 4, 'fasad-acryl-zebranotemnyi.jpg', 1024, '2017-10-06 15:25:36', 'Зебрано темный', 'Фасад из акрила цвет Зебрано темный', 'Фасад из акрила цвет Зебрано темный'),
(125, 5, 'fasad-acryl-zebranosvetlyi.jpg', 1024, '2017-10-06 15:25:36', 'Зебрано светлый', 'Фасад из акрила цвет Зебрано светлый', 'Фасад из акрила цвет Зебрано светлый'),
(126, 6, 'fasad-acryl-vishnia.jpg', 1024, '2017-10-06 15:25:36', 'Вишня', 'Фасад из акрила цвет Вишня', 'Фасад из акрила цвет Вишня'),
(127, 7, 'fasad-acryl-vinyl.jpg', 1024, '2017-10-06 15:25:36', 'Винил', 'Фасад из акрила цвет Винил', 'Фасад из акрила цвет Винил'),
(128, 8, 'fasad-acryl-ugolmetallik.jpg', 1024, '2017-10-06 15:25:36', 'Уголь металлик', 'Фасад из акрила цвет Уголь металлик', 'Фасад из акрила цвет Уголь металлик'),
(129, 1, 'fasad-acryl-trufel.jpg', 1024, '2017-10-06 15:25:36', 'Трюфель', 'Фасад из акрила цвет Трюфель', 'Фасад из акрила цвет Трюфель'),
(130, 2, 'fasad-acryl-talk.jpg', 1024, '2017-10-06 15:25:36', 'Тальк', 'Фасад из акрила цвет Тальк', 'Фасад из акрила цвет Тальк'),
(131, 3, 'fasad-acryl-svetloseryi.jpg', 1024, '2017-10-06 15:25:36', 'Светлосерый', 'Фасад из акрила цвет Светлосерый', 'Фасад из акрила цвет Светлосерый'),
(132, 4, 'fasad-acryl-stal.jpg', 1024, '2017-10-06 15:25:36', 'Сталь', 'Фасад из акрила цвет Сталь', 'Фасад из акрила цвет Сталь'),
(133, 5, 'fasad-acryl-slivki.jpg', 1024, '2017-10-06 15:25:36', 'Сливки', 'Фасад из акрила цвет Сливки', 'Фасад из акрила цвет Сливки'),
(134, 6, 'fasad-acryl-shokolad.jpg', 1024, '2017-10-06 15:25:36', 'Шоколад', 'Фасад из акрила цвет Шоколад', 'Фасад из акрила цвет Шоколад'),
(135, 7, 'fasad-acryl-shampagnemetallik.jpg', 1024, '2017-10-06 15:25:36', 'Шампань металлик', 'Фасад из акрила цвет Шампань металлик', 'Фасад из акрила цвет Шампань металлик'),
(136, 8, 'fasad-acryl-sahar.jpg', 1024, '2017-10-06 15:25:36', 'Сахар', 'Фасад из акрила цвет Сахар', 'Фасад из акрила цвет Сахар'),
(137, 9, 'fasad-acryl-pepel.jpg', 1024, '2017-10-06 15:25:36', 'Пепел', 'Фасад из акрила цвет Пепел', 'Фасад из акрила цвет Пепел'),
(138, 10, 'fasad-acryl-oblepiha.jpg', 1024, '2017-10-06 15:25:36', 'Облепиха', 'Фасад из акрила цвет Облепиха', 'Фасад из акрила цвет Облепиха'),
(139, 11, 'fasad-acryl-kakao.jpg', 1024, '2017-10-06 15:25:36', 'Какао', 'Фасад из акрила цвет Какао', 'Фасад из акрила цвет Какао'),
(140, 12, 'fasad-acryl-griffelmetallik.jpg', 1024, '2017-10-06 15:25:36', 'Грифель металлик', 'Фасад из акрила цвет Грифель металлик', 'Фасад из акрила цвет Грифель металлик'),
(141, 13, 'fasad-acryl-graphite.jpg', 1024, '2017-10-06 15:25:36', 'Графит', 'Фасад из акрила цвет Графит', 'Фасад из акрила цвет Графит'),
(142, 1, 'fasad-acryl-granat.jpg', 1024, '2017-10-06 15:25:36', 'Гранат', 'Фасад из акрила цвет Гранат', 'Фасад из акрила цвет Гранат'),
(143, 2, 'fasad-acryl-fiolet.jpg', 1024, '2017-10-06 15:25:36', 'Фиолет', 'Фасад из акрила цвет Фиолет', 'Фасад из акрила цвет Фиолет'),
(144, 3, 'fasad-acryl-ezhevika.jpg', 1024, '2017-10-06 15:25:36', 'Ежевика', 'Фасад из акрила цвет Ежевика', 'Фасад из акрила цвет Ежевика'),
(145, 4, 'fasad-acryl-bordo.jpg', 1024, '2017-10-06 15:25:36', 'Бордо', 'Фасад из акрила цвет Бордо', 'Фасад из акрила цвет Бордо'),
(146, 5, 'fasad-acryl-belyi.jpg', 1024, '2017-10-06 15:25:36', 'Белый', 'Фасад из акрила цвет Белый', 'Фасад из акрила цвет Белый'),
(147, 3, 'fasad-massiv-106.jpg', 1024, '2017-10-06 15:25:36', '106', 'Фасад массив цвет 106 — Черная патина', 'Фасад массив цвет 106 — Черная патина'),
(148, 4, 'fasad-massiv-109.jpg', 1024, '2017-10-06 15:25:36', '109', 'Фасад массив цвет 109 — Черная патина', 'Фасад массив цвет 109 — Черная патина'),
(149, 5, 'fasad-massiv-110.jpg', 1024, '2017-10-06 15:25:36', '110', 'Фасад массив цвет 110 — Бежевая патина', 'Фасад массив цвет 110 — Бежевая патина'),
(150, 6, 'fasad-massiv-111.jpg', 1024, '2017-10-06 15:25:36', '111*', 'Фасад массив цвет 111 — Черная патина (кроме ольхи)', 'Фасад массив цвет 111 — Черная патина (кроме ольхи)'),
(151, 7, 'fasad-massiv-112.jpg', 1024, '2017-10-06 15:25:36', '112', 'Фасад массив цвет 112 — Рыжая патина', 'Фасад массив цвет 112 — Рыжая патина'),
(152, 8, 'fasad-massiv-112-2.jpg', 1024, '2017-10-06 15:25:36', '112', 'Фасад массив цвет 112 — Патина X109', 'Фасад массив цвет 112 — Патина X109'),
(153, 9, 'fasad-massiv-113.jpg', 1024, '2017-10-06 15:25:36', '113', 'Фасад массив цвет 113 — Черная патина', 'Фасад массив цвет 113 — Черная патина'),
(154, 10, 'fasad-massiv-114.jpg', 1024, '2017-10-06 15:25:36', '114*', 'Фасад массив цвет 114 — Патина серебро (кроме ольхи)', 'Фасад массив цвет 114 — Патина серебро (кроме ольхи)'),
(155, 11, 'fasad-massiv-115.jpg', 1024, '2017-10-06 15:25:36', '115', 'Фасад массив цвет 115 — Золотая патина', 'Фасад массив цвет 115 — Золотая патина'),
(156, 9, 'fasad-acryl-pepel.jpg', 1024, '2017-10-06 15:25:36', 'Пепел', 'Фасад из акрила цвет Пепел', 'Фасад из акрила цвет Пепел');

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_group`
--

CREATE TABLE `fos_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_user`
--

CREATE TABLE `fos_user_user` (
  `id` int(11) NOT NULL,
  `metro_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workingHours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gorod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `metro_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `longitude`, `latitude`, `description`, `title`, `address`, `workingHours`, `tc`, `gorod`) VALUES
(1, NULL, 'admin', 'admin', 'antosha.1998.ru@mail.ru', 'antosha.1998.ru@mail.ru', 1, 's8idrmPEbwqhCdI1xVPzmJM.4wnIwxjQBv3avvmmwdk', 'Jj37G2HUiIN+V61ebiIHg9NbA6kzvSSNBiYJNgIJ9HeQT5tL5ighU6QKhn/zg4cQKuMxOBK5MNtULXcafRicjA==', '2017-10-26 15:34:48', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', '55.761745', '37.572460', 'АртСтильДизайн', 'АртСтильДизайн', 'Гродно, ул. Держинского', '9:00 - 18:00', NULL, NULL),
(2, 1, 'zov', 'zov', 'zov@gmail.com', 'zov@gmail.com', 1, 's8idrmPEbwqhCdI1xVPzmJM.4wnIwxjQBv3avvmmwdk', 'Jj37G2HUiIN+V61ebiIHg9NbA6kzvSSNBiYJNgIJ9HeQT5tL5ighU6QKhn/zg4cQKuMxOBK5MNtULXcafRicjA==', '2017-10-26 15:34:48', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_STAFF\";}', '55.752743', '37.597351', 'ZOV1', 'ZOV1', 'ул. Горького 5к1', '9:00 - 18:00', 'ТЦ \"Меридиан\"', 'Москва'),
(3, NULL, 'zov2', 'zov2', 'zov2@gmail.com', 'zov2@gmail.com', 1, 's8idrmPEbwqhCdI1xVPzmJM.4wnIwxjQBv3avvmmwdk', 'Jj37G2HUiIN+V61ebiIHg9NbA6kzvSSNBiYJNgIJ9HeQT5tL5ighU6QKhn/zg4cQKuMxOBK5MNtULXcafRicjA==', '2017-10-26 15:34:48', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', '55.749742', '37.632713', 'ZOV2', 'ZOV2', 'ул. Горького 10к2', '9:00 - 18:00', NULL, 'Рядом с Москвой');

-- --------------------------------------------------------

--
-- Структура таблицы `free_design_project`
--

CREATE TABLE `free_design_project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated` datetime NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `free_design_project`
--

INSERT INTO `free_design_project` (`id`, `name`, `phone`, `email`, `message`, `geoIP`, `updated`, `imageName`, `imageSize`, `url`, `id_salon`) VALUES
(1, 'Антон Бабич', '+7 (495)123-45-678', 'antosha.1998.ru@mail.ru', '123', 'Не удалось определить координаты посетителя', '2017-10-23 09:52:29', 'fasad-acryl-belyi.jpg', 12366, 'http://kitchen/web/app_dev.php/', NULL),
(2, 'Антон Бабич', '298324405', 'antosha.1998.ru@mail.ru', '4745', 'Не удалось определить координаты посетителя', '2017-10-23 10:44:33', 'fasad-acryl-stal.jpg', 18335, 'http://kitchen/web/app_dev.php/', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni`
--

CREATE TABLE `kuhni` (
  `id` int(11) NOT NULL,
  `id_catalog` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kuhni_style` int(11) DEFAULT NULL,
  `id_kuhni_material` int(11) DEFAULT NULL,
  `id_kuhni_config` int(11) DEFAULT NULL,
  `id_kuhni_color` int(11) DEFAULT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `fixedPrice` tinyint(1) NOT NULL,
  `razmer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nameFasad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matFasad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stoleshnica` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `korpus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `furnitura` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `count_projects` int(11) NOT NULL,
  `noDiscountPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni`
--

INSERT INTO `kuhni` (`id`, `id_catalog`, `name`, `title`, `description`, `keywords`, `main_description`, `id_kuhni_style`, `id_kuhni_material`, `id_kuhni_config`, `id_kuhni_color`, `imageName`, `imageSize`, `updated`, `slug`, `price`, `discount`, `fixedPrice`, `razmer`, `nameFasad`, `matFasad`, `stoleshnica`, `korpus`, `furnitura`, `likes`, `count_projects`, `noDiscountPrice`) VALUES
(1, 1, 'alberta', 'alberta', 'alberta', 'alberta', 'alberta', 1, 1, 1, 1, 'alberta_1.jpg', 1024, '2017-10-05 10:13:13', 'alberta', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 1, 1, 11730),
(2, 1, 'annetta', 'annetta', 'annetta', 'annetta', 'annetta', 2, 2, 2, 2, 'annetta_1.jpg', 1024, '2017-10-05 10:13:13', 'annetta', 10200, 0, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(3, 1, 'art', 'art', 'art', 'art', 'art', 3, 3, 3, 3, 'art_1.jpg', 1024, '2017-10-05 10:13:13', 'art', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(4, 1, 'artwood', 'artwood', 'artwood', 'artwood', 'artwood', 4, 4, 4, 4, 'artwood_1.jpg', 1024, '2017-10-05 10:13:13', 'artwood', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(5, 1, 'belfast', 'belfast', 'belfast', 'belfast', 'belfast', 5, 5, 5, 5, 'belfast_1.jpg', 1024, '2017-10-05 10:13:13', 'belfast', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(6, 1, 'bergen', 'bergen', 'bergen', 'bergen', 'bergen', 6, 6, 6, 6, 'bergen_1.jpg', 1024, '2017-10-05 10:13:13', 'bergen', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(7, 1, 'born', 'born', 'born', 'born', 'born', 7, 7, 7, 7, 'born_1.jpg', 1024, '2017-10-05 10:13:13', 'born', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(8, 1, 'brig', 'brig', 'brig', 'brig', 'brig', 8, 8, 1, 8, 'brig_1.jpg', 1024, '2017-10-05 10:13:13', 'brig', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(9, 1, 'brunnen', 'brunnen', 'brunnen', 'brunnen', 'brunnen', 9, 9, 2, 9, 'brunnen_1.jpg', 1024, '2017-10-05 10:13:13', 'brunnen', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(10, 1, 'chicago', 'chicago', 'chicago', 'chicago', 'chicago', 10, 10, 3, 10, 'chicago_1.jpg', 1024, '2017-10-05 10:13:13', 'chicago', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(11, 1, 'fortwood', 'fortwood', 'fortwood', 'fortwood', 'fortwood', 1, 11, 4, 11, 'fortwood_1.jpg', 1024, '2017-10-05 10:13:13', 'fortwood', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(12, 1, 'fortwood_v2', 'fortwood_v2', 'fortwood_v2', 'fortwood_v2', 'fortwood_v2', 2, 12, 5, 12, 'fortwood_v2_1.jpg', 1024, '2017-10-05 10:13:13', 'fortwood_v2', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(13, 1, 'glasgow', 'glasgow', 'glasgow', 'glasgow', 'glasgow', 3, 13, 6, 1, 'glasgow_1.jpg', 1024, '2017-10-05 10:13:13', 'glasgow', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(14, 1, 'hagen', 'hagen', 'hagen', 'hagen', 'hagen', 4, 1, 7, 2, 'hagen_1.jpg', 1024, '2017-10-05 10:13:13', 'hagen', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(15, 1, 'integro_ashes', 'integro_ashes', 'integro_ashes', 'integro_ashes', 'integro_ashes', 5, 2, 1, 3, 'integro-ashes_1.jpg', 1024, '2017-10-05 10:13:13', 'integro_ashes', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(16, 1, 'integro_graphite', 'integro_graphite', 'integro_graphite', 'integro_graphite', 'integro_graphite', 6, 3, 2, 4, 'integro-graphite_1.jpg', 1024, '2017-10-05 10:13:13', 'integro_graphite', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(17, 1, 'leon', 'leon', 'leon', 'leon', 'leon', 7, 4, 3, 5, 'leon_1.jpg', 1024, '2017-10-05 10:13:13', 'leon', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(18, 1, 'linnea', 'linnea', 'linnea', 'linnea', 'linnea', 8, 5, 4, 6, 'linnea_1.jpg', 1024, '2017-10-05 10:13:13', 'linnea', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(19, 1, 'loft', 'loft', 'loft', 'loft', 'loft', 9, 6, 5, 7, 'loft_1.jpg', 1024, '2017-10-05 10:13:13', 'loft', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(20, 1, 'london', 'london', 'london', 'london', 'london', 10, 7, 6, 8, 'london_1.jpg', 1024, '2017-10-05 10:13:13', 'london', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(21, 1, 'longford', 'longford', 'longford', 'longford', 'longford', 1, 8, 7, 9, 'longford_1.jpg', 1024, '2017-10-05 10:13:13', 'longford', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(22, 1, 'lotte', 'lotte', 'lotte', 'lotte', 'lotte', 2, 9, 1, 10, 'lotte_1.jpg', 1024, '2017-10-05 10:13:13', 'lotte', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(23, 1, 'lotte_v2', 'lotte_v2', 'lotte_v2', 'lotte_v2', 'lotte_v2', 3, 10, 2, 11, 'lotte_v2_1.jpg', 1024, '2017-10-05 10:13:13', 'lotte_v2', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(24, 1, 'lugano', 'lugano', 'lugano', 'lugano', 'lugano', 4, 11, 3, 12, 'lugano_1.jpg', 1024, '2017-10-05 10:13:13', 'lugano', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(25, 1, 'madeira', 'madeira', 'madeira', 'madeira', 'madeira', 5, 12, 4, 1, 'madeira_1.jpg', 1024, '2017-10-05 10:13:13', 'madeira', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(26, 1, 'marseille-4', 'marseille-4', 'marseille-4', 'marseille-4', 'marseille-4', 6, 1, 5, 2, 'marseille-4_1.jpg', 1024, '2017-10-05 10:13:13', 'marseille-4', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(27, 1, 'nord', 'nord', 'nord', 'nord', 'nord', 7, 2, 6, 3, 'nord_1.jpg', 1024, '2017-10-05 10:13:13', 'nord', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(28, 1, 'norfolk', 'norfolk', 'norfolk', 'norfolk', 'norfolk', 8, 3, 7, 4, 'norfolk_1.jpg', 1024, '2017-10-05 10:13:13', 'norfolk', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(29, 1, 'oldfin', 'oldfin', 'oldfin', 'oldfin', 'oldfin', 9, 4, 1, 5, 'oldfin_1.jpg', 1024, '2017-10-05 10:13:13', 'oldfin', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(30, 1, 'orion-mat-glossy', 'orion-mat-glossy', 'orion-mat-glossy', 'orion-mat-glossy', 'orion-mat-glossy', 10, 5, 2, 6, 'orion-mat-glossy_1.jpg', 1024, '2017-10-05 10:13:13', 'orion-mat-glossy', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(31, 1, 'orion-olive-grey', 'orion-olive-grey', 'orion-olive-grey', 'orion-olive-grey', 'orion-olive-grey', 9, 6, 3, 7, 'orion-olive-grey_1.jpg', 1024, '2017-10-05 10:13:13', 'orion-olive-grey', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(32, 1, 'palermo', 'palermo', 'palermo', 'palermo', 'palermo', 1, 7, 4, 8, 'palermo_1.jpg', 1024, '2017-10-05 10:13:13', 'palermo', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(33, 1, 'paris', 'paris', 'paris', 'paris', 'paris', 2, 8, 5, 9, 'paris_1.jpg', 1024, '2017-10-05 10:13:13', 'paris', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(34, 1, 'pasadena', 'pasadena', 'pasadena', 'pasadena', 'pasadena', 3, 9, 6, 10, 'pasadena_1.jpg', 1024, '2017-10-05 10:13:13', 'pasadena', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(35, 1, 'portofino', 'portofino', 'portofino', 'portofino', 'portofino', 4, 10, 7, 11, 'portofino_1.jpg', 1024, '2017-10-05 10:13:13', 'portofino', 10200, 15, 1, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(36, 1, 'tirol', 'tirol', 'tirol', 'tirol', 'tirol', 5, 11, 1, 12, 'tirol_1.jpg', 1024, '2017-10-05 10:13:13', 'tirol', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(37, 1, 'tivoli', 'tivoli', 'tivoli', 'tivoli', 'tivoli', 6, 12, 2, 10, 'tivoli_1.jpg', 1024, '2017-10-05 10:13:13', 'tivoli', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(38, 1, 'weiden', 'weiden', 'weiden', 'weiden', 'weiden', 7, 13, 3, 11, 'weiden_1.jpg', 1024, '2017-10-05 10:13:13', 'weiden', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730),
(39, 1, 'pasadena', 'pasadena', 'pasadena', 'pasadena', 'pasadena', 8, 9, 6, 10, 'pasadena_1.jpg', 1024, '2017-10-05 10:13:13', 'pasadena', 10200, 15, 0, '280х160см', '	Акрил Како, Акрил Винил', 'Акрил', 'Бежевый гранит 38мм', 'ЛДСП Негро 18мм', 'Hettich, Blum, FGV', 0, 0, 11730);

--
-- Триггеры `kuhni`
--
DELIMITER $$
CREATE TRIGGER `discounts` BEFORE UPDATE ON `kuhni` FOR EACH ROW BEGIN
   set new.noDiscountPrice = (old.price * old.discount)/100 + old.price;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_acryl`
--

CREATE TABLE `kuhni_acryl` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_color`
--

CREATE TABLE `kuhni_color` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_color`
--

INSERT INTO `kuhni_color` (`id`, `title`, `keywords`, `main_description`, `color`, `slug`) VALUES
(1, 'Белые', 'Белые', 'White', 'white', 'white'),
(2, 'Черные', 'Черные', 'Black', 'black', 'black'),
(3, 'Серые', 'Серые', 'Gray', '#666666', 'gray'),
(4, 'Зеленые', 'Зеленые', 'Green', '#009900', 'green'),
(5, 'Бежевые', 'Бежевые', 'Beige', '#FFFFCC', 'beige'),
(6, 'Красные', 'Красные', 'Reds', '#CC0000', 'reds'),
(7, 'Коричневые', 'Коричневые', 'Brown', '#663300', 'brown'),
(8, 'Желтые', 'Желтые', 'Yellow', '#FFCC00', 'yellow'),
(9, 'Оранжевые', 'Оранжевые', 'Orange', '#FF6600', 'orange'),
(10, 'Синие', 'Синие', 'Blue', '#003399', 'blue'),
(11, 'Голубые', 'Голубые', 'Blue', '#66CCFF', 'blue'),
(12, 'Фиолетовые', 'Фиолетовые', 'Purple', '#330066', 'purple');

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_config`
--

CREATE TABLE `kuhni_config` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_config`
--

INSERT INTO `kuhni_config` (`id`, `title`, `keywords`, `main_description`, `imageName`, `imageSize`, `updated`, `slug`) VALUES
(1, 'Прямые кухни', 'Прямые кухни', 'Прямые кухни', 'kitchentype_line.svg', 1024, '2017-10-04 14:43:15', 'line'),
(2, 'Угловые кухни', 'Угловые кухни', 'Угловые кухни', 'kitchentype_degree.svg', 1024, '2017-10-04 14:43:15', 'degree'),
(3, 'П образные кухни', 'П образные кухни', 'П образные кухни', 'kitchentype_pobraznye.svg', 1024, '2017-10-04 14:43:15', 'pobraznye'),
(4, 'Кухни с островом', 'Кухни с островом', 'Кухни с островом', 'kitchentype_sostrovom.svg', 1024, '2017-10-04 14:43:15', 'sostrovom'),
(5, 'Малогабаритные кухни', 'Малогабаритные кухни', 'Малогабаритные кухни', 'kitchentype_small.svg', 1024, '2017-10-04 14:43:15', 'small'),
(6, 'Кухня гостиная', 'Кухня гостиная', 'Кухня гостиная', 'kitchentype_gostinaya.svg', 1024, '2017-10-04 14:43:15', 'gostinaya'),
(7, 'Кухня столовая', 'Кухня столовая', 'Кухня столовая', 'kitchentype_stolovaya.svg', 1024, '2017-10-04 14:43:15', 'stolovaya');

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_dsp`
--

CREATE TABLE `kuhni_dsp` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_glass`
--

CREATE TABLE `kuhni_glass` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_images`
--

CREATE TABLE `kuhni_images` (
  `id` int(11) NOT NULL,
  `kuhni_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_images`
--

INSERT INTO `kuhni_images` (`id`, `kuhni_id`, `title`, `imageName`, `imageSize`, `updated`) VALUES
(1, 1, 'alberta_1', 'alberta_1.jpg', 1024, '2017-10-04 19:46:46'),
(2, 1, 'alberta_2', 'alberta_2.jpg', 1024, '2017-10-04 19:46:46'),
(3, 1, 'alberta_3', 'alberta_3.jpg', 1024, '2017-10-04 19:46:46'),
(4, 1, 'alberta_4', 'alberta_4.jpg', 1024, '2017-10-04 19:46:46'),
(5, 2, 'annetta_1', 'annetta_1.jpg', 1024, '2017-10-04 19:46:46'),
(6, 2, 'annetta_2', 'annetta_2.jpg', 1024, '2017-10-04 19:46:46'),
(7, 2, 'annetta_3', 'annetta_3.jpg', 1024, '2017-10-04 19:46:46'),
(8, 2, 'annetta_4', 'annetta_4.jpg', 1024, '2017-10-04 19:46:46'),
(9, 3, 'art_1', 'art_1.jpg', 1024, '2017-10-04 19:46:46'),
(10, 3, 'art_2', 'art_2.jpg', 1024, '2017-10-04 19:46:46'),
(11, 3, 'art_3', 'art_3.jpg', 1024, '2017-10-04 19:46:46'),
(12, 3, 'art_4', 'art_4.jpg', 1024, '2017-10-04 19:46:46'),
(13, 4, 'artwood_1', 'artwood_1.jpg', 1024, '2017-10-04 19:46:46'),
(14, 4, 'artwood_2', 'artwood_2.jpg', 1024, '2017-10-04 19:46:46'),
(15, 4, 'artwood_3', 'artwood_3.jpg', 1024, '2017-10-04 19:46:46'),
(16, 4, 'artwood_4', 'artwood_4.jpg', 1024, '2017-10-04 19:46:46'),
(17, 5, 'belfast_1', 'belfast_1.jpg', 1024, '2017-10-04 19:46:46'),
(18, 5, 'belfast_2', 'belfast_2.jpg', 1024, '2017-10-04 19:46:46'),
(19, 5, 'belfast_3', 'belfast_3.jpg', 1024, '2017-10-04 19:46:46'),
(20, 5, 'belfast_4', 'belfast_4.jpg', 1024, '2017-10-04 19:46:46'),
(21, 6, 'bergen_1', 'bergen_1.jpg', 1024, '2017-10-04 19:46:46'),
(22, 6, 'bergen_2', 'bergen_2.jpg', 1024, '2017-10-04 19:46:46'),
(23, 6, 'bergen_3', 'bergen_3.jpg', 1024, '2017-10-04 19:46:46'),
(24, 6, 'bergen_4', 'bergen_4.jpg', 1024, '2017-10-04 19:46:46'),
(25, 7, 'born_1', 'born_1.jpg', 1024, '2017-10-04 19:46:46'),
(26, 7, 'born_2', 'born_2.jpg', 1024, '2017-10-04 19:46:46'),
(27, 7, 'born_3', 'born_3.jpg', 1024, '2017-10-04 19:46:46'),
(28, 8, 'brig_1', 'brig_1.jpg', 1024, '2017-10-04 19:46:46'),
(29, 8, 'brig_2', 'brig_2.jpg', 1024, '2017-10-04 19:46:46'),
(30, 8, 'brig_3', 'brig_3.jpg', 1024, '2017-10-04 19:46:46'),
(31, 8, 'brig_4', 'brig_4.jpg', 1024, '2017-10-04 19:46:46'),
(32, 9, 'brunnen_1', 'brunnen_1.jpg', 1024, '2017-10-04 19:46:46'),
(33, 9, 'brunnen_2', 'brunnen_2.jpg', 1024, '2017-10-04 19:46:46'),
(34, 9, 'brunnen_3', 'brunnen_3.jpg', 1024, '2017-10-04 19:46:46'),
(35, 9, 'brunnen_4', 'brunnen_4.jpg', 1024, '2017-10-04 19:46:46'),
(36, 10, 'chicago_1', 'chicago_1.jpg', 1024, '2017-10-04 19:46:46'),
(37, 10, 'chicago_2', 'chicago_2.jpg', 1024, '2017-10-04 19:46:46'),
(38, 10, 'chicago_3', 'chicago_3.jpg', 1024, '2017-10-04 19:46:46'),
(39, 10, 'chicago_4', 'chicago_4.jpg', 1024, '2017-10-04 19:46:46'),
(40, 11, 'fortwood_1', 'fortwood_1.jpg', 1024, '2017-10-04 19:46:46'),
(41, 11, 'fortwood_2', 'fortwood_2.jpg', 1024, '2017-10-04 19:46:46'),
(42, 11, 'fortwood_3', 'fortwood_3.jpg', 1024, '2017-10-04 19:46:46'),
(43, 11, 'fortwood_4', 'fortwood_4.jpg', 1024, '2017-10-04 19:46:46'),
(44, 11, 'fortwood_5', 'fortwood_5.jpg', 1024, '2017-10-04 19:46:46'),
(45, 12, 'fortwood_v2_1', 'fortwood_v2_1.jpg', 1024, '2017-10-04 19:46:46'),
(46, 12, 'fortwood_v2_2', 'fortwood_v2_2.jpg', 1024, '2017-10-04 19:46:46'),
(47, 12, 'fortwood_v2_3', 'fortwood_v2_3.jpg', 1024, '2017-10-04 19:46:46'),
(48, 13, 'glasgow_1', 'glasgow_1.jpg', 1024, '2017-10-04 19:46:46'),
(49, 13, 'glasgow_2', 'glasgow_2.jpg', 1024, '2017-10-04 19:46:46'),
(50, 13, 'glasgow_3', 'glasgow_3.jpg', 1024, '2017-10-04 19:46:46'),
(51, 13, 'glasgow_4', 'glasgow_4.jpg', 1024, '2017-10-04 19:46:46'),
(52, 14, 'hagen_1', 'hagen_1.jpg', 1024, '2017-10-04 19:46:46'),
(53, 14, 'hagen_2', 'hagen_2.jpg', 1024, '2017-10-04 19:46:46'),
(54, 14, 'hagen_3', 'hagen_3.jpg', 1024, '2017-10-04 19:46:46'),
(55, 14, 'hagen_4', 'hagen_4.jpg', 1024, '2017-10-04 19:46:46'),
(56, 15, 'integro_ashes_1', 'integro-ashes_1.jpg', 1024, '2017-10-04 19:46:46'),
(57, 15, 'integro_ashes_2', 'integro-ashes_2.jpg', 1024, '2017-10-04 19:46:46'),
(58, 15, 'integro_ashes_3', 'integro-ashes_3.jpg', 1024, '2017-10-04 19:46:46'),
(59, 15, 'integro_ashes_4', 'integro-ashes_4.jpg', 1024, '2017-10-04 19:46:46'),
(60, 16, 'integro_graphite_1', 'integro-graphite_1.jpg', 1024, '2017-10-04 19:46:46'),
(61, 16, 'integro_graphite_2', 'integro-graphite_2.jpg', 1024, '2017-10-04 19:46:46'),
(62, 16, 'integro_graphite_3', 'integro-graphite_3.jpg', 1024, '2017-10-04 19:46:46'),
(63, 16, 'integro_graphite_4', 'integro-graphite_4.jpg', 1024, '2017-10-04 19:46:46'),
(64, 17, 'leon_1', 'leon_1.jpg', 1024, '2017-10-04 19:46:46'),
(65, 17, 'leon_2', 'leon_2.jpg', 1024, '2017-10-04 19:46:46'),
(66, 17, 'leon_3', 'leon_3.jpg', 1024, '2017-10-04 19:46:46'),
(67, 17, 'leon_4', 'leon_4.jpg', 1024, '2017-10-04 19:46:46'),
(68, 18, 'linnea_1', 'linnea_1.jpg', 1024, '2017-10-04 19:46:46'),
(69, 18, 'linnea_2', 'linnea_2.jpg', 1024, '2017-10-04 19:46:46'),
(70, 18, 'linnea_3', 'linnea_3.jpg', 1024, '2017-10-04 19:46:46'),
(71, 18, 'linnea_4', 'linnea_4.jpg', 1024, '2017-10-04 19:46:46'),
(72, 19, 'loft_1', 'loft_1.jpg', 1024, '2017-10-04 19:46:46'),
(73, 19, 'loft_2', 'loft_2.jpg', 1024, '2017-10-04 19:46:46'),
(74, 19, 'loft_3', 'loft_3.jpg', 1024, '2017-10-04 19:46:46'),
(75, 19, 'loft_4', 'loft_4.jpg', 1024, '2017-10-04 19:46:46'),
(76, 20, 'london_1', 'london_1.jpg', 1024, '2017-10-04 19:46:46'),
(77, 20, 'london_2', 'london_2.jpg', 1024, '2017-10-04 19:46:46'),
(78, 20, 'london_3', 'london_3.jpg', 1024, '2017-10-04 19:46:46'),
(79, 20, 'london_4', 'london_4.jpg', 1024, '2017-10-04 19:46:46'),
(80, 21, 'longford_1', 'longford_1.jpg', 1024, '2017-10-04 19:46:46'),
(81, 21, 'longford_2', 'longford_2.jpg', 1024, '2017-10-04 19:46:46'),
(82, 21, 'longford_3', 'longford_3.jpg', 1024, '2017-10-04 19:46:46'),
(83, 21, 'longford_4', 'longford_4.jpg', 1024, '2017-10-04 19:46:46'),
(84, 22, 'lotte_1', 'lotte_1.jpg', 1024, '2017-10-04 19:46:46'),
(85, 22, 'lotte_2', 'lotte_2.jpg', 1024, '2017-10-04 19:46:46'),
(86, 22, 'lotte_3', 'lotte_3.jpg', 1024, '2017-10-04 19:46:46'),
(87, 22, 'lotte_4', 'lotte_4.jpg', 1024, '2017-10-04 19:46:46'),
(88, 23, 'lotte_v2_1', 'lotte_v2_1.jpg', 1024, '2017-10-04 19:46:46'),
(89, 23, 'lotte_v2_2', 'lotte_v2_2.jpg', 1024, '2017-10-04 19:46:46'),
(90, 23, 'lotte_v2_3', 'lotte_v2_3.jpg', 1024, '2017-10-04 19:46:46'),
(91, 24, 'lugano_1', 'lugano_1.jpg', 1024, '2017-10-04 19:46:46'),
(92, 24, 'lugano_2', 'lugano_2.jpg', 1024, '2017-10-04 19:46:46'),
(93, 24, 'lugano_3', 'lugano_3.jpg', 1024, '2017-10-04 19:46:46'),
(94, 24, 'lugano_4', 'lugano_4.jpg', 1024, '2017-10-04 19:46:46'),
(95, 25, 'madeira_1', 'madeira_1.jpg', 1024, '2017-10-04 19:46:46'),
(96, 25, 'madeira_2', 'madeira_2.jpg', 1024, '2017-10-04 19:46:46'),
(97, 25, 'madeira_3', 'madeira_3.jpg', 1024, '2017-10-04 19:46:46'),
(98, 25, 'madeira_4', 'madeira_4.jpg', 1024, '2017-10-04 19:46:46'),
(99, 26, 'marseille-4_1', 'marseille-4_1.jpg', 1024, '2017-10-04 19:46:46'),
(100, 26, 'marseille-4_2', 'marseille-4_2.jpg', 1024, '2017-10-04 19:46:46'),
(101, 26, 'marseille-4_3', 'marseille-4_3.jpg', 1024, '2017-10-04 19:46:46'),
(102, 26, 'marseille-4_4', 'marseille-4_4.jpg', 1024, '2017-10-04 19:46:46'),
(103, 27, 'nord_1', 'nord_1.jpg', 1024, '2017-10-04 19:46:46'),
(104, 27, 'nord_2', 'nord_2.jpg', 1024, '2017-10-04 19:46:46'),
(105, 27, 'nord_3', 'nord_3.jpg', 1024, '2017-10-04 19:46:46'),
(106, 27, 'nord_4', 'nord_4.jpg', 1024, '2017-10-04 19:46:46'),
(107, 28, 'norfolk_1', 'norfolk_1.jpg', 1024, '2017-10-04 19:46:46'),
(108, 28, 'norfolk_2', 'norfolk_2.jpg', 1024, '2017-10-04 19:46:46'),
(109, 28, 'norfolk_3', 'norfolk_3.jpg', 1024, '2017-10-04 19:46:46'),
(110, 28, 'norfolk_4', 'norfolk_4.jpg', 1024, '2017-10-04 19:46:46'),
(111, 29, 'oldfin_1', 'oldfin_1.jpg', 1024, '2017-10-04 19:46:46'),
(112, 29, 'oldfin_2', 'oldfin_2.jpg', 1024, '2017-10-04 19:46:46'),
(113, 29, 'oldfin_3', 'oldfin_3.jpg', 1024, '2017-10-04 19:46:46'),
(114, 30, 'orion-mat-glossy_1', 'orion-mat-glossy_1.jpg', 1024, '2017-10-04 19:46:46'),
(115, 30, 'orion-mat-glossy_2', 'orion-mat-glossy_2.jpg', 1024, '2017-10-04 19:46:46'),
(116, 30, 'orion-mat-glossy_3', 'orion-mat-glossy_3.jpg', 1024, '2017-10-04 19:46:46'),
(117, 30, 'orion-mat-glossy_4', 'orion-mat-glossy_4.jpg', 1024, '2017-10-04 19:46:46'),
(118, 31, 'orion-olive-grey_1', 'orion-olive-grey_1.jpg', 1024, '2017-10-04 19:46:46'),
(119, 31, 'orion-olive-grey_2', 'orion-olive-grey_2.jpg', 1024, '2017-10-04 19:46:46'),
(120, 31, 'orion-olive-grey_3', 'orion-olive-grey_3.jpg', 1024, '2017-10-04 19:46:46'),
(121, 31, 'orion-olive-grey_4', 'orion-olive-grey_4.jpg', 1024, '2017-10-04 19:46:46'),
(122, 32, 'palermo_1', 'palermo_1.jpg', 1024, '2017-10-04 19:46:46'),
(123, 32, 'palermo_2', 'palermo_2.jpg', 1024, '2017-10-04 19:46:46'),
(124, 32, 'palermo_3', 'palermo_3.jpg', 1024, '2017-10-04 19:46:46'),
(125, 33, 'paris_1', 'paris_1.jpg', 1024, '2017-10-04 19:46:46'),
(126, 33, 'paris_2', 'paris_2.jpg', 1024, '2017-10-04 19:46:46'),
(127, 33, 'paris_3', 'paris_3.jpg', 1024, '2017-10-04 19:46:46'),
(128, 33, 'paris_4', 'paris_4.jpg', 1024, '2017-10-04 19:46:46'),
(129, 34, 'pasadena_1', 'pasadena_1.jpg', 1024, '2017-10-04 19:46:46'),
(130, 34, 'pasadena_2', 'pasadena_2.jpg', 1024, '2017-10-04 19:46:46'),
(131, 34, 'pasadena_3', 'pasadena_3.jpg', 1024, '2017-10-04 19:46:46'),
(132, 35, 'portofino_1', 'portofino_1.jpg', 1024, '2017-10-04 19:46:46'),
(133, 35, 'portofino_2', 'portofino_2.jpg', 1024, '2017-10-04 19:46:46'),
(134, 35, 'portofino_3', 'portofino_3.jpg', 1024, '2017-10-04 19:46:46'),
(135, 36, 'tirol_1', 'tirol_1.jpg', 1024, '2017-10-04 19:46:46'),
(136, 36, 'tirol_2', 'tirol_2.jpg', 1024, '2017-10-04 19:46:46'),
(137, 36, 'tirol_3', 'tirol_3.jpg', 1024, '2017-10-04 19:46:46'),
(138, 37, 'tivoli_1', 'tivoli_1.jpg', 1024, '2017-10-04 19:46:46'),
(139, 37, 'tivoli_2', 'tivoli_2.jpg', 1024, '2017-10-04 19:46:46'),
(140, 37, 'tivoli_3', 'tivoli_3.jpg', 1024, '2017-10-04 19:46:46'),
(141, 38, 'weiden_1', 'weiden_1.jpg', 1024, '2017-10-04 19:46:46'),
(142, 38, 'weiden_2', 'weiden_2.jpg', 1024, '2017-10-04 19:46:46'),
(143, 38, 'weiden_3', 'weiden_3.jpg', 1024, '2017-10-04 19:46:46');

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_massive`
--

CREATE TABLE `kuhni_massive` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_massive`
--

INSERT INTO `kuhni_massive` (`id`, `title`) VALUES
(1, 'Кухни из дуба'),
(2, 'Кухни из ясеня'),
(3, 'Кухни из ольхи');

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_material`
--

CREATE TABLE `kuhni_material` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `id_massive` int(11) DEFAULT NULL,
  `id_mdf` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_plastic` int(11) DEFAULT NULL,
  `id_glass` int(11) DEFAULT NULL,
  `id_acryl` int(11) DEFAULT NULL,
  `id_shpon` int(11) DEFAULT NULL,
  `id_dsp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_material`
--

INSERT INTO `kuhni_material` (`id`, `title`, `keywords`, `main_description`, `imageName`, `imageSize`, `updated`, `id_massive`, `id_mdf`, `slug`, `id_plastic`, `id_glass`, `id_acryl`, `id_shpon`, `id_dsp`) VALUES
(1, 'Кухни из массива', 'Кухни из массива', 'Кухни из массива', 'kitchenmat-massiv.jpg', 1024, '2017-10-04 14:43:15', 1, NULL, 'massiv', NULL, NULL, NULL, NULL, NULL),
(2, 'Кухни из массива', 'Кухни из массива', 'Кухни из массива', 'kitchenmat-massiv.jpg', 1024, '2017-10-04 14:43:15', 2, NULL, 'massiv', NULL, NULL, NULL, NULL, NULL),
(3, 'Кухни из массива', 'Кухни из массива', 'Кухни из массива', 'kitchenmat-massiv.jpg', 1024, '2017-10-04 14:43:15', 3, NULL, 'massiv', NULL, NULL, NULL, NULL, NULL),
(4, 'Кухни из МДФ', 'Кухни из МДФ', 'Кухни из МДФ', 'kitchenmat-mdf.jpg', 1024, '2017-10-04 14:43:15', NULL, 1, 'mdf', NULL, NULL, NULL, NULL, NULL),
(5, 'Кухни из МДФ', 'Кухни из МДФ', 'Кухни из МДФ', 'kitchenmat-mdf.jpg', 1024, '2017-10-04 14:43:15', NULL, 2, 'mdf', NULL, NULL, NULL, NULL, NULL),
(6, 'Кухни из МДФ', 'Кухни из МДФ', 'Кухни из МДФ', 'kitchenmat-mdf.jpg', 1024, '2017-10-04 14:43:15', NULL, 3, 'mdf', NULL, NULL, NULL, NULL, NULL),
(7, 'Кухни из МДФ', 'Кухни из МДФ', 'Кухни из МДФ', 'kitchenmat-mdf.jpg', 1024, '2017-10-04 14:43:15', NULL, 4, 'mdf', NULL, NULL, NULL, NULL, NULL),
(8, 'Кухни из МДФ', 'Кухни из МДФ', 'Кухни из МДФ', 'kitchenmat-mdf.jpg', 1024, '2017-10-04 14:43:15', NULL, 5, 'mdf', NULL, NULL, NULL, NULL, NULL),
(9, 'Кухни из пластика', 'Кухни из пластика', 'Кухни из пластика', 'kitchenmat-plastic.jpg', 1024, '2017-10-04 14:43:15', NULL, NULL, 'plastic', NULL, NULL, NULL, NULL, NULL),
(10, 'Кухни из стекла', 'Кухни из стекла', 'Кухни из стекла', 'kitchenmat-glass.jpg', 1024, '2017-10-04 14:43:15', NULL, NULL, 'glass', NULL, NULL, NULL, NULL, NULL),
(11, 'Акриловые кухни', 'Акриловые кухни', 'Акриловые кухни', 'kitchenmat-acryl.jpg', 1024, '2017-10-04 14:43:15', NULL, NULL, 'acryl', NULL, NULL, NULL, NULL, NULL),
(12, 'Кухни из шпона', 'Кухни из шпона', 'Кухни из шпона', 'kitchenmat-shpon.jpg', 1024, '2017-10-04 14:43:15', NULL, NULL, 'shpon', NULL, NULL, NULL, NULL, NULL),
(13, 'Кухни из ДСП', 'Кухни из ДСП', 'Кухни из ДСП', 'kitchenmat-dsp.jpg', 1024, '2017-10-04 14:43:15', NULL, NULL, 'dsp', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_mdf`
--

CREATE TABLE `kuhni_mdf` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_mdf`
--

INSERT INTO `kuhni_mdf` (`id`, `title`) VALUES
(1, 'МДФ рамочный'),
(2, 'МДФ-ПВХ'),
(3, 'МДФ-ПВХ крашеный'),
(4, 'МДФ крашеный (эмаль)'),
(5, 'МДФ лакированный');

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_plastic`
--

CREATE TABLE `kuhni_plastic` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_shpon`
--

CREATE TABLE `kuhni_shpon` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kuhni_style`
--

CREATE TABLE `kuhni_style` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageSize` int(11) NOT NULL,
  `updated` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kuhni_style`
--

INSERT INTO `kuhni_style` (`id`, `title`, `keywords`, `main_description`, `imageName`, `imageSize`, `updated`, `slug`) VALUES
(1, 'Современные кухни', '23', '45', 'kitchenstyle-sovremennye.jpg', 1024, '2017-10-03 10:01:47', 'sovremennye'),
(2, 'Кухни Прованс', '23', '45', 'kitchenstyle-provans.jpg', 1024, '2017-10-03 10:01:47', 'provans'),
(3, 'Классические кухни', '23', '45', 'kitchenstyle-klassicheskie.jpg', 1024, '2017-10-03 10:01:47', 'klassicheskie'),
(4, 'Кухни Лофт', '23', '45', 'kitchenstyle-loft.jpg', 1024, '2017-10-03 10:01:47', 'loft'),
(5, 'Кухни Кантри', '23', '45', 'kitchenstyle-kantri.jpg', 1024, '2017-10-03 10:01:47', 'kantri'),
(6, 'Кухни Хай Тек', '23', '45', 'kitchenstyle-haitek.jpg', 1024, '2017-10-03 10:01:47', 'haitek'),
(7, 'Кухни в Скандинавском стиле', '23', '45', 'kitchenstyle-skandinavskiy.jpg', 1024, '2017-10-03 10:01:47', 'skandinavskiy'),
(8, 'Ретро кухни', '23', '45', 'kitchenstyle-retro.jpg', 1024, '2017-10-03 10:01:47', 'retro'),
(9, 'Кухни Минимализм', '23', '45', 'kitchenstyle-minimalizm.jpg', 1024, '2017-10-03 10:01:47', 'minimalizm'),
(10, 'Кухни Модерн', '23', '45', 'kitchenstyle-modern.jpg', 1024, '2017-10-03 10:01:47', 'modern');

-- --------------------------------------------------------

--
-- Структура таблицы `request_call`
--

CREATE TABLE `request_call` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `request_call`
--

INSERT INTO `request_call` (`id`, `name`, `phone`, `geoIP`, `url`, `created`, `id_salon`) VALUES
(1, 'Anthony', '+7 (234) 234-23-52', 'Не удалось определить координаты посетителя', 'http://kitchen/web/app_dev.php/', '2017-10-18 13:04:58', NULL),
(2, 'Anthony', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', 'http://kitchen/web/app_dev.php/', '2017-10-18 13:07:37', NULL),
(3, '6', '+7 (___) ___-__-__', 'Не удалось определить координаты посетителя', 'http://kitchen/web/app_dev.php/', '2017-10-18 15:10:32', NULL),
(4, 'Антон Бабич', '+7 (423) 423-42-34', 'Не удалось определить координаты посетителя', 'http://kitchen/web/app_dev.php/', '2017-10-19 09:15:28', NULL),
(5, 'Антон Бабич', '+7(495)123-45-678', 'Не удалось определить координаты посетителя', 'http://kitchen/web/app_dev.php/', '2017-10-20 09:07:09', NULL),
(6, 'Anthony', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', 'http://kitchen/web/app_dev.php/', '2017-10-20 09:11:36', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `id_salon` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `id_salon`, `name`, `email`, `phone`, `geoIP`, `created`, `url`, `message`, `star`) VALUES
(1, 2, 'Ольга1', 'email@mail.ru', '+7 111 111 111 1', 'Не найден', '2017-11-06 00:00:00', 'http://kitchens/web/app_dev.php/', 'У меня кухня получилось то, что нужно! Полностью соответствует моим запросам! Кухня комбинированная. Ничего лишнего, все расположено очень удобно. 1111111111111111111111111111111111111111111111111111111111111111', 5),
(2, 2, 'Ольга2', 'email@mail.ru', '+7 111 111 111 1', 'Не найден', '2017-11-07 00:00:00', 'http://kitchens/web/app_dev.php/', 'У меня кухня получилось то, что нужно! Полностью соответствует моим запросам! Кухня комбинированная. Ничего лишнего, все расположено очень удобно. 222222222222222222222222222222222222222222222222', 5),
(3, 2, 'Ольга3', 'email@mail.ru', '+7 111 111 111 1', 'Не найден', '2017-11-03 00:00:00', 'http://kitchens/web/app_dev.php/', 'У меня кухня получилось то, что нужно! Полностью соответствует моим запросам! Кухня комбинированная. Ничего лишнего, все расположено очень удобно.  33333333333333333333333333333333333333333333333333333333333333', 5),
(4, 2, 'Ольга4', 'email@mail.ru', '+7 111 111 111 1', 'Не найден', '2017-11-04 00:00:00', 'http://kitchens/web/app_dev.php/', 'У меня кухня получилось то, что нужно! Полностью соответствует моим запросам! Кухня комбинированная. Ничего лишнего, все расположено очень удобно. 444444444444444444444444444444444444444444444444444444444444444444444', 5),
(5, 2, 'Антон Бабич', 'pipets1675@gmail.com', '+7 (495)123-45-678', 'Не удалось определить координаты посетителя', '2017-11-06 19:12:03', 'http://kitchens/web/app_dev.php/', '123', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `station_moscow`
--

CREATE TABLE `station_moscow` (
  `id` int(11) NOT NULL,
  `name_station` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `station_moscow`
--

INSERT INTO `station_moscow` (`id`, `name_station`, `line`, `color`) VALUES
(1, 'Московская', 'Нету', 'blue'),
(2, 'Китайская', 'Нету', 'green');

-- --------------------------------------------------------

--
-- Структура таблицы `zayavka_razmer`
--

CREATE TABLE `zayavka_razmer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `geoIP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `id_salon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `zayavka_razmer`
--

INSERT INTO `zayavka_razmer` (`id`, `name`, `phone`, `message`, `geoIP`, `url`, `created`, `id_salon`) VALUES
(1, 'йцу', 123, '123йцу', '123', '123', '2017-10-26 11:07:00', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `acl_classes`
--
ALTER TABLE `acl_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`);

--
-- Индексы таблицы `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  ADD KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  ADD KEY `IDX_46C8B806EA000B10` (`class_id`),
  ADD KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_46C8B806DF9183C9` (`security_identity_id`);

--
-- Индексы таблицы `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  ADD KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`);

--
-- Индексы таблицы `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  ADD KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_825DE299C671CEA1` (`ancestor_id`);

--
-- Индексы таблицы `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`);

--
-- Индексы таблицы `call_back`
--
ALTER TABLE `call_back`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A4FA66B1CEDB527` (`id_salon`);

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cost_project`
--
ALTER TABLE `cost_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_69DD58D11CEDB527` (`id_salon`);

--
-- Индексы таблицы `designer_at_home`
--
ALTER TABLE `designer_at_home`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_34C49F11CEDB527` (`id_salon`);

--
-- Индексы таблицы `design_project_shag`
--
ALTER TABLE `design_project_shag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CB3479201CEDB527` (`id_salon`);

--
-- Индексы таблицы `fasad_color`
--
ALTER TABLE `fasad_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1AF9B0CC3D9A13BB` (`id_kuhni_material`);

--
-- Индексы таблицы `fasad_type`
--
ALTER TABLE `fasad_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FFC9C5E73D9A13BB` (`id_kuhni_material`);

--
-- Индексы таблицы `fos_user_group`
--
ALTER TABLE `fos_user_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`);

--
-- Индексы таблицы `fos_user_user`
--
ALTER TABLE `fos_user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_C560D761C05FB297` (`confirmation_token`),
  ADD KEY `IDX_C560D7611EA60E4E` (`metro_id`);

--
-- Индексы таблицы `free_design_project`
--
ALTER TABLE `free_design_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_990552341CEDB527` (`id_salon`);

--
-- Индексы таблицы `kuhni`
--
ALTER TABLE `kuhni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FDF5E4A2C5B19B37` (`id_catalog`),
  ADD KEY `IDX_FDF5E4A224B34EED` (`id_kuhni_style`),
  ADD KEY `IDX_FDF5E4A23D9A13BB` (`id_kuhni_material`),
  ADD KEY `IDX_FDF5E4A2A7413709` (`id_kuhni_config`),
  ADD KEY `IDX_FDF5E4A27158BE6E` (`id_kuhni_color`);

--
-- Индексы таблицы `kuhni_acryl`
--
ALTER TABLE `kuhni_acryl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_color`
--
ALTER TABLE `kuhni_color`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_config`
--
ALTER TABLE `kuhni_config`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_dsp`
--
ALTER TABLE `kuhni_dsp`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_glass`
--
ALTER TABLE `kuhni_glass`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_images`
--
ALTER TABLE `kuhni_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B015D36D4B787CB8` (`kuhni_id`);

--
-- Индексы таблицы `kuhni_massive`
--
ALTER TABLE `kuhni_massive`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_material`
--
ALTER TABLE `kuhni_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FCAEBDAE7BA9B1` (`id_massive`),
  ADD KEY `IDX_FCAEBD84AA03F5` (`id_mdf`),
  ADD KEY `IDX_FCAEBD3E0B180B` (`id_plastic`),
  ADD KEY `IDX_FCAEBDF64EFE6F` (`id_glass`),
  ADD KEY `IDX_FCAEBD48EAE3CF` (`id_acryl`),
  ADD KEY `IDX_FCAEBD74D9A0B9` (`id_shpon`),
  ADD KEY `IDX_FCAEBD7A2C09BD` (`id_dsp`);

--
-- Индексы таблицы `kuhni_mdf`
--
ALTER TABLE `kuhni_mdf`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_plastic`
--
ALTER TABLE `kuhni_plastic`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_shpon`
--
ALTER TABLE `kuhni_shpon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kuhni_style`
--
ALTER TABLE `kuhni_style`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `request_call`
--
ALTER TABLE `request_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B32908C41CEDB527` (`id_salon`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6970EB0F1CEDB527` (`id_salon`);

--
-- Индексы таблицы `station_moscow`
--
ALTER TABLE `station_moscow`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zayavka_razmer`
--
ALTER TABLE `zayavka_razmer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FE3657CC1CEDB527` (`id_salon`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `acl_classes`
--
ALTER TABLE `acl_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `acl_entries`
--
ALTER TABLE `acl_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT для таблицы `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;
--
-- AUTO_INCREMENT для таблицы `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT для таблицы `call_back`
--
ALTER TABLE `call_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `cost_project`
--
ALTER TABLE `cost_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT для таблицы `designer_at_home`
--
ALTER TABLE `designer_at_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `design_project_shag`
--
ALTER TABLE `design_project_shag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `fasad_color`
--
ALTER TABLE `fasad_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT для таблицы `fasad_type`
--
ALTER TABLE `fasad_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT для таблицы `fos_user_group`
--
ALTER TABLE `fos_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `fos_user_user`
--
ALTER TABLE `fos_user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `free_design_project`
--
ALTER TABLE `free_design_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `kuhni`
--
ALTER TABLE `kuhni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT для таблицы `kuhni_acryl`
--
ALTER TABLE `kuhni_acryl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kuhni_color`
--
ALTER TABLE `kuhni_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `kuhni_config`
--
ALTER TABLE `kuhni_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `kuhni_dsp`
--
ALTER TABLE `kuhni_dsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kuhni_glass`
--
ALTER TABLE `kuhni_glass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kuhni_images`
--
ALTER TABLE `kuhni_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT для таблицы `kuhni_massive`
--
ALTER TABLE `kuhni_massive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `kuhni_material`
--
ALTER TABLE `kuhni_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `kuhni_mdf`
--
ALTER TABLE `kuhni_mdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `kuhni_plastic`
--
ALTER TABLE `kuhni_plastic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kuhni_shpon`
--
ALTER TABLE `kuhni_shpon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kuhni_style`
--
ALTER TABLE `kuhni_style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `request_call`
--
ALTER TABLE `request_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `station_moscow`
--
ALTER TABLE `station_moscow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `zayavka_razmer`
--
ALTER TABLE `zayavka_razmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Ограничения внешнего ключа таблицы `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `call_back`
--
ALTER TABLE `call_back`
  ADD CONSTRAINT `FK_5A4FA66B1CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `cost_project`
--
ALTER TABLE `cost_project`
  ADD CONSTRAINT `FK_69DD58D11CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `designer_at_home`
--
ALTER TABLE `designer_at_home`
  ADD CONSTRAINT `FK_34C49F11CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `design_project_shag`
--
ALTER TABLE `design_project_shag`
  ADD CONSTRAINT `FK_CB3479201CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `fasad_color`
--
ALTER TABLE `fasad_color`
  ADD CONSTRAINT `FK_1AF9B0CC3D9A13BB` FOREIGN KEY (`id_kuhni_material`) REFERENCES `kuhni_material` (`id`);

--
-- Ограничения внешнего ключа таблицы `fasad_type`
--
ALTER TABLE `fasad_type`
  ADD CONSTRAINT `FK_FFC9C5E73D9A13BB` FOREIGN KEY (`id_kuhni_material`) REFERENCES `kuhni_material` (`id`);

--
-- Ограничения внешнего ключа таблицы `fos_user_user`
--
ALTER TABLE `fos_user_user`
  ADD CONSTRAINT `FK_C560D7611EA60E4E` FOREIGN KEY (`metro_id`) REFERENCES `station_moscow` (`id`);

--
-- Ограничения внешнего ключа таблицы `free_design_project`
--
ALTER TABLE `free_design_project`
  ADD CONSTRAINT `FK_990552341CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `kuhni`
--
ALTER TABLE `kuhni`
  ADD CONSTRAINT `FK_FDF5E4A224B34EED` FOREIGN KEY (`id_kuhni_style`) REFERENCES `kuhni_style` (`id`),
  ADD CONSTRAINT `FK_FDF5E4A23D9A13BB` FOREIGN KEY (`id_kuhni_material`) REFERENCES `kuhni_material` (`id`),
  ADD CONSTRAINT `FK_FDF5E4A27158BE6E` FOREIGN KEY (`id_kuhni_color`) REFERENCES `kuhni_color` (`id`),
  ADD CONSTRAINT `FK_FDF5E4A2A7413709` FOREIGN KEY (`id_kuhni_config`) REFERENCES `kuhni_config` (`id`),
  ADD CONSTRAINT `FK_FDF5E4A2C5B19B37` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id`);

--
-- Ограничения внешнего ключа таблицы `kuhni_images`
--
ALTER TABLE `kuhni_images`
  ADD CONSTRAINT `FK_B015D36D4B787CB8` FOREIGN KEY (`kuhni_id`) REFERENCES `kuhni` (`id`);

--
-- Ограничения внешнего ключа таблицы `kuhni_material`
--
ALTER TABLE `kuhni_material`
  ADD CONSTRAINT `FK_FCAEBD3E0B180B` FOREIGN KEY (`id_plastic`) REFERENCES `kuhni_plastic` (`id`),
  ADD CONSTRAINT `FK_FCAEBD48EAE3CF` FOREIGN KEY (`id_acryl`) REFERENCES `kuhni_acryl` (`id`),
  ADD CONSTRAINT `FK_FCAEBD74D9A0B9` FOREIGN KEY (`id_shpon`) REFERENCES `kuhni_shpon` (`id`),
  ADD CONSTRAINT `FK_FCAEBD7A2C09BD` FOREIGN KEY (`id_dsp`) REFERENCES `kuhni_dsp` (`id`),
  ADD CONSTRAINT `FK_FCAEBD84AA03F5` FOREIGN KEY (`id_mdf`) REFERENCES `kuhni_mdf` (`id`),
  ADD CONSTRAINT `FK_FCAEBDAE7BA9B1` FOREIGN KEY (`id_massive`) REFERENCES `kuhni_massive` (`id`),
  ADD CONSTRAINT `FK_FCAEBDF64EFE6F` FOREIGN KEY (`id_glass`) REFERENCES `kuhni_glass` (`id`);

--
-- Ограничения внешнего ключа таблицы `request_call`
--
ALTER TABLE `request_call`
  ADD CONSTRAINT `FK_B32908C41CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK_6970EB0F1CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `zayavka_razmer`
--
ALTER TABLE `zayavka_razmer`
  ADD CONSTRAINT `FK_FE3657CC1CEDB527` FOREIGN KEY (`id_salon`) REFERENCES `fos_user_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
