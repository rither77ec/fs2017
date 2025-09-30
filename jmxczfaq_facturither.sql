-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-09-2025 a las 11:28:48
-- Versión del servidor: 11.4.8-MariaDB-cll-lve-log
-- Versión de PHP: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jmxczfaq_facturither`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenciastrans`
--

CREATE TABLE `agenciastrans` (
  `codtrans` varchar(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes`
--

CREATE TABLE `agentes` (
  `apellidos` varchar(200) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `codagente` varchar(10) NOT NULL,
  `coddepartamento` varchar(6) DEFAULT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `dnicif` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `idusuario` varchar(30) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombreap` varchar(150) DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `seg_social` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `banco` varchar(34) DEFAULT NULL,
  `f_alta` date DEFAULT NULL,
  `f_baja` date DEFAULT NULL,
  `f_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `agentes`
--

INSERT INTO `agentes` (`apellidos`, `ciudad`, `codagente`, `coddepartamento`, `codpais`, `codpostal`, `direccion`, `dnicif`, `email`, `fax`, `idprovincia`, `idusuario`, `irpf`, `nombre`, `nombreap`, `porcomision`, `provincia`, `telefono`, `seg_social`, `cargo`, `banco`, `f_alta`, `f_baja`, `f_nacimiento`) VALUES
('Pepe', NULL, '1', NULL, NULL, NULL, NULL, '00000014Z', NULL, NULL, NULL, NULL, NULL, 'Paco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Demo', '', '2', NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, 'Usuario', NULL, 0, '', '', '', '', '', '2017-09-12', NULL, '2017-09-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albaranescli`
--

CREATE TABLE `albaranescli` (
  `apartado` varchar(10) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `codcliente` varchar(6) DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `codpago` varchar(10) NOT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `femail` date DEFAULT NULL,
  `idalbaran` int(11) NOT NULL,
  `idfactura` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT 0,
  `neto` double NOT NULL DEFAULT 0,
  `nombrecliente` varchar(100) DEFAULT NULL,
  `numero` varchar(12) NOT NULL,
  `numero2` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `ptefactura` tinyint(1) NOT NULL DEFAULT 1,
  `recfinanciero` double NOT NULL DEFAULT 0,
  `tasaconv` double NOT NULL DEFAULT 1,
  `total` double NOT NULL DEFAULT 0,
  `totaleuros` double NOT NULL DEFAULT 0,
  `totalirpf` double NOT NULL DEFAULT 0,
  `totaliva` double NOT NULL DEFAULT 0,
  `totalrecargo` double NOT NULL DEFAULT 0,
  `codtrans` varchar(8) DEFAULT NULL,
  `codigoenv` varchar(200) DEFAULT NULL,
  `nombreenv` varchar(200) DEFAULT NULL,
  `apellidosenv` varchar(200) DEFAULT NULL,
  `direccionenv` varchar(100) DEFAULT NULL,
  `codpostalenv` varchar(10) DEFAULT NULL,
  `ciudadenv` varchar(100) DEFAULT NULL,
  `provinciaenv` varchar(100) DEFAULT NULL,
  `apartadoenv` varchar(10) DEFAULT NULL,
  `codpaisenv` varchar(20) DEFAULT NULL,
  `numdocs` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albaranesprov`
--

CREATE TABLE `albaranesprov` (
  `cifnif` varchar(30) NOT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `codpago` varchar(10) DEFAULT NULL,
  `codproveedor` varchar(6) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idalbaran` int(11) NOT NULL,
  `idfactura` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT 0,
  `neto` double NOT NULL DEFAULT 0,
  `nombre` varchar(100) NOT NULL,
  `numero` varchar(12) NOT NULL,
  `numproveedor` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `ptefactura` tinyint(1) NOT NULL DEFAULT 1,
  `recfinanciero` double NOT NULL DEFAULT 0,
  `tasaconv` double NOT NULL DEFAULT 1,
  `total` double NOT NULL DEFAULT 0,
  `totaleuros` double NOT NULL DEFAULT 0,
  `totalirpf` double NOT NULL DEFAULT 0,
  `totaliva` double NOT NULL DEFAULT 0,
  `totalrecargo` double NOT NULL DEFAULT 0,
  `numdocs` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `apartado` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) NOT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `observaciones` text DEFAULT NULL,
  `poblacion` varchar(100) DEFAULT NULL,
  `porpvp` double DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `tipovaloracion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`apartado`, `codalmacen`, `codpais`, `codpostal`, `contacto`, `direccion`, `fax`, `idprovincia`, `nombre`, `observaciones`, `poblacion`, `porpvp`, `provincia`, `telefono`, `tipovaloracion`) VALUES
(NULL, 'ALG', NULL, '', '', '', '', NULL, 'ALMACEN GENERAL', NULL, '', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `factualizado` date DEFAULT NULL,
  `bloqueado` tinyint(1) DEFAULT 0,
  `equivalencia` varchar(25) DEFAULT NULL,
  `idsubcuentairpfcom` int(11) DEFAULT NULL,
  `idsubcuentacom` int(11) DEFAULT NULL,
  `stockmin` double DEFAULT 0,
  `observaciones` text DEFAULT NULL,
  `codbarras` varchar(18) DEFAULT NULL,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `stockfis` double DEFAULT 0,
  `stockmax` double DEFAULT 0,
  `costemedio` double DEFAULT 0,
  `preciocoste` double DEFAULT 0,
  `tipocodbarras` varchar(8) DEFAULT 'Code39',
  `nostock` tinyint(1) DEFAULT 0,
  `codsubcuentacom` varchar(15) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `codsubcuentairpfcom` varchar(15) DEFAULT NULL,
  `secompra` tinyint(1) DEFAULT 1,
  `codfamilia` varchar(8) DEFAULT NULL,
  `codfabricante` varchar(8) DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `controlstock` tinyint(1) DEFAULT 0,
  `referencia` varchar(18) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `pvp` double DEFAULT 0,
  `sevende` tinyint(1) DEFAULT 1,
  `publico` tinyint(1) DEFAULT 0,
  `partnumber` varchar(38) DEFAULT NULL,
  `trazabilidad` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`factualizado`, `bloqueado`, `equivalencia`, `idsubcuentairpfcom`, `idsubcuentacom`, `stockmin`, `observaciones`, `codbarras`, `codimpuesto`, `stockfis`, `stockmax`, `costemedio`, `preciocoste`, `tipocodbarras`, `nostock`, `codsubcuentacom`, `descripcion`, `codsubcuentairpfcom`, `secompra`, `codfamilia`, `codfabricante`, `imagen`, `controlstock`, `referencia`, `tipo`, `pvp`, `sevende`, `publico`, `partnumber`, `trazabilidad`) VALUES
('2024-03-26', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'MIGRACIÓN + MANTENIMIENTO + LICENCIAS + ANTIVIRUS', NULL, 1, NULL, NULL, NULL, 1, '0001', NULL, 60, 1, 0, '', 0),
('2024-04-01', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Plan Premium Redes Sociales', NULL, 1, NULL, NULL, NULL, 1, '0002', NULL, 180, 1, 0, '', 0),
('2024-04-01', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Plan Especial Tiktok internacional', NULL, 1, NULL, NULL, NULL, 1, '0003', NULL, 250, 1, 0, '', 0),
('2024-04-15', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Plataforma LMS Básico (Hosting + Dominio + 20Gb Storage)', NULL, 1, NULL, NULL, NULL, 1, '0004', NULL, 550, 1, 0, '', 0),
('2024-04-18', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Mantenimiento y Reparación Impresora Epson A3', NULL, 1, NULL, NULL, NULL, 1, '0005', NULL, 170, 1, 0, '', 0),
('2024-04-18', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Licencia Office Plus + Revisión técnica PC', NULL, 1, NULL, NULL, NULL, 1, '0006', NULL, 35, 1, 0, NULL, 0),
('2024-04-19', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Mouse Marvo USB Black', NULL, 1, NULL, NULL, NULL, 1, '0007', NULL, 9, 1, 0, '', 0),
('2024-04-19', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'HD Externo Adata G-Shot 1Tera', NULL, 1, NULL, NULL, NULL, 1, '0008', NULL, 98, 1, 0, '', 0),
('2024-04-19', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'HD Externo Adata G-Shot 2Teras', NULL, 1, NULL, NULL, NULL, 1, '0009', NULL, 127, 1, 0, '', 0),
('2024-04-19', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'UPS Quasad 500VA', NULL, 1, NULL, NULL, NULL, 1, '0010', NULL, 70, 1, 0, '', 0),
('2024-04-20', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'LICENCIA ACAD 2024 INDIVIDUAL', NULL, 1, NULL, NULL, NULL, 1, '0011', NULL, 59.99, 1, 0, '', 0),
('2024-04-29', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'RENOVACIÓN ANTICIPADA PLAN STELLAR BUSINESS + DOMINIO DISIBIS.COM', NULL, 1, NULL, NULL, NULL, 1, '0012', NULL, 276.87, 1, 0, '', 0),
('2024-05-04', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'RENOVACIÓN PLAN STELLAR + DOMINIO IKES.COM.EC', NULL, 1, NULL, NULL, NULL, 1, '0013', NULL, 128.75, 1, 0, '', 0),
('2024-05-09', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Tinta Moorin 554', NULL, 1, NULL, NULL, NULL, 1, '0014', NULL, 8, 1, 0, '', 0),
('2024-05-20', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Licencia Office 2021 Plus', NULL, 1, NULL, NULL, NULL, 1, '0017', NULL, 16.92, 1, 0, NULL, 0),
('2024-06-03', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Renovación Plan Stellar Premium Turnos Broom Ecuador + Domain + Security SSL', NULL, 1, NULL, NULL, NULL, 1, '0018', NULL, 345, 1, 0, NULL, 0),
('2024-06-12', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Plan Básico Redes Sociales', NULL, 1, NULL, NULL, NULL, 1, '0019', NULL, 135, 1, 0, NULL, 0),
('2024-06-20', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'RENOVACIÓN SISTEMA CONTABLE', NULL, 1, NULL, NULL, NULL, 1, '0020', NULL, 150, 1, 0, '', 0),
('2024-08-07', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Dominio .com . info .net', NULL, 1, NULL, NULL, NULL, 1, '0021', NULL, 15, 1, 0, '', 0),
('2024-08-07', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Hosting Stellar Básico', NULL, 1, NULL, NULL, NULL, 1, '0022', NULL, 74, 1, 0, '', 0),
('2024-09-06', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Manual de Marca Corporativo', NULL, 1, NULL, NULL, NULL, 1, '0023', NULL, 175, 1, 0, '', 0),
('2024-05-17', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Dell Optiplex Core i5 6500 8va gen, 8GB ram DDR4, USB 3.0, HDMI, VGA, Display Port, RJ45,, RS232', NULL, 1, NULL, NULL, NULL, 1, '15', NULL, 292.4, 1, 0, NULL, 0),
('2024-05-20', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Soporte Técnico', NULL, 1, NULL, NULL, NULL, 1, '16', NULL, 15, 1, 0, '', 0),
('2024-11-01', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Server Multithreading  - Linux Operating System -  Administration interface konsoleH - 1 IP address - DDoS protection - Free phone support - Free email support 24/7 on-site service in our data centers - 30.9 TBit total bandwidth-  Redundant network High-speed access to all Internet uplinks Network availability min. 99.9% - Operating system updates - Software updates - Comprehensive security concept -  Comprehensive system integrity checks - Nameserver administration as well as synchronization concept - Escalation concept - Daily backup - Spam filter - Virus filter - SSH access -  Juniper Backbone Technology - 1 Gbit/s Gigabit-Ethernet-Uplink to Switch - SSL Manager - SSL encryption (https) Symantec Basic - SSL Certificate, duration 1 year', NULL, 1, NULL, NULL, NULL, 1, '24', NULL, 2400, 1, 0, '', 0),
('2024-11-13', 0, NULL, NULL, NULL, 0, '', '', 'EC14', 0, 0, 0, 0, 'Code39', 1, NULL, 'Almohadilla serie WF', NULL, 1, NULL, NULL, NULL, 1, '25', NULL, 20, 1, 0, '', 0),
('2024-11-13', 0, NULL, NULL, NULL, 0, '', '', 'EC14', 0, 0, 0, 0, 'Code39', 1, NULL, 'Dumper serie WF', NULL, 1, NULL, NULL, NULL, 1, '26', NULL, 15, 1, 0, '', 0),
('2024-11-13', 0, NULL, NULL, NULL, 0, '', '', 'EC14', 0, 0, 0, 0, 'Code39', 1, NULL, 'SSD 512GB TechPRO', NULL, 1, NULL, NULL, NULL, 1, '27', NULL, 49, 1, 0, NULL, 0),
('2024-11-13', 0, NULL, NULL, NULL, 0, '', '', 'EC14', 0, 0, 0, 0, 'Code39', 1, NULL, 'Mouse MARVO MS003', NULL, 1, NULL, NULL, NULL, 1, '28', NULL, 8.5, 1, 0, '', 0),
('2024-12-03', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Chip SC v4 Serie WF', NULL, 1, NULL, NULL, NULL, 1, '29', NULL, 25, 1, 0, '', 0),
('2024-12-03', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Reprogramación Placa Epson', NULL, 1, NULL, NULL, NULL, 1, '30', NULL, 20, 1, 0, '', 0),
('2024-12-09', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'RENOVACIÓN HOSTING STELLAR PLUS + DOMINIO (PUBLICMENDEZ.COM)', NULL, 1, NULL, NULL, NULL, 1, '31', NULL, 94.76, 1, 0, '', 0),
('2024-12-09', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'RENOVACIÓN PLAN STELLAR PLUS + TALLERELECTROVOLKSWAGEN.COM.EC', NULL, 1, NULL, NULL, NULL, 1, '32', NULL, 176, 1, 0, '', 0),
('2024-12-09', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Disco SSD 1 TB Dextor v2', NULL, 1, NULL, NULL, NULL, 1, '33', NULL, 95, 1, 0, '', 0),
('2025-01-14', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'DISPLAY TOUCH DELL AIO 5400', NULL, 1, NULL, NULL, NULL, 1, '34', NULL, 269.99, 1, 0, '', 0),
('2025-02-16', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Mes de Arriendo de un departamento ubicado en Alborada 13ava etapa Mz 6 V 15', NULL, 1, NULL, NULL, NULL, 1, '35', NULL, 320, 1, 0, '', 0),
('2025-03-06', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'PLAN STELLAR LMS + DOMAIN APPROJECT.COM.EC + SSL', NULL, 1, NULL, NULL, NULL, 1, '36', NULL, 430, 1, 0, '', 0),
('2025-03-17', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'LENOVO THINKPAD i7 9850 4.6Ghz 32GB DDR4 512Gb M2 DEDICADA NVIDIA QUADRO 4GB', NULL, 1, NULL, NULL, NULL, 1, '37', NULL, 920, 1, 0, '', 0),
('2025-03-21', 0, NULL, NULL, NULL, 0, '', '', 'EC0', 0, 0, 0, 0, 'Code39', 1, NULL, 'Plan Emprendedor Redes Sociales  (4 post personalizados semanales)', NULL, 1, NULL, NULL, NULL, 1, '38', NULL, 250, 1, 0, '', 0),
('2025-05-29', 0, NULL, NULL, NULL, 0, '', '', 'EC14', 0, 0, 0, 0, 'Code39', 1, NULL, 'PLAN CORREOS CORPORATIVOS ANUAL', NULL, 1, NULL, NULL, NULL, 1, '39', NULL, 40, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulosprov`
--

CREATE TABLE `articulosprov` (
  `id` int(11) NOT NULL,
  `referencia` varchar(18) DEFAULT NULL,
  `codproveedor` varchar(6) NOT NULL,
  `refproveedor` varchar(25) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` double DEFAULT 0,
  `dto` double DEFAULT 0,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `stock` double DEFAULT 0,
  `nostock` tinyint(1) DEFAULT 1,
  `nombre` varchar(100) DEFAULT NULL,
  `coddivisa` varchar(3) DEFAULT NULL,
  `codbarras` varchar(18) DEFAULT NULL,
  `partnumber` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_propiedades`
--

CREATE TABLE `articulo_propiedades` (
  `name` varchar(50) NOT NULL,
  `referencia` varchar(18) NOT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_trazas`
--

CREATE TABLE `articulo_trazas` (
  `id` int(11) NOT NULL,
  `referencia` varchar(18) NOT NULL,
  `numserie` varchar(50) DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `idlalbventa` int(11) DEFAULT NULL,
  `idlfacventa` int(11) DEFAULT NULL,
  `idlalbcompra` int(11) DEFAULT NULL,
  `idlfaccompra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos`
--

CREATE TABLE `atributos` (
  `codatributo` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `fs_id` int(11) NOT NULL,
  `codagente` varchar(10) NOT NULL,
  `f_inicio` timestamp NOT NULL DEFAULT '2017-08-30 05:00:00',
  `d_inicio` double NOT NULL DEFAULT 0,
  `f_fin` timestamp NULL DEFAULT NULL,
  `d_fin` double DEFAULT NULL,
  `tickets` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas_terminales`
--

CREATE TABLE `cajas_terminales` (
  `id` int(11) NOT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `codcliente` varchar(6) DEFAULT NULL,
  `tickets` text DEFAULT NULL,
  `anchopapel` int(11) DEFAULT NULL,
  `comandocorte` varchar(50) DEFAULT NULL,
  `comandoapertura` varchar(50) DEFAULT NULL,
  `num_tickets` int(11) DEFAULT NULL,
  `sin_comandos` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `capitalimpagado` double DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codcliente` varchar(6) NOT NULL,
  `codcontacto` varchar(6) DEFAULT NULL,
  `codcuentadom` varchar(6) DEFAULT NULL,
  `codcuentarem` varchar(6) DEFAULT NULL,
  `coddivisa` varchar(3) DEFAULT NULL,
  `codedi` varchar(17) DEFAULT NULL,
  `codgrupo` varchar(6) DEFAULT NULL,
  `codpago` varchar(10) DEFAULT NULL,
  `codserie` varchar(2) DEFAULT NULL,
  `codsubcuenta` varchar(15) DEFAULT NULL,
  `codtiporappel` varchar(10) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `copiasfactura` int(11) DEFAULT NULL,
  `debaja` tinyint(1) DEFAULT 0,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaincluido` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `razonsocial` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `recargo` tinyint(1) DEFAULT NULL,
  `regimeniva` varchar(20) DEFAULT NULL,
  `riesgoalcanzado` double DEFAULT NULL,
  `riesgomax` double DEFAULT NULL,
  `telefono1` varchar(30) DEFAULT NULL,
  `telefono2` varchar(30) DEFAULT NULL,
  `tipoidfiscal` varchar(25) NOT NULL DEFAULT 'NIF',
  `personafisica` tinyint(1) DEFAULT 1,
  `web` varchar(250) DEFAULT NULL,
  `diaspago` varchar(10) DEFAULT NULL,
  `codproveedor` varchar(6) DEFAULT NULL,
  `codtarifa` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`capitalimpagado`, `cifnif`, `codagente`, `codcliente`, `codcontacto`, `codcuentadom`, `codcuentarem`, `coddivisa`, `codedi`, `codgrupo`, `codpago`, `codserie`, `codsubcuenta`, `codtiporappel`, `contacto`, `copiasfactura`, `debaja`, `email`, `fax`, `fechabaja`, `fechaalta`, `idsubcuenta`, `ivaincluido`, `nombre`, `razonsocial`, `observaciones`, `recargo`, `regimeniva`, `riesgoalcanzado`, `riesgomax`, `telefono1`, `telefono2`, `tipoidfiscal`, `personafisica`, `web`, `diaspago`, `codproveedor`, `codtarifa`) VALUES
(NULL, '0922723978', NULL, '000001', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-03-26', NULL, NULL, 'Sara Pozo', 'Sara Pozo', '', 0, 'General', NULL, NULL, '', '', 'Cedula/R.U.C.', 1, '', NULL, NULL, NULL),
(NULL, '0993371810001', NULL, '000002', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-04-01', NULL, NULL, 'IKES S.A.', 'IKES S.A.', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '1755798392001', NULL, '000003', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'china.wang@msn.com', '', NULL, '2024-04-01', NULL, NULL, 'WANG ZHOUFU', 'WANG ZHOUFU', '', 0, 'General', NULL, NULL, '+593 98 036 6665', '', 'R.U.C', 1, 'www.ecuarticulos.com', NULL, NULL, NULL),
(NULL, '0910965649', NULL, '000004', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'pedro_conforme@hotmail.com', '', NULL, '2024-04-08', NULL, NULL, 'Pedro Eladio Conforme Pincay', 'Pedro Eladio Conforme Pincay', '', 0, 'General', NULL, NULL, '0999555636', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0917733867001', NULL, '000005', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'rosyhlee@hotmail.com', '', NULL, '2024-04-15', NULL, NULL, 'Jesús del Rocío Holguín Macias', 'Jesús del Rocío Holguín Macías', '', 0, 'General', NULL, NULL, '042567555', '+593992258250', 'R.U.C', 1, 'www.fastconsulting.com.ec', NULL, NULL, NULL),
(NULL, '0992829575001', NULL, '000006', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'dzavala@ingehisa.com.ec', '', NULL, '2024-04-18', NULL, NULL, 'INGEHISA CIA LTDA', 'INGEHISA CIA LTDA', '', 0, 'General', NULL, NULL, '042148744', '', 'R.U.C', 0, 'www.ingehisa.com.ec', NULL, NULL, NULL),
(NULL, '0993123331001', NULL, '000007', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-04-29', NULL, NULL, 'DISIBIS S.A.', 'DISIBIS S.A.', '', 0, 'General', NULL, NULL, '+593994984569', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '0926160052', NULL, '000008', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-05-08', NULL, NULL, 'Karen Carriel', 'Karen Carriel', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0992942371001', NULL, '000009', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'contabilidad@tcplumesal.com', '', NULL, '2024-05-09', NULL, NULL, 'TCPLUMESAL S. A.', 'TCPLUMESAL S. A.', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '0953463155', NULL, '000010', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'alvaradomichi808@gmail.com', '', NULL, '2024-05-13', NULL, NULL, 'Michelle Arreaga', 'Michelle Arreaga', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0919608802', NULL, '000011', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'b_rney@hotmail.com', '', NULL, '2024-05-17', NULL, NULL, 'Oscar Quiñonez', 'Oscar Quiñonez', '', 0, 'General', NULL, NULL, '0939124097', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0992385502001', NULL, '000012', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-06-03', NULL, NULL, 'Broom Ecuador S.A.', 'Broom Ecuador S.A.', '', 0, 'General', NULL, NULL, '043711630', '', 'R.U.C', 0, 'www.broomecuador.com', NULL, NULL, NULL),
(NULL, '1720831880001', NULL, '000013', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'mushusto@gmail.com', '', NULL, '2024-06-12', NULL, NULL, 'Digna Carolina Pazmiño Echanique', 'Digna Carolina Pazmiño Echanique', '', 0, 'General', NULL, NULL, '0990780554', '', 'R.U.C', 1, '', NULL, NULL, NULL),
(NULL, '0912303229', NULL, '000014', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'caty-quevedo@hotmail.com', '', NULL, '2024-06-20', NULL, NULL, 'Caty Quevedo', 'Caty Quevedo', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '2390634938001', NULL, '000015', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-07-02', NULL, NULL, 'DISERPRO-EC S.A.S.', 'DISERPRO-EC S.A.S.', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '0993282510001', NULL, '000016', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-08-07', NULL, NULL, 'FLOMAC M&CS S.A.S.', 'FLOMAC M&CS S.A.S.', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '0705016897001', NULL, '000017', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-09-30', NULL, NULL, 'ZHONG PEIZHEN', 'ZHONG PEIZHEN', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 1, '', NULL, NULL, NULL),
(NULL, '', NULL, '000018', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2024-11-01', NULL, NULL, 'Germán Varas Macio', 'Germán Varas Macio', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0992672730001', NULL, '000019', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'autochecotaller@hotmail.com', '', NULL, '2024-11-04', NULL, NULL, 'AUTOCHECO R. Q. S.A.', 'AUTOCHECO R. Q. S.A.', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '', NULL, '000020', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'publicmendez324@gmail.com', '', NULL, '2024-12-09', NULL, NULL, 'PUBLIC MENDEZ', 'PUBLIC MENDEZ', '', 0, 'General', NULL, NULL, '0969767594', '', 'Cedula', 1, 'www.publicmendez.com', NULL, NULL, NULL),
(NULL, '1205725011', NULL, '000021', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'tmorales@elrosado.com', '', NULL, '2025-02-16', NULL, NULL, 'TATIANA LISBETH MORALES MACIAS', 'TATIANA LISBETH MORALES MACIAS', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0591756060001', NULL, '000022', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'grupoconsultor_ap_project@hotmail.com', '', NULL, '2025-03-06', NULL, NULL, 'Ingeniería y Diseño Integral de Proyectos AP PROJECT', 'Ingeniería y Diseño Integral de Proyectos AP PROJECT', '', 0, 'General', NULL, NULL, '0995736738', '', 'R.U.C', 0, 'www.approject.com.ec', NULL, NULL, NULL),
(NULL, '1708906084', NULL, '000023', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2025-03-10', NULL, NULL, 'Freddy Miranda', 'Freddy Miranda', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, 'Katherine Leonor Morán Zavala', NULL, '000024', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'kleomoranzava@hotmail.com', '', NULL, '2025-03-17', NULL, NULL, 'Katherine Leonor Morán Zavala', 'Katherine Leonor Morán Zavala', '', 0, 'General', NULL, NULL, '0958857995', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0909468357', NULL, '000025', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'carmedranda2018@gmail.com', '', NULL, '2025-04-10', NULL, NULL, 'Carmen Medranda León', 'Carmen Medranda León', '', 0, 'General', NULL, NULL, '0989144992', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '0950604587', NULL, '000026', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'jmoranzava@hotmail.com', '', NULL, '2025-05-16', NULL, NULL, 'JUSTO BAUTISTA MORÁN ZAVALA', 'JUSTO BAUTISTA MORÁN ZAVALA', '', 0, 'General', NULL, NULL, '0995477902', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '', NULL, '000027', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2025-05-27', NULL, NULL, 'Cliente Final', 'Cliente Final', '', 0, 'General', NULL, NULL, '', '', 'Cedula', 1, '', NULL, NULL, NULL),
(NULL, '2390050170001', NULL, '000028', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, '2025-05-29', NULL, NULL, 'COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS', 'ABRILTRANS S.A.', '', 0, 'General', NULL, NULL, '0968334259', '', 'R.U.C', 0, '', NULL, NULL, NULL),
(NULL, '0992876387001', NULL, '000029', NULL, NULL, NULL, 'USD', NULL, NULL, 'CONT', NULL, NULL, NULL, NULL, NULL, 0, 'amaino@lifecollege.edu.ec', '', NULL, '2025-06-19', NULL, NULL, 'Instituto Tecnológico Life College', 'Instituto Tecnológico Life College', '', 0, 'General', NULL, NULL, '', '', 'R.U.C', 0, 'www.lifecollege.edu.ec', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_asientos`
--

CREATE TABLE `co_asientos` (
  `codejercicio` varchar(4) NOT NULL,
  `codplanasiento` varchar(20) DEFAULT NULL,
  `concepto` varchar(255) DEFAULT NULL,
  `documento` varchar(30) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idconcepto` varchar(4) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `tipodocumento` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_asientos`
--

INSERT INTO `co_asientos` (`codejercicio`, `codplanasiento`, `concepto`, `documento`, `editable`, `fecha`, `idasiento`, `idconcepto`, `importe`, `numero`, `tipodocumento`) VALUES
('2024', NULL, 'Factura de venta 57 - IKES S.A.', '57', 0, '2024-03-01', 1, NULL, 170, 1, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 57 - IKES S.A.', '57', 0, '2024-04-01', 2, NULL, 170, 2, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 58 - WANG ZHOUFU', '58', 0, '2024-03-01', 3, NULL, 390, 3, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 58 - WANG ZHOUFU', '58', 0, '2024-04-01', 4, NULL, 390, 4, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 59 - Pedro Eladio Conforme Pincay', '59', 0, '2024-03-08', 5, NULL, 90, 5, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 59 - Pedro Eladio Conforme Pincay', '59', 0, '2024-04-08', 6, NULL, 90, 6, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 76 - Jesús del Rocío Holguín Macías', '76', 0, '2024-03-16', 9, NULL, 550, 7, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 76 - Jesús del Rocío Holguín Macías', '76', 0, '2024-03-16', 10, NULL, 550, 8, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 77 - INGEHISA CIA LTDA', '77', 0, '2024-04-18', 11, NULL, 205, 9, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 77 - INGEHISA CIA LTDA', '77', 0, '2024-04-18', 12, NULL, 205, 10, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 78 - INGEHISA CIA LTDA', '78', 0, '2024-04-19', 13, NULL, 392, 11, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 78 - INGEHISA CIA LTDA', '78', 0, '2024-04-19', 14, NULL, 392, 12, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 79 - INGEHISA CIA LTDA', '79', 0, '2024-04-20', 15, NULL, 59.99, 13, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 79 - INGEHISA CIA LTDA', '79', 0, '2024-04-20', 16, NULL, 59.99, 14, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 80 - DISIBIS S.A.', '80', 0, '2024-04-29', 17, NULL, 250.01, 15, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 80 - DISIBIS S.A.', '80', 0, '2024-04-29', 18, NULL, 250.01, 16, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 81 - IKES S.A.', '81', 0, '2024-05-02', 19, NULL, 170.01, 17, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 81 - IKES S.A.', '81', 0, '2024-05-02', 20, NULL, 170.01, 18, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 82 - IKES S.A.', '82', 0, '2024-05-04', 21, NULL, 128.75, 19, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 82 - IKES S.A.', '82', 0, '2024-05-04', 22, NULL, 128.75, 20, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 83 - Karen Carriel', '83', 0, '2024-05-08', 23, NULL, 60, 21, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 83 - Karen Carriel', '83', 0, '2024-05-08', 24, NULL, 60, 22, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 84 - TCPLUMESAL S. A.', '84', 0, '2024-05-09', 25, NULL, 30, 23, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 84 - TCPLUMESAL S. A.', '84', 0, '2024-05-09', 26, NULL, 30, 24, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 85 - TCPLUMESAL S. A.', '85', 0, '2024-05-09', 27, NULL, 39.99, 25, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 85 - TCPLUMESAL S. A.', '85', 0, '2024-05-09', 28, NULL, 39.99, 26, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 86 - INGEHISA CIA LTDA', '86', 0, '2024-05-09', 29, NULL, 80, 27, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 86 - INGEHISA CIA LTDA', '86', 0, '2024-05-09', 30, NULL, 80, 28, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 87 - Michelle Arreaga', '87', 0, '2024-05-13', 31, NULL, 60, 29, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 87 - Michelle Arreaga', '87', 0, '2024-05-13', 32, NULL, 60, 30, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 88 - Oscar Quiñonez', '88', 0, '2024-05-17', 33, NULL, 337.4, 31, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 88 - Oscar Quiñonez', '88', 0, '2024-05-17', 34, NULL, 337.4, 32, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 89 - INGEHISA CIA LTDA', '89', 0, '2024-05-20', 35, NULL, 35, 33, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 89 - INGEHISA CIA LTDA', '89', 0, '2024-05-20', 36, NULL, 35, 34, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 90 - WANG ZHOUFU', '90', 0, '2024-05-31', 37, NULL, 250, 35, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 90 - WANG ZHOUFU', '90', 0, '2024-05-31', 38, NULL, 250, 36, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 91 - IKES S.A.', '91', 0, '2024-06-01', 39, NULL, 170.01, 37, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 91 - IKES S.A.', '91', 0, '2024-06-01', 40, NULL, 170.01, 38, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 92 - Broom Ecuador S.A.', '92', 0, '2024-06-03', 41, NULL, 345, 39, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 92 - Broom Ecuador S.A.', '92', 0, '2024-06-03', 42, NULL, 345, 40, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 93 - Digna Carolina Pazmiño Echanique', '93', 0, '2024-06-03', 43, NULL, 200, 41, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 93 - Digna Carolina Pazmiño Echanique', '93', 0, '2024-06-03', 44, NULL, 200, 42, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 94 - Digna Carolina Pazmiño Echanique', '94', 0, '2024-06-12', 45, NULL, 135, 43, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 94 - Digna Carolina Pazmiño Echanique', '94', 0, '2024-06-12', 46, NULL, 135, 44, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 95 - Caty Quevedo', '95', 0, '2024-06-20', 47, NULL, 150, 45, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 95 - Caty Quevedo', '95', 0, '2024-06-20', 48, NULL, 150, 46, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 96 - WANG ZHOUFU', '96', 0, '2024-07-01', 49, NULL, 250, 47, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 96 - WANG ZHOUFU', '96', 0, '2024-07-01', 50, NULL, 250, 48, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 97 - IKES S.A.', '97', 0, '2024-07-01', 51, NULL, 170.1, 49, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 97 - IKES S.A.', '97', 0, '2024-07-01', 52, NULL, 170.1, 50, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 98 - DISERPRO-EC S.A.S.', '98', 0, '2024-07-04', 55, NULL, 43.48, 51, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 98 - DISERPRO-EC S.A.S.', '98', 0, '2024-07-04', 56, NULL, 43.48, 52, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 99 - INGEHISA CIA LTDA', '99', 0, '2024-07-04', 57, NULL, 30, 53, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 99 - INGEHISA CIA LTDA', '99', 0, '2024-07-04', 58, NULL, 30, 54, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 100 - IKES S.A.', '100', 0, '2024-07-31', 59, NULL, 170.1, 55, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 100 - IKES S.A.', '100', 0, '2024-07-31', 60, NULL, 170.1, 56, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 101 - WANG ZHOUFU', '101', 0, '2024-07-31', 61, NULL, 250, 57, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 101 - WANG ZHOUFU', '101', 0, '2024-07-31', 62, NULL, 250, 58, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 102 - FLOMAC M&CS S.A.S.', '102', 0, '2024-08-07', 63, NULL, 89, 59, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 102 - FLOMAC M&CS S.A.S.', '102', 0, '2024-08-07', 64, NULL, 89, 60, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 103 - DISERPRO-EC S.A.S.', '103', 0, '2024-08-19', 65, NULL, 180, 61, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 103 - DISERPRO-EC S.A.S.', '103', 0, '2024-08-19', 66, NULL, 180, 62, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 104 - DISIBIS S.A.', '104', 0, '2024-08-19', 67, NULL, 45, 63, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 104 - DISIBIS S.A.', '104', 0, '2024-08-19', 68, NULL, 45, 64, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 105 - WANG ZHOUFU', '105', 0, '2024-09-02', 69, NULL, 250, 65, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 105 - WANG ZHOUFU', '105', 0, '2024-09-02', 70, NULL, 250, 66, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 106 - IKES S.A.', '106', 0, '2024-09-02', 71, NULL, 170.1, 67, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 106 - IKES S.A.', '106', 0, '2024-09-02', 72, NULL, 170.1, 68, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 107 - DISIBIS S.A.', '107', 0, '2024-09-06', 73, NULL, 250.01, 69, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 107 - DISIBIS S.A.', '107', 0, '2024-09-06', 74, NULL, 250.01, 70, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 108 - Digna Carolina Pazmiño Echanique', '108', 0, '2024-09-09', 75, NULL, 405, 71, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 108 - Digna Carolina Pazmiño Echanique', '108', 0, '2024-09-09', 76, NULL, 405, 72, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 109 - DISIBIS S.A.', '109', 0, '2024-09-17', 77, NULL, 225, 73, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 109 - DISIBIS S.A.', '109', 0, '2024-09-17', 78, NULL, 225, 74, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 110 - DISERPRO-EC S.A.S.', '110', 0, '2024-09-19', 79, NULL, 180, 75, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 110 - DISERPRO-EC S.A.S.', '110', 0, '2024-09-19', 80, NULL, 180, 76, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 112 - WANG ZHOUFU', '112', 0, '2024-09-30', 83, NULL, 250, 79, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 112 - WANG ZHOUFU', '112', 0, '2024-09-30', 84, NULL, 250, 80, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 111 - ZHONG PEIZHEN', '111', 0, '2024-09-30', 85, NULL, 250, 81, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 111 - ZHONG PEIZHEN', '111', 0, '2024-09-30', 86, NULL, 250, 82, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 113 - DISIBIS S.A.', '113', 0, '2024-10-19', 89, NULL, 45, 83, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 113 - DISIBIS S.A.', '113', 0, '2024-10-19', 90, NULL, 45, 84, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 114 - ZHONG PEIZHEN', '114', 0, '2024-10-19', 91, NULL, 45, 85, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 114 - ZHONG PEIZHEN', '114', 0, '2024-10-19', 92, NULL, 45, 86, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 115 - WANG ZHOUFU', '115', 0, '2024-11-01', 93, NULL, 250, 87, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 115 - WANG ZHOUFU', '115', 0, '2024-11-01', 94, NULL, 250, 88, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 116 - ZHONG PEIZHEN', '116', 0, '2024-11-01', 95, NULL, 250, 89, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 116 - ZHONG PEIZHEN', '116', 0, '2024-11-01', 96, NULL, 250, 90, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 117 - AUTOCHECO R. Q. S.A.', '117', 0, '2024-11-04', 99, NULL, 128.75, 91, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 117 - AUTOCHECO R. Q. S.A.', '117', 0, '2024-11-04', 100, NULL, 128.75, 92, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 118 - Digna Carolina Pazmiño Echanique', '118', 0, '2024-11-04', 101, NULL, 135, 93, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 118 - Digna Carolina Pazmiño Echanique', '118', 0, '2024-11-04', 102, NULL, 135, 94, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 119 - INGEHISA CIA LTDA', '119', 0, '2024-11-13', 103, NULL, 266.4, 95, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 119 - INGEHISA CIA LTDA', '119', 0, '2024-11-13', 104, NULL, 266.4, 96, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 120 - Karen Carriel', '120', 0, '2024-11-15', 105, NULL, 40, 97, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 120 - Karen Carriel', '120', 0, '2024-11-15', 106, NULL, 40, 98, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 121 - DISERPRO-EC S.A.S.', '121', 0, '2024-11-28', 107, NULL, 180, 99, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 121 - DISERPRO-EC S.A.S.', '121', 0, '2024-11-28', 108, NULL, 180, 100, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 122 - WANG ZHOUFU', '122', 0, '2024-12-01', 109, NULL, 250, 101, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 122 - WANG ZHOUFU', '122', 0, '2024-12-01', 110, NULL, 250, 102, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 123 - INGEHISA CIA LTDA', '123', 0, '2024-12-03', 111, NULL, 45, 103, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 123 - INGEHISA CIA LTDA', '123', 0, '2024-12-03', 112, NULL, 45, 104, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 124 - PUBLIC MENDEZ', '124', 0, '2024-12-09', 113, NULL, 94.76, 105, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 124 - PUBLIC MENDEZ', '124', 0, '2024-12-09', 114, NULL, 94.76, 106, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 125 - AUTOCHECO R. Q. S.A.', '125', 0, '2024-12-09', 115, NULL, 176, 107, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 125 - AUTOCHECO R. Q. S.A.', '125', 0, '2024-12-09', 116, NULL, 176, 108, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 126 - TCPLUMESAL S. A.', '126', 0, '2024-12-09', 117, NULL, 155, 109, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 126 - TCPLUMESAL S. A.', '126', 0, '2024-12-09', 118, NULL, 155, 110, 'Factura de cliente'),
('2024', NULL, 'Factura de venta 127 - DISIBIS S.A.', '127', 0, '2024-12-24', 119, NULL, 60, 111, 'Factura de cliente'),
('2024', NULL, 'Cobro Factura de venta 127 - DISIBIS S.A.', '127', 0, '2024-12-24', 120, NULL, 60, 112, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 128 - AUTOCHECO R. Q. S.A.', '128', 0, '2025-01-03', 123, NULL, 176, 1, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 128 - AUTOCHECO R. Q. S.A.', '128', 0, '2025-01-03', 124, NULL, 176, 2, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 129 - AUTOCHECO R. Q. S.A.', '129', 0, '2025-01-03', 125, NULL, 40.25, 3, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 129 - AUTOCHECO R. Q. S.A.', '129', 0, '2025-01-03', 126, NULL, 40.25, 4, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 130 - DISIBIS S.A.', '130', 0, '2025-01-06', 131, NULL, 258.3, 5, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 130 - DISIBIS S.A.', '130', 0, '2025-01-06', 132, NULL, 258.3, 6, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 131 - IKES S.A.', '131', 0, '2025-01-06', 135, NULL, 125.78, 7, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 131 - IKES S.A.', '131', 0, '2025-01-06', 136, NULL, 125.78, 8, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 132 - TCPLUMESAL S. A.', '132', 0, '2025-01-14', 137, NULL, 289.99, 9, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 132 - TCPLUMESAL S. A.', '132', 0, '2025-01-14', 138, NULL, 289.99, 10, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 133 - WANG ZHOUFU', '133', 0, '2025-02-01', 139, NULL, 250, 11, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 133 - WANG ZHOUFU', '133', 0, '2025-02-01', 140, NULL, 250, 12, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 134 - WANG ZHOUFU', '134', 0, '2025-02-01', 141, NULL, 225, 13, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 134 - WANG ZHOUFU', '134', 0, '2025-02-01', 142, NULL, 225, 14, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 135 - AUTOCHECO R. Q. S.A.', '135', 0, '2025-02-03', 143, NULL, 211.88, 15, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 135 - AUTOCHECO R. Q. S.A.', '135', 0, '2025-02-03', 144, NULL, 211.88, 16, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 136 - TATIANA LISBETH MORALES MACIAS', '136', 0, '2025-02-16', 145, NULL, 640, 17, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 136 - TATIANA LISBETH MORALES MACIAS', '136', 0, '2025-02-16', 146, NULL, 640, 18, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 137 - Jesús del Rocío Holguín Macías', '137', 0, '2025-02-18', 147, NULL, 283.25, 19, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 137 - Jesús del Rocío Holguín Macías', '137', 0, '2025-02-18', 148, NULL, 283.25, 20, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 138 - WANG ZHOUFU', '138', 0, '2025-03-02', 149, NULL, 250, 21, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 138 - WANG ZHOUFU', '138', 0, '2025-03-02', 150, NULL, 250, 22, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 139 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', '139', 0, '2025-03-06', 151, NULL, 430, 23, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 139 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', '139', 0, '2025-03-06', 152, NULL, 430, 24, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 140 - Freddy Miranda', '140', 0, '2025-03-10', 155, NULL, 140, 25, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 140 - Freddy Miranda', '140', 0, '2025-03-10', 156, NULL, 140, 26, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 141 - Digna Carolina Pazmiño Echanique', '141', 0, '2025-03-13', 157, NULL, 135, 27, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 141 - Digna Carolina Pazmiño Echanique', '141', 0, '2025-03-13', 158, NULL, 135, 28, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 142 - DISIBIS S.A.', '142', 0, '2025-03-13', 159, NULL, 60, 29, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 142 - DISIBIS S.A.', '142', 0, '2025-03-13', 160, NULL, 60, 30, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 143 - TATIANA LISBETH MORALES MACIAS', '143', 0, '2025-03-15', 161, NULL, 320, 31, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 143 - TATIANA LISBETH MORALES MACIAS', '143', 0, '2025-03-15', 162, NULL, 320, 32, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 144 - Katherine Leonor Morán Zavala', '144', 0, '2025-03-17', 163, NULL, 1015, 33, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 144 - Katherine Leonor Morán Zavala', '144', 0, '2025-03-17', 164, NULL, 1015, 34, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 145 - ZHONG PEIZHEN', '145', 0, '2025-03-21', 165, NULL, 2400, 35, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 145 - ZHONG PEIZHEN', '145', 0, '2025-03-21', 166, NULL, 2400, 36, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 146 - Broom Ecuador S.A.', '146', 0, '2025-03-21', 167, NULL, 120, 37, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 146 - Broom Ecuador S.A.', '146', 0, '2025-03-21', 168, NULL, 120, 38, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 147 - INGEHISA CIA LTDA', '147', 0, '2025-03-21', 169, NULL, 30, 39, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 147 - INGEHISA CIA LTDA', '147', 0, '2025-03-21', 170, NULL, 30, 40, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 148 - Katherine Leonor Morán Zavala', '148', 0, '2025-03-21', 171, NULL, 50, 41, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 148 - Katherine Leonor Morán Zavala', '148', 0, '2025-03-21', 172, NULL, 50, 42, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 149 - WANG ZHOUFU', '149', 0, '2025-03-30', 173, NULL, 250, 43, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 149 - WANG ZHOUFU', '149', 0, '2025-03-30', 174, NULL, 250, 44, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 150 - Carmen Medranda León', '150', 0, '2025-04-10', 175, NULL, 55, 45, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 150 - Carmen Medranda León', '150', 0, '2025-04-10', 176, NULL, 55, 46, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 151 - Digna Carolina Pazmiño Echanique', '151', 0, '2025-04-14', 177, NULL, 135, 47, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 151 - Digna Carolina Pazmiño Echanique', '151', 0, '2025-04-14', 178, NULL, 135, 48, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 152 - WANG ZHOUFU', '152', 0, '2025-05-01', 181, NULL, 250, 49, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 152 - WANG ZHOUFU', '152', 0, '2025-05-01', 182, NULL, 250, 50, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 153 - ZHONG PEIZHEN', '153', 0, '2025-05-08', 183, NULL, 17, 51, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 153 - ZHONG PEIZHEN', '153', 0, '2025-05-08', 184, NULL, 17, 52, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 154 - JUSTO BAUTISTA MORÁN ZAVALA', '154', 0, '2025-05-16', 185, NULL, 60, 53, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 154 - JUSTO BAUTISTA MORÁN ZAVALA', '154', 0, '2025-05-16', 186, NULL, 60, 54, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 155 - INGEHISA CIA LTDA', '155', 0, '2025-05-16', 187, NULL, 40, 55, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 155 - INGEHISA CIA LTDA', '155', 0, '2025-05-16', 188, NULL, 40, 56, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 156 - JUSTO BAUTISTA MORÁN ZAVALA', '156', 0, '2025-05-19', 189, NULL, 60, 57, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 156 - JUSTO BAUTISTA MORÁN ZAVALA', '156', 0, '2025-05-19', 190, NULL, 60, 58, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 158 - INGEHISA CIA LTDA', '158', 0, '2025-05-27', 193, NULL, 83, 61, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 158 - INGEHISA CIA LTDA', '158', 0, '2025-05-27', 194, NULL, 83, 62, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 159 - ABRILTRANS S.A.', '159', 0, '2025-05-29', 197, NULL, 46, 63, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 159 - ABRILTRANS S.A.', '159', 0, '2025-05-29', 198, NULL, 46, 64, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 160 - WANG ZHOUFU', '160', 0, '2025-06-01', 199, NULL, 298, 65, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 160 - WANG ZHOUFU', '160', 0, '2025-06-01', 200, NULL, 298, 66, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 161 - Caty Quevedo', '161', 0, '2025-06-02', 201, NULL, 150, 67, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 161 - Caty Quevedo', '161', 0, '2025-06-02', 202, NULL, 150, 68, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 157 - Broom Ecuador S.A.', '157', 0, '2025-05-27', 203, NULL, 345, 69, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 157 - Broom Ecuador S.A.', '157', 0, '2025-05-27', 204, NULL, 345, 70, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 162 - Broom Ecuador S.A.', '162', 0, '2025-06-19', 205, NULL, 345, 71, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 162 - Broom Ecuador S.A.', '162', 0, '2025-06-19', 206, NULL, 345, 72, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 163 - Instituto Tecnológico Life College', '163', 0, '2025-06-19', 207, NULL, 400, 73, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 163 - Instituto Tecnológico Life College', '163', 0, '2025-06-19', 208, NULL, 400, 74, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 164 - DISIBIS S.A.', '164', 0, '2025-06-23', 209, NULL, 250.01, 75, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 164 - DISIBIS S.A.', '164', 0, '2025-06-23', 210, NULL, 250.01, 76, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 165 - ZHONG PEIZHEN', '165', 0, '2025-06-23', 211, NULL, 150, 77, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 165 - ZHONG PEIZHEN', '165', 0, '2025-06-23', 212, NULL, 150, 78, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 166 - INGEHISA CIA LTDA', '166', 0, '2025-07-01', 213, NULL, 30, 79, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 166 - INGEHISA CIA LTDA', '166', 0, '2025-07-01', 214, NULL, 30, 80, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 167 - WANG ZHOUFU', '167', 0, '2025-07-01', 215, NULL, 400, 81, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 167 - WANG ZHOUFU', '167', 0, '2025-07-01', 216, NULL, 400, 82, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 168 - Digna Carolina Pazmiño Echanique', '168', 0, '2025-07-24', 217, NULL, 135, 83, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 168 - Digna Carolina Pazmiño Echanique', '168', 0, '2025-07-24', 218, NULL, 135, 84, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 169 - WANG ZHOUFU', '169', 0, '2025-07-24', 219, NULL, 250, 85, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 169 - WANG ZHOUFU', '169', 0, '2025-07-24', 220, NULL, 250, 86, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 170 - WANG ZHOUFU', '170', 0, '2025-07-31', 221, NULL, 510, 87, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 170 - WANG ZHOUFU', '170', 0, '2025-07-31', 222, NULL, 510, 88, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 171 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', '171', 0, '2025-08-13', 223, NULL, 20, 89, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 171 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', '171', 0, '2025-08-13', 224, NULL, 20, 90, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 172 - FLOMAC M&CS S.A.S.', '172', 0, '2025-08-13', 225, NULL, 82.5, 91, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 172 - FLOMAC M&CS S.A.S.', '172', 0, '2025-08-13', 226, NULL, 82.5, 92, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 173 - WANG ZHOUFU', '173', 0, '2025-08-15', 227, NULL, 89, 93, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 173 - WANG ZHOUFU', '173', 0, '2025-08-15', 228, NULL, 89, 94, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 174 - DISIBIS S.A.', '174', 0, '2025-08-22', 233, NULL, 95, 95, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 174 - DISIBIS S.A.', '174', 0, '2025-08-22', 234, NULL, 95, 96, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 175 - WANG ZHOUFU', '175', 0, '2025-09-01', 235, NULL, 564, 97, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 175 - WANG ZHOUFU', '175', 0, '2025-09-01', 236, NULL, 564, 98, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 176 - AUTOCHECO R. Q. S.A.', '176', 0, '2025-09-03', 237, NULL, 40, 99, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 176 - AUTOCHECO R. Q. S.A.', '176', 0, '2025-09-03', 238, NULL, 40, 100, 'Factura de cliente'),
('0001', NULL, 'Factura de venta 177 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', '177', 0, '2025-09-10', 239, NULL, 400, 101, 'Factura de cliente'),
('0001', NULL, 'Cobro Factura de venta 177 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', '177', 0, '2025-09-10', 240, NULL, 400, 102, 'Factura de cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_codbalances08`
--

CREATE TABLE `co_codbalances08` (
  `descripcion4ba` varchar(255) DEFAULT NULL,
  `descripcion4` varchar(255) DEFAULT NULL,
  `nivel4` varchar(5) DEFAULT NULL,
  `descripcion3` varchar(255) DEFAULT NULL,
  `orden3` varchar(5) DEFAULT NULL,
  `nivel3` varchar(5) DEFAULT NULL,
  `descripcion2` varchar(255) DEFAULT NULL,
  `nivel2` int(11) DEFAULT NULL,
  `descripcion1` varchar(255) DEFAULT NULL,
  `nivel1` varchar(5) DEFAULT NULL,
  `naturaleza` varchar(15) NOT NULL,
  `codbalance` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_conceptospar`
--

CREATE TABLE `co_conceptospar` (
  `concepto` varchar(255) DEFAULT NULL,
  `idconceptopar` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentas`
--

CREATE TABLE `co_cuentas` (
  `codbalance` varchar(15) DEFAULT NULL,
  `codcuenta` varchar(6) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codepigrafe` varchar(6) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idcuenta` int(11) NOT NULL,
  `idcuentaesp` varchar(6) DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_cuentas`
--

INSERT INTO `co_cuentas` (`codbalance`, `codcuenta`, `codejercicio`, `codepigrafe`, `descripcion`, `idcuenta`, `idcuentaesp`, `idepigrafe`) VALUES
(NULL, '1111', '2024', '111', 'CAJA GENERAL', 44, 'CAJA', 33),
(NULL, '1112', '2024', '111', 'CAJA CHICA', 45, 'CAJA', 33),
(NULL, '1113', '2024', '111', 'BANCOS', 46, '', 33),
(NULL, '1114', '2024', '111', 'INVERSIONES', 47, '', 33),
(NULL, '1121', '2024', '112', 'CUENTAS POR COBRAR CLIENTES', 48, 'CLIENT', 34),
(NULL, '1122', '2024', '112', 'CUENTAS POR COBRAR TARJETAS', 49, '', 34),
(NULL, '1131', '2024', '113', 'Otras cuentas por cobrar', 50, '', 35),
(NULL, '1133', '2024', '113', 'OTRAS POR COBRAR EMPLEADOS', 51, '', 35),
(NULL, '1134', '2024', '113', 'IMPUESTOS SRI', 52, 'IVASOP', 35),
(NULL, '1135', '2024', '113', 'RETENCIONES Y ANTICIPOS', 53, 'IRPFPR', 35),
(NULL, '1141', '2024', '114', 'INVENTARIO', 54, 'COMPRA', 36),
(NULL, '1211', '2024', '121', 'ACTIVOS NO DEPRECIABLES', 55, '', 38),
(NULL, '1212', '2024', '121', 'ACTIVOS DEPRECIABLES', 56, '', 38),
(NULL, '1213', '2024', '121', 'DEPRECIACIÓN ACUMULADA', 57, '', 38),
(NULL, '1221', '2024', '122', 'Otras por cobrar Garantías L.P.', 58, '', 39),
(NULL, '1222', '2024', '122', 'Otras por cobrar Garantías', 59, '', 39),
(NULL, '2111', '2024', '211', 'SOBREGIRO Y PRESTAMOS', 60, '', 42),
(NULL, '2121', '2024', '212', 'PROVEEDORES', 61, 'PROVEE', 43),
(NULL, '2131', '2024', '213', 'OTRAS CUENTAS POR PAGAR', 62, '', 44),
(NULL, '2132', '2024', '213', 'OBLIGACIONES PERSONAL', 63, '', 44),
(NULL, '2133', '2024', '213', 'OBLIGACIONES FISCALES', 64, 'IVAREP', 44),
(NULL, '2134', '2024', '213', 'RETENCIONES DE IVA', 65, '', 44),
(NULL, '2135', '2024', '213', 'RETENCIONES EN LA FUENTE', 66, 'IRPF', 44),
(NULL, '2136', '2024', '213', 'OBLIGACIONES SEGURO SOCIAL', 67, '', 44),
(NULL, '2211', '2024', '221', 'PRESTAMOS', 68, '', 46),
(NULL, '311', '2024', '31', 'CAPITAL SOCIAL', 69, '', 48),
(NULL, '312', '2024', '31', 'APORTES FUTURA CAPITALIZACIÓN', 70, '', 48),
(NULL, '313', '2024', '31', 'RESERVAS', 71, '', 48),
(NULL, '331', '2024', '33', 'RESULTADOS ANTERIORES', 72, '', 49),
(NULL, '332', '2024', '33', 'RESULTADO DEL EJERCICIO', 73, '', 49),
(NULL, '411', '2024', '41', 'VENTAS', 74, 'VENTAS', 51),
(NULL, '4121', '2024', '412', 'VENTAS', 75, '', 52),
(NULL, '4122', '2024', '412', 'DEVOLUCIONES EN VENTAS', 76, '', 52),
(NULL, '4123', '2024', '412', 'OTROS INGRESOS OPERACIONALES', 77, '', 52),
(NULL, '421', '2024', '42', 'OTROS INGRESOS', 78, '', 54),
(NULL, '511', '2024', '51', 'COSTO DE PRODUCCIÓN', 79, '', 56),
(NULL, '512', '2024', '51', 'COSTO MANO DE OBRA', 80, '', 56),
(NULL, '513', '2024', '51', 'OTROS COSTOS', 81, '', 56),
(NULL, '611', '2024', '61', 'GASTOS PERSONAL ADMINISTRATIVO', 82, '', 58),
(NULL, '612', '2024', '61', 'OTROS GASTOS ADMINISTRATIVOS', 83, '', 58),
(NULL, '621', '2024', '62', 'GASTOS PERSONAL DE VENTAS', 84, '', 59),
(NULL, '622', '2024', '62', 'OTROS GASTOS VENTAS', 85, '', 59),
(NULL, '631', '2024', '63', 'GASTOS FINANCIEROS', 86, '', 60),
(NULL, '1111', '0001', '111', 'CAJA GENERAL', 87, 'CAJA', 63),
(NULL, '1112', '0001', '111', 'CAJA CHICA', 88, 'CAJA', 63),
(NULL, '1113', '0001', '111', 'BANCOS', 89, '', 63),
(NULL, '1114', '0001', '111', 'INVERSIONES', 90, '', 63),
(NULL, '1121', '0001', '112', 'CUENTAS POR COBRAR CLIENTES', 91, 'CLIENT', 64),
(NULL, '1122', '0001', '112', 'CUENTAS POR COBRAR TARJETAS', 92, '', 64),
(NULL, '1131', '0001', '113', 'Otras cuentas por cobrar', 93, '', 65),
(NULL, '1133', '0001', '113', 'OTRAS POR COBRAR EMPLEADOS', 94, '', 65),
(NULL, '1134', '0001', '113', 'IMPUESTOS SRI', 95, 'IVASOP', 65),
(NULL, '1135', '0001', '113', 'RETENCIONES Y ANTICIPOS', 96, 'IRPFPR', 65),
(NULL, '1141', '0001', '114', 'INVENTARIO', 97, 'COMPRA', 66),
(NULL, '1211', '0001', '121', 'ACTIVOS NO DEPRECIABLES', 98, '', 68),
(NULL, '1212', '0001', '121', 'ACTIVOS DEPRECIABLES', 99, '', 68),
(NULL, '1213', '0001', '121', 'DEPRECIACIÓN ACUMULADA', 100, '', 68),
(NULL, '1221', '0001', '122', 'Otras por cobrar Garantías L.P.', 101, '', 69),
(NULL, '1222', '0001', '122', 'Otras por cobrar Garantías', 102, '', 69),
(NULL, '2111', '0001', '211', 'SOBREGIRO Y PRESTAMOS', 103, '', 72),
(NULL, '2121', '0001', '212', 'PROVEEDORES', 104, 'PROVEE', 73),
(NULL, '2131', '0001', '213', 'OTRAS CUENTAS POR PAGAR', 105, '', 74),
(NULL, '2132', '0001', '213', 'OBLIGACIONES PERSONAL', 106, '', 74),
(NULL, '2133', '0001', '213', 'OBLIGACIONES FISCALES', 107, 'IVAREP', 74),
(NULL, '2134', '0001', '213', 'RETENCIONES DE IVA', 108, '', 74),
(NULL, '2135', '0001', '213', 'RETENCIONES EN LA FUENTE', 109, 'IRPF', 74),
(NULL, '2136', '0001', '213', 'OBLIGACIONES SEGURO SOCIAL', 110, '', 74),
(NULL, '2211', '0001', '221', 'PRESTAMOS', 111, '', 76),
(NULL, '311', '0001', '31', 'CAPITAL SOCIAL', 112, '', 78),
(NULL, '312', '0001', '31', 'APORTES FUTURA CAPITALIZACIÓN', 113, '', 78),
(NULL, '313', '0001', '31', 'RESERVAS', 114, '', 78),
(NULL, '331', '0001', '33', 'RESULTADOS ANTERIORES', 115, '', 79),
(NULL, '332', '0001', '33', 'RESULTADO DEL EJERCICIO', 116, '', 79),
(NULL, '411', '0001', '41', 'VENTAS', 117, 'VENTAS', 81),
(NULL, '4121', '0001', '412', 'VENTAS', 118, '', 82),
(NULL, '4122', '0001', '412', 'DEVOLUCIONES EN VENTAS', 119, '', 82),
(NULL, '4123', '0001', '412', 'OTROS INGRESOS OPERACIONALES', 120, '', 82),
(NULL, '421', '0001', '42', 'OTROS INGRESOS', 121, '', 84),
(NULL, '511', '0001', '51', 'COSTO DE PRODUCCIÓN', 122, '', 86),
(NULL, '512', '0001', '51', 'COSTO MANO DE OBRA', 123, '', 86),
(NULL, '513', '0001', '51', 'OTROS COSTOS', 124, '', 86),
(NULL, '611', '0001', '61', 'GASTOS PERSONAL ADMINISTRATIVO', 125, '', 88),
(NULL, '612', '0001', '61', 'OTROS GASTOS ADMINISTRATIVOS', 126, '', 88),
(NULL, '621', '0001', '62', 'GASTOS PERSONAL DE VENTAS', 127, '', 89),
(NULL, '622', '0001', '62', 'OTROS GASTOS VENTAS', 128, '', 89),
(NULL, '631', '0001', '63', 'GASTOS FINANCIEROS', 129, '', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentascb`
--

CREATE TABLE `co_cuentascb` (
  `desccuenta` varchar(255) DEFAULT NULL,
  `codcuenta` varchar(6) NOT NULL,
  `codbalance` varchar(15) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentascbba`
--

CREATE TABLE `co_cuentascbba` (
  `desccuenta` varchar(255) DEFAULT NULL,
  `codcuenta` varchar(6) NOT NULL,
  `codbalance` varchar(15) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_cuentasesp`
--

CREATE TABLE `co_cuentasesp` (
  `codcuenta` varchar(6) DEFAULT NULL,
  `codsubcuenta` varchar(15) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idcuentaesp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_cuentasesp`
--

INSERT INTO `co_cuentasesp` (`codcuenta`, `codsubcuenta`, `descripcion`, `idcuentaesp`) VALUES
(NULL, NULL, 'Cuentas de acreedores', 'ACREED'),
(NULL, NULL, 'Cuentas de caja', 'CAJA'),
(NULL, NULL, 'Cuentas de diferencias negativas de cambio', 'CAMNEG'),
(NULL, NULL, 'Cuentas de diferencias positivas de cambio', 'CAMPOS'),
(NULL, NULL, 'Cuentas de clientes', 'CLIENT'),
(NULL, NULL, 'Cuentas de compras', 'COMPRA'),
(NULL, NULL, 'Devoluciones de compras', 'DEVCOM'),
(NULL, NULL, 'Devoluciones de ventas', 'DEVVEN'),
(NULL, NULL, 'Cuentas por diferencias positivas en divisa extranjera', 'DIVPOS'),
(NULL, NULL, 'Cuentas por diferencias negativas de conversión a la moneda local', 'EURNEG'),
(NULL, NULL, 'Cuentas por diferencias positivas de conversión a la moneda local', 'EURPOS'),
(NULL, NULL, 'Gastos por recargo financiero', 'GTORF'),
(NULL, NULL, 'Ingresos por recargo financiero', 'INGRF'),
(NULL, NULL, 'Cuentas de retenciones IRPF', 'IRPF'),
(NULL, NULL, 'Cuentas de retenciones para proveedores IRPFPR', 'IRPFPR'),
(NULL, NULL, 'Cuentas acreedoras de IVA en la regularización', 'IVAACR'),
(NULL, NULL, 'Cuentas deudoras de IVA en la regularización', 'IVADEU'),
(NULL, NULL, 'IVA en entregas intracomunitarias U.E.', 'IVAEUE'),
(NULL, NULL, 'Cuentas de IVA repercutido', 'IVAREP'),
(NULL, NULL, 'Cuentas de IVA repercutido para clientes exentos de IVA', 'IVAREX'),
(NULL, NULL, 'Cuentas de IVA soportado UE', 'IVARUE'),
(NULL, NULL, 'Cuentas de IVA repercutido en exportaciones', 'IVARXP'),
(NULL, NULL, 'Cuentas de IVA soportado en importaciones', 'IVASIM'),
(NULL, NULL, 'Cuentas de IVA soportado', 'IVASOP'),
(NULL, NULL, 'Cuentas de IVA soportado UE', 'IVASUE'),
(NULL, NULL, 'Cuentas relativas al ejercicio previo', 'PREVIO'),
(NULL, NULL, 'Cuentas de proveedores', 'PROVEE'),
(NULL, NULL, 'Pérdidas y ganancias', 'PYG'),
(NULL, NULL, 'Cuentas de ventas', 'VENTAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_epigrafes`
--

CREATE TABLE `co_epigrafes` (
  `codejercicio` varchar(4) NOT NULL,
  `codepigrafe` varchar(6) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `idpadre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_epigrafes`
--

INSERT INTO `co_epigrafes` (`codejercicio`, `codepigrafe`, `descripcion`, `idepigrafe`, `idgrupo`, `idpadre`) VALUES
('2024', '1', 'ACTIVOS', 31, NULL, NULL),
('2024', '11', 'ACTIVO CORRIENTE', 32, NULL, 31),
('2024', '111', 'DISPONIBLE', 33, NULL, 32),
('2024', '112', 'EXIGIBLE', 34, NULL, 32),
('2024', '113', 'OTRAS CUENTAS POR COBRAR', 35, NULL, 32),
('2024', '114', 'REALIZABLE', 36, NULL, 32),
('2024', '12', 'ACTIVO NO CORRIENTE', 37, NULL, 31),
('2024', '121', 'ACTIVO FIJO', 38, NULL, 37),
('2024', '122', 'OTROS ACTIVOS LAGO PLAZO', 39, NULL, 37),
('2024', '2', 'PASIVO', 40, NULL, NULL),
('2024', '21', 'PASIVO CORRIENTE', 41, NULL, 40),
('2024', '211', 'OBLIGACIONES FINANCIERAS CORTO PLAZO', 42, NULL, 41),
('2024', '212', 'CTAS POR PAGAR COMERCIALES', 43, NULL, 41),
('2024', '213', 'GASTOS ACUMULADOS Y OTRAS POR PAGAR', 44, NULL, 41),
('2024', '22', 'PASIVO NO CORRIENTE', 45, NULL, 40),
('2024', '221', 'OBLIGACIONES FINANCIERAS LARGO PLAZO', 46, NULL, 45),
('2024', '3', 'PATRIMONIO', 47, NULL, NULL),
('2024', '31', 'CAPITAL Y RESERVAS', 48, NULL, 47),
('2024', '33', 'RESULTADOS', 49, NULL, 47),
('2024', '4', 'INGRESOS', 50, NULL, NULL),
('2024', '41', 'INGRESOS OPERACIONALES', 51, NULL, 50),
('2024', '412', 'DEVOLUCIONES EN VENTAS', 52, NULL, 51),
('2024', '414', 'OTROS INGRESOS OPERACIONALES', 53, NULL, 51),
('2024', '42', 'INGRESOS NO OPERACIONALES', 54, NULL, 50),
('2024', '5', 'COSTOS', 55, NULL, NULL),
('2024', '51', 'COSTOS DE OPERACION', 56, NULL, 55),
('2024', '6', 'GASTOS', 57, NULL, NULL),
('2024', '61', 'GASTOS ADMINISTRACION', 58, NULL, 57),
('2024', '62', 'GASTOS DE VENTAS', 59, NULL, 57),
('2024', '63', 'GASTOS FINANCIEROS', 60, NULL, 57),
('0001', '1', 'ACTIVOS', 61, NULL, NULL),
('0001', '11', 'ACTIVO CORRIENTE', 62, NULL, 61),
('0001', '111', 'DISPONIBLE', 63, NULL, 62),
('0001', '112', 'EXIGIBLE', 64, NULL, 62),
('0001', '113', 'OTRAS CUENTAS POR COBRAR', 65, NULL, 62),
('0001', '114', 'REALIZABLE', 66, NULL, 62),
('0001', '12', 'ACTIVO NO CORRIENTE', 67, NULL, 61),
('0001', '121', 'ACTIVO FIJO', 68, NULL, 67),
('0001', '122', 'OTROS ACTIVOS LAGO PLAZO', 69, NULL, 67),
('0001', '2', 'PASIVO', 70, NULL, NULL),
('0001', '21', 'PASIVO CORRIENTE', 71, NULL, 70),
('0001', '211', 'OBLIGACIONES FINANCIERAS CORTO PLAZO', 72, NULL, 71),
('0001', '212', 'CTAS POR PAGAR COMERCIALES', 73, NULL, 71),
('0001', '213', 'GASTOS ACUMULADOS Y OTRAS POR PAGAR', 74, NULL, 71),
('0001', '22', 'PASIVO NO CORRIENTE', 75, NULL, 70),
('0001', '221', 'OBLIGACIONES FINANCIERAS LARGO PLAZO', 76, NULL, 75),
('0001', '3', 'PATRIMONIO', 77, NULL, NULL),
('0001', '31', 'CAPITAL Y RESERVAS', 78, NULL, 77),
('0001', '33', 'RESULTADOS', 79, NULL, 77),
('0001', '4', 'INGRESOS', 80, NULL, NULL),
('0001', '41', 'INGRESOS OPERACIONALES', 81, NULL, 80),
('0001', '412', 'DEVOLUCIONES EN VENTAS', 82, NULL, 81),
('0001', '414', 'OTROS INGRESOS OPERACIONALES', 83, NULL, 81),
('0001', '42', 'INGRESOS NO OPERACIONALES', 84, NULL, 80),
('0001', '5', 'COSTOS', 85, NULL, NULL),
('0001', '51', 'COSTOS DE OPERACION', 86, NULL, 85),
('0001', '6', 'GASTOS', 87, NULL, NULL),
('0001', '61', 'GASTOS ADMINISTRACION', 88, NULL, 87),
('0001', '62', 'GASTOS DE VENTAS', 89, NULL, 87),
('0001', '63', 'GASTOS FINANCIEROS', 90, NULL, 87);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_gruposepigrafes`
--

CREATE TABLE `co_gruposepigrafes` (
  `codejercicio` varchar(4) NOT NULL,
  `codgrupo` varchar(6) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `idgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_partidas`
--

CREATE TABLE `co_partidas` (
  `baseimponible` double NOT NULL,
  `cifnif` varchar(30) DEFAULT NULL,
  `codcontrapartida` varchar(15) DEFAULT NULL,
  `coddivisa` varchar(3) DEFAULT NULL,
  `codserie` varchar(2) DEFAULT NULL,
  `codsubcuenta` varchar(15) NOT NULL,
  `concepto` varchar(255) DEFAULT NULL,
  `debe` double NOT NULL DEFAULT 0,
  `debeme` double NOT NULL,
  `documento` varchar(30) DEFAULT NULL,
  `factura` double DEFAULT NULL,
  `haber` double NOT NULL DEFAULT 0,
  `haberme` double NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idconcepto` varchar(4) DEFAULT NULL,
  `idcontrapartida` int(11) DEFAULT NULL,
  `idpartida` int(11) NOT NULL,
  `idsubcuenta` int(11) NOT NULL,
  `iva` double NOT NULL,
  `punteada` tinyint(1) NOT NULL DEFAULT 0,
  `recargo` double NOT NULL,
  `tasaconv` double NOT NULL,
  `tipodocumento` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_partidas`
--

INSERT INTO `co_partidas` (`baseimponible`, `cifnif`, `codcontrapartida`, `coddivisa`, `codserie`, `codsubcuenta`, `concepto`, `debe`, `debeme`, `documento`, `factura`, `haber`, `haberme`, `idasiento`, `idconcepto`, `idcontrapartida`, `idpartida`, `idsubcuenta`, `iva`, `punteada`, `recargo`, `tasaconv`, `tipodocumento`) VALUES
(0, '', NULL, 'USD', 'A', '4110001', 'Factura de venta 57 - IKES S.A.', 0, 0, '57', NULL, 170, 0, 1, NULL, NULL, 1, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1121002', 'Factura de venta 57 - IKES S.A.', 170, 0, '57', NULL, 0, 0, 1, NULL, NULL, 2, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1121002', 'Cobro Factura de venta 57 - IKES S.A.', 0, 0, '57', NULL, 170, 0, 2, NULL, NULL, 3, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1111001', 'Cobro Factura de venta 57 - IKES S.A.', 170, 0, '57', NULL, 0, 0, 2, NULL, NULL, 4, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '4110001', 'Factura de venta 58 - WANG ZHOUFU', 0, 0, '58', NULL, 390, 0, 3, NULL, NULL, 5, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1121003', 'Factura de venta 58 - WANG ZHOUFU', 390, 0, '58', NULL, 0, 0, 3, NULL, NULL, 6, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1121003', 'Cobro Factura de venta 58 - WANG ZHOUFU', 0, 0, '58', NULL, 390, 0, 4, NULL, NULL, 7, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1111001', 'Cobro Factura de venta 58 - WANG ZHOUFU', 390, 0, '58', NULL, 0, 0, 4, NULL, NULL, 8, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '4110001', 'Factura de venta 59 - Pedro Eladio Conforme Pincay', 0, 0, '59', NULL, 90, 0, 5, NULL, NULL, 9, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1121004', 'Factura de venta 59 - Pedro Eladio Conforme Pincay', 90, 0, '59', NULL, 0, 0, 5, NULL, NULL, 10, 741, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1121004', 'Cobro Factura de venta 59 - Pedro Eladio Conforme Pincay', 0, 0, '59', NULL, 90, 0, 6, NULL, NULL, 11, 741, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'A', '1111001', 'Cobro Factura de venta 59 - Pedro Eladio Conforme Pincay', 90, 0, '59', NULL, 0, 0, 6, NULL, NULL, 12, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 76 - Jesús del Rocío Holguín Macías', 0, 0, '76', NULL, 550, 0, 9, NULL, NULL, 17, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121005', 'Factura de venta 76 - Jesús del Rocío Holguín Macías', 550, 0, '76', NULL, 0, 0, 9, NULL, NULL, 18, 742, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121005', 'Cobro Factura de venta 76 - Jesús del Rocío Holguín Macías', 0, 0, '76', NULL, 550, 0, 10, NULL, NULL, 19, 742, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 76 - Jesús del Rocío Holguín Macías', 550, 0, '76', NULL, 0, 0, 10, NULL, NULL, 20, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 77 - INGEHISA CIA LTDA', 0, 0, '77', NULL, 205, 0, 11, NULL, NULL, 21, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 77 - INGEHISA CIA LTDA', 205, 0, '77', NULL, 0, 0, 11, NULL, NULL, 22, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 77 - INGEHISA CIA LTDA', 0, 0, '77', NULL, 205, 0, 12, NULL, NULL, 23, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 77 - INGEHISA CIA LTDA', 205, 0, '77', NULL, 0, 0, 12, NULL, NULL, 24, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 78 - INGEHISA CIA LTDA', 0, 0, '78', NULL, 392, 0, 13, NULL, NULL, 25, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 78 - INGEHISA CIA LTDA', 392, 0, '78', NULL, 0, 0, 13, NULL, NULL, 26, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 78 - INGEHISA CIA LTDA', 0, 0, '78', NULL, 392, 0, 14, NULL, NULL, 27, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 78 - INGEHISA CIA LTDA', 392, 0, '78', NULL, 0, 0, 14, NULL, NULL, 28, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 79 - INGEHISA CIA LTDA', 0, 0, '79', NULL, 59.99, 0, 15, NULL, NULL, 29, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 79 - INGEHISA CIA LTDA', 59.99, 0, '79', NULL, 0, 0, 15, NULL, NULL, 30, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 79 - INGEHISA CIA LTDA', 0, 0, '79', NULL, 59.99, 0, 16, NULL, NULL, 31, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 79 - INGEHISA CIA LTDA', 59.99, 0, '79', NULL, 0, 0, 16, NULL, NULL, 32, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 80 - DISIBIS S.A.', 0, 0, '80', NULL, 250.01, 0, 17, NULL, NULL, 33, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Factura de venta 80 - DISIBIS S.A.', 250.01, 0, '80', NULL, 0, 0, 17, NULL, NULL, 34, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Cobro Factura de venta 80 - DISIBIS S.A.', 0, 0, '80', NULL, 250.01, 0, 18, NULL, NULL, 35, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 80 - DISIBIS S.A.', 250.01, 0, '80', NULL, 0, 0, 18, NULL, NULL, 36, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 81 - IKES S.A.', 0, 0, '81', NULL, 170.01, 0, 19, NULL, NULL, 37, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Factura de venta 81 - IKES S.A.', 170.01, 0, '81', NULL, 0, 0, 19, NULL, NULL, 38, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Cobro Factura de venta 81 - IKES S.A.', 0, 0, '81', NULL, 170.01, 0, 20, NULL, NULL, 39, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 81 - IKES S.A.', 170.01, 0, '81', NULL, 0, 0, 20, NULL, NULL, 40, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 82 - IKES S.A.', 0, 0, '82', NULL, 128.75, 0, 21, NULL, NULL, 41, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Factura de venta 82 - IKES S.A.', 128.75, 0, '82', NULL, 0, 0, 21, NULL, NULL, 42, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Cobro Factura de venta 82 - IKES S.A.', 0, 0, '82', NULL, 128.75, 0, 22, NULL, NULL, 43, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 82 - IKES S.A.', 128.75, 0, '82', NULL, 0, 0, 22, NULL, NULL, 44, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 83 - Karen Carriel', 0, 0, '83', NULL, 60, 0, 23, NULL, NULL, 45, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121008', 'Factura de venta 83 - Karen Carriel', 60, 0, '83', NULL, 0, 0, 23, NULL, NULL, 46, 745, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121008', 'Cobro Factura de venta 83 - Karen Carriel', 0, 0, '83', NULL, 60, 0, 24, NULL, NULL, 47, 745, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 83 - Karen Carriel', 60, 0, '83', NULL, 0, 0, 24, NULL, NULL, 48, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 84 - TCPLUMESAL S. A.', 0, 0, '84', NULL, 30, 0, 25, NULL, NULL, 49, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121009', 'Factura de venta 84 - TCPLUMESAL S. A.', 30, 0, '84', NULL, 0, 0, 25, NULL, NULL, 50, 746, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121009', 'Cobro Factura de venta 84 - TCPLUMESAL S. A.', 0, 0, '84', NULL, 30, 0, 26, NULL, NULL, 51, 746, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 84 - TCPLUMESAL S. A.', 30, 0, '84', NULL, 0, 0, 26, NULL, NULL, 52, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 85 - TCPLUMESAL S. A.', 0, 0, '85', NULL, 39.99, 0, 27, NULL, NULL, 53, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121009', 'Factura de venta 85 - TCPLUMESAL S. A.', 39.99, 0, '85', NULL, 0, 0, 27, NULL, NULL, 54, 746, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121009', 'Cobro Factura de venta 85 - TCPLUMESAL S. A.', 0, 0, '85', NULL, 39.99, 0, 28, NULL, NULL, 55, 746, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 85 - TCPLUMESAL S. A.', 39.99, 0, '85', NULL, 0, 0, 28, NULL, NULL, 56, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 86 - INGEHISA CIA LTDA', 0, 0, '86', NULL, 80, 0, 29, NULL, NULL, 57, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 86 - INGEHISA CIA LTDA', 80, 0, '86', NULL, 0, 0, 29, NULL, NULL, 58, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 86 - INGEHISA CIA LTDA', 0, 0, '86', NULL, 80, 0, 30, NULL, NULL, 59, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 86 - INGEHISA CIA LTDA', 80, 0, '86', NULL, 0, 0, 30, NULL, NULL, 60, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 87 - Michelle Arreaga', 0, 0, '87', NULL, 60, 0, 31, NULL, NULL, 61, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121010', 'Factura de venta 87 - Michelle Arreaga', 60, 0, '87', NULL, 0, 0, 31, NULL, NULL, 62, 747, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121010', 'Cobro Factura de venta 87 - Michelle Arreaga', 0, 0, '87', NULL, 60, 0, 32, NULL, NULL, 63, 747, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 87 - Michelle Arreaga', 60, 0, '87', NULL, 0, 0, 32, NULL, NULL, 64, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 88 - Oscar Quiñonez', 0, 0, '88', NULL, 337.4, 0, 33, NULL, NULL, 65, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121011', 'Factura de venta 88 - Oscar Quiñonez', 337.4, 0, '88', NULL, 0, 0, 33, NULL, NULL, 66, 748, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121011', 'Cobro Factura de venta 88 - Oscar Quiñonez', 0, 0, '88', NULL, 337.4, 0, 34, NULL, NULL, 67, 748, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 88 - Oscar Quiñonez', 337.4, 0, '88', NULL, 0, 0, 34, NULL, NULL, 68, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 89 - INGEHISA CIA LTDA', 0, 0, '89', NULL, 35, 0, 35, NULL, NULL, 69, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 89 - INGEHISA CIA LTDA', 35, 0, '89', NULL, 0, 0, 35, NULL, NULL, 70, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 89 - INGEHISA CIA LTDA', 0, 0, '89', NULL, 35, 0, 36, NULL, NULL, 71, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 89 - INGEHISA CIA LTDA', 35, 0, '89', NULL, 0, 0, 36, NULL, NULL, 72, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 90 - WANG ZHOUFU', 0, 0, '90', NULL, 250, 0, 37, NULL, NULL, 73, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 90 - WANG ZHOUFU', 250, 0, '90', NULL, 0, 0, 37, NULL, NULL, 74, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 90 - WANG ZHOUFU', 0, 0, '90', NULL, 250, 0, 38, NULL, NULL, 75, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 90 - WANG ZHOUFU', 250, 0, '90', NULL, 0, 0, 38, NULL, NULL, 76, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 91 - IKES S.A.', 0, 0, '91', NULL, 170.01, 0, 39, NULL, NULL, 77, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Factura de venta 91 - IKES S.A.', 170.01, 0, '91', NULL, 0, 0, 39, NULL, NULL, 78, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Cobro Factura de venta 91 - IKES S.A.', 0, 0, '91', NULL, 170.01, 0, 40, NULL, NULL, 79, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 91 - IKES S.A.', 170.01, 0, '91', NULL, 0, 0, 40, NULL, NULL, 80, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 92 - Broom Ecuador S.A.', 0, 0, '92', NULL, 345, 0, 41, NULL, NULL, 81, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121012', 'Factura de venta 92 - Broom Ecuador S.A.', 345, 0, '92', NULL, 0, 0, 41, NULL, NULL, 82, 749, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121012', 'Cobro Factura de venta 92 - Broom Ecuador S.A.', 0, 0, '92', NULL, 345, 0, 42, NULL, NULL, 83, 749, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 92 - Broom Ecuador S.A.', 345, 0, '92', NULL, 0, 0, 42, NULL, NULL, 84, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 93 - Digna Carolina Pazmiño Echanique', 0, 0, '93', NULL, 200, 0, 43, NULL, NULL, 85, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Factura de venta 93 - Digna Carolina Pazmiño Echanique', 200, 0, '93', NULL, 0, 0, 43, NULL, NULL, 86, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Cobro Factura de venta 93 - Digna Carolina Pazmiño Echanique', 0, 0, '93', NULL, 200, 0, 44, NULL, NULL, 87, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 93 - Digna Carolina Pazmiño Echanique', 200, 0, '93', NULL, 0, 0, 44, NULL, NULL, 88, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 94 - Digna Carolina Pazmiño Echanique', 0, 0, '94', NULL, 135, 0, 45, NULL, NULL, 89, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Factura de venta 94 - Digna Carolina Pazmiño Echanique', 135, 0, '94', NULL, 0, 0, 45, NULL, NULL, 90, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Cobro Factura de venta 94 - Digna Carolina Pazmiño Echanique', 0, 0, '94', NULL, 135, 0, 46, NULL, NULL, 91, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 94 - Digna Carolina Pazmiño Echanique', 135, 0, '94', NULL, 0, 0, 46, NULL, NULL, 92, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 95 - Caty Quevedo', 0, 0, '95', NULL, 150, 0, 47, NULL, NULL, 93, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121014', 'Factura de venta 95 - Caty Quevedo', 150, 0, '95', NULL, 0, 0, 47, NULL, NULL, 94, 751, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121014', 'Cobro Factura de venta 95 - Caty Quevedo', 0, 0, '95', NULL, 150, 0, 48, NULL, NULL, 95, 751, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 95 - Caty Quevedo', 150, 0, '95', NULL, 0, 0, 48, NULL, NULL, 96, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 96 - WANG ZHOUFU', 0, 0, '96', NULL, 250, 0, 49, NULL, NULL, 97, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 96 - WANG ZHOUFU', 250, 0, '96', NULL, 0, 0, 49, NULL, NULL, 98, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 96 - WANG ZHOUFU', 0, 0, '96', NULL, 250, 0, 50, NULL, NULL, 99, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 96 - WANG ZHOUFU', 250, 0, '96', NULL, 0, 0, 50, NULL, NULL, 100, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 97 - IKES S.A.', 0, 0, '97', NULL, 170.1, 0, 51, NULL, NULL, 101, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Factura de venta 97 - IKES S.A.', 170.1, 0, '97', NULL, 0, 0, 51, NULL, NULL, 102, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Cobro Factura de venta 97 - IKES S.A.', 0, 0, '97', NULL, 170.1, 0, 52, NULL, NULL, 103, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 97 - IKES S.A.', 170.1, 0, '97', NULL, 0, 0, 52, NULL, NULL, 104, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 98 - DISERPRO-EC S.A.S.', 0, 0, '98', NULL, 43.48, 0, 55, NULL, NULL, 109, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Factura de venta 98 - DISERPRO-EC S.A.S.', 43.48, 0, '98', NULL, 0, 0, 55, NULL, NULL, 110, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Cobro Factura de venta 98 - DISERPRO-EC S.A.S.', 0, 0, '98', NULL, 43.48, 0, 56, NULL, NULL, 111, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 98 - DISERPRO-EC S.A.S.', 43.48, 0, '98', NULL, 0, 0, 56, NULL, NULL, 112, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 99 - INGEHISA CIA LTDA', 0, 0, '99', NULL, 30, 0, 57, NULL, NULL, 113, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 99 - INGEHISA CIA LTDA', 30, 0, '99', NULL, 0, 0, 57, NULL, NULL, 114, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 99 - INGEHISA CIA LTDA', 0, 0, '99', NULL, 30, 0, 58, NULL, NULL, 115, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 99 - INGEHISA CIA LTDA', 30, 0, '99', NULL, 0, 0, 58, NULL, NULL, 116, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 100 - IKES S.A.', 0, 0, '100', NULL, 170.1, 0, 59, NULL, NULL, 117, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Factura de venta 100 - IKES S.A.', 170.1, 0, '100', NULL, 0, 0, 59, NULL, NULL, 118, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Cobro Factura de venta 100 - IKES S.A.', 0, 0, '100', NULL, 170.1, 0, 60, NULL, NULL, 119, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 100 - IKES S.A.', 170.1, 0, '100', NULL, 0, 0, 60, NULL, NULL, 120, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 101 - WANG ZHOUFU', 0, 0, '101', NULL, 250, 0, 61, NULL, NULL, 121, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 101 - WANG ZHOUFU', 250, 0, '101', NULL, 0, 0, 61, NULL, NULL, 122, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 101 - WANG ZHOUFU', 0, 0, '101', NULL, 250, 0, 62, NULL, NULL, 123, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 101 - WANG ZHOUFU', 250, 0, '101', NULL, 0, 0, 62, NULL, NULL, 124, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 102 - FLOMAC M&CS S.A.S.', 0, 0, '102', NULL, 89, 0, 63, NULL, NULL, 125, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121016', 'Factura de venta 102 - FLOMAC M&CS S.A.S.', 89, 0, '102', NULL, 0, 0, 63, NULL, NULL, 126, 753, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121016', 'Cobro Factura de venta 102 - FLOMAC M&CS S.A.S.', 0, 0, '102', NULL, 89, 0, 64, NULL, NULL, 127, 753, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 102 - FLOMAC M&CS S.A.S.', 89, 0, '102', NULL, 0, 0, 64, NULL, NULL, 128, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 103 - DISERPRO-EC S.A.S.', 0, 0, '103', NULL, 180, 0, 65, NULL, NULL, 129, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Factura de venta 103 - DISERPRO-EC S.A.S.', 180, 0, '103', NULL, 0, 0, 65, NULL, NULL, 130, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Cobro Factura de venta 103 - DISERPRO-EC S.A.S.', 0, 0, '103', NULL, 180, 0, 66, NULL, NULL, 131, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 103 - DISERPRO-EC S.A.S.', 180, 0, '103', NULL, 0, 0, 66, NULL, NULL, 132, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 104 - DISIBIS S.A.', 0, 0, '104', NULL, 45, 0, 67, NULL, NULL, 133, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Factura de venta 104 - DISIBIS S.A.', 45, 0, '104', NULL, 0, 0, 67, NULL, NULL, 134, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Cobro Factura de venta 104 - DISIBIS S.A.', 0, 0, '104', NULL, 45, 0, 68, NULL, NULL, 135, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 104 - DISIBIS S.A.', 45, 0, '104', NULL, 0, 0, 68, NULL, NULL, 136, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 105 - WANG ZHOUFU', 0, 0, '105', NULL, 250, 0, 69, NULL, NULL, 137, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 105 - WANG ZHOUFU', 250, 0, '105', NULL, 0, 0, 69, NULL, NULL, 138, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 105 - WANG ZHOUFU', 0, 0, '105', NULL, 250, 0, 70, NULL, NULL, 139, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 105 - WANG ZHOUFU', 250, 0, '105', NULL, 0, 0, 70, NULL, NULL, 140, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 106 - IKES S.A.', 0, 0, '106', NULL, 170.1, 0, 71, NULL, NULL, 141, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Factura de venta 106 - IKES S.A.', 170.1, 0, '106', NULL, 0, 0, 71, NULL, NULL, 142, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121002', 'Cobro Factura de venta 106 - IKES S.A.', 0, 0, '106', NULL, 170.1, 0, 72, NULL, NULL, 143, 739, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 106 - IKES S.A.', 170.1, 0, '106', NULL, 0, 0, 72, NULL, NULL, 144, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 107 - DISIBIS S.A.', 0, 0, '107', NULL, 250.01, 0, 73, NULL, NULL, 145, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Factura de venta 107 - DISIBIS S.A.', 250.01, 0, '107', NULL, 0, 0, 73, NULL, NULL, 146, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Cobro Factura de venta 107 - DISIBIS S.A.', 0, 0, '107', NULL, 250.01, 0, 74, NULL, NULL, 147, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 107 - DISIBIS S.A.', 250.01, 0, '107', NULL, 0, 0, 74, NULL, NULL, 148, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 108 - Digna Carolina Pazmiño Echanique', 0, 0, '108', NULL, 405, 0, 75, NULL, NULL, 149, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Factura de venta 108 - Digna Carolina Pazmiño Echanique', 405, 0, '108', NULL, 0, 0, 75, NULL, NULL, 150, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Cobro Factura de venta 108 - Digna Carolina Pazmiño Echanique', 0, 0, '108', NULL, 405, 0, 76, NULL, NULL, 151, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 108 - Digna Carolina Pazmiño Echanique', 405, 0, '108', NULL, 0, 0, 76, NULL, NULL, 152, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 109 - DISIBIS S.A.', 0, 0, '109', NULL, 225, 0, 77, NULL, NULL, 153, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Factura de venta 109 - DISIBIS S.A.', 225, 0, '109', NULL, 0, 0, 77, NULL, NULL, 154, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Cobro Factura de venta 109 - DISIBIS S.A.', 0, 0, '109', NULL, 225, 0, 78, NULL, NULL, 155, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 109 - DISIBIS S.A.', 225, 0, '109', NULL, 0, 0, 78, NULL, NULL, 156, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 110 - DISERPRO-EC S.A.S.', 0, 0, '110', NULL, 180, 0, 79, NULL, NULL, 157, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Factura de venta 110 - DISERPRO-EC S.A.S.', 180, 0, '110', NULL, 0, 0, 79, NULL, NULL, 158, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Cobro Factura de venta 110 - DISERPRO-EC S.A.S.', 0, 0, '110', NULL, 180, 0, 80, NULL, NULL, 159, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 110 - DISERPRO-EC S.A.S.', 180, 0, '110', NULL, 0, 0, 80, NULL, NULL, 160, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 112 - WANG ZHOUFU', 0, 0, '112', NULL, 250, 0, 83, NULL, NULL, 165, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 112 - WANG ZHOUFU', 250, 0, '112', NULL, 0, 0, 83, NULL, NULL, 166, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 112 - WANG ZHOUFU', 0, 0, '112', NULL, 250, 0, 84, NULL, NULL, 167, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 112 - WANG ZHOUFU', 250, 0, '112', NULL, 0, 0, 84, NULL, NULL, 168, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 111 - ZHONG PEIZHEN', 0, 0, '111', NULL, 250, 0, 85, NULL, NULL, 169, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121017', 'Factura de venta 111 - ZHONG PEIZHEN', 250, 0, '111', NULL, 0, 0, 85, NULL, NULL, 170, 754, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121017', 'Cobro Factura de venta 111 - ZHONG PEIZHEN', 0, 0, '111', NULL, 250, 0, 86, NULL, NULL, 171, 754, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 111 - ZHONG PEIZHEN', 250, 0, '111', NULL, 0, 0, 86, NULL, NULL, 172, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 113 - DISIBIS S.A.', 0, 0, '113', NULL, 45, 0, 89, NULL, NULL, 177, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Factura de venta 113 - DISIBIS S.A.', 45, 0, '113', NULL, 0, 0, 89, NULL, NULL, 178, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Cobro Factura de venta 113 - DISIBIS S.A.', 0, 0, '113', NULL, 45, 0, 90, NULL, NULL, 179, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 113 - DISIBIS S.A.', 45, 0, '113', NULL, 0, 0, 90, NULL, NULL, 180, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 114 - ZHONG PEIZHEN', 0, 0, '114', NULL, 45, 0, 91, NULL, NULL, 181, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121017', 'Factura de venta 114 - ZHONG PEIZHEN', 45, 0, '114', NULL, 0, 0, 91, NULL, NULL, 182, 754, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121017', 'Cobro Factura de venta 114 - ZHONG PEIZHEN', 0, 0, '114', NULL, 45, 0, 92, NULL, NULL, 183, 754, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 114 - ZHONG PEIZHEN', 45, 0, '114', NULL, 0, 0, 92, NULL, NULL, 184, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 115 - WANG ZHOUFU', 0, 0, '115', NULL, 250, 0, 93, NULL, NULL, 185, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 115 - WANG ZHOUFU', 250, 0, '115', NULL, 0, 0, 93, NULL, NULL, 186, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 115 - WANG ZHOUFU', 0, 0, '115', NULL, 250, 0, 94, NULL, NULL, 187, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 115 - WANG ZHOUFU', 250, 0, '115', NULL, 0, 0, 94, NULL, NULL, 188, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 116 - ZHONG PEIZHEN', 0, 0, '116', NULL, 250, 0, 95, NULL, NULL, 189, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121017', 'Factura de venta 116 - ZHONG PEIZHEN', 250, 0, '116', NULL, 0, 0, 95, NULL, NULL, 190, 754, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121017', 'Cobro Factura de venta 116 - ZHONG PEIZHEN', 0, 0, '116', NULL, 250, 0, 96, NULL, NULL, 191, 754, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 116 - ZHONG PEIZHEN', 250, 0, '116', NULL, 0, 0, 96, NULL, NULL, 192, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 117 - AUTOCHECO R. Q. S.A.', 0, 0, '117', NULL, 128.75, 0, 99, NULL, NULL, 197, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121019', 'Factura de venta 117 - AUTOCHECO R. Q. S.A.', 128.75, 0, '117', NULL, 0, 0, 99, NULL, NULL, 198, 756, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121019', 'Cobro Factura de venta 117 - AUTOCHECO R. Q. S.A.', 0, 0, '117', NULL, 128.75, 0, 100, NULL, NULL, 199, 756, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 117 - AUTOCHECO R. Q. S.A.', 128.75, 0, '117', NULL, 0, 0, 100, NULL, NULL, 200, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 118 - Digna Carolina Pazmiño Echanique', 0, 0, '118', NULL, 135, 0, 101, NULL, NULL, 201, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Factura de venta 118 - Digna Carolina Pazmiño Echanique', 135, 0, '118', NULL, 0, 0, 101, NULL, NULL, 202, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121013', 'Cobro Factura de venta 118 - Digna Carolina Pazmiño Echanique', 0, 0, '118', NULL, 135, 0, 102, NULL, NULL, 203, 750, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 118 - Digna Carolina Pazmiño Echanique', 135, 0, '118', NULL, 0, 0, 102, NULL, NULL, 204, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(136, '0992829575001', '1121006', 'USD', 'B', '2133003', 'Factura de venta 119 - INGEHISA CIA LTDA', 0, 0, '119', 119, 20.4, 0, 103, NULL, 743, 205, 428, 15, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 119 - INGEHISA CIA LTDA', 0, 0, '119', NULL, 246, 0, 103, NULL, NULL, 206, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 119 - INGEHISA CIA LTDA', 266.4, 0, '119', NULL, 0, 0, 103, NULL, NULL, 207, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 119 - INGEHISA CIA LTDA', 0, 0, '119', NULL, 266.4, 0, 104, NULL, NULL, 208, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 119 - INGEHISA CIA LTDA', 266.4, 0, '119', NULL, 0, 0, 104, NULL, NULL, 209, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 120 - Karen Carriel', 0, 0, '120', NULL, 40, 0, 105, NULL, NULL, 210, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121008', 'Factura de venta 120 - Karen Carriel', 40, 0, '120', NULL, 0, 0, 105, NULL, NULL, 211, 745, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121008', 'Cobro Factura de venta 120 - Karen Carriel', 0, 0, '120', NULL, 40, 0, 106, NULL, NULL, 212, 745, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 120 - Karen Carriel', 40, 0, '120', NULL, 0, 0, 106, NULL, NULL, 213, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 121 - DISERPRO-EC S.A.S.', 0, 0, '121', NULL, 180, 0, 107, NULL, NULL, 214, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Factura de venta 121 - DISERPRO-EC S.A.S.', 180, 0, '121', NULL, 0, 0, 107, NULL, NULL, 215, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121015', 'Cobro Factura de venta 121 - DISERPRO-EC S.A.S.', 0, 0, '121', NULL, 180, 0, 108, NULL, NULL, 216, 752, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 121 - DISERPRO-EC S.A.S.', 180, 0, '121', NULL, 0, 0, 108, NULL, NULL, 217, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 122 - WANG ZHOUFU', 0, 0, '122', NULL, 250, 0, 109, NULL, NULL, 218, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Factura de venta 122 - WANG ZHOUFU', 250, 0, '122', NULL, 0, 0, 109, NULL, NULL, 219, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121003', 'Cobro Factura de venta 122 - WANG ZHOUFU', 0, 0, '122', NULL, 250, 0, 110, NULL, NULL, 220, 740, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 122 - WANG ZHOUFU', 250, 0, '122', NULL, 0, 0, 110, NULL, NULL, 221, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 123 - INGEHISA CIA LTDA', 0, 0, '123', NULL, 45, 0, 111, NULL, NULL, 222, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Factura de venta 123 - INGEHISA CIA LTDA', 45, 0, '123', NULL, 0, 0, 111, NULL, NULL, 223, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121006', 'Cobro Factura de venta 123 - INGEHISA CIA LTDA', 0, 0, '123', NULL, 45, 0, 112, NULL, NULL, 224, 743, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 123 - INGEHISA CIA LTDA', 45, 0, '123', NULL, 0, 0, 112, NULL, NULL, 225, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 124 - PUBLIC MENDEZ', 0, 0, '124', NULL, 94.76, 0, 113, NULL, NULL, 226, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121020', 'Factura de venta 124 - PUBLIC MENDEZ', 94.76, 0, '124', NULL, 0, 0, 113, NULL, NULL, 227, 757, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121020', 'Cobro Factura de venta 124 - PUBLIC MENDEZ', 0, 0, '124', NULL, 94.76, 0, 114, NULL, NULL, 228, 757, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 124 - PUBLIC MENDEZ', 94.76, 0, '124', NULL, 0, 0, 114, NULL, NULL, 229, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 125 - AUTOCHECO R. Q. S.A.', 0, 0, '125', NULL, 176, 0, 115, NULL, NULL, 230, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121019', 'Factura de venta 125 - AUTOCHECO R. Q. S.A.', 176, 0, '125', NULL, 0, 0, 115, NULL, NULL, 231, 756, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121019', 'Cobro Factura de venta 125 - AUTOCHECO R. Q. S.A.', 0, 0, '125', NULL, 176, 0, 116, NULL, NULL, 232, 756, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 125 - AUTOCHECO R. Q. S.A.', 176, 0, '125', NULL, 0, 0, 116, NULL, NULL, 233, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 126 - TCPLUMESAL S. A.', 0, 0, '126', NULL, 155, 0, 117, NULL, NULL, 234, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121009', 'Factura de venta 126 - TCPLUMESAL S. A.', 155, 0, '126', NULL, 0, 0, 117, NULL, NULL, 235, 746, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121009', 'Cobro Factura de venta 126 - TCPLUMESAL S. A.', 0, 0, '126', NULL, 155, 0, 118, NULL, NULL, 236, 746, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 126 - TCPLUMESAL S. A.', 155, 0, '126', NULL, 0, 0, 118, NULL, NULL, 237, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '4110001', 'Factura de venta 127 - DISIBIS S.A.', 0, 0, '127', NULL, 60, 0, 119, NULL, NULL, 238, 586, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Factura de venta 127 - DISIBIS S.A.', 60, 0, '127', NULL, 0, 0, 119, NULL, NULL, 239, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1121007', 'Cobro Factura de venta 127 - DISIBIS S.A.', 0, 0, '127', NULL, 60, 0, 120, NULL, NULL, 240, 744, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'B', '1111001', 'Cobro Factura de venta 127 - DISIBIS S.A.', 60, 0, '127', NULL, 0, 0, 120, NULL, NULL, 241, 370, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 128 - AUTOCHECO R. Q. S.A.', 0, 0, '128', NULL, 176, 0, 123, NULL, NULL, 246, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Factura de venta 128 - AUTOCHECO R. Q. S.A.', 176, 0, '128', NULL, 0, 0, 123, NULL, NULL, 247, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Cobro Factura de venta 128 - AUTOCHECO R. Q. S.A.', 0, 0, '128', NULL, 176, 0, 124, NULL, NULL, 248, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 128 - AUTOCHECO R. Q. S.A.', 176, 0, '128', NULL, 0, 0, 124, NULL, NULL, 249, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 129 - AUTOCHECO R. Q. S.A.', 0, 0, '129', NULL, 40.25, 0, 125, NULL, NULL, 250, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Factura de venta 129 - AUTOCHECO R. Q. S.A.', 40.25, 0, '129', NULL, 0, 0, 125, NULL, NULL, 251, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Cobro Factura de venta 129 - AUTOCHECO R. Q. S.A.', 0, 0, '129', NULL, 40.25, 0, 126, NULL, NULL, 252, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 129 - AUTOCHECO R. Q. S.A.', 40.25, 0, '129', NULL, 0, 0, 126, NULL, NULL, 253, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 130 - DISIBIS S.A.', 0, 0, '130', NULL, 258.3, 0, 131, NULL, NULL, 262, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Factura de venta 130 - DISIBIS S.A.', 258.3, 0, '130', NULL, 0, 0, 131, NULL, NULL, 263, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Cobro Factura de venta 130 - DISIBIS S.A.', 0, 0, '130', NULL, 258.3, 0, 132, NULL, NULL, 264, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 130 - DISIBIS S.A.', 258.3, 0, '130', NULL, 0, 0, 132, NULL, NULL, 265, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 131 - IKES S.A.', 0, 0, '131', NULL, 125.78, 0, 135, NULL, NULL, 270, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121002', 'Factura de venta 131 - IKES S.A.', 125.78, 0, '131', NULL, 0, 0, 135, NULL, NULL, 271, 763, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121002', 'Cobro Factura de venta 131 - IKES S.A.', 0, 0, '131', NULL, 125.78, 0, 136, NULL, NULL, 272, 763, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 131 - IKES S.A.', 125.78, 0, '131', NULL, 0, 0, 136, NULL, NULL, 273, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 132 - TCPLUMESAL S. A.', 0, 0, '132', NULL, 289.99, 0, 137, NULL, NULL, 274, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121009', 'Factura de venta 132 - TCPLUMESAL S. A.', 289.99, 0, '132', NULL, 0, 0, 137, NULL, NULL, 275, 770, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121009', 'Cobro Factura de venta 132 - TCPLUMESAL S. A.', 0, 0, '132', NULL, 289.99, 0, 138, NULL, NULL, 276, 770, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 132 - TCPLUMESAL S. A.', 289.99, 0, '132', NULL, 0, 0, 138, NULL, NULL, 277, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 133 - WANG ZHOUFU', 0, 0, '133', NULL, 250, 0, 139, NULL, NULL, 278, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 133 - WANG ZHOUFU', 250, 0, '133', NULL, 0, 0, 139, NULL, NULL, 279, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 133 - WANG ZHOUFU', 0, 0, '133', NULL, 250, 0, 140, NULL, NULL, 280, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 133 - WANG ZHOUFU', 250, 0, '133', NULL, 0, 0, 140, NULL, NULL, 281, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 134 - WANG ZHOUFU', 0, 0, '134', NULL, 225, 0, 141, NULL, NULL, 282, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 134 - WANG ZHOUFU', 225, 0, '134', NULL, 0, 0, 141, NULL, NULL, 283, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 134 - WANG ZHOUFU', 0, 0, '134', NULL, 225, 0, 142, NULL, NULL, 284, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 134 - WANG ZHOUFU', 225, 0, '134', NULL, 0, 0, 142, NULL, NULL, 285, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 135 - AUTOCHECO R. Q. S.A.', 0, 0, '135', NULL, 211.88, 0, 143, NULL, NULL, 286, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Factura de venta 135 - AUTOCHECO R. Q. S.A.', 211.88, 0, '135', NULL, 0, 0, 143, NULL, NULL, 287, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Cobro Factura de venta 135 - AUTOCHECO R. Q. S.A.', 0, 0, '135', NULL, 211.88, 0, 144, NULL, NULL, 288, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 135 - AUTOCHECO R. Q. S.A.', 211.88, 0, '135', NULL, 0, 0, 144, NULL, NULL, 289, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 136 - TATIANA LISBETH MORALES MACIAS', 0, 0, '136', NULL, 640, 0, 145, NULL, NULL, 290, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121021', 'Factura de venta 136 - TATIANA LISBETH MORALES MACIAS', 640, 0, '136', NULL, 0, 0, 145, NULL, NULL, 291, 1146, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121021', 'Cobro Factura de venta 136 - TATIANA LISBETH MORALES MACIAS', 0, 0, '136', NULL, 640, 0, 146, NULL, NULL, 292, 1146, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 136 - TATIANA LISBETH MORALES MACIAS', 640, 0, '136', NULL, 0, 0, 146, NULL, NULL, 293, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 137 - Jesús del Rocío Holguín Macías', 0, 0, '137', NULL, 283.25, 0, 147, NULL, NULL, 294, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121005', 'Factura de venta 137 - Jesús del Rocío Holguín Macías', 283.25, 0, '137', NULL, 0, 0, 147, NULL, NULL, 295, 766, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121005', 'Cobro Factura de venta 137 - Jesús del Rocío Holguín Macías', 0, 0, '137', NULL, 283.25, 0, 148, NULL, NULL, 296, 766, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 137 - Jesús del Rocío Holguín Macías', 283.25, 0, '137', NULL, 0, 0, 148, NULL, NULL, 297, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 138 - WANG ZHOUFU', 0, 0, '138', NULL, 250, 0, 149, NULL, NULL, 298, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 138 - WANG ZHOUFU', 250, 0, '138', NULL, 0, 0, 149, NULL, NULL, 299, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 138 - WANG ZHOUFU', 0, 0, '138', NULL, 250, 0, 150, NULL, NULL, 300, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 138 - WANG ZHOUFU', 250, 0, '138', NULL, 0, 0, 150, NULL, NULL, 301, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 139 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 0, 0, '139', NULL, 430, 0, 151, NULL, NULL, 302, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121022', 'Factura de venta 139 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 430, 0, '139', NULL, 0, 0, 151, NULL, NULL, 303, 1147, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121022', 'Cobro Factura de venta 139 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 0, 0, '139', NULL, 430, 0, 152, NULL, NULL, 304, 1147, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 139 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 430, 0, '139', NULL, 0, 0, 152, NULL, NULL, 305, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 140 - Freddy Miranda', 0, 0, '140', NULL, 140, 0, 155, NULL, NULL, 311, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121023', 'Factura de venta 140 - Freddy Miranda', 140, 0, '140', NULL, 0, 0, 155, NULL, NULL, 312, 1148, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121023', 'Cobro Factura de venta 140 - Freddy Miranda', 0, 0, '140', NULL, 140, 0, 156, NULL, NULL, 313, 1148, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 140 - Freddy Miranda', 140, 0, '140', NULL, 0, 0, 156, NULL, NULL, 314, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 141 - Digna Carolina Pazmiño Echanique', 0, 0, '141', NULL, 135, 0, 157, NULL, NULL, 315, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121013', 'Factura de venta 141 - Digna Carolina Pazmiño Echanique', 135, 0, '141', NULL, 0, 0, 157, NULL, NULL, 316, 774, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121013', 'Cobro Factura de venta 141 - Digna Carolina Pazmiño Echanique', 0, 0, '141', NULL, 135, 0, 158, NULL, NULL, 317, 774, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 141 - Digna Carolina Pazmiño Echanique', 135, 0, '141', NULL, 0, 0, 158, NULL, NULL, 318, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 142 - DISIBIS S.A.', 0, 0, '142', NULL, 60, 0, 159, NULL, NULL, 319, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Factura de venta 142 - DISIBIS S.A.', 60, 0, '142', NULL, 0, 0, 159, NULL, NULL, 320, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Cobro Factura de venta 142 - DISIBIS S.A.', 0, 0, '142', NULL, 60, 0, 160, NULL, NULL, 321, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 142 - DISIBIS S.A.', 60, 0, '142', NULL, 0, 0, 160, NULL, NULL, 322, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 143 - TATIANA LISBETH MORALES MACIAS', 0, 0, '143', NULL, 320, 0, 161, NULL, NULL, 323, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121021', 'Factura de venta 143 - TATIANA LISBETH MORALES MACIAS', 320, 0, '143', NULL, 0, 0, 161, NULL, NULL, 324, 1146, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121021', 'Cobro Factura de venta 143 - TATIANA LISBETH MORALES MACIAS', 0, 0, '143', NULL, 320, 0, 162, NULL, NULL, 325, 1146, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 143 - TATIANA LISBETH MORALES MACIAS', 320, 0, '143', NULL, 0, 0, 162, NULL, NULL, 326, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 144 - Katherine Leonor Morán Zavala', 0, 0, '144', NULL, 1015, 0, 163, NULL, NULL, 327, 993, 0, 0, 0, 1.129, 'Factura de cliente');
INSERT INTO `co_partidas` (`baseimponible`, `cifnif`, `codcontrapartida`, `coddivisa`, `codserie`, `codsubcuenta`, `concepto`, `debe`, `debeme`, `documento`, `factura`, `haber`, `haberme`, `idasiento`, `idconcepto`, `idcontrapartida`, `idpartida`, `idsubcuenta`, `iva`, `punteada`, `recargo`, `tasaconv`, `tipodocumento`) VALUES
(0, '', NULL, 'USD', 'C', '1121024', 'Factura de venta 144 - Katherine Leonor Morán Zavala', 1015, 0, '144', NULL, 0, 0, 163, NULL, NULL, 328, 1149, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121024', 'Cobro Factura de venta 144 - Katherine Leonor Morán Zavala', 0, 0, '144', NULL, 1015, 0, 164, NULL, NULL, 329, 1149, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 144 - Katherine Leonor Morán Zavala', 1015, 0, '144', NULL, 0, 0, 164, NULL, NULL, 330, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 145 - ZHONG PEIZHEN', 0, 0, '145', NULL, 2400, 0, 165, NULL, NULL, 331, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121017', 'Factura de venta 145 - ZHONG PEIZHEN', 2400, 0, '145', NULL, 0, 0, 165, NULL, NULL, 332, 778, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121017', 'Cobro Factura de venta 145 - ZHONG PEIZHEN', 0, 0, '145', NULL, 2400, 0, 166, NULL, NULL, 333, 778, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 145 - ZHONG PEIZHEN', 2400, 0, '145', NULL, 0, 0, 166, NULL, NULL, 334, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 146 - Broom Ecuador S.A.', 0, 0, '146', NULL, 120, 0, 167, NULL, NULL, 335, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121012', 'Factura de venta 146 - Broom Ecuador S.A.', 120, 0, '146', NULL, 0, 0, 167, NULL, NULL, 336, 773, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121012', 'Cobro Factura de venta 146 - Broom Ecuador S.A.', 0, 0, '146', NULL, 120, 0, 168, NULL, NULL, 337, 773, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 146 - Broom Ecuador S.A.', 120, 0, '146', NULL, 0, 0, 168, NULL, NULL, 338, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 147 - INGEHISA CIA LTDA', 0, 0, '147', NULL, 30, 0, 169, NULL, NULL, 339, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Factura de venta 147 - INGEHISA CIA LTDA', 30, 0, '147', NULL, 0, 0, 169, NULL, NULL, 340, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Cobro Factura de venta 147 - INGEHISA CIA LTDA', 0, 0, '147', NULL, 30, 0, 170, NULL, NULL, 341, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 147 - INGEHISA CIA LTDA', 30, 0, '147', NULL, 0, 0, 170, NULL, NULL, 342, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 148 - Katherine Leonor Morán Zavala', 0, 0, '148', NULL, 50, 0, 171, NULL, NULL, 343, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121024', 'Factura de venta 148 - Katherine Leonor Morán Zavala', 50, 0, '148', NULL, 0, 0, 171, NULL, NULL, 344, 1149, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121024', 'Cobro Factura de venta 148 - Katherine Leonor Morán Zavala', 0, 0, '148', NULL, 50, 0, 172, NULL, NULL, 345, 1149, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 148 - Katherine Leonor Morán Zavala', 50, 0, '148', NULL, 0, 0, 172, NULL, NULL, 346, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 149 - WANG ZHOUFU', 0, 0, '149', NULL, 250, 0, 173, NULL, NULL, 347, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 149 - WANG ZHOUFU', 250, 0, '149', NULL, 0, 0, 173, NULL, NULL, 348, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 149 - WANG ZHOUFU', 0, 0, '149', NULL, 250, 0, 174, NULL, NULL, 349, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 149 - WANG ZHOUFU', 250, 0, '149', NULL, 0, 0, 174, NULL, NULL, 350, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 150 - Carmen Medranda León', 0, 0, '150', NULL, 55, 0, 175, NULL, NULL, 351, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121025', 'Factura de venta 150 - Carmen Medranda León', 55, 0, '150', NULL, 0, 0, 175, NULL, NULL, 352, 1150, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121025', 'Cobro Factura de venta 150 - Carmen Medranda León', 0, 0, '150', NULL, 55, 0, 176, NULL, NULL, 353, 1150, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 150 - Carmen Medranda León', 55, 0, '150', NULL, 0, 0, 176, NULL, NULL, 354, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 151 - Digna Carolina Pazmiño Echanique', 0, 0, '151', NULL, 135, 0, 177, NULL, NULL, 355, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121013', 'Factura de venta 151 - Digna Carolina Pazmiño Echanique', 135, 0, '151', NULL, 0, 0, 177, NULL, NULL, 356, 774, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121013', 'Cobro Factura de venta 151 - Digna Carolina Pazmiño Echanique', 0, 0, '151', NULL, 135, 0, 178, NULL, NULL, 357, 774, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 151 - Digna Carolina Pazmiño Echanique', 135, 0, '151', NULL, 0, 0, 178, NULL, NULL, 358, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 152 - WANG ZHOUFU', 0, 0, '152', NULL, 250, 0, 181, NULL, NULL, 363, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 152 - WANG ZHOUFU', 250, 0, '152', NULL, 0, 0, 181, NULL, NULL, 364, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 152 - WANG ZHOUFU', 0, 0, '152', NULL, 250, 0, 182, NULL, NULL, 365, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 152 - WANG ZHOUFU', 250, 0, '152', NULL, 0, 0, 182, NULL, NULL, 366, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 153 - ZHONG PEIZHEN', 0, 0, '153', NULL, 17, 0, 183, NULL, NULL, 367, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121017', 'Factura de venta 153 - ZHONG PEIZHEN', 17, 0, '153', NULL, 0, 0, 183, NULL, NULL, 368, 778, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121017', 'Cobro Factura de venta 153 - ZHONG PEIZHEN', 0, 0, '153', NULL, 17, 0, 184, NULL, NULL, 369, 778, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 153 - ZHONG PEIZHEN', 17, 0, '153', NULL, 0, 0, 184, NULL, NULL, 370, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 154 - JUSTO BAUTISTA MORÁN ZAVALA', 0, 0, '154', NULL, 60, 0, 185, NULL, NULL, 371, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121026', 'Factura de venta 154 - JUSTO BAUTISTA MORÁN ZAVALA', 60, 0, '154', NULL, 0, 0, 185, NULL, NULL, 372, 1151, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121026', 'Cobro Factura de venta 154 - JUSTO BAUTISTA MORÁN ZAVALA', 0, 0, '154', NULL, 60, 0, 186, NULL, NULL, 373, 1151, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 154 - JUSTO BAUTISTA MORÁN ZAVALA', 60, 0, '154', NULL, 0, 0, 186, NULL, NULL, 374, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 155 - INGEHISA CIA LTDA', 0, 0, '155', NULL, 40, 0, 187, NULL, NULL, 375, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Factura de venta 155 - INGEHISA CIA LTDA', 40, 0, '155', NULL, 0, 0, 187, NULL, NULL, 376, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Cobro Factura de venta 155 - INGEHISA CIA LTDA', 0, 0, '155', NULL, 40, 0, 188, NULL, NULL, 377, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 155 - INGEHISA CIA LTDA', 40, 0, '155', NULL, 0, 0, 188, NULL, NULL, 378, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 156 - JUSTO BAUTISTA MORÁN ZAVALA', 0, 0, '156', NULL, 60, 0, 189, NULL, NULL, 379, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121026', 'Factura de venta 156 - JUSTO BAUTISTA MORÁN ZAVALA', 60, 0, '156', NULL, 0, 0, 189, NULL, NULL, 380, 1151, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121026', 'Cobro Factura de venta 156 - JUSTO BAUTISTA MORÁN ZAVALA', 0, 0, '156', NULL, 60, 0, 190, NULL, NULL, 381, 1151, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 156 - JUSTO BAUTISTA MORÁN ZAVALA', 60, 0, '156', NULL, 0, 0, 190, NULL, NULL, 382, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 158 - INGEHISA CIA LTDA', 0, 0, '158', NULL, 83, 0, 193, NULL, NULL, 387, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Factura de venta 158 - INGEHISA CIA LTDA', 83, 0, '158', NULL, 0, 0, 193, NULL, NULL, 388, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Cobro Factura de venta 158 - INGEHISA CIA LTDA', 0, 0, '158', NULL, 83, 0, 194, NULL, NULL, 389, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 158 - INGEHISA CIA LTDA', 83, 0, '158', NULL, 0, 0, 194, NULL, NULL, 390, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(40, '2390050170001', '1121028', 'USD', 'C', '2133003', 'Factura de venta 159 - ABRILTRANS S.A.', 0, 0, '159', 159, 6, 0, 197, NULL, 1153, 396, 835, 15, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 159 - ABRILTRANS S.A.', 0, 0, '159', NULL, 40, 0, 197, NULL, NULL, 397, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121028', 'Factura de venta 159 - ABRILTRANS S.A.', 46, 0, '159', NULL, 0, 0, 197, NULL, NULL, 398, 1153, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121028', 'Cobro Factura de venta 159 - ABRILTRANS S.A.', 0, 0, '159', NULL, 46, 0, 198, NULL, NULL, 399, 1153, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 159 - ABRILTRANS S.A.', 46, 0, '159', NULL, 0, 0, 198, NULL, NULL, 400, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 160 - WANG ZHOUFU', 0, 0, '160', NULL, 298, 0, 199, NULL, NULL, 401, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 160 - WANG ZHOUFU', 298, 0, '160', NULL, 0, 0, 199, NULL, NULL, 402, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 160 - WANG ZHOUFU', 0, 0, '160', NULL, 298, 0, 200, NULL, NULL, 403, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 160 - WANG ZHOUFU', 298, 0, '160', NULL, 0, 0, 200, NULL, NULL, 404, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 161 - Caty Quevedo', 0, 0, '161', NULL, 150, 0, 201, NULL, NULL, 405, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121014', 'Factura de venta 161 - Caty Quevedo', 150, 0, '161', NULL, 0, 0, 201, NULL, NULL, 406, 775, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121014', 'Cobro Factura de venta 161 - Caty Quevedo', 0, 0, '161', NULL, 150, 0, 202, NULL, NULL, 407, 775, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 161 - Caty Quevedo', 150, 0, '161', NULL, 0, 0, 202, NULL, NULL, 408, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 157 - Broom Ecuador S.A.', 0, 0, '157', NULL, 345, 0, 203, NULL, NULL, 409, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121012', 'Factura de venta 157 - Broom Ecuador S.A.', 345, 0, '157', NULL, 0, 0, 203, NULL, NULL, 410, 773, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121012', 'Cobro Factura de venta 157 - Broom Ecuador S.A.', 0, 0, '157', NULL, 345, 0, 204, NULL, NULL, 411, 773, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 157 - Broom Ecuador S.A.', 345, 0, '157', NULL, 0, 0, 204, NULL, NULL, 412, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 162 - Broom Ecuador S.A.', 0, 0, '162', NULL, 345, 0, 205, NULL, NULL, 413, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121012', 'Factura de venta 162 - Broom Ecuador S.A.', 345, 0, '162', NULL, 0, 0, 205, NULL, NULL, 414, 773, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121012', 'Cobro Factura de venta 162 - Broom Ecuador S.A.', 0, 0, '162', NULL, 345, 0, 206, NULL, NULL, 415, 773, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 162 - Broom Ecuador S.A.', 345, 0, '162', NULL, 0, 0, 206, NULL, NULL, 416, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 163 - Instituto Tecnológico Life College', 0, 0, '163', NULL, 400, 0, 207, NULL, NULL, 417, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121029', 'Factura de venta 163 - Instituto Tecnológico Life College', 400, 0, '163', NULL, 0, 0, 207, NULL, NULL, 418, 1154, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121029', 'Cobro Factura de venta 163 - Instituto Tecnológico Life College', 0, 0, '163', NULL, 400, 0, 208, NULL, NULL, 419, 1154, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 163 - Instituto Tecnológico Life College', 400, 0, '163', NULL, 0, 0, 208, NULL, NULL, 420, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 164 - DISIBIS S.A.', 0, 0, '164', NULL, 250.01, 0, 209, NULL, NULL, 421, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Factura de venta 164 - DISIBIS S.A.', 250.01, 0, '164', NULL, 0, 0, 209, NULL, NULL, 422, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Cobro Factura de venta 164 - DISIBIS S.A.', 0, 0, '164', NULL, 250.01, 0, 210, NULL, NULL, 423, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 164 - DISIBIS S.A.', 250.01, 0, '164', NULL, 0, 0, 210, NULL, NULL, 424, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 165 - ZHONG PEIZHEN', 0, 0, '165', NULL, 150, 0, 211, NULL, NULL, 425, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121017', 'Factura de venta 165 - ZHONG PEIZHEN', 150, 0, '165', NULL, 0, 0, 211, NULL, NULL, 426, 778, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121017', 'Cobro Factura de venta 165 - ZHONG PEIZHEN', 0, 0, '165', NULL, 150, 0, 212, NULL, NULL, 427, 778, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 165 - ZHONG PEIZHEN', 150, 0, '165', NULL, 0, 0, 212, NULL, NULL, 428, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 166 - INGEHISA CIA LTDA', 0, 0, '166', NULL, 30, 0, 213, NULL, NULL, 429, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Factura de venta 166 - INGEHISA CIA LTDA', 30, 0, '166', NULL, 0, 0, 213, NULL, NULL, 430, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121006', 'Cobro Factura de venta 166 - INGEHISA CIA LTDA', 0, 0, '166', NULL, 30, 0, 214, NULL, NULL, 431, 767, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 166 - INGEHISA CIA LTDA', 30, 0, '166', NULL, 0, 0, 214, NULL, NULL, 432, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 167 - WANG ZHOUFU', 0, 0, '167', NULL, 400, 0, 215, NULL, NULL, 433, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 167 - WANG ZHOUFU', 400, 0, '167', NULL, 0, 0, 215, NULL, NULL, 434, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 167 - WANG ZHOUFU', 0, 0, '167', NULL, 400, 0, 216, NULL, NULL, 435, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 167 - WANG ZHOUFU', 400, 0, '167', NULL, 0, 0, 216, NULL, NULL, 436, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 168 - Digna Carolina Pazmiño Echanique', 0, 0, '168', NULL, 135, 0, 217, NULL, NULL, 437, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121013', 'Factura de venta 168 - Digna Carolina Pazmiño Echanique', 135, 0, '168', NULL, 0, 0, 217, NULL, NULL, 438, 774, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121013', 'Cobro Factura de venta 168 - Digna Carolina Pazmiño Echanique', 0, 0, '168', NULL, 135, 0, 218, NULL, NULL, 439, 774, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 168 - Digna Carolina Pazmiño Echanique', 135, 0, '168', NULL, 0, 0, 218, NULL, NULL, 440, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 169 - WANG ZHOUFU', 0, 0, '169', NULL, 250, 0, 219, NULL, NULL, 441, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 169 - WANG ZHOUFU', 250, 0, '169', NULL, 0, 0, 219, NULL, NULL, 442, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 169 - WANG ZHOUFU', 0, 0, '169', NULL, 250, 0, 220, NULL, NULL, 443, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 169 - WANG ZHOUFU', 250, 0, '169', NULL, 0, 0, 220, NULL, NULL, 444, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 170 - WANG ZHOUFU', 0, 0, '170', NULL, 510, 0, 221, NULL, NULL, 445, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 170 - WANG ZHOUFU', 510, 0, '170', NULL, 0, 0, 221, NULL, NULL, 446, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 170 - WANG ZHOUFU', 0, 0, '170', NULL, 510, 0, 222, NULL, NULL, 447, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 170 - WANG ZHOUFU', 510, 0, '170', NULL, 0, 0, 222, NULL, NULL, 448, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 171 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 0, 0, '171', NULL, 20, 0, 223, NULL, NULL, 449, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121022', 'Factura de venta 171 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 20, 0, '171', NULL, 0, 0, 223, NULL, NULL, 450, 1147, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121022', 'Cobro Factura de venta 171 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 0, 0, '171', NULL, 20, 0, 224, NULL, NULL, 451, 1147, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 171 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 20, 0, '171', NULL, 0, 0, 224, NULL, NULL, 452, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 172 - FLOMAC M&CS S.A.S.', 0, 0, '172', NULL, 82.5, 0, 225, NULL, NULL, 453, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121016', 'Factura de venta 172 - FLOMAC M&CS S.A.S.', 82.5, 0, '172', NULL, 0, 0, 225, NULL, NULL, 454, 777, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121016', 'Cobro Factura de venta 172 - FLOMAC M&CS S.A.S.', 0, 0, '172', NULL, 82.5, 0, 226, NULL, NULL, 455, 777, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 172 - FLOMAC M&CS S.A.S.', 82.5, 0, '172', NULL, 0, 0, 226, NULL, NULL, 456, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 173 - WANG ZHOUFU', 0, 0, '173', NULL, 89, 0, 227, NULL, NULL, 457, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 173 - WANG ZHOUFU', 89, 0, '173', NULL, 0, 0, 227, NULL, NULL, 458, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 173 - WANG ZHOUFU', 0, 0, '173', NULL, 89, 0, 228, NULL, NULL, 459, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 173 - WANG ZHOUFU', 89, 0, '173', NULL, 0, 0, 228, NULL, NULL, 460, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 174 - DISIBIS S.A.', 0, 0, '174', NULL, 95, 0, 233, NULL, NULL, 469, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Factura de venta 174 - DISIBIS S.A.', 95, 0, '174', NULL, 0, 0, 233, NULL, NULL, 470, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121007', 'Cobro Factura de venta 174 - DISIBIS S.A.', 0, 0, '174', NULL, 95, 0, 234, NULL, NULL, 471, 768, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 174 - DISIBIS S.A.', 95, 0, '174', NULL, 0, 0, 234, NULL, NULL, 472, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 175 - WANG ZHOUFU', 0, 0, '175', NULL, 564, 0, 235, NULL, NULL, 473, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Factura de venta 175 - WANG ZHOUFU', 564, 0, '175', NULL, 0, 0, 235, NULL, NULL, 474, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121003', 'Cobro Factura de venta 175 - WANG ZHOUFU', 0, 0, '175', NULL, 564, 0, 236, NULL, NULL, 475, 764, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 175 - WANG ZHOUFU', 564, 0, '175', NULL, 0, 0, 236, NULL, NULL, 476, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 176 - AUTOCHECO R. Q. S.A.', 0, 0, '176', NULL, 40, 0, 237, NULL, NULL, 477, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Factura de venta 176 - AUTOCHECO R. Q. S.A.', 40, 0, '176', NULL, 0, 0, 237, NULL, NULL, 478, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121019', 'Cobro Factura de venta 176 - AUTOCHECO R. Q. S.A.', 0, 0, '176', NULL, 40, 0, 238, NULL, NULL, 479, 780, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 176 - AUTOCHECO R. Q. S.A.', 40, 0, '176', NULL, 0, 0, 238, NULL, NULL, 480, 758, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '4110001', 'Factura de venta 177 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 0, 0, '177', NULL, 400, 0, 239, NULL, NULL, 481, 993, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121022', 'Factura de venta 177 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 400, 0, '177', NULL, 0, 0, 239, NULL, NULL, 482, 1147, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1121022', 'Cobro Factura de venta 177 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 0, 0, '177', NULL, 400, 0, 240, NULL, NULL, 483, 1147, 0, 0, 0, 1.129, 'Factura de cliente'),
(0, '', NULL, 'USD', 'C', '1111001', 'Cobro Factura de venta 177 - Ingeniería y Diseño Integral de Proyectos AP PROJECT', 400, 0, '177', NULL, 0, 0, 240, NULL, NULL, 484, 758, 0, 0, 0, 1.129, 'Factura de cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_regiva`
--

CREATE TABLE `co_regiva` (
  `codejercicio` varchar(4) NOT NULL,
  `codsubcuentaacr` varchar(15) DEFAULT NULL,
  `codsubcuentadeu` varchar(15) DEFAULT NULL,
  `fechaasiento` date NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idregiva` int(11) NOT NULL,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `periodo` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_secuencias`
--

CREATE TABLE `co_secuencias` (
  `codejercicio` varchar(4) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idsecuencia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_secuencias`
--

INSERT INTO `co_secuencias` (`codejercicio`, `descripcion`, `idsecuencia`, `nombre`, `valor`, `valorout`) VALUES
('2024', 'Creado por FacturaScripts', 1, 'nasiento', NULL, 113),
('0001', 'Creado por FacturaScripts', 2, 'nasiento', NULL, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_subcuentas`
--

CREATE TABLE `co_subcuentas` (
  `codcuenta` varchar(6) NOT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `codsubcuenta` varchar(15) NOT NULL,
  `debe` double NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `haber` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) NOT NULL,
  `iva` double NOT NULL,
  `recargo` double NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_subcuentas`
--

INSERT INTO `co_subcuentas` (`codcuenta`, `coddivisa`, `codejercicio`, `codimpuesto`, `codsubcuenta`, `debe`, `descripcion`, `haber`, `idcuenta`, `idsubcuenta`, `iva`, `recargo`, `saldo`) VALUES
('1111', 'USD', '2024', NULL, '1111001', 9626.86, 'Caja General - Ventas', 0, 44, 370, 0, 0, 9626.86),
('1112', 'USD', '2024', NULL, '1112001', 0, 'CAJA CHICA', 0, 45, 371, 0, 0, 0),
('1113', 'USD', '2024', NULL, '1113001', 0, 'PRODUBANCO', 0, 46, 372, 0, 0, 0),
('1114', 'USD', '2024', NULL, '1114001', 0, 'INVERSIONES TEMPORALES', 0, 47, 373, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121001', 0, 'Sara Pozo', 0, 48, 374, 0, 0, 0),
('1122', 'USD', '2024', NULL, '1122001', 0, 'Diners', 0, 49, 375, 0, 0, 0),
('1122', 'USD', '2024', NULL, '1122002', 0, 'MasterCard', 0, 49, 376, 0, 0, 0),
('1122', 'USD', '2024', NULL, '1122003', 0, 'Visa', 0, 49, 377, 0, 0, 0),
('1122', 'USD', '2024', NULL, '1122004', 0, 'American Express', 0, 49, 378, 0, 0, 0),
('1122', 'USD', '2024', NULL, '1122005', 0, 'Otras Tarjetas', 0, 49, 379, 0, 0, 0),
('1131', 'USD', '2024', NULL, '1131001', 0, 'Otras por cobrar Garantías', 0, 50, 380, 0, 0, 0),
('1131', 'USD', '2024', NULL, '1131002', 0, 'Otras por cobrar', 0, 50, 381, 0, 0, 0),
('1131', 'USD', '2024', NULL, '1131003', 0, 'Anticipo Dividendos Socios', 0, 50, 382, 0, 0, 0),
('1131', 'USD', '2024', NULL, '1131004', 0, 'Anticipo de Proveedores', 0, 50, 383, 0, 0, 0),
('1133', 'USD', '2024', NULL, '1133001', 0, 'Anticipo Empleado', 0, 51, 384, 0, 0, 0),
('1133', 'USD', '2024', NULL, '1133002', 0, 'Prestamos Empleados', 0, 51, 385, 0, 0, 0),
('1133', 'USD', '2024', NULL, '1133003', 0, 'Anticipo Utilidades Empleados', 0, 51, 386, 0, 0, 0),
('1133', 'USD', '2024', NULL, '1133004', 0, 'Consumo Empleados', 0, 51, 387, 0, 0, 0),
('1133', 'USD', '2024', NULL, '1133005', 0, 'Seguro medico empleados', 0, 51, 388, 0, 0, 0),
('1134', 'USD', '2024', NULL, '1134002', 0, '12% IVA en compras bienes y servicios', 0, 52, 389, 0, 0, 0),
('1134', 'USD', '2024', NULL, '1134003', 0, 'IVA Retenciones Recibidas', 0, 52, 390, 0, 0, 0),
('1135', 'USD', '2024', NULL, '1135001', 0, 'Retenciones del Impuesto a la Renta', 0, 53, 391, 0, 0, 0),
('1135', 'USD', '2024', NULL, '1135002', 0, 'IR Anticipo Impuesto Renta', 0, 53, 392, 0, 0, 0),
('1135', 'USD', '2024', NULL, '1135003', 0, 'Retenciones IVA  recibidas', 0, 53, 393, 0, 0, 0),
('1141', 'USD', '2024', NULL, '1141001', 0, 'Inventario Materia Prima', 0, 54, 394, 0, 0, 0),
('1141', 'USD', '2024', NULL, '1141002', 0, 'Inventario Productos en Proceso', 0, 54, 395, 0, 0, 0),
('1141', 'USD', '2024', NULL, '1141003', 0, 'Inventario Productos Terminado', 0, 54, 396, 0, 0, 0),
('1211', 'USD', '2024', NULL, '1211001', 0, 'Terrenos', 0, 55, 397, 0, 0, 0),
('1211', 'USD', '2024', NULL, '1211002', 0, 'Construcciones en Tránsito', 0, 55, 398, 0, 0, 0),
('1211', 'USD', '2024', NULL, '1211003', 0, 'Maquinaria en Tránsito', 0, 55, 399, 0, 0, 0),
('1212', 'USD', '2024', NULL, '1212001', 0, 'Edificios e Instalaciones', 0, 56, 400, 0, 0, 0),
('1212', 'USD', '2024', NULL, '1212002', 0, 'Maquinaria y Herramientas', 0, 56, 401, 0, 0, 0),
('1212', 'USD', '2024', NULL, '1212003', 0, 'Muebles y Enseres', 0, 56, 402, 0, 0, 0),
('1212', 'USD', '2024', NULL, '1212004', 0, 'Equipos Cómputo y Sistema', 0, 56, 403, 0, 0, 0),
('1212', 'USD', '2024', NULL, '1212005', 0, 'Vehículos', 0, 56, 404, 0, 0, 0),
('1213', 'USD', '2024', NULL, '1213001', 0, 'Deprec. Acum. Edificios e Instalaciones', 0, 57, 405, 0, 0, 0),
('1213', 'USD', '2024', NULL, '1213002', 0, 'Deprec. Acum. Maqu. y herramienta', 0, 57, 406, 0, 0, 0),
('1213', 'USD', '2024', NULL, '1213003', 0, 'Deprec. Acum. Muebles', 0, 57, 407, 0, 0, 0),
('1213', 'USD', '2024', NULL, '1213004', 0, 'Deprec. Acum. Equip. Comp. Y herramienta', 0, 57, 408, 0, 0, 0),
('1213', 'USD', '2024', NULL, '1213005', 0, 'Deprec. Acum. Vehículos', 0, 57, 409, 0, 0, 0),
('1221', 'USD', '2024', NULL, '1221001', 0, 'Otras por cobrar Garantías L.P.', 0, 58, 410, 0, 0, 0),
('1222', 'USD', '2024', NULL, '1222001', 0, 'Otras por cobrar Garantías', 0, 59, 411, 0, 0, 0),
('2111', 'USD', '2024', NULL, '2111001', 0, 'Obligaciones Bancarias Corto Plazo', 0, 60, 412, 0, 0, 0),
('2121', 'USD', '2024', NULL, '2121001', 0, 'richarrd', 0, 61, 413, 0, 0, 0),
('2131', 'USD', '2024', NULL, '2131001', 0, 'Socios y Relacionados', 0, 62, 414, 0, 0, 0),
('2131', 'USD', '2024', NULL, '2131002', 0, 'Otras Cuentas por Pagar Varios', 0, 62, 415, 0, 0, 0),
('2131', 'USD', '2024', NULL, '2131003', 0, 'Sobregiro caja general', 0, 62, 416, 0, 0, 0),
('2131', 'USD', '2024', NULL, '2131004', 0, 'Anticipo Cliente', 0, 62, 417, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132001', 0, 'Sueldos Por Pagar', 0, 63, 418, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132002', 0, 'Beneficios Adicionales por Pagar', 0, 63, 419, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132003', 0, 'Liquidaciones por Pagar', 0, 63, 420, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132004', 0, 'Participación Trabajadores', 0, 63, 421, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132005', 0, 'Servicios por pagar', 0, 63, 422, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132006', 0, 'Décimo Tercer Sueldo', 0, 63, 423, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132007', 0, 'Décimo Cuarto Sueldo', 0, 63, 424, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132008', 0, 'Vacaciones', 0, 63, 425, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132009', 0, 'Otros Beneficios', 0, 63, 426, 0, 0, 0),
('2132', 'USD', '2024', NULL, '2132010', 0, '10% servicios', 0, 63, 427, 0, 0, 0),
('2133', 'USD', '2024', NULL, '2133003', 0, '12% IVA en Ventas por pagar', 20.4, 64, 428, 0, 0, -20.4),
('2133', 'USD', '2024', NULL, '2133004', 0, 'Ice por Pagar', 0, 64, 429, 0, 0, 0),
('2133', 'USD', '2024', NULL, '2133005', 0, 'Impuesto Verde', 0, 64, 430, 0, 0, 0),
('2133', 'USD', '2024', NULL, '2133006', 0, 'Impuesto Renta por Pagar', 0, 64, 431, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134001', 0, 'IVA 100% Prestación Serv. Profesionales', 0, 65, 432, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134002', 0, 'IVA 100% Arrendamiento de Inmuebles Per. Naturales', 0, 65, 433, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134003', 0, 'IVA 100% Compras Bien.y Serv. con Liq. Compras', 0, 65, 434, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134004', 0, 'IVA 70% Prestación de Otros Servicios', 0, 65, 435, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134005', 0, 'IVA 30% Por la Compra de Bienes', 0, 65, 436, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134006', 0, 'IVA 100% OTRAS VENTAS', 0, 65, 437, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134007', 0, 'IVA 10% Por la Compra de Bienes', 0, 65, 438, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134008', 0, 'IVA 20% Prestación de Otros Servicios', 0, 65, 439, 0, 0, 0),
('2134', 'USD', '2024', NULL, '2134009', 0, 'IVA 50% Prestación de Otros Servicios', 0, 65, 440, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135001', 0, '306-2% Compras Locales Mat. Prima', 0, 66, 441, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135002', 0, '327-0.2% Combustibles a Comercializadoras', 0, 66, 442, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135003', 0, 'RFIR Empleados Relac. Dependencia', 0, 66, 443, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135004', 0, '328-0.3% Combustibles a Distribuidores', 0, 66, 444, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135005', 0, 'Impuestos por Pagar', 0, 66, 445, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135006', 0, '329-2% Otros Bienes y Servicios', 0, 66, 446, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135007', 0, '330-25% Pagos de Dividendos Anticipados', 0, 66, 447, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135008', 0, '331-1% Energia', 0, 66, 448, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135009', 0, '331-2% Agua, y Telecom.', 0, 66, 449, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135010', 0, '332-No sujetos a Retención', 0, 66, 450, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135011', 0, '332-No sujetos a Retención', 0, 66, 451, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135012', 0, '335-2% Por Actividades de Construcción de O.M.', 0, 66, 452, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135013', 0, '340-Aplicables 1%', 0, 66, 453, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135014', 0, '505A - 22% Pago al exterior – Intereses de créditos de Instituciones Financieras del exterior', 0, 66, 454, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135015', 0, '505B - 22% Pago al exterior – Intereses de créditos de gobierno a gobierno', 0, 66, 455, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135016', 0, '505C - 22% Pago al exterior – Intereses de créditos de organismos multilaterales', 0, 66, 456, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135017', 0, '505D - 22% Pago al exterior - Intereses por financiamiento de proveedores externos', 0, 66, 457, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135018', 0, '505E - 22% Pago al exterior - Intereses de otros créditos externos', 0, 66, 458, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135019', 0, '505F - 22% Pago al exterior - Otros Intereses y Rendimientos Financieros', 0, 66, 459, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135020', 0, '509 - 22% Pago al exterior - Cánones, derechos de autor,  marcas, patentes y similares', 0, 66, 460, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135021', 0, '509A - 22% Pago al exterior - Regalías por concepto de franquicias', 0, 66, 461, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135022', 0, '510 - 22% Pago al exterior - Ganancias de capital', 0, 66, 462, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135023', 0, '511 - 22% Pago al exterior - Servicios profesionales independientes', 0, 66, 463, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135024', 0, '341-Impuesto Exportación al banano 2%', 0, 66, 464, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135025', 0, '512 - 22% Pago al exterior - Servicios profesionales dependientes', 0, 66, 465, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135026', 0, '513 - 22% Pago al exterior - Artistas', 0, 66, 466, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135027', 0, '513A - 22% Pago al exterior - Deportistas', 0, 66, 467, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135028', 0, '514 - 22% Pago al exterior - Participación de consejeros', 0, 66, 468, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135029', 0, '515 - 22% Pago al exterior - Entretenimiento Público', 0, 66, 469, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135030', 0, '516 - 22% Pago al exterior - Pensiones', 0, 66, 470, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135031', 0, '517 - 22% Pago al exterior - Reembolso de Gastos', 0, 66, 471, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135032', 0, '518 - 22% Pago al exterior - Funciones Públicas', 0, 66, 472, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135033', 0, '519 - 22% Pago al exterior - Estudiantes', 0, 66, 473, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135034', 0, '520 - 22% Pago al exterior - Otros conceptos de ingresos gravados', 0, 66, 474, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135035', 0, '342-Aplicables 8%', 0, 66, 475, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135036', 0, '520A - 22% Pago al exterior - Pago a proveedores de servicios hoteleros y turísticos en el exterior', 0, 66, 476, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135037', 0, '520B - 22% Pago al exterior - Arrendamientos mercantil internacional', 0, 66, 477, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135038', 0, '520D - 22% Pago al exterior - Comisiones por exportaciones y por promoción de turismo receptivo', 0, 66, 478, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135039', 0, '520E - 22% Pago al exterior - Por las empresas de transporte marítimo o aéreo y por empresas pesqueras de alta mar, por su actividad.', 0, 66, 479, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135040', 0, '520F - 22% Pago al exterior - Por las agencias internacionales de prensa', 0, 66, 480, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135041', 0, '520G - 22% Pago al exterior - Contratos de fletamento de naves para empresas de transporte aéreo o marítimo internacional', 0, 66, 481, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135042', 0, '521 - 5% Pago al exterior - Enajenación de derechos representativos de capital y otros derechos', 0, 66, 482, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135043', 0, '522A - 22% Pago al exterior - Servicios técnicos, administrativos o de consultoría y regalías con convenio de doble tributación', 0, 66, 483, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135044', 0, '523A - 22% Pago al exterior - Seguros y reaseguros (primas y cesiones)  con convenio de doble tributación', 0, 66, 484, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135045', 0, '524 - 22% Pago al exterior - Otros pagos al exterior no sujetos a retención', 0, 66, 485, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135046', 0, '343-Aplicables 25%', 0, 66, 486, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135047', 0, '525 - 100% Pago al exterior - Donaciones en dinero -Impuesto a la donaciones', 0, 66, 487, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135048', 0, '309-Publicidad y Comunicación 1%', 0, 66, 488, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135049', 0, '304-Honorarios Prof. y Dietas 8%', 0, 66, 489, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135050', 0, '303-Honorarios Prof. y Dietas 10%', 0, 66, 490, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135051', 0, 'Débito Bancario', 0, 66, 491, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135052', 0, '312 - 1% Transferencia de Bienes y Servicios', 0, 66, 492, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135053', 0, '301-Ret. Fte. Relación de dependencia No Supp.', 0, 66, 493, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135054', 0, '302-Relación Dependencia Super. Base', 0, 66, 494, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135055', 0, '304-2% Remuneraciones a Otros Trabajadores Aut.', 0, 66, 495, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135056', 0, '305-25% Honorarios Extranjeros por Servicios', 0, 66, 496, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135057', 0, '307-2% Por Compras Locales no Produ. Soc.', 0, 66, 497, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135058', 0, '308-Compras Bienes no sujetas a Ret.', 0, 66, 498, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135059', 0, '309-2% Por Suministros y Materiales', 0, 66, 499, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135060', 0, '310-2% Por Repuestos y Herramientas', 0, 66, 500, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135061', 0, '311-2% Por Lubricantes', 0, 66, 501, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135062', 0, '312-2% Por Activos Fijos', 0, 66, 502, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135063', 0, '313-1% Por Servicio de Transporte Privado Pas.o Carg.', 0, 66, 503, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135064', 0, '314-5% Por Regalías, Derechos de Autor', 0, 66, 504, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135065', 0, '314-8% Por Regalías, Derechos de Autor', 0, 66, 505, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135066', 0, '315-5% Por Remuneración a Deportistas', 0, 66, 506, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135067', 0, '316-8% Por Pago a Notarios,Reg.', 0, 66, 507, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135068', 0, '317-2% Por Comisiones Pagadas a Sociedades', 0, 66, 508, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135069', 0, '318-2% Por Promoción y Publicidad', 0, 66, 509, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135070', 0, '319-2% Por Arriendo Mercantil', 0, 66, 510, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135071', 0, '320-8% Arrendamiento Bienes Im.Per.Nat.', 0, 66, 511, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135072', 0, '321-5% Arrendamiento Bienes Im.Soc.', 0, 66, 512, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135073', 0, '322-2% Por Seguros y Reaseguros', 0, 66, 513, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135074', 0, '323-5% Por Rendimientos Financieros', 0, 66, 514, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135075', 0, '324-1% Por Pagos o Créditos en Emiso.Tarj.', 0, 66, 515, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135076', 0, '325-15% Loterías,Rifas, Apuestas', 0, 66, 516, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135077', 0, '326-1% Por Intereses y Comisiones', 0, 66, 517, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135078', 0, '304-8% Honorarios, Comisiones, Dietas', 0, 66, 518, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135079', 0, '307-2% Servicios predomina la mano de obra', 0, 66, 519, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135080', 0, '344-2% Aplicables', 0, 66, 520, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135081', 0, '304C - 8% Pagos a deportistas, entrenadores, árbitros, miembros del cuerpo técnico por sus actividades ejercidas como tales', 0, 66, 521, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135082', 0, '304D - 8% Pagos a artistas por sus actividades ejercidas como tales', 0, 66, 522, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135083', 0, '304E - 8% Honorarios y demás pagos por servicios de docencia', 0, 66, 523, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135084', 0, '314D - 8% Cánones, derechos de autor,  marcas, patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a sociedades', 0, 66, 524, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135085', 0, '314C - 8% Regalías por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual  - pago a sociedades', 0, 66, 525, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135086', 0, '332B - 0% Compra de bienes inmuebles', 0, 66, 526, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135087', 0, '323A - 2% Por RF: depósitos Cta. Corriente', 0, 66, 527, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135088', 0, '332C - 0% Transporte público de pasajeros', 0, 66, 528, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135089', 0, '325A - 22% Dividendos anticipados préstamos accionistas, beneficiarios o participes', 0, 66, 529, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135090', 0, '332D - 0% Pagos en el país por transporte de pasajeros o transporte internacional de carga, a compañías nacionales o extranjeras de aviación o marítimas', 0, 66, 530, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135091', 0, '324B - 1% Por RF: Por inversiones entre instituciones del sistema financiero y entidades economía popular y solidaria.', 0, 66, 531, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135092', 0, '332A - 0% Enajenación de derechos representativos de capital y otros derechos exentos (mayo 2016)', 0, 66, 532, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135093', 0, '323R - 0% Por RF: Otros intereses y rendimientos financieros exentos', 0, 66, 533, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135094', 0, '323Q - 2% Por RF: Otros intereses y rendimientos financieros gravados', 0, 66, 534, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135095', 0, '323P - 2% Por RF: Intereses pagados por entidades del sector público a favor de sujetos pasivos', 0, 66, 535, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135096', 0, '323O - 0% Por RF: Intereses pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Economía Popular y Solidaria', 0, 66, 536, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135097', 0, '323N - 0% Por RF: Inversiones en títulos valores en renta fija exentos', 0, 66, 537, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135098', 0, '323M - 2% Por RF: Inversiones en títulos valores en renta fija gravados', 0, 66, 538, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135099', 0, '323I - 2% Por RF: bonos convertible en acciones', 0, 66, 539, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135100', 0, '323H - 2% Por RF: obligaciones', 0, 66, 540, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135101', 0, '323G - 2% Por RF: inversiones (captaciones) rendimientos distintos de aquellos pagados a IFIs', 0, 66, 541, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135102', 0, '323F - 2% Por rendimientos financieros: operaciones de reporto - repos', 0, 66, 542, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135103', 0, '323E2 - 0% Por RF: depósito a plazo fijo exentos', 0, 66, 543, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135104', 0, '323E - 2% Por RF: depósito a plazo fijo  gravados', 0, 66, 544, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135105', 0, '323B1 - 2% Por RF:  depósitos Cta. Ahorros Sociedades', 0, 66, 545, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135106', 0, '332E - 0% Valores entregados por las cooperativas de transporte a sus socios', 0, 66, 546, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135107', 0, '332F - 0% Compraventa de divisas distintas al dólar de los Estados Unidos de América', 0, 66, 547, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135108', 0, '332G - 0% Pagos con tarjeta de crédito', 0, 66, 548, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135109', 0, '332H - 0% Pago al exterior tarjeta de crédito reportada por la Emisora de tarjeta de crédito, solo RECAP', 0, 66, 549, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135110', 0, '334 - 1% Enajenación de derechos representativos de capital y otros derechos no cotizados en bolsa ecuatoriana', 0, 66, 550, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135111', 0, '336 - 0.002% Por venta de combustibles a comercializadoras', 0, 66, 551, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135112', 0, '337 - 0.003% Por venta de combustibles a distribuidores', 0, 66, 552, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135114', 0, '338 - 2% Compra local de banano a productor', 0, 66, 553, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135115', 0, '339 - 100%  Liquidación impuesto único a la venta local de banano de producción propia', 0, 66, 554, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135116', 0, '343B - 1% Por actividades de construcción de obra material inmueble, urbanización, lotización o actividades similares', 0, 66, 555, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135117', 0, '344A - 2% Pago local tarjeta de crédito reportada por la Emisora de tarjeta de crédito, solo RECAP', 0, 66, 556, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135118', 0, '346A - 10% Ganancias de capital', 0, 66, 557, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135119', 0, '347 - 2% Donaciones en dinero -Impuesto a la donaciones', 0, 66, 558, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135120', 0, '348 - 10% Retención a cargo del propio sujeto pasivo por la exportación de concentrados y/o elementos metálicos', 0, 66, 559, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135121', 0, '349 - 0% Retención a cargo del propio sujeto pasivo por la comercialización de productos forestales', 0, 66, 560, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135122', 0, '500 - 22% Pago al exterior - Rentas Inmobiliarias', 0, 66, 561, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135123', 0, '501 - 22% Pago al exterior - Beneficios Empresariales', 0, 66, 562, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135124', 0, '502 - 22% Pago al exterior - Servicios Empresariales', 0, 66, 563, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135127', 0, '503 - 22% Pago al exterior - Navegación Marítima y/o aérea', 0, 66, 564, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135128', 0, '504 - 0% Pago al exterior- Dividendos distribuidos a personas naturales', 0, 66, 565, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135129', 0, '504B - 22% Pago al exterior - Anticipo dividendos (excepto paraísos fiscales o de régimen de menor imposición)', 0, 66, 566, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135130', 0, '504C - 22% Pago al exterior - Dividendos anticipados préstamos accionistas, beneficiarios o partìcipes (paraísos fiscales o regímenes de menor imposición)', 0, 66, 567, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135131', 0, '504A - 0% Pago al exterior - Dividendos a sociedades', 0, 66, 568, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135132', 0, '504D - 0% Pago al exterior - Dividendos a fideicomisos', 0, 66, 569, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135134', 0, '504F - 0% Pago al exterior - Dividendos a sociedades  (paraísos fiscales)', 0, 66, 570, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135135', 0, '504G - 0% Pago al exterior - Anticipo dividendos  (paraísos fiscales)', 0, 66, 571, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135136', 0, '504H - 13% Pago al exterior - Dividendos a fideicomisos  (paraísos fiscales)', 0, 66, 572, 0, 0, 0),
('2135', 'USD', '2024', NULL, '2135137', 0, '505 - 22% Pago al exterior - Rendimientos financieros', 0, 66, 573, 0, 0, 0),
('2136', 'USD', '2024', NULL, '2136001', 0, 'Iess por Pagar', 0, 67, 574, 0, 0, 0),
('2136', 'USD', '2024', NULL, '2136002', 0, 'Fondo de Reserva por Pagar', 0, 67, 575, 0, 0, 0),
('2136', 'USD', '2024', NULL, '2136003', 0, 'Préstamo Quirografarios', 0, 67, 576, 0, 0, 0),
('2136', 'USD', '2024', NULL, '2136004', 0, 'Préstamo Hipotecarios', 0, 67, 577, 0, 0, 0),
('2211', 'USD', '2024', NULL, '2211001', 0, 'Obligación Bancarias Largo Plazo', 0, 68, 578, 0, 0, 0),
('311', 'USD', '2024', NULL, '3110001', 0, 'Capital Suscrito', 0, 69, 579, 0, 0, 0),
('311', 'USD', '2024', NULL, '3110002', 0, 'Capital Pagado', 0, 69, 580, 0, 0, 0),
('312', 'USD', '2024', NULL, '3120001', 0, 'Aporte Capital 1', 0, 70, 581, 0, 0, 0),
('313', 'USD', '2024', NULL, '3130001', 0, 'Reserva Legal', 0, 71, 582, 0, 0, 0),
('313', 'USD', '2024', NULL, '3130002', 0, 'Reserva Facultativa', 0, 71, 583, 0, 0, 0),
('331', 'USD', '2024', NULL, '3310001', 0, 'Utilidades Retenidas', 0, 72, 584, 0, 0, 0),
('332', 'USD', '2024', NULL, '3320001', 0, 'Resultado del Ejercicio', 0, 73, 585, 0, 0, 0),
('411', 'USD', '2024', NULL, '4110001', 0, 'Ventas Productos', 9606.46, 74, 586, 0, 0, -9606.46),
('4121', 'USD', '2024', NULL, '4121001', 0, 'Ventas Productos', 0, 75, 587, 0, 0, 0),
('4121', 'USD', '2024', NULL, '4121002', 0, 'Ventas otros', 0, 75, 588, 0, 0, 0),
('4122', 'USD', '2024', NULL, '4122001', 0, 'Descuento en Ventas', 0, 76, 589, 0, 0, 0),
('4122', 'USD', '2024', NULL, '4122002', 0, 'Devolución Ventas', 0, 76, 590, 0, 0, 0),
('4123', 'USD', '2024', NULL, '4123001', 0, 'OTROS INGRESOS OPERACIONES', 0, 77, 591, 0, 0, 0),
('421', 'USD', '2024', NULL, '4210001', 0, 'Otros Ingresos', 0, 78, 592, 0, 0, 0),
('511', 'USD', '2024', NULL, '5110001', 0, 'Costos de materia prima', 0, 79, 593, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120001', 0, 'Costo Sueldos y Salarios', 0, 80, 594, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120002', 0, 'Costo horas extras', 0, 80, 595, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120003', 0, 'Costo Días completos', 0, 80, 596, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120004', 0, 'Costo Fondo Reserva Iess', 0, 80, 597, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120005', 0, 'Costo Eventos', 0, 80, 598, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120006', 0, 'Costo Décimo Tercero', 0, 80, 599, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120007', 0, 'Costo Décimo Cuarto', 0, 80, 600, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120008', 0, 'Costo acuerdos de sueldo', 0, 80, 601, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120009', 0, 'Costo Aporte Patronal IESS', 0, 80, 602, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120010', 0, 'Costo Alimentación', 0, 80, 603, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120011', 0, 'Costo Bonos', 0, 80, 604, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120012', 0, 'Costo días pendientes', 0, 80, 605, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120013', 0, 'Costo seguros de vida medio tiempo', 0, 80, 606, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120014', 0, 'Costo Uniformes', 0, 80, 607, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120015', 0, 'Costo Liquidaciones', 0, 80, 608, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120016', 0, 'Costo personal en ldc', 0, 80, 609, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120017', 0, 'Costos Servicios Ocasionales', 0, 80, 610, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120018', 0, 'Costo capacitación', 0, 80, 611, 0, 0, 0),
('512', 'USD', '2024', NULL, '5120019', 0, 'Costos Servicios Médicos Empleados', 0, 80, 612, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130001', 0, 'Costo Arriendo', 0, 81, 613, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130002', 0, 'Costo Arriendo Software', 0, 81, 614, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130003', 0, 'Costo mantenimiento sistemas', 0, 81, 615, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130004', 0, 'Costo servicios legales', 0, 81, 616, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130005', 0, 'Costo Fletes', 0, 81, 617, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130006', 0, 'Costo Combustibles y lubricantes', 0, 81, 618, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130007', 0, 'Costo Luz', 0, 81, 619, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130008', 0, 'Costo Teléfono', 0, 81, 620, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130009', 0, 'Costo Agua', 0, 81, 621, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130010', 0, 'Costo Internet', 0, 81, 622, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130011', 0, 'Costo Suministros', 0, 81, 623, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130012', 0, 'Costo Imprenta', 0, 81, 624, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130013', 0, 'Costo mantenimiento computación', 0, 81, 625, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130014', 0, 'Costo mantenimiento equipos fríos', 0, 81, 626, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130015', 0, 'Costo gas', 0, 81, 627, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130016', 0, 'Costo Vigilancia Privada', 0, 81, 628, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130017', 0, 'Costo Transporte y movilización', 0, 81, 629, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130018', 0, 'Costo Depreciaciones', 0, 81, 630, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130019', 0, 'Costo Impuestos y Contribuyente', 0, 81, 631, 0, 0, 0),
('513', 'USD', '2024', NULL, '5130020', 0, 'Costos Menores', 0, 81, 632, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110001', 0, 'GA Gastos Sueldos y Salarios', 0, 82, 633, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110002', 0, 'GA Horas Extras', 0, 82, 634, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110003', 0, 'GA Días completos', 0, 82, 635, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110004', 0, 'GA Gasto Fondo Reserva IESS', 0, 82, 636, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110005', 0, 'GA Eventos', 0, 82, 637, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110006', 0, 'GA Décimo Tercero', 0, 82, 638, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110007', 0, 'GA Décimo Cuarto', 0, 82, 639, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110008', 0, 'GA acuerdos de sueldo', 0, 82, 640, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110009', 0, 'GA Aporte Patronal IESS', 0, 82, 641, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110010', 0, 'GA Alimentación', 0, 82, 642, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110011', 0, 'GA Bonos', 0, 82, 643, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110012', 0, 'GA días pendientes', 0, 82, 644, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110013', 0, 'GA seguro de vida medio tiempo', 0, 82, 645, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110014', 0, 'GA Uniformes', 0, 82, 646, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110015', 0, 'GA Gastos Liquidaciones', 0, 82, 647, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110016', 0, 'GA personal en ldc', 0, 82, 648, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110017', 0, 'GA Servicios Ocasionales', 0, 82, 649, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110018', 0, 'GA capacitación', 0, 82, 650, 0, 0, 0),
('611', 'USD', '2024', NULL, '6110099', 0, 'Otros Menores', 0, 82, 651, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120001', 0, 'GA Arriendo oficina', 0, 83, 652, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120002', 0, 'GA gasto empleados', 0, 83, 653, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120003', 0, 'GA de terceros', 0, 83, 654, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120004', 0, 'GA servicios básicos', 0, 83, 655, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120005', 0, 'GA gas', 0, 83, 656, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120006', 0, 'GA gastos varios', 0, 83, 657, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120007', 0, 'GA SRI retenciones', 0, 83, 658, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120008', 0, 'GA IVA', 0, 83, 659, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120009', 0, 'GA nutricionista', 0, 83, 660, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120010', 0, 'GA depreciación', 0, 83, 661, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120011', 0, 'GA soporte técnico computarizado', 0, 83, 662, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120012', 0, 'GA publicidad', 0, 83, 663, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120013', 0, 'GA asesoría legal', 0, 83, 664, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120014', 0, 'GA vacaciones finiquitos', 0, 83, 665, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120015', 0, 'GA Vigilancia Privada', 0, 83, 666, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120016', 0, 'GA Mantenimiento y Limpieza', 0, 83, 667, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120017', 0, 'GA Servicios Contables', 0, 83, 668, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120018', 0, 'GA Honorarios', 0, 83, 669, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120019', 0, 'GA Combustibles y Lubricantes', 0, 83, 670, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120020', 0, 'GA Útiles Oficina y Suministros', 0, 83, 671, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120021', 0, 'GA Internet, correo, otros', 0, 83, 672, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120022', 0, 'GA Suscripciones y Publicaciones', 0, 83, 673, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120023', 0, 'GA Impuestos, tasa y otros', 0, 83, 674, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120024', 0, 'GA Cuentas Incobrables', 0, 83, 675, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120025', 0, 'GA Perdida en venta de activos', 0, 83, 676, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120026', 0, 'GA Gasto Imp a la renta', 0, 83, 677, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120027', 0, 'GA Gasto 15% participación trabajadores', 0, 83, 678, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120028', 0, 'GA Mantenimiento vehículos', 0, 83, 679, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120029', 0, 'GA No deducibles', 0, 83, 680, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120030', 0, 'GA fletes', 0, 83, 681, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120031', 0, 'GA Gastos Médicos Empleados', 0, 83, 682, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120032', 0, 'GA Mantenimiento vehículos', 0, 83, 683, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120033', 0, 'GA No deducibles', 0, 83, 684, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120034', 0, 'GA Perdida por Robo Locales', 0, 83, 685, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120035', 0, 'GA Gastos Médicos Empleados', 0, 83, 686, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120036', 0, 'GA telefonía celular', 0, 83, 687, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120037', 0, 'GA material mal estado', 0, 83, 688, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120038', 0, 'GA material mal estado', 0, 83, 689, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120039', 0, 'Gasto IVA', 0, 83, 690, 0, 0, 0),
('612', 'USD', '2024', NULL, '6120099', 0, 'Gastos Menores', 0, 83, 691, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210001', 0, 'GV Gastos Sueldos y Salarios', 0, 84, 692, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210002', 0, 'GV Horas Extras', 0, 84, 693, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210003', 0, 'GV Días completos', 0, 84, 694, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210004', 0, 'GV Gasto Fondo Reserva IESS', 0, 84, 695, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210005', 0, 'GV Eventos', 0, 84, 696, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210006', 0, 'GV Décimo Tercero', 0, 84, 697, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210007', 0, 'GV Décimo Cuarto', 0, 84, 698, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210008', 0, 'GV acuerdos de sueldo', 0, 84, 699, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210009', 0, 'GV Aporte Patronal IESS', 0, 84, 700, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210010', 0, 'GV Alimentación', 0, 84, 701, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210011', 0, 'GV Bonos', 0, 84, 702, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210012', 0, 'GV días pendientes', 0, 84, 703, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210013', 0, 'GV seguro de vida medio tiempo', 0, 84, 704, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210014', 0, 'GV Uniformes', 0, 84, 705, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210015', 0, 'GV Gastos Liquidaciones', 0, 84, 706, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210016', 0, 'GV personal en ldc', 0, 84, 707, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210017', 0, 'GV Servicios Ocasionales', 0, 84, 708, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210018', 0, 'GV capacitación', 0, 84, 709, 0, 0, 0),
('621', 'USD', '2024', NULL, '6210099', 0, 'GV Otros Menores', 0, 84, 710, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220001', 0, 'GV Arriendo Locales', 0, 85, 711, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220002', 0, 'GV Servicios Básicos Luz, Agua y Teléfono', 0, 85, 712, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220003', 0, 'GV Vigilancia Privada', 0, 85, 713, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220004', 0, 'GV Mantenimiento y Limpieza', 0, 85, 714, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220005', 0, 'GV Servicios Contables', 0, 85, 715, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220006', 0, 'GV Honorarios', 0, 85, 716, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220007', 0, 'GV Combustibles y Lubricantes', 0, 85, 717, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220008', 0, 'GV Seguros Contratados', 0, 85, 718, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220009', 0, 'GV Útiles Oficina y Suministros', 0, 85, 719, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220010', 0, 'GV Internet, correo, otros', 0, 85, 720, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220011', 0, 'GV Suscripciones y Publicaciones', 0, 85, 721, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220012', 0, 'GV Impuestos, tasa y otros', 0, 85, 722, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220013', 0, 'GV Depreciaciones', 0, 85, 723, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220014', 0, 'GV Amortizaciones', 0, 85, 724, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220015', 0, 'GV Cuentas Incobrables', 0, 85, 725, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220016', 0, 'GV Perdida en venta de activos', 0, 85, 726, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220017', 0, 'GV Gasto Impuesto a la renta', 0, 85, 727, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220018', 0, 'GV Gasto 15% participación trabajadores', 0, 85, 728, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220019', 0, 'GV Mantenimiento vehículos', 0, 85, 729, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220020', 0, 'GV No deducibles', 0, 85, 730, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220021', 0, 'GV Perdida por Robo Locales', 0, 85, 731, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220022', 0, 'GV Gastos Médicos Empleados', 0, 85, 732, 0, 0, 0),
('622', 'USD', '2024', NULL, '6220099', 0, 'GV Gastos Menores', 0, 85, 733, 0, 0, 0),
('631', 'USD', '2024', NULL, '6310001', 0, 'Gastos y Comisiones Bancarias', 0, 86, 734, 0, 0, 0),
('631', 'USD', '2024', NULL, '6310002', 0, 'Intereses Entidades Financieras', 0, 86, 735, 0, 0, 0),
('631', 'USD', '2024', NULL, '6310003', 0, 'Multas', 0, 86, 736, 0, 0, 0),
('631', 'USD', '2024', NULL, '6310004', 0, 'Préstamo capital', 0, 86, 737, 0, 0, 0),
('631', 'USD', '2024', NULL, '6310005', 0, 'Movimientos bancarios', 0, 86, 738, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121002', 1149.07, 'IKES S.A.', 1149.07, 48, 739, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121003', 2140, 'WANG ZHOUFU', 2140, 48, 740, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121004', 90, 'Pedro Eladio Conforme Pincay', 90, 48, 741, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121005', 550, 'Jesús del Rocío Holguín Macias', 550, 48, 742, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121006', 1113.39, 'INGEHISA CIA LTDA', 1113.39, 48, 743, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121007', 875.02, 'DISIBIS S.A.', 875.02, 48, 744, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121008', 100, 'Karen Carriel', 100, 48, 745, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121009', 224.99, 'TCPLUMESAL S. A.', 224.99, 48, 746, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121010', 60, 'Michelle Arreaga', 60, 48, 747, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121011', 337.4, 'Oscar Quiñonez', 337.4, 48, 748, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121012', 345, 'Broom Ecuador S.A.', 345, 48, 749, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121013', 875, 'Digna Carolina Pazmiño Echanique', 875, 48, 750, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121014', 150, 'Caty Quevedo', 150, 48, 751, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121015', 583.48, 'DISERPRO-EC S.A.S.', 583.48, 48, 752, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121016', 89, 'FLOMAC M&CS S.A.S.', 89, 48, 753, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121017', 545, 'ZHONG PEIZHEN', 545, 48, 754, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121018', 0, 'Germán Varas Macio', 0, 48, 755, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121019', 304.75, 'AUTOCHECO R. Q. S.A.', 304.75, 48, 756, 0, 0, 0),
('1121', 'USD', '2024', NULL, '1121020', 94.76, 'PUBLIC MENDEZ', 94.76, 48, 757, 0, 0, 0),
('1111', 'USD', '0001', NULL, '1111001', 12999.96, 'Caja General - Ventas', 0, 87, 758, 0, 0, 12999.96),
('1112', 'USD', '0001', NULL, '1112001', 0, 'CAJA CHICA', 0, 88, 759, 0, 0, 0),
('1113', 'USD', '0001', NULL, '1113001', 0, 'PRODUBANCO', 0, 89, 760, 0, 0, 0),
('1114', 'USD', '0001', NULL, '1114001', 0, 'INVERSIONES TEMPORALES', 0, 90, 761, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121001', 0, 'Sara Pozo', 0, 91, 762, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121002', 125.78, 'IKES S.A.', 125.78, 91, 763, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121003', 3336, 'WANG ZHOUFU', 3336, 91, 764, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121004', 0, 'Pedro Eladio Conforme Pincay', 0, 91, 765, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121005', 283.25, 'Jesús del Rocío Holguín Macías', 283.25, 91, 766, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121006', 183, 'INGEHISA CIA LTDA', 183, 91, 767, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121007', 663.31, 'DISIBIS S.A.', 663.31, 91, 768, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121008', 0, 'Karen Carriel', 0, 91, 769, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121009', 289.99, 'TCPLUMESAL S. A.', 289.99, 91, 770, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121010', 0, 'Michelle Arreaga', 0, 91, 771, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121011', 0, 'Oscar Quiñonez', 0, 91, 772, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121012', 810, 'Broom Ecuador S.A.', 810, 91, 773, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121013', 405, 'Digna Carolina Pazmiño Echanique', 405, 91, 774, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121014', 150, 'Caty Quevedo', 150, 91, 775, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121015', 0, 'DISERPRO-EC S.A.S.', 0, 91, 776, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121016', 82.5, 'FLOMAC M&CS S.A.S.', 82.5, 91, 777, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121017', 2567, 'ZHONG PEIZHEN', 2567, 91, 778, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121018', 0, 'Germán Varas Macio', 0, 91, 779, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121019', 468.13, 'AUTOCHECO R. Q. S.A.', 468.13, 91, 780, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121020', 0, 'PUBLIC MENDEZ', 0, 91, 781, 0, 0, 0),
('1122', 'USD', '0001', NULL, '1122001', 0, 'Diners', 0, 92, 782, 0, 0, 0),
('1122', 'USD', '0001', NULL, '1122002', 0, 'MasterCard', 0, 92, 783, 0, 0, 0),
('1122', 'USD', '0001', NULL, '1122003', 0, 'Visa', 0, 92, 784, 0, 0, 0),
('1122', 'USD', '0001', NULL, '1122004', 0, 'American Express', 0, 92, 785, 0, 0, 0),
('1122', 'USD', '0001', NULL, '1122005', 0, 'Otras Tarjetas', 0, 92, 786, 0, 0, 0),
('1131', 'USD', '0001', NULL, '1131001', 0, 'Otras por cobrar Garantías', 0, 93, 787, 0, 0, 0),
('1131', 'USD', '0001', NULL, '1131002', 0, 'Otras por cobrar', 0, 93, 788, 0, 0, 0),
('1131', 'USD', '0001', NULL, '1131003', 0, 'Anticipo Dividendos Socios', 0, 93, 789, 0, 0, 0),
('1131', 'USD', '0001', NULL, '1131004', 0, 'Anticipo de Proveedores', 0, 93, 790, 0, 0, 0),
('1133', 'USD', '0001', NULL, '1133001', 0, 'Anticipo Empleado', 0, 94, 791, 0, 0, 0),
('1133', 'USD', '0001', NULL, '1133002', 0, 'Prestamos Empleados', 0, 94, 792, 0, 0, 0),
('1133', 'USD', '0001', NULL, '1133003', 0, 'Anticipo Utilidades Empleados', 0, 94, 793, 0, 0, 0),
('1133', 'USD', '0001', NULL, '1133004', 0, 'Consumo Empleados', 0, 94, 794, 0, 0, 0),
('1133', 'USD', '0001', NULL, '1133005', 0, 'Seguro medico empleados', 0, 94, 795, 0, 0, 0),
('1134', 'USD', '0001', NULL, '1134002', 0, '12% IVA en compras bienes y servicios', 0, 95, 796, 0, 0, 0),
('1134', 'USD', '0001', NULL, '1134003', 0, 'IVA Retenciones Recibidas', 0, 95, 797, 0, 0, 0),
('1135', 'USD', '0001', NULL, '1135001', 0, 'Retenciones del Impuesto a la Renta', 0, 96, 798, 0, 0, 0),
('1135', 'USD', '0001', NULL, '1135002', 0, 'IR Anticipo Impuesto Renta', 0, 96, 799, 0, 0, 0),
('1135', 'USD', '0001', NULL, '1135003', 0, 'Retenciones IVA  recibidas', 0, 96, 800, 0, 0, 0),
('1141', 'USD', '0001', NULL, '1141001', 0, 'Inventario Materia Prima', 0, 97, 801, 0, 0, 0),
('1141', 'USD', '0001', NULL, '1141002', 0, 'Inventario Productos en Proceso', 0, 97, 802, 0, 0, 0),
('1141', 'USD', '0001', NULL, '1141003', 0, 'Inventario Productos Terminado', 0, 97, 803, 0, 0, 0),
('1211', 'USD', '0001', NULL, '1211001', 0, 'Terrenos', 0, 98, 804, 0, 0, 0),
('1211', 'USD', '0001', NULL, '1211002', 0, 'Construcciones en Tránsito', 0, 98, 805, 0, 0, 0),
('1211', 'USD', '0001', NULL, '1211003', 0, 'Maquinaria en Tránsito', 0, 98, 806, 0, 0, 0),
('1212', 'USD', '0001', NULL, '1212001', 0, 'Edificios e Instalaciones', 0, 99, 807, 0, 0, 0),
('1212', 'USD', '0001', NULL, '1212002', 0, 'Maquinaria y Herramientas', 0, 99, 808, 0, 0, 0),
('1212', 'USD', '0001', NULL, '1212003', 0, 'Muebles y Enseres', 0, 99, 809, 0, 0, 0),
('1212', 'USD', '0001', NULL, '1212004', 0, 'Equipos Cómputo y Sistema', 0, 99, 810, 0, 0, 0),
('1212', 'USD', '0001', NULL, '1212005', 0, 'Vehículos', 0, 99, 811, 0, 0, 0),
('1213', 'USD', '0001', NULL, '1213001', 0, 'Deprec. Acum. Edificios e Instalaciones', 0, 100, 812, 0, 0, 0),
('1213', 'USD', '0001', NULL, '1213002', 0, 'Deprec. Acum. Maqu. y herramienta', 0, 100, 813, 0, 0, 0),
('1213', 'USD', '0001', NULL, '1213003', 0, 'Deprec. Acum. Muebles', 0, 100, 814, 0, 0, 0),
('1213', 'USD', '0001', NULL, '1213004', 0, 'Deprec. Acum. Equip. Comp. Y herramienta', 0, 100, 815, 0, 0, 0),
('1213', 'USD', '0001', NULL, '1213005', 0, 'Deprec. Acum. Vehículos', 0, 100, 816, 0, 0, 0),
('1221', 'USD', '0001', NULL, '1221001', 0, 'Otras por cobrar Garantías L.P.', 0, 101, 817, 0, 0, 0),
('1222', 'USD', '0001', NULL, '1222001', 0, 'Otras por cobrar Garantías', 0, 102, 818, 0, 0, 0),
('2111', 'USD', '0001', NULL, '2111001', 0, 'Obligaciones Bancarias Corto Plazo', 0, 103, 819, 0, 0, 0),
('2121', 'USD', '0001', NULL, '2121001', 0, 'richarrd', 0, 104, 820, 0, 0, 0),
('2131', 'USD', '0001', NULL, '2131001', 0, 'Socios y Relacionados', 0, 105, 821, 0, 0, 0),
('2131', 'USD', '0001', NULL, '2131002', 0, 'Otras Cuentas por Pagar Varios', 0, 105, 822, 0, 0, 0),
('2131', 'USD', '0001', NULL, '2131003', 0, 'Sobregiro caja general', 0, 105, 823, 0, 0, 0),
('2131', 'USD', '0001', NULL, '2131004', 0, 'Anticipo Cliente', 0, 105, 824, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132001', 0, 'Sueldos Por Pagar', 0, 106, 825, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132002', 0, 'Beneficios Adicionales por Pagar', 0, 106, 826, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132003', 0, 'Liquidaciones por Pagar', 0, 106, 827, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132004', 0, 'Participación Trabajadores', 0, 106, 828, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132005', 0, 'Servicios por pagar', 0, 106, 829, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132006', 0, 'Décimo Tercer Sueldo', 0, 106, 830, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132007', 0, 'Décimo Cuarto Sueldo', 0, 106, 831, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132008', 0, 'Vacaciones', 0, 106, 832, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132009', 0, 'Otros Beneficios', 0, 106, 833, 0, 0, 0),
('2132', 'USD', '0001', NULL, '2132010', 0, '10% servicios', 0, 106, 834, 0, 0, 0),
('2133', 'USD', '0001', NULL, '2133003', 0, '12% IVA en Ventas por pagar', 6, 107, 835, 0, 0, -6),
('2133', 'USD', '0001', NULL, '2133004', 0, 'Ice por Pagar', 0, 107, 836, 0, 0, 0),
('2133', 'USD', '0001', NULL, '2133005', 0, 'Impuesto Verde', 0, 107, 837, 0, 0, 0),
('2133', 'USD', '0001', NULL, '2133006', 0, 'Impuesto Renta por Pagar', 0, 107, 838, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134001', 0, 'IVA 100% Prestación Serv. Profesionales', 0, 108, 839, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134002', 0, 'IVA 100% Arrendamiento de Inmuebles Per. Naturales', 0, 108, 840, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134003', 0, 'IVA 100% Compras Bien.y Serv. con Liq. Compras', 0, 108, 841, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134004', 0, 'IVA 70% Prestación de Otros Servicios', 0, 108, 842, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134005', 0, 'IVA 30% Por la Compra de Bienes', 0, 108, 843, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134006', 0, 'IVA 100% OTRAS VENTAS', 0, 108, 844, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134007', 0, 'IVA 10% Por la Compra de Bienes', 0, 108, 845, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134008', 0, 'IVA 20% Prestación de Otros Servicios', 0, 108, 846, 0, 0, 0),
('2134', 'USD', '0001', NULL, '2134009', 0, 'IVA 50% Prestación de Otros Servicios', 0, 108, 847, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135001', 0, '306-2% Compras Locales Mat. Prima', 0, 109, 848, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135002', 0, '327-0.2% Combustibles a Comercializadoras', 0, 109, 849, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135003', 0, 'RFIR Empleados Relac. Dependencia', 0, 109, 850, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135004', 0, '328-0.3% Combustibles a Distribuidores', 0, 109, 851, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135005', 0, 'Impuestos por Pagar', 0, 109, 852, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135006', 0, '329-2% Otros Bienes y Servicios', 0, 109, 853, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135007', 0, '330-25% Pagos de Dividendos Anticipados', 0, 109, 854, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135008', 0, '331-1% Energia', 0, 109, 855, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135009', 0, '331-2% Agua, y Telecom.', 0, 109, 856, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135010', 0, '332-No sujetos a Retención', 0, 109, 857, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135011', 0, '332-No sujetos a Retención', 0, 109, 858, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135012', 0, '335-2% Por Actividades de Construcción de O.M.', 0, 109, 859, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135013', 0, '340-Aplicables 1%', 0, 109, 860, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135014', 0, '505A - 22% Pago al exterior – Intereses de créditos de Instituciones Financieras del exterior', 0, 109, 861, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135015', 0, '505B - 22% Pago al exterior – Intereses de créditos de gobierno a gobierno', 0, 109, 862, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135016', 0, '505C - 22% Pago al exterior – Intereses de créditos de organismos multilaterales', 0, 109, 863, 0, 0, 0);
INSERT INTO `co_subcuentas` (`codcuenta`, `coddivisa`, `codejercicio`, `codimpuesto`, `codsubcuenta`, `debe`, `descripcion`, `haber`, `idcuenta`, `idsubcuenta`, `iva`, `recargo`, `saldo`) VALUES
('2135', 'USD', '0001', NULL, '2135017', 0, '505D - 22% Pago al exterior - Intereses por financiamiento de proveedores externos', 0, 109, 864, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135018', 0, '505E - 22% Pago al exterior - Intereses de otros créditos externos', 0, 109, 865, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135019', 0, '505F - 22% Pago al exterior - Otros Intereses y Rendimientos Financieros', 0, 109, 866, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135020', 0, '509 - 22% Pago al exterior - Cánones, derechos de autor,  marcas, patentes y similares', 0, 109, 867, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135021', 0, '509A - 22% Pago al exterior - Regalías por concepto de franquicias', 0, 109, 868, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135022', 0, '510 - 22% Pago al exterior - Ganancias de capital', 0, 109, 869, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135023', 0, '511 - 22% Pago al exterior - Servicios profesionales independientes', 0, 109, 870, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135024', 0, '341-Impuesto Exportación al banano 2%', 0, 109, 871, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135025', 0, '512 - 22% Pago al exterior - Servicios profesionales dependientes', 0, 109, 872, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135026', 0, '513 - 22% Pago al exterior - Artistas', 0, 109, 873, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135027', 0, '513A - 22% Pago al exterior - Deportistas', 0, 109, 874, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135028', 0, '514 - 22% Pago al exterior - Participación de consejeros', 0, 109, 875, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135029', 0, '515 - 22% Pago al exterior - Entretenimiento Público', 0, 109, 876, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135030', 0, '516 - 22% Pago al exterior - Pensiones', 0, 109, 877, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135031', 0, '517 - 22% Pago al exterior - Reembolso de Gastos', 0, 109, 878, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135032', 0, '518 - 22% Pago al exterior - Funciones Públicas', 0, 109, 879, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135033', 0, '519 - 22% Pago al exterior - Estudiantes', 0, 109, 880, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135034', 0, '520 - 22% Pago al exterior - Otros conceptos de ingresos gravados', 0, 109, 881, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135035', 0, '342-Aplicables 8%', 0, 109, 882, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135036', 0, '520A - 22% Pago al exterior - Pago a proveedores de servicios hoteleros y turísticos en el exterior', 0, 109, 883, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135037', 0, '520B - 22% Pago al exterior - Arrendamientos mercantil internacional', 0, 109, 884, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135038', 0, '520D - 22% Pago al exterior - Comisiones por exportaciones y por promoción de turismo receptivo', 0, 109, 885, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135039', 0, '520E - 22% Pago al exterior - Por las empresas de transporte marítimo o aéreo y por empresas pesqueras de alta mar, por su actividad.', 0, 109, 886, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135040', 0, '520F - 22% Pago al exterior - Por las agencias internacionales de prensa', 0, 109, 887, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135041', 0, '520G - 22% Pago al exterior - Contratos de fletamento de naves para empresas de transporte aéreo o marítimo internacional', 0, 109, 888, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135042', 0, '521 - 5% Pago al exterior - Enajenación de derechos representativos de capital y otros derechos', 0, 109, 889, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135043', 0, '522A - 22% Pago al exterior - Servicios técnicos, administrativos o de consultoría y regalías con convenio de doble tributación', 0, 109, 890, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135044', 0, '523A - 22% Pago al exterior - Seguros y reaseguros (primas y cesiones)  con convenio de doble tributación', 0, 109, 891, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135045', 0, '524 - 22% Pago al exterior - Otros pagos al exterior no sujetos a retención', 0, 109, 892, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135046', 0, '343-Aplicables 25%', 0, 109, 893, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135047', 0, '525 - 100% Pago al exterior - Donaciones en dinero -Impuesto a la donaciones', 0, 109, 894, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135048', 0, '309-Publicidad y Comunicación 1%', 0, 109, 895, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135049', 0, '304-Honorarios Prof. y Dietas 8%', 0, 109, 896, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135050', 0, '303-Honorarios Prof. y Dietas 10%', 0, 109, 897, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135051', 0, 'Débito Bancario', 0, 109, 898, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135052', 0, '312 - 1% Transferencia de Bienes y Servicios', 0, 109, 899, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135053', 0, '301-Ret. Fte. Relación de dependencia No Supp.', 0, 109, 900, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135054', 0, '302-Relación Dependencia Super. Base', 0, 109, 901, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135055', 0, '304-2% Remuneraciones a Otros Trabajadores Aut.', 0, 109, 902, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135056', 0, '305-25% Honorarios Extranjeros por Servicios', 0, 109, 903, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135057', 0, '307-2% Por Compras Locales no Produ. Soc.', 0, 109, 904, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135058', 0, '308-Compras Bienes no sujetas a Ret.', 0, 109, 905, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135059', 0, '309-2% Por Suministros y Materiales', 0, 109, 906, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135060', 0, '310-2% Por Repuestos y Herramientas', 0, 109, 907, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135061', 0, '311-2% Por Lubricantes', 0, 109, 908, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135062', 0, '312-2% Por Activos Fijos', 0, 109, 909, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135063', 0, '313-1% Por Servicio de Transporte Privado Pas.o Carg.', 0, 109, 910, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135064', 0, '314-5% Por Regalías, Derechos de Autor', 0, 109, 911, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135065', 0, '314-8% Por Regalías, Derechos de Autor', 0, 109, 912, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135066', 0, '315-5% Por Remuneración a Deportistas', 0, 109, 913, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135067', 0, '316-8% Por Pago a Notarios,Reg.', 0, 109, 914, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135068', 0, '317-2% Por Comisiones Pagadas a Sociedades', 0, 109, 915, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135069', 0, '318-2% Por Promoción y Publicidad', 0, 109, 916, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135070', 0, '319-2% Por Arriendo Mercantil', 0, 109, 917, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135071', 0, '320-8% Arrendamiento Bienes Im.Per.Nat.', 0, 109, 918, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135072', 0, '321-5% Arrendamiento Bienes Im.Soc.', 0, 109, 919, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135073', 0, '322-2% Por Seguros y Reaseguros', 0, 109, 920, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135074', 0, '323-5% Por Rendimientos Financieros', 0, 109, 921, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135075', 0, '324-1% Por Pagos o Créditos en Emiso.Tarj.', 0, 109, 922, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135076', 0, '325-15% Loterías,Rifas, Apuestas', 0, 109, 923, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135077', 0, '326-1% Por Intereses y Comisiones', 0, 109, 924, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135078', 0, '304-8% Honorarios, Comisiones, Dietas', 0, 109, 925, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135079', 0, '307-2% Servicios predomina la mano de obra', 0, 109, 926, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135080', 0, '344-2% Aplicables', 0, 109, 927, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135081', 0, '304C - 8% Pagos a deportistas, entrenadores, árbitros, miembros del cuerpo técnico por sus actividades ejercidas como tales', 0, 109, 928, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135082', 0, '304D - 8% Pagos a artistas por sus actividades ejercidas como tales', 0, 109, 929, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135083', 0, '304E - 8% Honorarios y demás pagos por servicios de docencia', 0, 109, 930, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135084', 0, '314D - 8% Cánones, derechos de autor,  marcas, patentes y similares de acuerdo a Ley de Propiedad Intelectual – pago a sociedades', 0, 109, 931, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135085', 0, '314C - 8% Regalías por concepto de franquicias de acuerdo a Ley de Propiedad Intelectual  - pago a sociedades', 0, 109, 932, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135086', 0, '332B - 0% Compra de bienes inmuebles', 0, 109, 933, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135087', 0, '323A - 2% Por RF: depósitos Cta. Corriente', 0, 109, 934, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135088', 0, '332C - 0% Transporte público de pasajeros', 0, 109, 935, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135089', 0, '325A - 22% Dividendos anticipados préstamos accionistas, beneficiarios o participes', 0, 109, 936, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135090', 0, '332D - 0% Pagos en el país por transporte de pasajeros o transporte internacional de carga, a compañías nacionales o extranjeras de aviación o marítimas', 0, 109, 937, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135091', 0, '324B - 1% Por RF: Por inversiones entre instituciones del sistema financiero y entidades economía popular y solidaria.', 0, 109, 938, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135092', 0, '332A - 0% Enajenación de derechos representativos de capital y otros derechos exentos (mayo 2016)', 0, 109, 939, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135093', 0, '323R - 0% Por RF: Otros intereses y rendimientos financieros exentos', 0, 109, 940, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135094', 0, '323Q - 2% Por RF: Otros intereses y rendimientos financieros gravados', 0, 109, 941, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135095', 0, '323P - 2% Por RF: Intereses pagados por entidades del sector público a favor de sujetos pasivos', 0, 109, 942, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135096', 0, '323O - 0% Por RF: Intereses pagados a bancos y otras entidades sometidas al control de la Superintendencia de Bancos y de la Economía Popular y Solidaria', 0, 109, 943, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135097', 0, '323N - 0% Por RF: Inversiones en títulos valores en renta fija exentos', 0, 109, 944, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135098', 0, '323M - 2% Por RF: Inversiones en títulos valores en renta fija gravados', 0, 109, 945, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135099', 0, '323I - 2% Por RF: bonos convertible en acciones', 0, 109, 946, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135100', 0, '323H - 2% Por RF: obligaciones', 0, 109, 947, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135101', 0, '323G - 2% Por RF: inversiones (captaciones) rendimientos distintos de aquellos pagados a IFIs', 0, 109, 948, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135102', 0, '323F - 2% Por rendimientos financieros: operaciones de reporto - repos', 0, 109, 949, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135103', 0, '323E2 - 0% Por RF: depósito a plazo fijo exentos', 0, 109, 950, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135104', 0, '323E - 2% Por RF: depósito a plazo fijo  gravados', 0, 109, 951, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135105', 0, '323B1 - 2% Por RF:  depósitos Cta. Ahorros Sociedades', 0, 109, 952, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135106', 0, '332E - 0% Valores entregados por las cooperativas de transporte a sus socios', 0, 109, 953, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135107', 0, '332F - 0% Compraventa de divisas distintas al dólar de los Estados Unidos de América', 0, 109, 954, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135108', 0, '332G - 0% Pagos con tarjeta de crédito', 0, 109, 955, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135109', 0, '332H - 0% Pago al exterior tarjeta de crédito reportada por la Emisora de tarjeta de crédito, solo RECAP', 0, 109, 956, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135110', 0, '334 - 1% Enajenación de derechos representativos de capital y otros derechos no cotizados en bolsa ecuatoriana', 0, 109, 957, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135111', 0, '336 - 0.002% Por venta de combustibles a comercializadoras', 0, 109, 958, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135112', 0, '337 - 0.003% Por venta de combustibles a distribuidores', 0, 109, 959, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135114', 0, '338 - 2% Compra local de banano a productor', 0, 109, 960, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135115', 0, '339 - 100%  Liquidación impuesto único a la venta local de banano de producción propia', 0, 109, 961, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135116', 0, '343B - 1% Por actividades de construcción de obra material inmueble, urbanización, lotización o actividades similares', 0, 109, 962, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135117', 0, '344A - 2% Pago local tarjeta de crédito reportada por la Emisora de tarjeta de crédito, solo RECAP', 0, 109, 963, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135118', 0, '346A - 10% Ganancias de capital', 0, 109, 964, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135119', 0, '347 - 2% Donaciones en dinero -Impuesto a la donaciones', 0, 109, 965, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135120', 0, '348 - 10% Retención a cargo del propio sujeto pasivo por la exportación de concentrados y/o elementos metálicos', 0, 109, 966, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135121', 0, '349 - 0% Retención a cargo del propio sujeto pasivo por la comercialización de productos forestales', 0, 109, 967, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135122', 0, '500 - 22% Pago al exterior - Rentas Inmobiliarias', 0, 109, 968, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135123', 0, '501 - 22% Pago al exterior - Beneficios Empresariales', 0, 109, 969, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135124', 0, '502 - 22% Pago al exterior - Servicios Empresariales', 0, 109, 970, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135127', 0, '503 - 22% Pago al exterior - Navegación Marítima y/o aérea', 0, 109, 971, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135128', 0, '504 - 0% Pago al exterior- Dividendos distribuidos a personas naturales', 0, 109, 972, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135129', 0, '504B - 22% Pago al exterior - Anticipo dividendos (excepto paraísos fiscales o de régimen de menor imposición)', 0, 109, 973, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135130', 0, '504C - 22% Pago al exterior - Dividendos anticipados préstamos accionistas, beneficiarios o partìcipes (paraísos fiscales o regímenes de menor imposición)', 0, 109, 974, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135131', 0, '504A - 0% Pago al exterior - Dividendos a sociedades', 0, 109, 975, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135132', 0, '504D - 0% Pago al exterior - Dividendos a fideicomisos', 0, 109, 976, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135134', 0, '504F - 0% Pago al exterior - Dividendos a sociedades  (paraísos fiscales)', 0, 109, 977, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135135', 0, '504G - 0% Pago al exterior - Anticipo dividendos  (paraísos fiscales)', 0, 109, 978, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135136', 0, '504H - 13% Pago al exterior - Dividendos a fideicomisos  (paraísos fiscales)', 0, 109, 979, 0, 0, 0),
('2135', 'USD', '0001', NULL, '2135137', 0, '505 - 22% Pago al exterior - Rendimientos financieros', 0, 109, 980, 0, 0, 0),
('2136', 'USD', '0001', NULL, '2136001', 0, 'Iess por Pagar', 0, 110, 981, 0, 0, 0),
('2136', 'USD', '0001', NULL, '2136002', 0, 'Fondo de Reserva por Pagar', 0, 110, 982, 0, 0, 0),
('2136', 'USD', '0001', NULL, '2136003', 0, 'Préstamo Quirografarios', 0, 110, 983, 0, 0, 0),
('2136', 'USD', '0001', NULL, '2136004', 0, 'Préstamo Hipotecarios', 0, 110, 984, 0, 0, 0),
('2211', 'USD', '0001', NULL, '2211001', 0, 'Obligación Bancarias Largo Plazo', 0, 111, 985, 0, 0, 0),
('311', 'USD', '0001', NULL, '3110001', 0, 'Capital Suscrito', 0, 112, 986, 0, 0, 0),
('311', 'USD', '0001', NULL, '3110002', 0, 'Capital Pagado', 0, 112, 987, 0, 0, 0),
('312', 'USD', '0001', NULL, '3120001', 0, 'Aporte Capital 1', 0, 113, 988, 0, 0, 0),
('313', 'USD', '0001', NULL, '3130001', 0, 'Reserva Legal', 0, 114, 989, 0, 0, 0),
('313', 'USD', '0001', NULL, '3130002', 0, 'Reserva Facultativa', 0, 114, 990, 0, 0, 0),
('331', 'USD', '0001', NULL, '3310001', 0, 'Utilidades Retenidas', 0, 115, 991, 0, 0, 0),
('332', 'USD', '0001', NULL, '3320001', 0, 'Resultado del Ejercicio', 0, 116, 992, 0, 0, 0),
('411', 'USD', '0001', NULL, '4110001', 0, 'Ventas Productos', 12993.96, 117, 993, 0, 0, -12993.96),
('4121', 'USD', '0001', NULL, '4121001', 0, 'Ventas Productos', 0, 118, 994, 0, 0, 0),
('4121', 'USD', '0001', NULL, '4121002', 0, 'Ventas otros', 0, 118, 995, 0, 0, 0),
('4122', 'USD', '0001', NULL, '4122001', 0, 'Descuento en Ventas', 0, 119, 996, 0, 0, 0),
('4122', 'USD', '0001', NULL, '4122002', 0, 'Devolución Ventas', 0, 119, 997, 0, 0, 0),
('4123', 'USD', '0001', NULL, '4123001', 0, 'OTROS INGRESOS OPERACIONES', 0, 120, 998, 0, 0, 0),
('421', 'USD', '0001', NULL, '4210001', 0, 'Otros Ingresos', 0, 121, 999, 0, 0, 0),
('511', 'USD', '0001', NULL, '5110001', 0, 'Costos de materia prima', 0, 122, 1000, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120001', 0, 'Costo Sueldos y Salarios', 0, 123, 1001, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120002', 0, 'Costo horas extras', 0, 123, 1002, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120003', 0, 'Costo Días completos', 0, 123, 1003, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120004', 0, 'Costo Fondo Reserva Iess', 0, 123, 1004, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120005', 0, 'Costo Eventos', 0, 123, 1005, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120006', 0, 'Costo Décimo Tercero', 0, 123, 1006, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120007', 0, 'Costo Décimo Cuarto', 0, 123, 1007, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120008', 0, 'Costo acuerdos de sueldo', 0, 123, 1008, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120009', 0, 'Costo Aporte Patronal IESS', 0, 123, 1009, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120010', 0, 'Costo Alimentación', 0, 123, 1010, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120011', 0, 'Costo Bonos', 0, 123, 1011, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120012', 0, 'Costo días pendientes', 0, 123, 1012, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120013', 0, 'Costo seguros de vida medio tiempo', 0, 123, 1013, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120014', 0, 'Costo Uniformes', 0, 123, 1014, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120015', 0, 'Costo Liquidaciones', 0, 123, 1015, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120016', 0, 'Costo personal en ldc', 0, 123, 1016, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120017', 0, 'Costos Servicios Ocasionales', 0, 123, 1017, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120018', 0, 'Costo capacitación', 0, 123, 1018, 0, 0, 0),
('512', 'USD', '0001', NULL, '5120019', 0, 'Costos Servicios Médicos Empleados', 0, 123, 1019, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130001', 0, 'Costo Arriendo', 0, 124, 1020, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130002', 0, 'Costo Arriendo Software', 0, 124, 1021, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130003', 0, 'Costo mantenimiento sistemas', 0, 124, 1022, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130004', 0, 'Costo servicios legales', 0, 124, 1023, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130005', 0, 'Costo Fletes', 0, 124, 1024, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130006', 0, 'Costo Combustibles y lubricantes', 0, 124, 1025, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130007', 0, 'Costo Luz', 0, 124, 1026, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130008', 0, 'Costo Teléfono', 0, 124, 1027, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130009', 0, 'Costo Agua', 0, 124, 1028, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130010', 0, 'Costo Internet', 0, 124, 1029, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130011', 0, 'Costo Suministros', 0, 124, 1030, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130012', 0, 'Costo Imprenta', 0, 124, 1031, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130013', 0, 'Costo mantenimiento computación', 0, 124, 1032, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130014', 0, 'Costo mantenimiento equipos fríos', 0, 124, 1033, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130015', 0, 'Costo gas', 0, 124, 1034, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130016', 0, 'Costo Vigilancia Privada', 0, 124, 1035, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130017', 0, 'Costo Transporte y movilización', 0, 124, 1036, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130018', 0, 'Costo Depreciaciones', 0, 124, 1037, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130019', 0, 'Costo Impuestos y Contribuyente', 0, 124, 1038, 0, 0, 0),
('513', 'USD', '0001', NULL, '5130020', 0, 'Costos Menores', 0, 124, 1039, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110001', 0, 'GA Gastos Sueldos y Salarios', 0, 125, 1040, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110002', 0, 'GA Horas Extras', 0, 125, 1041, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110003', 0, 'GA Días completos', 0, 125, 1042, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110004', 0, 'GA Gasto Fondo Reserva IESS', 0, 125, 1043, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110005', 0, 'GA Eventos', 0, 125, 1044, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110006', 0, 'GA Décimo Tercero', 0, 125, 1045, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110007', 0, 'GA Décimo Cuarto', 0, 125, 1046, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110008', 0, 'GA acuerdos de sueldo', 0, 125, 1047, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110009', 0, 'GA Aporte Patronal IESS', 0, 125, 1048, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110010', 0, 'GA Alimentación', 0, 125, 1049, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110011', 0, 'GA Bonos', 0, 125, 1050, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110012', 0, 'GA días pendientes', 0, 125, 1051, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110013', 0, 'GA seguro de vida medio tiempo', 0, 125, 1052, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110014', 0, 'GA Uniformes', 0, 125, 1053, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110015', 0, 'GA Gastos Liquidaciones', 0, 125, 1054, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110016', 0, 'GA personal en ldc', 0, 125, 1055, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110017', 0, 'GA Servicios Ocasionales', 0, 125, 1056, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110018', 0, 'GA capacitación', 0, 125, 1057, 0, 0, 0),
('611', 'USD', '0001', NULL, '6110099', 0, 'Otros Menores', 0, 125, 1058, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120001', 0, 'GA Arriendo oficina', 0, 126, 1059, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120002', 0, 'GA gasto empleados', 0, 126, 1060, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120003', 0, 'GA de terceros', 0, 126, 1061, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120004', 0, 'GA servicios básicos', 0, 126, 1062, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120005', 0, 'GA gas', 0, 126, 1063, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120006', 0, 'GA gastos varios', 0, 126, 1064, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120007', 0, 'GA SRI retenciones', 0, 126, 1065, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120008', 0, 'GA IVA', 0, 126, 1066, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120009', 0, 'GA nutricionista', 0, 126, 1067, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120010', 0, 'GA depreciación', 0, 126, 1068, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120011', 0, 'GA soporte técnico computarizado', 0, 126, 1069, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120012', 0, 'GA publicidad', 0, 126, 1070, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120013', 0, 'GA asesoría legal', 0, 126, 1071, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120014', 0, 'GA vacaciones finiquitos', 0, 126, 1072, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120015', 0, 'GA Vigilancia Privada', 0, 126, 1073, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120016', 0, 'GA Mantenimiento y Limpieza', 0, 126, 1074, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120017', 0, 'GA Servicios Contables', 0, 126, 1075, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120018', 0, 'GA Honorarios', 0, 126, 1076, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120019', 0, 'GA Combustibles y Lubricantes', 0, 126, 1077, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120020', 0, 'GA Útiles Oficina y Suministros', 0, 126, 1078, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120021', 0, 'GA Internet, correo, otros', 0, 126, 1079, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120022', 0, 'GA Suscripciones y Publicaciones', 0, 126, 1080, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120023', 0, 'GA Impuestos, tasa y otros', 0, 126, 1081, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120024', 0, 'GA Cuentas Incobrables', 0, 126, 1082, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120025', 0, 'GA Perdida en venta de activos', 0, 126, 1083, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120026', 0, 'GA Gasto Imp a la renta', 0, 126, 1084, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120027', 0, 'GA Gasto 15% participación trabajadores', 0, 126, 1085, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120028', 0, 'GA Mantenimiento vehículos', 0, 126, 1086, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120029', 0, 'GA No deducibles', 0, 126, 1087, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120030', 0, 'GA fletes', 0, 126, 1088, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120031', 0, 'GA Gastos Médicos Empleados', 0, 126, 1089, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120032', 0, 'GA Mantenimiento vehículos', 0, 126, 1090, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120033', 0, 'GA No deducibles', 0, 126, 1091, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120034', 0, 'GA Perdida por Robo Locales', 0, 126, 1092, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120035', 0, 'GA Gastos Médicos Empleados', 0, 126, 1093, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120036', 0, 'GA telefonía celular', 0, 126, 1094, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120037', 0, 'GA material mal estado', 0, 126, 1095, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120038', 0, 'GA material mal estado', 0, 126, 1096, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120039', 0, 'Gasto IVA', 0, 126, 1097, 0, 0, 0),
('612', 'USD', '0001', NULL, '6120099', 0, 'Gastos Menores', 0, 126, 1098, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210001', 0, 'GV Gastos Sueldos y Salarios', 0, 127, 1099, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210002', 0, 'GV Horas Extras', 0, 127, 1100, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210003', 0, 'GV Días completos', 0, 127, 1101, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210004', 0, 'GV Gasto Fondo Reserva IESS', 0, 127, 1102, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210005', 0, 'GV Eventos', 0, 127, 1103, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210006', 0, 'GV Décimo Tercero', 0, 127, 1104, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210007', 0, 'GV Décimo Cuarto', 0, 127, 1105, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210008', 0, 'GV acuerdos de sueldo', 0, 127, 1106, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210009', 0, 'GV Aporte Patronal IESS', 0, 127, 1107, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210010', 0, 'GV Alimentación', 0, 127, 1108, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210011', 0, 'GV Bonos', 0, 127, 1109, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210012', 0, 'GV días pendientes', 0, 127, 1110, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210013', 0, 'GV seguro de vida medio tiempo', 0, 127, 1111, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210014', 0, 'GV Uniformes', 0, 127, 1112, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210015', 0, 'GV Gastos Liquidaciones', 0, 127, 1113, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210016', 0, 'GV personal en ldc', 0, 127, 1114, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210017', 0, 'GV Servicios Ocasionales', 0, 127, 1115, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210018', 0, 'GV capacitación', 0, 127, 1116, 0, 0, 0),
('621', 'USD', '0001', NULL, '6210099', 0, 'GV Otros Menores', 0, 127, 1117, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220001', 0, 'GV Arriendo Locales', 0, 128, 1118, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220002', 0, 'GV Servicios Básicos Luz, Agua y Teléfono', 0, 128, 1119, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220003', 0, 'GV Vigilancia Privada', 0, 128, 1120, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220004', 0, 'GV Mantenimiento y Limpieza', 0, 128, 1121, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220005', 0, 'GV Servicios Contables', 0, 128, 1122, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220006', 0, 'GV Honorarios', 0, 128, 1123, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220007', 0, 'GV Combustibles y Lubricantes', 0, 128, 1124, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220008', 0, 'GV Seguros Contratados', 0, 128, 1125, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220009', 0, 'GV Útiles Oficina y Suministros', 0, 128, 1126, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220010', 0, 'GV Internet, correo, otros', 0, 128, 1127, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220011', 0, 'GV Suscripciones y Publicaciones', 0, 128, 1128, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220012', 0, 'GV Impuestos, tasa y otros', 0, 128, 1129, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220013', 0, 'GV Depreciaciones', 0, 128, 1130, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220014', 0, 'GV Amortizaciones', 0, 128, 1131, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220015', 0, 'GV Cuentas Incobrables', 0, 128, 1132, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220016', 0, 'GV Perdida en venta de activos', 0, 128, 1133, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220017', 0, 'GV Gasto Impuesto a la renta', 0, 128, 1134, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220018', 0, 'GV Gasto 15% participación trabajadores', 0, 128, 1135, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220019', 0, 'GV Mantenimiento vehículos', 0, 128, 1136, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220020', 0, 'GV No deducibles', 0, 128, 1137, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220021', 0, 'GV Perdida por Robo Locales', 0, 128, 1138, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220022', 0, 'GV Gastos Médicos Empleados', 0, 128, 1139, 0, 0, 0),
('622', 'USD', '0001', NULL, '6220099', 0, 'GV Gastos Menores', 0, 128, 1140, 0, 0, 0),
('631', 'USD', '0001', NULL, '6310001', 0, 'Gastos y Comisiones Bancarias', 0, 129, 1141, 0, 0, 0),
('631', 'USD', '0001', NULL, '6310002', 0, 'Intereses Entidades Financieras', 0, 129, 1142, 0, 0, 0),
('631', 'USD', '0001', NULL, '6310003', 0, 'Multas', 0, 129, 1143, 0, 0, 0),
('631', 'USD', '0001', NULL, '6310004', 0, 'Préstamo capital', 0, 129, 1144, 0, 0, 0),
('631', 'USD', '0001', NULL, '6310005', 0, 'Movimientos bancarios', 0, 129, 1145, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121021', 960, 'TATIANA LISBETH MORALES MACIAS', 960, 91, 1146, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121022', 850, 'Ingeniería y Diseño Integral de Proyectos AP PROJECT', 850, 91, 1147, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121023', 140, 'Freddy Miranda', 140, 91, 1148, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121024', 1065, 'Katherine Leonor Morán Zavala', 1065, 91, 1149, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121025', 55, 'Carmen Medranda León', 55, 91, 1150, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121026', 120, 'JUSTO BAUTISTA MORÁN ZAVALA', 120, 91, 1151, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121027', 0, 'Cliente Final', 0, 91, 1152, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121028', 46, 'COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.', 46, 91, 1153, 0, 0, 0),
('1121', 'USD', '0001', NULL, '1121029', 400, 'Instituto Tecnológico Life College', 400, 91, 1154, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_subcuentascli`
--

CREATE TABLE `co_subcuentascli` (
  `codcliente` varchar(6) DEFAULT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codsubcuenta` varchar(15) NOT NULL,
  `id` int(11) NOT NULL,
  `idsubcuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `co_subcuentascli`
--

INSERT INTO `co_subcuentascli` (`codcliente`, `codejercicio`, `codsubcuenta`, `id`, `idsubcuenta`) VALUES
('000001', '2024', '1121001', 1, 374),
('000002', '2024', '1121002', 2, 739),
('000003', '2024', '1121003', 3, 740),
('000004', '2024', '1121004', 4, 741),
('000005', '2024', '1121005', 5, 742),
('000006', '2024', '1121006', 6, 743),
('000007', '2024', '1121007', 7, 744),
('000008', '2024', '1121008', 8, 745),
('000009', '2024', '1121009', 9, 746),
('000010', '2024', '1121010', 10, 747),
('000011', '2024', '1121011', 11, 748),
('000012', '2024', '1121012', 12, 749),
('000013', '2024', '1121013', 13, 750),
('000014', '2024', '1121014', 14, 751),
('000015', '2024', '1121015', 15, 752),
('000016', '2024', '1121016', 16, 753),
('000017', '2024', '1121017', 17, 754),
('000018', '2024', '1121018', 18, 755),
('000019', '2024', '1121019', 19, 756),
('000020', '2024', '1121020', 20, 757),
('000019', '0001', '1121019', 21, 780),
('000012', '0001', '1121012', 22, 773),
('000014', '0001', '1121014', 23, 775),
('000013', '0001', '1121013', 24, 774),
('000015', '0001', '1121015', 25, 776),
('000007', '0001', '1121007', 26, 768),
('000016', '0001', '1121016', 27, 777),
('000018', '0001', '1121018', 28, 779),
('000002', '0001', '1121002', 29, 763),
('000006', '0001', '1121006', 30, 767),
('000005', '0001', '1121005', 31, 766),
('000008', '0001', '1121008', 32, 769),
('000010', '0001', '1121010', 33, 771),
('000011', '0001', '1121011', 34, 772),
('000004', '0001', '1121004', 35, 765),
('000020', '0001', '1121020', 36, 781),
('000001', '0001', '1121001', 37, 762),
('000009', '0001', '1121009', 38, 770),
('000003', '0001', '1121003', 39, 764),
('000017', '0001', '1121017', 40, 778),
('000021', '0001', '1121021', 41, 1146),
('000022', '0001', '1121022', 42, 1147),
('000023', '0001', '1121023', 43, 1148),
('000024', '0001', '1121024', 44, 1149),
('000025', '0001', '1121025', 45, 1150),
('000026', '0001', '1121026', 46, 1151),
('000027', '0001', '1121027', 47, 1152),
('000028', '0001', '1121028', 48, 1153),
('000029', '0001', '1121029', 49, 1154);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbanco`
--

CREATE TABLE `cuentasbanco` (
  `codsubcuenta` varchar(15) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `iban` varchar(34) DEFAULT NULL,
  `codcuenta` varchar(6) NOT NULL,
  `swift` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbcocli`
--

CREATE TABLE `cuentasbcocli` (
  `descripcion` varchar(100) DEFAULT NULL,
  `swift` varchar(11) DEFAULT NULL,
  `ctaentidad` varchar(4) DEFAULT NULL,
  `iban` varchar(34) DEFAULT NULL,
  `agencia` varchar(4) DEFAULT NULL,
  `entidad` varchar(4) DEFAULT NULL,
  `codcliente` varchar(6) NOT NULL,
  `ctaagencia` varchar(4) DEFAULT NULL,
  `codcuenta` varchar(6) NOT NULL,
  `cuenta` varchar(10) DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  `fmandato` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentasbcopro`
--

CREATE TABLE `cuentasbcopro` (
  `agencia` varchar(4) DEFAULT NULL,
  `codcuenta` varchar(6) NOT NULL,
  `codproveedor` varchar(6) NOT NULL,
  `ctaagencia` varchar(4) DEFAULT NULL,
  `ctaentidad` varchar(4) DEFAULT NULL,
  `cuenta` varchar(10) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `entidad` varchar(4) DEFAULT NULL,
  `iban` varchar(34) DEFAULT NULL,
  `swift` varchar(11) DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirclientes`
--

CREATE TABLE `dirclientes` (
  `codcliente` varchar(6) NOT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `apartado` varchar(10) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `domenvio` tinyint(1) DEFAULT NULL,
  `domfacturacion` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `dirclientes`
--

INSERT INTO `dirclientes` (`codcliente`, `codpais`, `apartado`, `idprovincia`, `provincia`, `ciudad`, `codpostal`, `direccion`, `domenvio`, `domfacturacion`, `descripcion`, `id`, `fecha`) VALUES
('000001', 'ECU', '', NULL, 'Santa Elena', 'Palmar', '', 'Palmar', 1, 1, 'Principal', 1, '2024-03-26'),
('000002', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Sucre y Boyacá esquina', 1, 1, 'Principal', 2, '2024-04-01'),
('000003', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Boyacá y Olmedo esquina', 1, 1, 'Principal', 3, '2024-04-01'),
('000004', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Palmar', 1, 1, 'Principal', 4, '2024-04-08'),
('000005', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Venezuela entre la 24 y la 25', 1, 1, 'Principal', 5, '2024-04-15'),
('000006', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 1, 1, 'Principal', 6, '2024-04-18'),
('000007', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 1, 1, 'Principal', 7, '2024-04-29'),
('000008', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Entre Rios', 1, 1, 'Principal', 8, '2024-05-08'),
('000009', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', '', 1, 1, 'Principal', 9, '2024-05-09'),
('000010', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Bastión Popular Coop.22 de Septiembre. Mz#187, Sol#11', 1, 1, 'Principal', 10, '2024-05-13'),
('000011', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Mi Lote 1er etapa', 1, 1, 'Principal', 11, '2024-05-17'),
('000012', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Kennedy Norte, Calle Flores Perez Y Clotario Paz piso 6', 1, 1, 'Principal', 12, '2024-06-03'),
('000013', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Santo Domingo - Av. Río Mulaute y Av. Quito', 1, 1, 'Principal', 13, '2024-06-12'),
('000014', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', '', 1, 1, 'Principal', 14, '2024-06-20'),
('000015', 'ECU', '', NULL, 'Santo Domingo de los Tsáchilas', 'Santo Domingo', '', '', 1, 1, 'Principal', 15, '2024-07-02'),
('000016', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Coop. Estrella de Belén Mz 1814 Solar 10', 1, 1, 'Principal', 16, '2024-08-07'),
('000017', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Boyacá y Sucre esq.', 1, 1, 'Principal', 17, '2024-09-30'),
('000018', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', '', 1, 1, 'Principal', 18, '2024-11-01'),
('000019', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Guayaquil', 1, 1, 'Principal', 19, '2024-11-04'),
('000020', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Guayaquil', 1, 1, 'Principal', 20, '2024-12-09'),
('000021', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Alborada 13ava', 1, 1, 'Principal', 21, '2025-02-16'),
('000022', 'ECU', '', NULL, 'Cotopaxi', 'Latacunga', '', 'Ciudadela Maldonado Toledo – Calle Pangua N°1-185', 1, 1, 'Principal', 22, '2025-03-06'),
('000023', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Alborada 13ava', 1, 1, 'Principal', 23, '2025-03-10'),
('000024', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Bastión Popular Bloque 6', 1, 1, 'Principal', 24, '2025-03-17'),
('000025', 'ECU', '', NULL, 'Los Ríos', 'Buena Fe', '', '', 1, 1, 'Principal', 25, '2025-04-10'),
('000026', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'BASTIÓN POPULAR', 1, 1, 'Principal', 26, '2025-05-16'),
('000027', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', '', 1, 1, 'Principal', 27, '2025-05-27'),
('000028', 'ECU', '', NULL, 'Santo Domingo de los Tsáchilas', 'Santo Domingo', '', '', 1, 1, 'Principal', 28, '2025-05-29'),
('000029', 'ECU', '', NULL, 'Guayas', 'Guayaquil', '', 'Av. Costanera y Av. Las Monjas', 1, 1, 'Principal', 29, '2025-06-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisas`
--

CREATE TABLE `divisas` (
  `bandera` text DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codiso` varchar(5) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `simbolo` varchar(10) DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `tasaconv_compra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `divisas`
--

INSERT INTO `divisas` (`bandera`, `coddivisa`, `codiso`, `descripcion`, `fecha`, `simbolo`, `tasaconv`, `tasaconv_compra`) VALUES
(NULL, 'ARS', '32', 'PESOS (ARG)', NULL, 'AR$', 16.684, 16.684),
(NULL, 'CLP', '152', 'PESOS (CLP)', NULL, 'CLP$', 704.0227, 704.0227),
(NULL, 'COP', '170', 'PESOS (COP)', NULL, 'CO$', 3140.6803, 3140.6803),
(NULL, 'DOP', '214', 'PESOS DOMINICANOS', NULL, 'RD$', 49.7618, 49.7618),
(NULL, 'EUR', '978', 'EUROS', NULL, '€', 1, 1),
(NULL, 'GBP', '826', 'LIBRAS ESTERLINAS', NULL, '£', 0.865, 0.865),
(NULL, 'HTG', '322', 'GOURDES', NULL, 'G', 72.0869, 72.0869),
(NULL, 'MXN', '484', 'PESOS (MXN)', NULL, 'MX$', 23.3678, 23.3678),
(NULL, 'PAB', '590', 'BALBOAS', NULL, 'B', 1.128, 1.128),
(NULL, 'PEN', '604', 'NUEVOS SOLES', NULL, 'S/.', 3.736, 3.736),
(NULL, 'USD', '840', 'DÓLARES EE.UU.', NULL, '$', 1.129, 1.129),
(NULL, 'VEF', '937', 'BOLÍVARES', NULL, 'Bs', 10.6492, 10.6492);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `idasientocierre` int(11) DEFAULT NULL,
  `idasientopyg` int(11) DEFAULT NULL,
  `idasientoapertura` int(11) DEFAULT NULL,
  `plancontable` varchar(2) DEFAULT NULL,
  `longsubcuenta` int(11) DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codejercicio` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`idasientocierre`, `idasientopyg`, `idasientoapertura`, `plancontable`, `longsubcuenta`, `estado`, `fechafin`, `fechainicio`, `nombre`, `codejercicio`) VALUES
(NULL, NULL, NULL, '08', 7, 'ABIERTO', '2025-12-31', '2025-01-01', '2025', '0001'),
(NULL, NULL, NULL, '08', 7, 'CERRADO', '2024-12-31', '2024-01-01', '2024', '2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `administrador` varchar(100) NOT NULL,
  `apartado` varchar(10) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `codcuentarem` varchar(6) DEFAULT NULL,
  `coddivisa` varchar(3) DEFAULT NULL,
  `codedi` varchar(17) DEFAULT NULL,
  `codejercicio` varchar(4) DEFAULT NULL,
  `codpago` varchar(10) DEFAULT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `codserie` varchar(2) DEFAULT NULL,
  `contintegrada` tinyint(1) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `xid` varchar(30) DEFAULT NULL,
  `lema` varchar(100) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `nombrecorto` varchar(32) DEFAULT NULL,
  `pie_factura` text DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `recequivalencia` tinyint(1) DEFAULT NULL,
  `stockpedidos` tinyint(1) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL,
  `inicioact` date DEFAULT NULL,
  `regimeniva` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`administrador`, `apartado`, `cifnif`, `ciudad`, `codalmacen`, `codcuentarem`, `coddivisa`, `codedi`, `codejercicio`, `codpago`, `codpais`, `codpostal`, `codserie`, `contintegrada`, `direccion`, `email`, `fax`, `horario`, `id`, `idprovincia`, `xid`, `lema`, `logo`, `nombre`, `nombrecorto`, `pie_factura`, `provincia`, `recequivalencia`, `stockpedidos`, `telefono`, `web`, `inicioact`, `regimeniva`) VALUES
('Rither Cobeña', '', '0941177578001', 'Guayaquil', 'ALG', NULL, 'USD', NULL, '0001', 'CONT', 'ECU', '', 'C', 1, 'Alborada 13ava etapa Mz 6 V 15', 'facturacion@ritherservices.com', '1132159497', '', 1, NULL, 'h4e0K2WXNcuDg7bkdz1QaqH8tEJ6x3', '', NULL, 'ROSA THALIA SUAREZ CORREA', 'RITHER SERVICES', '', 'Guayas', 0, 0, '0962035099', 'https://www.ritherservices.com', '1970-01-01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `nombre` varchar(100) NOT NULL,
  `codfabricante` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`nombre`, `codfabricante`) VALUES
('OEM', 'OEM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturascli`
--

CREATE TABLE `facturascli` (
  `apartado` varchar(10) DEFAULT NULL,
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `codcliente` varchar(6) DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `codigorect` varchar(20) DEFAULT NULL,
  `codpago` varchar(10) NOT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `deabono` tinyint(1) DEFAULT 0,
  `direccion` varchar(100) NOT NULL,
  `editable` tinyint(1) DEFAULT 0,
  `fecha` date NOT NULL,
  `vencimiento` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idasientop` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT 0,
  `neto` double NOT NULL DEFAULT 0,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `numero` varchar(12) NOT NULL,
  `numero2` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `pagada` tinyint(1) NOT NULL DEFAULT 0,
  `anulada` tinyint(1) NOT NULL DEFAULT 0,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL DEFAULT 1,
  `total` double NOT NULL DEFAULT 0,
  `totaleuros` double NOT NULL DEFAULT 0,
  `totalirpf` double NOT NULL DEFAULT 0,
  `totaliva` double NOT NULL DEFAULT 0,
  `totalrecargo` double DEFAULT NULL,
  `tpv` tinyint(1) DEFAULT NULL,
  `codtrans` varchar(8) DEFAULT NULL,
  `codigoenv` varchar(200) DEFAULT NULL,
  `nombreenv` varchar(200) DEFAULT NULL,
  `apellidosenv` varchar(200) DEFAULT NULL,
  `direccionenv` varchar(100) DEFAULT NULL,
  `codpostalenv` varchar(10) DEFAULT NULL,
  `ciudadenv` varchar(100) DEFAULT NULL,
  `provinciaenv` varchar(100) DEFAULT NULL,
  `apartadoenv` varchar(10) DEFAULT NULL,
  `codpaisenv` varchar(20) DEFAULT NULL,
  `idimprenta` int(11) DEFAULT NULL,
  `numdocs` int(11) DEFAULT 0,
  `netosindto` double NOT NULL DEFAULT 0,
  `dtopor1` double NOT NULL DEFAULT 0,
  `dtopor2` double NOT NULL DEFAULT 0,
  `dtopor3` double NOT NULL DEFAULT 0,
  `dtopor4` double NOT NULL DEFAULT 0,
  `dtopor5` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `facturascli`
--

INSERT INTO `facturascli` (`apartado`, `automatica`, `cifnif`, `ciudad`, `codagente`, `codalmacen`, `codcliente`, `coddir`, `coddivisa`, `codejercicio`, `codigo`, `codigorect`, `codpago`, `codpais`, `codpostal`, `codserie`, `deabono`, `direccion`, `editable`, `fecha`, `vencimiento`, `femail`, `hora`, `idasiento`, `idasientop`, `idfactura`, `idfacturarect`, `idpagodevol`, `idprovincia`, `irpf`, `neto`, `nogenerarasiento`, `nombrecliente`, `numero`, `numero2`, `observaciones`, `pagada`, `anulada`, `porcomision`, `provincia`, `recfinanciero`, `tasaconv`, `total`, `totaleuros`, `totalirpf`, `totaliva`, `totalrecargo`, `tpv`, `codtrans`, `codigoenv`, `nombreenv`, `apellidosenv`, `direccionenv`, `codpostalenv`, `ciudadenv`, `provinciaenv`, `apartadoenv`, `codpaisenv`, `idimprenta`, `numdocs`, `netosindto`, `dtopor1`, `dtopor2`, `dtopor3`, `dtopor4`, `dtopor5`) VALUES
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '57', NULL, 'CONT', 'ECU', '', 'A', 0, 'Sucre y Boyacá esquina', 0, '2024-03-01', '2024-04-01', NULL, '08:36:05', 1, 2, 1, NULL, NULL, NULL, 0, 170, NULL, 'IKES S.A.', '57', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 170, 150.57573, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 170, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '58', NULL, 'CONT', 'ECU', '', 'A', 0, 'Boyacá y Olmedo esquina', 0, '2024-03-01', '2024-04-01', NULL, '08:51:24', 3, 4, 2, NULL, NULL, NULL, 0, 390, NULL, 'WANG ZHOUFU', '58', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 390, 345.43844, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 390, 0, 0, 0, 0, 0),
('', NULL, '0910965649', 'Guayaquil', '1', 'ALG', '000004', 4, 'USD', '2024', '59', NULL, 'CONT', 'ECU', '', 'A', 0, 'Palmar', 0, '2024-03-08', '2024-04-08', '2024-04-08', '12:31:04', 5, 6, 3, NULL, NULL, NULL, 0, 90, NULL, 'Pedro Eladio Conforme Pincay', '59', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 90, 79.71656, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 90, 0, 0, 0, 0, 0),
('', NULL, '0917733867001', 'Guayaquil', '1', 'ALG', '000005', 5, 'USD', '2024', '76', NULL, 'CONT', 'ECU', '', 'B', 0, 'Venezuela entre la 24 y la 25', 0, '2024-03-16', '2024-03-16', '2024-04-16', '09:28:21', 9, 10, 5, NULL, NULL, NULL, 0, 550, NULL, 'Jesús del Rocío Holguín Macías', '76', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 550, 487.15678, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 550, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '77', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-04-18', '2024-04-18', NULL, '18:20:09', 11, 12, 6, NULL, NULL, NULL, 0, 205, NULL, 'INGEHISA CIA LTDA', '77', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 205, 181.57662, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 205, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '78', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-04-19', '2024-04-19', NULL, '12:29:47', 13, 14, 7, NULL, NULL, NULL, 0, 392, NULL, 'INGEHISA CIA LTDA', '78', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 392, 347.20992, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 392, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '79', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-04-20', '2024-04-20', NULL, '09:03:00', 15, 16, 8, NULL, NULL, NULL, 0, 59.99, NULL, 'INGEHISA CIA LTDA', '79', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 59.99, 53.13552, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 59.99, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '2024', '80', NULL, 'CONT', 'ECU', '', 'B', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2024-04-29', '2024-04-29', NULL, '19:04:39', 17, 18, 9, NULL, NULL, NULL, 0, 250.01, NULL, 'DISIBIS S.A.', '80', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250.01, 221.44376, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250.01, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '81', NULL, 'CONT', 'ECU', '', 'B', 0, 'Sucre y Boyacá esquina', 0, '2024-05-02', '2024-05-02', NULL, '08:41:13', 19, 20, 10, NULL, NULL, NULL, 0, 170.01, NULL, 'IKES S.A.', '81', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 170.01, 150.58459, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 170.01, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '82', NULL, 'CONT', 'ECU', '', 'B', 0, 'Sucre y Boyacá esquina', 0, '2024-05-04', '2024-05-04', NULL, '12:15:45', 21, 22, 11, NULL, NULL, NULL, 0, 128.75, NULL, 'IKES S.A.', '82', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 128.75, 114.03897, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 128.75, 0, 0, 0, 0, 0),
('', NULL, '0926160052', 'Guayaquil', '1', 'ALG', '000008', 8, 'USD', '2024', '83', NULL, 'CONT', 'ECU', '', 'B', 0, 'Entre Rios', 0, '2024-05-08', '2024-05-08', NULL, '15:17:59', 23, 24, 12, NULL, NULL, NULL, 0, 60, NULL, 'Karen Carriel', '83', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 60, 53.14438, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 60, 0, 0, 0, 0, 0),
('', NULL, '0992942371001', 'Guayaquil', '1', 'ALG', '000009', 9, 'USD', '2024', '84', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-05-09', '2024-05-09', NULL, '09:17:40', 25, 26, 13, NULL, NULL, NULL, 0, 30, NULL, 'TCPLUMESAL S. A.', '84', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 30, 26.57219, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 30, 0, 0, 0, 0, 0),
('', NULL, '0992942371001', 'Guayaquil', '1', 'ALG', '000009', 9, 'USD', '2024', '85', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-05-09', '2024-05-09', NULL, '09:21:02', 27, 28, 14, NULL, NULL, NULL, 0, 39.99, NULL, 'TCPLUMESAL S. A.', '85', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 39.99, 35.42073, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 39.99, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '86', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-05-09', '2024-05-09', NULL, '12:43:19', 29, 30, 15, NULL, NULL, NULL, 0, 80, NULL, 'INGEHISA CIA LTDA', '86', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 80, 70.85917, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 80, 0, 0, 0, 0, 0),
('', NULL, '0953463155', 'Guayaquil', '1', 'ALG', '000010', 10, 'USD', '2024', '87', NULL, 'CONT', 'ECU', '', 'B', 0, 'Bastión Popular Coop.22 de Septiembre. Mz#187, Sol#11', 0, '2024-05-13', '2024-05-13', NULL, '07:30:14', 31, 32, 16, NULL, NULL, NULL, 0, 60, NULL, 'Michelle Arreaga', '87', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 60, 53.14438, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 60, 0, 0, 0, 0, 0),
('', NULL, '0919608802', 'Guayaquil', '1', 'ALG', '000011', 11, 'USD', '2024', '88', NULL, 'CONT', 'ECU', '', 'B', 0, 'Mi Lote 1er etapa', 0, '2024-05-17', '2024-05-17', NULL, '07:31:22', 33, 34, 17, NULL, NULL, NULL, 0, 337.4, NULL, 'Oscar Quiñonez', '88', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 337.4, 298.84854, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 337.4, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '89', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-05-20', '2024-05-20', NULL, '14:48:44', 35, 36, 18, NULL, NULL, NULL, 0, 35, NULL, 'INGEHISA CIA LTDA', '89', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 35, 31.00089, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 35, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '90', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-05-31', '2024-05-31', NULL, '07:44:11', 37, 38, 19, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '90', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '91', NULL, 'CONT', 'ECU', '', 'B', 0, 'Sucre y Boyacá esquina', 0, '2024-06-01', '2024-06-01', NULL, '17:12:42', 39, 40, 20, NULL, NULL, NULL, 0, 170.01, NULL, 'IKES S.A.', '91', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 170.01, 150.58459, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 170.01, 0, 0, 0, 0, 0),
('', NULL, '0992385502001', 'Guayaquil', '1', 'ALG', '000012', 12, 'USD', '2024', '92', NULL, 'CONT', 'ECU', '', 'B', 0, 'Kennedy Norte, Calle Flores Perez Y Clotario Paz piso 6', 0, '2024-06-03', '2024-06-03', NULL, '20:50:38', 41, 42, 21, NULL, NULL, NULL, 0, 345, NULL, 'Broom Ecuador S.A.', '92', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 345, 305.58016, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 345, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '2024', '93', NULL, 'CONT', 'ECU', '', 'B', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2024-06-03', '2024-06-03', NULL, '20:50:38', 43, 44, 22, NULL, NULL, NULL, 0, 200, NULL, 'Digna Carolina Pazmiño Echanique', '93', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 200, 177.14792, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 200, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '2024', '94', NULL, 'CONT', 'ECU', '', 'B', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2024-06-12', '2024-06-12', NULL, '17:09:26', 45, 46, 23, NULL, NULL, NULL, 0, 135, NULL, 'Digna Carolina Pazmiño Echanique', '94', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 135, 119.57484, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 135, 0, 0, 0, 0, 0),
('', NULL, '0912303229', 'Guayaquil', '1', 'ALG', '000014', 14, 'USD', '2024', '95', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-06-20', '2024-06-20', NULL, '09:19:23', 47, 48, 24, NULL, NULL, NULL, 0, 150, NULL, 'Caty Quevedo', '95', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 150, 132.86094, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 150, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '96', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-07-01', '2024-07-01', NULL, '10:21:20', 49, 50, 25, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '96', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '97', NULL, 'CONT', 'ECU', '', 'B', 0, 'Sucre y Boyacá esquina', 0, '2024-07-01', '2024-07-01', NULL, '18:59:23', 51, 52, 26, NULL, NULL, NULL, 0, 170.1, NULL, 'IKES S.A.', '97', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 170.1, 150.6643, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 170.1, 0, 0, 0, 0, 0),
('', NULL, '2390634938001', 'Santo Domingo', '1', 'ALG', '000015', 15, 'USD', '2024', '98', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-07-04', '2024-07-04', NULL, '12:01:32', 55, 56, 28, NULL, NULL, NULL, 0, 43.48, NULL, 'DISERPRO-EC S.A.S.', '98', '', '', 1, 0, 0, 'Santo Domingo de los Tsáchilas', NULL, 1.129, 43.48, 38.51196, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 43.48, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '99', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-07-04', '2024-07-04', NULL, '12:05:59', 57, 58, 29, NULL, NULL, NULL, 0, 30, NULL, 'INGEHISA CIA LTDA', '99', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 30, 26.57219, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 30, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '100', NULL, 'CONT', 'ECU', '', 'B', 0, 'Sucre y Boyacá esquina', 0, '2024-07-31', '2024-07-31', NULL, '11:53:45', 59, 60, 30, NULL, NULL, NULL, 0, 170.1, NULL, 'IKES S.A.', '100', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 170.1, 150.6643, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 170.1, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '101', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-07-31', '2024-07-31', NULL, '11:55:09', 61, 62, 31, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '101', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0993282510001', 'Guayaquil', '1', 'ALG', '000016', 16, 'USD', '2024', '102', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop. Estrella de Belén Mz 1814 Solar 10', 0, '2024-08-07', '2024-08-07', NULL, '17:08:46', 63, 64, 32, NULL, NULL, NULL, 0, 89, NULL, 'FLOMAC M&CS S.A.S.', '102', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 89, 78.83082, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 89, 0, 0, 0, 0, 0),
('', NULL, '2390634938001', 'Santo Domingo', '1', 'ALG', '000015', 15, 'USD', '2024', '103', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-08-19', '2024-08-19', NULL, '11:23:09', 65, 66, 33, NULL, NULL, NULL, 0, 180, NULL, 'DISERPRO-EC S.A.S.', '103', '', '', 1, 0, 0, 'Santo Domingo de los Tsáchilas', NULL, 1.129, 180, 159.43313, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 180, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '2024', '104', NULL, 'CONT', 'ECU', '', 'B', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2024-08-19', '2024-08-19', NULL, '11:24:11', 67, 68, 34, NULL, NULL, NULL, 0, 45, NULL, 'DISIBIS S.A.', '104', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 45, 39.85828, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 45, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '105', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-09-02', '2024-09-02', NULL, '09:19:46', 69, 70, 35, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '105', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '2024', '106', NULL, 'CONT', 'ECU', '', 'B', 0, 'Sucre y Boyacá esquina', 0, '2024-09-02', '2024-09-02', NULL, '09:32:40', 71, 72, 36, NULL, NULL, NULL, 0, 170.1, NULL, 'IKES S.A.', '106', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 170.1, 150.6643, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 170.1, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '2024', '107', NULL, 'CONT', 'ECU', '', 'B', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2024-09-06', '2024-09-06', NULL, '20:02:15', 73, 74, 37, NULL, NULL, NULL, 0, 250.01, NULL, 'DISIBIS S.A.', '107', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250.01, 221.44376, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250.01, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '2024', '108', NULL, 'CONT', 'ECU', '', 'B', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2024-09-09', '2024-09-09', NULL, '17:07:04', 75, 76, 38, NULL, NULL, NULL, 0, 405, NULL, 'Digna Carolina Pazmiño Echanique', '108', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 405, 358.72453, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 405, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '2024', '109', NULL, 'CONT', 'ECU', '', 'B', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2024-09-17', '2024-09-17', NULL, '12:24:26', 77, 78, 39, NULL, NULL, NULL, 0, 225, NULL, 'DISIBIS S.A.', '109', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 225, 199.29141, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 225, 0, 0, 0, 0, 0),
('', NULL, '2390634938001', 'Santo Domingo', '1', 'ALG', '000015', 15, 'USD', '2024', '110', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-09-19', '2024-09-19', NULL, '07:23:04', 79, 80, 40, NULL, NULL, NULL, 0, 180, NULL, 'DISERPRO-EC S.A.S.', '110', '', '', 1, 0, 0, 'Santo Domingo de los Tsáchilas', NULL, 1.129, 180, 159.43313, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 180, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '112', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-09-30', '2024-09-30', NULL, '09:51:29', 83, 84, 42, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '112', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0705016897001', 'Guayaquil', '1', 'ALG', '000017', 17, 'USD', '2024', '111', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Sucre esq.', 0, '2024-09-30', '2024-09-30', NULL, '09:51:29', 85, 86, 43, NULL, NULL, NULL, 0, 250, NULL, 'ZHONG PEIZHEN', '111', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '2024', '113', NULL, 'CONT', 'ECU', '', 'B', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2024-10-19', '2024-10-19', NULL, '19:32:27', 89, 90, 45, NULL, NULL, NULL, 0, 45, NULL, 'DISIBIS S.A.', '113', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 45, 39.85828, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 45, 0, 0, 0, 0, 0),
('', NULL, '0705016897001', 'Guayaquil', '1', 'ALG', '000017', 17, 'USD', '2024', '114', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Sucre esq.', 0, '2024-10-19', '2024-10-19', NULL, '19:33:46', 91, 92, 46, NULL, NULL, NULL, 0, 45, NULL, 'ZHONG PEIZHEN', '114', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 45, 39.85828, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 45, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '115', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-11-01', '2024-11-01', NULL, '09:14:59', 93, 94, 47, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '115', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0705016897001', 'Guayaquil', '1', 'ALG', '000017', 17, 'USD', '2024', '116', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Sucre esq.', 0, '2024-11-01', '2024-11-01', NULL, '12:02:02', 95, 96, 48, NULL, NULL, NULL, 0, 250, NULL, 'ZHONG PEIZHEN', '116', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0992672730001', 'Guayaquil', '1', 'ALG', '000019', 19, 'USD', '2024', '117', NULL, 'CONT', 'ECU', '', 'B', 0, 'Guayaquil', 0, '2024-11-04', '2024-11-04', NULL, '10:11:56', 99, 100, 50, NULL, NULL, NULL, 0, 128.75, NULL, 'AUTOCHECO R. Q. S.A.', '117', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 128.75, 114.03897, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 128.75, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '2024', '118', NULL, 'CONT', 'ECU', '', 'B', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2024-11-04', '2024-11-04', NULL, '10:39:40', 101, 102, 51, NULL, NULL, NULL, 0, 135, NULL, 'Digna Carolina Pazmiño Echanique', '118', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 135, 119.57484, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 135, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '119', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-11-13', '2024-11-13', NULL, '18:29:22', 103, 104, 52, NULL, NULL, NULL, 0, 246, NULL, 'INGEHISA CIA LTDA', '119', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 266.4, 235.96103, 0, 20.4, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 246, 0, 0, 0, 0, 0),
('', NULL, '0926160052', 'Guayaquil', '1', 'ALG', '000008', 8, 'USD', '2024', '120', NULL, 'CONT', 'ECU', '', 'B', 0, 'Entre Rios', 0, '2024-11-15', '2024-11-15', NULL, '16:39:08', 105, 106, 53, NULL, NULL, NULL, 0, 40, NULL, 'Karen Carriel', '120', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 40, 35.42958, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 40, 0, 0, 0, 0, 0),
('', NULL, '2390634938001', 'Santo Domingo', '1', 'ALG', '000015', 15, 'USD', '2024', '121', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-11-28', '2024-11-28', NULL, '19:27:25', 107, 108, 54, NULL, NULL, NULL, 0, 180, NULL, 'DISERPRO-EC S.A.S.', '121', '', '', 1, 0, 0, 'Santo Domingo de los Tsáchilas', NULL, 1.129, 180, 159.43313, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 180, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '2024', '122', NULL, 'CONT', 'ECU', '', 'B', 0, 'Boyacá y Olmedo esquina', 0, '2024-12-01', '2024-12-01', NULL, '16:50:51', 109, 110, 55, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '122', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '2024', '123', NULL, 'CONT', 'ECU', '', 'B', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2024-12-03', '2024-12-03', NULL, '09:48:10', 111, 112, 56, NULL, NULL, NULL, 0, 45, NULL, 'INGEHISA CIA LTDA', '123', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 45, 39.85828, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 45, 0, 0, 0, 0, 0),
('', NULL, '', 'Guayaquil', '1', 'ALG', '000020', 20, 'USD', '2024', '124', NULL, 'CONT', 'ECU', '', 'B', 0, 'Guayaquil', 0, '2024-12-09', '2024-12-09', NULL, '06:36:40', 113, 114, 57, NULL, NULL, NULL, 0, 94.76, NULL, 'PUBLIC MENDEZ', '124', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 94.76, 83.93268, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 94.76, 0, 0, 0, 0, 0),
('', NULL, '0992672730001', 'Guayaquil', '1', 'ALG', '000019', 19, 'USD', '2024', '125', NULL, 'CONT', 'ECU', '', 'B', 0, 'Guayaquil', 0, '2024-12-09', '2024-12-09', '2024-12-09', '07:12:35', 115, 116, 58, NULL, NULL, NULL, 0, 176, NULL, 'AUTOCHECO R. Q. S.A.', '125', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 176, 155.89017, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 176, 0, 0, 0, 0, 0),
('', NULL, '0992942371001', 'Guayaquil', '1', 'ALG', '000009', 9, 'USD', '2024', '126', NULL, 'CONT', 'ECU', '', 'B', 0, '', 0, '2024-12-09', '2024-12-09', NULL, '20:06:32', 117, 118, 59, NULL, NULL, NULL, 0, 155, NULL, 'TCPLUMESAL S. A.', '126', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 155, 137.28964, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 155, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '2024', '127', NULL, 'CONT', 'ECU', '', 'B', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2024-12-24', '2024-12-24', NULL, '08:32:42', 119, 120, 60, NULL, NULL, NULL, 0, 60, NULL, 'DISIBIS S.A.', '127', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 60, 53.14438, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 60, 0, 0, 0, 0, 0),
('', NULL, '0992672730001', 'Guayaquil', '1', 'ALG', '000019', 19, 'USD', '0001', '128', NULL, 'CONT', 'ECU', '', 'C', 0, 'Guayaquil', 0, '2025-01-03', '2025-01-03', NULL, '08:28:23', 123, 124, 62, NULL, NULL, NULL, 0, 176, NULL, 'AUTOCHECO R. Q. S.A.', '128', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 176, 155.89017, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 176, 0, 0, 0, 0, 0),
('', NULL, '0992672730001', 'Guayaquil', '1', 'ALG', '000019', 19, 'USD', '0001', '129', NULL, 'CONT', 'ECU', '', 'C', 0, 'Guayaquil', 0, '2025-01-03', '2025-01-03', NULL, '14:53:22', 125, 126, 63, NULL, NULL, NULL, 0, 40.25, NULL, 'AUTOCHECO R. Q. S.A.', '129', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 40.25, 35.65102, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 40.25, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '0001', '130', NULL, 'CONT', 'ECU', '', 'C', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2025-01-06', '2025-01-06', NULL, '12:34:30', 131, 132, 66, NULL, NULL, NULL, 0, 258.3, NULL, 'DISIBIS S.A.', '130', '', 'DESCUENTO ESPECIAL 10% POR RENOVACIÓN ANTICIPADA', 1, 0, 0, 'Guayas', NULL, 1.129, 258.3, 228.78654, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 258.3, 0, 0, 0, 0, 0),
('', NULL, '0993371810001', 'Guayaquil', '1', 'ALG', '000002', 2, 'USD', '0001', '131', NULL, 'CONT', 'ECU', '', 'C', 0, 'Sucre y Boyacá esquina', 0, '2025-01-06', '2025-01-06', NULL, '13:11:23', 135, 136, 68, NULL, NULL, NULL, 0, 125.78, NULL, 'IKES S.A.', '131', '', 'DESCUENTO ESPECIAL 10% POR RENOVACIÓN ANTICIPADA', 1, 0, 0, 'Guayas', NULL, 1.129, 125.78, 111.40833, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 125.78, 0, 0, 0, 0, 0),
('', NULL, '0992942371001', 'Guayaquil', '1', 'ALG', '000009', 9, 'USD', '0001', '132', NULL, 'CONT', 'ECU', '', 'C', 0, '', 0, '2025-01-14', '2025-01-14', NULL, '11:40:15', 137, 138, 69, NULL, NULL, NULL, 0, 289.99, NULL, 'TCPLUMESAL S. A.', '132', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 289.99, 256.85562, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 289.99, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '133', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-02-01', '2025-02-01', NULL, '11:50:55', 139, 140, 70, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '133', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '134', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-02-01', '2025-02-01', NULL, '11:52:53', 141, 142, 71, NULL, NULL, NULL, 0, 225, NULL, 'WANG ZHOUFU', '134', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 225, 199.29141, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 225, 0, 0, 0, 0, 0),
('', NULL, '0992672730001', 'Guayaquil', '1', 'ALG', '000019', 19, 'USD', '0001', '135', NULL, 'CONT', 'ECU', '', 'C', 0, 'Guayaquil', 0, '2025-02-03', '2025-02-03', NULL, '09:34:14', 143, 144, 72, NULL, NULL, NULL, 0, 211.88, NULL, 'AUTOCHECO R. Q. S.A.', '135', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 211.88, 187.6705, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 211.88, 0, 0, 0, 0, 0),
('', NULL, '1205725011', 'Guayaquil', '1', 'ALG', '000021', 21, 'USD', '0001', '136', NULL, 'CONT', 'ECU', '', 'C', 0, 'Alborada 13ava', 0, '2025-02-16', '2025-02-16', '2025-02-16', '17:41:17', 145, 146, 73, NULL, NULL, NULL, 0, 640, NULL, 'TATIANA LISBETH MORALES MACIAS', '136', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 640, 566.87334, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 640, 0, 0, 0, 0, 0),
('', NULL, '0917733867001', 'Guayaquil', '1', 'ALG', '000005', 5, 'USD', '0001', '137', NULL, 'CONT', 'ECU', '', 'C', 0, 'Venezuela entre la 24 y la 25', 0, '2025-02-18', '2025-02-18', '2025-02-18', '10:05:01', 147, 148, 74, NULL, NULL, NULL, 0, 283.25, NULL, 'Jesús del Rocío Holguín Macías', '137', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 283.25, 250.88574, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 283.25, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '138', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-03-02', '2025-03-02', NULL, '15:18:05', 149, 150, 75, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '138', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0591756060001', 'Latacunga', '1', 'ALG', '000022', 22, 'USD', '0001', '139', NULL, 'CONT', 'ECU', '', 'C', 0, 'Ciudadela Maldonado Toledo – Calle Pangua N°1-185', 0, '2025-03-06', '2025-03-06', '2025-03-06', '13:09:03', 151, 152, 76, NULL, NULL, NULL, 0, 430, NULL, 'Ingeniería y Diseño Integral de Proyectos AP PROJECT', '139', '', '', 1, 0, 0, 'Cotopaxi', NULL, 1.129, 430, 380.86802, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 430, 0, 0, 0, 0, 0),
('', NULL, '1708906084', 'Guayaquil', '1', 'ALG', '000023', 23, 'USD', '0001', '140', NULL, 'CONT', 'ECU', '', 'C', 0, 'Alborada 13ava', 0, '2025-03-10', '2025-03-10', NULL, '14:22:08', 155, 156, 78, NULL, NULL, NULL, 0, 140, NULL, 'Freddy Miranda', '140', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 140, 124.00354, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 140, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '0001', '141', NULL, 'CONT', 'ECU', '', 'C', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2025-03-13', '2025-03-13', NULL, '14:21:34', 157, 158, 79, NULL, NULL, NULL, 0, 135, NULL, 'Digna Carolina Pazmiño Echanique', '141', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 135, 119.57484, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 135, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '0001', '142', NULL, 'CONT', 'ECU', '', 'C', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2025-03-13', '2025-03-13', NULL, '14:25:54', 159, 160, 80, NULL, NULL, NULL, 0, 60, NULL, 'DISIBIS S.A.', '142', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 60, 53.14438, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 60, 0, 0, 0, 0, 0),
('', NULL, '1205725011', 'Guayaquil', '1', 'ALG', '000021', 21, 'USD', '0001', '143', NULL, 'CONT', 'ECU', '', 'C', 0, 'Alborada 13ava', 0, '2025-03-15', '2025-03-15', NULL, '11:29:24', 161, 162, 81, NULL, NULL, NULL, 0, 320, NULL, 'TATIANA LISBETH MORALES MACIAS', '143', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 320, 283.43667, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 320, 0, 0, 0, 0, 0),
('', NULL, 'Katherine Leonor Morán Zavala', 'Guayaquil', '1', 'ALG', '000024', 24, 'USD', '0001', '144', NULL, 'CONT', 'ECU', '', 'C', 0, 'Bastión Popular Bloque 6', 0, '2025-03-17', '2025-03-17', NULL, '09:00:04', 163, 164, 82, NULL, NULL, NULL, 0, 1015, NULL, 'Katherine Leonor Morán Zavala', '144', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 1015, 899.02569, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 1015, 0, 0, 0, 0, 0),
('', NULL, '0705016897001', 'Guayaquil', '1', 'ALG', '000017', 17, 'USD', '0001', '145', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Sucre esq.', 0, '2025-03-21', '2025-03-21', NULL, '13:20:34', 165, 166, 83, NULL, NULL, NULL, 0, 2400, NULL, 'ZHONG PEIZHEN', '145', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 2400, 2125.77502, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 2400, 0, 0, 0, 0, 0),
('', NULL, '0992385502001', 'Guayaquil', '1', 'ALG', '000012', 12, 'USD', '0001', '146', NULL, 'CONT', 'ECU', '', 'C', 0, 'Kennedy Norte, Calle Flores Perez Y Clotario Paz piso 6', 0, '2025-03-21', '2025-03-21', NULL, '14:38:09', 167, 168, 84, NULL, NULL, NULL, 0, 120, NULL, 'Broom Ecuador S.A.', '146', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 120, 106.28875, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 120, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '0001', '147', NULL, 'CONT', 'ECU', '', 'C', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2025-03-21', '2025-03-21', NULL, '15:10:07', 169, 170, 85, NULL, NULL, NULL, 0, 30, NULL, 'INGEHISA CIA LTDA', '147', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 30, 26.57219, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 30, 0, 0, 0, 0, 0),
('', NULL, 'Katherine Leonor Morán Zavala', 'Guayaquil', '1', 'ALG', '000024', 24, 'USD', '0001', '148', NULL, 'CONT', 'ECU', '', 'C', 0, 'Bastión Popular Bloque 6', 0, '2025-03-21', '2025-03-21', NULL, '15:14:49', 171, 172, 86, NULL, NULL, NULL, 0, 50, NULL, 'Katherine Leonor Morán Zavala', '148', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 50, 44.28698, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 50, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '149', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-03-30', '2025-03-30', NULL, '11:00:52', 173, 174, 87, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '149', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0909468357', 'Buena Fe', '1', 'ALG', '000025', 25, 'USD', '0001', '150', NULL, 'CONT', 'ECU', '', 'C', 0, '', 0, '2025-04-10', '2025-04-10', '2025-04-10', '09:24:00', 175, 176, 88, NULL, NULL, NULL, 0, 55, NULL, 'Carmen Medranda León', '150', '', '', 1, 0, 0, 'Los Ríos', NULL, 1.129, 55, 48.71568, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 55, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '0001', '151', NULL, 'CONT', 'ECU', '', 'C', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2025-04-14', '2025-04-14', NULL, '12:45:26', 177, 178, 89, NULL, NULL, NULL, 0, 135, NULL, 'Digna Carolina Pazmiño Echanique', '151', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 135, 119.57484, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 135, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '152', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-05-01', '2025-05-01', NULL, '16:38:24', 181, 182, 91, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '152', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '0705016897001', 'Guayaquil', '1', 'ALG', '000017', 17, 'USD', '0001', '153', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Sucre esq.', 0, '2025-05-08', '2025-05-08', NULL, '13:22:52', 183, 184, 92, NULL, NULL, NULL, 0, 17, NULL, 'ZHONG PEIZHEN', '153', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 17, 15.05757, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 17, 0, 0, 0, 0, 0),
('', NULL, '0950604587', 'Guayaquil', '1', 'ALG', '000026', 26, 'USD', '0001', '154', NULL, 'CONT', 'ECU', '', 'C', 0, 'BASTIÓN POPULAR', 0, '2025-05-16', '2025-05-16', NULL, '17:48:35', 185, 186, 93, NULL, NULL, NULL, 0, 60, NULL, 'JUSTO BAUTISTA MORÁN ZAVALA', '154', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 60, 53.14438, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 60, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '0001', '155', NULL, 'CONT', 'ECU', '', 'C', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2025-05-16', '2025-05-16', NULL, '17:49:34', 187, 188, 94, NULL, NULL, NULL, 0, 40, NULL, 'INGEHISA CIA LTDA', '155', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 40, 35.42958, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 40, 0, 0, 0, 0, 0),
('', NULL, '0950604587', 'Guayaquil', '1', 'ALG', '000026', 26, 'USD', '0001', '156', NULL, 'CONT', 'ECU', '', 'C', 0, 'BASTIÓN POPULAR', 0, '2025-05-19', '2025-05-19', NULL, '16:49:45', 189, 190, 95, NULL, NULL, NULL, 0, 60, NULL, 'JUSTO BAUTISTA MORÁN ZAVALA', '156', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 60, 53.14438, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 60, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '0001', '158', NULL, 'CONT', 'ECU', '', 'C', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2025-05-27', '2025-05-27', NULL, '17:30:34', 193, 194, 97, NULL, NULL, NULL, 0, 83, NULL, 'INGEHISA CIA LTDA', '158', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 83, 73.51639, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 83, 0, 0, 0, 0, 0),
('', NULL, '2390050170001', 'Santo Domingo', '1', 'ALG', '000028', 28, 'USD', '0001', '159', NULL, 'CONT', 'ECU', '', 'C', 0, '', 0, '2025-05-29', '2025-05-29', NULL, '11:33:25', 197, 198, 99, NULL, NULL, NULL, 0, 40, NULL, 'ABRILTRANS S.A.', '159', '', '', 1, 0, 0, 'Santo Domingo de los Tsáchilas', NULL, 1.129, 46, 40.74402, 0, 6, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 40, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '160', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-06-01', '2025-06-01', NULL, '11:02:18', 199, 200, 100, NULL, NULL, NULL, 0, 298, NULL, 'WANG ZHOUFU', '160', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 298, 263.9504, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 298, 0, 0, 0, 0, 0),
('', NULL, '0912303229', 'Guayaquil', '1', 'ALG', '000014', 14, 'USD', '0001', '161', NULL, 'CONT', 'ECU', '', 'C', 0, '', 0, '2025-06-02', '2025-06-02', NULL, '08:10:36', 201, 202, 101, NULL, NULL, NULL, 0, 150, NULL, 'Caty Quevedo', '161', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 150, 132.86094, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 150, 0, 0, 0, 0, 0),
('', NULL, '0992385502001', 'Guayaquil', '1', 'ALG', '000012', 12, 'USD', '0001', '157', NULL, 'CONT', 'ECU', '', 'C', 0, 'Kennedy Norte, Calle Flores Perez Y Clotario Paz piso 6', 0, '2025-05-27', '2025-06-19', NULL, '17:30:34', 203, 204, 102, NULL, NULL, NULL, 0, 345, NULL, 'Broom Ecuador S.A.', '157', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 345, 305.58016, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 345, 0, 0, 0, 0, 0),
('', NULL, '0992385502001', 'Guayaquil', '1', 'ALG', '000012', 12, 'USD', '0001', '162', NULL, 'CONT', 'ECU', '', 'C', 0, 'Kennedy Norte, Calle Flores Perez Y Clotario Paz piso 6', 0, '2025-06-19', '2025-06-19', NULL, '16:06:24', 205, 206, 103, NULL, NULL, NULL, 0, 345, NULL, 'Broom Ecuador S.A.', '162', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 345, 305.58016, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 345, 0, 0, 0, 0, 0),
('', NULL, '0992876387001', 'Guayaquil', '1', 'ALG', '000029', 29, 'USD', '0001', '163', NULL, 'CONT', 'ECU', '', 'C', 0, 'Av. Costanera y Av. Las Monjas', 0, '2025-06-19', '2025-06-19', '2025-06-19', '18:38:28', 207, 208, 104, NULL, NULL, NULL, 0, 400, NULL, 'Instituto Tecnológico Life College', '163', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 400, 354.29584, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 400, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '0001', '164', NULL, 'CONT', 'ECU', '', 'C', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2025-06-23', '2025-06-23', NULL, '12:56:05', 209, 210, 105, NULL, NULL, NULL, 0, 250.01, NULL, 'DISIBIS S.A.', '164', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250.01, 221.44376, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250.01, 0, 0, 0, 0, 0),
('', NULL, '0705016897001', 'Guayaquil', '1', 'ALG', '000017', 17, 'USD', '0001', '165', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Sucre esq.', 0, '2025-06-23', '2025-06-23', NULL, '12:58:34', 211, 212, 106, NULL, NULL, NULL, 0, 150, NULL, 'ZHONG PEIZHEN', '165', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 150, 132.86094, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 150, 0, 0, 0, 0, 0),
('', NULL, '0992829575001', 'Guayaquil', '1', 'ALG', '000006', 6, 'USD', '0001', '166', NULL, 'CONT', 'ECU', '', 'C', 0, 'Coop Bastión Popular Bl 6 Mz 945 Sl 9B', 0, '2025-07-01', '2025-07-01', NULL, '15:23:33', 213, 214, 107, NULL, NULL, NULL, 0, 30, NULL, 'INGEHISA CIA LTDA', '166', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 30, 26.57219, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 30, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '167', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-07-01', '2025-07-01', NULL, '21:18:00', 215, 216, 108, NULL, NULL, NULL, 0, 400, NULL, 'WANG ZHOUFU', '167', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 400, 354.29584, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 400, 0, 0, 0, 0, 0),
('', NULL, '1720831880001', 'Guayaquil', '1', 'ALG', '000013', 13, 'USD', '0001', '168', NULL, 'CONT', 'ECU', '', 'C', 0, 'Santo Domingo - Av. Río Mulaute y Av. Quito', 0, '2025-07-24', '2025-07-24', NULL, '12:12:47', 217, 218, 109, NULL, NULL, NULL, 0, 135, NULL, 'Digna Carolina Pazmiño Echanique', '168', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 135, 119.57484, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 135, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '169', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-07-24', '2025-07-24', NULL, '16:58:17', 219, 220, 110, NULL, NULL, NULL, 0, 250, NULL, 'WANG ZHOUFU', '169', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 250, 221.4349, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 250, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '170', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-07-31', '2025-07-31', NULL, '13:07:20', 221, 222, 111, NULL, NULL, NULL, 0, 510, NULL, 'WANG ZHOUFU', '170', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 510, 451.72719, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 510, 0, 0, 0, 0, 0),
('', NULL, '0591756060001', 'Latacunga', '1', 'ALG', '000022', 22, 'USD', '0001', '171', NULL, 'CONT', 'ECU', '', 'C', 0, 'Ciudadela Maldonado Toledo – Calle Pangua N°1-185', 0, '2025-08-13', '2025-08-13', NULL, '08:54:37', 223, 224, 112, NULL, NULL, NULL, 0, 20, NULL, 'Ingeniería y Diseño Integral de Proyectos AP PROJECT', '171', '', '', 1, 0, 0, 'Cotopaxi', NULL, 1.129, 20, 17.71479, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 20, 0, 0, 0, 0, 0),
('', NULL, '0993282510001', 'Guayaquil', '1', 'ALG', '000016', 16, 'USD', '0001', '172', NULL, 'CONT', 'ECU', '', 'C', 0, 'Coop. Estrella de Belén Mz 1814 Solar 10', 0, '2025-08-13', '2025-08-13', NULL, '13:03:26', 225, 226, 113, NULL, NULL, NULL, 0, 82.5, NULL, 'FLOMAC M&CS S.A.S.', '172', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 82.5, 73.07352, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 82.5, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '173', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-08-15', '2025-08-15', NULL, '07:45:33', 227, 228, 114, NULL, NULL, NULL, 0, 89, NULL, 'WANG ZHOUFU', '173', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 89, 78.83082, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 89, 0, 0, 0, 0, 0),
('', NULL, '0993123331001', 'Guayaquil', '1', 'ALG', '000007', 7, 'USD', '0001', '174', NULL, 'CONT', 'ECU', '', 'C', 0, 'Av. Narcisa de Jesús 100 mtrs antes de llegar a la Gasolinera Hno. Miguel', 0, '2025-08-22', '2025-08-22', NULL, '20:01:36', 233, 234, 117, NULL, NULL, NULL, 0, 95, NULL, 'DISIBIS S.A.', '174', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 95, 84.14526, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 95, 0, 0, 0, 0, 0),
('', NULL, '1755798392001', 'Guayaquil', '1', 'ALG', '000003', 3, 'USD', '0001', '175', NULL, 'CONT', 'ECU', '', 'C', 0, 'Boyacá y Olmedo esquina', 0, '2025-09-01', '2025-09-01', NULL, '10:44:26', 235, 236, 118, NULL, NULL, NULL, 0, 564, NULL, 'WANG ZHOUFU', '175', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 564, 499.55713, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 564, 0, 0, 0, 0, 0),
('', NULL, '0992672730001', 'Guayaquil', '1', 'ALG', '000019', 19, 'USD', '0001', '176', NULL, 'CONT', 'ECU', '', 'C', 0, 'Guayaquil', 0, '2025-09-03', '2025-09-03', NULL, '10:50:36', 237, 238, 119, NULL, NULL, NULL, 0, 40, NULL, 'AUTOCHECO R. Q. S.A.', '176', '', '', 1, 0, 0, 'Guayas', NULL, 1.129, 40, 35.42958, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 40, 0, 0, 0, 0, 0),
('', NULL, '0591756060001', 'Latacunga', '1', 'ALG', '000022', 22, 'USD', '0001', '177', NULL, 'CONT', 'ECU', '', 'C', 0, 'Ciudadela Maldonado Toledo – Calle Pangua N°1-185', 0, '2025-09-10', '2025-09-10', NULL, '16:50:33', 239, 240, 120, NULL, NULL, NULL, 0, 400, NULL, 'Ingeniería y Diseño Integral de Proyectos AP PROJECT', '177', '', '', 1, 0, 0, 'Cotopaxi', NULL, 1.129, 400, 354.29584, 0, 0, 0, NULL, NULL, '', '', '', '', '', '', '', '', 'ECU', NULL, 0, 400, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturasprov`
--

CREATE TABLE `facturasprov` (
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `codigorect` varchar(20) DEFAULT NULL,
  `codpago` varchar(10) NOT NULL,
  `codproveedor` varchar(6) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `deabono` tinyint(1) DEFAULT 0,
  `editable` tinyint(1) DEFAULT 0,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idasientop` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `neto` double DEFAULT NULL,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `numero` varchar(12) NOT NULL,
  `numproveedor` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `pagada` tinyint(1) NOT NULL DEFAULT 0,
  `anulada` tinyint(1) NOT NULL DEFAULT 0,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double DEFAULT NULL,
  `totaleuros` double DEFAULT NULL,
  `totalirpf` double DEFAULT NULL,
  `totaliva` double DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  `numdocs` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `descripcion` varchar(100) NOT NULL,
  `codfamilia` varchar(8) NOT NULL,
  `madre` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`descripcion`, `codfamilia`, `madre`) VALUES
('VARIOS', 'VARI', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formaspago`
--

CREATE TABLE `formaspago` (
  `codpago` varchar(10) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `genrecibos` varchar(10) NOT NULL,
  `codcuenta` varchar(6) DEFAULT NULL,
  `domiciliado` tinyint(1) DEFAULT NULL,
  `imprimir` tinyint(1) DEFAULT 1,
  `vencimiento` varchar(20) DEFAULT '+1month'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `formaspago`
--

INSERT INTO `formaspago` (`codpago`, `descripcion`, `genrecibos`, `codcuenta`, `domiciliado`, `imprimir`, `vencimiento`) VALUES
('CONT', 'Al contado', 'Pagados', NULL, 0, 1, '+0day'),
('PAYPAL', 'PayPal', 'Pagados', NULL, 0, 1, '+0day'),
('TARJETA', 'Tarjeta de crédito', 'Pagados', NULL, 0, 1, '+0day'),
('TRANS', 'Transferencia bancaria', 'Emitidos', NULL, 0, 1, '+1month');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_access`
--

CREATE TABLE `fs_access` (
  `fs_user` varchar(12) NOT NULL,
  `fs_page` varchar(30) NOT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fs_access`
--

INSERT INTO `fs_access` (`fs_user`, `fs_page`, `allow_delete`) VALUES
('demo', 'admin_almacenes', 1),
('demo', 'admin_divisas', 1),
('demo', 'admin_empresa', 1),
('demo', 'articulo_subcuentas', 1),
('demo', 'articulos_pedidos', 1),
('demo', 'compras_albaran', 1),
('demo', 'compras_albaranes', 1),
('demo', 'compras_factura', 1),
('demo', 'compras_factura_devolucion', 1),
('demo', 'compras_facturas', 1),
('demo', 'compras_imprimir', 1),
('demo', 'compras_pedido', 1),
('demo', 'compras_pedidos', 1),
('demo', 'compras_proveedor', 1),
('demo', 'compras_proveedores', 1),
('demo', 'contabilidad_asiento', 1),
('demo', 'contabilidad_asientos', 1),
('demo', 'contabilidad_cuenta', 1),
('demo', 'contabilidad_cuentas', 1),
('demo', 'contabilidad_ejercicio', 1),
('demo', 'contabilidad_ejercicios', 1),
('demo', 'contabilidad_epigrafes', 1),
('demo', 'contabilidad_formas_pago', 1),
('demo', 'contabilidad_impuestos', 1),
('demo', 'contabilidad_nuevo_asiento', 1),
('demo', 'contabilidad_series', 1),
('demo', 'contabilidad_subcuenta', 1),
('demo', 'cuentas_especiales', 1),
('demo', 'dashboard', 1),
('demo', 'editar_balances', 1),
('demo', 'editar_transferencia_stock', 1),
('demo', 'factura_detallada', 1),
('demo', 'imprimir_presu_pedi', 1),
('demo', 'informe_albaranes', 1),
('demo', 'informe_articulos', 1),
('demo', 'informe_contabilidad', 1),
('demo', 'informe_facturas', 1),
('demo', 'informe_pedidos', 1),
('demo', 'informe_presupuestos', 1),
('demo', 'nueva_compra', 1),
('demo', 'nueva_venta', 1),
('demo', 'subcuenta_asociada', 1),
('demo', 'ventas_agrupar_albaranes', 1),
('demo', 'ventas_albaran', 1),
('demo', 'ventas_albaranes', 1),
('demo', 'ventas_articulo', 1),
('demo', 'ventas_articulos', 1),
('demo', 'ventas_atributos', 1),
('demo', 'ventas_cliente', 1),
('demo', 'ventas_cliente_articulos', 1),
('demo', 'ventas_clientes', 1),
('demo', 'ventas_clientes_opciones', 1),
('demo', 'ventas_fabricante', 1),
('demo', 'ventas_fabricantes', 1),
('demo', 'ventas_factura', 1),
('demo', 'ventas_factura_devolucion', 1),
('demo', 'ventas_facturas', 1),
('demo', 'ventas_familia', 1),
('demo', 'ventas_familias', 1),
('demo', 'ventas_grupo', 1),
('demo', 'ventas_imprimir', 1),
('demo', 'ventas_pedido', 1),
('demo', 'ventas_pedidos', 1),
('demo', 'ventas_presupuesto', 1),
('demo', 'ventas_presupuestos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_extensions2`
--

CREATE TABLE `fs_extensions2` (
  `name` varchar(50) NOT NULL,
  `page_from` varchar(30) NOT NULL,
  `page_to` varchar(30) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `params` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fs_extensions2`
--

INSERT INTO `fs_extensions2` (`name`, `page_from`, `page_to`, `type`, `text`, `params`) VALUES
('agrupar_albaranes', 'compras_agrupar_albaranes', 'compras_albaranes', 'button', '<span class=\"glyphicon glyphicon-duplicate\"></span><span class=\"hidden-xs\">&nbsp; Agrupar</span>', ''),
('agrupar_albaranes', 'ventas_agrupar_albaranes', 'ventas_albaranes', 'button', '<span class=\"glyphicon glyphicon-duplicate\"></span><span class=\"hidden-xs\">&nbsp; Agrupar</span>', ''),
('albaran_detallado_es_ES', 'albaran_detallado', 'ventas_albaran', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Guia de Remisión detallado es_ES', '&codidioma=es_ES'),
('albaranes_agente', 'compras_albaranes', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Guias de Remisión de proveedor', ''),
('albaranes_agente', 'ventas_albaranes', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Guias de Remisión de cliente', ''),
('albaranes_articulo', 'compras_albaranes', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Guias de Remisión de proveedor', ''),
('albaranes_articulo', 'ventas_albaranes', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Guias de Remisión de cliente', ''),
('albaranes_cliente', 'ventas_albaranes', 'ventas_cliente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Guias de Remisión', ''),
('albaranes_proveedor', 'compras_albaranes', 'compras_proveedor', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Guias de Remisión', ''),
('api_remote_printer', 'tpv_recambios', NULL, 'api', 'remote_printer', NULL),
('articulo_subcuentas', 'articulo_subcuentas', 'ventas_articulo', 'tab', '<span class=\"glyphicon glyphicon-book\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Subcuentas</span>', NULL),
('articulos_pedidos_compras', 'articulos_pedidos', 'compras_pedidos', 'button', '<span class=\"glyphicon glyphicon-tasks\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Artículos</span>', '&compras=TRUE'),
('articulos_pedidos_ventas', 'articulos_pedidos', 'ventas_pedidos', 'button', '<span class=\"glyphicon glyphicon-tasks\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Artículos</span>', NULL),
('btn_albaran', 'compras_actualiza_arts', 'compras_albaran', 'tab', '<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Actualizar</span>', '&doc=albaran'),
('btn_atributos', 'ventas_atributos', 'ventas_articulos', 'button', '<span class=\"glyphicon glyphicon-list-alt\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Atributos</span>', NULL),
('btn_balances', 'editar_balances', 'informe_contabilidad', 'button', '<span class=\"glyphicon glyphicon-wrench\"></span><span class=\"hidden-xs\">&nbsp; Balances</a>', NULL),
('btn_fabricantes', 'ventas_fabricantes', 'ventas_articulos', 'button', '<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Fabricantes</span>', NULL),
('btn_familias', 'ventas_familias', 'ventas_articulos', 'button', '<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Familias</span>', NULL),
('btn_pedido', 'compras_actualiza_arts', 'compras_pedido', 'tab', '<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Actualizar</span>', '&doc=pedido'),
('cosmo', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-cosmo.min.css', ''),
('darkly', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-darkly.min.css', ''),
('email_albaran', 'ventas_imprimir', 'ventas_albaran', 'email', 'Guia de Remisión simple', '&albaran=TRUE'),
('email_albaran_proveedor', 'compras_imprimir', 'compras_albaran', 'email', 'Albarán simple', '&albaran=TRUE'),
('email_factura', 'ventas_imprimir', 'ventas_factura', 'email', 'Factura simple', '&factura=TRUE&tipo=simple'),
('email_pedido', 'imprimir_presu_pedi', 'ventas_pedido', 'email', 'Pedido simple', '&pedido=TRUE'),
('email_pedido_proveedor', 'imprimir_presu_pedi', 'compras_pedido', 'email', 'Pedido simple', '&pedido_p=TRUE'),
('email_presupuesto', 'imprimir_presu_pedi', 'ventas_presupuesto', 'email', 'Proforma simple', '&presupuesto=TRUE'),
('enviar_factura_detallada_es_ES', 'factura_detallada', 'ventas_factura', 'email', 'Factura detallada es_ES', '&codidioma=es_ES'),
('factura_detallada_es_ES', 'factura_detallada', 'ventas_factura', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Factura detallada es_ES', '&codidioma=es_ES'),
('facturas_agente', 'compras_facturas', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de proveedor', ''),
('facturas_agente', 'ventas_facturas', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de cliente', ''),
('facturas_articulo', 'compras_facturas', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de proveedor', ''),
('facturas_articulo', 'ventas_facturas', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de cliente', ''),
('facturas_cliente', 'ventas_facturas', 'ventas_cliente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas', ''),
('facturas_proveedor', 'compras_facturas', 'compras_proveedor', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas', ''),
('flatly', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-flatly.min.css', ''),
('imprimir_albaran', 'ventas_imprimir', 'ventas_albaran', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Guia de Remisión simple', '&albaran=TRUE'),
('imprimir_albaran_noval', 'ventas_imprimir', 'ventas_albaran', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Guia de Remisión sin valorar', '&albaran=TRUE&noval=TRUE'),
('imprimir_albaran_proveedor', 'compras_imprimir', 'compras_albaran', 'pdf', 'Albarán simple', '&albaran=TRUE'),
('imprimir_factura', 'ventas_imprimir', 'ventas_factura', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Factura simple', '&factura=TRUE&tipo=simple'),
('imprimir_factura_carta', 'ventas_imprimir', 'ventas_factura', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Modelo carta', '&factura=TRUE&tipo=carta'),
('imprimir_factura_proveedor', 'compras_imprimir', 'compras_factura', 'pdf', 'Factura simple', '&factura=TRUE'),
('imprimir_pedido', 'imprimir_presu_pedi', 'ventas_pedido', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Pedido simple', '&pedido=TRUE'),
('imprimir_pedido_noval', 'imprimir_presu_pedi', 'ventas_pedido', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Pedido simple sin valorar', '&pedido=TRUE&noval=TRUE'),
('imprimir_pedido_proveedor', 'imprimir_presu_pedi', 'compras_pedido', 'pdf', 'Pedido simple', '&pedido_p=TRUE'),
('imprimir_presupuesto', 'imprimir_presu_pedi', 'ventas_presupuesto', 'pdf', '<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Proforma simple', '&presupuesto=TRUE'),
('lumen', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-lumen.min.css', ''),
('maquetar_albaran', 'ventas_maquetar', 'ventas_albaran', 'pdf', '<i class=\"fa fa-magic\"></i>&nbsp; Maquetar', '&albaran=TRUE'),
('maquetar_factura', 'ventas_maquetar', 'ventas_factura', 'pdf', '<i class=\"fa fa-magic\"></i>&nbsp; Maquetar', '&factura=TRUE'),
('maquetar_pedido', 'maquetar_presu_pedi', 'ventas_pedido', 'pdf', '<i class=\"fa fa-magic\"></i>&nbsp; Maquetar', '&pedido=TRUE'),
('maquetar_presu', 'maquetar_presu_pedi', 'ventas_presupuesto', 'pdf', '<i class=\"fa fa-magic\"></i>&nbsp; Maquetar', '&presu=TRUE'),
('opciones_clientes', 'ventas_clientes_opciones', 'ventas_clientes', 'button', '<span class=\"glyphicon glyphicon-wrench\" aria-hidden=\"true\" title=\"Opciones para nuevos clientes\"></span><span class=\"hidden-xs\">&nbsp; Opciones</span>', NULL),
('opciones_fac_detallada', 'opciones_factura_detallada', 'admin_empresa', 'button', '<span class=\"glyphicon glyphicon-print\" aria-hidden=\"true\"></span> &nbsp; Factura Detallada', NULL),
('paper', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-paper.min.css', ''),
('pedidos_agente', 'compras_pedidos', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos a proveedor', ''),
('pedidos_agente', 'ventas_pedidos', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos de cliente', ''),
('pedidos_articulo', 'compras_pedidos', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos a proveedor', ''),
('pedidos_articulo', 'ventas_pedidos', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos de cliente', ''),
('pedidos_cliente', 'ventas_pedidos', 'ventas_cliente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos', ''),
('pedidos_proveedor', 'compras_pedidos', 'compras_proveedor', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos', ''),
('plan_ecuador', 'admin_ecuador', 'contabilidad_ejercicio', 'fuente', 'Plan contable de Ecuador', 'plugins/ecuador/extras/ecuador.xml'),
('presupuestos_agente', 'ventas_presupuestos', 'admin_agente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Proformas de cliente', ''),
('presupuestos_articulo', 'ventas_presupuestos', 'ventas_articulo', 'tab_button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Proformas de cliente', ''),
('presupuestos_cliente', 'ventas_presupuestos', 'ventas_cliente', 'button', '<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Proformas', ''),
('sandstone', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-sandstone.min.css', ''),
('simplex', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-simplex.min.css', ''),
('spacelab', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-spacelab.min.css', ''),
('tab_devoluciones', 'compras_factura_devolucion', 'compras_factura', 'tab', '<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Devoluciones</span>', NULL),
('tab_devoluciones', 'ventas_factura_devolucion', 'ventas_factura', 'tab', '<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Devoluciones</span>', NULL),
('tab_editar_factura', 'compras_factura_devolucion', 'editar_factura_prov', 'tab', '<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Devoluciones</span>', NULL),
('tab_editar_factura', 'ventas_factura_devolucion', 'editar_factura', 'tab', '<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Devoluciones</span>', NULL),
('tab_ventas_cliente_articulos', 'ventas_cliente_articulos', 'ventas_cliente', 'tab', '<i class=\"fa fa-cubes\" aria-hidden=\"true\"></i>&nbsp; Artículos', NULL),
('united', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-united.min.css', ''),
('yeti', 'admin_user', 'admin_user', 'css', 'view/css/bootstrap-yeti.min.css', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_logs`
--

CREATE TABLE `fs_logs` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `detalle` text NOT NULL,
  `fecha` timestamp NULL,
  `usuario` varchar(12) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `alerta` tinyint(1) DEFAULT NULL,
  `controlador` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fs_logs`
--

INSERT INTO `fs_logs` (`id`, `tipo`, `detalle`, `fecha`, `usuario`, `ip`, `alerta`, `controlador`) VALUES
(44, 'msg', 'Historial borrado correctamente.', '2024-04-01 13:57:27', 'admin', '181.199.44.116', 0, 'admin_info'),
(45, 'login', 'Login correcto.', '2024-04-08 17:26:53', 'admin', '181.199.44.116', 0, 'admin_home'),
(46, 'login', 'Login correcto.', '2024-04-15 12:26:34', 'admin', '181.199.44.116', 0, 'admin_home'),
(47, 'error', 'Ya hay facturas posteriores a la fecha seleccionada (15-03-2024). Nueva fecha asignada: 08-04-2024', '2024-04-15 12:40:31', 'admin', '181.199.44.116', 0, 'nueva_venta'),
(48, 'serie', 'Se ha cambiado la numeración inicial de la serie B para el ejercicio 2024. Nuevo número inicial: 76', '2024-04-16 14:23:43', 'admin', '157.100.107.166', 1, ''),
(49, 'error', '¡Factura de cliente no encontrada!', '2024-04-16 14:31:55', 'admin', '157.100.107.166', 0, 'factura_detallada'),
(50, 'login', 'Login correcto.', '2024-04-29 23:57:08', 'admin', '157.100.112.233', 0, 'admin_home'),
(51, 'login', 'Login correcto.', '2024-05-08 20:16:41', 'admin', '181.199.42.28', 0, 'admin_home'),
(52, 'login', 'Login correcto.', '2024-05-13 12:27:00', 'admin', '157.100.112.233', 0, 'admin_home'),
(53, 'login', 'Login correcto.', '2024-05-20 19:44:46', 'admin', '157.100.112.233', 0, 'admin_home'),
(54, 'login', 'Login correcto.', '2024-05-31 12:43:50', 'admin', '157.100.112.233', 0, 'admin_home'),
(55, 'login', 'Login correcto.', '2024-06-12 21:57:45', 'admin', '157.100.112.233', 0, 'admin_home'),
(56, 'msg', 'Articulo 19 eliminado correctamente.', '2024-06-12 22:03:44', 'admin', '157.100.112.233', 0, 'ventas_articulos'),
(57, 'error', 'Ya hay facturas posteriores a la fecha seleccionada (03-05-2024). Nueva fecha asignada: 03-06-2024', '2024-06-12 22:06:26', 'admin', '157.100.112.233', 0, 'nueva_venta'),
(58, 'login', 'El usuario ha cerrado la sesión.', '2024-06-22 15:17:29', 'admin', '157.100.112.233', 0, 'dashboard'),
(59, 'login', 'Login correcto.', '2024-07-01 15:20:14', 'admin', '157.100.112.233', 0, 'admin_home'),
(60, 'login', 'Login correcto.', '2024-07-31 16:53:08', 'admin', '181.199.42.116', 0, 'admin_home'),
(61, 'login', 'Login correcto.', '2024-08-07 22:02:39', 'admin', '181.199.42.116', 0, 'admin_home'),
(62, 'login', 'Login correcto.', '2024-08-07 21:44:32', 'admin', '181.199.42.116', 0, 'admin_home'),
(63, 'login', '¡Contraseña incorrecta! (admin)', '2024-08-19 15:22:43', NULL, '181.199.42.116', 1, 'admin_home'),
(64, 'login', 'Login correcto.', '2024-08-19 15:22:53', 'admin', '181.199.42.116', 0, 'admin_home'),
(65, 'login', 'Login correcto.', '2024-09-02 13:19:26', 'admin', '181.199.42.116', 0, 'admin_home'),
(66, 'error', 'Ya existe el artículo &lt;a href=&quot;index.php?page=ventas_articulo&ref=0020&quot;&gt;0020&lt;/a&gt;', '2024-09-07 00:01:30', 'admin', '181.199.42.116', 0, 'ventas_articulos'),
(67, 'login', 'Login correcto.', '2024-09-09 21:06:25', 'admin', '181.199.42.116', 0, 'admin_home'),
(68, 'login', 'Login correcto.', '2024-09-17 16:24:09', 'admin', '157.100.112.232', 0, 'admin_home'),
(69, 'login', 'Login correcto.', '2024-09-30 13:48:30', 'admin', '181.199.60.116', 0, 'admin_home'),
(70, 'login', '¡Contraseña incorrecta! (admin)', '2024-10-17 18:04:11', NULL, '157.100.107.163', 1, 'admin_home'),
(71, 'login', '¡Contraseña incorrecta! (admin)', '2024-10-17 18:04:19', NULL, '157.100.107.163', 1, 'admin_home'),
(72, 'login', 'Login correcto.', '2024-10-17 18:04:36', 'admin', '157.100.107.163', 0, 'admin_home'),
(73, 'login', 'Login correcto.', '2024-10-19 23:32:03', 'admin', '157.100.107.167', 0, 'admin_home'),
(74, 'login', 'Login correcto.', '2024-11-01 13:14:36', 'admin', '200.85.80.125', 0, 'admin_home'),
(75, 'login', 'Login correcto.', '2024-11-01 20:31:51', 'admin', '181.199.63.116', 0, 'admin_home'),
(76, 'login', 'El usuario ha cerrado la sesión.', '2024-11-04 15:00:46', 'admin', '181.199.63.116', 0, 'admin_home'),
(77, 'login', 'Login correcto.', '2024-11-04 15:00:55', 'admin', '181.199.63.116', 0, 'admin_home'),
(78, 'error', 'Factura no encontrada.', '2024-11-04 15:11:47', 'admin', '181.199.63.116', 0, 'ventas_facturas'),
(79, 'login', 'Login correcto.', '2024-11-13 23:25:36', 'admin', '181.199.61.116', 0, 'admin_home'),
(80, 'login', '¡Contraseña incorrecta! (admin)', '2024-11-15 21:38:28', NULL, '181.199.61.116', 1, 'admin_home'),
(81, 'login', 'Login correcto.', '2024-11-15 21:38:40', 'admin', '181.199.61.116', 0, 'admin_home'),
(82, 'login', 'Login correcto.', '2024-11-28 22:43:55', 'admin', '181.199.61.116', 0, 'admin_home'),
(83, 'login', 'Login correcto.', '2024-12-01 21:49:11', 'admin', '181.199.61.116', 0, 'admin_home'),
(84, 'login', 'Login correcto.', '2024-12-24 13:31:28', 'admin', '157.100.107.162', 0, 'admin_home'),
(85, 'login', 'Login correcto.', '2024-12-31 14:08:01', 'admin', '181.199.62.116', 0, 'admin_home'),
(86, 'error', 'Error al copiar el archivo.', '2025-01-02 14:09:04', 'admin', '181.199.62.116', 0, 'contabilidad_ejercicio'),
(87, 'serie', 'Se ha cambiado la numeración inicial de la serie C para el ejercicio 0001. Nuevo número inicial: 126', '2025-01-02 14:11:40', 'admin', '181.199.62.116', 1, ''),
(88, 'login', 'Login correcto.', '2025-02-01 16:50:21', 'admin', '181.199.62.116', 0, 'admin_home'),
(89, 'login', '¡Contraseña incorrecta! (admin)', '2025-02-03 14:31:56', NULL, '181.199.62.116', 1, 'admin_home'),
(90, 'login', 'Login correcto.', '2025-02-03 14:32:03', 'admin', '181.199.62.116', 0, 'admin_home'),
(91, 'login', 'Login correcto.', '2025-02-16 22:38:16', 'admin', '181.199.62.116', 0, 'admin_home'),
(92, 'login', 'Login correcto.', '2025-03-02 20:17:45', 'admin', '181.199.62.116', 0, 'admin_home'),
(93, 'login', 'Login correcto.', '2025-03-25 15:00:14', 'admin', '157.100.112.129', 0, 'admin_home'),
(94, 'login', 'Login correcto.', '2025-03-30 15:00:26', 'admin', '181.199.62.116', 0, 'admin_home'),
(95, 'login', 'Login correcto.', '2025-04-10 13:16:47', 'admin', '181.199.62.116', 0, 'admin_home'),
(96, 'login', 'Login correcto.', '2025-04-23 13:54:57', 'admin', '181.199.62.116', 0, 'admin_home'),
(97, 'login', 'Login correcto.', '2025-05-01 20:37:53', 'admin', '181.199.62.116', 0, 'admin_home'),
(98, 'login', '¡Contraseña incorrecta! (admin)', '2025-05-08 17:22:25', NULL, '181.199.41.116', 1, 'admin_home'),
(99, 'login', 'Login correcto.', '2025-05-08 17:22:30', 'admin', '181.199.41.116', 0, 'admin_home'),
(100, 'login', 'Login correcto.', '2025-05-16 21:45:57', 'admin', '181.199.41.116', 0, 'admin_home'),
(101, 'login', 'Login correcto.', '2025-05-19 20:49:29', 'admin', '181.199.41.116', 0, 'admin_home'),
(102, 'login', 'El usuario ha cerrado la sesión.', '2025-05-20 14:12:38', 'admin', '181.199.41.116', 0, 'admin_home'),
(103, 'login', 'Login correcto.', '2025-05-20 14:12:45', 'admin', '181.199.41.116', 0, 'admin_home'),
(104, 'login', 'Login correcto.', '2025-05-26 20:27:08', 'admin', '190.63.241.15', 0, 'admin_home'),
(105, 'login', 'El usuario ha cerrado la sesión.', '2025-05-27 21:30:04', 'admin', '181.199.41.116', 0, 'admin_home'),
(106, 'login', 'Login correcto.', '2025-05-27 21:30:11', 'admin', '181.199.41.116', 0, 'admin_home'),
(107, 'error', 'Nombre de cliente no válido: COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.', '2025-05-29 15:31:35', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(108, 'error', '¡Imposible modificar los datos del cliente!', '2025-05-29 15:31:35', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(109, 'error', 'Nombre de cliente no válido: COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.', '2025-05-29 15:31:40', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(110, 'error', '¡Imposible modificar los datos del cliente!', '2025-05-29 15:31:40', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(111, 'error', 'Nombre de cliente no válido: COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.', '2025-05-29 15:32:07', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(112, 'error', '¡Imposible modificar los datos del cliente!', '2025-05-29 15:32:07', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(113, 'error', 'Nombre de cliente no válido: COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.', '2025-05-29 15:32:29', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(114, 'error', '¡Imposible modificar los datos del cliente!', '2025-05-29 15:32:29', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(115, 'error', 'Nombre de cliente no válido: COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.COMPAÑIA DE TRANSPORTE PESADO ABRIL HERMANOS ABRILTRANS S.A.', '2025-05-29 15:32:30', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(116, 'error', '¡Imposible modificar los datos del cliente!', '2025-05-29 15:32:30', 'admin', '181.199.41.116', 0, 'ventas_cliente'),
(117, 'login', 'El usuario ha cerrado la sesión.', '2025-06-01 15:01:46', 'admin', '45.71.115.133', 0, 'admin_home'),
(118, 'login', 'Login correcto.', '2025-06-01 15:01:55', 'admin', '45.71.115.133', 0, 'admin_home'),
(119, 'login', 'El usuario ha cerrado la sesión.', '2025-06-02 12:08:57', 'admin', '181.199.41.116', 0, 'admin_home'),
(120, 'login', 'Login correcto.', '2025-06-02 12:09:10', 'admin', '181.199.41.116', 0, 'admin_home'),
(121, 'login', 'Login correcto.', '2025-06-13 17:01:38', 'admin', '181.199.41.116', 0, 'admin_home'),
(122, 'error', 'Error al descargar la lista de plugins.', '2025-06-19 13:47:23', 'admin', '181.199.60.211', 0, NULL),
(123, 'error', 'Error al descargar la lista de plugins.', '2025-06-23 16:52:25', 'admin', '181.199.60.211', 0, NULL),
(124, 'error', 'Error al descargar la lista de plugins.', '2025-06-23 16:52:26', 'admin', '181.199.60.211', 0, NULL),
(125, 'login', 'Login correcto.', '2025-07-01 16:57:47', 'admin', '181.199.60.211', 0, 'admin_home'),
(126, 'login', 'Login correcto.', '2025-07-02 01:17:45', 'admin', '181.199.60.211', 0, 'admin_home'),
(127, 'login', 'El usuario ha cerrado la sesión.', '2025-07-03 14:48:46', 'admin', '181.199.60.211', 0, 'admin_home'),
(128, 'login', 'Login correcto.', '2025-07-12 16:48:13', 'admin', '181.199.60.211', 0, 'admin_home'),
(129, 'login', 'Login correcto.', '2025-07-24 15:11:32', 'admin', '181.199.60.211', 0, 'admin_home'),
(130, 'login', 'Login correcto.', '2025-07-24 16:12:31', 'admin', '181.199.60.211', 0, 'admin_home'),
(131, 'login', '¡Contraseña incorrecta! (admin)', '2025-08-12 11:08:21', NULL, '157.100.110.158', 1, 'admin_home'),
(132, 'login', 'Login correcto.', '2025-08-12 11:10:00', 'admin', '157.100.110.158', 0, 'admin_home'),
(133, 'login', '¡Contraseña incorrecta! (admin)', '2025-08-13 12:48:57', NULL, '190.63.238.149', 1, 'admin_home'),
(134, 'login', 'Login correcto.', '2025-08-13 12:49:03', 'admin', '190.63.238.149', 0, 'admin_home'),
(135, 'login', 'El usuario ha cerrado la sesión.', '2025-08-13 12:53:58', 'admin', '157.100.110.158', 0, 'admin_home'),
(136, 'login', 'Login correcto.', '2025-08-13 12:54:14', 'admin', '157.100.110.158', 0, 'admin_home'),
(137, 'login', 'Login correcto.', '2025-09-01 14:43:52', 'admin', '157.100.110.158', 0, 'admin_home'),
(138, 'login', 'Login correcto.', '2025-09-03 14:50:18', 'admin', '157.100.110.158', 0, 'admin_home'),
(139, 'login', 'Login correcto.', '2025-09-10 20:47:46', 'admin', '157.100.110.158', 0, 'admin_home'),
(140, 'login', '¡Contraseña incorrecta! (admin)', '2025-09-30 14:26:45', NULL, '157.100.110.158', 1, 'admin_home'),
(141, 'login', 'Login correcto.', '2025-09-30 14:26:53', 'admin', '157.100.110.158', 0, 'admin_home');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_pages`
--

CREATE TABLE `fs_pages` (
  `name` varchar(30) NOT NULL,
  `title` varchar(40) NOT NULL,
  `folder` varchar(15) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `show_on_menu` tinyint(1) NOT NULL DEFAULT 1,
  `important` tinyint(1) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fs_pages`
--

INSERT INTO `fs_pages` (`name`, `title`, `folder`, `version`, `show_on_menu`, `important`, `orden`) VALUES
('admin_agente', 'Empleado', 'admin', '2017.025', 0, 0, 100),
('admin_agentes', 'Empleados', 'admin', '2017.025', 1, 0, 100),
('admin_almacenes', 'Almacenes', 'admin', '2017.025', 1, 0, 100),
('admin_divisas', 'Divisas', 'admin', '2017.025', 1, 0, 100),
('admin_ecuador', 'Ecuador', 'admin', '2017.025', 1, 0, 100),
('admin_empresa', 'Empresa', 'admin', '2017.025', 1, 0, 100),
('admin_home', 'Panel de control', 'admin', NULL, 1, 0, 100),
('admin_info', 'Información del sistema', 'admin', '2017.025', 1, 0, 100),
('admin_rol', 'Editar rol', 'admin', '2017.025', 0, 0, 100),
('admin_user', 'Usuario', 'admin', '2017.025', 0, 0, 100),
('admin_users', 'Usuarios', 'admin', '2017.025', 1, 0, 100),
('albaran_detallado', 'Guia de Remisión Detallado', 'ventas', '2017.025', 0, 0, 100),
('articulo_subcuentas', 'Subcuentas', 'ventas', '2017.025', 0, 0, 100),
('articulo_trazabilidad', '', 'ventas', '2017.025', 0, 0, 100),
('articulos_pedidos', 'Artículos Pedidos', 'ventas', '2017.025', 0, 0, 100),
('base_wizard', 'Asistente de instalación', 'admin', '2017.025', 0, 0, 100),
('compras_actualiza_arts', 'Artículos documento', 'compras', '2017.025', 0, 0, 100),
('compras_agrupar_albaranes', 'Agrupar albaranes', 'compras', '2017.025', 0, 0, 100),
('compras_albaran', 'albarán de proveedor', 'compras', '2017.025', 0, 0, 100),
('compras_albaranes', 'Guias de Remisión', 'compras', '2017.025', 1, 0, 100),
('compras_factura', 'Factura de proveedor', 'compras', '2017.025', 0, 0, 100),
('compras_factura_devolucion', 'Devoluciones de factura de compra', 'compras', '2017.025', 0, 0, 100),
('compras_facturas', 'Facturas', 'compras', '2017.025', 1, 0, 100),
('compras_imprimir', 'imprimir', 'compras', '2017.025', 0, 0, 100),
('compras_pedido', 'Pedido', 'compras', '2017.025', 0, 0, 100),
('compras_pedidos', 'Pedidos', 'compras', '2017.025', 1, 0, 100),
('compras_proveedor', 'Proveedor', 'compras', '2017.025', 0, 0, 100),
('compras_proveedores', 'Proveedores / Acreedores', 'compras', '2017.025', 1, 0, 100),
('compras_trazabilidad', 'Trazabilidad', 'compras', '2017.025', 0, 0, 100),
('contabilidad_asiento', 'Asiento', 'contabilidad', '2017.025', 0, 0, 100),
('contabilidad_asientos', 'Asientos', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_cuenta', 'Cuenta', 'contabilidad', '2017.025', 0, 0, 100),
('contabilidad_cuentas', 'Cuentas', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_ejercicio', 'Ejercicio', 'contabilidad', '2017.025', 0, 0, 100),
('contabilidad_ejercicios', 'Ejercicios', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_epigrafes', 'Grupos y epígrafes', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_formas_pago', 'Formas de Pago', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_impuestos', 'Impuestos', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_nuevo_asiento', 'Nuevo asiento', 'contabilidad', '2017.025', 0, 1, 100),
('contabilidad_series', 'Series', 'contabilidad', '2017.025', 1, 0, 100),
('contabilidad_subcuenta', 'Subcuenta', 'contabilidad', '2017.025', 0, 0, 100),
('cuentas_especiales', 'Cuentas Especiales', 'contabilidad', '2017.025', 0, 0, 100),
('dashboard', 'Dashboard', 'informes', '2017.025', 1, 1, 100),
('editar_balances', 'Editar balances', 'informes', '2017.025', 0, 0, 100),
('editar_transferencia_stock', 'Editar transferencia', 'ventas', '2017.025', 0, 0, 100),
('factura_detallada', 'Factura Detallada', 'ventas', '2017.025', 0, 0, 100),
('imprimir_presu_pedi', 'imprimir', 'ventas', '2017.025', 0, 0, 100),
('informe_albaranes', 'Guias de Remision', 'informes', '2017.025', 1, 0, 100),
('informe_articulos', 'Artículos', 'informes', '2017.025', 1, 0, 100),
('informe_contabilidad', 'Contabilidad', 'informes', '2017.025', 1, 0, 100),
('informe_errores', 'Errores', 'informes', '2017.025', 1, 0, 100),
('informe_facturas', 'Facturas', 'informes', '2017.025', 1, 0, 100),
('informe_pedidos', 'Pedidos', 'informes', '2017.025', 1, 0, 100),
('informe_presupuestos', 'Proformas', 'informes', '2017.025', 1, 0, 100),
('maquetar_presu_pedi', 'Maquetar', 'ventas', '2017.025', 0, 0, 100),
('nueva_compra', 'Nueva compra...', 'compras', '2017.025', 0, 1, 100),
('nueva_venta', 'Nueva venta...', 'ventas', '2017.025', 0, 1, 100),
('opciones_factura_detallada', 'Factura Detallada', 'admin', '2017.025', 0, 0, 100),
('subcuenta_asociada', 'Asignar subcuenta...', 'contabilidad', '2017.025', 0, 0, 100),
('tpv_caja', 'Arqueos y terminales', 'TPV', '2017.025', 1, 0, 100),
('tpv_recambios', 'TPV Genérico', 'TPV', '2017.025', 1, 0, 100),
('ventas_agrupar_albaranes', 'Agrupar albaranes', 'ventas', '2017.025', 0, 0, 100),
('ventas_albaran', 'albarán de cliente', 'ventas', '2017.025', 0, 0, 100),
('ventas_albaranes', 'Guias de Remisión', 'ventas', '2017.025', 1, 0, 100),
('ventas_articulo', 'Articulo', 'ventas', '2017.025', 0, 0, 100),
('ventas_articulos', 'Artículos', 'ventas', '2017.025', 1, 0, 100),
('ventas_atributos', 'Atributos de artículos', 'ventas', '2017.025', 0, 0, 100),
('ventas_cliente', 'Cliente', 'ventas', '2017.025', 0, 0, 100),
('ventas_cliente_articulos', 'Articulos vendidos al cliente', 'ventas', '2017.025', 0, 0, 100),
('ventas_clientes', 'Clientes', 'ventas', '2017.025', 1, 0, 100),
('ventas_clientes_opciones', 'Opciones', 'clientes', '2017.025', 0, 0, 100),
('ventas_fabricante', 'Familia', 'ventas', '2017.025', 0, 0, 100),
('ventas_fabricantes', 'Fabricantes', 'ventas', '2017.025', 0, 0, 100),
('ventas_factura', 'Factura de cliente', 'ventas', '2017.025', 0, 0, 100),
('ventas_factura_devolucion', 'Devoluciones de factura de venta', 'ventas', '2017.025', 0, 0, 100),
('ventas_facturas', 'Facturas', 'ventas', '2017.025', 1, 0, 100),
('ventas_familia', 'Familia', 'ventas', '2017.025', 0, 0, 100),
('ventas_familias', 'Familias', 'ventas', '2017.025', 0, 0, 100),
('ventas_grupo', 'Grupo', 'ventas', '2017.025', 0, 0, 100),
('ventas_imprimir', 'imprimir', 'ventas', '2017.025', 0, 0, 100),
('ventas_maquetar', 'Maquetar', 'ventas', '2017.025', 0, 0, 100),
('ventas_pedido', 'Pedido', 'ventas', '2017.025', 0, 0, 100),
('ventas_pedidos', 'Pedidos', 'ventas', '2017.025', 1, 0, 100),
('ventas_presupuesto', 'Proforma', 'ventas', '2017.025', 0, 0, 100),
('ventas_presupuestos', 'Proformas', 'ventas', '2017.025', 1, 0, 100),
('ventas_trazabilidad', 'Trazabilidad', 'ventas', '2017.025', 0, 0, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_roles`
--

CREATE TABLE `fs_roles` (
  `codrol` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_users`
--

CREATE TABLE `fs_users` (
  `nick` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `log_key` varchar(100) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `codagente` varchar(10) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `last_login_time` time DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_browser` varchar(255) DEFAULT NULL,
  `fs_page` varchar(30) DEFAULT NULL,
  `css` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fs_users`
--

INSERT INTO `fs_users` (`nick`, `password`, `log_key`, `admin`, `enabled`, `codagente`, `last_login`, `last_login_time`, `last_ip`, `last_browser`, `fs_page`, `css`, `email`) VALUES
('admin', 'fd568f93c987cc503665cca295127da2d4659a72', 'e7b95b7cf0f4ecc42c8ffe9ef2e1779888713a2a', 1, 1, '1', '2025-09-30', '10:26:53', '157.100.110.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:143.0) Gecko/20100101 Firefox/143.0', NULL, 'view/css/bootstrap-yeti.min.css', NULL),
('demo', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', 'dbf706a5efb1db571d40f0db60b5221b5fe3a58c', 0, 1, '2', '2017-09-12', '20:15:28', '186.68.188.161', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:55.0) Gecko/20100101 Firefox/55.0', 'dashboard', 'view/css/bootstrap-yeti.min.css', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fs_vars`
--

CREATE TABLE `fs_vars` (
  `name` varchar(35) NOT NULL,
  `varchar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `fs_vars`
--

INSERT INTO `fs_vars` (`name`, `varchar`) VALUES
('f_detallada_color', 'azul'),
('f_detallada_color_b', '0'),
('f_detallada_color_g', '0'),
('f_detallada_color_r', '192'),
('f_detallada_imprime_albaran', '1'),
('install_step', '5'),
('mail_albaran', 'Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),
('mail_bcc', ''),
('mail_enc', 'ssl'),
('mail_factura', 'Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),
('mail_firma', '---\r\nEnviado con FacturaScripts'),
('mail_host', 'smtp.gmail.com'),
('mail_mailer', 'mail'),
('mail_password', 'Creative77.'),
('mail_pedido', 'Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),
('mail_port', '465'),
('mail_presupuesto', 'Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),
('mail_user', ''),
('numeracion_personalizada', '1'),
('print_alb', '0'),
('print_dto', '1'),
('print_formapago', '1'),
('print_ref', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruposclientes`
--

CREATE TABLE `gruposclientes` (
  `codgrupo` varchar(6) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codtarifa` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas_fac_det`
--

CREATE TABLE `idiomas_fac_det` (
  `codidioma` varchar(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `telefono` varchar(100) DEFAULT 'teléfono',
  `fax` varchar(100) DEFAULT 'fax',
  `email` varchar(100) DEFAULT 'email',
  `web` varchar(100) DEFAULT 'web',
  `factura` varchar(100) DEFAULT 'factura',
  `albaran` varchar(100) DEFAULT 'albarán',
  `pedido` varchar(100) DEFAULT 'pedido',
  `pagina` varchar(100) DEFAULT 'página',
  `fecha` varchar(100) DEFAULT 'fecha',
  `num_cliente` varchar(100) DEFAULT 'nº de cliente',
  `cliente` varchar(100) DEFAULT 'cliente',
  `forma_pago` varchar(100) DEFAULT 'forma de pago',
  `vencimiento` varchar(100) DEFAULT 'vencimiento',
  `descripcion` varchar(100) DEFAULT 'descripción',
  `cant` varchar(100) DEFAULT 'cant',
  `precio` varchar(100) DEFAULT 'precio',
  `dto` varchar(100) DEFAULT 'dto',
  `iva` varchar(100) DEFAULT 'iva',
  `importe` varchar(100) DEFAULT 'importe',
  `importes` varchar(100) DEFAULT 'importes',
  `neto` varchar(100) DEFAULT 'neto',
  `rec_equiv` varchar(100) DEFAULT 'rec. equiv.',
  `irpf` varchar(100) DEFAULT 'irpf',
  `total` varchar(100) DEFAULT 'total',
  `suma_sigue` varchar(100) DEFAULT 'suma y sigue',
  `observaciones` varchar(100) DEFAULT 'observaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `idiomas_fac_det`
--

INSERT INTO `idiomas_fac_det` (`codidioma`, `nombre`, `activo`, `telefono`, `fax`, `email`, `web`, `factura`, `albaran`, `pedido`, `pagina`, `fecha`, `num_cliente`, `cliente`, `forma_pago`, `vencimiento`, `descripcion`, `cant`, `precio`, `dto`, `iva`, `importe`, `importes`, `neto`, `rec_equiv`, `irpf`, `total`, `suma_sigue`, `observaciones`) VALUES
('es_ES', 'Español', 1, 'teléfono', 'fax', 'email', 'web', 'factura', 'albarán', 'pedido', 'página', 'fecha', 'nº de cliente', 'cliente', 'forma de pago', 'vencimiento', 'descripción', 'cant', 'precio', 'dto', 'iva', 'importe', 'importes', 'neto', 'rec. equiv.', 'irpf', 'total', 'suma y sigue', 'observaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `codimpuesto` varchar(10) NOT NULL,
  `codsubcuentaacr` varchar(15) DEFAULT NULL,
  `codsubcuentadeu` varchar(15) DEFAULT NULL,
  `codsubcuentaivadedadue` varchar(15) DEFAULT NULL,
  `codsubcuentaivadevadue` varchar(15) DEFAULT NULL,
  `codsubcuentaivadeventue` varchar(15) DEFAULT NULL,
  `codsubcuentaivarepexe` varchar(15) DEFAULT NULL,
  `codsubcuentaivarepexp` varchar(15) DEFAULT NULL,
  `codsubcuentaivarepre` varchar(15) DEFAULT NULL,
  `codsubcuentaivasopagra` varchar(15) DEFAULT NULL,
  `codsubcuentaivasopexe` varchar(15) DEFAULT NULL,
  `codsubcuentaivasopimp` varchar(15) DEFAULT NULL,
  `codsubcuentarep` varchar(15) DEFAULT NULL,
  `codsubcuentasop` varchar(15) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `idsubcuentaivadedadue` int(11) DEFAULT NULL,
  `idsubcuentaivadevadue` int(11) DEFAULT NULL,
  `idsubcuentaivadeventue` int(11) DEFAULT NULL,
  `idsubcuentaivarepexe` int(11) DEFAULT NULL,
  `idsubcuentaivarepexp` int(11) DEFAULT NULL,
  `idsubcuentaivarepre` int(11) DEFAULT NULL,
  `idsubcuentaivasopagra` int(11) DEFAULT NULL,
  `idsubcuentaivasopexe` int(11) DEFAULT NULL,
  `idsubcuentaivasopimp` int(11) DEFAULT NULL,
  `idsubcuentarep` int(11) DEFAULT NULL,
  `idsubcuentasop` int(11) DEFAULT NULL,
  `iva` double NOT NULL,
  `recargo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `impuestos`
--

INSERT INTO `impuestos` (`codimpuesto`, `codsubcuentaacr`, `codsubcuentadeu`, `codsubcuentaivadedadue`, `codsubcuentaivadevadue`, `codsubcuentaivadeventue`, `codsubcuentaivarepexe`, `codsubcuentaivarepexp`, `codsubcuentaivarepre`, `codsubcuentaivasopagra`, `codsubcuentaivasopexe`, `codsubcuentaivasopimp`, `codsubcuentarep`, `codsubcuentasop`, `descripcion`, `idsubcuentaacr`, `idsubcuentadeu`, `idsubcuentaivadedadue`, `idsubcuentaivadevadue`, `idsubcuentaivadeventue`, `idsubcuentaivarepexe`, `idsubcuentaivarepexp`, `idsubcuentaivarepre`, `idsubcuentaivasopagra`, `idsubcuentaivasopexe`, `idsubcuentaivasopimp`, `idsubcuentarep`, `idsubcuentasop`, `iva`, `recargo`) VALUES
('EC0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EC 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('EC12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EC 12%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 0),
('EC14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EC 15%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasalbaranescli`
--

CREATE TABLE `lineasalbaranescli` (
  `cantidad` double NOT NULL DEFAULT 0,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `dtolineal` double DEFAULT 0,
  `dtopor` double NOT NULL DEFAULT 0,
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT 0,
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL DEFAULT 0,
  `pvptotal` double NOT NULL DEFAULT 0,
  `pvpunitario` double NOT NULL DEFAULT 0,
  `recargo` double DEFAULT 0,
  `referencia` varchar(18) DEFAULT NULL,
  `codcombinacion` varchar(18) DEFAULT NULL,
  `orden` int(11) DEFAULT 0,
  `mostrar_cantidad` tinyint(1) DEFAULT 1,
  `mostrar_precio` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasalbaranesprov`
--

CREATE TABLE `lineasalbaranesprov` (
  `cantidad` double NOT NULL DEFAULT 0,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `dtolineal` double DEFAULT 0,
  `dtopor` double NOT NULL DEFAULT 0,
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT 0,
  `pvpsindto` double NOT NULL DEFAULT 0,
  `pvptotal` double NOT NULL DEFAULT 0,
  `pvpunitario` double NOT NULL DEFAULT 0,
  `recargo` double DEFAULT 0,
  `referencia` varchar(18) DEFAULT NULL,
  `codcombinacion` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasfacturascli`
--

CREATE TABLE `lineasfacturascli` (
  `cantidad` double NOT NULL DEFAULT 0,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `dtolineal` double DEFAULT 0,
  `dtopor` double NOT NULL DEFAULT 0,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineaalbaran` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) DEFAULT NULL,
  `codcombinacion` varchar(18) DEFAULT NULL,
  `orden` int(11) DEFAULT 0,
  `mostrar_cantidad` tinyint(1) DEFAULT 1,
  `mostrar_precio` tinyint(1) DEFAULT 1,
  `dtopor2` double NOT NULL DEFAULT 0,
  `dtopor3` double NOT NULL DEFAULT 0,
  `dtopor4` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `lineasfacturascli`
--

INSERT INTO `lineasfacturascli` (`cantidad`, `codimpuesto`, `descripcion`, `dtolineal`, `dtopor`, `idalbaran`, `idfactura`, `idlinea`, `idlineaalbaran`, `irpf`, `iva`, `porcomision`, `pvpsindto`, `pvptotal`, `pvpunitario`, `recargo`, `referencia`, `codcombinacion`, `orden`, `mostrar_cantidad`, `mostrar_precio`, `dtopor2`, `dtopor3`, `dtopor4`) VALUES
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 0, NULL, 1, 1, NULL, 0, 0, NULL, 170, 170, 170, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales Ecuarticulos', 0, 0, NULL, 2, 2, NULL, 0, 0, NULL, 170, 170, 170, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Tiktok internacional', 0, 0, NULL, 2, 3, NULL, 0, 0, NULL, 220, 220, 220, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC0', 'MIGRACIÓN + MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 25, NULL, 3, 4, NULL, 0, 0, NULL, 120, 90, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plataforma LMS Básico (Hosting + Dominio + 20Gb Storage)', 0, 0, NULL, 5, 6, NULL, 0, 0, NULL, 550, 550, 550, 0, '0004', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mantenimiento y Reparación Impresora Epson A3', 0, 0, NULL, 6, 7, NULL, 0, 0, NULL, 170, 170, 170, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Licencia Office Plus + Revisión técnica PC', 0, 0, NULL, 6, 8, NULL, 0, 0, NULL, 35, 35, 35, 0, '0006', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC0', 'UPS Quasad 500VA', 0, 0, NULL, 7, 9, NULL, 0, 0, NULL, 140, 140, 70, 0, '0010', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'HD Externo Adata G-Shot 1Tera', 0, 0, NULL, 7, 10, NULL, 0, 0, NULL, 98, 98, 98, 0, '0008', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'HD Externo Adata G-Shot 2Teras', 0, 0, NULL, 7, 11, NULL, 0, 0, NULL, 127, 127, 127, 0, '0009', NULL, 0, 1, 1, 0, 0, 0),
(3, 'EC0', 'Mouse Marvo USB Black', 0, 0, NULL, 7, 12, NULL, 0, 0, NULL, 27, 27, 9, 0, '0007', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'LICENCIA ACAD 2024 INDIVIDUAL', 0, 0, NULL, 8, 13, NULL, 0, 0, NULL, 59.99, 59.99, 59.99, 0, '0011', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN ANTICIPADA PLAN STELLAR BUSINESS + DOMINIO DISIBIS.COM', 0, 9.7, NULL, 9, 14, NULL, 0, 0, NULL, 276.87, 250.01361, 276.87, 0, '0012', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 5.55, NULL, 10, 15, NULL, 0, 0, NULL, 180, 170.01, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN STELLAR + DOMINIO IKES.COM.EC', 0, 0, NULL, 11, 16, NULL, 0, 0, NULL, 128.75, 128.75, 128.75, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Licencias Windows, Office, Adobe Antivirus y Configuración impresora wifi', 0, 0, NULL, 12, 17, NULL, 0, 0, NULL, 60, 60, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mantenimiento y Reparación Dell AllinOne', 0, 0, NULL, 13, 18, NULL, 0, 0, NULL, 30, 30, 30, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN DOMINIO TCPLUMESAL. COM', 0, 0, NULL, 14, 19, NULL, 0, 0, NULL, 39.99, 39.99, 39.99, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'FORMATEO + REBUILD DISCO DURO + LICENCIAS +', 0, 0, NULL, 15, 20, NULL, 0, 0, NULL, 40, 40, 40, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(5, 'EC0', 'Tinta Moorin 554', 0, 0, NULL, 15, 21, NULL, 0, 0, NULL, 40, 40, 8, 0, '0014', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'MIGRACIÓN + MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 0, NULL, 16, 22, NULL, 0, 0, NULL, 60, 60, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Dell Optiplex Core i5 6500 8va gen, 8GB ram DDR4, USB 3.0, HDMI, VGA, Display Port, RJ45, RS232', 0, 0, NULL, 17, 23, NULL, 0, 0, NULL, 292.4, 292.4, 292.4, 0, '15', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'INSTALACIÓN + LICENCIAS + ANTIVIRUS', 0, 0, NULL, 17, 24, NULL, 0, 0, NULL, 45, 45, 45, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Licencia Office Plus + Revisión técnica PC', 0, 0, NULL, 18, 25, NULL, 0, 0, NULL, 35, 35, 35, 0, '0006', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes + Tiktok doble horario', 0, 0, NULL, 19, 26, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 5.55, NULL, 20, 27, NULL, 0, 0, NULL, 180, 170.01, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Renovación Plan Stellar Premium Turnos Broom Ecuador + Domain + Security SSL', 0, 0, NULL, 21, 28, NULL, 0, 0, NULL, 345, 345, 345, 0, '0018', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales', 0, 0, NULL, 22, 29, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Servicio de Diseño Gráfico', 0, 0, NULL, 22, 30, NULL, 0, 0, NULL, 65, 65, 65, 0, '0008', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales (Junio)', 0, 0, NULL, 23, 31, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN SISTEMA CONTABLE', 0, 0, NULL, 24, 32, NULL, 0, 0, NULL, 150, 150, 150, 0, '0020', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales doble post', 0, 0, NULL, 25, 33, NULL, 0, 0, NULL, 250, 250, 250, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 5.5, NULL, 26, 34, NULL, 0, 0, NULL, 180, 170.1, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'COMISIÓN POR VENTA DE SISTEMA CONTABLE', 0, 0, NULL, 28, 36, NULL, 0, 0, NULL, 43.48, 43.48, 43.48, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC0', 'Renovación licencia Office LTD 2021', 0, 0, NULL, 29, 37, NULL, 0, 0, NULL, 30, 30, 15, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 5.5, NULL, 30, 38, NULL, 0, 0, NULL, 180, 170.1, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales Doble Post', 0, 0, NULL, 31, 39, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Dominio flomacmycs.com', 0, 0, NULL, 32, 40, NULL, 0, 0, NULL, 15, 15, 15, 0, '0021', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Hosting Stellar Básico', 0, 0, NULL, 32, 41, NULL, 0, 0, NULL, 74, 74, 74, 0, '0022', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 0, NULL, 33, 42, NULL, 0, 0, NULL, 180, 180, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 0, NULL, 34, 43, NULL, 0, 0, NULL, 45, 45, 45, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales 2th Post', 0, 0, NULL, 35, 44, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 5.5, NULL, 36, 45, NULL, 0, 0, NULL, 180, 170.1, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Manual de Marca Corporativo Hermanas', 0, 28.57, NULL, 37, 46, NULL, 0, 0, NULL, 175, 125.0025, 175, 0, '0023', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Manual de Marca Corporativo Buenas Sabores', 0, 28.57, NULL, 37, 47, NULL, 0, 0, NULL, 175, 125.0025, 175, 0, '0023', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales Julio', 0, 0, NULL, 38, 48, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales Agosto', 0, 0, NULL, 38, 49, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales Septiembre', 0, 0, NULL, 38, 50, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 10, NULL, 39, 51, NULL, 0, 0, NULL, 250, 225, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 0, NULL, 40, 52, NULL, 0, 0, NULL, 180, 180, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 42, 54, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 43, 55, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mail Relayer Plus', 0, 0, NULL, 45, 57, NULL, 0, 0, NULL, 45, 45, 45, 0, '0006', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mail Relayer Plus', 0, 0, NULL, 46, 58, NULL, 0, 0, NULL, 45, 45, 45, 0, '0006', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 47, 59, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 48, 60, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN STELLAR DOMINIO PUNTOAMAROK. COM.EC + SSL', 0, 0, NULL, 50, 62, NULL, 0, 0, NULL, 128.75, 128.75, 128.75, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales', 0, 0, NULL, 51, 63, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'MANTENIMIENTO + LICENCIAS + ANTIVIRUS PC', 0, 0, NULL, 52, 64, NULL, 0, 0, NULL, 45, 45, 45, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC14', 'SSD 512GB TechPRO', 0, 0, NULL, 52, 65, NULL, 0, 15, NULL, 49, 49, 49, 0, '27', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC14', 'Almohadilla serie WF', 0, 0, NULL, 52, 66, NULL, 0, 15, NULL, 40, 40, 20, 0, '25', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC14', 'Dumper serie WF', 0, 0, NULL, 52, 67, NULL, 0, 15, NULL, 30, 30, 15, 0, '26', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Licencia Office 2021 Plus + Revisión Net Server', 0, 0, NULL, 52, 68, NULL, 0, 0, NULL, 25, 25, 25, 0, '0017', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mantenimiento y Reparación Impresora WF-2750', 0, 0, NULL, 52, 69, NULL, 0, 0, NULL, 40, 40, 40, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC14', 'Mouse MARVO MS003', 0, 0, NULL, 52, 70, NULL, 0, 15, NULL, 17, 17, 8.5, 0, '28', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Licencia Office Plus + Antivirus Corporativo', 0, 0, NULL, 53, 71, NULL, 0, 0, NULL, 40, 40, 40, 0, '0006', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Premium Redes Sociales', 0, 0, NULL, 54, 72, NULL, 0, 0, NULL, 180, 180, 180, 0, '0002', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 55, 73, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Chip SC v4 Serie WF', 0, 0, NULL, 56, 74, NULL, 0, 0, NULL, 25, 25, 25, 0, '29', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Reprogramación Placa Epson', 0, 0, NULL, 56, 75, NULL, 0, 0, NULL, 20, 20, 20, 0, '30', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN HOSTING STELLAR PLUS + DOMINIO (PUBLICMENDEZ.COM)', 0, 0, NULL, 57, 76, NULL, 0, 0, NULL, 94.76, 94.76, 94.76, 0, '31', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN STELLAR PLUS + TALLERELECTROVOLKSWAGEN.COM.EC', 0, 0, NULL, 58, 77, NULL, 0, 0, NULL, 176, 176, 176, 0, '32', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Disco SSD 1 TB Dextor v2', 0, 0, NULL, 59, 78, NULL, 0, 0, NULL, 95, 95, 95, 0, '33', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'HARD RESET + MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 0, NULL, 59, 79, NULL, 0, 0, NULL, 60, 60, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'SERVER DELL + MANTENIMIENTO + LICENCIAS + SHELL', 0, 0, NULL, 60, 80, NULL, 0, 0, NULL, 60, 60, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN STELLAR PLUS + TALLERELECTROVOLKSWAGEN.COM.EC', 0, 0, NULL, 62, 82, NULL, 0, 0, NULL, 176, 176, 176, 0, '32', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACION DOMINIO ECUADOR TALLERELECTROVOLKSWAGEN.COM.EC', 0, 0, NULL, 63, 83, NULL, 0, 0, NULL, 40.25, 40.25, 40.25, 0, '0021', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN ANTICIPADA PLAN STELLAR BUSINESS + DOMINIO DISIBIS.COM', 0, 10, NULL, 66, 86, NULL, 0, 0, NULL, 287, 258.3, 287, 0, '0018', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN ANTICIPADA PLAN STELLAR PLUS + IKES.COM.EC', 0, 10, NULL, 68, 88, NULL, 0, 0, NULL, 139.75, 125.775, 139.75, 0, '32', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'DISPLAY TOUCH DELL AIO 5400', 0, 0, NULL, 69, 89, NULL, 0, 0, NULL, 269.99, 269.99, 269.99, 0, '34', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Servicio de Instalación', 0, 0, NULL, 69, 90, NULL, 0, 0, NULL, 20, 20, 20, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 70, 91, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN STELLAR + DOMINIO ECUARTICULOS.COM', 0, 0, NULL, 71, 92, NULL, 0, 0, NULL, 225, 225, 225, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN BUSINESS ECOMMERCE PUNTOVOLKSWAGEN.COM.EC + SSL', 0, 0, NULL, 72, 93, NULL, 0, 0, NULL, 211.88, 211.88, 211.88, 0, '0012', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Garantía y Mes de Arriendo de un departamento ubicado en Alborada 13ava etapa Mz 6 V 15', 0, 0, NULL, 73, 94, NULL, 0, 0, NULL, 640, 640, 640, 0, '35', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN PLAN STELLAR BUSINESS + LMS + DOMINIO FASTCONSULTING.COM.EC + SSL', 0, 0, NULL, 74, 95, NULL, 0, 0, NULL, 283.25, 283.25, 283.25, 0, '0012', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 75, 96, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'PLAN STELLAR LMS + DOMAIN APPROJECT.COM.EC + SSL', 0, 0, NULL, 76, 97, NULL, 0, 0, NULL, 430, 430, 430, 0, '36', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'MANTENIMIENTO + LICENCIAS + ANTIVIRUS + REPARACIÓN PIN DE CARGA', 0, 0, NULL, 78, 101, NULL, 0, 0, NULL, 60, 60, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 0, NULL, 78, 102, NULL, 0, 0, NULL, 40, 40, 40, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'COMBO 4 EN 1 MARVO', 0, 0, NULL, 78, 103, NULL, 0, 0, NULL, 40, 40, 40, 0, '0023', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales', 0, 0, NULL, 79, 104, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'REDISEÑO CATALOGO DE PRODUCTOS', 0, 25, NULL, 80, 105, NULL, 0, 0, NULL, 80, 60, 80, 0, '34', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mes de Arriendo de un departamento ubicado en Alborada 13ava etapa Mz 6 V 15', 0, 0, NULL, 81, 106, NULL, 0, 0, NULL, 320, 320, 320, 0, '35', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'LENOVO THINKPAD i7 9850 4.6Ghz 32GB DDR4 512Gb M2 DEDICADA NVIDIA QUADRO 4GB', 0, 0, NULL, 82, 107, NULL, 0, 0, NULL, 920, 920, 920, 0, '37', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'INSTALACIÓN + LICENCIAS + ANTIVIRUS + ACAD 2024', 0, 0, NULL, 82, 108, NULL, 0, 0, NULL, 95, 95, 95, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(12, 'EC0', 'Plan Emprendedor Redes Sociales  (4 post personalizados semanales)', 0, 20, NULL, 83, 109, NULL, 0, 0, NULL, 3000, 2400, 250, 0, '38', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Servicio de Programación para Sistema de Turnos Broom Ecuador', 0, 0, NULL, 84, 110, NULL, 0, 0, NULL, 120, 120, 120, 0, '30', NULL, 0, 1, 1, 0, 0, 0),
(3, 'EC0', 'Tinta Moorin WF-7710', 0, 0, NULL, 85, 111, NULL, 0, 0, NULL, 30, 30, 10, 0, '0014', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Base enfriadora Xtreme Marvo', 0, 0, NULL, 86, 112, NULL, 0, 0, NULL, 35, 35, 35, 0, '30', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Forro Laptop 16&quot;', 0, 0, NULL, 86, 113, NULL, 0, 0, NULL, 15, 15, 15, 0, '0021', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 87, 114, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'FORMATEO + MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 15.39, NULL, 88, 115, NULL, 0, 0, NULL, 65, 54.9965, 65, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales', 0, 0, NULL, 89, 116, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 91, 118, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'LETRERO DUMMIE IKES', 0, 0, NULL, 92, 119, NULL, 0, 0, NULL, 17, 17, 17, 0, '34', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'LICENCIA ACAD 2024 INDIVIDUAL', 0, 0, NULL, 93, 120, NULL, 0, 0, NULL, 60, 60, 60, 0, '0011', NULL, 0, 1, 1, 0, 0, 0),
(2, 'EC0', 'Licencia MS Windows PC', 0, 0, NULL, 94, 121, NULL, 0, 0, NULL, 40, 40, 20, 0, '0017', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'WINDOWS PC LICENSE + ANTIVIRUS ANUAL', 0, 0, NULL, 95, 122, NULL, 0, 0, NULL, 45, 45, 45, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mantenimiento Pórtatil Lenovo', 0, 0, NULL, 95, 123, NULL, 0, 0, NULL, 15, 15, 15, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Sensor Bandeja Inferior Epson Wf-7710', 0, 0, NULL, 97, 125, NULL, 0, 0, NULL, 28, 28, 28, 0, '26', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Reeemplazo Sensor Bandeja Inferior Epson Wf-7710', 0, 0, NULL, 97, 126, NULL, 0, 0, NULL, 20, 20, 20, 0, '0023', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Mantenimiento Impresora Epson A3 Serie WF', 0, 0, NULL, 97, 127, NULL, 0, 0, NULL, 35, 35, 35, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC14', 'PLAN CORREOS CORPORATIVOS ANUAL', 0, 0, NULL, 99, 129, NULL, 0, 15, NULL, 40, 40, 40, 0, '39', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 100, 130, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Publicidad semanal', 0, 0, NULL, 100, 131, NULL, 0, 0, NULL, 30, 30, 30, 0, '31', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Licencia Capcut tiktok', 0, 0, NULL, 100, 132, NULL, 0, 0, NULL, 18, 18, 18, 0, '0017', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN SISTEMA CONTABLE', 0, 0, NULL, 101, 133, NULL, 0, 0, NULL, 150, 150, 150, 0, '0020', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Renovación Plan Stellar Premium Turnos Broom Ecuador + Domain + Security SSL del 06/JUNIO/2025 AL 06/JUNIO/2026', 0, 0, NULL, 102, 134, NULL, 0, 0, NULL, 345, 345, 345, 0, '0018', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Renovación Plan Stellar Premium Turnos Broom Ecuador + Domain + Security SSL del 06/JUNIO/2025 al 06/JUNIO/2026', 0, 0, NULL, 103, 135, NULL, 0, 0, NULL, 345, 345, 345, 0, '0018', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'CLASES DICTADAS', 0, 0, NULL, 104, 136, NULL, 0, 0, NULL, 400, 400, 400, 0, '39', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN ANTICIPADA PLAN STELLAR BUSINESS + DOMINIO DISIBIS.COM', 0, 12.89, NULL, 105, 137, NULL, 0, 0, NULL, 287, 250.0057, 287, 0, '0012', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN ANTICIPADA PLAN STELLAR + DOMINIO IKES.COM.EC', 0, 14.77, NULL, 106, 138, NULL, 0, 0, NULL, 176, 150.0048, 176, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(3, 'EC0', 'Tinta Moorin WF2750', 0, 0, NULL, 107, 139, NULL, 0, 0, NULL, 30, 30, 10, 0, '0014', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 108, 140, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Publicidad Tiktok Ads', 0, 0, NULL, 108, 141, NULL, 0, 0, NULL, 150, 150, 150, 0, '31', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Básico Redes Sociales', 0, 0, NULL, 109, 142, NULL, 0, 0, NULL, 135, 135, 135, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'HOSTING + Plan eCommerce BAI.EC + SSL', 0, 50, NULL, 110, 143, NULL, 0, 0, NULL, 500, 250, 500, 0, '0004', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales', 0, 0, NULL, 111, 144, NULL, 0, 0, NULL, 250, 250, 250, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Publicidad Cuenta principal Ecuarticulos & Cuenta Navidad, Promo + Ads', 0, 0, NULL, 111, 145, NULL, 0, 0, NULL, 260, 260, 260, 0, '31', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Inducción LMS', 0, 0, NULL, 112, 146, NULL, 0, 0, NULL, 20, 20, 20, 0, '30', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'RENOVACIÓN HOSTING STELLAR PLUS + DOMINIO (FLOMACMYCS.COM)', 0, 12.94, NULL, 113, 147, NULL, 0, 0, NULL, 94.76, 82.498056, 94.76, 0, '31', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Dominio beifa.ec', 0, 0, NULL, 114, 148, NULL, 0, 0, NULL, 41, 41, 41, 0, '0021', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Impuestos publicidad mes de Julio', 0, 0, NULL, 114, 149, NULL, 0, 0, NULL, 48, 48, 48, 0, '31', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Servicio de Diseño Gráfico por documento (Varios)', 0, 24.9, NULL, 117, 152, NULL, 0, 0, NULL, 126.5, 95.0015, 126.5, 0, '33', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Plan Especial Redes Sociales (3 cuentas)', 0, 0, NULL, 118, 153, NULL, 0, 0, NULL, 300, 300, 300, 0, '0003', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Publicidad Mes de Agosto', 0, 0, NULL, 118, 154, NULL, 0, 0, NULL, 220, 220, 220, 0, '0019', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Impuestos IVA + ISD', 0, 0, NULL, 118, 155, NULL, 0, 0, NULL, 44, 44, 44, 0, '0013', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Servicio maquetacion sitio web tallerelectrovolkswagen.com.ec (logo, banner, chat, seo)', 0, 0, NULL, 119, 156, NULL, 0, 0, NULL, 40, 40, 40, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'ESCALAMIENTO PLAN STELLAR LMS - PLAN PREMIUM LMS APPROJECT.COM.EC', 0, 0, NULL, 120, 157, NULL, 0, 0, NULL, 400, 400, 400, 0, '15', NULL, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasfacturasprov`
--

CREATE TABLE `lineasfacturasprov` (
  `cantidad` double NOT NULL,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `codsubcuenta` varchar(15) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `dtolineal` double DEFAULT 0,
  `dtopor` double NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `idlineaalbaran` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double DEFAULT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) DEFAULT NULL,
  `codcombinacion` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasivafactcli`
--

CREATE TABLE `lineasivafactcli` (
  `codimpuesto` varchar(10) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL,
  `iva` double NOT NULL DEFAULT 0,
  `neto` double NOT NULL DEFAULT 0,
  `recargo` double NOT NULL DEFAULT 0,
  `totaliva` double NOT NULL DEFAULT 0,
  `totallinea` double NOT NULL DEFAULT 0,
  `totalrecargo` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `lineasivafactcli`
--

INSERT INTO `lineasivafactcli` (`codimpuesto`, `idfactura`, `idlinea`, `iva`, `neto`, `recargo`, `totaliva`, `totallinea`, `totalrecargo`) VALUES
('EC0', 1, 1, 0, 170, 0, 0, 170, 0),
('EC0', 2, 2, 0, 390, 0, 0, 390, 0),
('EC0', 3, 3, 0, 90, 0, 0, 90, 0),
('EC0', 5, 5, 0, 550, 0, 0, 550, 0),
('EC0', 6, 6, 0, 205, 0, 0, 205, 0),
('EC0', 7, 7, 0, 392, 0, 0, 392, 0),
('EC0', 8, 8, 0, 59.99, 0, 0, 59.99, 0),
('EC0', 9, 9, 0, 250.01, 0, 0, 250.01, 0),
('EC0', 10, 10, 0, 170.01, 0, 0, 170.01, 0),
('EC0', 11, 11, 0, 128.75, 0, 0, 128.75, 0),
('EC0', 12, 12, 0, 60, 0, 0, 60, 0),
('EC0', 13, 13, 0, 30, 0, 0, 30, 0),
('EC0', 14, 14, 0, 39.99, 0, 0, 39.99, 0),
('EC0', 15, 15, 0, 80, 0, 0, 80, 0),
('EC0', 16, 16, 0, 60, 0, 0, 60, 0),
('EC0', 17, 17, 0, 337.4, 0, 0, 337.4, 0),
('EC0', 18, 18, 0, 35, 0, 0, 35, 0),
('EC0', 19, 19, 0, 250, 0, 0, 250, 0),
('EC0', 20, 20, 0, 170.01, 0, 0, 170.01, 0),
('EC0', 21, 21, 0, 345, 0, 0, 345, 0),
('EC0', 22, 22, 0, 200, 0, 0, 200, 0),
('EC0', 23, 23, 0, 135, 0, 0, 135, 0),
('EC0', 24, 24, 0, 150, 0, 0, 150, 0),
('EC0', 25, 25, 0, 250, 0, 0, 250, 0),
('EC0', 26, 26, 0, 170.1, 0, 0, 170.1, 0),
('EC0', 28, 28, 0, 43.48, 0, 0, 43.48, 0),
('EC0', 29, 29, 0, 30, 0, 0, 30, 0),
('EC0', 30, 30, 0, 170.1, 0, 0, 170.1, 0),
('EC0', 31, 31, 0, 250, 0, 0, 250, 0),
('EC0', 32, 32, 0, 89, 0, 0, 89, 0),
('EC0', 33, 33, 0, 180, 0, 0, 180, 0),
('EC0', 34, 34, 0, 45, 0, 0, 45, 0),
('EC0', 35, 35, 0, 250, 0, 0, 250, 0),
('EC0', 36, 36, 0, 170.1, 0, 0, 170.1, 0),
('EC0', 37, 37, 0, 250.01, 0, 0, 250.01, 0),
('EC0', 38, 38, 0, 405, 0, 0, 405, 0),
('EC0', 39, 39, 0, 225, 0, 0, 225, 0),
('EC0', 40, 40, 0, 180, 0, 0, 180, 0),
('EC0', 42, 42, 0, 250, 0, 0, 250, 0),
('EC0', 43, 43, 0, 250, 0, 0, 250, 0),
('EC0', 45, 45, 0, 45, 0, 0, 45, 0),
('EC0', 46, 46, 0, 45, 0, 0, 45, 0),
('EC0', 47, 47, 0, 250, 0, 0, 250, 0),
('EC0', 48, 48, 0, 250, 0, 0, 250, 0),
('EC0', 50, 50, 0, 128.75, 0, 0, 128.75, 0),
('EC0', 51, 51, 0, 135, 0, 0, 135, 0),
('EC0', 52, 52, 0, 110, 0, 0, 110, 0),
('EC14', 52, 53, 15, 136, 0, 20.4, 156.4, 0),
('EC0', 53, 54, 0, 40, 0, 0, 40, 0),
('EC0', 54, 55, 0, 180, 0, 0, 180, 0),
('EC0', 55, 56, 0, 250, 0, 0, 250, 0),
('EC0', 56, 57, 0, 45, 0, 0, 45, 0),
('EC0', 57, 58, 0, 94.76, 0, 0, 94.76, 0),
('EC0', 58, 59, 0, 176, 0, 0, 176, 0),
('EC0', 59, 60, 0, 155, 0, 0, 155, 0),
('EC0', 60, 61, 0, 60, 0, 0, 60, 0),
('EC0', 62, 63, 0, 176, 0, 0, 176, 0),
('EC0', 63, 64, 0, 40.25, 0, 0, 40.25, 0),
('EC0', 66, 67, 0, 258.3, 0, 0, 258.3, 0),
('EC0', 68, 69, 0, 125.78, 0, 0, 125.78, 0),
('EC0', 69, 70, 0, 289.99, 0, 0, 289.99, 0),
('EC0', 70, 71, 0, 250, 0, 0, 250, 0),
('EC0', 71, 72, 0, 225, 0, 0, 225, 0),
('EC0', 72, 73, 0, 211.88, 0, 0, 211.88, 0),
('EC0', 73, 74, 0, 640, 0, 0, 640, 0),
('EC0', 74, 75, 0, 283.25, 0, 0, 283.25, 0),
('EC0', 75, 76, 0, 250, 0, 0, 250, 0),
('EC0', 76, 77, 0, 430, 0, 0, 430, 0),
('EC0', 78, 80, 0, 140, 0, 0, 140, 0),
('EC0', 79, 81, 0, 135, 0, 0, 135, 0),
('EC0', 80, 82, 0, 60, 0, 0, 60, 0),
('EC0', 81, 83, 0, 320, 0, 0, 320, 0),
('EC0', 82, 84, 0, 1015, 0, 0, 1015, 0),
('EC0', 83, 85, 0, 2400, 0, 0, 2400, 0),
('EC0', 84, 86, 0, 120, 0, 0, 120, 0),
('EC0', 85, 87, 0, 30, 0, 0, 30, 0),
('EC0', 86, 88, 0, 50, 0, 0, 50, 0),
('EC0', 87, 89, 0, 250, 0, 0, 250, 0),
('EC0', 88, 90, 0, 55, 0, 0, 55, 0),
('EC0', 89, 91, 0, 135, 0, 0, 135, 0),
('EC0', 91, 93, 0, 250, 0, 0, 250, 0),
('EC0', 92, 94, 0, 17, 0, 0, 17, 0),
('EC0', 93, 95, 0, 60, 0, 0, 60, 0),
('EC0', 94, 96, 0, 40, 0, 0, 40, 0),
('EC0', 95, 97, 0, 60, 0, 0, 60, 0),
('EC0', 97, 99, 0, 83, 0, 0, 83, 0),
('EC14', 99, 101, 15, 40, 0, 6, 46, 0),
('EC0', 100, 102, 0, 298, 0, 0, 298, 0),
('EC0', 101, 103, 0, 150, 0, 0, 150, 0),
('EC0', 102, 104, 0, 345, 0, 0, 345, 0),
('EC0', 103, 105, 0, 345, 0, 0, 345, 0),
('EC0', 104, 106, 0, 400, 0, 0, 400, 0),
('EC0', 105, 107, 0, 250.01, 0, 0, 250.01, 0),
('EC0', 106, 108, 0, 150, 0, 0, 150, 0),
('EC0', 107, 109, 0, 30, 0, 0, 30, 0),
('EC0', 108, 110, 0, 400, 0, 0, 400, 0),
('EC0', 109, 111, 0, 135, 0, 0, 135, 0),
('EC0', 110, 112, 0, 250, 0, 0, 250, 0),
('EC0', 111, 113, 0, 510, 0, 0, 510, 0),
('EC0', 112, 114, 0, 20, 0, 0, 20, 0),
('EC0', 113, 115, 0, 82.5, 0, 0, 82.5, 0),
('EC0', 114, 116, 0, 89, 0, 0, 89, 0),
('EC0', 117, 119, 0, 95, 0, 0, 95, 0),
('EC0', 118, 120, 0, 564, 0, 0, 564, 0),
('EC0', 119, 121, 0, 40, 0, 0, 40, 0),
('EC0', 120, 122, 0, 400, 0, 0, 400, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspresupuestoscli`
--

CREATE TABLE `lineaspresupuestoscli` (
  `cantidad` double NOT NULL DEFAULT 0,
  `codimpuesto` varchar(10) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `dtolineal` double DEFAULT 0,
  `dtopor` double NOT NULL DEFAULT 0,
  `idlinea` int(11) NOT NULL,
  `idpresupuesto` int(11) NOT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) DEFAULT NULL,
  `codcombinacion` varchar(18) DEFAULT NULL,
  `orden` int(11) DEFAULT 0,
  `mostrar_cantidad` tinyint(1) DEFAULT 1,
  `mostrar_precio` tinyint(1) DEFAULT 1,
  `dtopor2` double NOT NULL DEFAULT 0,
  `dtopor3` double NOT NULL DEFAULT 0,
  `dtopor4` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `lineaspresupuestoscli`
--

INSERT INTO `lineaspresupuestoscli` (`cantidad`, `codimpuesto`, `descripcion`, `dtolineal`, `dtopor`, `idlinea`, `idpresupuesto`, `irpf`, `iva`, `pvpsindto`, `pvptotal`, `pvpunitario`, `recargo`, `referencia`, `codcombinacion`, `orden`, `mostrar_cantidad`, `mostrar_precio`, `dtopor2`, `dtopor3`, `dtopor4`) VALUES
(2, 'EC0', 'MIGRACIÓN + MANTENIMIENTO + LICENCIAS + ANTIVIRUS', 0, 25, 3, 3, 0, 0, 120, 90, 60, 0, '0001', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Server Multithreading  - Linux Operating System -  Administration interface konsoleH - 1 IP address - DDoS protection - Free phone support - Free email support 24/7 on-site service in our data centers - 30.9 TBit total bandwidth-  Redundant network High-speed access to all Internet uplinks Network availability min. 99.9% - Operating system updates - Software updates - Comprehensive security concept -  Comprehensive system integrity checks - Nameserver administration as well as synchronization concept - Escalation concept - Daily backup - Spam filter - Virus filter - SSH access -  Juniper Backbone Technology - 1 Gbit/s Gigabit-Ethernet-Uplink to Switch - SSL Manager - SSL encryption (https) Symantec Basic - SSL Certificate, duration 1 year', 0, 0, 4, 4, 0, 0, 2600, 2600, 2600, 0, '24', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC0', 'Portal LMS (Learning Management System) Premium Admin 1 Year', 0, 0, 5, 4, 0, 0, 1550, 1550, 1550, 0, '0004', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC14', 'HP INTEL I3-1215U 512GB SSD 8GB RAM 14&quot;', 0, 5, 6, 5, 0, 15, 490, 465.5, 490, 0, '27', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC14', 'Impresora Epson L3250', 0, 6, 7, 5, 0, 15, 255, 239.7, 255, 0, '0005', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC14', 'HP N4120 256GB SSD 8GB RAM 14&quot;', 0, 5, 8, 6, 0, 15, 398, 378.1, 398, 0, '0008', NULL, 0, 1, 1, 0, 0, 0),
(1, 'EC14', 'Impresora Epson A3 L3250', 0, 6, 9, 6, 0, 15, 255, 239.7, 255, 0, '0005', NULL, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineasregstocks`
--

CREATE TABLE `lineasregstocks` (
  `cantidadfin` double NOT NULL DEFAULT 0,
  `cantidadini` double NOT NULL DEFAULT 0,
  `codalmacendest` varchar(4) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id` int(11) NOT NULL,
  `idstock` int(11) NOT NULL,
  `motivo` text DEFAULT NULL,
  `nick` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineastransstock`
--

CREATE TABLE `lineastransstock` (
  `cantidad` double NOT NULL,
  `descripcion` text DEFAULT NULL,
  `idlinea` int(11) NOT NULL,
  `idtrans` int(11) NOT NULL,
  `referencia` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `validarprov` tinyint(1) DEFAULT NULL,
  `codiso` varchar(2) DEFAULT NULL,
  `bandera` text DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `codpais` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`validarprov`, `codiso`, `bandera`, `nombre`, `codpais`) VALUES
(NULL, 'AW', NULL, 'Aruba', 'ABW'),
(NULL, 'AF', NULL, 'Afganistán', 'AFG'),
(NULL, 'AO', NULL, 'Angola', 'AGO'),
(NULL, 'AI', NULL, 'Anguila', 'AIA'),
(NULL, 'AX', NULL, 'Islas Gland', 'ALA'),
(NULL, 'AL', NULL, 'Albania', 'ALB'),
(NULL, 'AD', NULL, 'Andorra', 'AND'),
(NULL, 'AN', NULL, 'Antillas Holandesas', 'ANT'),
(NULL, 'AE', NULL, 'Emiratos Árabes Unidos', 'ARE'),
(NULL, 'AR', NULL, 'Argentina', 'ARG'),
(NULL, 'AM', NULL, 'Armenia', 'ARM'),
(NULL, 'AS', NULL, 'Samoa Americana', 'ASM'),
(NULL, 'AQ', NULL, 'Antártida', 'ATA'),
(NULL, 'TF', NULL, 'Territorios Australes Franceses', 'ATF'),
(NULL, 'AG', NULL, 'Antigua y Barbuda', 'ATG'),
(NULL, 'AU', NULL, 'Australia', 'AUS'),
(NULL, 'AT', NULL, 'Austria', 'AUT'),
(NULL, 'AZ', NULL, 'Azerbaiyán', 'AZE'),
(NULL, 'BI', NULL, 'Burundi', 'BDI'),
(NULL, 'BE', NULL, 'Bélgica', 'BEL'),
(NULL, 'BJ', NULL, 'Benín', 'BEN'),
(NULL, 'BF', NULL, 'Burkina Faso', 'BFA'),
(NULL, 'BD', NULL, 'Bangladesh', 'BGD'),
(NULL, 'BG', NULL, 'Bulgaria', 'BGR'),
(NULL, 'BH', NULL, 'Bahréin', 'BHR'),
(NULL, 'BS', NULL, 'Bahamas', 'BHS'),
(NULL, 'BA', NULL, 'Bosnia y Herzegovina', 'BIH'),
(NULL, 'BY', NULL, 'Bielorrusia', 'BLR'),
(NULL, 'BZ', NULL, 'Belice', 'BLZ'),
(NULL, 'BM', NULL, 'Bermudas', 'BMU'),
(NULL, 'BO', NULL, 'Bolivia', 'BOL'),
(NULL, 'BR', NULL, 'Brasil', 'BRA'),
(NULL, 'BB', NULL, 'Barbados', 'BRB'),
(NULL, 'BN', NULL, 'Brunéi', 'BRN'),
(NULL, 'BT', NULL, 'Bhután', 'BTN'),
(NULL, 'BV', NULL, 'Isla Bouvet', 'BVT'),
(NULL, 'BW', NULL, 'Botsuana', 'BWA'),
(NULL, 'CF', NULL, 'República Centroafricana', 'CAF'),
(NULL, 'CA', NULL, 'Canadá', 'CAN'),
(NULL, 'CC', NULL, 'Islas Cocos', 'CCK'),
(NULL, 'CH', NULL, 'Suiza', 'CHE'),
(NULL, 'CL', NULL, 'Chile', 'CHL'),
(NULL, 'CN', NULL, 'China', 'CHN'),
(NULL, 'CI', NULL, 'Costa de Marfil', 'CIV'),
(NULL, 'CM', NULL, 'Camerún', 'CMR'),
(NULL, 'CD', NULL, 'República Democrática del Congo', 'COD'),
(NULL, 'CG', NULL, 'Congo', 'COG'),
(NULL, 'CK', NULL, 'Islas Cook', 'COK'),
(NULL, 'CO', NULL, 'Colombia', 'COL'),
(NULL, 'KM', NULL, 'Comoras', 'COM'),
(NULL, 'CV', NULL, 'Cabo Verde', 'CPV'),
(NULL, 'CR', NULL, 'Costa Rica', 'CRI'),
(NULL, 'CU', NULL, 'Cuba', 'CUB'),
(NULL, 'CX', NULL, 'Isla de Navidad', 'CXR'),
(NULL, 'KY', NULL, 'Islas Caimán', 'CYM'),
(NULL, 'CY', NULL, 'Chipre', 'CYP'),
(NULL, 'CZ', NULL, 'República Checa', 'CZE'),
(NULL, 'DE', NULL, 'Alemania', 'DEU'),
(NULL, 'DJ', NULL, 'Yibuti', 'DJI'),
(NULL, 'DM', NULL, 'Dominica', 'DMA'),
(NULL, 'DK', NULL, 'Dinamarca', 'DNK'),
(NULL, 'DO', NULL, 'República Dominicana', 'DOM'),
(NULL, 'DZ', NULL, 'Argelia', 'DZA'),
(NULL, 'EC', NULL, 'Ecuador', 'ECU'),
(NULL, 'EG', NULL, 'Egipto', 'EGY'),
(NULL, 'ER', NULL, 'Eritrea', 'ERI'),
(NULL, 'EH', NULL, 'Sahara Occidental', 'ESH'),
(NULL, 'ES', NULL, 'España', 'ESP'),
(NULL, 'EE', NULL, 'Estonia', 'EST'),
(NULL, 'ET', NULL, 'Etiopía', 'ETH'),
(NULL, 'FI', NULL, 'Finlandia', 'FIN'),
(NULL, 'FJ', NULL, 'Fiyi', 'FJI'),
(NULL, 'FK', NULL, 'Islas Malvinas', 'FLK'),
(NULL, 'FR', NULL, 'Francia', 'FRA'),
(NULL, 'FO', NULL, 'Islas Feroe', 'FRO'),
(NULL, 'FM', NULL, 'Micronesia', 'FSM'),
(NULL, 'GA', NULL, 'Gabón', 'GAB'),
(NULL, 'GB', NULL, 'Reino Unido', 'GBR'),
(NULL, 'GE', NULL, 'Georgia', 'GEO'),
(NULL, 'GH', NULL, 'Ghana', 'GHA'),
(NULL, 'GI', NULL, 'Gibraltar', 'GIB'),
(NULL, 'GN', NULL, 'Guinea', 'GIN'),
(NULL, 'GP', NULL, 'Guadalupe', 'GLP'),
(NULL, 'GM', NULL, 'Gambia', 'GMB'),
(NULL, 'GW', NULL, 'Guinea-Bissau', 'GNB'),
(NULL, 'GQ', NULL, 'Guinea Ecuatorial', 'GNQ'),
(NULL, 'GR', NULL, 'Grecia', 'GRC'),
(NULL, 'GD', NULL, 'Granada', 'GRD'),
(NULL, 'GL', NULL, 'Groenlandia', 'GRL'),
(NULL, 'GT', NULL, 'Guatemala', 'GTM'),
(NULL, 'GF', NULL, 'Guayana Francesa', 'GUF'),
(NULL, 'GU', NULL, 'Guam', 'GUM'),
(NULL, 'GY', NULL, 'Guyana', 'GUY'),
(NULL, 'HK', NULL, 'Hong Kong', 'HKG'),
(NULL, 'HM', NULL, 'Islas Heard y McDonald', 'HMD'),
(NULL, 'HN', NULL, 'Honduras', 'HND'),
(NULL, 'HR', NULL, 'Croacia', 'HRV'),
(NULL, 'HT', NULL, 'Haití', 'HTI'),
(NULL, 'HU', NULL, 'Hungría', 'HUN'),
(NULL, 'ID', NULL, 'Indonesia', 'IDN'),
(NULL, 'IN', NULL, 'India', 'IND'),
(NULL, 'IO', NULL, 'Territorio Británico del Océano Índico', 'IOT'),
(NULL, 'IE', NULL, 'Irlanda', 'IRL'),
(NULL, 'IR', NULL, 'Irán', 'IRN'),
(NULL, 'IQ', NULL, 'Iraq', 'IRQ'),
(NULL, 'IS', NULL, 'Islandia', 'ISL'),
(NULL, 'IL', NULL, 'Israel', 'ISR'),
(NULL, 'IT', NULL, 'Italia', 'ITA'),
(NULL, 'JM', NULL, 'Jamaica', 'JAM'),
(NULL, 'JO', NULL, 'Jordania', 'JOR'),
(NULL, 'JP', NULL, 'Japón', 'JPN'),
(NULL, 'KZ', NULL, 'Kazajstán', 'KAZ'),
(NULL, 'KE', NULL, 'Kenia', 'KEN'),
(NULL, 'KG', NULL, 'Kirguistán', 'KGZ'),
(NULL, 'KH', NULL, 'Camboya', 'KHM'),
(NULL, 'KI', NULL, 'Kiribati', 'KIR'),
(NULL, 'KN', NULL, 'San Cristóbal y Nieves', 'KNA'),
(NULL, 'KR', NULL, 'Corea del Sur', 'KOR'),
(NULL, 'KW', NULL, 'Kuwait', 'KWT'),
(NULL, 'LA', NULL, 'Laos', 'LAO'),
(NULL, 'LB', NULL, 'Líbano', 'LBN'),
(NULL, 'LR', NULL, 'Liberia', 'LBR'),
(NULL, 'LY', NULL, 'Libia', 'LBY'),
(NULL, 'LC', NULL, 'Santa Lucía', 'LCA'),
(NULL, 'LI', NULL, 'Liechtenstein', 'LIE'),
(NULL, 'LK', NULL, 'Sri Lanka', 'LKA'),
(NULL, 'LS', NULL, 'Lesotho', 'LSO'),
(NULL, 'LT', NULL, 'Lituania', 'LTU'),
(NULL, 'LU', NULL, 'Luxemburgo', 'LUX'),
(NULL, 'LV', NULL, 'Letonia', 'LVA'),
(NULL, 'MO', NULL, 'Macao', 'MAC'),
(NULL, 'MA', NULL, 'Marruecos', 'MAR'),
(NULL, 'MC', NULL, 'Mónaco', 'MCO'),
(NULL, 'MD', NULL, 'Moldavia', 'MDA'),
(NULL, 'MG', NULL, 'Madagascar', 'MDG'),
(NULL, 'MV', NULL, 'Maldivas', 'MDV'),
(NULL, 'MX', NULL, 'México', 'MEX'),
(NULL, 'MH', NULL, 'Islas Marshall', 'MHL'),
(NULL, 'MK', NULL, 'Macedonia', 'MKD'),
(NULL, 'ML', NULL, 'Malí', 'MLI'),
(NULL, 'MT', NULL, 'Malta', 'MLT'),
(NULL, 'MM', NULL, 'Myanmar', 'MMR'),
(NULL, 'ME', NULL, 'Montenegro', 'MNE'),
(NULL, 'MN', NULL, 'Mongolia', 'MNG'),
(NULL, 'MP', NULL, 'Islas Marianas del Norte', 'MNP'),
(NULL, 'MZ', NULL, 'Mozambique', 'MOZ'),
(NULL, 'MR', NULL, 'Mauritania', 'MRT'),
(NULL, 'MS', NULL, 'Montserrat', 'MSR'),
(NULL, 'MQ', NULL, 'Martinica', 'MTQ'),
(NULL, 'MU', NULL, 'Mauricio', 'MUS'),
(NULL, 'MW', NULL, 'Malaui', 'MWI'),
(NULL, 'MY', NULL, 'Malasia', 'MYS'),
(NULL, 'YT', NULL, 'Mayotte', 'MYT'),
(NULL, 'NA', NULL, 'Namibia', 'NAM'),
(NULL, 'NC', NULL, 'Nueva Caledonia', 'NCL'),
(NULL, 'NE', NULL, 'Níger', 'NER'),
(NULL, 'NF', NULL, 'Isla Norfolk', 'NFK'),
(NULL, 'NG', NULL, 'Nigeria', 'NGA'),
(NULL, 'NI', NULL, 'Nicaragua', 'NIC'),
(NULL, 'NU', NULL, 'Niue', 'NIU'),
(NULL, 'NL', NULL, 'Países Bajos', 'NLD'),
(NULL, 'NO', NULL, 'Noruega', 'NOR'),
(NULL, 'NP', NULL, 'Nepal', 'NPL'),
(NULL, 'NR', NULL, 'Nauru', 'NRU'),
(NULL, 'NZ', NULL, 'Nueva Zelanda', 'NZL'),
(NULL, 'OM', NULL, 'Omán', 'OMN'),
(NULL, 'PK', NULL, 'Pakistán', 'PAK'),
(NULL, 'PA', NULL, 'Panamá', 'PAN'),
(NULL, 'PN', NULL, 'Islas Pitcairn', 'PCN'),
(NULL, 'PE', NULL, 'Perú', 'PER'),
(NULL, 'PH', NULL, 'Filipinas', 'PHL'),
(NULL, 'PW', NULL, 'Palaos', 'PLW'),
(NULL, 'PG', NULL, 'Papúa Nueva Guinea', 'PNG'),
(NULL, 'PL', NULL, 'Polonia', 'POL'),
(NULL, 'PR', NULL, 'Puerto Rico', 'PRI'),
(NULL, 'KP', NULL, 'Corea del Norte', 'PRK'),
(NULL, 'PT', NULL, 'Portugal', 'PRT'),
(NULL, 'PY', NULL, 'Paraguay', 'PRY'),
(NULL, 'PS', NULL, 'Palestina', 'PSE'),
(NULL, 'PF', NULL, 'Polinesia Francesa', 'PYF'),
(NULL, 'QA', NULL, 'Qatar', 'QAT'),
(NULL, 'RE', NULL, 'Reunión', 'REU'),
(NULL, 'RO', NULL, 'Rumania', 'ROU'),
(NULL, 'RU', NULL, 'Rusia', 'RUS'),
(NULL, 'RW', NULL, 'Ruanda', 'RWA'),
(NULL, 'SA', NULL, 'Arabia Saudí', 'SAU'),
(NULL, 'SD', NULL, 'Sudán', 'SDN'),
(NULL, 'SN', NULL, 'Senegal', 'SEN'),
(NULL, 'SG', NULL, 'Singapur', 'SGP'),
(NULL, 'GS', NULL, 'Islas Georgias del Sur y Sandwich del Sur', 'SGS'),
(NULL, 'SH', NULL, 'Santa Helena', 'SHN'),
(NULL, 'SJ', NULL, 'Svalbard y Jan Mayen', 'SJM'),
(NULL, 'SB', NULL, 'Islas Salomón', 'SLB'),
(NULL, 'SL', NULL, 'Sierra Leona', 'SLE'),
(NULL, 'SV', NULL, 'El Salvador', 'SLV'),
(NULL, 'SM', NULL, 'San Marino', 'SMR'),
(NULL, 'SO', NULL, 'Somalia', 'SOM'),
(NULL, 'PM', NULL, 'San Pedro y Miquelón', 'SPM'),
(NULL, 'RS', NULL, 'Serbia', 'SRB'),
(NULL, 'ST', NULL, 'Santo Tomé y Príncipe', 'STP'),
(NULL, 'SR', NULL, 'Surinam', 'SUR'),
(NULL, 'SK', NULL, 'Eslovaquia', 'SVK'),
(NULL, 'SI', NULL, 'Eslovenia', 'SVN'),
(NULL, 'SE', NULL, 'Suecia', 'SWE'),
(NULL, 'SZ', NULL, 'Suazilandia', 'SWZ'),
(NULL, 'SC', NULL, 'Seychelles', 'SYC'),
(NULL, 'SY', NULL, 'Siria', 'SYR'),
(NULL, 'TC', NULL, 'Islas Turcas y Caicos', 'TCA'),
(NULL, 'TD', NULL, 'Chad', 'TCD'),
(NULL, 'TG', NULL, 'Togo', 'TGO'),
(NULL, 'TH', NULL, 'Tailandia', 'THA'),
(NULL, 'TJ', NULL, 'Tayikistán', 'TJK'),
(NULL, 'TK', NULL, 'Tokelau', 'TKL'),
(NULL, 'TM', NULL, 'Turkmenistán', 'TKM'),
(NULL, 'TL', NULL, 'Timor Oriental', 'TLS'),
(NULL, 'TO', NULL, 'Tonga', 'TON'),
(NULL, 'TT', NULL, 'Trinidad y Tobago', 'TTO'),
(NULL, 'TN', NULL, 'Túnez', 'TUN'),
(NULL, 'TR', NULL, 'Turquía', 'TUR'),
(NULL, 'TV', NULL, 'Tuvalu', 'TUV'),
(NULL, 'TW', NULL, 'Taiwán', 'TWN'),
(NULL, 'TZ', NULL, 'Tanzania', 'TZA'),
(NULL, 'UG', NULL, 'Uganda', 'UGA'),
(NULL, 'UA', NULL, 'Ucrania', 'UKR'),
(NULL, 'UM', NULL, 'Islas Ultramarinas de Estados Unidos', 'UMI'),
(NULL, 'UY', NULL, 'Uruguay', 'URY'),
(NULL, 'US', NULL, 'Estados Unidos', 'USA'),
(NULL, 'UZ', NULL, 'Uzbekistán', 'UZB'),
(NULL, 'VA', NULL, 'Ciudad del Vaticano', 'VAT'),
(NULL, 'VC', NULL, 'San Vicente y las Granadinas', 'VCT'),
(NULL, 'VE', NULL, 'Venezuela', 'VEN'),
(NULL, 'VG', NULL, 'Islas Vírgenes Británicas', 'VGB'),
(NULL, 'VI', NULL, 'Islas Vírgenes de los Estados Unidos', 'VIR'),
(NULL, 'VN', NULL, 'Vietnam', 'VNM'),
(NULL, 'VU', NULL, 'Vanuatu', 'VUT'),
(NULL, 'WF', NULL, 'Wallis y Futuna', 'WLF'),
(NULL, 'WS', NULL, 'Samoa', 'WSM'),
(NULL, 'YE', NULL, 'Yemen', 'YEM'),
(NULL, 'ZA', NULL, 'Sudáfrica', 'ZAF'),
(NULL, 'ZM', NULL, 'Zambia', 'ZMB'),
(NULL, 'ZW', NULL, 'Zimbabue', 'ZWE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidoscli`
--

CREATE TABLE `pedidoscli` (
  `apartado` varchar(10) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `codcliente` varchar(6) DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `codpago` varchar(10) NOT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `fechasalida` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `idpedido` int(11) NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nombrecliente` varchar(100) DEFAULT NULL,
  `numero` varchar(12) NOT NULL,
  `numero2` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `servido` varchar(10) DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `codtrans` varchar(8) DEFAULT NULL,
  `codigoenv` varchar(200) DEFAULT NULL,
  `nombreenv` varchar(200) DEFAULT NULL,
  `apellidosenv` varchar(200) DEFAULT NULL,
  `direccionenv` varchar(100) DEFAULT NULL,
  `codpostalenv` varchar(10) DEFAULT NULL,
  `ciudadenv` varchar(100) DEFAULT NULL,
  `provinciaenv` varchar(100) DEFAULT NULL,
  `apartadoenv` varchar(10) DEFAULT NULL,
  `codpaisenv` varchar(20) DEFAULT NULL,
  `numdocs` int(11) DEFAULT 0,
  `idoriginal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidosprov`
--

CREATE TABLE `pedidosprov` (
  `codigo` varchar(20) NOT NULL,
  `totaleuros` double NOT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codpago` varchar(10) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `irpf` double DEFAULT NULL,
  `idpedido` int(11) NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `servido` varchar(10) DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `numproveedor` varchar(50) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `codproveedor` varchar(6) DEFAULT NULL,
  `fechaentrada` date DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `neto` double NOT NULL,
  `totalirpf` double DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `totaliva` double NOT NULL,
  `numero` varchar(12) NOT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `numdocs` int(11) DEFAULT 0,
  `idoriginal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestoscli`
--

CREATE TABLE `presupuestoscli` (
  `apartado` varchar(10) DEFAULT NULL,
  `cifnif` varchar(30) NOT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codagente` varchar(10) DEFAULT NULL,
  `codalmacen` varchar(4) DEFAULT NULL,
  `codcliente` varchar(6) DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) NOT NULL,
  `codejercicio` varchar(4) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `codoportunidad` varchar(8) DEFAULT NULL,
  `codpago` varchar(10) NOT NULL,
  `codpais` varchar(20) DEFAULT NULL,
  `codpostal` varchar(10) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `estado` varchar(25) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `finoferta` date DEFAULT NULL,
  `fechasalida` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `idpresupuesto` int(11) NOT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT 0,
  `neto` double NOT NULL DEFAULT 0,
  `nombrecliente` varchar(100) DEFAULT NULL,
  `numero` varchar(12) NOT NULL,
  `numero2` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL DEFAULT 1,
  `total` double NOT NULL DEFAULT 0,
  `totaleuros` double NOT NULL DEFAULT 0,
  `totalirpf` double NOT NULL DEFAULT 0,
  `totaliva` double NOT NULL DEFAULT 0,
  `totalrecargo` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `codtrans` varchar(8) DEFAULT NULL,
  `codigoenv` varchar(200) DEFAULT NULL,
  `nombreenv` varchar(200) DEFAULT NULL,
  `apellidosenv` varchar(200) DEFAULT NULL,
  `direccionenv` varchar(100) DEFAULT NULL,
  `codpostalenv` varchar(10) DEFAULT NULL,
  `ciudadenv` varchar(100) DEFAULT NULL,
  `provinciaenv` varchar(100) DEFAULT NULL,
  `apartadoenv` varchar(10) DEFAULT NULL,
  `codpaisenv` varchar(20) DEFAULT NULL,
  `numdocs` int(11) DEFAULT 0,
  `idoriginal` int(11) DEFAULT NULL,
  `netosindto` double NOT NULL DEFAULT 0,
  `dtopor1` double NOT NULL DEFAULT 0,
  `dtopor2` double NOT NULL DEFAULT 0,
  `dtopor3` double NOT NULL DEFAULT 0,
  `dtopor4` double NOT NULL DEFAULT 0,
  `dtopor5` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `presupuestoscli`
--

INSERT INTO `presupuestoscli` (`apartado`, `cifnif`, `ciudad`, `codagente`, `codalmacen`, `codcliente`, `coddir`, `coddivisa`, `codejercicio`, `codigo`, `codoportunidad`, `codpago`, `codpais`, `codpostal`, `codserie`, `direccion`, `editable`, `estado`, `fecha`, `hora`, `finoferta`, `fechasalida`, `femail`, `idpresupuesto`, `idpedido`, `idprovincia`, `irpf`, `neto`, `nombrecliente`, `numero`, `numero2`, `observaciones`, `porcomision`, `provincia`, `recfinanciero`, `tasaconv`, `total`, `totaleuros`, `totalirpf`, `totaliva`, `totalrecargo`, `status`, `codtrans`, `codigoenv`, `nombreenv`, `apellidosenv`, `direccionenv`, `codpostalenv`, `ciudadenv`, `provinciaenv`, `apartadoenv`, `codpaisenv`, `numdocs`, `idoriginal`, `netosindto`, `dtopor1`, `dtopor2`, `dtopor3`, `dtopor4`, `dtopor5`) VALUES
('', '0922723978', 'Palmar', '1', 'ALG', '000001', NULL, 'USD', '2024', '1', NULL, 'CONT', 'ECU', '', 'A', 'Palmar', 1, NULL, '2024-03-27', '10:45:17', '2024-04-27', NULL, NULL, 3, NULL, NULL, 0, 90, 'Sara Pozo', '1', '', '', 0, 'Santa Elena', NULL, 1.129, 90, 79.71656, 0, 0, 0, 2, NULL, '', '', '', '', '', '', '', '', 'ECU', 0, NULL, 90, 0, 0, 0, 0, 0),
('', '', 'Guayaquil', '1', 'ALG', '000018', 18, 'USD', '2024', '2', NULL, 'CONT', 'ECU', '', 'B', '', 1, NULL, '2024-11-01', '16:37:01', '2024-12-01', NULL, NULL, 4, NULL, NULL, 0, 4150, 'Germán Varas Macio', '2', '', '', 0, 'Guayas', NULL, 1.129, 4150, 3675.81931, 0, 0, 0, 2, NULL, '', '', '', '', '', '', '', '', 'ECU', 0, NULL, 4150, 0, 0, 0, 0, 0),
('', '', 'Guayaquil', '1', 'ALG', '000027', 27, 'USD', '0001', '3', NULL, 'CONT', 'ECU', '', 'C', '', 1, NULL, '2025-05-27', '20:46:21', '2025-06-27', NULL, NULL, 5, NULL, NULL, 0, 705.2, 'Cliente Final', '3', '', '', 0, 'Guayas', NULL, 1.129, 810.98, 718.31709, 0, 105.78, 0, 2, NULL, '', '', '', '', '', '', '', '', 'ECU', 0, NULL, 705.2, 0, 0, 0, 0, 0),
('', '', 'Guayaquil', '1', 'ALG', '000027', 27, 'USD', '0001', '4', NULL, 'CONT', 'ECU', '', 'C', '', 1, NULL, '2025-05-27', '20:51:23', '2025-06-27', NULL, NULL, 6, NULL, NULL, 0, 617.8, 'Cliente Final', '4', '', '', 0, 'Guayas', NULL, 1.129, 710.47, 629.29141, 0, 92.67, 0, 2, NULL, '', '', '', '', '', '', '', '', 'ECU', 0, NULL, 617.8, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `cifnif` varchar(30) NOT NULL,
  `codcontacto` varchar(6) DEFAULT NULL,
  `codcuentadom` varchar(6) DEFAULT NULL,
  `codcuentapago` varchar(6) DEFAULT NULL,
  `coddivisa` varchar(3) DEFAULT NULL,
  `codpago` varchar(10) DEFAULT NULL,
  `codproveedor` varchar(6) NOT NULL,
  `codserie` varchar(2) DEFAULT NULL,
  `codsubcuenta` varchar(15) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaportes` double DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `razonsocial` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `recfinanciero` varchar(20) DEFAULT NULL,
  `regimeniva` varchar(20) DEFAULT NULL,
  `telefono1` varchar(30) DEFAULT NULL,
  `telefono2` varchar(30) DEFAULT NULL,
  `tipoidfiscal` varchar(25) NOT NULL DEFAULT 'NIF',
  `web` varchar(250) DEFAULT NULL,
  `acreedor` tinyint(1) DEFAULT 0,
  `personafisica` tinyint(1) DEFAULT 1,
  `debaja` tinyint(1) DEFAULT 0,
  `fechabaja` date DEFAULT NULL,
  `codcliente` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencias`
--

CREATE TABLE `secuencias` (
  `descripcion` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idsec` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `secuencias`
--

INSERT INTO `secuencias` (`descripcion`, `id`, `idsec`, `nombre`, `valor`, `valorout`) VALUES
('Secuencia del ejercicio 2024 y la serie A', 1, 1, 'nfacturacli', 1, 61),
('Secuencia del ejercicio 2024 y la serie B', 3, 2, 'nfacturacli', 1, 128),
('Secuencia del ejercicio 0001 y la serie C', 6, 3, 'nfacturacli', 1, 178);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuenciasejercicios`
--

CREATE TABLE `secuenciasejercicios` (
  `codejercicio` varchar(4) NOT NULL,
  `codserie` varchar(2) NOT NULL,
  `id` int(11) NOT NULL,
  `nalbarancli` int(11) NOT NULL,
  `nalbaranprov` int(11) NOT NULL,
  `nfacturacli` int(11) NOT NULL,
  `nfacturaprov` int(11) NOT NULL,
  `npedidocli` int(11) NOT NULL,
  `npedidoprov` int(11) NOT NULL,
  `npresupuestocli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `secuenciasejercicios`
--

INSERT INTO `secuenciasejercicios` (`codejercicio`, `codserie`, `id`, `nalbarancli`, `nalbaranprov`, `nfacturacli`, `nfacturaprov`, `npedidocli`, `npedidoprov`, `npresupuestocli`) VALUES
('2024', 'A', 1, 1, 1, 1, 1, 1, 1, 1),
('2024', 'R', 2, 1, 1, 1, 1, 1, 1, 1),
('2024', 'B', 3, 1, 1, 1, 1, 1, 1, 1),
('0001', 'A', 4, 1, 1, 1, 1, 1, 1, 1),
('0001', 'B', 5, 1, 1, 1, 1, 1, 1, 1),
('0001', 'C', 6, 1, 1, 1, 1, 1, 1, 1),
('0001', 'R', 7, 1, 1, 1, 1, 1, 1, 1),
('2024', 'C', 8, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `irpf` double DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `codserie` varchar(2) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `siniva` tinyint(1) DEFAULT NULL,
  `codcuenta` varchar(6) DEFAULT NULL,
  `codejercicio` varchar(4) DEFAULT NULL,
  `numfactura` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`irpf`, `idcuenta`, `codserie`, `descripcion`, `siniva`, `codcuenta`, `codejercicio`, `numfactura`) VALUES
(0, NULL, 'A', 'SERIE A', 0, NULL, '2024', 57),
(0, NULL, 'B', 'SERIE B', 0, NULL, '2024', 76),
(0, NULL, 'C', 'SERIE C', 0, NULL, '0001', 126),
(0, NULL, 'R', 'RECTIFICATIVAS', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocks`
--

CREATE TABLE `stocks` (
  `referencia` varchar(18) NOT NULL,
  `disponible` double NOT NULL,
  `stockmin` double NOT NULL DEFAULT 0,
  `reservada` double NOT NULL,
  `horaultreg` time DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `pterecibir` double NOT NULL,
  `fechaultreg` date DEFAULT NULL,
  `codalmacen` varchar(4) NOT NULL,
  `cantidadultreg` double NOT NULL DEFAULT 0,
  `idstock` int(11) NOT NULL,
  `cantidad` double NOT NULL DEFAULT 0,
  `stockmax` double NOT NULL DEFAULT 0,
  `ubicacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `incporcentual` double NOT NULL,
  `inclineal` double NOT NULL,
  `aplicar_a` varchar(12) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `mincoste` tinyint(1) DEFAULT 0,
  `maxpvp` tinyint(1) DEFAULT 0,
  `codtarifa` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transstock`
--

CREATE TABLE `transstock` (
  `usuario` varchar(12) DEFAULT NULL,
  `codalmadestino` varchar(4) NOT NULL,
  `codalmaorigen` varchar(4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idtrans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenciastrans`
--
ALTER TABLE `agenciastrans`
  ADD PRIMARY KEY (`codtrans`);

--
-- Indices de la tabla `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`codagente`);

--
-- Indices de la tabla `albaranescli`
--
ALTER TABLE `albaranescli`
  ADD PRIMARY KEY (`idalbaran`),
  ADD UNIQUE KEY `uniq_codigo_albaranescli` (`codigo`),
  ADD KEY `ca_albaranescli_series2` (`codserie`),
  ADD KEY `ca_albaranescli_ejercicios2` (`codejercicio`),
  ADD KEY `ca_albaranescli_facturas` (`idfactura`);

--
-- Indices de la tabla `albaranesprov`
--
ALTER TABLE `albaranesprov`
  ADD PRIMARY KEY (`idalbaran`),
  ADD UNIQUE KEY `uniq_codigo_albaranesprov` (`codigo`),
  ADD KEY `ca_albaranesprov_series2` (`codserie`),
  ADD KEY `ca_albaranesprov_ejercicios2` (`codejercicio`),
  ADD KEY `ca_albaranesprov_facturas` (`idfactura`);

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`codalmacen`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`referencia`),
  ADD KEY `ca_articulos_impuestos` (`codimpuesto`),
  ADD KEY `ca_articulos_familias` (`codfamilia`),
  ADD KEY `ca_articulos_fabricantes` (`codfabricante`);

--
-- Indices de la tabla `articulosprov`
--
ALTER TABLE `articulosprov`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_articulo_proveedor2` (`codproveedor`,`refproveedor`);

--
-- Indices de la tabla `articulo_propiedades`
--
ALTER TABLE `articulo_propiedades`
  ADD PRIMARY KEY (`name`,`referencia`),
  ADD KEY `ca_articulo_propiedades_articulos` (`referencia`);

--
-- Indices de la tabla `articulo_trazas`
--
ALTER TABLE `articulo_trazas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_codigo_articulo_trazas` (`numserie`),
  ADD KEY `ca_articulo_trazas_articulos` (`referencia`),
  ADD KEY `ca_articulo_trazas_linalbcli` (`idlalbventa`),
  ADD KEY `ca_articulo_trazas_linfaccli` (`idlfacventa`),
  ADD KEY `ca_articulo_trazas_linalbprov` (`idlalbcompra`),
  ADD KEY `ca_articulo_trazas_linfacprov` (`idlfaccompra`);

--
-- Indices de la tabla `atributos`
--
ALTER TABLE `atributos`
  ADD PRIMARY KEY (`codatributo`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas_terminales`
--
ALTER TABLE `cajas_terminales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `ca_clientes_grupos` (`codgrupo`);

--
-- Indices de la tabla `co_asientos`
--
ALTER TABLE `co_asientos`
  ADD PRIMARY KEY (`idasiento`),
  ADD KEY `ca_co_asientos_ejercicios2` (`codejercicio`);

--
-- Indices de la tabla `co_codbalances08`
--
ALTER TABLE `co_codbalances08`
  ADD PRIMARY KEY (`codbalance`);

--
-- Indices de la tabla `co_conceptospar`
--
ALTER TABLE `co_conceptospar`
  ADD PRIMARY KEY (`idconceptopar`);

--
-- Indices de la tabla `co_cuentas`
--
ALTER TABLE `co_cuentas`
  ADD PRIMARY KEY (`idcuenta`),
  ADD UNIQUE KEY `uniq_codcuenta` (`codcuenta`,`codejercicio`),
  ADD KEY `ca_co_cuentas_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_cuentas_epigrafes2` (`idepigrafe`);

--
-- Indices de la tabla `co_cuentascb`
--
ALTER TABLE `co_cuentascb`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_cuentascbba`
--
ALTER TABLE `co_cuentascbba`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_cuentasesp`
--
ALTER TABLE `co_cuentasesp`
  ADD PRIMARY KEY (`idcuentaesp`);

--
-- Indices de la tabla `co_epigrafes`
--
ALTER TABLE `co_epigrafes`
  ADD PRIMARY KEY (`idepigrafe`),
  ADD KEY `ca_co_epigrafes_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_epigrafes_gruposepigrafes2` (`idgrupo`);

--
-- Indices de la tabla `co_gruposepigrafes`
--
ALTER TABLE `co_gruposepigrafes`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `ca_co_gruposepigrafes_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `co_partidas`
--
ALTER TABLE `co_partidas`
  ADD PRIMARY KEY (`idpartida`),
  ADD KEY `ca_co_partidas_co_asientos2` (`idasiento`),
  ADD KEY `ca_co_partidas_subcuentas` (`idsubcuenta`);

--
-- Indices de la tabla `co_regiva`
--
ALTER TABLE `co_regiva`
  ADD PRIMARY KEY (`idregiva`);

--
-- Indices de la tabla `co_secuencias`
--
ALTER TABLE `co_secuencias`
  ADD PRIMARY KEY (`idsecuencia`),
  ADD KEY `ca_co_secuencias_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `co_subcuentas`
--
ALTER TABLE `co_subcuentas`
  ADD PRIMARY KEY (`idsubcuenta`),
  ADD UNIQUE KEY `uniq_codsubcuenta` (`codsubcuenta`,`codejercicio`),
  ADD KEY `ca_co_subcuentas_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_subcuentas_cuentas2` (`idcuenta`);

--
-- Indices de la tabla `co_subcuentascli`
--
ALTER TABLE `co_subcuentascli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_co_subcuentascli_ejercicios` (`codejercicio`),
  ADD KEY `ca_co_subcuentascli_clientes` (`codcliente`),
  ADD KEY `ca_co_subcuentascli_subcuentas` (`idsubcuenta`);

--
-- Indices de la tabla `cuentasbanco`
--
ALTER TABLE `cuentasbanco`
  ADD PRIMARY KEY (`codcuenta`);

--
-- Indices de la tabla `cuentasbcocli`
--
ALTER TABLE `cuentasbcocli`
  ADD PRIMARY KEY (`codcuenta`),
  ADD KEY `ca_cuentasbcocli_clientes` (`codcliente`);

--
-- Indices de la tabla `cuentasbcopro`
--
ALTER TABLE `cuentasbcopro`
  ADD PRIMARY KEY (`codcuenta`),
  ADD KEY `ca_cuentasbcopro_proveedores` (`codproveedor`);

--
-- Indices de la tabla `dirclientes`
--
ALTER TABLE `dirclientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_dirclientes_clientes` (`codcliente`);

--
-- Indices de la tabla `divisas`
--
ALTER TABLE `divisas`
  ADD PRIMARY KEY (`coddivisa`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`codejercicio`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`codfabricante`);

--
-- Indices de la tabla `facturascli`
--
ALTER TABLE `facturascli`
  ADD PRIMARY KEY (`idfactura`),
  ADD UNIQUE KEY `uniq_codigo_facturascli` (`codigo`),
  ADD KEY `ca_facturascli_series2` (`codserie`),
  ADD KEY `ca_facturascli_ejercicios2` (`codejercicio`),
  ADD KEY `ca_facturascli_asiento2` (`idasiento`),
  ADD KEY `ca_facturascli_asientop` (`idasientop`);

--
-- Indices de la tabla `facturasprov`
--
ALTER TABLE `facturasprov`
  ADD PRIMARY KEY (`idfactura`),
  ADD UNIQUE KEY `uniq_codigo_facturasprov` (`codigo`),
  ADD KEY `ca_facturasprov_series2` (`codserie`),
  ADD KEY `ca_facturasprov_ejercicios2` (`codejercicio`),
  ADD KEY `ca_facturasprov_asiento2` (`idasiento`),
  ADD KEY `ca_facturasprov_asientop` (`idasientop`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`codfamilia`);

--
-- Indices de la tabla `formaspago`
--
ALTER TABLE `formaspago`
  ADD PRIMARY KEY (`codpago`);

--
-- Indices de la tabla `fs_access`
--
ALTER TABLE `fs_access`
  ADD PRIMARY KEY (`fs_user`,`fs_page`),
  ADD KEY `fs_access_page2` (`fs_page`);

--
-- Indices de la tabla `fs_extensions2`
--
ALTER TABLE `fs_extensions2`
  ADD PRIMARY KEY (`name`,`page_from`),
  ADD KEY `ca_fs_extensions2_fs_pages` (`page_from`);

--
-- Indices de la tabla `fs_logs`
--
ALTER TABLE `fs_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fs_pages`
--
ALTER TABLE `fs_pages`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `fs_roles`
--
ALTER TABLE `fs_roles`
  ADD PRIMARY KEY (`codrol`);

--
-- Indices de la tabla `fs_users`
--
ALTER TABLE `fs_users`
  ADD PRIMARY KEY (`nick`),
  ADD KEY `ca_fs_users_pages` (`fs_page`);

--
-- Indices de la tabla `fs_vars`
--
ALTER TABLE `fs_vars`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `gruposclientes`
--
ALTER TABLE `gruposclientes`
  ADD PRIMARY KEY (`codgrupo`);

--
-- Indices de la tabla `idiomas_fac_det`
--
ALTER TABLE `idiomas_fac_det`
  ADD PRIMARY KEY (`codidioma`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`codimpuesto`);

--
-- Indices de la tabla `lineasalbaranescli`
--
ALTER TABLE `lineasalbaranescli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineasalbaranescli_albaranescli2` (`idalbaran`);

--
-- Indices de la tabla `lineasalbaranesprov`
--
ALTER TABLE `lineasalbaranesprov`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineasalbaranesprov_albaranesprov2` (`idalbaran`);

--
-- Indices de la tabla `lineasfacturascli`
--
ALTER TABLE `lineasfacturascli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_linea_facturascli2` (`idfactura`);

--
-- Indices de la tabla `lineasfacturasprov`
--
ALTER TABLE `lineasfacturasprov`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_linea_facturasprov2` (`idfactura`);

--
-- Indices de la tabla `lineasivafactcli`
--
ALTER TABLE `lineasivafactcli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineaiva_facturascli2` (`idfactura`);

--
-- Indices de la tabla `lineaspresupuestoscli`
--
ALTER TABLE `lineaspresupuestoscli`
  ADD PRIMARY KEY (`idlinea`),
  ADD KEY `ca_lineaspresupuestoscli_presupuestoscli` (`idpresupuesto`);

--
-- Indices de la tabla `lineasregstocks`
--
ALTER TABLE `lineasregstocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_lineasregstocks_stocks` (`idstock`);

--
-- Indices de la tabla `lineastransstock`
--
ALTER TABLE `lineastransstock`
  ADD PRIMARY KEY (`idlinea`),
  ADD UNIQUE KEY `uniq_referencia_transferencia` (`idtrans`,`referencia`),
  ADD KEY `ca_linea_transstock_articulos` (`referencia`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`codpais`);

--
-- Indices de la tabla `pedidoscli`
--
ALTER TABLE `pedidoscli`
  ADD PRIMARY KEY (`idpedido`),
  ADD UNIQUE KEY `uniq_codigo_pedidoscli` (`codigo`),
  ADD KEY `ca_pedidoscli_series` (`codserie`),
  ADD KEY `ca_pedidoscli_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `pedidosprov`
--
ALTER TABLE `pedidosprov`
  ADD PRIMARY KEY (`idpedido`),
  ADD UNIQUE KEY `uniq_codigo_pedidosprov` (`codigo`),
  ADD KEY `ca_pedidosprov_series` (`codserie`),
  ADD KEY `ca_pedidosprov_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `presupuestoscli`
--
ALTER TABLE `presupuestoscli`
  ADD PRIMARY KEY (`idpresupuesto`),
  ADD UNIQUE KEY `uniq_codigo_presupuestoscli` (`codigo`),
  ADD KEY `ca_presupuestoscli_series` (`codserie`),
  ADD KEY `ca_presupuestoscli_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`codproveedor`);

--
-- Indices de la tabla `secuencias`
--
ALTER TABLE `secuencias`
  ADD PRIMARY KEY (`idsec`),
  ADD KEY `ca_secuencias_secuenciasejercicios` (`id`);

--
-- Indices de la tabla `secuenciasejercicios`
--
ALTER TABLE `secuenciasejercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ca_secuenciasejercicios_ejercicios` (`codejercicio`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`codserie`);

--
-- Indices de la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`idstock`),
  ADD UNIQUE KEY `uniq_stocks_almacen_referencia` (`codalmacen`,`referencia`),
  ADD KEY `ca_stocks_articulos2` (`referencia`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`codtarifa`);

--
-- Indices de la tabla `transstock`
--
ALTER TABLE `transstock`
  ADD PRIMARY KEY (`idtrans`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albaranescli`
--
ALTER TABLE `albaranescli`
  MODIFY `idalbaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `albaranesprov`
--
ALTER TABLE `albaranesprov`
  MODIFY `idalbaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articulosprov`
--
ALTER TABLE `articulosprov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articulo_trazas`
--
ALTER TABLE `articulo_trazas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas_terminales`
--
ALTER TABLE `cajas_terminales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `co_asientos`
--
ALTER TABLE `co_asientos`
  MODIFY `idasiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de la tabla `co_cuentas`
--
ALTER TABLE `co_cuentas`
  MODIFY `idcuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `co_cuentascb`
--
ALTER TABLE `co_cuentascb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `co_cuentascbba`
--
ALTER TABLE `co_cuentascbba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `co_epigrafes`
--
ALTER TABLE `co_epigrafes`
  MODIFY `idepigrafe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `co_gruposepigrafes`
--
ALTER TABLE `co_gruposepigrafes`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `co_partidas`
--
ALTER TABLE `co_partidas`
  MODIFY `idpartida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT de la tabla `co_regiva`
--
ALTER TABLE `co_regiva`
  MODIFY `idregiva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `co_secuencias`
--
ALTER TABLE `co_secuencias`
  MODIFY `idsecuencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `co_subcuentas`
--
ALTER TABLE `co_subcuentas`
  MODIFY `idsubcuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- AUTO_INCREMENT de la tabla `co_subcuentascli`
--
ALTER TABLE `co_subcuentascli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `dirclientes`
--
ALTER TABLE `dirclientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facturascli`
--
ALTER TABLE `facturascli`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `facturasprov`
--
ALTER TABLE `facturasprov`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fs_logs`
--
ALTER TABLE `fs_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `lineasalbaranescli`
--
ALTER TABLE `lineasalbaranescli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineasalbaranesprov`
--
ALTER TABLE `lineasalbaranesprov`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineasfacturascli`
--
ALTER TABLE `lineasfacturascli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `lineasfacturasprov`
--
ALTER TABLE `lineasfacturasprov`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineasivafactcli`
--
ALTER TABLE `lineasivafactcli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `lineaspresupuestoscli`
--
ALTER TABLE `lineaspresupuestoscli`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `lineasregstocks`
--
ALTER TABLE `lineasregstocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lineastransstock`
--
ALTER TABLE `lineastransstock`
  MODIFY `idlinea` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidoscli`
--
ALTER TABLE `pedidoscli`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidosprov`
--
ALTER TABLE `pedidosprov`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presupuestoscli`
--
ALTER TABLE `presupuestoscli`
  MODIFY `idpresupuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `secuencias`
--
ALTER TABLE `secuencias`
  MODIFY `idsec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `secuenciasejercicios`
--
ALTER TABLE `secuenciasejercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `stocks`
--
ALTER TABLE `stocks`
  MODIFY `idstock` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transstock`
--
ALTER TABLE `transstock`
  MODIFY `idtrans` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albaranescli`
--
ALTER TABLE `albaranescli`
  ADD CONSTRAINT `ca_albaranescli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranescli_facturas` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranescli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `albaranesprov`
--
ALTER TABLE `albaranesprov`
  ADD CONSTRAINT `ca_albaranesprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranesprov_facturas` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_albaranesprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `ca_articulos_fabricantes` FOREIGN KEY (`codfabricante`) REFERENCES `fabricantes` (`codfabricante`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulos_familias` FOREIGN KEY (`codfamilia`) REFERENCES `familias` (`codfamilia`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulos_impuestos` FOREIGN KEY (`codimpuesto`) REFERENCES `impuestos` (`codimpuesto`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulosprov`
--
ALTER TABLE `articulosprov`
  ADD CONSTRAINT `ca_articulosprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulo_propiedades`
--
ALTER TABLE `articulo_propiedades`
  ADD CONSTRAINT `ca_articulo_propiedades_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `articulo_trazas`
--
ALTER TABLE `articulo_trazas`
  ADD CONSTRAINT `ca_articulo_trazas_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linalbcli` FOREIGN KEY (`idlalbventa`) REFERENCES `lineasalbaranescli` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linalbprov` FOREIGN KEY (`idlalbcompra`) REFERENCES `lineasalbaranesprov` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linfaccli` FOREIGN KEY (`idlfacventa`) REFERENCES `lineasfacturascli` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_articulo_trazas_linfacprov` FOREIGN KEY (`idlfaccompra`) REFERENCES `lineasfacturasprov` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `ca_clientes_grupos` FOREIGN KEY (`codgrupo`) REFERENCES `gruposclientes` (`codgrupo`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_asientos`
--
ALTER TABLE `co_asientos`
  ADD CONSTRAINT `ca_co_asientos_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_cuentas`
--
ALTER TABLE `co_cuentas`
  ADD CONSTRAINT `ca_co_cuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_cuentas_epigrafes2` FOREIGN KEY (`idepigrafe`) REFERENCES `co_epigrafes` (`idepigrafe`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_epigrafes`
--
ALTER TABLE `co_epigrafes`
  ADD CONSTRAINT `ca_co_epigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_epigrafes_gruposepigrafes2` FOREIGN KEY (`idgrupo`) REFERENCES `co_gruposepigrafes` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_gruposepigrafes`
--
ALTER TABLE `co_gruposepigrafes`
  ADD CONSTRAINT `ca_co_gruposepigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_partidas`
--
ALTER TABLE `co_partidas`
  ADD CONSTRAINT `ca_co_partidas_co_asientos2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_partidas_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_secuencias`
--
ALTER TABLE `co_secuencias`
  ADD CONSTRAINT `ca_co_secuencias_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_subcuentas`
--
ALTER TABLE `co_subcuentas`
  ADD CONSTRAINT `ca_co_subcuentas_cuentas2` FOREIGN KEY (`idcuenta`) REFERENCES `co_cuentas` (`idcuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `co_subcuentascli`
--
ALTER TABLE `co_subcuentascli`
  ADD CONSTRAINT `ca_co_subcuentascli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentascli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_co_subcuentascli_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuentasbcocli`
--
ALTER TABLE `cuentasbcocli`
  ADD CONSTRAINT `ca_cuentasbcocli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuentasbcopro`
--
ALTER TABLE `cuentasbcopro`
  ADD CONSTRAINT `ca_cuentasbcopro_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dirclientes`
--
ALTER TABLE `dirclientes`
  ADD CONSTRAINT `ca_dirclientes_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturascli`
--
ALTER TABLE `facturascli`
  ADD CONSTRAINT `ca_facturascli_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturascli_asientop` FOREIGN KEY (`idasientop`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturascli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturascli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturasprov`
--
ALTER TABLE `facturasprov`
  ADD CONSTRAINT `ca_facturasprov_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturasprov_asientop` FOREIGN KEY (`idasientop`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturasprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_facturasprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_access`
--
ALTER TABLE `fs_access`
  ADD CONSTRAINT `fs_access_page2` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fs_access_user2` FOREIGN KEY (`fs_user`) REFERENCES `fs_users` (`nick`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_extensions2`
--
ALTER TABLE `fs_extensions2`
  ADD CONSTRAINT `ca_fs_extensions2_fs_pages` FOREIGN KEY (`page_from`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fs_users`
--
ALTER TABLE `fs_users`
  ADD CONSTRAINT `ca_fs_users_pages` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasalbaranescli`
--
ALTER TABLE `lineasalbaranescli`
  ADD CONSTRAINT `ca_lineasalbaranescli_albaranescli2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranescli` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasalbaranesprov`
--
ALTER TABLE `lineasalbaranesprov`
  ADD CONSTRAINT `ca_lineasalbaranesprov_albaranesprov2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranesprov` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasfacturascli`
--
ALTER TABLE `lineasfacturascli`
  ADD CONSTRAINT `ca_linea_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasfacturasprov`
--
ALTER TABLE `lineasfacturasprov`
  ADD CONSTRAINT `ca_linea_facturasprov2` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasivafactcli`
--
ALTER TABLE `lineasivafactcli`
  ADD CONSTRAINT `ca_lineaiva_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineaspresupuestoscli`
--
ALTER TABLE `lineaspresupuestoscli`
  ADD CONSTRAINT `ca_lineaspresupuestoscli_presupuestoscli` FOREIGN KEY (`idpresupuesto`) REFERENCES `presupuestoscli` (`idpresupuesto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineasregstocks`
--
ALTER TABLE `lineasregstocks`
  ADD CONSTRAINT `ca_lineasregstocks_stocks` FOREIGN KEY (`idstock`) REFERENCES `stocks` (`idstock`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineastransstock`
--
ALTER TABLE `lineastransstock`
  ADD CONSTRAINT `ca_linea_transstock` FOREIGN KEY (`idtrans`) REFERENCES `transstock` (`idtrans`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_linea_transstock_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidoscli`
--
ALTER TABLE `pedidoscli`
  ADD CONSTRAINT `ca_pedidoscli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_pedidoscli_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidosprov`
--
ALTER TABLE `pedidosprov`
  ADD CONSTRAINT `ca_pedidosprov_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_pedidosprov_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `presupuestoscli`
--
ALTER TABLE `presupuestoscli`
  ADD CONSTRAINT `ca_presupuestoscli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_presupuestoscli_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `secuencias`
--
ALTER TABLE `secuencias`
  ADD CONSTRAINT `ca_secuencias_secuenciasejercicios` FOREIGN KEY (`id`) REFERENCES `secuenciasejercicios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `secuenciasejercicios`
--
ALTER TABLE `secuenciasejercicios`
  ADD CONSTRAINT `ca_secuenciasejercicios_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `ca_stocks_almacenes3` FOREIGN KEY (`codalmacen`) REFERENCES `almacenes` (`codalmacen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ca_stocks_articulos2` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
