-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2019 a las 21:51:31
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `meyro_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` varchar(10) DEFAULT NULL,
  `material` varchar(2) DEFAULT NULL,
  `descripcion_corta` varchar(20) DEFAULT NULL,
  `producto` varchar(12) DEFAULT NULL,
  `aplicacion` varchar(55) DEFAULT NULL,
  `linea` varchar(7) DEFAULT NULL,
  `marca` varchar(13) DEFAULT NULL,
  `combustible` varchar(6) DEFAULT NULL,
  `motor` varchar(34) DEFAULT NULL,
  `modelo` varchar(64) DEFAULT NULL,
  `cilindrada` int(5) DEFAULT NULL,
  `lts` varchar(4) DEFAULT NULL,
  `competicion` varchar(8) DEFAULT NULL,
  `cant_cilindros` varchar(10) DEFAULT NULL,
  `cant_valvulas` varchar(10) DEFAULT NULL,
  `unidad_o_kit` varchar(10) DEFAULT NULL,
  `cant_kit` varchar(10) DEFAULT NULL,
  `pack_venta` varchar(10) DEFAULT NULL,
  `precio_lista` varchar(10) DEFAULT NULL,
  `stock` varchar(10) DEFAULT NULL,
  `codigo_kit_motor` varchar(10) DEFAULT NULL,
  `en_promocion` varchar(10) DEFAULT NULL,
  `nuevo_lanzamiento` varchar(10) DEFAULT NULL,
  `no_comercializable` varchar(10) DEFAULT NULL,
  `img_peq_url` varchar(47) DEFAULT NULL,
  `img_gde_url` varchar(10) DEFAULT NULL,
  `pdf_catalogo` varchar(10) DEFAULT NULL,
  `AB` varchar(10) DEFAULT NULL,
  `prioridad_busquedas` varchar(10) DEFAULT NULL,
  `origen` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `material`, `descripcion_corta`, `producto`, `aplicacion`, `linea`, `marca`, `combustible`, `motor`, `modelo`, `cilindrada`, `lts`, `competicion`, `cant_cilindros`, `cant_valvulas`, `unidad_o_kit`, `cant_kit`, `pack_venta`, `precio_lista`, `stock`, `codigo_kit_motor`, `en_promocion`, `nuevo_lanzamiento`, `no_comercializable`, `img_peq_url`, `img_gde_url`, `pdf_catalogo`, `AB`, `prioridad_busquedas`, `origen`) VALUES
('01-2870 LE', 'LE', 'FORD FALCON 7 BANCAD', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2870 NA', 'NA', 'FORD FALCON 4-7 BAN.', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2870 QA', 'QA', 'FORD FALCON 4-7B.170', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2870 QB', 'QB', 'FORD FALCON 4-7B -CO', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2870 QC', 'QC', 'FORD FALCON 4-7B -CO', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2870 S', 'S', 'FORD FALCON 4-7B. 17', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2900 NA', 'NA', 'FORD FALCON F100 MAX', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2900 S', 'S', 'FORD FALCON F100 MAX', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2910 S', 'S', 'FORD TAUNUS-SIERRA 2', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2910_web', NULL, NULL, NULL, NULL, NULL),
('01-2920 QB', 'QB', 'FORD TAUNUS 2.0L 0.8', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2920 QC', 'QC', 'FORD TAUNUS 2,0L 1', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2920 QS', 'QS', 'FORD TAUNUS 2,0 -COM', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-2920 S', 'S', 'FORD TAUNUS L-GXL 20', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-3170 NA', 'NA', 'FORD FIESTA-KA 1,0 Z', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-3180 NA', 'NA', 'FORD FIESTA-KA 1,6 Z', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6173 4M', '4M', 'PEUG.106-206 1,6-8V', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Peugeot', 'Diesel', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6173_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6173 5M', '5M', 'PEUG.106-206 1,6 TU5', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Peugeot', 'Diesel', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6173_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6175 NA', 'NA', 'PEUG.206 1,6 TU5JP4', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6310 NA', 'NA', 'PEUG.106-205-405 1,1', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Peugeot', 'Nafta', 'TU1/M /MZ /K /Z Block de aluminio', 'AX11 - BX11 - C15 - ZX', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6310_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6312 NA', 'NA', 'PEUG.106-205 1,4 TU3', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Peugeot', 'Nafta', 'TU3F/ FM/ F2... Block de fundición', 'AX14 - AX GT - BX14 - ZX', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6312_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6314 NA', 'NA', 'PEUG.206-207 TU3JP-T', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Peugeot', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6520 NA', 'NA', 'REN.18-21-FUEGO 2,0-', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6520 QS', 'QS', 'REN.18-21 FUEGO 2,0-', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6520 S', 'S', 'REN.18-FUEGO-21-TRAF', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6520 SF', 'SF', 'REN.18-21 FUEGO 2,0-', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6550 NA', 'NA', 'REN.9-11-18-19-CLIO', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6550 NF', 'NF', 'REN.R5 GT TURBO 79', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6550 QC', 'QC', 'REN.R5 GT TURBO 79', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6550 S', 'S', 'REN. 9-11-12-18 TRAF', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6550 SF', 'SF', 'REN.9-11-12-18 TRAF.', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6560 1M', '1M', 'REN.TRAFIC DIES 1,7M', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6560 2M', '2M', 'REN.TRAFIC DIES 1,6M', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6560 3M', '3M', 'REN.TRAFIC DIES 1,8M', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('01-6560 4M', '4M', 'REN.18-TRAFIC DIES.', 'Juntas Meyro', 'Junta Para Tapa de Cilindros', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/01-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2860 N', 'N', 'FORD FALCON 170-187\"', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2870 HT', 'HT', 'FORD FALCON 188-221\"', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2870 N', 'N', 'FORD FALCON 188-221\"', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2880 N', 'N', 'FORD FALCON SPRINT 2', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '221” SP 6 Cil. 7 Bancadas', 'Falcon Sprint 7 Bancadas', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2880_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2900 HD', 'HD', 'FORD FALCON MAX-ECON', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2900 N', 'N', 'FORD FALCON F100 MAX', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2910 MT', 'MT', 'FORD SIERRA 2.3 -ADM', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-2920 MT', 'MT', 'FORD TAUNUS 2.0-2.3', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-3170 GS', 'GS', 'FORD KA 1,0 ZETEC-RO', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-3180 GS', 'GS', 'FORD FIESTA 1,6 ROCA', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6173 GS', 'GS', 'PEUG.106-206 TU5JP-J', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Peugeot', 'Nafta', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6173_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6175 GT', 'GT', 'PEUG.206 16V TU5JP4', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6290 MT', 'MT', 'PEUG.106-205 TU1-TU3', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6314 GT', 'GT', 'PEUG.207 1,4 TU3JP-J', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Peugeot', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6480 HI', 'HI', 'REN.4-6-12-18 1,1-1,', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Nafta', 'M - 1000', 'R4L - R4F', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6480 HT', 'HT', 'REN.4-6-12-18 1,1-1,', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Nafta', 'M - 1000', 'R4L - R4F', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6480 N', 'N', 'REN.4-6-12-18 1,1-1,', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Nafta', 'M - 1000', 'R4L - R4F', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6520 N', 'N', 'REN.18 FUEGO 2,0-2,2', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6530 HI', 'HI', 'REN.9-11-TRAFIC 1400', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Nafta', 'M - 1400 - 20/23', 'R9 - R11 - Trafic (1984/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6530_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6530 MR', 'MR', 'REN. 9-11 1400-1600', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Nafta', 'M - 1400 - 20/23', 'R9 - R11 - Trafic (1984/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6530_web.jpg', NULL, NULL, NULL, NULL, NULL),
('02-6560 N', 'N', 'RENAULT TRAF.DIESEL.', 'Juntas Meyro', 'Juntas para múltiples de admisión y escape', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/02-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-2910 N', 'N', 'FORD TAUNUS 2.0-2.3', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-3170 AI', 'AI', 'FORD FIESTA 1,0 Z.RO', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-3170 N', 'N', 'FORD KA ROCAM 1,0-8V', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-3180 AI', 'AI', 'FORD FIESTA 1,6 Z.RO', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-3180 N', 'N', 'FORD FIESTA 1,6 ROCA', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-6175 N', 'N', 'PEUG.206-PARTNER TU5', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-6290 N', 'N', 'PEUG.106-205 TU1-TU3', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-6290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-6312 N', 'N', 'PEUG.106- TU3F-TU3FM', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Peugeot', 'Nafta', 'TU3F/ FM/ F2... Block de fundición', 'AX14 - AX GT - BX14 - ZX', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-6312_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-6314 AI', 'AI', 'PEUG.106-206 1.4 TU3', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Peugeot', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-6314 N', 'N', 'PEUG.207 1,4 TU3JP-2', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Peugeot', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('03-6520 MM', 'MM', 'REN. 18-FUEGO 2-2.2', 'Juntas Meyro', 'Juntas para múltiples de escape y entre múltiples', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/03-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-0770 FU', 'FU', 'FORD FALCON 4-7 BANC', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Ford', 'Nafta', 'GM 261” - 3 3/4” 6 Cilindros', '6500 - 6700 / C-10 / C-16 / C-60', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-0770_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-0770 SM', 'SM', 'CHEV.4-7B -FORD FALC', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Chevrolet', 'Nafta', 'GM 261” - 3 3/4” 6 Cilindros', '6500 - 6700 / C-10 / C-16 / C-60', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-0770_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-2860 HN', 'HN', 'FORD FALCON 4B - IND', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-2900 FU', 'FU', 'FORD FALCON - MAX EC', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-2900 SM', 'SM', 'FORD FALCON MAX ECON', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-2910 HN', 'HN', 'F.TAUNUS 2-2,3 -OPEL', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-3180 SM', 'SM', 'FORD FIESTA ROCAM 1-', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6173 HM', 'HM', 'PEUG.106-206 1,6-8V', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Peugeot', 'Nafta', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6173_HM_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6173 SM', 'SM', 'PEUG.TU3JP-TU5JP-TU5', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Peugeot', 'Nafta', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6173_SM_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6175 HM', 'HM', 'PEUG. 206-307 1,6L-1', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6290 HN', 'HN', 'PEUG.106-205 TU1/3 1', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6290_HN_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6520 HN', 'HN', 'REN. 18TX - FUEGO 20', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6530 HN', 'HN', 'REN. 9-11-12-18 1400', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Renault', 'Nafta', 'M - 1400 - 20/23', 'R9 - R11 - Trafic (1984/)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6530_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6550 FU', 'FU', 'RENAULT 9-11-19 1400', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6550_FU_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6550 HN', 'HN', 'RENAULT 9 -ANILLO AC', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6550_HN_web.jpg', NULL, NULL, NULL, NULL, NULL),
('04-6550 SM', 'SM', 'REN.9-19-CLIO CONICA', 'Juntas Meyro', 'Juntas para salida caño de escape', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/04-6550_SM_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-2860 S', 'S', 'FORD FALCON 4B 170-1', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 2786, '2,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-2870 S', 'S', 'FORD FALCON 7B 188-2', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 3081, '3,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-2870_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-2880 S', 'S', 'FORD FALCON SPRINT 2', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', '221” SP 6 Cil. 7 Bancadas', 'Falcon Sprint 7 Bancadas', 3620, '3,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-2880_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-2900 NA', 'NA', 'FORD FALCON F100 MAX', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 3081, '3,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-2910 S', 'S', 'FORD TAUNUS-SIERRA 2', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 2299, '2,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-2920 S', 'S', 'FORD TAUNUS L-GXL 20', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 1990, '2,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-3170 NA', 'NA', 'FORD FIESTA 1.0 ZETE', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 999, '1,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-3180 NA', 'NA', 'FORD FIESTA 1,6 ZETE', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 1598, '1,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('50-5290 AG', 'AG', 'MBENZ OM447 6CIL LS1', 'Juntas Meyro', 'juego de juntas de motor con retenes', 'pesada', 'Mercedes Benz', 'Diesel', 'MBENZ OM447 6CIL LS1', 'MBENZ OM447 6CIL LS1', 11967, '12,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-5290_MBenz', NULL, NULL, NULL, NULL, NULL),
('05-6173 MV', 'MV', 'PEUG.106-206 1,6-8V', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Citriën', 'Nafta', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 1587, '1,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6173_MV_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6175 NA', 'NA', 'PEUG.206-207 TU5JP4', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Citriën', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 1587, '1,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6310 NA', 'NA', 'PEUG.205-405 1,1-1,3', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Citriën', 'Nafta', 'TU1/M /MZ /K /Z Block de aluminio', 'AX11 - BX11 - C15 - ZX', 1124, '1,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6310_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6312 NA', 'NA', 'PEUG.106-205- TU3F-T', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Citriën', 'Nafta', 'TU3F/ FM/ F2... Block de fundición', 'AX14 - AX GT - BX14 - ZX', 1360, '1,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6312_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6314 NA', 'NA', 'PEUG.106-307 TU3JP-J', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Citriën', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 1360, '1,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6520 NA', 'NA', 'REN.18-FUEGO-21-TRAF', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 1995, '2,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6520 S', 'S', 'REN.18-FUEGO-21-TRAF', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 1995, '2,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('05-6560 MV', 'MV', 'RENAULT 18-TRAFIC DI', 'Juntas Meyro', 'Juego de Juntas de Motor', 'liviana', 'Dodge', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 2068, '2,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6560_MV_web.jpg', NULL, NULL, NULL, NULL, NULL),
('50-6782 AG', 'AG', 'SCANIA DSC12 124 199', 'Juntas Meyro', 'juego de juntas de motor con retenes', 'pesada', 'Scania', 'Diesel', 'SCANIA DSC12 124 199', 'Juntas Meyro', 11700, '11,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6782_Scania', NULL, NULL, NULL, NULL, NULL),
('50-6784 AG', 'AG', 'SCANIA DSC12 124 200', 'Juntas Meyro', 'juego de juntas de motor con retenes', 'pesada', 'Scania', 'Diesel', 'SCANIA DSC12 124 200', 'Juntas Meyro', 11700, '11,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/05-6784_Scania', NULL, NULL, NULL, NULL, NULL),
('06-2860 S', 'S', 'FORD FALCON 4B 170-1', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 2068, '2,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-2870 NA', 'NA', 'FORD FALCON 7B 188-2', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 1360, '1,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2870_NA_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-2870 S', 'S', 'FORD FALCON 7B 188-2', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '188” 6 Cil. 7 Bancadas', 'Falcon - F-100 7 Bancadas (1969/) ', 3081, '3,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2870_S_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-2880 S', 'S', 'FORD FALCON SPRINT 2', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '221” SP 6 Cil. 7 Bancadas', 'Falcon Sprint 7 Bancadas', 3183, '3,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2880_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-2900 NA', 'NA', 'FORD FALCON-F100 MAX', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '188” Max - Econo 6 Cil. 7 Bancadas', 'Falcon GL / Ghia / Rural / Ranchero - F-100 7B (1989/)', 3689, '3,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2900_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-2910 S', 'S', 'FORD TAUNUS-SIERRA 2', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 4196, '4,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-2920 S', 'S', 'FORD TAUNUS L-GXL 20', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', '2.0L - OHC', 'Taunus L / GXL (1974/84)', 4702, '4,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-2920_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-3170 NA', 'NA', 'FORD FIESTA 1,0 ZETE', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 5209, '5,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-3180 NA', 'NA', 'FORD FIESTA 1,6 ZETE', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 5715, '5,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6173 MV', 'MV', 'PEUG.106 1,6-8V TU5J', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Peugeot', 'Nafta', 'TU5JP/ J2 - 8V Inyección', 'ZX - Saxo - Xsara - Picasso', 6222, '6,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6173_MV_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6175 NA', 'NA', 'PEUG.206-207 TU5JP4', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 6728, '6,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6310 NA', 'NA', 'PEUG.106-205-405 TU1', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Peugeot', 'Nafta', 'TU1/M /MZ /K /Z Block de aluminio', 'AX11 - BX11 - C15 - ZX', 7235, '7,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6310_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6312 NA', 'NA', 'PEUG.106-206 1,4 TU3', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Peugeot', 'Nafta', 'TU3F/ FM/ F2... Block de fundición', 'AX14 - AX GT - BX14 - ZX', 7741, '7,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6312_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6314 NA', 'NA', 'PEUG.106-206 1,4 TU3', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Peugeot', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 8248, '8,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6520 NA', 'NA', 'REN.18-FUEGO-MAX-21', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 8754, '8,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6520_NA_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6520 S', 'S', 'REN. R18-FUEGO 2.0-2', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 9261, '9,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6520_S_web.jpg', NULL, NULL, NULL, NULL, NULL),
('06-6560 MV', 'MV', 'REN. 18GTD-TRAFIC DI', 'Juntas Meyro', 'Juego de Descarbonización', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 9767, '9,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/06-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-2860 AX', 'AX', 'FORD FALCON 4-7 BANC', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 10274, '10,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-2860 GG', 'GG', 'FORD FALCON 4-7B 170', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 10780, '10,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-2860 GH', 'GH', 'FORD FALCON 4-7B 170', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 11287, '11,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-2910 GG', 'GG', 'FORD TAUNUS 2,0-2,3', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 11793, '11,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-2910 GH', 'GH', 'FORD TAUNUS 2,0-2,3', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 12300, '12,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-3170 GS', 'GS', 'FORD FIESTA-KA 1,6 Z', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 12806, '12,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6175 GS', 'GS', 'PEUG.206-PARTNER 16V', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 13313, '13,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6290 MM', 'MM', 'PEUG.205-405 1,1-1,3', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 13819, '13,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6312 MM', 'MM', 'PEUG.106-205 TU3F-FU', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Peugeot', 'Nafta', 'TU3F/ FM/ F2... Block de fundición', 'AX14 - AX GT - BX14 - ZX', 14326, '14,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6312_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6520 AX', 'AX', 'REN. 18-FUEGO-R21 2-', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 14832, '14,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6520 CG', 'CG', 'REN.18-FUEGO-MAX-21', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 15339, '15,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6520 CJ', 'CJ', 'REN.18-FUEGO-MAX-21', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 15845, '15,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6520 MM', 'MM', 'REN.18 FUEGO-MAX 21', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 16352, '16,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6550 AX', 'AX', 'REN.9-11-12-18-TRAFI', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 16858, '16,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6550 GG', 'GG', 'REN. 9-11-12-18 TRAF', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 17365, '17,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6550 GH', 'GH', 'REN. 9-11-12-18 TRAF', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 17871, '17,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('07-6550 MM', 'MM', 'REN. 9-11-12-18 TRAF', 'Juntas Meyro', 'Juntas para carter de aceite', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 18378, '18,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/07-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-2860 CV', 'CV', 'FORD FALCON 4-7B 170', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 18884, '18,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-2860 GP', 'GP', 'FORD FALCON 4-7 BANC', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 19391, '19,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-2910 CP', 'CP', 'FORD TAUNUS 2,0-2,3-', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 19897, '19,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-3060 GS', 'GS', 'VW SAVEIRO/GOL 1.6 -', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Volkswagen', 'Nafta', 'CHT - 1600', 'Corcel II - Belina II - Escort - Del Rey - Pampa…(1983/- Brasil)', 20404, '20,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-3060_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-3170 GS', 'GS', 'FORD FIESTA-KA 1-1,6', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 20910, '20,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-3170_web.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `articulos` (`id`, `material`, `descripcion_corta`, `producto`, `aplicacion`, `linea`, `marca`, `combustible`, `motor`, `modelo`, `cilindrada`, `lts`, `competicion`, `cant_cilindros`, `cant_valvulas`, `unidad_o_kit`, `cant_kit`, `pack_venta`, `precio_lista`, `stock`, `codigo_kit_motor`, `en_promocion`, `nuevo_lanzamiento`, `no_comercializable`, `img_peq_url`, `img_gde_url`, `pdf_catalogo`, `AB`, `prioridad_busquedas`, `origen`) VALUES
('09-6175 GS', 'GS', 'PEUG.206-PARTNER TU5', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 21417, '21,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-6290 GS', 'GS', 'PEUG.106-205-2061,1-', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 21923, '21,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-6290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('09-6560 N', 'N', 'RENAULT TRAF.DIESEL', 'Juntas Meyro', 'Juntas para tapa de válvulas lateral', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 22430, '22,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/09-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-2080 N', 'N', 'FORD FALCON 188\" - B', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Ford', 'Nafta', 'FORD FALCON 188\" - B', 'FORD FALCON 188\" - B', 22936, '22,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-2080_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-3210 MM', 'MM', 'FORD FALCON 187-188\"', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Ford', 'Nafta', 'ENDURA E 1.0L', 'Fiesta - Ka (1996/99 - Brasil)', 23443, '23,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3210_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-3480 MO', 'MO', 'FIAT 1500-125 - BASE', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Fiat', 'Nafta', 'FIAT 1500-125 - BASE', 'FIAT 1500-125 - BASE', 23949, '23,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-3480 MT', 'MT', 'FIAT 1500-125 - BASE', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Fiat', 'Nafta', 'FIAT 1500-125 - BASE', 'FIAT 1500-125 - BASE', 24456, '24,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-3680 MM', 'MM', 'CHEV.SUPER 230\" - BA', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Chevrolet', 'Nafta', 'CHEV.SUPER 230\" - BA', 'CHEV.SUPER 230\" - BA', 24962, '25,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3680_web.jp', NULL, NULL, NULL, NULL, NULL),
('12-3780 MM', 'MM', 'FORD FALCON 188-221\"', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Ford', 'Nafta', 'FORD FALCON 188-221\"', 'FORD FALCON 188-221\"', 25469, '25,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3780_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-3940 MO', 'MO', 'FIAT 128-147 1300 -', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Fiat', 'Nafta', 'FIAT 128-147 1300 -', 'FIAT 128-147 1300 -', 25975, '26,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3940_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-3940 MT', 'MT', 'FIAT 128-147 1300 -', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Fiat', 'Nafta', 'FIAT 128-147 1300 -', 'FIAT 128-147 1300 -', 26482, '26,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-3940_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-5320 MT', 'MT', 'PEUG. 405 1.6/1.9 LT', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Peugeot', 'Nafta', 'PEUG. 405 1.6/1.9 LT', 'PEUG. 405 1.6/1.9 LT', 26988, '27,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-5320_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-5330 MO', 'MO', 'PEUG. 405 1.6/1.9 LT', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Peugeot', 'Nafta', 'PEUG. 405 1.6/1.9 LT', 'PEUG. 405 1.6/1.9 LT', 27495, '27,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-5330_web.jpg', NULL, NULL, NULL, NULL, NULL),
('12-6550 MT', 'MT', 'WEBER 34 TL - PEUGEO', 'Juntas Meyro', 'Juntas de despiece carburador', 'liviana', 'Peugeot', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 28001, '28,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/12-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0076 GS', 'GS', 'PEUG.206 TU5JP4 -ANI', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', 'PEUG.206 TU5JP4 -ANI', 'PEUG.206 TU5JP4 -ANI', 28508, '28,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0076_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0077 GS', 'GS', 'PEUG.206 TU5JP4 -ORI', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', 'PEUG.206 TU5JP4 -ORI', 'PEUG.206 TU5JP4 -ORI', 29014, '29,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0077_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0090 MT', 'MT', 'RENAULT 18-21 2.0(T.', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'RENAULT 18-21 2.0(T.', 'RENAULT 18-21 2.0(T.', 29521, '29,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0090_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0111 MT', 'MT', 'FORD FIESTA 1,0 Z.RO', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'FORD FIESTA 1,0 Z.RO', 'FORD FIESTA 1,0 Z.RO', 30027, '30,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0111_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0140 GS', 'GS', 'RENAULT 18 2000-TERM', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'RENAULT 18 2000-TERM', 'RENAULT 18 2000-TERM', 30534, '30,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0140_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0161 MT', 'MT', 'PEUG.207TU3JP -CUELL', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', 'PEUG.207TU3JP -CUELL', 'PEUG.207TU3JP -CUELL', 31040, '31,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0161_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0162 GS', 'GS', 'PEUG.106-307 TU3JP -', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', 'PEUG.106-307 TU3JP -', 'PEUG.106-307 TU3JP -', 31547, '31,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0162_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0163 GS', 'GS', 'PEUG.207 TU3JP-ANILL', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', 'PEUG.207 TU3JP-ANILL', 'PEUG.207 TU3JP-ANILL', 32053, '32,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0163_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0179 GS', 'GS', 'PEUG. 206- TU5JP4 AN', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', 'PEUG. 206- TU5JP4 AN', 'PEUG. 206- TU5JP4 AN', 32560, '32,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0179_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0580 MT', 'MT', 'REN.TRAFIC DIESEL CU', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'REN.TRAFIC DIESEL CU', 'REN.TRAFIC DIESEL CU', 33066, '33,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0580_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0590 MT', 'MT', 'REN.TRAFIC DIES SALI', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Diesel', 'REN.TRAFIC DIES SALI', 'REN.TRAFIC DIES SALI', 33573, '33,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0590_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0600 MT', 'MT', 'REN.TRAFIC DIES BASE', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Diesel', 'REN.TRAFIC DIES BASE', 'REN.TRAFIC DIES BASE', 34079, '34,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0600_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0610 MT', 'MT', 'REN.TRAFIC DIES TPA.', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Diesel', 'REN.TRAFIC DIES TPA.', 'REN.TRAFIC DIES TPA.', 34586, '34,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-0610_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-1290 MT', 'MT', 'REN.18 2000 TPA.TERM', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'REN.18 2000 TPA.TERM', 'REN.18 2000 TPA.TERM', 35092, '35,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-1290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-1380 MT', 'MT', 'REN.TRAFIC DIESEL-Co', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Diesel', 'REN.TRAFIC DIESEL-Co', 'REN.TRAFIC DIESEL-Co', 35599, '35,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-1380_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-1390 GS', 'GS', 'REN.18-TRAF-DIESEL-A', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Diesel', 'REN.18-TRAF-DIESEL-A', 'REN.18-TRAF-DIESEL-A', 36105, '36,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-1390_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-0155 GS', 'GS', 'VW AMAROK 2,0 TDI -T', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Volkswagen', 'Diesel', 'VW AMAROK 2,0 TDI -T', 'VW AMAROK 2,0 TDI -T', 36612, '36,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-1550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-1880 MO', 'MO', 'REN.18-TRAFIC DIES.-', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Diesel', 'REN.18-TRAFIC DIES.-', 'REN.18-TRAFIC DIES.-', 37118, '37,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-1880_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-2050 GS', 'GS', 'PEUG. 206 DIESEL Y N', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Diesel', 'PEUG. 206 DIESEL Y N', 'PEUG. 206 DIESEL Y N', 37625, '37,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-2050_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-2070 GS', 'GS', 'PEUG. 206 Diesel y N', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Diesel', '128 A1.038', '128 L/ F/ Iava TV-1300 / Europa / Super Europa...', 38131, '38,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-2070_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-2150 GS', 'GS', 'FORD KA 1-1,6 ZETEC', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'FORD KA 1-1,6 ZETEC', 'FORD KA 1-1,6 ZETEC', 38638, '38,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-2150_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-2160 GS', 'GS', 'FORD KA-1,6 ROCAM-CA', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'FORD KA-1,6 ROCAM-CA', 'FORD KA-1,6 ROCAM-CA', 39144, '39,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-2160_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-2250 GS', 'GS', 'FORD TRANSIT ORING C', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'FORD TRANSIT ORING C', 'FORD TRANSIT ORING C', 39651, '39,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-2550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-2580 GS', 'GS', 'PEUG.106 1,6L 16V TU', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Peugeot', 'Nafta', '182 B4.000', 'Brava - Bravo - Marea - Multipla - Marengo JTD', 40157, '40,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-2580_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-3950 MT', 'MT', 'REN.9-11-12-18 1,4-1', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'REN.9-11-12-18 1,4-1', 'REN.9-11-12-18 1,4-1', 40664, '40,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-3950_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-4780 MT', 'MT', 'FORD FALCON 4-7B -CU', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'FORD FALCON 4-7B -CU', 'FORD FALCON 4-7B -CU', 41170, '41,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-4780_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-4810 MT', 'MT', 'FORD FALCON 4-7B -TE', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'FORD FALCON 4-7B -TE', 'FORD FALCON 4-7B -TE', 41677, '41,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-4810_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-5580 MO', 'MO', 'FORD TAUNUS 2-2,3 -B', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'MWM Sprint 4.07TD 12V', 'GM S10 TD - Blazer TD (2000/)', 42183, '42,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-5580_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-5590 MT', 'MT', 'FORD TAUNUS 2-2,3 -T', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Ford', 'Nafta', 'MWM SPRINT 6.07 TD', 'F - 100 4.2L TD (1999/)', 42690, '42,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-5590_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-5910 MT', 'MT', 'REN.R6-4S 1100 TPA A', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'REN.R6-4S 1100 TPA A', 'REN.R6-4S 1100 TPA A', 43196, '43,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-5910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-6330 MT', 'MT', 'REN. 18 2000 - CUERP', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'XU5M/ J/ JA...- 8V Inyección', 'BX16 / GTi - VISA GTi - ZX (Inyección)', 43703, '43,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-6330_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-6660 MT', 'MT', 'REN. 11 1,4-1,6 TPA.', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'F9Q - Iny. Directa', 'Clio II - Kangoo - Scenic DTi', 44209, '44,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-6660_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-6670 MT', 'MT', 'REN. 11 1,4-1,6 TPA.', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'K4J - 16V DOHC', 'Clio - Clio II - Megane - Scenic 1.4 16V (Europa)', 44716, '44,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-6670_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-6960 MT', 'MT', 'REN. 18 2000 - CUERP', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'Torino OHC - 233 6 Cil. 7 Bancadas', 'Torino SE/ GR/ GS/ TS/ TSX', 45222, '45,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-6960_web.jpg', NULL, NULL, NULL, NULL, NULL),
('13-6970 MT', 'MT', 'REN. 18 2000 - CUERP', 'Juntas Meyro', 'Juntas para bomba de agua', 'liviana', 'Renault', 'Nafta', 'REN. 18 2000 - CUERP', 'REN. 18 2000 - CUERP', 45729, '45,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/13-6970_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0061 GS', 'GS', 'PEUG.206 TU5JP4 -JTA', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Peugeot', 'Nafta', 'PEUG.206 TU5JP4 -JTA', 'PEUG.206 TU5JP4 -JTA', 46235, '46,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0061_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0062 GS', 'GS', 'PEUG.206 TU5JP4 -ARA', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Peugeot', 'Nafta', 'PEUG.206 TU5JP4 -ARA', 'PEUG.206 TU5JP4 -ARA', 46742, '46,7', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0062_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0063 GS', 'GS', 'REN.CLIO II K9K -ANI', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'REN.CLIO II K9K -ANI', 'REN.CLIO II K9K -ANI', 47248, '47,2', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0063_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0118 GS', 'GS', 'PEUG.207 TU3JP -BASE', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Peugeot', 'Nafta', 'PEUG.207 TU3JP -BASE', 'PEUG.207 TU3JP -BASE', 47755, '47,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0118_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0150 CG', 'CG', 'REN. 6-12 TODOS-TPA.', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'REN. 6-12 TODOS-TPA.', 'REN. 6-12 TODOS-TPA.', 48261, '48,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0150_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0600 MF', 'MF', 'FORD TAUNUS 2-2,3 -C', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'FORD TAUNUS 2-2,3 -C', 'FORD TAUNUS 2-2,3 -C', 48768, '48,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0600_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0780 MO', 'MO', 'REN.TRAFIC DIES EJE', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'GM 235¨ 3 9/16¨ 6 Cilindros', '4400 - Apache C-10 - Bel Air', 49274, '49,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0780_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-0790 MF', 'MF', 'R18 - 21 - FUEGO Naf', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'R18 - 21 - FUEGO Naf', 'R18 - 21 - FUEGO Naf', 49781, '49,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-0790_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-1400 MF', 'MF', 'REN.12 1600 -2DA.SER', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'REN.12 1600 -2DA.SER', 'REN.12 1600 -2DA.SER', 50287, '50,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-1400_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-1400 MO', 'MO', 'REN.12 1600 -2DA.SER', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'REN.12 1600 -2DA.SER', 'REN.12 1600 -2DA.SER', 50794, '50,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-1400_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-2020 MF', 'MF', 'FORD TAUNUS 2-2,3-AC', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'FORD TAUNUS 2-2,3-AC', 'FORD TAUNUS 2-2,3-AC', 51300, '51,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-2020_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-2270 MF', 'MF', 'REN.18-TRAFIC 2,0-2,', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'REN.18-TRAFIC 2,0-2,', 'REN.18-TRAFIC 2,0-2,', 51807, '51,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-2270_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-2670 MT', 'MT', 'FORD FIESTA 1,0 ROCA', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'FORD FIESTA 1,0 ROCA', 'FORD FIESTA 1,0 ROCA', 52313, '52,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-2670_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-2680 GS', 'GS', 'FORD FIESTA 1,6 ZETE', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'FORD FIESTA 1,6 ZETE', 'FORD FIESTA 1,6 ZETE', 52820, '52,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-2680_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-2690 GS', 'GS', 'FORD FIESTA 1,0 ROCA', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'FORD FIESTA 1,0 ROCA', 'FORD FIESTA 1,0 ROCA', 53326, '53,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-2690_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-2740 GS', 'GS', 'REN.18-TRAFIC DIESEL', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Renault', 'Nafta', 'REN.18-TRAFIC DIESEL', 'REN.18-TRAFIC DIESEL', 53833, '53,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-2740_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-5120 MT', 'MT', 'FORD FALCON 4-7B-CHU', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'FORD FALCON 4-7B-CHU', 'FORD FALCON 4-7B-CHU', 54339, '54,3', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-5120_web.jpg', NULL, NULL, NULL, NULL, NULL),
('14-6580 MO', 'MO', 'FORD FALCON 4-7B - B', 'Juntas Meyro', 'Juntas para bomba de aceite', 'liviana', 'Ford', 'Nafta', 'C3G - 8V (Inyección monopunto)', 'Twingo - Clio - Express', 54846, '54,8', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/14-6580_web.jpg', NULL, NULL, NULL, NULL, NULL),
('15-3170 MT', 'MT', 'FORD FIESTA 1,0 ROCA', 'Juntas Meyro', 'juntas para placa de distribución', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 55352, '55,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/15-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-2860 CG', 'CG', 'FORD FALCON 4-7B 170', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 55859, '55,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-2860 MT', 'MT', 'FORD FALCON 4-7B 170', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 56365, '56,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-2910 MT', 'MT', 'FORD TAUNUS 2,0-2,3', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 56872, '56,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-6550 AY', 'AY', 'REN. 9-11-12-18 1,6', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 57378, '57,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-6550 CG', 'CG', 'REN. 9-11-12-18 1600', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 57885, '57,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-6550 CJ', 'CJ', 'REN. 9-11-12-18 1600', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Renault', 'Nafta', 'M - 1600 (C1L / C2L 700)', 'R9 - R11 - R12 - R18 - Trafic 1.6', 58391, '58,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-6550_web.jpg', NULL, NULL, NULL, NULL, NULL),
('16-6560 GS', 'GS', 'REN.18-TRAFIC DIESEL', 'Juntas Meyro', 'Juntas para tapas de distribución', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 58898, '58,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/16-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('17-6480 MF', 'MF', 'REN. 6-9-11-12 TODOS', 'Juntas Meyro', 'juntas para distribuidores y bobinas', 'liviana', 'Renault', 'Nafta', 'M - 1000', 'R4L - R4F', 59404, '59,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/17-6480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('17-6520 GS', 'GS', 'REN.18 2.0LT O\'RING', 'Juntas Meyro', 'juntas para distribuidores y bobinas', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 59911, '59,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/17-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('19-6360 GS', 'GS', 'PEUG. 206 D. DW8 - J', 'Juntas Meyro', 'juegos de cabeceras de carter y bancadas', 'liviana', 'Peugeot', 'Nafta', 'DW8 /8B (WJZ / WJY)', 'Xsara - Berlingo - Jumpy - C15 (1998/)', 60417, '60,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/19-6360_web.jpg', NULL, NULL, NULL, NULL, NULL),
('19-6520 GS', 'GS', 'REN.18NAFTA-DIES.F8Q', 'Juntas Meyro', 'juegos de cabeceras de carter y bancadas', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 60924, '60,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/19-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-2910 MT', 'MT', 'FORD TAUNUS 2,0-2,3', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Ford', 'Nafta', '2.3L - 2.3L SP - OHC', 'Taunus GXL / Ghia / Coupe GT/ SP/ SP5', 61430, '61,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-2910_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-3720 MT', 'MT', 'TORINO OHC230-233 -', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Renault', 'Nafta', '4L-151 4 Cil. - Válvulas laterales', 'Jeep Ika - Pick Up - Bergantín', 61937, '61,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-3720_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-6175 GS', 'GS', 'PEUG.206 TU5JP4 -O`R', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 62443, '62,4', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-6312 MF', 'MF', 'PEUG.106-205 1,4 TU3', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Peugeot', 'Nafta', 'TU3F/ FM/ F2... Block de fundición', 'AX14 - AX GT - BX14 - ZX', 62950, '62,9', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-6312_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-6313 MF', 'MF', 'PEUG.106-205 1,4 TU3', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Peugeot', 'Nafta', 'PEUG.106-205 1,4 TU3', 'PEUG.106-205 1,4 TU3', 63456, '63,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-6313_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-6520 MT', 'MT', 'REN. 18-FUEGO 2,0 -', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 63963, '64,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-6540 MT', 'MT', 'RENAULT 6-9-11-12 SE', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Renault', 'Nafta', 'M - 1400 - 847', 'R12 (1982/) - R18 (Junior) - Trafic', 64469, '64,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-6540_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-6560 CU', 'CU', 'REN.TRAFIC-18 DIES-J', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Renault', 'Nafta', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 64976, '65,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('23-7160 AE', 'AE', 'VW-FIAT-REN-PEUG JGO', 'Juntas Meyro', 'juntas para bombas de nafta e inyectoras', 'liviana', 'Volkswagen', 'Nafta', 'AEY - AFN - 1Z - AE - AHU', 'Ibiza - Córdoba - Toledo (1996/)', 65482, '65,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/23-7160_web.jpg', NULL, NULL, NULL, NULL, NULL),
('24-3170 GS', 'GS', 'FORD KA ZETEC-ROCAM', 'Juntas Meyro', 'juntas para vasos de nafta, filtros de aceite o gas oil', 'liviana', 'Ford', 'Nafta', 'ZETEC ROCAM SOHC', 'Ka 1.0 (Argentina 2000/)', 65989, '66,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/24-3170_web.jpg', NULL, NULL, NULL, NULL, NULL),
('24-3180 GS', 'GS', 'FORD FIESTA-KA 1,6 -', 'Juntas Meyro', 'juntas para vasos de nafta, filtros de aceite o gas oil', 'liviana', 'Ford', 'Nafta', 'Zetec Rocam SOHC 8V', 'Fiesta - Ka - Courier 1.6L 8V (2000/)', 66495, '66,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/24-3180_web.jpg', NULL, NULL, NULL, NULL, NULL),
('24-6175 GT', 'GT', 'PEUG.206-307 TU5JP4-', 'Juntas Meyro', 'juntas para vasos de nafta, filtros de aceite o gas oil', 'liviana', 'Peugeot', 'Nafta', 'TU5JP4 - 16V Inyección', 'Berlingo - Xsara / Picasso 16V (2000/)', 67002, '67,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/24-6175_web.jpg', NULL, NULL, NULL, NULL, NULL),
('24-6314 GS', 'GS', 'PEUG.106-206 TU3JP G', 'Juntas Meyro', 'juntas para vasos de nafta, filtros de aceite o gas oil', 'liviana', 'Peugeot', 'Nafta', 'TU3JP/ J2... Block de aluminio', 'Berlingo (1997/) Inyección 8V', 67508, '67,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/24-6314_web.jpg', NULL, NULL, NULL, NULL, NULL),
('24-6315 GS', 'GS', 'PEUG.207 TU3JP -GUAR', 'Juntas Meyro', 'juntas para vasos de nafta, filtros de aceite o gas oil', 'liviana', 'Peugeot', 'Nafta', 'PEUG.207 TU3JP -GUAR', 'PEUG.207 TU3JP -GUAR', 68015, '68,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/24-6315_web.jpg', NULL, NULL, NULL, NULL, NULL),
('34-6290 GT', 'GT', 'PEUG.106-205 1,1-1,3', 'Juntas Meyro', 'juegos de suplementos de camisa de cilindros', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 68521, '68,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/34-6290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('34-6500 GT', 'GT', 'REN.9-11-12-18 1,4/1', 'Juntas Meyro', 'juegos de suplementos de camisa de cilindros', 'liviana', 'Renault', 'Nafta', 'M - 1400 (Tipo 847)', 'R6 GTL - R12/ Break (1976/82)', 69028, '69,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/34-6500_web.jpg', NULL, NULL, NULL, NULL, NULL),
('34-6520 GT', 'GT', 'REN. 18-21 2,0-2,2 -', 'Juntas Meyro', 'juegos de suplementos de camisa de cilindros', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 69534, '69,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/34-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('34-6560 GT', 'GT', 'RENAULT TRAFIC DIESE', 'Juntas Meyro', 'juegos de suplementos de camisa de cilindros', 'liviana', 'Renault', 'Diesel', '121 (J8S)', 'Jeep Wagoneer TD - Jeep Comanche TD', 70041, '70,0', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/34-6560_web.jpg', NULL, NULL, NULL, NULL, NULL),
('35-2860 SN', 'SN', 'FORD FALCON 4-7B - J', 'Juntas Meyro', 'juegos de bancadas de cigüeñal', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 70547, '70,5', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/35-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('36-2860 MT', 'MT', 'FORD FALCON -PRECALE', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Ford', 'Nafta', '170” 6 Cil. 4 Bancadas', 'Falcon 4 Bancadas (1962)', 71054, '71,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/36-2860_web.jpg', NULL, NULL, NULL, NULL, NULL),
('36-6230 CA', 'CA', 'PEUG.504 1.8/2-CITRO', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Peugeot', 'Nafta', 'XM7 - XM7A', '504 XE / XSE / XL / GL...', 71560, '71,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/36-6230_web.jpg', NULL, NULL, NULL, NULL, NULL),
('36-6290 GS', 'GS', 'PEUG.106-205 1,1-1,3', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Peugeot', 'Nafta', 'XUD7T-TE (Turbodiesel)', 'BX TD (1988/94)', 72067, '72,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/36-6290_web.jpg', NULL, NULL, NULL, NULL, NULL),
('36-6480 GS', 'GS', 'REN.6-9-11-12 JGOS.A', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Renault', 'Nafta', 'M - 1000', 'R4L - R4F', 72573, '72,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/36-6480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('36-6480 N', 'N', 'REN. 6-12 -JGO A.SEL', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Renault', 'Nafta', 'M - 1000', 'R4L - R4F', 73080, '73,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/36-6480_web.jpg', NULL, NULL, NULL, NULL, NULL),
('36-6520 N', 'N', 'REN.18 2,0 -JGO.AR.S', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 73586, '73,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/36-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('38-6520 GS', 'GS', 'REN.18 ANILLO DISTR.', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Renault', 'Nafta', 'M - 2000 (829)', 'R18 / Break - Coupe Fuego', 74093, '74,1', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/38-6520_web.jpg', NULL, NULL, NULL, NULL, NULL),
('40-6190 CA', 'CA', 'PEUG.404-504-505 ARA', 'Juntas Meyro', 'Juntas varias', 'liviana', 'Peugeot', 'Nafta', 'XC6 - XC7', '404 L / SL / GP - Pick Up T4B', 74599, '74,6', 'standard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '../../../../../assets/juntas/40-6190_web.jpg', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `cuit` varchar(15) COLLATE utf32_spanish2_ci NOT NULL,
  `razonSocial` varchar(70) COLLATE utf32_spanish2_ci NOT NULL,
  `comprador` varchar(30) COLLATE utf32_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf32_spanish2_ci NOT NULL,
  `clave` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `estado` varchar(15) COLLATE utf32_spanish2_ci NOT NULL DEFAULT 'deshabilitado',
  `coeficiente_dtos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `cuit`, `razonSocial`, `comprador`, `email`, `clave`, `estado`, `coeficiente_dtos`) VALUES
('22-222', '22-22222222-2', '22 s.a.', 'daniel', 'ventas@juntasmeyro.com.ar', '2222', 'deshabilitado', NULL),
('22-224', '22-22222222-2', '22 s.a.', 'daniel', 'ventas@juntasmeyro.com.ar', '2222', 'deshabilitado', NULL),
('33-333', '33', '33 S.A.', 'FRAN', 'V', '3333', 'deshabilitado', NULL),
('40-001', '30653455603', 'Junar s.a.', 'daniel', 'danieldebrito@juntasmeyro.com.ar', '123456', 'deshabilitado', NULL),
('40-012', '30653455603', 'Dani de Brito', 'Augustus Pablo', 'meyrodtocompras@gmail.com', '123456', 'habilitado', NULL),
('55-555', '55-55555555-5', '5555555555555555 5.5.', '55-555', '55555555555@555555.555', '55555', 'deshabilitado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_sucursales`
--

CREATE TABLE `cliente_sucursales` (
  `id_sucursal` int(10) NOT NULL,
  `id_cliente` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `nombre_sucursal` varchar(30) COLLATE utf32_spanish2_ci NOT NULL,
  `calle` varchar(50) COLLATE utf32_spanish2_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `cp` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf32_spanish2_ci NOT NULL,
  `provincia` varchar(30) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente_sucursales`
--

INSERT INTO `cliente_sucursales` (`id_sucursal`, `id_cliente`, `nombre_sucursal`, `calle`, `numero`, `cp`, `localidad`, `provincia`) VALUES
(1, '40-050', 'norte', 'san martin', 1345, '1825', 'zarate', 'bs as'),
(2, '40-103', 'casa central', 'costa rica', 1459, '1832', 'san martin', 'bs as'),
(3, '40-001', 'bahia blanca', 'jose ingenieros', 4554, '2545', 'bahia blanca', 'bs as'),
(4, '40-001', 'mendoza', 'garay', 545, '2000', 'mendoza', 'mendoza'),
(6, '40-050', 'norte', 'san martin', 1345, '1825', 'zarate', 'bs as');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expresos`
--

CREATE TABLE `expresos` (
  `id_expreso` int(11) NOT NULL,
  `nombre` varchar(70) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `expresos`
--

INSERT INTO `expresos` (`id_expreso`, `nombre`) VALUES
(1, 'La Sevillanita'),
(2, 'crucero del norte'),
(3, 'credifin'),
(4, 'chevallier'),
(5, 'la veloz del norte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_expreso` int(11) NOT NULL,
  `estado` varchar(10) COLLATE utf32_spanish2_ci NOT NULL DEFAULT 'abierto',
  `fecha` date NOT NULL,
  `observaciones` varchar(500) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `id_sucursal`, `id_expreso`, `estado`, `fecha`, `observaciones`) VALUES
(22, '40-012', 0, 22, 'cerrado', '2019-01-09', 'entregar urgente'),
(27, '40-222', 2, 3, 'abierto', '2019-04-01', 'entregar por la mañana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_detalle`
--

CREATE TABLE `pedidos_detalle` (
  `id_pedido` int(11) NOT NULL,
  `id_articulo` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `pedidos_detalle`
--

INSERT INTO `pedidos_detalle` (`id_pedido`, `id_articulo`, `cantidad`) VALUES
(1, '01-2000 S', 32),
(1, '01-2100 S', 16),
(1, '01-2100 S', 16),
(1, '01-2100 S', 16),
(1, '01-2100 S', 16),
(2, '01-2100 S', 20),
(2, '01-2100 S', 20),
(3, '12-1510 MT', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idUsuario` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf32_spanish2_ci NOT NULL,
  `email` varchar(40) COLLATE utf32_spanish2_ci NOT NULL,
  `clave` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `estado` varchar(10) COLLATE utf32_spanish2_ci NOT NULL,
  `rol` varchar(10) COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idUsuario`, `nombre`, `email`, `clave`, `estado`, `rol`) VALUES
('0000', 'test name', 'test mail', 'test clave', 'test estad', 'test rol'),
('0001', 'test name', 'test mail', 'test clave', 'test estad', 'test rol'),
('0003', 'test name', 'test mail', 'test clave', 'test estad', 'test rol'),
('1343', 'jacevedo', '', '1343', '', 'user'),
('1388', 'ddebrito', 'danieldebrito@juntasmeyro.com.ar', '1388', '', 'admin'),
('1521', 'masanchez', 'ventas@juntasmeyro.com.ar', '1521', '', 'user'),
('9999', 'memartin', 'memartin@juntasmeyro.com.ar', '9999', '', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente_sucursales`
--
ALTER TABLE `cliente_sucursales`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `expresos`
--
ALTER TABLE `expresos`
  ADD PRIMARY KEY (`id_expreso`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_expreso` (`id_expreso`);

--
-- Indices de la tabla `pedidos_detalle`
--
ALTER TABLE `pedidos_detalle`
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_articulo` (`id_articulo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente_sucursales`
--
ALTER TABLE `cliente_sucursales`
  MODIFY `id_sucursal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `expresos`
--
ALTER TABLE `expresos`
  MODIFY `id_expreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
