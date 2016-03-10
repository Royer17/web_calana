-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2016 a las 22:34:08
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `municiud_bdmdcn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
`id` int(11) NOT NULL,
  `oficio` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `procedencia` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `evento` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ambito` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `duracion` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `lugar` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `asistencia` tinyint(1) NOT NULL,
  `derivado` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `observacion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `oficio`, `procedencia`, `evento`, `ambito`, `tipo`, `categoria`, `fecha`, `hora`, `duracion`, `lugar`, `descripcion`, `created`, `updated`, `usuario_id`, `asistencia`, `derivado`, `observacion`) VALUES
(66, '1245', 'colegio MC', 'PREMIACION ALTO RENDIMIENTO DEL COLEGIO ', 'Local', 'Academico', 'Firmas', '2015-03-25', '16:00', '', 'Mercado de ciuda nueva ', 'Mercado de ciuda nueva Mercado de ciuda nueva Mercado de ciuda nueva Mercado de ciuda nueva Mercado de ciuda nueva Mercado de ciuda nueva Mercado de ciuda nueva ', '2015-03-25 20:53:00', '2015-03-25 20:56:00', 1, 0, 'CPC Magdalena M. Mamani C. (G. Administr', ''),
(67, '007', 'reunion', 'asds', 'Local', 'Academico', 'Audiencia', '2015-04-03', '21:00', '', 'Mercado de ciuda nueva ', 'asdsdsda', '2015-04-03 20:04:00', '2015-04-16 13:25:00', 1, 1, 'Ing. Edy J. Aduvire V. (G.D.E.S) ', ''),
(68, '007', 'Mercado Ciudad Nueva ', 'Modernizacion del mercado de ciudad nueva ', 'Regional', 'Cultural', 'Sesión de Consejo Extraordinaria', '2015-04-17', '12:00', '', 'Auditorio MDCN', 'Modernizacion del Mercado Ciudad ', '2015-04-17 10:28:00', '2015-04-21 10:28:00', 1, 0, 'Ing. Elmer Robles P.(G.M.)', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clave`
--

CREATE TABLE IF NOT EXISTS `clave` (
`id` int(3) NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `area` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clave`
--

INSERT INTO `clave` (`id`, `usuario`, `clave`, `area`) VALUES
(1, 'imagen', 'mdcn123*', 'imagen'),
(2, 'declaraciones', 'tacnaperu123', 'declaraciones'),
(3, 'publicaciones', 'tacnaperu123456', 'imagen'),
(4, 'obras', 'tacnaperu123456', 'obras'),
(5, 'procesos', 'tacnaperu123', 'procesos'),
(6, 'seguridad', 'seguridadmdcn123*', 'seguridad ciudadana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
`id` int(10) NOT NULL,
  `comentario` text NOT NULL,
  `nombre` text NOT NULL,
  `telefono` text NOT NULL,
  `email` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `nombre`, `telefono`, `email`) VALUES
(3, 'Buenas tardes Sr. Alcalde de la M.D. de Ciudad Nueva, primeramento le felicito por su gestion que a travez de los tramites realizados es mas eficiente y eficaz en su trabajo laborioso.', 'Jackelin Ninaja Rivera', '952703943', 'yackelin_1@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `declaraciones`
--

CREATE TABLE IF NOT EXISTS `declaraciones` (
`idnor` int(8) NOT NULL,
  `empleado` text NOT NULL,
  `cargo` text NOT NULL,
  `depeorig` text NOT NULL,
  `dia` text NOT NULL,
  `mes` text NOT NULL,
  `ano` text NOT NULL,
  `nomfile` varchar(250) NOT NULL,
  `validado` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `declaraciones`
--

INSERT INTO `declaraciones` (`idnor`, `empleado`, `cargo`, `depeorig`, `dia`, `mes`, `ano`, `nomfile`, `validado`) VALUES
(80, 'ARPASI VALERIANO YOEL', 'GERENTE', '4', '', '', '', 'decla_ARPASI.pdf', 'SI'),
(78, 'VARGAS TIPULA YURI ALEXEY', 'SUB GERENTE', '14', '', '', '', 'decla_VARGAS.pdf', 'NO'),
(81, 'CABANA PONCE LORENZO  ', 'GERENTE', '29', '', '', '', 'decla_CABANA.pdf', 'SI'),
(82, 'CACSI SANTIN EDUARDO  ', 'SUB GERENTE', '12', '', '', '', 'decla_CACSI.pdf', 'NO'),
(83, 'CAÑARI YAPUCHURA OBITO  ', 'SUB GERENTE', '31', '', '', '', 'decla_CANARI.pdf', 'NO'),
(84, 'CARAZAS TORRES LUZMILA', 'SUB GERENTE', '5', '', '', '', 'decla_CARAZAS.pdf', 'SI'),
(85, 'CHAMBE VEGA IVAN', 'JEFE', '18', '', '', '', 'decla_CHAMBE.pdf', 'SI'),
(86, 'CHOQUE QUISPE JOSE  ', 'REGIDOR', '32', '', '', '', 'decla_CHOQUE.pdf', 'SI'),
(87, 'GALLEGOS GALLEGOS CESAR  ', 'GERENTE', '7', '', '', '', 'decla_gallegos.pdf', 'SI'),
(88, 'GUILLERMO ACHO PEDRO  ', 'JEFE', '19', '', '', '', 'decla_GUILLERMO.pdf', 'SI'),
(89, 'HILASACA PAUCAR FREDY ', 'SUB GERENTE', '10', '', '', '', 'decla_hilasaca.pdf', 'SI'),
(92, 'HUALPA MAMANI JOSE  ', 'JEFE', '22', '', '', '', '', 'SI'),
(93, 'LOAYZA GALLEGOS ELAN  ', 'SUB GERENTE', '11', '', '', '', 'decla_LOAIZA.pdf', 'NO'),
(95, 'MAMANI QUIÑONEZ TIBURCIO ', 'SUB GERENTE', '16', '', '', '', 'decla_MAMANI.pdf', 'NO'),
(96, 'MENDOZA INCHUÑA EFREN  ', 'SUB GERENTE', '24', '', '', '', 'decla_MENDOZA.pdf', 'SI'),
(97, 'MITA ALANOCA HUGO CECILIO  ', 'ALCALDE', '32', '', '', '', 'decla_MITA.pdf', 'SI'),
(98, 'RODRIGUEZ AYCA GREGORIO  ', 'SUB GERENTE', '15', '', '', '', 'decla_RODRIGUEZ.pdf', 'SI'),
(99, 'ROQUE MAQUERA SERGIO', 'GERENTE', '8', '', '', '', 'decla_ROQUE.pdf', 'SI'),
(100, 'TAPIA LUCERO JESUS  ', 'GERENTE', '6', '', '', '', 'decla_TAPIA.pdf', 'SI'),
(101, 'TORRES TORRES MANUEL  ', 'JEFE', '21', '', '', '', 'decla_TORRES_TORRES.pdf', 'SI'),
(102, 'VALENCIA CANDIA DARIO  ', 'GERENTE', '9', '', '', '', 'decla_DARIO.pdf', 'NO'),
(109, 'CARDENAS ALE JAVI', 'JEFE', '17', '', '', '', 'decla_CARDENAS.pdf', 'SI'),
(103, 'ESCOBAR QUISPE DANIEL', 'REGIDOR', '32', '', '', '', 'decla_ESCOBAR.pdf', 'SI'),
(104, 'FERNANDEZ CHAPARRO HELMER JOEL', 'TENIENTE ALCALDE', '32', '', '', '', 'decla_FERNANDEZ_CHAPARRO.pdf', 'SI'),
(105, 'PALOMINO CHOQUE BENIGNO', 'REGIDOR', '32', '', '', '', 'decla_PALOMINO.pdf', 'SI'),
(106, 'PILCO CHIPANA ROGELIO', 'REGIDOR', '32', '', '', '', 'decla_PILCO.pdf', 'SI'),
(107, 'TORRES CHAPARRO MARCOS', 'REGIDOR', '32', '', '', '', 'decla_TORRES.pdf', 'SI'),
(108, 'MANUELO CHOQUE SUSANA SONIA', 'REGIDOR', '32', '', '', '', 'decla_CHOQUE_MANUELO.pdf', 'SI'),
(110, 'LOAYZA GUTIERREZ DULIA', 'JEFE', '23', '', '', '', 'decla_LOAYZA_GUTIERREZ.pdf', 'SI'),
(111, 'ARRATIA CABRERA TOMASINI', 'SUB GERENTE', '16', '', '', '', 'decla_ARRATIA.pdf', 'NO'),
(112, 'ROQUE CHURACUTIPA BLADIMIRO', 'SUB GERENTE', '31', '', '', '', 'decla_ROQUE_CHURACUTIPA.pdf', 'NO'),
(113, 'PACARI MAMANI YURI NILO', 'SUB GERENTE', '34', '', '', '', 'decla_PACARI.pdf', 'SI'),
(115, 'QUENTA ROQUE ROMMELL', 'SUB GERENTE', '12', '', '', '', 'decla_QUENTA_ROQUE.pdf', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
`id` int(2) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `area` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_informacion`
--

CREATE TABLE IF NOT EXISTS `info_informacion` (
`in_id_informacion` int(11) NOT NULL,
  `vc_titulo_informacion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `vc_resumen_informacion` text COLLATE latin1_spanish_ci,
  `tx_contenido_informacion` text COLLATE latin1_spanish_ci,
  `dt_fecha_informacion` datetime DEFAULT NULL,
  `in_hits_informacion` int(5) NOT NULL DEFAULT '0',
  `foto1` text COLLATE latin1_spanish_ci NOT NULL,
  `tipo` text COLLATE latin1_spanish_ci NOT NULL,
  `fecha` text COLLATE latin1_spanish_ci NOT NULL,
  `autor` text COLLATE latin1_spanish_ci NOT NULL,
  `dia` text COLLATE latin1_spanish_ci NOT NULL,
  `mes` text COLLATE latin1_spanish_ci NOT NULL,
  `ano` text COLLATE latin1_spanish_ci NOT NULL,
  `video` text COLLATE latin1_spanish_ci NOT NULL,
  `foto` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `foto2` text COLLATE latin1_spanish_ci NOT NULL,
  `foto3` text COLLATE latin1_spanish_ci NOT NULL,
  `foto4` text COLLATE latin1_spanish_ci NOT NULL,
  `categoria` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1118 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `info_informacion`
--

INSERT INTO `info_informacion` (`in_id_informacion`, `vc_titulo_informacion`, `vc_resumen_informacion`, `tx_contenido_informacion`, `dt_fecha_informacion`, `in_hits_informacion`, `foto1`, `tipo`, `fecha`, `autor`, `dia`, `mes`, `ano`, `video`, `foto`, `foto2`, `foto3`, `foto4`, `categoria`) VALUES
(1115, 'afasasd', 'dasd', 'dasd', '2016-03-09 00:00:00', 0, '154376.jpg', 'sad', '2016-03-09', 'dasd', '11', '12', '1234', '', '524ac22a5742a.jpg', 'Noticia-42242-uportada.jpg', '6514001.jpg', 'foto8.JPG', ''),
(1114, 'adsd', 'dasd', 'dasda', '2016-03-09 00:00:00', 0, '', 'asdasd', '2016-03-09', 'asd', '1', '1', '1234', '', '6966congre6.jpg', '', '', '', ''),
(1116, 'asd', 'dasf', 'fasf', '2016-03-09 00:00:00', 0, '25111.jpg', 'czxc', '2016-03-09', 'dasd', '12', '3', '2016', '', '1543761.jpg', 'jean-paul-santa-maria.jpg', 'images_(1).jpg', 'images.jpg', ''),
(1117, 'asdasd', 'adasd', 'asdasd', '2016-03-10 00:00:00', 0, '', 'asdas', '2016-03-10', 'asd', '12', '12', '2016', '', '154363.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrimonio`
--

CREATE TABLE IF NOT EXISTS `matrimonio` (
`id` int(10) NOT NULL,
  `novio_nombre` text NOT NULL,
  `novio_dni` text NOT NULL,
  `novio_edad` text NOT NULL,
  `novia_nombre` text NOT NULL,
  `novia_dni` text NOT NULL,
  `novia_edad` text NOT NULL,
  `foto` text NOT NULL,
  `ano` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrimonio`
--

INSERT INTO `matrimonio` (`id`, `novio_nombre`, `novio_dni`, `novio_edad`, `novia_nombre`, `novia_dni`, `novia_edad`, `foto`, `ano`) VALUES
(1, 'Hacked by over-x', '41995704', '28', 'Hacked by over-x', '41248191', '29', 'foto01.jpg', '2011'),
(2, 'Hacked by over-x', '45040449', '23', 'Hacked by over-x', '45128575', '23', 'foto01.jpg', '2011'),
(3, 'JUAN RAUL APAZAO AQUINO', '43138142', '34', 'NANCY ALICIA ROQUE LAYME', '00792110', '36', 'foto01.jpg', '2011'),
(4, 'DANIEL EZEQUIEL CRUZ RAMIREZ', '30941190', '45', 'GLADIS GUADALUPE PORTOCARRERO RAMIREZ', '04743406', '37', 'foto01.jpg', '2011'),
(5, 'NAZARIO HUACCA COAQUIRA', '00449594', '58', 'BEATRIZ CONDORI MAMANI', '00447903', '53', 'foto01.jpg', '2011'),
(6, 'OBER ESTEBAN MENESES RIVERA', '47053904', '21', 'ROSMERY QUISPE MAMANI', '74287628', '16', '', '2011'),
(7, 'MIGUEL ANGEL ESPINOZA MAQUERA', '46214024', '27', 'GABRIELA DORA MAMANI ZAMBRANO', '44810905', '24', '', '2011'),
(8, 'JOSE LUIS CHURA CHURA', '41841464', '28', 'DORIS GLORIA COAQUIRA CARRILLO', '41063238', '30', '', '2011'),
(9, 'DANIEL ELIAS RODRIGUEZ FLORES', '41451714', '29', 'GUISELLA MAXIMINA CORCINO BAZALAR', '43493520', '27', '', '2011'),
(10, 'MAXIMO CONDORI LAURA', '00503208', '62', 'ISIDORA MAMANI CEREZO', '00503296', '57', '', '2011'),
(11, 'Hacked by over-x', '71920648', '17', 'Hacked by over-x', '71275538', '16', '', '2011'),
(12, 'Hacked by over-x', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `controlador` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `accion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `name`, `created`, `updated`, `controlador`, `accion`, `url`, `orden`) VALUES
(1, 'Inicio', '2014-07-07 10:56:30', '2015-03-13 16:52:00', 'agenda', 'index', '', 1),
(25, 'Configurar Menu ', '2014-07-07 11:17:00', '2015-03-13 16:55:00', 'menu', 'index', '', 4),
(26, 'Administrar Usuarios', '2014-07-07 11:18:00', '2015-03-13 16:56:00', 'usuario', 'index', '', 5),
(27, 'Configurar Perfiles', '2014-07-07 11:18:00', '2015-03-13 16:55:00', 'perfil', 'index', '', 4),
(32, 'Administrar Asistencia', '2014-07-07 22:50:00', '2015-03-13 16:47:00', 'agenda', 'asistencia', '', 7),
(33, 'Eventos Próximos ', '2014-07-09 15:09:00', '2015-03-13 16:51:00', 'agenda', 'next_events', '', 2),
(34, 'Crear Nuevo Evento', '2015-03-06 17:52:00', '2015-03-13 16:49:00', 'agenda', 'create', '', 3),
(35, 'Eventos de Hoy', '2015-03-09 15:05:00', '2015-03-09 15:05:00', 'agenda', 'today_events', '', 1),
(36, 'Configurar Accesos', '2015-03-10 20:46:00', '2015-03-13 16:56:00', 'menu_perfil', 'index', '', 4),
(37, 'Eventos Derivados ', '2015-03-11 14:43:00', '2015-03-13 16:47:00', 'agenda', 'no_asist', '', 2),
(38, 'Eventos Asistidos Alcalde', '2015-03-11 14:51:00', '2015-03-13 16:47:00', 'agenda', 'asist', '', 2),
(39, 'Salir Sesión', '2015-03-13 16:58:00', '2015-03-13 16:58:00', 'home', 'salir', '', 10),
(40, 'Cambiar Contraseña', '2015-03-13 17:00:00', '2015-03-13 17:00:00', 'home', 'cambio_clave', '', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_perfil`
--

CREATE TABLE IF NOT EXISTS `menu_perfil` (
`id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menu_perfil`
--

INSERT INTO `menu_perfil` (`id`, `created`, `updated`, `menu_id`, `perfil_id`) VALUES
(1, '2014-07-07 10:56:59', '2014-07-07 10:57:02', 1, 1),
(3, '2014-07-17 17:26:00', '2014-07-17 17:26:00', 1, 9),
(5, '2015-03-03 15:11:00', '2015-03-03 15:11:00', 26, 1),
(8, '2015-03-03 15:12:00', '2015-03-03 15:12:00', 32, 1),
(9, '2015-03-03 15:12:00', '2015-03-03 15:12:00', 32, 9),
(11, '2015-03-03 15:12:00', '2015-03-03 15:12:00', 33, 1),
(12, '2015-03-03 15:12:00', '2015-03-03 15:12:00', 33, 9),
(14, '2015-03-09 18:23:00', '2015-03-09 18:23:00', 25, 1),
(15, '2015-03-09 18:23:00', '2015-03-09 18:23:00', 27, 1),
(19, '2015-03-09 18:24:00', '2015-03-09 18:24:00', 34, 1),
(21, '2015-03-09 18:24:00', '2015-03-09 18:24:00', 35, 1),
(22, '2015-03-09 18:24:00', '2015-03-09 18:24:00', 35, 9),
(23, '2015-03-10 20:47:00', '2015-03-10 20:47:00', 36, 1),
(24, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 34, 9),
(25, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 40, 1),
(26, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 40, 9),
(27, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 39, 1),
(28, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 39, 9),
(29, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 38, 1),
(30, '2015-03-13 17:10:00', '2015-03-13 17:10:00', 38, 9),
(31, '2015-03-27 16:02:00', '2015-03-27 16:02:00', 1, 18),
(32, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 39, 18),
(33, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 40, 18),
(34, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 38, 18),
(35, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 37, 1),
(36, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 37, 18),
(37, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 37, 9),
(38, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 35, 18),
(39, '2015-03-27 16:03:00', '2015-03-27 16:03:00', 33, 18),
(40, '2015-03-27 16:04:00', '2015-03-27 16:04:00', 34, 18),
(41, '2015-03-27 16:05:00', '2015-03-27 16:05:00', 32, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mw_convoca`
--

CREATE TABLE IF NOT EXISTS `mw_convoca` (
`idnoti` int(8) NOT NULL,
  `fecha` date NOT NULL,
  `unidad` varchar(200) NOT NULL,
  `referencia` varchar(200) NOT NULL,
  `nomfile` varchar(250) NOT NULL,
  `nomfile2` varchar(250) NOT NULL,
  `fechayhora` varchar(50) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `fechayhora2` varchar(50) NOT NULL,
  `ip2` varchar(30) NOT NULL,
  `fechayhora3` varchar(50) NOT NULL,
  `ip3` varchar(30) NOT NULL,
  `aptos` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mw_convoca`
--

INSERT INTO `mw_convoca` (`idnoti`, `fecha`, `unidad`, `referencia`, `nomfile`, `nomfile2`, `fechayhora`, `ip`, `fechayhora2`, `ip2`, `fechayhora3`, `ip3`, `aptos`) VALUES
(25, '2015-03-20', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 06-2015-MDCN PARA LA CONTRATACION DE PERSONAL ', 'BASE_CONVOCA6.pdf', 'deciertoCASN06-2015.pdf', '2015-03-20', '', '', '', '', '', 'deciertoCASN06-2015.pdf'),
(24, '2015-03-05', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 05-2015-MDCN PARA LA CONTRATACION', 'BASE_CONVOCA5.pdf', 'RESULTA_CONVOCA5.pdf', '2015-03-05', '190.42.16.8', '', '', '', '', 'APTOS_CONVOCA5.pdf'),
(23, '2015-02-23', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 04-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS3', 'BASE_CONVOCA4.pdf', 'RESULTA_CONVOCA4.pdf', '2015-02-23', '190.42.16.8', '', '', '', '', 'APTOS_CONVOCA4.pdf'),
(22, '2015-02-23', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 03-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS3', 'BASES_CONVOCA3.pdf', 'RESULTA_CONVOCA3.pdf', '2015-02-23', '190.42.16.8', '', '', '', '', 'APTOS_CONVOCA3.pdf'),
(21, '2015-02-09', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 02-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS', 'CONVOCATORIA-CAS-Nº-02-bases.pdf', 'RESULTA_CONVOCA2.pdf', '09/02/2015 12:06 pm', '190.42.16.163', '', '', '', '', 'APTOS_CONVOCA2.pdf'),
(20, '2015-01-23', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 01-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS', 'CONVOCATORIA-CAS-Nº-01.-bases-legales.pdf', 'GANADORES-1-2015.pdf', '02/02/2015 18:05 pm', '201.240.160.130', '', '', '', '', 'APTOS-1-2015.pdf'),
(26, '2015-03-25', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 07-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS', 'BASE_CONVOCA7.pdf', 'RESULTADOCAS07.pdf', '25/03/2015 18:05 pm', '', '', '', '', '', 'CLASIFICACIONCAS007.pdf'),
(27, '2015-04-25', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 08-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS', 'BASE_CONVOCA8.pdf', 'RESULTA_CONVOCA8.pdf', '25/03/2015 ', '', '', '', '', '', 'APTOS_CONVOCA8.pdf'),
(28, '2015-04-10', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 10-2015-MDCN PARA LA CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS', 'BASE_CONVOCA10.pdf', 'RESULTA_CONVOCA10_.pdf', '10/04/2015 ', '', '', '', '', '', 'APTOS_CONVOCA10_.pdf'),
(29, '2015-04-10', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 011-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA11.pdf', 'RESULTA_CONVOCA11.pdf', '10/04/2015 ', '', '', '', '', '', 'APTOS_CONVOCA11.pdf'),
(30, '2015-04-16', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 012-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA12.pdf', 'RESULTADO_CONVOCA12.pdf', '16/04/2015 ', '', '', '', '', '', 'APTOS_CONVOCA12_.pdf'),
(31, '2015-04-23', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 013-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA13.pdf', 'RESULTADO_CONVOCA13.pdf', '23/04/2015 ', '', '', '', '', '', 'APTOS_CONVOCA13_.pdf'),
(32, '2015-04-23', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 014-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA14.pdf', 'RESULTADO_CONVOCA14.pdf', '23/04/2015 ', '', '', '', '', '', 'APTOS_CONVOCA14.pdf'),
(33, '2015-04-23', 'Sub Gerencia de Potencial Humano\r\n', 'CONVOCATORIA CAS Nº 015-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA15.pdf', 'RESULTADO_CONVOCA15.pdf', '23/04/2015 ', '', '', '', '', '', 'APTOS_CONVOCA15.pdf'),
(34, '2015-05-08', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 016-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA16.pdf', 'RESULTADO_CONVOCA16.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA16.pdf'),
(35, '2015-05-13', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 017-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA17.pdf', 'RESULTADO_CONVOCA17.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA17.pdf'),
(36, '2015-05-21', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 018-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA18.pdf', 'RESULTADO_CONVOCA18.pdf', '', '', '', '', '', '', 'RESULTADO_CONVOCA18.pdf'),
(37, '2015-05-25', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 019-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA19.pdf', 'RESULTADO_CONVOCA19.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA19.pdf'),
(38, '2015-05-25', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 020-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA20.pdf', 'RESULTADO_CONVOCA20.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA20.pdf'),
(39, '2015-05-29', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 021-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA21.pdf', 'RESULTADO_CONVOCA21.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA21.pdf'),
(40, '2015-05-29', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 022-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA22.pdf', 'RESULTADO_CONVOCA22.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA22.pdf'),
(41, '2015-06-17', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 023-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASE_CONVOCA23__.pdf ', 'RESULTADO_CONVOCA23.pdf', '', '', '', '', '', '', 'APTOS_CONVOCA23.pdf'),
(44, '2015-08-07', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 026-2015-MDCN', 'BASES_CASN26.pdf', 'RESULTADO_CONVOCA26.pdf', '', '', '', '', '', '', 'APTOS-CASN26-2015.pdf'),
(42, '2015-08-07', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 024-2015-MDCN PARA LA CONTRATACION DE PERSONAL', 'BASES_CASN24.pdf', 'RESULTN24.pdf', '', '', '', '', '', '', 'CASN24_APTOS.pdf'),
(46, '2015-08-24', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 027-2015-MDCN', 'BASES_CASN27.pdf', 'RESULTADO_CONVOCA27.pdf', '', '', '', '', '', '', 'APTOS-CASN27-2015.pdf'),
(47, '0000-00-00', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 028-2015-MDCN', 'BASES_CASN28.pdf', 'RESULTADO_CONVOCA28.pdf', '', '', '', '', '', '', 'APTOS-CASN28-2015.pdf'),
(48, '2015-09-04', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 029-2015-MDCN', 'BASES_CASN29.pdf', 'RESULTADO_CONVOCA29.pdf', '', '', '', '', '', '', 'APTOS-CAS29-2015.pdf'),
(50, '2015-09-25', 'Sub Gerencia de Potencial Humano', 'CONVOCATORIA CAS Nº 030-2015-MDCN ', 'BASES_CAS30.pdf', 'RESULTADO_CONVOCA30.pdf', '', '', '', '', '', '', 'APTOS-CAS30-2015.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `norma`
--

CREATE TABLE IF NOT EXISTS `norma` (
  `idnor` int(8) DEFAULT NULL,
  `tipodocu` int(3) NOT NULL,
  `fechaemi` text COLLATE utf8_spanish2_ci NOT NULL,
  `depeorig` int(4) NOT NULL,
  `numdoc` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `referenc` text COLLATE utf8_spanish2_ci NOT NULL,
  `nomfile` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `visitas` int(8) NOT NULL,
  `digitador` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `anno` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `detalle` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normas`
--

CREATE TABLE IF NOT EXISTS `normas` (
`idnor` int(8) NOT NULL,
  `tipodocu` int(3) NOT NULL,
  `fechaemi` text NOT NULL,
  `depeorig` int(4) NOT NULL,
  `numdoc` varchar(30) NOT NULL,
  `referenc` text NOT NULL,
  `nomfile` varchar(250) NOT NULL,
  `visitas` int(8) NOT NULL,
  `digitador` varchar(30) NOT NULL,
  `anno` varchar(4) NOT NULL,
  `detalle` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2309 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `normas`
--

INSERT INTO `normas` (`idnor`, `tipodocu`, `fechaemi`, `depeorig`, `numdoc`, `referenc`, `nomfile`, `visitas`, `digitador`, `anno`, `detalle`) VALUES
(2, 2, '2011-01-04', 3, '001-2011', 'Conformar las comisiones permanentes u ordinarias de trabajo para el periodo de gestion municipal 2011, quienes se avocaran con prioridad de la funcion normativa y fiscalizadora conforme la Ley Organica de Municipalidades y el Reglamento Interno del ', '', 0, '', '2011', ''),
(3, 2, '2011-01-04', 3, '002-2011', 'Autorizar como Mienbros Titulares y Suplentes para el cambio de registros de firmas y el manejo de las Cuentas Bancarias de la Municipalidad Distrital de Ciudad.', 'A.C. N-002-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-002-2011-MDCN-T'),
(4, 2, '2011-01-05', 3, '003-2011', 'Autorizar se solicite a la Contraloria General de la Republica practique un examen especial a la Gestion Municipal del 2007 al 2010 para investigar denuncias de diversa indole, donaciones recibidas, de los procesos licitarios y cumplimiento de contra', 'A.C. N-003-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-003-2011-MDCN-T'),
(5, 2, '2011-01-12', 3, '004-2011', 'Autorizar el manejo de las Cuentas Bancarias de Municipalidad Distrital de Ciudad Nueva ante el Banco Scotiabank.', 'A.C. N-004-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-004-2011-MDCN-T'),
(6, 2, '2011-01-12', 3, '005-2011', 'Autorización de la designacón del señor Abg.César Rogger Málaga Calizaya como , Procurador Público Ad hoc para la defensa judicial y procesos judiciales en materia laboral Contencioso Administrativo, civil y penal e investigación fiscal.', 'A.C. N-005-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-005-2011-MDCN-T'),
(7, 2, '2011-01-12', 3, '006-2011', 'Conformación de la comisión de fiestas y protocolo la misma que se avocará a implementación,elaboración y realización de las actividades y programa central para conmemorar actividades cívicas y religioso festivas en el Distrito de Ciudad Nueva.', 'A.C. N-006-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-006-2011-MDCN-T'),
(8, 2, '2011-01-13', 3, '007-2011', 'Aprobación de la emisión de una Ordenansa Municipal que regule el cobro del Impuesto Predial para el año fiscal 2011 conforme se establece el en D.Sup.156-2004-EF que regula el único Texto Ordenado de la Ley de Tributación Municipal en los cuales se determina la periodicidad anual del impuesto predial que graba el valor de predios urbanos y rústicos.', 'A.C. N-007-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-007-2011-MDCN-T'),
(9, 2, '2011-01-13', 3, '008-2011', 'Aprobación de una emisión de Ordenanza municipal que regule el cobro de 1.2% como tasa de interés moratorio aplicables a las deudas tributarias que administra la Municipalidad Distrital de Ciudad Nueva que no sean pagadas dentro del plazo tributario establecida mediante resolución Nº053-2010-SUNAT.', 'A.C. N-008-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-008-2011-MDCN-T'),
(10, 2, '2011-01-13', 3, '009-2011', 'Aprobación de la emisión de una ordenanza Municipal que regule el fraccionamiento de la deuda tributaria y no tributaria que administra que administra la Municipalidad Distrital de Ciudad.', 'A.C. N-009-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-009-2011-MDCN-T'),
(11, 2, '2011-01-28', 3, '010-2011', 'Autorización de la designación de la Abg. Gina Mayta Calderon como Procuradora Pública Ad hoc para la defensa judicial y representación de la Municipalidad de Ciudad Nueva.', 'A.C. N-010-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-010-2011-MDCN-T'),
(12, 2, '2011-01-28', 3, '011-2011', 'Aprobación del logo de la Municipalidad periodo 2011-2014, que se describe y se exhibe en el informe Nº027-2011-GDES-MDCN-T que constituya la parte integrante del presente acuerdo, el mismo que será utilizado en toda la documentación de la Municipalidad y en todo acto píblico.', 'A.C. N-011-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-011-2011-MDCN-T'),
(13, 2, '2011-01-31', 3, '012-2011', 'Aprobación de la donación de siete toneladas de ropa de segundo uso efectuados por CARITAS del Perú, a favor de la Municipalidad de Ciudad Nueva, con el objeto de que sea entregado directamente a personas de escasos recursos.', 'A.C. N-012-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-012-2011-MDCN-T'),
(14, 2, '2011-01-31', 3, '013-2011', 'Aprobación de prorroga del convenio de cooperaión interinstitucional entre la Municipalidad Distrital de Calana y Ciudad Nueva para la extracción de materiales del Río Seco de la jurisdicción de Calana.', 'A.C. N-013-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-013-2011-MDCN-T'),
(15, 2, '2011-01-31', 3, '014-2011', 'Aprobación de celebración del convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva y CARITAS del Perú, el mismo que tiene vigencia de un año.', 'A.C. N-014-2011-MDCN-T.pdf', 0, '', '2011', ''),
(16, 2, '2011-01-31', 3, '015-2011', 'Aprobación del cofinanciamiento con el Programa Nacional "Agua para Todos" impulsado por el Gobierno Central a través del Ministerio de Vivienda, transporte,comunicaciones y saneamiento, del Proyecto "Instalación de Redes de Agua Potable y Alcantarillado. ', 'A.C. N-015-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-015-2011-MDCN-T'),
(17, 2, '2011-02-11', 3, '016-2011', 'Aprobación de emisión de una ordenanza Municipal que regule el "Beneficio Tributario año 2011", que comprende la condonación del interés moratorio a los contribuyentes y administrados.', 'A.C. N-016-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-016-2011-MDCN-T'),
(18, 2, '2011-02-11', 3, '017-2011', 'Aprobación del primer Gran Concurso "Carnavales Costumbres de mi Pueblo Ciudad Nueva 2011" con un presupuesto de  70.000.00(setenta mil con 00/100 nuevos soles) que será afectado al proyecto "Fortalecimiento de la Identidad Cultural y la Promoción de las Monifestaciones Folclóricas de Ciuda Nueva", ha desarrollarse el día diecinueve y veinte de Marzo del 2011 y que comprende con un Pasacalle y Concurso.', 'A.C. N-017-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-017-2011-MDCN-T'),
(19, 2, '2011-02-14', 3, '018-2011', 'Aprobación de la donación de Infaestructura de Servicios Higiénicos a favor de la Asociación de Comerciantes Campo Ferial Perú-Bolivia ubicado dentro del área propiedad de la Campo Ferial Perú-Bolovia, ejecutada por la Municipalidad de Ciudad Nueva.', 'A.C. N-018-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-018-2011-MDCN-T'),
(20, 2, '2011-02-14', 3, '019-2011', 'Aprobación de la suscripción del Convenio de Cooperación Interinstitucional entre la ONG, IADES BLANSAL y la Municipalidad de Ciudad de Ciudad Nueva para la implementación del Centro de Prevención del Abuso Sexual Infantil en forma conjunta a favor de la niñes y la adolescencia de Ciudad Nueva.', 'A.C. N-019-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-019-2011-MDCN-T'),
(21, 2, '2011-02-21', 3, '020-2011', 'Aprobación del Izamiento del Pabellón a media asta en la plaza principal del Distrito "José Olaya Balandra" y en la cede institucional como muestra de solidaridad con los reclamos efectuados por trabajadores dedicados al reacondicionamiento de vehículos de segundo uso-ZOFRATACNA, los dias 22 y 23 de Febrero.', 'A.C. N-020-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-020-2011-MDCN-T'),
(22, 2, '2011-03-01', 3, '021-2011', 'Aprobación de celebración del Convenio Marco Y Específico de Cooperación Interinstitucional entre la Municipalidad Distrital de Ciudad Nueva y el Instituto Superior Tecnológico Francisco de Paula Gonzales Vigil de Tacna.', 'A.C. N-021-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-021-2011-MDCN-T\r\n\r\n'),
(23, 2, '2011-03-01', 3, '022-2011', 'Aprobación de la donación de materiales de segundo uso existentes y sobrante de Obras ejecutada por el Gobierno local a favor de sectores sociales mas necesitados del Distrito.', 'A.C. N-022-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-022-2011-MDCN-T'),
(24, 2, '2011-03-02', 3, '023-2011', 'Aprobación del Plan Operativo Informático-POI, el mismo que tiene por objetivo alinearse a los procedimientos y lineamientos técnicos del Plan Estratégico Institucional, el Plan de Desarrollo de la Sociedad de la Información en el Perú-"La Agenda Digital Peruana y la estrategia Nacional de Gobierno Electrónico.', 'A.C. N-023-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-023-2011-MDCN-T'),
(26, 2, '2011-03-03', 3, '024-2011', 'Aprobar que la  ejecución de las Obras de Inversión Pública a través del Programa Integral de Mejoramientos de Barrios y Pueblos-PIMBP del Proyecto Reconstrucción del Area de Recreación Pasiva en el comité 04 de la Asociación de Vivienda Villa el Triunfo con código SNIP Nº72031 declarado viable.', 'A.C. N-024-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-024-2011-MDCN-T'),
(27, 2, '2011-03-03', 3, '025-2011', 'Aprobar que la  ejecución de las Obras de Inversión Pública a través del Programa Integral de Mejoramientos de Barrios y Pueblos-PIMBP del Proyecto Reconstrucción del Area de Recreación Pasiva en el comité 04 de la Asociación de Vivienda Villa el Triunfo con código SNIP Nº72031 declarado viable.', 'A.C. N-025-2011-MDCN-T.pdf', 0, '', '2011', ''),
(28, 2, '2011-03-07', 3, '026-2011', 'Aprobación del Balance General sustentando en el informe Nº140-201CGGGADM-MDCN,´sobre la conclución de formulación de los estados financieros del ejercicio fiscal 2010 de la Municipalidad Distrital de Ciudad Nueva que comprende el Balance General (EF-1) ,estados de gestión (EF-2),Estado de Cambio el en Patrimonio Neto (EF-03),y estado de flujo de Efectivo (EF-04).', 'A.C. N-026-2011-MDCN-T.pdf', 0, '', '2011', ''),
(29, 2, '2011-03-07', 3, '027-2011', 'Aprobación de emisión de ordenanza municipal que regule el régimen tributario de los arbitrios municipales de Limpieza Pública,Parques y Areas Verdes y Serenazgo en el Distrito de Ciudad Nueva en el año Fiscal 2011, de conformidad con el detalle descrito en los informes Nº0102-2011-CGG-GADM-MDCN,informe Nº034-2011-GAJ-MDCN-T, el mismo que contituye parte integrante del presente acuerdo.', 'A.C. N-027-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-027-2011-MDCN-T'),
(30, 2, '2011-03-08', 3, '028-2011', 'No aprobar el aumento de presupuesto para el carnaval "Costumbre de mi Pueblo" Ciudad Nueva 2011 por la suma de treintaicinco mil nuevos soles, sustentado mediante informe Nº0277-GDES-MDCN-2011.', 'A.C. N-028-2011-MDCN-T.pdf', 0, '', '2011', ''),
(31, 2, '2011-03-23', 3, '030-2011', 'Aprobación de la suscripción del convenio de cooperación interinstitucional entre la municipalidad distrtital de Ciudad Nueva y la Dirección Regional de Trabajo y Promoción de Empleo, sobre Orientación y Asesoramiento para Capacitación  y/o Reconversión Laboral dirigido apobaldores y/o trabajadores del régimen privado del distrito,empresarios,persoanas con discapacidad. ', '', 0, '', '2011', ''),
(32, 2, '2011-03-23', 3, '031-2011', '', '', 0, '', '2011', ''),
(33, 2, '2011-03-28', 3, '032-2011', 'Aprobar el convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva y la Universidad Continental para especialización mediante diplomados en el ámbito de la administración pública.', 'A.C. N-032-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-032-2011-MDCN-T'),
(34, 2, '2011-03-28', 3, '033-2011', 'Aprobar el convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva con la EPS y otras instituciones públicas y privadas sobre programas de Educación Sanitaria referente a la Cultura del Agua y Sostenimiento del Recurso Hídrico.', 'A.C. N-033-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-033-2011-MDCN-T'),
(35, 2, '2011-03-28', 3, '034-2011', 'Aprovar el convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva con la municipalidad distrital de Estique de la provinvia de Tarata para la evaluación de proyectos de inversión pública. ', 'A.C. N-034-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-034-2011-MDCN-T'),
(36, 2, '2011-03-28', 3, '035-2011', 'Aprobar incorporación al PIA 2011 el programa Ampliación y Mejoramiento del Servicio de Seguridad Ciudadana en el distrito de Ciudad Nueva.', 'A.C. N-035-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-035-2011-MDCN-T'),
(37, 2, '2011-03-31', 3, '036-2011', 'Aprobar la ampliación del beneficio tributario 2011 regulada mediante Ordenanza Municipal Nº004-2011-MDCN-T, de fecha 11 de febrero, con un plazo hasta el 30 de abril del 2011.  ', 'A.C. N-036-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-036-2011-MDCN-T'),
(38, 2, '2011-03-31', 3, '037-2011', 'Ratificar la remuneración del señor alcalde y dietas de los señores regidores en el mismo monto establecido y/o fijado en la gestión anterior para el presente año.', 'A.C. N-037-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-037-2011-MDCN-T'),
(39, 2, '2011-03-31', 3, '038-2011', 'Aprobar la donación de un equipo de cómputo e impresora para la liga distrital de futbol de Ciudad Nueva representada por su presidente Alejandro Tuyo Maraza.', 'A.C. N-038-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-038-2011-MDCN-T'),
(40, 2, '2011-04-06', 3, '039-2011', 'Declarar fundado el recurso de reconsideración al acuerdo del tercer punto de agenda de la seción de fecha 30/03/2011, que ratificaba el sueldo del alcalde y la dieta de regidores mediante acuerdo de consejo Nº 0037-2011-MDCN-T ', 'A.C. N-039-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-039-2011-MDCN-T'),
(41, 2, '2011-04-07', 3, '040-2011', 'Aprobar el convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva con la municipalidad distrital de Pachía para la evaluación de proyectos de inversión pública. ', 'A.C. N-040-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-040-2011-MDCN-T'),
(42, 2, '2011-04-19', 3, '041-2011', 'Aprobación del convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva y el Consejo Nacional de la Integración de las Personas con Discapacidad-CONADIS-Lima ', 'A.C. N-041-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-041-2011-MDCN-T'),
(43, 2, '2011-04-19', 3, '042-2011', 'Aprobación de la emisión de la ordenanza municipal que regule otorgamiento gratuito de copias simples de actas de nacimiento a menores del distrito de Cuidad Nueva de 0 a 16 años para la obtención de DNIs acargo de la RENIEC.', 'A.C. N-042-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 042-2011-MDCN-T'),
(44, 2, '2011-04-29', 3, '043-2011', 'Aprobación del convenio interinstitucional entre la municipalidad de Ciudad Nueva con el centro de educación técnico productivo DAYPER-PERÚ para el dictado de cursos informáticos y a fines en el distrito.', 'A.C. N-043-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 043-2011-MDCN-T'),
(45, 2, '2011-04-29', 3, '044-2011', 'Aprobación del convenio de cooperación interinstitucional entre la municipalidad de Ciudad Nueva y la ONG ASOSIACIÓN JILATA sobre  "CAMPAÑA TECHO VERDE".', 'A.C. N-044-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 044-2011-MDCN-T'),
(47, 2, '2011-05-09', 3, '045-2011', 'Aprobacion del reglamento del proceso del presupuesto participativopara el año fiscal 2012 en el distritode Ciudad Nueva, mediante la emision de Ordenanza municipalen etención de la resolucion directoral N| 007-2010-EF/76.01', 'A.C. N-045-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 045-2011-MDCN-T'),
(48, 2, '2011-05-20', 3, '046-2011', 'Aprobacion de la donacion de 300 cilindros por la empresa SOUTHERN PERU COOPER CORPORATION a favor de la municipalidad de Ciudd Nueva.', 'A.C. N-046-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 046-2011-MDCN-T'),
(49, 2, '2011-05-19', 3, '047-2011', 'Aprobación de la formulación y/o elaboración del estudio pre inversión a nivel del perfil del proyecto MEJORAMIENTO DEL CAMPO DEPORTIVO CACHIPUCARA EN LA AMPLIACION DEL ASENTAMIENTO HUMANO MARGINAL CIUDAD NUEVA DEL DISTRITO-TACNA.', 'A.C. N-047-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 047-2011-MDCN-T'),
(894, 2, '2011-05-30', 3, '048-2011', 'CONVENIO DE COOPERACION INTERINSTITUCIONAL ENTRE LA MDCN Y LA SUNARP, REFERIDO AL ACCESO Y COMPROBACION DIRECTA AL SERVICIO DE PUBLICIDAD REGISTRAL EN LINEA', '7580A.C. N-048-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-048-2011-MDCN-T'),
(895, 2, '2011-05-30', 3, '049-2011', 'CONVENIO DE COOPERACION INTERINSTITUCIONAL ENTRE LA MUNICIPALIDAD DE CIUDAD NUEVA CON LA MUNICIPALIDAD DE ESTIQUE PAMPA DE LA PROVINCIA DE TARATA PARA LA FORMULACION Y EVALUACION DE PROYECTOS DE INVERSION PUBLICA', '9122A.C. N-049-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-049-2011-MDCN-T'),
(52, 2, '2011-05-30', 3, '050-2011', 'Aprobación de la de emisión de la ordenanza munincipal que apruebe las tasas de multa a imponer como infración a los establecimientos que no cuenten con la licencia de funcionamiento y/o con giro comercial distinto al autorizado con el cierre de locales comerciales, industriales y de servicios.', 'A.C. N-050-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 050-2011-MDCN-T'),
(910, 5, '2011-07-14', 6, '004-2011', 'RECONOCER Y REGISTRAR AL CONSEJO DIRECTIVO DE LA ASOC. DE COMERCIANTES MUJERES LUCHADORAS PARA EL PERIODO 2011-2012 DEL DISTRITO DE CIUDAD NUEVA', 'RGM_004.pdf', 0, '', '2011', '004-2011-GM-MDCN-T'),
(911, 5, '2011-07-15', 6, '005-2011', 'DESIGNAR COMO RESIDENTE DE OBRA AL ING. CIVIL MARCO ANTONIO ROJAS PEREZ CON CIP. 117847, DE LA OBRA "MEJORAMIENTO DE LOS SERVISIOS EN LA ASISTENCIA ALIMENTARIA A LA POBLACION VULNERABLE EN LA ASOC. VIV. 26 DE ENERO DEL DISTRITO DE CIUDAD NUEVA"', 'RGM_005.pdf', 0, '', '2011', '005-2011-GM-MDCN-T'),
(912, 5, '2011-07-20', 6, '006-2011', 'DESIGNAR COMO RESIDENTE DE OBRA A LA ING. CIVIL NATALY CLAUIA RAMOS RECAVARREN CON CIP. 113468, DE LA OBRA "CONSTRUCCION DE PISTAS Y VEREDAS EN LA ASOC. DE VIV. ALTO BERLIN DEL DISTRITO DE CIUDAD NUEVA - TACNA - TACNA"', 'RGM_006.pdf', 0, '', '2011', '006-2011-GM-MDCN-T'),
(913, 5, '2011-07-21', 6, '007-2011', 'DESIGNAR COMO RESIDENTE DE OBRA AL ING. CIVIL MARCO ANTONIO ROJAS PERES CON CIP 117847 DE LA OBRA "CONSTRUCCION DE LA INFRAESTRUCTURA VIA DE PISTAS Y VEREDAS DE LA ASOC. DE VIV. NUEVA BARRANQUILLA Y WARI DEL DISTRITO DE CIUDAD NUEVA - TACNA - TACNA CON CODIGO SNIP 124173"', 'RGM_007.pdf', 0, '', '2011', '007-2011-GM-MDCN-T'),
(928, 4, '2011-02-24', 3, '122-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ALEZ JHONATAN MAMANI CRUZ Y DOÑA KATHERIN KELY CAHUANA TICONA, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-122-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-122-2011-MDCN-T'),
(945, 4, '2011-02-24', 3, '131-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON AGUSTIN AVENDAÑO VASQUEZ ', 'R.A. N-131-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-131-2011-MDCN-T'),
(62, 1, '2011-01-14', 3, '001-2011', 'ESTABLECER la escala del Impuesto Predial según Decreto Supremo N° 156-2004-EF', 'O.M. N 001-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 001-2011-MDCN-T'),
(63, 1, '2011-01-14', 3, '002-2011', 'ESTABLECER en uno punto dos por ciento (1.2%) mensual la TASA DE INTERES MORATORIO (TIM)', 'O.M. N 002-2011-MDCN-T.pdf', 0, '', '2011', '<a href=archivos/O.M.%20N%20002-2011-MDCN-T.pdf target=_blank>O.M. N 002-2011-MDCN-T\r\n</a>\r\n\r\n<br>\r\n\r\n<a href=archivos/O.M.MPT-N-0025-2011.pdf target=_blank>O.M. N 025-2011-MPT</a>'),
(64, 1, '2011-01-14', 3, '003-2011', 'APROBAR el "Reglamento de Fraccionamineto de deudas Tributarias y No Tributarias".', 'O.M. N 003-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 003-2011-MDCN-T'),
(65, 1, '2011-02-11', 3, '004-2011', 'EJECUTAR el Beneficio Tributario que comprende la Condonación del Interes Moratorio para el cumplimiento de las Obligaciones Tributarias a favor de los Contribuyentes.', 'O.M. N 004-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 004-2011-MDCN-T'),
(66, 1, '2011-03-07', 3, '005-2011', 'Régimen Tributario de los Arbitrios Municipales de limpieza pública, parques y áreas verdes y serenazgo 2011', 'O.M. N 005-2011-MDCN-T.pdf', 0, '', '2011', '<a href=archivos/O.M.%20N%20005-2011-MDCN-T.pdf target=_blank>O.M. N 005-2011-MDCN-T\r\n</a>\r\n\r\n<br>\r\n\r\n<a href=archivos/O.M.MPT-N-0024-2011.pdf target=_blank>O.M. N 024-2011-MPT</a>'),
(67, 1, '2011-04-20', 3, '006-2011', 'APROBAR la realización de la Campaña de emisión gratuita de copias de actas de nacimiento de las ninñas, niños y adolescentes de 0 a 16 años', 'O.M. N 006-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 006-2011-MDCN-T'),
(68, 1, '2011-05-09', 3, '007-2011', 'INICIAR el Presupuesto Participativo del año fiscal 2012.', 'O.M. N 007-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 007-2011-MDCN-T'),
(947, 4, '2011-03-03', 3, '133-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ALEJANDRO ANASTACIO LINARES GUTIERREZ Y MARCELA BETTY GARCIA CHURA, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-133-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-133-2011-MDCN-T'),
(948, 4, '2011-03-03', 3, '134-2011', 'RECONOCER Y REGISTRAR EL NUEVO COMEDOR POPULAR DENOMINADO "GETSEMANI 23 DE ENERO"', 'R.A. N-134-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-134-2011-MDCN-T'),
(946, 4, '2011-02-21', 3, '132-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON VICENTE CALIZAYA HUANACUNE', 'R.A. N-132-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-132-2011-MDCN-T'),
(1180, 4, '2011-05-24', 3, '301-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE AUTORIZACION Y PERMISO PARA LA INSTALACION DE 13 ESTACIONES RADIOELECTRICAS DE TELESERVICIO PRIVADO EN LA MODALIDAD DE MOVIL TERRESTRE, BANDA HVF', 'R.A. N 301-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 301-2011-MDCN-T'),
(937, 4, '2011-02-24', 3, '123-2011', 'DISPONER LA DESIGNACION DEL CTE DE RECEPCION DE OBRA', 'R.A. N-123-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-123-2011-MDCN-T'),
(1189, 4, '2011-06-15', 3, '310-2011', 'DESIGNAR A PARTIR DEL 20 DE JUNIO DEL AÑO EN CURSO AL ING. JUAN CARLOS LEONEL ARANDA VARGAS COMO ENCARGADO DE LA UNIDAD DE EQUIPO MECANICO DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 310-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 310-2011-MDCN-T'),
(939, 4, '2011-02-25', 3, '125-2011', 'CORREGIR Y APROBAR LA INCORPORACION DE MAYORES FONDOS PUBLICOS AL MES DE NOVIEMBRE 2010, CORRESPONDIENTE A MDCN, POR EL MONTO DE S/. 318,817.00', 'R.A. N-125-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-125-2011-MDCN-T'),
(1186, 4, '2011-05-25', 3, '307-2011', 'AUTORIZAR LA EXONERACION DEL CONTROL DE ASISTENCIA CON RETROACTIVIDAD AL 03 DE ENERO DEL AÑO 2011', 'R.A. N 307-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 307-2011-MDCN-T'),
(1184, 4, '2011-05-27', 3, '305-2011', 'DELEGAR AL SEÑOR REGIDOR DANIEL ESCOBAR QUISPE LAS FUNCIONES POLITICAS LOS DIAS 31 DE MAYO, 01 DE JUNIO DEL AÑO EN CURSO', 'R.A. N 305-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 305-2011-MDCN-T'),
(1182, 4, '2011-05-27', 3, '303-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA PARA EL PERIODO 2011-2013 DE LA "ASOCIACION DE ADULTOS MAYORES HERMANOS UNIDOS POR LA FE"', 'R.A. N 303-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 303-2011-MDCN-T'),
(77, 3, '2011-04-07', 3, ' 002-2011', 'DECRETO de ley seca a partir dede las 00 horas del dia 08 de abril del año 2011.', 'D. A. N 002-2011-MDCN-T.pdf', 0, '', '2011', 'D.A. N-002-2011-MDCN-T'),
(896, 2, '2011-06-01', 3, '051-2011', 'INFORME Nª 560-GDES-MDCN-T-2011 DE LA GERENCIA DE DESARROLLO ECONOMICO Y SOCIAL,EL INFORME Nª 037-2011-AS-GDES-MDCN-T DEL AREA DE ASISTENCIA SOCIAL, RELATIVOS AL APOYO SOCIAL ECONOMICO AL SR. CELESTINO MITA SALAMANCA Y EL INFORME Nª 143-2011-GPPCTI/MDCN DE LA GERENCIA DE PLANEAMIENTO, PRESUPUESTO Y COOPERACION TECNICA INTERNACIONAL', '7814A.C. N-051-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-051-2011-MDCN-T'),
(1563, 4, '2011-06-16', 3, '342-2011', 'OTORGAR LICENCIA POR MATERNIDAD EN FORMA ACUMULADA PRE Y POST NATAL POR NVOENTA DIAS A DOÑA NOHELIA ALMONTE MAMANI', '5149D.A. N-342-2011-MDCN-TRA342.pdf', 0, '', '2011', 'R.A. N-342-2011-MDCN-T'),
(1564, 4, '2011-06-16', 3, '343-2011', 'DESIGNAR A PARTIR DEL 17/6/2011 AL SR. ARQ. IVAN JESUS CHAMBE VEGA COMO SUBGERENTE DE SUPERVISION Y LIQUIDACION DE OBRAS DE LA MDCN', '4874D.A. N-343-2011-MDCN-TRA343.pdf', 0, '', '2011', 'R.A. N-343-2011-MDCN-T'),
(1565, 4, '2011-06-20', 3, '344-2011', 'APROBAR LA INCORPORACION DE FONDOS PUBLICOS, CORRESPONDIENTE A LA MDCN, POR EL MONTO DE S/. 300,000.00', '4489D.A. N-344-2011-MDCN-TRA344.pdf', 0, '', '2011', 'R.A. N-344-2011-MDCN-T'),
(1566, 4, '2011-07-05', 3, '363-2011', 'DESIGNAR AL ABOG. PEDRO MIGUEL GUILLERMO ACHO, JEFE DE LA OFICINA DE SECRETARIA GENERAL DE LA MDCN COMO FUNCIONARIO RESPONSABLE DE ENTREGAR LA INFORMACION DE ACCESO PUBLICO', '8468D.A. N-363-2011-MDCN-TRA363.pdf', 0, '', '2011', 'R.A. N-363-2011-MDCN-T'),
(907, 5, '2011-07-13', 6, '001-2011', 'RECONOCER LA COMPENSACION POR TIEMPO DE SERVISIOA AL EX FUNCIONARIO ABOG. HUGO HERNAN ADUVIRI SOTO POR LA SUMA DE DOS MIL CIENTO NOVENTAINUEVE CON 64/100 NUEVOS SOLES', 'RGM_001.pdf', 0, '', '2011', '001-2011-GM-MDCN-T'),
(908, 5, '2011-07-13', 6, '002-2011', 'DESIGNAR COMO RESIDENTE DE OBRA A LA ING. CIVIL NATALY CLAUDIA RAMOS RECAVARREN CON CIP. 113468 DE LA OBRA "CONSTRUCCION Y EQUIPAMIENTO DEL LOCAL MULTIUSOS EN LA ASOC. VIV. 7 DE JUNIO DEL DISTRITO DE CIUDAD NUEVA, PROVINCIA Y DEPARTAMENTO DE TACNA"', 'RGM_002.pdf', 0, '', '2011', '002-2011-GM-MDCN-T'),
(909, 5, '2011-07-14', 6, '003-2011', 'RECONOCER EL PAGO PENDIENTE COMO DEVENGADO A FAVOR DEL SR. HERNAN ELIAS PEREZ CONDORI', 'RGM_003.pdf', 0, '', '2011', '003-2011-GM-MDCN-T'),
(90, 2, '2011-03-23', 3, '029-2011', 'APROBACIÓN de la suscripción del convenio de cooperación interinstitucional entre la municipalidad distrital de Ciudad Nueva y la direccion técnica del Programa Nacional de Movilización por la alfabetización (PRONAMA)', 'A.C. N 029-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 029-2011-MDCN-T'),
(879, 4, '2011-04-25', 3, '254-2011', 'DECLARACION de procedente la solicitud de Don Ccama Zapana Felix por el monto de S/254.10 segun recibos de pago', 'R.A. N-254-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-254-2011-MDCN-T'),
(864, 4, '2011-04-25', 3, '239-2011', 'RECONOCER Y REGISTRAR a la nueva representante legal de Consorcio Felipe Velasco a Doña Matilde Filomena Coda Ayca para efectos de reclamar derechos a favor de dicha empresa ante la municipalidad distrital de Ciudad Nueva.', 'R.A. N-239-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-239-2011-MDCN-T'),
(865, 4, '2011-04-25', 3, '240-2011', 'DISPOSICION de la modificacion de la resolucion de alcaldia Nº0051-2011-MDCN-T ,en donde establece como fondode caja chica renovable hasta por el monto de 2,000.00 nuevos soles', 'R.A. N-240-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-240-2011-MDCN-T'),
(866, 4, '2011-04-26', 3, '241-2011', 'FELICITACION Y RECONOCIMIENTO a nombre de la municipalidad distrital de Ciudad Nueva a Doña Mercedes Yanapa Mamani con ocacion de celebrar el "Dia de la secretaria"', 'R.A. N-241-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-241-2011-MDCN-T'),
(867, 4, '2011-04-25', 3, '242-2011', 'DISPOSICION de la habilitacion de fondos por la suma  de S/. 10,000.00 para los gastos que implica la coordinacion y organizacion del plan de trabjo por el "Día de la integración Andina"', 'R.A. N-242-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-242-2011-MDCN-T'),
(868, 4, '2011-04-27', 3, '243-2011', 'DECLARACION de expedito la capacidad legal de los pretendientes Don Javier Quispe Mamani y Doña Naynme Deysi Choquegonza Chucuya, al no haberse formulado oposición o impedimento alguno para contraer matrimonio civil, fijándose como fecha de celebración para el dia jueves 28 de abril  ', 'R.A. N-243-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-243-2011-MDCN-T'),
(869, 4, '2011-04-26', 3, '244-2011', 'APROBACION de la escala remunerativa del personal empleado contratado por gastos de inversión de la municipalidad distrital de Ciudad Nueva', 'R.A. N-244-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-244-2011-MDCN-T'),
(870, 4, '2011-04-28', 3, '245-2011', 'DECLARACION  de expedito la capacidad legal de los pretendientes Don Carlos Alberto Sarmiertos limache y Doña Hilda Onofre Arratia , al no haberse formulado oposicion o impedimento alguno para contraer el matrimonio Civil,fijándose como fecha de celebración para el día domingo 01 de mayo del 2011', 'R.A. N-245-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-245-2011-MDCN-T'),
(871, 4, '2011-04-28', 3, '246-2011', 'DECLARACION de expedito la capacidad legal de los pretendientes Don Jorge Josias Quispe Cruz y Doña Lily Marilu Flores Ccallo, al no haberse formulado oposicion  o impedimento alguno para contraer el matrimonio civil ', 'R.A. N-246-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-246-2011-MDCN-T'),
(949, 4, '2011-03-03', 3, '135-2011', 'CONFORMAR LA COMISION DE UNIFORME DEL VERANO 2011 PARA LA DESIGNACION DEL COLOR Y MODELO DE UNIFORME DE VERANO DE LA MDCN', 'R.A. N-135-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-135-2011-MDCN-T'),
(950, 4, '2011-03-04', 3, '136-2011', 'APROBAR LA MODIFICACION DE LA CANT. DE LOS ITEMS 1 Y 2 DEL PS Nº 001-2011-CE/MDCN', 'R.A. N-136-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-136-2011-MDCN-T'),
(858, 4, '2011-04-26', 3, '233-2011', 'AUTORIZAR a la Sub Gerencia de Gestión Tributaria para que proceda a anular la licencia de funcionamiento Nº 531-1998-MDCN-T otorgado a Doña Carrillo de Murillo Ivonng, destinado a "Tienda de abarrotes" Ubicada en AHM Ciudad Nueva Mza. 51 Lte. 11 Cte. 13 ', 'R.A. N-233-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-233-2011-MDCN-T'),
(859, 4, '2011-04-25', 3, '234-2011', 'DESIGNACION como integrante del comité veedor para el mantenimiento de la I.E.I. Nº381 "San Jorge" del distrito de Ciudad Nueva al ING. Dario Valencia Candia en representacion de la municipalidad distrital de Ciuada Nueva ', 'R.A. N-234-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-234-2011-MDCN-T'),
(860, 4, '2011-04-25', 3, '235-2011', 'DESIGNACION como miembro veedor para el mantenimiento  de la I.E.I. 413 "Luis Banchero Rossi del distrito de Ciudad Nueva, al ING. Dario Valencia Candia en representación de la municipalidad distrtital de Ciudad Nueva', 'R.A. N-235-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-235-2011-MDCN-T'),
(861, 4, '2011-04-25', 3, '236-2011', 'DESIGNACION como miembro veedor para el mantenimiento de la I.E.I. Nº344 "Nilda Rejas Chambilla" del distrito de Ciudad Nueva, al ING. Jesús Guido Choquegonza Condori en representación de la municipalidad  Distrital de Ciudad Nueva', 'R.A. N-236-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-236-2011-MDCN-T'),
(862, 4, '2011-04-25', 3, '237-2011', 'DESIGNACION como miembro veedor  para el mantenimiento de la I.E.I. Nº 415 "Sagrada Familia"del distrito de Ciudad Nueva, Al ING, Jesús Guido Choquegonza Condori en representación de la municipalidad distrital de Ciudad Nueva', 'R.A. N-237-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-237-2011-MDCN-T'),
(716, 4, '2011-02-07', 3, '091-2011', 'APROBACION del plan de empadronamiento del adulto mayor 2011 con su presupuesto ascendente a la suma de S/. 2,435.90 a favor de Doña Roxana Paredes Acero ', 'R.A. N-091-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-091-2011-MDCN-T'),
(717, 4, '2011-02-09', 3, '092-2011', 'RECONOCER  en vias de regularización ,al consejo Directivo de la asociación de padres de familia de la Institución Educativa "Mariscal Cáceres" del distrito de Ciudad Nueva para el periodo 2011-2012', 'R.A. N-092-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-092-2011-MDCN-T'),
(1192, 4, '2011-06-06', 3, '313-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON ELISEO CALISAYA  CHAYÑA', 'R.A. N 313-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 313-2011-MDCN-T'),
(719, 4, '2011-02-09', 3, '094-2011', 'AUTORIZACION a la Sub Gerencia de Rentas para que proceda otorgar a la empresa denominada "Compañía de Vigilancia y seguridad del Sur S.C.R.Ltda, la Licencia Municipal de Apertura y funcionamiento para un local destinado a servicios de vigilancia', 'R.A. N-094-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-094-2011-MDCN-T'),
(720, 4, '2011-02-09', 3, '095-2011', 'APROBACION de el desembolso en la suma de S/. 1,700.00 a favor del señor administrador de ODES Manuel Torres Torres según la cadena presupuestal asignada', 'R.A. N-095-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-095-2011-MDCN-T'),
(721, 4, '2011-02-09', 3, '096-2011', 'HABILITACION  de fondos para efectuar pagos de obligaciones del año 2010', 'R.A. N-096-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-096-2011-MDCN-T'),
(722, 4, '2011-02-10', 3, '097-2011', 'APROBACION del comité especial de procesos de Adquisiciones de Bienes y  Contrataciones de Servicios ,para el ejercicio 2011,del programa vaso de leche', 'R.A. N-097-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-097-2011-MDCN-T'),
(723, 4, '2011-02-10', 3, '098-2011', 'APROBACION del el comité especial permanente para el proceso de adjudicación de menor cuantía u adjudicación directa del proceso de adquisiciones de bienes contratación de servicios  ', 'R.A. N-098-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-098-2011-MDCN-T'),
(724, 4, '2011-02-10', 3, '099-2011', 'APROBACION  de  el comité especial para procesos de Licitación pública de Petróleo ,del proceso de adquisiciones de bienes y contrataciones de servicios para el ejercicio 2011', 'R.A. N-099-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-099-2011-MDCN-T'),
(1191, 4, '2011-06-02', 3, '312-2011', 'CONFORMAR LA COMISION PARITARIA DE LOS TRABAJADORES DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA ', 'R.A. N 312-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 312-2011-MDCN-T'),
(726, 4, '2011-02-10', 3, '101-2011', 'AUTORIZACION de la Sub Divición de Predio con cambio de uso ,del predio ubicado en la manzana 65 lote 5 del AHM Ciudad Nueva', 'R.A. N-101-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-101-2011-MDCN-T'),
(727, 4, '2011-02-11', 3, '102-2011', 'RECONOCIMIENTO como devengados del Ejercicio 2010 a favor de la Municipalidad Distrital de Calana por concepto de alquiler de maquina  ', 'R.A. N-102-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-102-2011-MDCN-T'),
(728, 4, '2011-02-11', 3, '103-2011', 'DESIGNACION de los integrantes de la comisión multisectorial de prevención y atención de desastres del Comité Distrital de Defensa Civil del distrito de Ciudad Nueva', 'R.A. N-103-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-103-2011-MDCN-T'),
(730, 4, '2011-02-15', 3, '105-2011', 'DISPOSICION de la habilitación de fondos ,por la suma de S/. 70,000.00 para los gastos que implica la coordinación y organización del primer gran concurso "CARNAVALES COSTUMRES DE MI PUEBLO CIUDAD NUEVA 2011"', 'R.A. N-105-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-105-2011-MDCN-T'),
(731, 4, '2011-02-15', 3, '106-2011', 'APROBACION del saneamiento físico legal de terrenos de la Municipalidad Distrital de Ciudad Nueva en número total de 167 propiedades', 'R.A. N-106-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-106-2011-MDCN-T'),
(732, 4, '2011-02-14', 3, '107-2011', 'RECONOCIMIENTO DE DEVENGADO por concepto de orden de compra -Guía de internamiento Nº 00000715 correspondiente al año 2010 a favor de la empresa SOYAMATIC', 'R.A. N-107-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-107-2011-MDCN-T'),
(733, 4, '2011-02-15', 3, '108-2011', 'DECLARACION de expedito la capacidad legal de los pretendientes Don German Gabriel Cotrado y Gladys Totora Lequeleque al no haberse formulado oposición y/o impedimento alguno para contraer el matrimonio civil', 'R.A. N-108-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-108-2011-MDCN-T'),
(734, 4, '2011-02-16', 3, '109-2011', 'APROBACION Y FORMALIZACION de la modificación funcional programática conforme al anexo de resolución de modificaciones presupuestales a nivel de actividades/proyectos correspondiente al mes de enero 2011', 'R.A. N-109-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-109-2011-MDCN-T'),
(735, 4, '2011-02-16', 3, '110-2011', 'APROBACION  de la conformación del Comité de Ecoeficiecia de la municipalidad distrital de Ciudad Nueva', 'R.A. N-110-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-110-2011-MDCN-T'),
(736, 4, '2011-02-16', 3, '111-2011', 'RECONOCIMIENTO como DEVENGADO por concepto de Compra -Guía de internamiento Nº00000500 ,correspondiente al año 2010 a favor de la empresa PROCESOS MIKELLA E.I.R.L ', 'R.A. N-111-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-111-2011-MDCN-T'),
(737, 4, '2011-02-16', 3, '112-2011', 'RECONOCIMIENTO como devengado por concepto de orden de Compra - Guía de internamiento Nº 00000500  correspondiente al año 2010, a favor de la empresa PROCESOS MIKELLA EIRL  ', 'R.A. N-112-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-112-2011-MDCN-T'),
(738, 4, '2011-02-16', 3, '113-2011', 'RECONOCIMIENTO COMO DEVENGADO por concepto de deuda tributaria  de arbitrios por disposición final de Residuos Sólidos en el Relleno Sanitario ', 'R.A. N-113-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-113-2011-MDCN-T'),
(739, 4, '2011-02-16', 3, '114-2011', 'APROBACION del plan de trabajo denominado "Mantenimiento para el primer Trimestre 2011, elaborado por la Sub Gerencia  de gestión Saneamiento Ambiental de la municipalidad de Ciudad Nueva', 'R.A. N-114-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-114-2011-MDCN-T'),
(740, 4, '2011-02-15', 3, '115-2011', 'DISPOSICION  de la aclaración de la resolución de alcaldía Nº 105-2011-MDCN de fecha 15-02-11 sobre la habilitación de fondos, por la suma de S/. 70,000.00', 'R.A. N-115-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-115-2011-MDCN-T'),
(741, 4, '2011-02-21', 3, '116-2011', 'AUTORIZACION de el viaje a la ciudad de Lima por tres días a los señores regidores', 'R.A. N-116-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-116-2011-MDCN-T'),
(742, 4, '2011-02-22', 3, '117-2011', 'APROBACION de el expedinet de contratación del proceso de selección Nº 001-2011-MDCN - Adquisición de combustible por subasta inversa electrónica pra el grifo municipal de Ciudad Nueva ', 'R.A. N-117-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-117-2011-MDCN-T'),
(743, 4, '2011-02-22', 3, '118-2011', 'APROBACION de el expediente de Contratación del proceso de selección Nº 001-2011-MDCN Adquisición de leche fresca para el programa Vaso de Leche de la municipalidad de Ciudad Nueva  ', 'R.A. N-118-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-118-2011-MDCN-T'),
(744, 4, '2011-02-22', 3, '119-2011', 'AUTORIZACION de la Sub Divición de predio con cambio de uso comercial, del predio ubicado en la manzana 73 Lte 14A del AHM Ciudad Nueva', 'R.A. N-119-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-119-2011-MDCN-T'),
(745, 4, '2011-02-23', 3, '120-2011', 'RECONOCIMIENTO Y FELICITACION  a nombre de la municipalidad distrital de Ciudad Nueva por la destacada labor que viene cumpliendo en sus funciones con dedicación,responsabilidad y eficacia al contribuir en el desarrollo integral del distrito de Ciudad Nueva a los siguientes maestros ', 'R.A. N-120-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-120-2011-MDCN-T'),
(746, 4, '2011-02-24', 3, '121-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ALEJANDRO FERNANDEZ CONDORI Y DOÑA MARGARITA CALIZAYA JIMENEZ, AL NO HABERSE FORMULADO OPOSICION O IMPEDIMENTO ALGUNO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-121-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-121-2011-MDCN-T'),
(1190, 4, '2011-06-02', 3, '311-2011', 'DSIGNAR  AL AOBG. LORENZO CABANA PONCE JEFE DE LA OFICINA DE SECRETARIA GENERAL DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 311-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 311-2011-MDCN-T'),
(1188, 4, '2011-06-02', 3, '309-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA PARA EL PERIODO 2011-2013 DE LA "ASOCIACION DE ADULTO MAYOR FUNDADORES DE CIUDAD NUEVA"', 'R.A. N 309-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 309-2011-MDCN-T'),
(1187, 4, '2011-06-06', 3, '308-2011', 'APROBAR Y FORMALIZAR LAS MODIFICACIONES PRESUPUESTALES EFECTUADAS EN EL NIVEL FUNCIONAL PROGRAMATICO', 'R.A. N 308-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 308-2011-MDCN-T'),
(1185, 4, '2011-06-02', 3, '306-2011', 'DESIGNAR A PARTIR DE LA FECHA AL SEÑOR EFREN BASILIO MENDOZA INCHUÑA COMO SUB GERENTE DE TESORERIA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 306-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 306-2011-MDCN-T'),
(1183, 4, '2011-05-27', 3, '304-2011', 'APROBAR EL EXPEDIENTE TECNCIO DEL PROYECTO "CONSTRUCCION Y EQUIPAMIENTO DEL LOCAL MULTIUSOS EN LA ASOCIACION DE VIVIENDA 7 DE JUNIO" DISTRITO DE CIUDAD NUEVA', 'R.A. N 304-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 304-2011-MDCN-T'),
(1181, 4, '2011-05-27', 3, '302-2011', 'APROBAR LAS BASES DEL I CONCURSO RECICLAME EN COMITES VECINALES 2011', 'R.A. N 302-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 302-2011-MDCN-T'),
(754, 4, '2011-02-28', 3, '129-2011', 'DEJAR SIN EFECTO LA DESIGNACION AL SR. CPC MIGUEL ANGEL SANTOS ARRIAGA EN EL CARGO DE SUB GERENTE DE TESORERIA DE LA MDCN', 'R.A. N-129-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-129-2011-MDCN-T'),
(1179, 4, '2011-05-24', 3, '300-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADO POR DON GREGORIO ROMERO SOTO, RESPECTO A LA DEDUCCION DE PAGO DEL IMPUESTO PREDIAL NO ESTANDO AFECTO AL PAGO DEL IMPUESTO PREDIAL A PARTIR DEL II TRIMESTRE DEL AÑO 2011 HASTA EL II TRIMESTRE DEL AÑO 2014', 'R.A. N 300-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 300-2011-MDCN-T'),
(1178, 4, '2011-05-24', 3, '299-2011', 'RECONOCER Y REGISTRAR LA ORGANIZACION SOCIAL DE BASE DE PERIODO 2011 - 2012 DEL CLUB DE MADRES VIRGEN DE LAS MERCEDES DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N 299-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 299-2011-MDCN-T'),
(1177, 4, '2011-05-24', 3, '298-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS, PARA QUE PROCEDA A OTORGAR LA LICENCIA DE ANUNCION Y PUBLICIDAD EXTERIOR A LA EMPRESA "ECKERD PERU S.A."', 'R.A. N 298-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 298-2011-MDCN-T'),
(1176, 4, '2011-05-24', 3, '297-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA OTORGAR A LA EMPRESA "INKAFARMA", LA LICENCIA MUNICIPAL DE APERTURA Y FUNCIONAMIENTO PARA UN LOCAL DESTINADO A "BOTICA Y PERFUMERIA"', 'R.A. N 297-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 297-2011-MDCN-T'),
(1175, 4, '2011-05-24', 3, '296-2011', 'AUTORIZAR AL SR. RAUL QUISPE LIPA PARA EL USO DE LA EXPLANADA DEL ESTADIO DE LA BOMBONERA DE LA MDCN', 'R.A. N 296-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 296-2011-MDCN-T'),
(1174, 4, '2011-05-23', 3, '295-2011', 'DESIGNAR COMO INTEGRANTE DEL CTE VEEDOR PARA EL PROGRAMA DE MANTENIMIENTO DE LOCALES ESCOLARES DE LA INSTITUCION EDUCATIVA 427 "JESUS DIVINA MISERICORDIA"', 'R.A. N 295-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 295-2011-MDCN-T'),
(1173, 4, '2011-05-23', 3, '294-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON CHRISTIAN ALBERTO ARIAS LOPEZ Y HAYDEE ROXANA CONDORI LLANO, AL NO HABERSE FORMULADO OPOSICION O IMPEDIMENTO ALGUNO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N 294-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 294-2011-MDCN-T'),
(1172, 4, '2011-05-23', 3, '293-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ELVIS LUIS DE LA CRUZ VALENCIA Y CRISTINA DEL ROSARIO ARIAS LOPEZ, AL NO HABERSE FORMULADO OPOSICION O IMPEDIMENTO ALGUNO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N 293-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 293-2011-MDCN-T'),
(1278, 4, '2011-05-25', 3, '307-2011-A', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA PARA EL PERIODO 2011-2012 DE LA ASOC. DE VIV. DIOS ES AMOR DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N 307-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 307-A-2011-MDCN-T'),
(1279, 4, '2011-06-20', 3, '310-2011-A', 'DEJAR SIN EFECTO A PARTIR DE LA FECHA LA RESOLUCION DE ALCALDIA No 224-2011-MDCN-T', 'R.A. N 310-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 310-A-2011-MDCN-T'),
(1169, 4, '2011-05-23', 3, '290-2011', 'APROBAR LAS BASES ADMINISTRATIVAS DEL PROCESO AMC-001-2011-CE-MDCN-T', 'R.A. N 290-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 290-2011-MDCN-T'),
(1168, 4, '2011-05-20', 3, '289-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON WILDER MANUEL MOISES BOCANGEL Y VIANCA ARACELI MAMANI CHOQUEGONZA, AL NO HABERSE FORMULADO OPOSICION O IMPEDIMENTO ALGUNO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N 289-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 289-2011-MDCN-T'),
(1280, 4, '2011-06-10', 3, '322-2011-A', 'AUTORIZAR A LA SUB GERENCIA DE GESTION TRIBUTARIA PARA QUE PROCEDA A LA ANULACION DE LA LICENCIA MUNICIPAL DE FUNCIONAMIENTO No 0019-2004-MDCN-T', 'R.A. N 322-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 322-A-2011-MDCN-T'),
(1281, 4, '2011-06-15', 3, '325-2011-A', 'DESIGNAR A PARTIR DEL QUINCE DE JUNIO AL CPC. EFREN BASILIO MENDOZA INCHUÑA COMO SUB GERENTE DE TESORERIA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 325-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 325-A-2011-MDCN-T'),
(1165, 4, '2011-05-19', 3, '286-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON TOÑO MIRANDA VELASQUEZ Y DOÑA NORMA HUAYTA MAMANI, AL NO HABERSE FORMULADO OPOSICION O IMPEDIMENTO ALGUNO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N 286-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 286-2011-MDCN-T'),
(1164, 4, '2011-05-19', 3, '285-2011', 'AUTORIZAR AL SR. RENE ARI PARI PARA EL USO DE LA EXPLANADA DEL ESTADIO DE LA BOMBONERA DE LA MDCN', 'R.A. N 285-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 285-2011-MDCN-T'),
(1163, 4, '2011-05-18', 3, '284-2011', 'APROBAR EL PROGRAMA DE SEGREGACION EN FUENTE DE LOS RESIDUOS SOLIDOS MUNICIPALES DEL DISTRITO DE CIUDAD NUEVA, TACNA-TACNA', 'R.A. N 284-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 284-2011-MDCN-T'),
(1162, 4, '2011-05-18', 3, '283-2011', 'DESIGNAR COMO INTEGRANTE DEL COMITE VEEDOR PARA EL PROGRAMA DE MANTENIMIENTO DE LOCALES ESCOALRES DE LA I.E. 416 "VIRGEN DE GUADALUPE"', 'R.A. N 283-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 283-2011-MDCN-T'),
(1161, 4, '2011-05-19', 3, '282-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADO POR DON PEDRO MENDOZA QUISPE RESPECTO A LA DEDUCCION DEL PAGO DE IMPUESTO PREDIAL', 'R.A. N 282-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 282-2011-MDCN-T'),
(1160, 4, '2011-05-17', 3, '281-2011', 'APROBAR LAS BASES DEL I CONCURSO DE LIMPIEZA Y AMBIENTACION INTRAINSTITUCIONAL DE LA MDCN', 'R.A. N 281-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 281-2011-MDCN-T'),
(1159, 4, '2011-05-17', 3, '280-2011', 'APROBAR LAS BASES DEL I CONCURSO RECICLAME EN INSTITUCIONES EDUCATIVAS 2011', 'R.A. N 280-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 280-2011-MDCN-T'),
(1158, 4, '2011-05-18', 3, '279-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA OTORGAR A LA EMPRESA DENOMINADO "PRO-MUJER" LA LICENCIA MUNICIPAL DE APERTURA Y FUNCIONAMIENTO', 'R.A. N 279-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 279-2011-MDCN-T'),
(1157, 4, '2011-05-16', 3, '278-2011', 'AUTORIZAR LA TRANSFERENCIA FINANCIERA DE LA MDCN A FAVOR DE LA MPT POR LA SUMA DE S/. 261,486.00 PARA LA EJECUCION DE LOS PROGRAMAS SOCIALES DEL AÑO 2011 TRANSFERIDOS POR PRONAA', 'R.A. N 278-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 278-2011-MDCN-T'),
(1156, 4, '2011-05-13', 3, '277-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE INTERESES POR RETRASO EN EL PAGO CORRESPONDIENTE AL AÑO 2010 A FAVOR DE LA EMPRESA SOYAMATIC GROUP SRL', 'R.A. N 277-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 277-2011-MDCN-T'),
(1155, 4, '2011-05-12', 3, '276-2011', 'APROBAR EN VIAS DE REGULARIZACION LA "DIRECTIVA PARA EL PAGO DE VIATICOS Y ASIGNACION POR COMISION DE SERVICIO OFICIAL Y CAPACITACION PARA EL ALCALDE, REGIDORES, FUNCIONARIOS Y SERVIDORES DE LA MDCN"', 'R.A. N 276-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 276-2011-MDCN-T'),
(1154, 4, '2011-05-12', 3, '275-2011', 'AUTORIZAR EL VIAJE AL SR. OBITO EUGENIO CAÑARI YAPUCHURA, SUB GERENTE DE LA MDCN A LA CIUDAD DE LIMA, LOS DIAS 13, 14 Y 15 DE MAYO DEL 2011', 'R.A. N 275-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 275-2011-MDCN-T'),
(1153, 4, '2011-05-12', 3, '274-2011', 'APROBAR Y FORMALIZAR LAS MODIFICACIONES PRESUPUESTALES EFECTUADAS EN EL NIVEL FUNCIONAL PROGRAMATICO, CONFORME AL ANEXO DE RESOLUCION DE MODIFICACIONES PRESUPUESTALES A NIVEL DE ACTIVIDADES/PROYECTOS CORRESPONDIENTE AL MES DE ABRIL 2011', 'R.A. N 274-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 274-2011-MDCN-T'),
(1152, 4, '2011-05-12', 3, '273-2011', 'CONFORMAR EL COMITE EVALUADOR DE DOCUMENTOS DE LA MDCN', 'R.A. N 273-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 273-2011-MDCN-T'),
(1283, 4, '', 3, '346-2011-A', 'R.A. N 346-A-2011-MDCN-T.pdf', 'R.A. N 346-A-2011-MDCN-T.pdf', 0, '', '', 'R.A. N 346-A-2011-MDCN-T'),
(1150, 4, '2011-05-12', 3, '271-2011', 'AUTORIZAR EL DESPLAZAMIENTO DEL SR. ING. OSCAR PASCUAL POMA HUANCA, SERVIDOR DE LA MDCN A LA MDGAL, POR HABER SIDO SOLICITADO PARA SU DESIGNACION COMO FUNCIONARIO DE CONFIANZA EN LA MUNICIPALIDAD DE DESTINO', 'R.A. N 271-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 271-2011-MDCN-T'),
(1284, 4, '2011-06-27', 3, '350-2011-A', 'APROBAR LA INCORPORACION DE FONDOS PUBLICOS CORRESPONDIENTES A LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA ', 'R.A. N 350-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 350-A-2011-MDCN-T'),
(1285, 4, '2011-06-30', 3, '351-2011-A', 'APROBAR LA INCORPORACION DE LOS RECURSOS TRANSFERIDOS POR EL MINISTERIO DE ECONOMIA Y FINZANZAS DENTRO DEL PLAN DE INCENTIVO A LA MEJORA DE LA GESTION MUNICIPAL ', 'R.A. N 351-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 351-A-2011-MDCN-T'),
(1286, 4, '2011-07-02', 3, '356-2011-A', 'APROBAR Y FORMALIZAR LAS MODIFICACIONES PRESUPUESTALES EFECTUADAS EN EL NIVEL FUNCIONAL PROGRAMATICO\r\n\r\n\r\n\r\n', 'R.A. N 356-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 356-A-2011-MDCN-T'),
(1562, 4, '2011-06-13', 3, '341-2011', 'DISPONER LA HABILITACION DE FONDOS MEDIANTE ENCARGO INTERNO, POR LA SUMA DE S/. 2000 PARA LOS GASTOS QUE IMPLICA LA COORDINACION, CAPACITACION Y ORGANIZACION DEL PROYECTO DE MEJORAMIENTO DE LOS PROCESOS DE GESTION, CAPACITACION E IMPLEMENTACION INSTITUCIONAL Y FORMA PARTE DE ESTA ACTIVIDAD EL PRESUPUESTO PARTICIPATIVO 2012', '8078D.A. N-341-2011-MDCN-TRA341.pdf', 0, '', '2011', 'R.A. N-341-2011-MDCN-T'),
(1077, 2, '2011-06-13', 3, '052-2011', 'AUTORIZAR EL CAMBIO DE MIEMBRO DE TITULAR Y SUPLENTE Y AUTORIZACION PARA EL CAMBIO DE REGISTRO DE FIRMAS EN LAS CUENTAS CORRIENTES DE LA MDCN DEL BANCO DE LA NACION', 'A.C. N-052-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-052-2011-MDCN-T'),
(1078, 2, '2011-06-13', 3, '053-2011', 'APROBAR LA MODIFICACION DEL PIA 2011 E INCLUSION DEL PIP MEJORAMIENTO DEL CAMPO DEPORTIVO EN LA ASOC. VIV. "28 DE AGOSTO"', 'A.C. N-053-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-053-2011-MDCN-T');
INSERT INTO `normas` (`idnor`, `tipodocu`, `fechaemi`, `depeorig`, `numdoc`, `referenc`, `nomfile`, `visitas`, `digitador`, `anno`, `detalle`) VALUES
(1079, 2, '2011-06-13', 3, '054-2011', 'APROBAR LA MODIFICACION DEL PIA 2011 E INCLUSION DEL PIP MEJORAMIENTO DEL CAMPO DEPORTIVO CACHIPUCARA', 'A.C. N-054-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-054-2011-MDCN-T'),
(1080, 2, '2011-06-17', 3, '055-2011', 'APROBAR EL CONVENIO DE COOPERACION INTERINSTITUCIONAL ENTRE EL GOBIERNO REGIONAL DE TACNA Y LA MDCN SOBRE MEJORAMIENTO DE LA COBERTURA DE LOS SERVICIOS DE PREVENCION Y ATENCION DE LA VIOLENCIA FAMILIAR Y SEXUAL EN LA REGION TACNA', 'A.C. N-055-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-055-2011-MDCN-T'),
(1081, 2, '2011-06-17', 3, '056-2011', 'APRUEBA EL BENEFICIO TRIBUTARIO COMPRENDIDO ENTRE EL 20 DE JUNIO AL 20 DE JULIO', 'A.C. N-056-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-056-2011-MDCN-T'),
(1082, 2, '2011-06-22', 3, '057-2011', 'NO APROBAR LA IMPOSICION DE UNA SANCION ADMINISTRATIVA AL REGIDOR HELMER FERNANDEZ CHAPARRO POR LAS DECLARACIONES VERTIDAS EN SESION DE CONSEJO DE FECHA 5/4/2011 EN CONTRA DEL ALCALDE DE LA MDCN', 'A.C. N-057-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-057-2011-MDCN-T'),
(1083, 2, '2011-06-30', 3, '058-2011', 'AUTORIZAR COMO MIEMBROS TITULARES Y SUPLENTES PARA EL CAMBIO DE REGISTROS DE FIRMAS Y EL MANEJO DE LAS CUENTAS BANCARIAS DE LA MDCN ANTE EL BANCO SCOTIABANK', 'A.C. N-058-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-058-2011-MDCN-T'),
(1084, 2, '2011-06-30', 3, '059-2011', 'APROBAR LA SUSCRIPCION DEL CONVENIO DE COOPERACION INTERINSTITUCIONAL ENTRE LA MDCN Y LA CAJA MUNICIPAL DE AHORRO Y CREDITO DEL CUSCO S.A. PARA EL OTORGAMIENTO DE CREDITOS EN MONEDA NACIONAL BAJO LA MODALIDAD DE CREDITO INSTITUCIONAL AL ALCALDE, REGIDORES Y TRABAJADORES DE LA MUNICIPALIDAD', 'A.C. N-059-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-059-2011-MDCN-T'),
(1085, 2, '2011-07-19', 3, '060-2011', 'APROBAR LA CELEBRACION DEL CONVENIO DE COGESTION ENTRE LA ASOC. COMUNIDAD LOCAL DE ADMINISTRACION DE SALUD CENTRO DE SALUD CIUDAD NUEVA,GOBIERNO REGIONAL DE TACNA Y GOBIERNO LOCAL DE LA MDCN', 'A.C. N 060-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-060-2011-MDCN-T'),
(1086, 2, '2011-07-19', 3, '061-2011', 'APROBAR LA CELEBRACION DEL CONVENIO MARCO DE COOPERACION INTERINSTITUCIONAL ENTRE LA MDCN Y EL IPD', 'A.C. N 061-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-061-2011-MDCN-T'),
(1087, 2, '2011-07-19', 3, '062-2011', 'APROBAR EL APOYO SOLICITADO POR EL COORDINADOR DEL CTE 17 DEL A.H. CIUDAD NUEVA, REPRESENTADO POR EL SR. SANTOS COHAILA MELCHOR', 'A.C. N 062-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N 062-2011-MDCN-T'),
(1088, 2, '2011-07-19', 3, '063-2011', 'APROBAR LA CELEBRACION DEL CONVENIO DE COGESTION ENTRE LA ASOC. COMUNIDAD LOCAL DE ADMINISTRACION DE SALUD PUESTO DE SALUD CONO NORTE, GRT Y GOBIERNO LOCAL DE LA MDCN', 'A.C. N 063-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-063-2011-MDCN-T'),
(1089, 2, '2011-07-19', 3, '064-2011', 'CONVENIO DE COGESTION ENTRE LA ASOC. COMUNIDAD LOCAL DE ADMINISTRACION DE SALUD PUESTO DE SALUD INTIORKO, GRT, MDCN', 'A.C. N 064-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-064-2011-MDCN-T'),
(1090, 2, '2011-07-20', 3, '065-2011', 'APOYO ECONOMICO, SOLICITADA POR LA SRA. JUANA GUALBERTA CONDORI QUISPE', 'A.C. N 065-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-065-2011-MDCN-T'),
(1091, 2, '2011-07-20', 3, '066-2011', 'APROBAR LA INCORPORACION Y MODIFICACION EN EL PIA 2011 DE LA MDCN, LOS PROYECTOS "CONSTRUCCION DE LA INFRAESTRUCTURA VIAL DE PISTAS Y VEREDAS EN LAS ASOC. DE VIVIENDAS NUEVA BARRANQUILLA Y WARI DEL DISTRITO DE CIUDAD NUEVA-TACNA-TACNA"', 'A.C. N 066-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-066-2011-MDCN-T'),
(1092, 2, '2011-07-20', 3, '067-2011', 'APROBAR EL INICIO DE LOS PROCEDIMIENTOS ADMINISTRATIVOS, PARA LA CONFORMACION DE LA MANCOMUNIDAD MUNICIPAL ENTRE LA MDCN Y LA MD DE POCOLLAY', 'A.C. N 067-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-067-2011-MDCN-T'),
(1093, 2, '2011-07-21', 3, '068-2011', 'OTORGAR EL VOTO DE RESPALDO AL SR. ALCALDE DE LA MDCN, POR LAS CONSIDERACIONES EXPUESTAS', 'A.C. N 068-2011-MDCN-T.pdf', 0, '', '2011', 'A.C. N-068-2011-MDCN-T'),
(956, 4, '2011-03-09', 3, '142-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ALBERTO WILSON CARITA ESQUIA Y DOÑA SUJEY KARINA MACHACA QUISO, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-142-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-142-2011-MDCN-T'),
(626, 4, '2011-01-03', 3, '001-2011', 'DESIGNAR A PARTIR DEL 01 DE ENERO DEL AÑO 2011 AL ABOGADO LORENZO CABANA PONCE, COMO SECRETARIO GENERAL DE LE MDCN', 'R.A. N-001-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-001-2011-MDCN-T'),
(627, 4, '2011-01-03', 3, '002-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL ABOGADO HUGO HERNAN ADUVIRI SOTO, COMO GERENTE MUNICIPAL DE LA MDCN', 'R.A. N-002-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-002-2011-MDCN-T'),
(628, 4, '2011-01-03', 3, '003-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL CPC CESAR NARCISO GALLEGOS GALLEGOS, COMO GERENTE DE ADMINISTRACION Y FINANZAS DE LA MDCN', 'R.A. N-003-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-003-2011-MDCN-T'),
(629, 4, '2011-01-03', 3, '004-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL ABOGADO JESUS JUAN TAPIA LUCERO, COMO GERENTE DE ASESORIA JURIDICA DE LA MDCN', 'R.A. N-004-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-004-2011-MDCN-T'),
(630, 4, '2011-01-03', 3, '005-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL CPC YOEL BERNABEL ARPASI VALERIANO, COMO GERENTE DE PLANEAMIENTO, PRESUPUESTO Y COOPERACION TECNICA INTERNACIONAL DE LA MDCN', 'R.A. N-005-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-005-2011-MDCN-T'),
(631, 4, '2011-01-03', 3, '006-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. SERGIO ROQUE MAQUERA, COMO GERENTE DE DESARROLLO ECONOMICO Y SOCIAL DE LA MDCN', 'R.A. N-006-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-006-2011-MDCN-T'),
(632, 4, '2011-01-03', 3, '007-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. ING. YURI NILO PACARI MAMANI, COMO GERENTE DE INGENIERIA Y DESARROLLO URBANO DE LA MDCN', 'R.A. N-007-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-007-2011-MDCN-T'),
(633, 4, '2011-01-03', 3, '008-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. CPC MIGUEL ANGEL SANTOS ARRIAGA, COMO SUB GERENTE DE TESORERIA DE LA MDCN', 'R.A. N-008-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-008-2011-MDCN-T'),
(634, 4, '2011-01-03', 3, '009-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. LEONIDAS LEONEL VINCHA MAMANI, COMO SUB GERENTE DE EDUCACION, CULTURA Y DEPORTE DE LA MDCN', 'R.A. N-009-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-009-2011-MDCN-T'),
(635, 4, '2011-01-03', 3, '010-2011', 'DISPONER SE PROMULGUE EL PRESUPUESTO DE INGRESOS Y GASTOS DEL PLIEGO MDCN, ASCENDENTE A S/.23''704,247.00 PARA EL PERIODO COMPRENDIDO ENTRE EL 01 DE ENERO Y EL 31 DE DICIEMBRE DEL 2011, DE ACUERDO AL PRESUPUESTO INSTITUCIONAL DE APERTURA 2011', 'R.A. N-010-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-010-2011-MDCN-T'),
(636, 4, '2011-01-04', 3, '011-2011', 'DESIGNAR A PARTIR DEL 5/1/2011 AL SR. CPC CESAR NARCISO GALLEGOS GALLEGOS COMO GERENTE DE ADMINISTRACION Y FINANZAS', 'R.A. N-011-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-011-2011-MDCN-T'),
(637, 4, '2011-01-04', 3, '012-2011', 'RECONOCER EL PAGO POR DEVENGADOS EN LA SUMA DE S/.58,329.14 CONFORME AL CONTRATO 001-2010-MDCN-T DE FECHA 14/06/2010', 'R.A. N-012-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-012-2011-MDCN-T'),
(638, 4, '2011-01-03', 3, '013-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. HUGO ROLANDO AVENDAÑO QUISPE COMO ENCARGADO DE LA UNIDAD DE EQUIPO MECANICO DE LA MDCN', 'R.A. N-013-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-013-2011-MDCN-T'),
(639, 4, '2011-01-06', 3, '014-2011', 'ESTABLECER COMO NUEVO FONDO DE CAJA CHICA RENOVABLE HASTA POR EL MONTO DE S/. 2,000.00, EN EL EJERCICIO DEL AÑO FISCAL 2011 PARA ATENDER GASTOS MENUDOS URGENTES NO PROGRAMADOS PARA ODES DE LA MDCN', 'R.A. N-014-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-014-2011-MDCN-T'),
(640, 4, '2011-01-03', 3, '015-2011', 'DESIGNAR A PARTIR DE LA FECHA AL SR. JULIO LUIS YUFRA CURO COMO JEFE DE LA UNIDAD DE REGISTRO CIVIL DE LA MDCN', 'R.A. N-015-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-015-2011-MDCN-T'),
(641, 4, '2011-01-03', 3, '016-2011', 'DISPONER LA DESIGNACION DEL ABOG. JOSE ROBERTO HUALPA MAMANI, COMO RESPONSABLE DE COORDINAR CON LAS DISTINTAS AREAS DE LA MDCN EL CUMPLIMIENTO DE LAS METAS ESTABLECIDAS EN EL DECRETO SUPREMO Nº 190-2010-EF Y D.S. 183-2010-EF', 'R.A. N-016-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-016-2011-MDCN-T'),
(642, 4, '2011-01-06', 3, '017-2011', 'DESIGNAR A PARTIR DE LA FECHA A LA ABOG. LIDIA MARCELINA JUANILLO CENTELLO COMO FEDATARIO TITULAR DE LA MDCN', 'R.A. N-017-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-017-2011-MDCN-T'),
(643, 4, '2011-01-06', 3, '018-2011', 'DESIGNAR COMO PROCURADOR MUNICIPAL PROVISIONAL AL ABOG. CESAR ROGGER MALAGA CALIZAYA', 'R.A. N-018-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-018-2011-MDCN-T'),
(644, 4, '2011-01-06', 3, '019-2011', 'DESIGNAR A PARTIR DE LA FECHA COMO SUPERVISOR DE OBRA AL ING. CIVIL DARIO VALENCIA CANDIA', 'R.A. N-019-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-019-2011-MDCN-T'),
(645, 4, '2011-01-06', 3, '020-2011', 'DESIGNAR A PARTIR DE LA FECHA COMO RESIDENTE DE OBRA AL ING. CIVIL SANTOS UBERTO PANIAUA MANCILLA', 'R.A. N-020-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-020-2011-MDCN-T'),
(646, 4, '2011-01-011', 3, '021-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. CPC ELAN ROBERTO LOAIZA GALLEGOS, COMO SUB GERENTE DE CONTABILIDAD DE LA MDCN', 'R.A. N-021-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-021-2011-MDCN-T'),
(647, 4, '2011-01-11', 3, '022-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. EDUARDO LORENZO CACSI SANTIN, COMO SUB GERENTE DE INFORMATICA Y ESTADISTICA DE LA MDCN', 'R.A. N-022-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-022-2011-MDCN-T'),
(648, 4, '2011-01-11', 3, '023-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. CPC ELAN ROBERTO LOAIZA GALLEGOS COMO SUBGERENTE DE CONTABILIDAD DE LA MDCN', 'R.A. N-023-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-023-2011-MDCN-T'),
(649, 4, '2011-01-11', 3, '024-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. ABOG. FREDY HILASACA PAUCAR COMO SUB GERENTE DE RECURSOS HUMANOS DE LA MDCN', 'R.A. N-024-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-024-2011-MDCN-T'),
(650, 4, '2011-01-11', 3, '025-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. CPC JOSE LUIS TICON LLANGATO COMO SUB GERENTE DE LOGISTICA Y SERVICIOS AUXILIARES DE LA MDCN', 'R.A. N-025-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-025-2011-MDCN-T'),
(651, 4, '2011-01-11', 3, '026-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. OBITO EUGENIO CAÑARI YAPUCHURA, COMO SUB GERENTE DE RENTAS DE LA MDCN', 'R.A. N-026-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-026-2011-MDCN-T'),
(652, 4, '2011-01-18', 3, '027-2011', 'APROBAR LA AMPLIACION DE PLAZO Nº01, POR 38 DIAS CALENDARIO, CON NUEVA FECHA DE CULMINACION EL 13 DE FEBRERO DEL AÑO 2011, PARA LA CULMINACION DE LA OBRA: "AMPLIACION DE SISTEMA DE ALCANTARILLADO EN LA ASOC. DE VIV DIOS ES AMOR"', 'R.A. N-027-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-027-2011-MDCN-T'),
(653, 4, '2011-01-14', 3, '028-2011', 'APROBAR LA "DIRECTIVA Nº 001-2011-MDCN-T PARA EL MANEJO DE FONDO FIJO PARA CAJA CHICA DE LA MDCN" ', 'R.A. N-028-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-028-2011-MDCN-T'),
(654, 4, '2011-01-11', 3, '029-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. JOSE EDUARDO QUISPE CHOQUE, COMO SUB GERENTE DE PLANEAMIENTO URBANO, CATASTRO Y MARGESI DE BIENES DE LA MDCN                     ', 'R.A. N-029-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-029-2011-MDCN-T'),
(655, 4, '2011-01-11', 3, '030-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. GREGORIO FRANCISCO RODRIGUEZ AYCA, COMO SUB GERENTE DE SEGURIDAD CIUDADANA, POLICIA MUNICIPAL Y DEFENSA CIVIL DE LA MDCN', 'R.A. N-030-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-030-2011-MDCN-T'),
(656, 4, '2011-01-11', 3, '031-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. ING. DARIO VALENCIA CANDIA, COMO SUB GERENTE DE SUPERVISION Y LIQUIDACION DE OBRAS DE LA MDCN', 'R.A. N-031-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-031-2011-MDCN-T'),
(657, 4, '2011-01-11', 3, '032-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. MANUEL TORRES TORRES, COMO ADMINISTRADOR DE ORGANOS DESCONCENTRADOS ODES', 'R.A. N-032-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-032-2011-MDCN-T'),
(658, 4, '2011-01-11', 3, '033-2011', 'DESIGNAR A PARTIR DEL 1/1/2011 AL SR. ING. JULIO CESAR RAMOS CHAMBE, COMO SUB GERENTE DE GESTION Y SANEAMIENTO AMBIENTAL DE LA MDCN', 'R.A. N-033-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-033-2011-MDCN-T'),
(659, 4, '2011-01-12', 3, '034-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE SERVICIO Y/O TRABAJO DE PAGO DEL AÑO 2010 Nº 00003662', 'R.A. N-034-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-034-2011-MDCN-T'),
(660, 4, '2011-01-12', 3, '035-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE ORDEN DE SERVICIO Y/O TRABAJO DE PAGO DEL AÑO 2010 Nº 00001925, A FAVOR DE DOÑA EYLEEN SACARLETH ARIAS HINOJOSA LA SUMA DE S/.1,146.00 ', 'R.A. N-035-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-035-2011-MDCN-T'),
(661, 4, '2011-01-12', 3, '036-2011', 'DECLARAR PROCEDENTE LA RENOVACION DE EXONERACION DE PAGO DEL IMPUESTO PREDIAL A SOLICITUD PRESENTADA POR DON PAULINO CHURA QUECAÑO', 'R.A. N-036-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-036-2011-MDCN-T'),
(662, 4, '2011-01-13', 3, '037-2011', 'RECONOCER Y REGISTRAR EL NUEVO COMITE DE GESTION "AVANZAREMOS PARA EL GRAN CAMBIO"', 'R.A. N-037-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-037-2011-MDCN-T'),
(663, 4, '2011-01-13', 3, '038-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA DEL "COMITE DE LUCHA DE LOS TRABAJADORES DE CIUDAD NUEVA"', 'R.A. N-038-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-038-2011-MDCN-T'),
(664, 4, '2011-01-13', 3, '039-2011', 'RECONOCER Y REGISTRAR EL NUEVO COORDINADOR Y SU JUNTA DIRECTIVA CTE 26 DE LA AMPLIACION CIUDAD NUEVA DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-039-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-039-2011-MDCN-T'),
(1197, 4, '2011-06-10', 3, '318-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON:MARCELINO PACCO AYCAYA', 'R.A. N 318-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 318-2011-MDCN-T'),
(666, 4, '2011-01-14', 3, '041-2011', 'DECLARAR DE OFICIO, LA NULIDAD DEL PROCESO DE SELECCION POR ADP 006-2010-CEP-MDCN-T, PARA EL MANTENIMIENTO INTEGRAL DEL PARQUE DEL NIÑO VILLA EL TRIUNFO II ETAPA', 'R.A. N-041-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-041-2011-MDCN-T'),
(667, 4, '2011-01-14', 3, '042-2011', 'DESIGNAR COMO MIEMBRO VEEDOR EN REPRESENTACION DEL ALCALDE DE LA MDCN AL ARQ. JOSE EDUARDO QUISPE CHOQUE CAP 11536', 'R.A. N-042-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-042-2011-MDCN-T'),
(668, 4, '2011-01-18', 3, '043-2011', 'DESIGNAR COMO FISCAL DEL NUCLEO EJECUTOR AL ING. DARIO VALENCIA CANDIA A PARTIR DEL 20/1/2011', 'R.A. N-043-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-043-2011-MDCN-T'),
(669, 4, '2011-01-18', 3, '044-2011', 'APROBAR LA INCORPORACION DE MAYORES FONDOS PUBLICOS AL MES DE DICIEMBRE DEL 2010, CORRESPONDIENTES A LA MDCN, POR EL MONTO DE S.558,440.00 PROVENIENTES DE MAYORES INGRESOS', 'R.A. N-044-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-044-2011-MDCN-T'),
(670, 4, '2011-01-18', 3, '045-2011', 'RECONOCER Y REGISTRAR EL RECONOCIMIENTO DEL COMITE EN GESTION "TRABAJANDO PRO EL PERU" PARA EL PRESENTE AÑO 2011', 'R.A. N-045-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-045-2011-MDCN-T'),
(671, 4, '2011-01-20', 3, '046-2011', 'ESTABLECER COMO NUEVO FONDO DE CAJA CHICA RENOVABLE HASTA POR EL MONTO DE S/.5,500.00, EN EL EJERCICIO DEL AÑO FISCAL 2011 PARA ATENDER GASTOS MENUDOS URGENTES NO PROGRAMADOS PARA LA MDCN', 'R.A. N-046-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-046-2011-MDCN-T'),
(672, 4, '2011-01-20', 3, '047-2011', 'RECONOCER Y REGISTRAR EL NUEVO CTE DE GESTION "UNIDOS PARA EL PROGRESO"', 'R.A. N-047-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-047-2011-MDCN-T'),
(673, 4, '2011-01-20', 3, '048-2011', 'RECONOCER Y REGISTRAR EL NUEVO "CTE ADMINISTRATIVO DEL PROGRAMA VASO DE LECHE PERIODO 2011"', 'R.A. N-048-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-048-2011-MDCN-T'),
(674, 4, '2011-01-20', 3, '049-2011', 'RECONOCER Y REGISTRAR EL NUEVO "CTE DE GESTION PROGRESANDO CON EL PERU" PERIODO 2011', 'R.A. N-049-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-049-2011-MDCN-T'),
(675, 4, '2011-01-28', 3, '050-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR A DOÑA CHAMBI APAZA MARIA ELENA, LA LIC. MUNICIPAL DE APERTURA Y FUNCIONAMIENTO PARA UN LOCAL DESTINADO A "TIENDA DE ABARROTES"', 'R.A. N-050-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-050-2011-MDCN-T'),
(676, 4, '2011-01-20', 3, '051-2011', 'ESTABLECER COMO NUEVO FONDO DE CAJA CHICA RENOVABLE HASTA POR EL MONTO DE S/. 2,000.00, EN EL EJERCICIO DEL AÑO FISCAL 2011 PARA ATENDER GASTOS MENUDOS URGENTES NO PROGRAMADOS PARA EQUIPO MECANICO DE LA MDCN', 'R.A. N-051-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-051-2011-MDCN-T'),
(677, 4, '2011-01-21', 3, '052-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON PITER YASMANI APAZA RAMOS Y DOÑA NATIVIDAD LINARES LUNA, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-052-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-052-2011-MDCN-T'),
(678, 4, '2011-01-20', 3, '053-2011', 'DEJAR SIN EFECTO, A PARTIR DE LA PRESENTE FECHA LA DESIGNACION DEL ING. EDGARD HUMBERTO TUERO VICENTE, COMO RESPONSABLE DE CONDUCIR LAS TAREAS PROPIAS DE LA UNIDAD LOCAL DE FOCALIZACION DE LA MDCN - TACNA', 'R.A. N-053-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-053-2011-MDCN-T'),
(679, 4, '2011-01-20', 3, '054-2011', 'APROBAR EL PLAN ANUAL DE CONTRATACIONES Y ADQUISICIONES DEL ESTADO DE LA MDCN PARA EL AÑO FISCAL 2011', 'R.A. N-054-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-054-2011-MDCN-T'),
(680, 4, '2011-01-21', 3, '055-2011', 'RECONOCER Y REGISTRAR AL CTE DE GESTION DE OBRAS "EMPRENDORAS ORGANIZADAS" Y RECONOCER A LA JUNTA DIRECTIVA DE LA ORGANIZACION SOCIAL YA NOMBRADA PERIODO 2011-2014', 'R.A. N-055-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-055-2011-MDCN-T'),
(681, 4, '2011-01-21', 3, '056-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS QUE PROCEDA A OTORGAR A DON FLORES AYALA ELMER RENE, LA LIC. MUNICIPAL DE APERTURA Y FUNCIONAMIENTO PARA UN LOCAL DESTINADO A LA VENTA DE PRODUCTOS OMNILIFE Y OTROS SERVICIOS, DENOMINADO "NUTRICION & NEGOCIOS"', 'R.A. N-056-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-056-2011-MDCN-T'),
(682, 4, '2011-01-21', 3, '057-2011', 'RECONOCER Y REGISTRAR LA NUEVA ASOC. DE ADULTOS MAYORES "DIGNIDAD E INCLUSION" (ADAMDI)', 'R.A. N-057-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-057-2011-MDCN-T'),
(683, 4, '2011-01-24', 3, '058-2011', 'APROBAR SE HAGA EXTENSIVO LA APLICACION DE LOS BENEFICIOS DE LOS PACTOS COLECTIVOS EJERICIO 2011, A LOS SERVIDORES NOMBRADOS NO SINDICALIZADOS Y FUNCIONARIOS DE CONFIANZA DE LA MDCN', 'R.A. N-058-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-058-2011-MDCN-T'),
(684, 4, '2011-01-26', 3, '059-2011', 'DESIGNAR COMO PERITO TASADOR DE LA MDCN PARA EL EJERCICIO 2011 AL SR. ING. OSCAR PASCUAL POMA HUANCA', 'R.A. N-059-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-059-2011-MDCN-T'),
(1196, 4, '2011-06-14', 3, '317-2011', 'RECONOCER Y REGISTRAR EL NUEVO COMEDOR POPULAR Y JUNTA DIRECTIVA PARA EL PERIODO 2011-2012"MANUEL GONZALES PRADA"', 'R.A. N 317-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 317-2011-MDCN-T'),
(686, 4, '2011-01-26', 3, '061-2011', 'CONFORMAR LA COMISION PARITARIA DE LOS TRABAJADORES DE LA MDCN, PARA EFECTUAR LA NEGOCIACION BILATERAL EN RELACION A SU PLIEGO PETITORIO PARA EL EJERCICIO 2011', 'R.A. N-061-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-061-2011-MDCN-T'),
(687, 4, '2011-01-21', 3, '062-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR LA LIC. DE ANUNCIO Y PUBLICIDAD EXTERIOR A DOÑA ANTONIA ARO DE ARO', 'R.A. N-062-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-062-2011-MDCN-T'),
(1195, 4, '2011-06-14', 3, '316-2011', 'DESIGNAR AL ING. EDUARDO CACSI SANTIN SUB-GERENTE DE TECNOLOGIA DE INFORMACION Y COMUNICACIONES DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 316-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 316-2011-MDCN-T'),
(1194, 4, '2011-06-09', 3, '315-2011', 'RECONOCER Y REGISTRAR LA JUNTA DIRECTIVA PARA EL PERIODO 2011-2013 DEL COMITE VECINAL No 14 AGRUPACION-A DEL DISTRITO DE CIUDAD NUEVA ', 'R.A. N 315-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 315-2011-MDCN-T'),
(690, 4, '2011-01-12', 3, '065-2011', 'APROBAR LA DIRECTIVA Nº 001-2010-GADM-MDCN-T "DIRECTIVA PARA LA TOMA DE INVENTARIO FISICO DE BIENES MUEBLES DEL ACTIVO FIJO Y BIENES NO DEPRECIABLES" DE LA MDCN', 'R.A. N-065-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-065-2011-MDCN-T'),
(691, 4, '2011-01-29', 3, '066-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR LA LIC. DE ANUNCIO Y PUBLICIDAD EXTERIOR A DON FIDEL HUGO GUEVARA LUPACA', 'R.A. N-066-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-066-2011-MDCN-T'),
(692, 4, '2011-01-28', 3, '067-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR LA LIC. DE ANUNCIO Y PUBLICIDAD EXTERIOR A DON ARO CHIPO PATRICIO', 'R.A. N-067-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-067-2011-MDCN-T'),
(693, 4, '2011-01-27', 3, '068-2011', 'AUTORIZAR EL VIAJE A LA CIUDAD DE AREQUIPA AL C.P.C. ELAN ROBERTO LOAIZA GALLEGOS SUB GERENTE DE CONTABILIDAD DE LA MDCN, LOS DIAS SABADO 29 Y DOMINGO 30 DE ENERO DEL PRESENTE AÑO', 'R.A. N-068-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-068-2011-MDCN-T'),
(694, 4, '2011-01-27', 3, '069-2011', 'AUTORIZAR EL VIAJE A LA CIUDAD DE LIMA AL ABOG. JOSE ROBERTO HUALPA MAMANI COORDINADOR D.S. 183-20120-EF Y DS 190-2010, RAN Nº 016-2011-MDCN-T, DE LA MDCN', 'R.A. N-069-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-069-2011-MDCN-T'),
(695, 4, '2011-01-27', 3, '070-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON LUCIO COLQUE SANDOVAL', 'R.A. N-070-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-070-2011-MDCN-T'),
(696, 4, '2011-01-28', 3, '071-2011', 'APROBAR LA MODIFICACION DE LA ESCALA REMUNERATIVA DEL PERSONAL OBRERO CONTRATADO POR GASTO DE INVERSION DE LA MDCN', 'R.A. N-071-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-071-2011-MDCN-T'),
(697, 4, '2011-01-28', 3, '072-2011', 'APROBAR LA ESCALA REMUNERATIVA DEL PERSONAL CONTRATADO EVENTUAL CON CARGO A PROYECTOS DE INVERSION MANTENIMIENTO DE LA MDCN', 'R.A. N-072-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-072-2011-MDCN-T'),
(698, 4, '2011-01-28', 3, '073-2011', 'DISPONER QUE SE APRUEBE EL ACTA FINAL SUSCRITO POR LA COMISION PARITARIA AL PLIEGO DE PETITORIO DEL SINDICATO DE TRABAJADORES MUNICIPALES DE LA MDCN - SITRAMUN CIUDAD NUEVA, PARA EL EJERCICIO PRESUPUESTARIO 2011', 'R.A. N-073-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-073-2011-MDCN-T'),
(699, 4, '2011-01-26', 3, '074-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE CONFORMIDAD DE SERVICIOS POR COMISION', 'R.A. N-074-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-074-2011-MDCN-T'),
(700, 4, '2011-01-27', 3, '075-2011', 'APROBAR LA CONFORMACION DEL CTE DISTRITAL DE SEGURIDAD CIUDADANA DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-075-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-075-2011-MDCN-T'),
(701, 4, '2011-01-27', 3, '076-2011', 'DESIGNAR AL MAYOR PNP ADOLFO FLORES FUENTES JEFE DE LA COMISARIA DEL DISTRITO DE CIUDAD NUEVA COMO SECRETARIO TECNICO DEL CTE. DISTRITAL DE SEGURIDAD CIUDADANA', 'R.A. N-076-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-076-2011-MDCN-T'),
(702, 4, '2011-02-31', 3, '077-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS, PARA QUE PROCEDA A OTORGAR LA LIC. DE ANUNCIO Y PUBLICIDAD EXTERIOR A LA EMPRESA PRESTAMOS CRECEFACIL SRL', 'R.A. N-077-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-077-2011-MDCN-T'),
(703, 4, '2011-01-31', 3, '078-2011', 'DESIGNAR COMO PERITO ARANCELARIO DE LA MDCN PARA EL EJERCICIO DEL AÑO 2011 AL SR. ING. OSCAR PASCUAL POMA HUANCA', 'R.A. N-078-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-078-2011-MDCN-T'),
(704, 4, '2011-01-31', 3, '079-2011', 'RECONOCER COMO DEVENGADO POR LOS CONCEPTOS DE LOS CUADROS QUE SE DETALLA A FAVOR DE EQUIPO MECANICO DE LA MDCN', 'R.A. N-079-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-079-2011-MDCN-T'),
(705, 4, '2011-02-01', 3, '080-2011', 'DESIGNAR A LOS REPRESENTANTES EN LA ASAMBLEA GENERAL DE LOS COMITES LOCALES DE ADMINISTRACION DE SALUD - CLAS CONO NORTE DEL DISTRITO DE CIUDAD', 'R.A. N-080-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-080-2011-MDCN-T'),
(706, 4, '2011-02-02', 3, '081-2011', 'RECONOCER COMO DEVENGADO A FAVOR DE LA EMPRESA PERIODISTICA NACIONAL S.A. POR CONCEPTO DE ORDEN DE SERVICIO Nº 00001057 DE FECHA 21/10/2010, EN LA SUMA DE S/. 1,200.00', 'R.A. N-081-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-081-2011-MDCN-T'),
(707, 4, '2011-02-03', 3, '082-2011', 'AUTORIZAR EL TRASLADO DE LAS MAQUINARIAS DE LA MDCN HACIA EL CPM BOCA DEL REIO', 'R.A. N-082-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-082-2011-MDCN-T'),
(708, 4, '2011-02-03', 3, '083-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ALEX AMERICO MAMANI MAMANI Y DOÑA ELKA MARINE PEREZ ROJAS, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-083-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-083-2011-MDCN-T'),
(709, 4, '2011-02-03', 3, '084-2011', 'APROBAR Y FORMALIZAR LAS MODIFICACIONES PRESUPUESTALES EFECTUADAS EN EL NIVEL FUNCIONAL PROGRAMATICO, CONFORME AL ANEXO DE RESOLUCION DE MODIFICACIONES PRESUPUESTALES A NIVEL DE ACTIVIDADES/PROYECTOS CORRESPONDIENTE AL MES DE DICIEMBRE-2010', 'R.A. N-084-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-084-2011-MDCN-T'),
(710, 4, '2011-02-03', 3, '085-2011', 'AUTORIZAR EL VIAJE A LA CPC DULIA LOAYZA GUTIERREZ JEFE DEL OCI DE LA MDCN A LA CIUDAD DE LIMA, EL DIA 4 Y 5 DE FEBRERO DEL 2011', 'R.A. N-085-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-085-2011-MDCN-T'),
(711, 4, '2011-02-03', 3, '086-2011', 'APROBAR LAS MEDIDAS DE ECOEFICIENCIA PARA LA MDCN, QUE CONFORMAN EL PRESENTE DOCUMENTO DE ACUERDO A LO QUE ESTABLECE EL MINAM EN EL DS 009-2009-MINAN', 'R.A. N-086-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-086-2011-MDCN-T'),
(1193, 4, '2011-05-24', 3, '314-2011', 'RECONOCER Y FELICITAR A NOMBRE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA POR LA DESTACADA LABOR QUE VIENE CUMPLIENDO EN SUS FUNCIONES A LOS DOCENTES', 'R.A. N 314-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 314-2011-MDCN-T'),
(713, 4, '2011-02-04', 3, '088-2011', 'RESOLVER EL CONTRATO DE CONSULTORIA DE OBRA POR INCUMPLIMIENTO, DOCUMENTO DE FECHA 17/09/2010 SOBRE "CONTRATACION DEL SERVICIO DE ELABORACION DE EXPEDIENTE TECNICO DEL PROYECTO DE INVERSIONES PUBLICAS DE LA ORA AMPLIACION Y MEJORAMIENTO DEL SISTEMA DE ELECTRIFICACION EN LA ASOC. DE PEQUEÑOS Y MEDIANOS INDUSTRIALES FAZ Y ASOC. DE VIV. TACNA HEROICA DCN"', 'R.A. N-088-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-088-2011-MDCN-T'),
(714, 4, '2011-02-04', 3, '089-2011', 'APROBAR LA REGULARIZACION DE LAS MODIFICACIONES PRESUPUESTALES POR MAYORES INGRESOS EFECTUADAS EN EL MES DE DICIEMBRE DEL 2010', 'R.A. N-089-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-089-2011-MDCN-T'),
(715, 4, '2011-02-04', 3, '090-2011', 'APROBAR EL EXPEDIENTE TECNICO DEL PROYECTO: INSTALACION DE REDES DE AGUA POTABLE Y ALCANTARILLADO EN LA ASOC. DE PEQUEÑOS Y MEDIANOS INDUSTRIALES FAZ Y LA ASOC. VIV. TACNA HEROICA DEL DISTRITO DE CIUDAD NUEVA - TACNA - TACNA CON COD. SNIP 82222', 'R.A. N-090-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-090-2011-MDCN-T'),
(872, 4, '2011-04-27', 3, '247-2011', 'APROBAR EL EXPEDIENTE TECNICO DE OBRA DEL "CONSTRUCCION DE PISTAS Y VEREDAS DE LA ASOC. DE VIV. NUEVA BARRANQUILLA Y LA ASOC. DE VIV. WARI"', 'R.A. N-247-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-247-2011-MDCN-T'),
(873, 4, '2011-04-29', 3, '248-2011', 'RECONOCER Y REGISTRAR EL NUEVO CONSEJO DIRECTIVO PARA EL PERIODO 2011-2013 DE LA ASOC. DE VIV. TALLER FONAVI CHAN DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-248-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-248-2011-MDCN-T'),
(878, 4, '2011-05-03', 3, '253-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA PARA EL PERIODO 2011-2013 DE LA "ASOC. DE COMERCIANTES FRONTERA ALIANZA CIUDAD NUEV DEL DISTRITO DE CIUDAD NUEVA"', 'R.A. N-253-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-253-2011-MDCN-T'),
(875, 4, '2011-04-27', 3, '250-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADO POR DON FELIX ALAVE MAMANI', 'R.A. N-250-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-250-2011-MDCN-T'),
(1114, 1, '2011-07-19', 3, '011-2011', 'ORDENANZA QUE ESTABLECE BENEFICIO TRIBUTARIO PARA EL CUMPLIMIENTO DE LAS OBLIGACIONES TRIBUTARIAS A FAVOR DE LOS CONTRIBUYENTES DEL DISTRITO DE CIUDAD NUEVA', 'O.M. N 011-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 011-2011-MDCN-T'),
(1113, 1, '2011-07-18', 3, '010-2011', 'ORDENANZA QUE APRUEBA EL REINICIO DE LA PRIVATIZACION RESPECTO AL BENEFICIO DE PAGO POR FRACCIONAMIENTO DEL MERCADO ZONAL CIUDAD NUEVA, CON UN PLAZO MAXIMO DE 18 MESES DE VIGENCIA', 'O.M. N 010-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 010-2011-MDCN-T'),
(1117, 3, '2011-07-04', 3, '001-2011', 'APROBAR LA DELEGACION DE FACULTADES CON EXPRESA E INEQUIVOCA MENCION Y BAJO ESTRICTA RESPONSABILIDAD LAS ATRIBUCIONES ADMINISTRATIVAS Y RESOLUTIVAS A GERENCIA MUNICIPAL', 'D. A. N 001-2011-MDCN-T.pdf', 0, '', '2011', 'D.A. N-001-2011-MDCN-T'),
(882, 4, '2011-05-08', 3, '257-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON MAXIMO ROBERTO YLLA CHURA', 'R.A. N-257-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-257-2011-MDCN-T'),
(1048, 4, '2011-04-15', 3, '220-2011-A', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADO POR DOÑA: JOSEFINA JUSTINA FERNANDEZ VDA DE ISIDRO, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL NO ESTANDO AGECTO AL PAGO DEL IMPUESTO PREDIAL A PARTIR DEL III TRIMESTRE DEL AÑO 2011.', 'R.A. N-220-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-220-A-2011-MDCN-T'),
(1111, 1, '2011-05-31', 3, '008-2011', 'REGULA EL CIERRE DE LOCALES QUE NO CUENTAN CON LICENCIA DE FUNCIONAMIENTO', 'O.M. N 008-2011-MDCN-T.pdf', 0, '', '2011', 'O.M. N 008-2011-MDCN-T'),
(957, 4, '2011-03-09', 3, '143-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ALAN MARCOS GARCIA SALAMANCA Y DOÑA YESENIA VANESSA SOSA ALANOCA, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-143-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-143-2011-MDCN-T'),
(958, 4, '2011-03-09', 3, '144-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON ALBERTO SIMON SANCHEZ CORONADO, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL NO ESTANDO AFECTO AL PAGO DEL IMPUESTO PREDIAL A PARTIR DEL II TRIMESTRE DEL 2010 HASTA EL III TRIMESTRE DEL 2013', 'R.A. N-144-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-144-2011-MDCN-T'),
(959, 4, '2011-03-09', 3, '145-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD EN VIAS DE REGULARIZACION POR DON CHAMBILLA CATUNTA JOSE, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL NO ESTANDO AFECTO AL PAGO DEL IMPUESTO PREDIAL A PARTIR DEL III TRIMESTRE DEL 2011 HASTA EL III TRIMESTRE DEL 2014', 'R.A. N-145-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-145-2011-MDCN-T'),
(955, 4, '2011-03-09', 3, '141-2011', 'APROBAR Y FORMALIZAR LA MODIFICACION FUNCIONAL PROGRAMATICA, CONFORME AL ANEXO DE RESOLUCION DE MODIFICACIONES PRESUPUESTALES A NIVEL DE ACTIVIDADES/PROYECTOS CORRESPONDIENTE AL MES DE FEBRERO 2011', 'R.A. N-141-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-141-2011-MDCN-T'),
(951, 4, '2011-03-07', 3, '137-2011', 'AUTORIZAR EL CAMBIO DE FIRMAS EN LA ENTIDAD BANCARIA SCOTIABANK', 'R.A. N-137-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-137-2011-MDCN-T'),
(952, 4, '2011-03-08', 3, '138-2011', 'FELICITAR Y RECONOCER EN NOMBRE DE LA MDCN A DOÑA MERCEDES ESCOQUE JUSTO CON OCASION DE CELEBRARSE EL "DIA INTERNACIONAL DE LA MUJER"', 'R.A. N-138-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-138-2011-MDCN-T'),
(953, 4, '2011-03-08', 3, '139-2011', 'APROBAR EL EXPEDIENTE TECNICO ACTUALIZADO MEJORAMIENTO DE LA CALLE HNOS ANGULO DE A.A.H.M. CIUDAD NUEVA - TACNA', 'R.A. N-139-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-139-2011-MDCN-T'),
(954, 4, '2011-03-08', 3, '140-2011', 'APROBAR EL EXPEDIENTE TECNICO RECONSTRUCCION DEL AREA DE RECREACION PASIVA EN EL CTE 5 DE LA ASOC. DE VIV. VILLA EL TRIUNFO DE CIUDAD NUEVA', 'R.A. N-140-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-140-2011-MDCN-T'),
(960, 4, '2011-03-09', 3, '146-2011', 'DESIGNAR A DOÑA LUCILA SALAMANCA MANUELO COMO ENCARGADA DEL PROGRAMA "VASO DE LECHE Y COMEDORES" DE LA MDCN', 'R.A. N-146-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-146-2011-MDCN-T'),
(961, 4, '2011-03-11', 3, '147-2011', 'APROBAR EL PLAN INTEGRAL DE GESTION AMBIENTAL DE RESIDUOS SOLIDOS MUNICIPALES DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-147-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-147-2011-MDCN-T'),
(962, 4, '2011-03-09', 3, '148-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE ORDENES DE COMPRA - GUIA DE INTERNAMIENTOS Nº 00000691, POR LA SUMA DE S/. 6,400.00', 'R.A. N-148-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-148-2011-MDCN-T'),
(963, 4, '2011-03-11', 3, '149-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON EDGAR LIZANDRO QUISPE LAURENTE Y DOÑA DENISSE GINA PALOMINO NINA, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-149-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-149-2011-MDCN-T'),
(964, 4, '2011-03-11', 3, '150-2011', 'ACLARAR LA R.A. 343-2010-MDCN-T DEL 10/8/2010, SOBRE REPLANTEO DE HABILITACION URBANA DE LA ASOC. DE PEQUEÑOS Y MEDIANOS INDUSTRIALES "FAZ"', 'R.A. N-150-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-150-2011-MDCN-T'),
(965, 4, '2011-03-15', 3, '151-2011', 'RECONOCER AL SINDICATO DE TRABAJADORES DE CONSTRUCCION CIVIL Y OTROS SERVICIOS "UNIDOS POR EL BIENESTAR DE LA REGION TACNA - SICOUNBIRETA"', 'R.A. N-151-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-151-2011-MDCN-T'),
(966, 4, '2011-03-15', 3, '152-2011', 'RECONOCER Y REGISTRAR LA J.D. DENOMINADO "ASOC. ORGANIZADA DE LA POBLACION CON CASOS SOCIALES E INDIGENTES EN LA REGION TACNA"', 'R.A. N-152-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-152-2011-MDCN-T'),
(967, 4, '2011-02-15', 3, '153-2011', 'DESIGNAR AL ING. MARCO ANTONIO MEDINA ARAUJO COORDINADOR DEL PROYECTO: "FORTALECIMIENTO DE LA IDENTIDAD CULTURAL Y LA PROMOCION DE LAS MANIFESTACIONES FOLKLORICAS EN EL DISTRITO DE CIUDAD NUEVA "', 'R.A. N-153-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-153-2011-MDCN-T'),
(968, 4, '2011-03-15', 3, '154-2011', 'DESIGNAR A LOS INTEGRANTES DEL CTE DISTRITAL DE DEFENSA CIVIL DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-154-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-154-2011-MDCN-T'),
(969, 4, '2011-03-16', 3, '155-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON VICTOR MANUEL QUEJIA HUAMAN Y DOÑA ANA MELBA QUISPE HUAMANGUILLA, AL NO HABERSE FORMULADO NINGUN IMPEDIMENTO PARA CONTRAER EL MATRIMONIO CIVIL', 'R.A. N-155-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-155-2011-MDCN-T'),
(970, 4, '2011-03-17', 3, '156-2011', 'RECONOCER Y REGISTRAR LA NUEVA "JUNTA DE PROPIETARIOS DEL MERCADO CENTRAL DE CIUDAD NUEVA" PERIODO 2011-2013 DEL "MERCADO CENTRAL DE CIUDAD NUEVA"', 'R.A. N-156-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-156-2011-MDCN-T'),
(971, 4, '2011-03-17', 3, '157-2011', 'APROBAR EL EXPEDIENTE DE CONTRATACION DE PS ADS-001-2011-CE-MDCN-T ADQUISICION DE LECHE FRESCA PARA EL PROGRAMA DE VASO DE LECHE DE LA MDCN POR UN MONTO DE S/. 158,328.00', 'R.A. N-157-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-157-2011-MDCN-T'),
(972, 4, '2011-03-18', 3, '158-2011', 'ENCARGAR COMO SUB GERENTE DE ESTUDIOS Y PROYECTOS DE LA MDCN A PARTIR DE LA FECHA, PARALELO A LAS FUNCIONES DESIGNADAS COMO SUB GERENTE DE PLANEAMIENTO URBANO CATASTRO Y MARGESI DE BIENES AL SR. ARQ. JOSE QUISPE QUISPE', 'R.A. N-158-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-158-2011-MDCN-T'),
(973, 4, '2011-03-18', 3, '159-2011', 'DESIGNAR AL ING. WILBER GUTIERREZ CAUNA RESPONSABLE DE LA EJECUCION DEL "MANTENIMIENTO Y SEÑALIZACION VIAL DE LA AV. INTERNACIONAL DEL DISTRITO DE CIUDAD NUEVA"', 'R.A. N-159-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-159-2011-MDCN-T'),
(974, 4, '2011-03-30', 3, '160-2011', 'APROBAR LA DIRECTIVA PARA EL USO DE MATERIALES Y/O BIENES SOBRANTES DE OBRAS DE LA MDCN', 'R.A. N-160-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-160-2011-MDCN-T'),
(975, 4, '2011-03-22', 3, '161-2011', 'OTORGAR EL HORARIO DE LACTANCIA MATERNA A DOÑA EDITH PANIAGUA CAHUANA, SERVIDORA DE LA MDCN', 'R.A. N-161-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-161-2011-MDCN-T'),
(977, 4, '2011-03-22', 3, '163-2011', 'DECLARAR LA NULIDAD DE OFICIO DEL PROCESO DE SELECCION Nº LP-001-2011-MDCN-T "ADQUISICION DE COMBUSTIBLE PARA EL GRIFO MUNICIPAL DE CIUDAD NUEVA"', 'R.A. N-163-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-163-2011-MDCN-T'),
(978, 4, '2011-03-22', 3, '164-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON CECILIO AROCUTIPA MAMANI', 'R.A. N-164-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-164-2011-MDCN-T'),
(979, 4, '2011-03-22', 3, '165-2011', 'APROBAR EL PLAN ANUAL DE TRABAJO DEL ORGANO DE ADMINISTRACION DE ARCHIVOS DE LA MDCN PARA EL EJERCICIO FISCAL 2011', 'R.A. N-165-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-165-2011-MDCN-T'),
(980, 4, '2011-03-22', 3, '166-2011', 'APROBAR EL EXPEDIENTE DE CONTRATACION DEL P.S. Nº 001-2011-MDCN-T - ADQUISICION DE COMBUSTIBLE PARA EL GRIFO MUNICIPAL DE LA MDCN POR SUBASTA INVERSA ELECTRONICA POR UN MONTO DE S/. 7,930,980.47 Y POSTERIORMENTE SE PROCEDA A LA CONVOCATORIA Y AL PROCESO CORRESPONDIENTE', 'R.A. N-166-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-166-2011-MDCN-T'),
(981, 4, '2011-03-22', 3, '167-2011', 'CONFORMAR LA COMISION DE SELECCION DE PERSONAL PARA LA CONTRATACION ADMINISTRATIVA DE SERVICIOS (CAS) DEL D.L. Nº 1057 PARA EL AÑO FISCAL 2011', 'R.A. N-167-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-167-2011-MDCN-T'),
(982, 4, '2011-03-22', 3, '168-2011', 'APROBAR LA INCLUSION DE LA VERSION 2 DEL PLAN ANUAL DE CONTRATACIONES EN EL PROGRAMA VASO DE LECHE', 'R.A. N-168-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-168-2011-MDCN-T'),
(983, 4, '2011-03-23', 3, '169-2011', 'CONFORMAR LA COMISION ESPECIAL DE LIQUIDACION DEL PROYECTO "FORTALECIMIENTO DEL SERVICIO DE SEGURIDAD CIUDADANA" DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-169-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-169-2011-MDCN-T'),
(984, 4, '2011-03-23', 3, '170-2011', 'APROBAR EL EXPEDIENTE DE CONTRATACION DEL P.S. ADS Nº 002-2011-MDCN-T PARA SUMINISTRO DE CEREALES PARA EL PROGRAMA DE VASO DE LECHE DE LA MDCN POR UN MONTO DE S/. 59,847.98', 'R.A. N-170-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-170-2011-MDCN-T'),
(985, 4, '2011-03-25', 3, '171-2011', 'APROBAR LAS BASES ADMINISTRATIVAS DEL P.S. AMC POR SUBASTA INVERSA ELECTRONICA Nº 001-2011-CEP-MDCN-T - ADQUISICION DE COMBUSTIBLE PARA EL GRIFO MUNICIPAL CON UN VALOR REFERENCIAL DE S/. 7,930,980.47', 'R.A. N-171-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-171-2011-MDCN-T'),
(986, 4, '2011-03-28', 3, '172-2011', 'APROBAR LAS BASES ADMINISTRATIVAS DEL P.A. ADS Nº 001-2011-MDCN-T PARA EL SUMINISTRO DE LECHE FRESCA PARA EL PROGRAMA DE VASO DE LECHE', 'R.A. N-172-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-172-2011-MDCN-T'),
(987, 4, '2011-03-28', 3, '173-2011', 'DISPONER SE APRUEBE LA LIQUIDACION TECNICA FINANCIERA DE LA OBRA "CONSTRUCCION DE PARQUE EN LA ASOC. DE VIV. SIMON BOLIVAR DEL DISTRITO DE CIUDAD NUEVA"', 'R.A. N-173-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-173-2011-MDCN-T'),
(988, 4, '2011-03-28', 3, '174-2011', 'RECONOCER Y REGISTRAR LA NUEVA DIRECTIVA DE LA ASOC. DE DISCAPACITADOS ESTAMOS CONTIGO ADEC DEL DISTRITO DE CIUDAD NEUVA PARA EL PERIODO 2011-2012, DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-174-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-174-2011-MDCN-T'),
(989, 4, '2011-03-18', 3, '175-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON NINA TICONA PAULO RENE, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL NO ESTANDO AFECTO AL PAGO DEL IMPUESTO PREDIAL', 'R.A. N-175-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-175-2011-MDCN-T'),
(990, 4, '2011-03-30', 3, '176-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON BERLY EVARISTO GALDOS RAMIREZ RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL', 'R.A. N-176-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-176-2011-MDCN-T'),
(991, 4, '2011-03-30', 3, '177-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON FERNANDO GREGORIO QUENTA MAMANI, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL NO ESTANDO AFECTO AL PAGO DEL IMPUESTO PREDIAL', 'R.A. N-177-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-177-2011-MDCN-T'),
(992, 4, '2011-03-29', 3, '178-2011', 'DISPONER SE APRUEBE LA LIQUIDACION TECNICA FINANCIERA DE LA OBRA "MEJORAMIENTO DE VEREDAS EN EL CTE 43 DEL ASENTAMIENTO HUMANO MARGINAL DE CIUDAD NUEVA"', 'R.A. N-178-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-178-2011-MDCN-T'),
(993, 4, '2011-03-30', 3, '179-2011', 'ESTABLECER COMO NUEVO FONDO DE CAJA CHICA RENOVABLE HASTA POR EL MONTO DE S/. 2,000.00, EN EL EJERCICIO DEL AÑO FISCAL 2011 PARA ATENDER GASTOS MENUDOS URGENTES NO PROGRAMADOS PARA LA PANADERIA MUNICIPAL DE LA MDCN', 'R.A. N-179-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-179-2011-MDCN-T'),
(994, 4, '2011-03-30', 3, '180-2011', 'DESIGNAR AL ING. CIVIL WILBER CRESENCIO GUTIERREZ CAUNA ENCARGADO DE LA EJECUCION DEL "MANTENIMIENTO DEL PALACIO MUNICIPAL" DE LA MDCN', 'R.A. N-180-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-180-2011-MDCN-T'),
(995, 4, '2011-03-30', 3, '181-2011', 'APROBAR LAS BASES DEL PROCESO DE ADQUISICION ADS', 'R.A. N-181-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-181-2011-MDCN-T'),
(996, 4, '2011-03-30', 3, '182-2011', 'DESIGNAR COMO RESIDENTE DE OBRA A LA ING. NATALI CLAUDIA RAMOS RACAVARREN', 'R.A. N-182-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-182-2011-MDCN-T'),
(997, 4, '2011-03-30', 3, '183-2011', 'DESIGNAR COMO SUPERVISOR AL ING. JESUS GUIDO CHOQUEGONZA CONDORI', 'R.A. N-183-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-183-2011-MDCN-T'),
(998, 4, '2011-03-30', 3, '184-2011', 'AUTORIZAR  EL PAGO DE ELAN ROBERTO LOAIZA GALLEGOS', 'R.A. N-184-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-184-2011-MDCN-T'),
(1004, 4, '01-04-2011', 3, '190-2011', 'DECLARAR EXPEDITO LA CAPACIDAD DE LOS PRETENDIENTES', 'R.A. N-190-2011-MDCN-T.pdf', 0, '', '01-0', 'R.A. N-190-2011-MDCN-T'),
(1005, 4, '01-04-2011', 3, '191-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA POR VIAS DE REGULARIZACION', 'R.A. N-191-2011-MDCN-T.pdf', 0, '', '01-0', 'R.A. N-191-2011-MDCN-T'),
(1009, 4, '04-04-2011', 3, '195-2011', 'REGISTRAR Y RECONOCER EL NUEVO COMEDOR ', 'R.A. N-195-2011-MDCN-T.pdf', 0, '', '04-0', 'R.A. N-195-2011-MDCN-T'),
(1011, 4, '01-04-2011', 3, '197-2011', 'RECONOCER COMO DEVENGADO POR SERVICIO/Y O TRABAJO DE PAGO DEL AÑO 2010 N°00001714 A FAVOR DE LUBRICENTRO JUNIOR DE DOÑA LIDIA AYALA CHOQUE LA SUMA DE S/. 7560.00', 'R.A. N-197-2011-MDCN-T.pdf', 0, '', '01-0', 'R.A. N-197-2011-MDCN-T'),
(1012, 4, '04-04-2011', 3, '198-2011', 'DISPONER LA LIQUIDACION TECNICA FINANCIERA DE LA OBRA "MEJORAMIENTO DE LA AV. LOS PRECURSORES EN LA ASOCIACION DE VIVIENDA AMPL. CIUDAD NUEVA,VILLA EL TRIUNFO,Y 28 DE AGOSTO DE CIUDAD CIUDAD NUEVA.', 'R.A. N-198-2011-MDCN-T.pdf', 0, '', '04-0', 'R.A. N-198-2011-MDCN-T'),
(1013, 4, '05-04-2011', 3, '199-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON JUAN MAMANI ALDAZOSA Y DOÑA NATI MERCEDES VILCA', 'R.A. N-199-2011-MDCN-T.pdf', 0, '', '05-0', 'R.A. N-199-2011-MDCN-T'),
(1014, 4, '2011-04-16', 3, '200-2011', 'APROBAR Y FORMALIZAR MODIFICACIONES PROSUPUESTARIAS A NIVEL FUNCIONAL PROGRAMATICO', 'R.A. N-200-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-200-2011-MDCN-T'),
(1015, 4, '2011-04-06', 3, '201-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON HILARIO VILCA ALBERTO RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL', 'R.A. N-201-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-201-2011-MDCN-T'),
(1016, 4, '2011-04-06', 3, '202-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADO POR DON BENITO QQUEHUE HUANCARA RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL', 'R.A. N-202-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-202-2011-MDCN-T'),
(1017, 4, '2011-04-06', 3, '203-2011', 'DECLARAR IMPROCEDENTE EL PAGO RESPECTO DE LA LIQUIDACION TECNICO FINANCIERA DE LA OBRA CONSTRUCCION DEL LOCAL MULTIUSOS COMITE 17 DEL DISTRITO DE CIUDAD NUEVA Y RECONSTRUCCION CAMPO DEPORTIVO Y PARQUE CTE 27 DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-203-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-203-2011-MDCN-T'),
(1018, 4, '2011-04-06', 3, '204-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR A DOÑA SEBASTIANA ZAPANA VICHATA LA LICENCIA MUNICIPAL DE APERTURA Y FUNCIONAMIENTO PARA UN LOCAL DESTINADO A "VENTA DE GAS"', 'R.A. N-204-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-204-2011-MDCN-T'),
(1019, 4, '2011-04-06', 3, '205-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR A DOÑA FLORA QUISPE OCHOA LA LICENCIA MUNICIPAL DE FUNCIONAMIENTO PARA UN LOCAL DESTINADO A "HOSPEDAJE"', 'R.A. N-205-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-205-2011-MDCN-T'),
(1020, 4, '2011-04-06', 3, '206-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR A DOÑA MARIA ISABEL YABAR MONTALICO, LA LICENCIA MUNICIPAL DE APERTURA Y FUNCIONAMIENTO', 'R.A. N-206-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-206-2011-MDCN-T'),
(1021, 4, '2011-04-06', 3, '207-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA PERIODO 2011-2012 DEL CTE 17 DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-207-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-207-2011-MDCN-T'),
(1022, 4, '2011-04-06', 3, '208-2011', 'DESIGNAR COMO MIEMBRO VEEDOR EN REPRESENTACION DEL ALCALDE DE LA MDCN AL ING. JESUS GUIDO CHOQUEGONZA CONDORI', 'R.A. N-208-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-208-2011-MDCN-T'),
(1023, 4, '2011-04-06', 3, '209-2011', 'DESIGNAR COMO RESPONSABLE DE PROYECTOS A LA ING. NATALY CLAUDIA RAMOS RECAVARREN', 'R.A. N-209-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-209-2011-MDCN-T'),
(1024, 4, '2011-04-07', 3, '210-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON: EUSEBIO NINA CALIZAYA, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIA NO ESTANTO AFECTO AL PAGO DEL IMPUESTO PREGIAL A PARTIR DEL II TRIMESTRE DEL AÑO 2011........', 'R.A. N-210-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-210-2011-MDCN-T'),
(1025, 4, '2011-04-06', 3, '211-2011', 'DESESTIMAR EL RECURSO DE APELACION RESPECTO DEL CONTRATO DE CONSULTORIA DE OBRA POR INCUMPLIMIENTO.......', 'R.A. N-211-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-211-2011-MDCN-T'),
(1026, 4, '2011-04-07', 3, '212-2011', 'DISPONER SE APRUEBE LA LIQUIDACION TECNICA FINANCIERA DE LA OBRA ASFALTADO DE LA ASOC. DE VIVIENDA 28 DE AGOSTO DEL COMITE 1, 2, 3, 4, 5 Y 7 DEL DISTRITO DE CIUDAD NUEVA EN EL AÑO 2007.....', 'R.A. N-212-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-212-2011-MDCN-T'),
(1027, 4, '2011-04-07', 3, '213-2011', 'APROBAR LA INCORPORACION DE LOS SALDOS DE BALANCE DEL AÑO FISCAL 2010 MEDIANTE CREDITO SUPLEMENTARIO, SEGUN FUENTE DE FINANCIAMIENTO QUE SE PRESENTA EN EL CUADRO QUE FORMA PARTE DE LA PRESENTE RESOLUCION......', 'R.A. N-213-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-213-2011-MDCN-T'),
(1028, 4, '2011-04-07', 3, '214-2011', 'AUTORIZAR EL ENCARGO INTERNO A FAVOR DEL SEÑOR ELAN ROBERTO LOAIZA GALLEGOS SUB GERENTE DE TESORERIA PARA EL COBRO DE LA SUMA DE DINERO DE S/. 1,086.00 NUEVOS SOLES......', 'R.A. N-214-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-214-2011-MDCN-T'),
(1029, 4, '2011-04-08', 3, '215-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA ORGANIZACION SOCIAL MUJERES EMPRENDEDORAS SOLIDARIAS CONSTITUIDA DENTRO DEL DISTRITO DE CIUDAD NUEVA, CON LOS SIGUIENTES MIEMBROS......', 'R.A. N-215-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-215-2011-MDCN-T'),
(1030, 4, '2011-04-18', 3, '216-2011', 'RECONOCER COMO DEVENGADO POR CONCEPTO DE ORDEN DE COMPRA GUIA DE INTERNAMIENTO N| 00001682 DE FECHA 03 DE AGOSTO DEL AÑO 2009........', 'R.A. N-216-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-216-2011-MDCN-T'),
(1031, 4, '2011-04-11', 3, '217-2011', 'AUTORIZAR A LA SUB. GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR A DON, JAVIER CONDORI LA LICENCIA MUNICIPAL DE FUNCIONAMIENTO PARA UN LOCAL DESTINADO A "CENTRO ODONTOLOGICO".......', 'R.A. N-217-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-217-2011-MDCN-T'),
(1032, 4, '2011-04-12', 3, '218-2011', 'ARTICULO UNICO: RECONOCER Y REGISTRAR LA NUEVA DIRECTIVA ASOC. DE COMERCIANTES "EMANCIPACION" ROPA Y CALZADO DE 2DO USO......', 'R.A. N-218-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-218-2011-MDCN-T'),
(1033, 4, '2011-04-15', 3, '219-2011', 'APROBAR EL EXPEDIENTE DE CONTRATACION PARA LA COMPRA DE TUBERIAS PVC PARA LA OBRA "AMPLIACION DEL SISTEMA DE AGUA POTABLE Y ALCANTARILLADO EN LA ASOC DE VIVIENDA DIOS ES AMOR, NEYSER LLACSA, 26 DE ENERO Y 23 DE ENERO DEL DISTRITO DE CIUDAD NUEVA".', 'R.A. N-219-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-219-2011-MDCN-T'),
(1034, 4, '2011-04-15', 3, '220-2011', 'APROBAR, LAS BASES ADMINISTRATIVAS DEL PROCESO DE SELECCION ADJUDICACION DE MENOS CUANTIA mac N| 0002-2011-CE-MDCN-T PARA LA OBRA "AMPLIACION DEL SISTEMA DE AGUA POTABLE Y ALCANTARILLADO EN LA ASOC. DE VIVIENDA DIOS ES AMOR".', 'R.A. N-220-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-220-2011-MDCN-T'),
(1035, 4, '2011-04-13', 3, '221-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADO POR DOÑA: JOSE ROSENDO CAMA CAMA, RESPECTO A LA DEDUCCION DEL PAGO DEL IMPUESTO PREDIAL NO ESTANDO AFECTO AL PADO DEL IMPUESTRO PREDIAL A PARTIR DEL II TRIMESTRE DEL AÑO 2011.', 'R.A. N-221-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-221-2011-MDCN-T'),
(1036, 4, '2011-04-15', 3, '222-2011', 'RECONOCER Y REGISTRAR LA JUNTA DIRECTIVA DE LA ASOCIACION "MUJERES TRABAJADORAS Y EMPRENDEDORAS DE GREGORIO ALBARRACIN".', 'R.A. N-222-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-222-2011-MDCN-T'),
(1037, 4, '2011-04-18', 3, '223-2011', 'DEJAR SIN EFECTO LA RESOLUCION DE ALCALDIA N| 013-2011 DE FECHA 03 DE ENERO DEL 2011 SOBRE LA DESIGNACION AL SEÑOR ING. HUGO ROLANDO AVENDAÑO QUISPE.', 'R.A. N-223-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-223-2011-MDCN-T'),
(1038, 4, '2011-04-18', 3, '224-2011', 'DESIGNAR A PARTIR DE LA FECHA AL SEÑOR LUIS CHAMBILLA MAMANI COMO ENCARGADO DE LA UNIDAD DE EQUIPO MECANICO DE LA MDCN.', 'R.A. N-224-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-224-2011-MDCN-T'),
(1039, 4, '2011-04-18', 3, '225-2011', 'DELEGAR AL SEÑOR REGIDOR ROGELIO PILCO CHIPANA LAS FUNCIONES POLITICAS LOS DIAS 19 Y 20 DEL PRESENTE AÑO.', 'R.A. N-225-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-225-2011-MDCN-T');
INSERT INTO `normas` (`idnor`, `tipodocu`, `fechaemi`, `depeorig`, `numdoc`, `referenc`, `nomfile`, `visitas`, `digitador`, `anno`, `detalle`) VALUES
(1040, 4, '2011-04-19', 3, '226-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA DE LA ASOC. DE VIV. "CESAR VALLEJO" II ETAPA', 'R.A. N-226-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-226-2011-MDCN-T'),
(1041, 4, '2011-04-19', 3, '227-2011', 'RECONOCER Y REGISTRAR LA JUNTA DIRECTIVA "CLUB DE MADRES VIRGEN DE CHAPI DEL COMITE 44" PARA EL PERIODO 2010-2012', 'R.A. N-227-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-227-2011-MDCN-T'),
(1042, 4, '2011-04-25', 3, '228-2011', 'RECONOCER Y REGISTRAR LA NUEVA JUNTA DIRECTIVA PARA EL PERIODO 2010-2011 DE LA ASOC. DE JUNTA DE PROPIETARIOS DEL MERCADO ZONAL DE CIUDAD NUEVA DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N-228-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-228-2011-MDCN-T'),
(1043, 4, '2011-03-31', 3, '229-2011', 'APROBAR EL EXPEDIENTE TECNICO DE ACTIVIDAD DEL "PLAN DE TRABAJO DEL PROYECTO DE INVERSION PUBLICA, AMPLIACION Y MEJORAMIENTO DEL SERVICIO DE SEGURIDAD CIUDADANA EN EL DISTRITO DE CIUDAD NUEVA, TACNA-TACNA"', 'R.A. N-229-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-229-2011-MDCN-T'),
(1045, 4, '2011-04-15', 3, '231-2011', 'DESIGNAR COMO COORDINADOR AL SR. GREGORIO RODRIGUEZ AYCA DEL PROYECTO "AMPLIACION Y MEJORAMIENTO DEL SERVICIO DE SEGURIDAD CIUDADANA EN EL DISTRITO DE CIUDAD NUEVA"', 'R.A. N-231-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-231-2011-MDCN-T'),
(1046, 4, '2011-01-21', 3, '232-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADO POR DON LUCIO COLQUE SANDOVAL', 'R.A. N-232-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-232-2011-MDCN-T'),
(1047, 4, '2011-04-25', 3, '238-2011', 'DESIGNAR, COMO MIEMBRO VEEDOR PARA EL MANTENIMIENTO DE LA INSTITUCION EDUCATIVA "CUNA JARDIN MUNICIPAL" DEL DISTRITO DE CIUDAD NUEVA, AL ARQ. JOSE QUISPE CHOQUE EN REPRESENTACION DE LA MDCN', 'R.A. N-238-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-238-2011-MDCN-T'),
(1198, 4, '2011-06-06', 3, '319-2011', 'AUTORIZAR A LA SUB GERENCIA DE GESTION TRIBUTARIA PARA QUE PROCEDA A LA ANULACION DE LA LICENCIA DE FUNCIONAMIENTO No 0018-2010-MDCN-T', 'R.A. N 319-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 319-2011-MDCN-T'),
(1199, 4, '2011-06-10', 3, '320-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA A OTORGAR A LA SRA DELAI QUISPE PALOMINO LA LICENCIA MUNICIPAL DE APERTURA Y FUNCIONAMIENTO', 'R.A. N 320-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 320-2011-MDCN-T'),
(1200, 4, '2011-06-07', 3, '321-2011', 'RECONOCER Y REGISTRAR EL NUEVO COMEDOR Y JUNTA DIRECTIVA PARA EL PERIODO 2011-2012 DE "VIRGEN DE LA CANDELARIA ALTO OBRAJE" DEL DISTRITO DE CIUDAD NUEVA ', 'R.A. N 321-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 321-2011-MDCN-T'),
(1201, 4, '2011-06-10', 3, '322-2011', 'AUTORIZAR EL VIAJE AL SR. ALCALDE ABOG. HUGO CECILIO MITA ALANOCA Y EL SR. GERENTE MUNICIPAL ABOG. HUGO HERNAN ADUVIRI SOTO DE LA MDCN A LA CIUDAD DE LIMA, LOS DIAS 12, 13 Y 14 DE JUNIO DEL AÑO 2011', 'R.A. N 322-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 322-2011-MDCN-T'),
(1202, 4, '2011-06-10', 3, '323-2011', 'DESIGNAR A PARTIR DE LA FECHA A DOÑA CPC MAGDALENA MARTHA MAMANI CHANA COMO INSPECTOR ', 'R.A. N 323-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 323-2011-MDCN-T'),
(1203, 4, '2011-06-17', 3, '324-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA POR DON PEDRO ALEJANDRINO GRANDA GORDILLO', 'R.A. N 324-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 324-2011-MDCN-T'),
(1204, 4, '2011-06-15', 3, '325-2011', 'DESIGNAR A PARTIR DEL 15/06/2011 AL SR. CPC EFREN BASILIO MENDOZA INCHUÑA COMO SUB GERENTE DE TESORERIA, EN REEMPLAZO DEL SR. CPC MIGUEL ANGEL SANTOS ARRIAGA', 'R.A. N 325-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 325-2011-MDCN-T'),
(1206, 4, '2011-06-10', 3, '327-2011', 'DEJAR SIN EFECTO LA RESOLUCION DE ALCALDIA No 033-2011 DE FECHA 11 DE ENERO ', 'R.A. N 327-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 327-2011-MDCN-T'),
(1282, 4, '2011-06-20', 3, '344-2011-A', 'DESIGNAR COMO SUPERVISOR AL ING. CIVIL JESUS GUIDO CHOQUEGONZA CONDORI DEL PROYECTO "AMPLIACION Y MEJORAMIENTO DEL SERVICIO DE SEGURIDAD CIUDADANA EN EL DISTRITO DE CIUDAD NUEVA"', 'R.A. N 344-A-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 344-A-2011-MDCN-T'),
(1208, 4, '2011-06-10', 3, '329-2011', 'DEJAR SIN EFECTO AL RESOLUCION DE ALCALDIA No 025-2011 DE LA FECHA 11 DE ENERO DEL 2011', 'R.A. N 329-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 329-2011-MDCN-T'),
(1209, 4, '2011-06-10', 3, '330-2011', 'DELEGAR AL SEÑOR REGIDOR BENIGNO PALOMINO CHOQUE LAS FUNCIONES POLITICAS LOS DIAS 13 Y 14 DE JUNIO DEL AÑOR EN CURSO ', 'R.A. N 330-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 330-2011-MDCN-T'),
(1210, 4, '2011-06-08', 3, '331-2011', 'RECONOCER Y REGISTRAR LA JUNTA DIRECTIVA PARA EL PERIODO 2011-2012 DE LA ASOCIACION "AMPLIACION 26 DE ENERO" DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N 331-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 331-2011-MDCN-T'),
(1211, 4, '2011-06-13', 3, '332-2011', 'RECONCER  Y REGISTRAR LA JUNTA DIRECTIVA PARA EL PERIODO 2011-2013 DE LA "ASOCIACION DE VIVIENDA 27 DE JULIO PROMUVI CONO NORTEE "', 'R.A. N 332-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 332-2011-MDCN-T'),
(1212, 4, '2011-06-15', 3, '333-2011', 'DEJAR SIN EFECTO LA RESOLUCION DE ALCALDIA No 002-2011-MDCN-T DEL PRESENTE AÑO', 'R.A. N 333-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 333-2011-MDCN-T'),
(1213, 4, '2011-06-15', 3, '334-2011', 'DESIGNAR A PARTIR DEL 16 DE JUNIO DEL AÑO AL ABOGADO JESUS JUAN TAPIA LUCERO COMO GERENTE MUNICIPAL DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 334-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 334-2011-MDCN-T'),
(1214, 4, '2011-06-15', 3, '335-2011', 'DEJAR SIN EFECTO LA RESOLUCION DE ALCALDIA No 007-2011-MDCN-T DEL PRESENTE AÑO', 'R.A. N 335-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 335-2011-MDCN-T'),
(1215, 4, '2011-06-15', 3, '336-2011', 'DESIGNAR A PARTIR DE LA FECHA A DOÑA BERTHA BEATRIZ CALANI CUITO COMO SUB GERENTE DE LOGISTICA Y RECURSOS AUXILIARES DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 336-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 336-2011-MDCN-T'),
(1216, 4, '2011-06-15', 3, '337-2011', 'DESIGNAR A PARTIR DE LA FECHA AL SEÑOR ALEXEY VARGAS TIPULA SUB GERENTE DE GESTION Y SANEAMIENTO AMBIENTAL DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 337-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 337-2011-MDCN-T'),
(1217, 4, '2011-06-15', 3, '338-2011', 'DESIGNAR A PARTIR DE LA FECHA AL ING YURI NILO PACARI MAMANI COMO SUB GERENTE DE ESTUDIOS Y PROYECTOS DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 338-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 338-2011-MDCN-T'),
(1218, 4, '2011-06-15', 3, '339-2011', 'DESIGNAR A PARTIR DEL 16 DE JUNIO DEL AÑO EN CURSO AL ABOG. HUGO HERNAN ADUVIRI SOTO, COMO GERENTE DE ASESORIA JURIDICA DE LA MDCN', 'R.A. N 339-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 339-2011-MDCN-T'),
(1560, 4, '2011-06-15', 3, '339-2011', 'DESIGNAR A PARTIR DEL 16 DE JUNIO DEL AÑO EN CURSO AL ABOG. HUGO HERNAN ADUVIRI SOTO, COMO GERENTE DE ASESORIA JURIDICA DE LA MDCN', '5989D.A. N-339-2011-MDCN-TRA339.pdf', 0, '', '2011', 'R.A. N-339-2011-MDCN-T'),
(1220, 4, '2011-06-13', 3, '341-2011', 'DISPONER LA HABILITACION DE FONDOS MEDIANTE ENCARGO INTERNO, POR LA SUMA DE S/.2000 PARA LOS GASTOS QUE IMPLICA LA COORDINACION, CAPACITACION Y ORGANIZACION DEL PROYECTO DE MEJORAMIENTO DE LOS PROCESOS DE GESTION DE LA MDCN', 'R.A. N 341-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 341-2011-MDCN-T'),
(1221, 4, '2011-06-16', 3, '342-2011', 'OTORGAR LA LICENCIA POR MATERNIDAD EN FORMA ACUMULADA PRE Y POST NATAL POR NOVENTA DIAS A DOÑA NOHELIA ALMONTE MAMANI', 'R.A. N 342-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 342-2011-MDCN-T'),
(1222, 4, '2011-06-16', 3, '343-2011', 'DESIGNAR A PARTIR DEL 17 DE JUNIO DEL AÑO 2011 AL SR. ARQ. IVAN JESUS CHAMBE VEGA, COMO SUB GERENTE DE SUPERVISION Y LIQUIDACION DE OBRAS DE LA MDCN', 'R.A. N 343-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 343-2011-MDCN-T'),
(1223, 4, '2011-06-20', 3, '344-2011', 'APROBAR LA INCORPORACION DE FONDOS PUBLICOS, CORRESPONDIENTE A LA MDCN, POR EL MONTO DE S/.580000, SEGUN FUENTE DE FINANCIAMIENTO QUE SE PRESENTA EN LOS ANEXOS ADJUNTOS A LA PRESENTE RESOLUCION', 'R.A. N 344-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 344-2011-MDCN-T'),
(1224, 4, '2011-06-22', 3, '345-2011', 'DISPONER LA HABILITACION DE FONDOS MEDIANTE ENCARGO INTERNO PARA GASTOS QUE IMPLICA LA REALIZACION DE LAS ACTIVIDADES DE LOS PROYECTOS ', 'R.A. N 345-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 345-2011-MDCN-T'),
(1225, 4, '2011-06-23', 3, '346-2011', 'RESTRUCTURAR LA COMPOSICION DE LOS INTEGRANTES DEL COMITE DE ADMINISTRACION DE FONDOS DE ASISTENCIA Y ESTIMULO DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA ', 'R.A. N 346-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 346-2011-MDCN-T'),
(1226, 4, '2011-06-24', 3, '347-2011', 'DESIGNAR COMO INTEGRANTE DEL COMITE VEEDOR PARA EL PROGRAMA DE MANTENIMIENTO DE LOCALES ESCOLARES DE LA INSTITUCION EDUCATIVA No 42251 "SIMON BOLIVAR"', 'R.A. N 347-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 347-2011-MDCN-T'),
(1227, 4, '2011-06-30', 3, '348-2011', 'AUTORIZAR A LA SUB GERENCIA DE GESTION TRIBUTARIA PARA QUE PROCEDA A OTORGAR LA LICENCIA DE ANUNCIO Y PUBLICIDAD EXTERIOR A LA EMPRESA "PRO MUJER INC."', 'R.A. N 348-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 348-2011-MDCN-T'),
(1228, 4, '2011-06-27', 3, '349-2011', 'AUTORIZAR A LA SEÑORA REYNA M. CONDORI LIMACHE PARA EL USO DE LA EXPLANADA DEL ESTADIO DE LA BOMBONERA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA ', 'R.A. N 349-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 349-2011-MDCN-T'),
(1229, 4, '2011-06-27', 3, '350-2011', 'RECONOCER Y REGISTRAR LA JUNTA DIRECTIVA PARA EL PERIODO 2011-2013 DE LA "ASOCIACION DE VIVIENDA MARISCAL NIETO" DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N 350-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 350-2011-MDCN-T'),
(1230, 4, '2011-06-30', 3, '351-2011', 'APROBAR AL COMITE DE SANEAMIENTO CONTABLE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA ', 'R.A. N 351-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 351-2011-MDCN-T'),
(1231, 4, '2011-07-01', 3, '352-2011', 'DESIGNAR A PARTIR DEL 01 DE JULIO DEL AÑO EN CURSO AL ABOGADO LORENZO CABANA PONCE COMO GERENTE DE ASESORIA JURIDICA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 352-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 352-2011-MDCN-T'),
(1232, 4, '2011-07-01', 3, '353-2011', 'DESIGNAR A PARTIR DEL 01 DE JULIO DEL AÑO EN CURSO AL ABOGADO PEDRO MIGUEL GUILLERMO ACHO, COMO SECRETARIO GENERAL DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 353-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 353-2011-MDCN-T'),
(1233, 4, '2011-07-01', 3, '354-2011', 'ACEPTAR LA RENUNCIA AL CARGO COMO GERENTE DE ASESORIA JURIDICA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA, FECHA 30 DE JUNIO DEL PRESENTE MES', 'R.A. N 354-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 354-2011-MDCN-T'),
(1234, 4, '2011-07-01', 3, '355-2011', 'DISPONER LA MODIFICACIONES DE LA RESOLUCION DE ALCALDIA No 0051-2011-MDCN-T', 'R.A. N 355-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 355-2011-MDCN-T'),
(1235, 4, '2011-07-01', 3, '356-2011', 'DISPONER LA HABILITACION DE FONDOS MEDIANTE ENCARGO INTERNO', 'R.A. N 356-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 356-2011-MDCN-T'),
(1236, 4, '2011-07-04', 3, '357-2011', 'MODIFICAR LA COMPOSICION DE MIEMBRO TITULAR DE LOS RESPONSABLES DEL MANEJO PARA EL CAMBIO DE REGISTRO DE FIRMAS Y EL MANEJO DE LAS CUENTAS BANCARIAS DE LOS ORGANOS DESCENTRALIZADOS DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 357-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 357-2011-MDCN-T'),
(1237, 4, '2011-07-04', 3, '358-2011', 'FELICITAR A NOMBRE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA POR LA DESTACADA LABOR QUE VIENEN CUMPLIENDO LOS DOCENTES DE LA INSTITUCION EDUCATIVA MANUEL A. ODRIA', 'R.A. N 358-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 358-2011-MDCN-T'),
(1238, 4, '2011-07-05', 3, '359-2011', 'DESIGNAR A PARTIR DE LA FECHA AL CPC. LUZMILA CARAZAS TORRES COMO SUB GERENTE DE CONTABILIDAD DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 359-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 359-2011-MDCN-T'),
(1239, 4, '2011-07-04', 3, '360-2011', 'FELICITAR A NOMBRE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA POR LA DESTACADA REPRESENTACION DEL FUSILAMIENTO DE JOSE OLAYA BALANDRA A LA INSTITUCION EDUCATIVA MANUEL A. ODRIA', 'R.A. N 360-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 360-2011-MDCN-T'),
(1240, 4, '2011-07-05', 3, '361-2011', 'DESIGNAR A PARTIR DE LA FECHA AL CPC. ELAN ROBERTO LOAYZA GALLEGOS COMO SUB GERENTE DE LOGISTICA Y SERVICIOS AUXILIARES DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 361-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 361-2011-MDCN-T'),
(1241, 4, '2011-07-05', 3, '362-2011', 'DESIGNAR A PARTIR DE LA FECHA AL CPC YOEL BERNABEL ARPASI VALERIANO COMO COORDINADOR RESPONSABLE DEL D.S. 190-2010-EF Y D.S. 183-2010-EF DEL PROGRAMA DE MODERNIZACION ', 'R.A. N 362-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 362-2011-MDCN-T'),
(1244, 4, '2011-07-06', 3, '365-2011', 'DESIGNAR AL ABOG. PEDRO MIGUEL GUILLERMO ACHO, JEFE DE LA OFICINA DE SECRETARIA GENERAL DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA COMO FEDATARIO SUPLENTE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', 'R.A. N 365-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 365-2011-MDCN-T'),
(1245, 4, '2011-07-06', 3, '366-2011', 'RECONOCER Y REGISTRAR A LA NUEVA JUNTA DIRECTIVA PARA EL PERIODO 2011-2012 DEL COMEDOR "NUEVA ESPERANZA" DEL DISTRITO DE CIUDAD NUEVA ', 'R.A. N 366-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 366-2011-MDCN-T'),
(1246, 4, '2011-07-06', 3, '367-2011', 'FELICITAR A NOMBRE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA POR LA DESTACADA LABOR EDUCATIVA A LOS DOCENTES QUE LABORAN EN LAS INSTITUCION EDUCATIVAS', 'R.A. N 367-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 367-2011-MDCN-T'),
(1247, 4, '2011-07-07', 3, '368-2011', 'APROBAR LA REGULARIZACION DE HABILITACION URBANA "PROGRAMA MUNICIPAL DE VIVIENDA-PROMUVI DE LA ASOCIACION DE VIVIENDA 27 DE JULIO" CONO NORTE, PROPIEDAD DE LA MUNICIPALIDAD PROVINCIAL DE TACNA', 'R.A. N 368-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 368-2011-MDCN-T'),
(1248, 4, '2011-07-08', 3, '369-2011', 'CESAR EN EL CARGO LA CPC. DULIA LOAYZA GUTIERREZ COMO JEFE DE LA OFICINA DEL ORGANO DE CONTROL INSTITUCIONAL ', 'R.A. N 369-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 369-2011-MDCN-T'),
(1252, 4, '2011-07-11', 3, '373-2011', 'APROBAR EL EXPEDIENTE TECNICO DEL PROYECTO "MEJORAMIENTO DE LOS SERVICIOS DE LA ASISTENCIA ALIMENTARIA A LA POBLACION VULNERABLE EN LA ASOCIACION DE VIVIENDA 26 DE ENERO DEL DISTRITO DE CIUDAD NUEVA"', 'R.A. N 373-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 373-2011-MDCN-T'),
(1253, 4, '2011-07-12', 3, '374-2011', 'APROBAR LA RECOMPOSICION DEL COMITE ESPECIAL PERMANENTE PARA EL PROCESO DE ADJUDICACION DE MENOR CUANTIA Y ADJUDICACION DIRECTA DEL PROCESO DE ADQUISICION DE BIENES Y CONTRATACION DE SERVICIOS', 'R.A. N 374-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 374-2011-MDCN-T'),
(1254, 4, '2011-07-12', 3, '375-2011', 'DESIGNAR COMO INSPECTOR DE OBRA AL ARQUITECTO JUAN CARLOS SANTOS DUARTEDE LA OBRA "CONSTRUCCION Y EQUIPAMIENTO DE LOCAL MULTIUSO EN LA ASOC. VIV. 7 DE JUNIO DISTRITO DE CIUDAD NUEVA"', 'R.A. N 375-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 375-2011-MDCN-T'),
(1256, 4, '2011-07-12', 3, '377-2011', 'MODIFICAR EL ARTICULO PRIMERO DE LA RESOLUCION DE ALCALDIA No. 103-2011-MDCN-T DE FECHA 11 DE FEBRERO DEL PRESENTE AÑO', 'R.A. N 377-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 377-2011-MDCN-T'),
(1257, 4, '2011-07-12', 3, '378-2011', 'MODIFICAR EL ARTICULO PRIMERO DE LAS RESOLUCION DE ALCALDIA No 154-2011-MDCN-T DE FECHA 15 DE MARZO DEL PRESENTE AÑO', 'R.A. N 378-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 378-2011-MDCN-T'),
(1258, 4, '2011-07-13', 3, '379-2011', 'AUTORIZAR EL PAGO A FAVOR DEL SEÑOR CPC. EFREN MENDOZA INCHUÑA-SUB GERENTE DE TESORERIA ', 'R.A. N 379-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 379-2011-MDCN-T'),
(1259, 4, '2011-07-13', 3, '380-2011', 'AUTORIZAR EL PAGO A FAVOR DEL SEÑOR CPC. EFREN MENDOZA INCHUÑA-SUB GERENTE DE TESORERIA  ', 'R.A. N 380-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 380-2011-MDCN-T'),
(1260, 4, '2011-07-13', 3, '381-2011', 'AUTORIZAR EL PAGO A FAVOR DEL SEÑOR CPC. EFREN MENDOZA INCHUÑA-SUB GERENTE DE TESORERIA', 'R.A. N 381-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 381-2011-MDCN-T'),
(1261, 4, '2011-07-13', 3, '382-2011', 'RECONOCER COMO MIEMBRO DEL COMITE DE VIGILANCIA DEL PROCESO DEL PRESUPUESTO PARTICIPATIVO ', 'R.A. N 382-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 382-2011-MDCN-T'),
(1262, 4, '2011-07-13', 3, '383-2011', 'RECONOCER Y REGISTRAR LA JUNTA DIRECTIVA PARA EL PERIODO 2011-2012 DE LA ASOCIACION ADULTO MAYOR"NUEVO AMANECER CIUDAD NUEVA" DEL DISTRITO DE CIUDAD NUEVA', 'R.A. N 383-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 383-2011-MDCN-T'),
(1263, 4, '2011-07-14', 3, '384-2011', 'DESIGNAR COMO INSPECTOR DE OBRA AL ARQUITECTO JUAN CARLOS SANTOS DUARTE DE LA OBRA "MEJORAMIENTO DE LOS SERVICIOS DE ASISTENCIA ALIMENTARIA A LA POBLACION VULNERABLE EN LA ASOCIACION DE VIVIENDA 26 DE ENERO - DISTIRITO DE CIUDAD NUEVA"', 'R.A. N 384-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 384-2011-MDCN-T'),
(1264, 4, '2011-07-14', 3, '385-2011', 'DISPONER SE APRUBE LA LIQUIDACION TECNICA FINANCIERA DE LA OBRA:"AMPLIACION DEL SISTEMA DE AGUA POTABLE Y ALCANTARILLADO EN ASOC. VIVIENDA DIOS ES AMOR - DISTRITO DE CIUDAD NUEVA"', 'R.A. N 385-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 385-2011-MDCN-T'),
(1265, 4, '2011-07-15', 3, '386-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON VICTOR ALFONSO CCAHUA QUISPE Y GEOVANNA MARIA MIRANDA MENDOZA', 'R.A. N 386-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 386-2011-MDCN-T'),
(1266, 4, '2011-07-15', 3, '387-2011', 'FELICITARA NOMBRE DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA POR LA DESTACADA LABOR EDUCATIVA A LOS DOCENTES QUE LABORAN EN LA INSTITUCION EDUCATIVA MARISCAL CACERES', 'R.A. N 387-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 387-2011-MDCN-T'),
(1267, 4, '2011-07-15', 3, '388-2011', 'RECONOCER LA LABOR PERIODISTICA DEL SR. FRANCISCO VICENTE CUEVA VERA, PRESIDENTE DE LA FEDERACION DE PERIODISTA DE TACNA', 'R.A. N 388-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 388-2011-MDCN-T'),
(1268, 4, '2011-07-15', 3, '389-2011', 'RECONOCER LA LABOR PERIODISTICA DEL SR. CARLOS TICONA OVIEDO', 'R.A. N 389-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 389-2011-MDCN-T'),
(1269, 4, '2011-07-15', 3, '390-2011', 'DELEGAR AL SEÑOR REGIDOR ELEMER JOEL FERNANDEZ CHAPARRO LAS FUNCIONES POLITICAS LOS DIAS 18,19 Y 20 DE JULIO DEL AÑO', 'R.A. N 390-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 390-2011-MDCN-T'),
(1270, 4, '2011-07-18', 3, '391-2011', 'DISPONER LA HABILITACION DE FONDOS MEDIANTE ENCARGO INTERNO', 'R.A. N 391-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 391-2011-MDCN-T'),
(1271, 4, '2011-07-18', 3, '392-2011', 'DEJAR SIN EFECTO LA RESOLUCION DE ALCALDIA No 390-2011-MDCN-T ', 'R.A. N 392-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 392-2011-MDCN-T'),
(1272, 4, '2011-07-19', 3, '393-2011', 'AUTORIZAR EL ENCARGO INTERNO A NOMBRE DEL SEÑOR TIBURCIO MAMANI QUIÑONEZ - SUB GERENTE DE EDUCACION CULTURA Y DEPORTE', 'R.A. N 393-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 393-2011-MDCN-T'),
(1273, 4, '2011-07-19', 3, '394-2011', 'DESIGNAR AL ABOGADO PEDRO GUILLERMO ACHO, JEFE DE LA OFICINA DE SECRETARIA GENERAL DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA ', 'R.A. N 394-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 394-2011-MDCN-T'),
(1274, 4, '2011-07-20', 3, '395-2011', 'APROBAR EL EXPEDIENTE TECNICO DEL PROYECTO: "COSNTRUCCION DE PISTAS Y VEREDAS EN LA ASOCIACION DE VIVIENDA ALTO BERLIN, DISTRITO DE CIUDAD NUEVA-TACNA" ', 'R.A. N 395-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 395-2011-MDCN-T'),
(1275, 4, '2011-07-22', 3, '396-2011', 'DECLARAR PROCEDENTE, LA SOLICITUD PRESENTADA POR DON LEANDRO CHACHAQUE ARHUATA', 'R.A. N 396-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 396-2011-MDCN-T'),
(1276, 4, '2011-07-22', 3, '397-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA POR DON. GUILLERMO PACO MAMANI', 'R.A. N 397-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 397-2011-MDCN-T'),
(1277, 4, '2011-07-20', 3, '398-2011', 'DESIGNAR COMO INSPERCTOR DE OBRA AL ING. CIVIL OSCAR LUIS LICOTA COAQUIRA DE LA OBRA "CONSTRUCCION DE LA INFRAESTRUCTURA VIAL DE PISTAS Y VEREDAS EN LAS ASOC. NUEVA BARRANQUILLA Y WARI DE CIUDAD NUEVA-TACNA"', 'R.A. N 398-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 398-2011-MDCN-T'),
(1308, 4, '2011-07-21', 3, '400-2011', 'DESIGNAR COMO INSPECTOR DE OBRA AL INGENIERO CIVIL OSCAR LUIS LICOTA COAQUIRA', 'R.A. N 400-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 400-2011-MDCN-T'),
(1311, 4, '2011-07-22', 3, '403-2011', 'RECONOCER COMO DEVENGADOS LA ORDEN DE SERVICIO 1125 DEL 3/9/2011 DEL EJERCICIO 2010 A FAVOR DE LA EMPRESA INVERSIONES BUCHO EIRL', 'R.A. N 403-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 403-2011-MDCN-T'),
(1314, 4, '2011-07-22', 3, '406-2011', 'RECONOCER COMO REEMBOLSO LA SUMA DE DINERO DE S/.55,836.00 UTILIZADO PARA LA REALIZACION DEL CARNAVAL COSTUMBRES DE MI PUEBLO CIUDAD NUEVA Y ELECCION DE LA MANCHAQ PANKARITA 2011', 'R.A. N 406-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 406-2011-MDCN-T'),
(1316, 4, '2011-07-22', 3, '408-2011', 'DECLARAR PROCEDENTE LO SOLICITADO POR DON TICONA VARGAS JULVER MIGUEL ELIAS, POR EL MONTO DE S/.30.60', 'R.A. N 408-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 408-2011-MDCN-T'),
(1317, 4, '2011-07-22', 3, '409-2011', 'DESIGNAR A PARTIR DEL 22/7/2011 AL SR. ARQ. RICARDO FRANK PAULLO PEREZ CON CAP 10798 COMO ENCARGADO DEL AREA DE MANTENIMIENTO DE LA MDCN', 'R.A. N 409-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N 409-2011-MDCN-T'),
(1561, 4, '2011-06-15', 3, '340-2011', 'DESIGNAR A PARTIR DEL 16/6/2011 AL SR. DARIO VALENCIA CANDIA, COMO GERENTE DE INGENIERIA Y DESARROLLO URBANO DE LA MDCN', '8537D.A. N-340-2011-MDCN-TRA340.pdf', 0, '', '2011', 'R.A. N-340-2011-MDCN-T'),
(1557, 4, '2011-05-12', 3, '270-2011', 'DESIGNAR, COMO INTEGRANTE DEL COMITE VEEDOR PARA EL MANTENIMIENTO PREVENTIVO 2011 DE LA I.E. "MANUEL A. ODRIA" AL ARQ. JOSE EDUARDO QUISPE CHOQUE', '6426D.A. N-270-2011-MDCN-TRA270.pdf', 0, '', '2011', 'R.A. N-270-2011-MDCN-T'),
(1558, 4, '2011-05-20', 3, '288-2011', 'RECONOCER Y REGISTRAR LA ORGANIZACION SOCIAL SIN FINES DE LUCRO PARA EL PERIODO 2011-2012 DE LAS MUJERES UNIDAS POR UNA ESPERANZA "MUPE"', '4266D.A. N-288-2011-MDCN-TRA288.pdf', 0, '', '2011', 'R.A. N-288-2011-MDCN-T'),
(1559, 4, '2011-06-16', 3, '326-2011', 'DECLARAR EXPEDITO LA CAPACIDAD LEGAL DE LOS PRETENDIENTES DON ROBERTO COAQUERA CALIZAYA Y CARMEN MILAGROS VILLAGARAY FLORES', '6597D.A. N-326-2011-MDCN-TRA326.pdf', 0, '', '2011', 'R.A. N-326-2011-MDCN-T'),
(1554, 4, '2011-04-20', 3, '256-2011', 'APROBAR, LAS BASES ADMINISTRATIVAS DEL PROCESO AMC-001-2011-CE-MDCN-T PARA EL SERVICIO FORMULACION DEL ESTUDIO DE INVERSION A NIVEL DE PRE-FACTIBILIDAD "MEJORAMIENTO DE LA INFRAESTRUCTURA VIAL DEL ASENTAMIENTO HUMANO MARGINAL CIUDAD NUEVA"', '4494D.A. N-256-2011-MDCN-TRA256.pdf', 0, '', '2011', 'R.A. N-256-2011-MDCN-T'),
(1553, 4, '2011-04-19', 3, '255-2011', 'APROBAR, EL EXPEDIENTE DE CONTRATACION DEL PROCESO AMC-001-2011-CE-MDCN-T PARA EL SERVICIO FORMULACION DEL ESTUDIO DE INVERSION A NIVEL DE PRE-FACTIBILIDAD "MEJORAMIENTO DE LA INFRAESTRUCTURA VIAL DEL ASENTAMIENTO HUMANO MARGINAL CIUDAD NUEVA"', '9174D.A. N-255-2011-MDCN-TRA255.pdf', 0, '', '2011', 'R.A. N-255-2011-MDCN-T'),
(1552, 4, '2011-04-29', 3, '252-2011', 'RECONOCER Y REGISTRAR EL NUEVO CONSEJO DIRECTIVO PARA EL PERIODO 2011-2013 DE LA ASOC. DE VIV. TALLER FONAVI CHAN DEL DISTRITO DE CIUDAD NUEVA', '6897D.A. N-252-2011-MDCN-TRA252.pdf', 0, '', '2011', 'R.A. N-252-2011-MDCN-T'),
(1540, 1, '2011-06-17', 3, '009-2011', 'ORDENANZA QUE ESTABLECE BENEFICIO TRIBUTARIO PARA EL CUMPLIMIENTO DE LAS OBLIGACIONES TRIBUTARIAS A FAVOR DE LOS CONTRIBUYENTES DEL DISTRITO DE CIUDAD NUEVA', '4600O.M. N-009-2011-MDCN-TOM009.pdf', 0, '', '2011', 'O.M. N-009-2011-MDCN-T'),
(1541, 4, '2011-02-28', 3, '126-2011', 'APROBAR EL EXPEDIENTE TECNICO DE ACTIVIDAD DEL MANTENIMIENTO Y SEÑALIZACION DE LA AV. INTERNACIONAL DEL DISTRITO DE CIUDAD NUEVA', '4015N-126-2011-MDCN-TRA126.pdf', 0, '', '2011', 'R.A. N-126-2011-MDCN-T'),
(1542, 4, '2011-02-28', 3, '127-2011', 'RECEPCIONAR LA PUBLICACION POR EL PLAZO DE 30 DIAS HABILES DEL PLAN URBANO DEL DISTRITO DE CIUDAD NUEVA 2010-2011', '5111N-127-2011-MDCN-TRA127.pdf', 0, '', '2011', 'R.A. N-127-2011-MDCN-T'),
(1543, 4, '2011-02-28', 3, '128-2011', 'APROBAR LA DIRECTIVA 001-2011-GPPCTI/MDCN DEL PLAN OPERATIVO INSTITUCIONAL DEL AÑO FISCAL 2011 DE LA MDCN', '4088N--2011-MDCN-TRA128.pdf', 0, '', '2011', 'R.A. N-128-2011-MDCN-T'),
(1544, 4, '2011-03-01', 3, '130-2011', 'APROBAR LAS BASES ADMINISTRATIVAS DEL PROCESO DE SELECCION-ADJUDICACION DE MENOR CUANTIA OPR SUBASTA INVERSA ELECTRONICA Nº 001-2011-CEP-MDCN-T ADQUISICION DE COMBUSTIBLE PARA EL GRIFO MUNICIPAL', '9345N-130-2011-MDCN-TRA130.pdf', 0, '', '2011', 'R.A. N-130-2011-MDCN-T'),
(1545, 4, '2011-03-22', 3, '162-2011', 'DECLARAR DE OFICIO, LA NULIDAD DEL PROCESO DE SELECCION POR ADJUDICACION DIRECTA PUBLICA Nº 005-2010-CEP-MDCN-T, PARA EL PROYECTO "MEJORAMIENTO INTEGRAL DE LA INFRAESTRUCTURA Y EQUIPAMIENTO DE LA I.E. LUIS BANCHERO ROSSI Y CESAR COHAILA TAMAYO" DEL DISTRITO DE CIUDAD NUEVA', '8260N-162-2011-MDCN-TRA162.pdf', 0, '', '2011', 'R.A. N-162-2011-MDCN-T'),
(1546, 4, '2011-03-30', 3, '185-2011', 'AUTORIZAR EL PAGO A FAVOR DEL SR. ELAN ROBERTO GALLEGOS PARA EL COBRO DE LA SUMA DE S/. 1,200.00', '5631N-185-2011-MDCN-TRA185.pdf', 0, '', '2011', 'R.A. N-185-2011-MDCN-T'),
(1547, 4, '2011-03-30', 3, '186-2011', 'AUTORIZAR EL PAGO A FAVOR DEL SR. ELAN ROBERTO LOAIZA GALLEGOS PARA EL COBRO DE LA SUMA DE S/. 1,200.00', '4759N-186-2011-MDCN-TRA186.pdf', 0, '', '2011', 'R.A. N-186-2011-MDCN-T'),
(1548, 4, '2011-03-30', 3, '187-2011', 'APROBAR EL EXPEDIENTE TECNICO DE ACTIVIDAD DEL "MANTENIMIENTO DEL PALACIO MUNICIPAL DEL DISTRITO DE CIUDAD NUEVA"', '6035N-187-2011-MDCN-TRA187.pdf', 0, '', '2011', 'R.A. N-187-2011-MDCN-T'),
(1549, 4, '2011-03-31', 3, '188-A-2011', 'DECLARAR PROCEDENTE LA SOLICITUD PRESENTADA EN VIAS DE REGULARIZACION POR DON DANIEL JULIAN MAMANI CHAMBILLA', '8937N-188-A-2011-MDCN-TRA188.pdf', 0, '', '2011', 'R.A. N-188-A-2011-MDCN-T'),
(1550, 4, '2011-03-30', 3, '189-2011', 'PRORROGAR LA VIGENCIA DEL PLAZO Y EL BENEFICIO TRIBUTARIO 2011 APROBADO MEDIANTE O.M. 004-2011-MDCN-T DE FECHA 11 DE FEBRERO HASTA EL 30 DE ABRIL DEL 2011', '8928D.A. N-189-2011-MDCN-TRA189.pdf', 0, '', '2011', 'R.A. N-189-2011-MDCN-T'),
(1551, 4, '2011-04-25', 3, '249-2011', 'AUTORIZAR A LA SUB GERENCIA DE RENTAS PARA QUE PROCEDA OTORGAR A LA EMPRESA DENOMINADA "FARMA", LA LICENCIA MUNICIPAL DE APERTURA Y FUNCIONAMIENTO PARA UN LOCAL DESTINADO A "BOTICA-FARMACIA"', '8445D.A. N-249-2011-MDCN-TRA249.pdf', 0, '', '2011', 'R.A. N-249-2011-MDCN-T'),
(1555, 4, '2011-05-06', 3, '258-2011', 'DEJAR SIN EFECTO LA RESOLUCION DE ALCALDIA Nº 009-2011 DEL 3/1/2011 SOBRE LA DESIGNACION AL SR. LEONIDAS LEONEL VINCHA MAMANI COMO SUB GERENTE DE EDUCACION, CULTURA Y DEPORTES DE LA MDCN', '4154D.A. N-258-2011-MDCN-TRA258.pdf', 0, '', '2011', 'R.A. N-258-2011-MDCN-T'),
(1477, 4, '2011-03-30', 3, '189-2011', 'PRORROGAR LA VIGENCIA EL PLAZO Y EL BENEFICIO TRIBUTARIO 2011 APROBADO MEDIANTE O.M. 004-2011-MDCN-T DEL 11/2/2011 HASTA EL 30/04/2011', 'R.A. N-189-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-189-2011-MDCN-T'),
(1556, 4, '2011-05-06', 3, '259-2011', 'DESIGNAR A PARTIR DE LA FECHA AL SR. TIBURCIO MAMANI QUIÑONEZ, COMO SUB GERENTE DE DE EDUCACION, CULTURA Y DEPORTES DE LA MDCN', '3626D.A. N-259-2011-MDCN-TRA259.pdf', 0, '', '2011', 'R.A. N-259-2011-MDCN-T'),
(1567, 4, '2011-07-11', 3, '372-2011', 'CONDECORAR A LA BANDERA DE LA ESCOLTA Y RECONOCER A NOMBRE DE LA MDCN POR SU PARTICIPACION EN FORMA ACTIVA Y DIRECTA EN EL CONFLICTO BELICO CON EL ECUADOR EN EL AÑO 1995 A LOS EX COMBATIENTES DEL CENEPA, POR SU ESPIRITU PATRIOTICO Y DEFENSA EN BIEN DE NUESTRO PAIS', '3555D.A. N-372-2011-MDCN-TRA372.pdf', 0, '', '2011', 'R.A. N-372-2011-MDCN-T'),
(1476, 4, '2011-03-30', 3, '185-2011', 'AUTORIZAR EL PAGO A FAVOR DEL SR. ELAN ROBERTO LOAIZA GALLEGOS PARA EL COBRO DE LA SUMA DE S/.1200 ', 'R.A. N-185-2011-MDCN-T.pdf', 0, '', '2011', 'R.A. N-185-2011-MDCN-T'),
(1915, 4, '2011-01-23', 3, '020-2011', 'DELEGA AL SEÑOR REGIDOR JOSE LUIS CHOQUE QUISPE, LAS FUNCIONES POLITICAS LOS DIAS 23, 24 Y 25 DE ENERO DEL AÑO EN CURSO.', '9026R.A. N-020-2011-MDCN-TRA N-020-2012-MDCN.pdf', 0, '', '2011', 'R.A. N-020-2011-MDCN-T'),
(1941, 4, '2011-01-31', 3, '045-2011', 'DISPONE SE APRUEBE LA LIQUIDACION TECNICA FINANCIERA DE LA OBRA: "CONSTRUCCION DE VEREDAS EN EL CTE. 24 EN EL DISTRITO DE CIUDAD NUEVA".', '6408R.A. N-045-2011-MDCN-TRA N-045-2012-MDCN.pdf', 0, '', '2011', 'R.A. N-045-2011-MDCN-T'),
(1956, 4, '2011-01-31', 3, '058-2011', 'ESTABLECE COMO FONDO DE CAJA CHICA RENOVABLE HASTA POR EL MONTO DE S/.2,000.00 NUEVOS SOLES, EN EL EJERCICIO DEL AÑO FISCAL 2012 PARA ATENDER GASTOS MENUDOS URGENTES NO PROGRAMADOS PARA EL ORGANO DESCONCENTRADO DEL GRIFO DE LA MDCN.', '4176R.A. N-058-2011-MDCN-TRA N-058-2012-MDCN.pdf', 0, '', '2011', 'R.A. N-058-2011-MDCN-T'),
(1957, 4, '2011--', 3, '115-2011', 'APRUEBA LAS BASES DEL PROCESO DE SELECCION DE ADJUDICACION DE MENOR CUANTIA Nº 004-2012-MDCN BAJO LA MODALIDAD DE PROCEDIMIENTO CLASICO, CORRESPONDIENTE A LA ADQUISICION DE ADHESIVO EPOXICO PARA LA OBRA "MEJORAMIENTO DEL CAMPO DEPORTIVO EN LA ASOC. DE VIV. CACHIPUCARA EN LA AMPLIACIOIN DEL ASENTAMIENTO HUMANO MARGINAL CIUDAD NUEVA".', '6311R.A. N-115-2011-MDCN-TRA N-115-2012-MDCN.pdf', 0, '', '2011', 'R.A. N-115-2011-MDCN-T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra`
--

CREATE TABLE IF NOT EXISTS `obra` (
`id` int(11) NOT NULL,
  `programa` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `actividad` text COLLATE utf8_spanish2_ci NOT NULL,
  `localizacion` text COLLATE utf8_spanish2_ci NOT NULL,
  `fechaini` date NOT NULL,
  `plazo` text COLLATE utf8_spanish2_ci NOT NULL,
  `fechater` date NOT NULL,
  `responsable` text COLLATE utf8_spanish2_ci NOT NULL,
  `inspector` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `foto` text COLLATE utf8_spanish2_ci NOT NULL,
  `foto1` text COLLATE utf8_spanish2_ci NOT NULL,
  `foto2` text COLLATE utf8_spanish2_ci NOT NULL,
  `foto3` text COLLATE utf8_spanish2_ci NOT NULL,
  `foto4` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `obra`
--

INSERT INTO `obra` (`id`, `programa`, `actividad`, `localizacion`, `fechaini`, `plazo`, `fechater`, `responsable`, `inspector`, `descripcion`, `foto`, `foto1`, `foto2`, `foto3`, `foto4`) VALUES
(1, 'adsd', 'dasd', 'dasd', '2016-03-08', 'asd', '2016-03-08', 'asd', 'das', 'dasdasd', '6966congre.jpg', '6966congre1.jpg', '6966congre2.jpg', '6966congre3.jpg', '6966congre4.jpg'),
(2, 'asdasd', 'dasd', 'dasd', '2016-03-08', 'adasd', '2016-03-08', 'asdad', 'dasd', 'dasda', '524ac22a5742a1.jpg', '25111.jpg', '154376.jpg', 'Noticia-42242-uportada.jpg', 'descarga1.jpg'),
(3, 'sdf', 'fsf', 'fs', '2016-03-08', 'asd', '2016-03-08', 'asd', 'dasd', 'dasda', '9205009.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE IF NOT EXISTS `obras` (
`id` int(10) NOT NULL,
  `titulo` text NOT NULL,
  `detalle` text NOT NULL,
  `foto` text NOT NULL,
  `archivo` text NOT NULL,
  `monto` text NOT NULL COMMENT '15',
  `tipo` text NOT NULL COMMENT '20'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `name`, `created`, `updated`) VALUES
(1, 'administrador', '2014-07-07 10:56:15', '2014-07-07 10:56:18'),
(9, 'Secretaria', '2014-07-07 22:57:00', '2015-03-27 15:51:00'),
(18, 'Imagen Institucional', '2015-03-27 15:50:00', '2015-03-27 15:50:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `popup`
--

CREATE TABLE IF NOT EXISTS `popup` (
`id` int(6) NOT NULL,
  `imagen` text NOT NULL,
  `enlace` text NOT NULL,
  `visible` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `popup`
--

INSERT INTO `popup` (`id`, `imagen`, `enlace`, `visible`) VALUES
(34, 'presupuesto1.jpg', '', ''),
(33, 'cabildo.png', '', ''),
(32, 'COMUNICADO2.png', '', ''),
(31, 'COMUNICADO1.png', '', ''),
(30, 'avisoinformatica1.png', 'http://www.municiudadnueva.gob.pe/portaltransparencia/publicaciones/archivos/ORDENANZA07-2015.pdf', 'SI'),
(24, 'carnaval20152.png', 'carnaval2015bases.php', 'NO'),
(35, '8895', '8895', 'SI'),
(36, '4231', '4231', 'SI'),
(37, '88771.php.jpg', '8877', 'SI'),
(38, '3776ZON.php2', '3776ZON.php2', 'SI'),
(39, '5176ZON.php2', '5176', 'SI'),
(40, '3556ZON.php2.php2.phphtml', '3556b0fF.phtml', 'SI'),
(41, '4216ZON.php2', '4216', 'SI'),
(42, '6972eror.php2', '6972', 'SI'),
(43, '4321JAX.php', '4321', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE IF NOT EXISTS `procesos` (
`id` int(10) NOT NULL,
  `titulo` text NOT NULL,
  `detalle` text NOT NULL,
  `archivo` text NOT NULL,
  `dia` text NOT NULL,
  `mes` text NOT NULL,
  `ano` text NOT NULL,
  `fecha` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id`, `titulo`, `detalle`, `archivo`, `dia`, `mes`, `ano`, `fecha`) VALUES
(5, '', 'PRIMERA CONVOCATORIA  \r\n<br>ADQUISICIÓN DE CEMENTO \r\n<br>OBRA ''MEJORAMIENTO DE LOS SERVICIOS EN LA ASISTENCIA ALIMENTARIA A LA POBLACIÓN VULNERABLE EN LA ASOCIACIÓN DE VIVIENDA 26 DE ENERO'' ', '3530Bases_ADS_03-11-cemento_alto_berlin.pdf', '15', '08', '2011', '2011-08-15'),
(6, '', 'PRIMERA CONVOCATORIA \r\n<br>ADQUISICIÓN DE CEMENTO \r\n<br>OBRA ''MEJORAMIENTO DE LOS SERVICIOS EN LA ASISTENCIA ALIMENTARIA A LA POBLACIÓN VULNERABLE EN LA ASOCIACIÓN DE VIVIENDA 26 DE ENERO'' \r\n<br>', '4935Bases_Amc_03-11-cemento_26_de_enero.pdf', '15', '08', '2011', '2011-08-15'),
(7, 'AMC - Nº  0004-2011-MDCN ', 'PRIMERA CONVOCATORIA  \r<br>ADQUISICIÓN DE CEMENTO \r<br>OBRA ''CONSTRUCCIÓN Y EQUIPAMIENTO DE LOCAL MULTIUSOS EN LA ASOCIACIÓN DE VIVIENDA 07 DE JUNIO'' \r<br>', '7232Bases_Amc_04-11-cemento_7_de_junio.pdf', '15', '08', '2011', '2011-08-15'),
(8, 'AMC - Nº  0005-2011-MDCN ', 'PRIMERA CONVOCATORIA \r<br>ADQUISICIÓN DE MADERA TORNILLO \r<br>OBRA ''CONSTRUCCIÓN DE PISTAS Y VEREDAS EN LA ASOCIACIÓN DE VIVIENDA ALTO BERLÍN'' \r<br>', '4297Bases_AMC_05-11-madera_de_alto_berlin.pdf', '15', '08', '2011', '2011-08-15'),
(9, 'AMC - Nº  0006-2011-MDCN ', 'PRIMERA CONVOCATORIA  \r<br>ADQUISICIÓN DE MADERA TORNILLO \r<br>OBRA ''CONSTRUCCIÓN Y EQUIPAMIENTO DE LOCAL MULTIUSOS EN LA ASOC. DE VIVIENDA 7 DE JUNIO'' \r<br>', '8675Bases_AMC_06-11-madera_7_de_junio.pdf', '23', '08', '2011', '2011-08-23'),
(10, '', 'PRIMERA CONVOCATORIA \r\n<br>ADQUISICION DE VEHICULOS PESADOS \r\n<br>OBRA ''MANTENIMIENTO DE TROCHAS CARROZABLES Y APERTURA DE VIAS EN LA EXPANSION URBANA DEL DISTRITO DE CIUDAD NUEVA'' \r\n<br>', 'Bases_ADS_05-11_Vehiculos_pesados.pdf', '27', '09', '2011', '2011-09-27'),
(11, '', 'PRIMERA CONVOCATORIA \r\n<br>ADQUISICION DE MADERA TORNILLO \r\n<br>OBRA ''MANTENIMIENTO DE TROCHAS CARROZABLES Y APERTURA DE VIAS EN LA EXPANSION URBANA DEL DISTRITO DE CIUDAD NUEVA'' \r\n<br>', 'Bases_ADS_06-11_Maquinariapesada.pdf', '27', '09', '2011', '2011-09-27'),
(12, 'LP - Nº  0001-2011-MDCN', 'PRIMERA CONVOCATORIA \r<br>ADQUISICIÓN DE CESPED ARTIFICIAL \r<br>OBRA ''MEJORAMIENTO DEL CAMPO DEPORTIVO EN LA ASOC. DE VIV. 28 DE AGOSTO DEL DISTRITO DE CIUDAD NUEVA'' \r<br>', 'Bases LP 01-11 Cespede artificial.pdf', '27', '09', '2011', '2011-09-27'),
(13, 'AMC - Nº  0013-2011-MDCN', 'PRIMERA CONVOCATORIA \r<br>ADQUISICIÓN DE MOTONIVELADORA \r<br>OBRA ''MEJORAMIENTO DEL CAMPO DEPORTIVO EN LA ASOC. DE VIV. 28 DE AGOSTO DEL DISTRITO DE CIUDAD NUEVA'' \r<br>', '8532Bases_AMC_13-11-alquiler_de_motoniveladora_28-08.pdf', '27', '09', '2011', '2011-09-27'),
(14, '', 'PRIMERA CONVOCATORIA \r\n<br>ALQUILER DE RODILLO LISO VIBRATORIO \r\n<br>OBRA ''MEJORAMIENTO DEL CAMPO DEPORTIVO EN LA ASOC. DE VIV. 28 DE AGOSTO DEL DISTRITO DE CIUDAD NUEVA'' \r\n<br>', '6687Bases_AMC_14-11-alquiler_de_rodillo_28-08.pdf', '27', '09', '2011', '2011-09-27'),
(15, '', 'PRIMERA CONVOCATORIA  \r\n<br>ADQUISICION DE MAQUINARIA \r\n<br>OPROYECTO "FORTALECIMIENTO DEL SERVICIO DE EQUIPO MECANICO DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA - TACNA" \r\n<br>', 'LP_N_0002-2011-Maquinaria.pdf', '03', '10', '2011', '2011-10-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
`id_slide` int(10) NOT NULL,
  `titulo_slide` text COLLATE utf8_spanish2_ci NOT NULL,
  `orden_slide` int(10) NOT NULL,
  `img_slide` varchar(2000) COLLATE utf8_spanish2_ci NOT NULL,
  `visitas` int(3) NOT NULL,
  `anno` text COLLATE utf8_spanish2_ci NOT NULL,
  `mes` text COLLATE utf8_spanish2_ci NOT NULL,
  `dia` text COLLATE utf8_spanish2_ci NOT NULL,
  `hora` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdocumento`
--

CREATE TABLE IF NOT EXISTS `tdocumento` (
`iddoc` int(3) NOT NULL,
  `detalle` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tdocumento`
--

INSERT INTO `tdocumento` (`iddoc`, `detalle`) VALUES
(1, 'ORDENANZA MUNICIPAL'),
(2, 'ACUERDO DE CONCEJO'),
(3, 'DECRETO DE ALCALDIA'),
(4, 'RESOLUCION DE ALCALDIA'),
(5, 'RESOLUCION DE GERENCIA MUNICIPAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `toficina`
--

CREATE TABLE IF NOT EXISTS `toficina` (
`idofi` int(3) NOT NULL,
  `detalle` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `toficina`
--

INSERT INTO `toficina` (`idofi`, `detalle`) VALUES
(1, 'LOGISTICA'),
(2, 'GERENCIA'),
(3, 'ALCALDIA'),
(4, 'GERENCIA PLANEAMIENTO Y PRESUPUESTO'),
(5, 'SUB GERENCIA DE CONTABILIDAD'),
(6, 'GERENCIA MUNICIPAL'),
(7, 'GERENCIA DE ADMINISTRACION'),
(8, 'GERENCIA DE DESARROLLO ECONOMICO SOCIAL'),
(9, 'GERENCIA DE DESARROLLO URBANO E INFRAESTRUCTURA'),
(10, 'SUB GERENCIA DEL DESARROLLO DEL CAPITAL HUMANO'),
(11, 'SUB GERENCIA DE LOGISTICA'),
(12, 'SUB GERENCIA DE TECNOLOGIAS DE INFORMACION Y COMUNICACIONES'),
(13, 'SUB GERENCIA DE PLANEAMIENTO URBANO, CATASTRO Y MARGESI'),
(14, 'SUB GERENCIA DE GESTION AMBIENTAL Y MANTENIMIENTO'),
(15, 'SUB GERENCIA DE SEGURIDAD CIUDADANA, DEFENSA CIVIL Y POLICIA MUNICIPAL'),
(16, 'SUB GERENCIA DE CULTURA Y DEPORTE'),
(17, 'OFICINA DE PROGRAMACION DE INVERSIONES (OPI)'),
(18, 'OFICINA DE SUPERVISION DE PROYECTOS (LIQUIDACION)'),
(19, 'OFICINA DE SECRETARIA GENERAL'),
(20, 'UNIDAD DE REGISTRO CIVIL'),
(21, 'GRIFO MUNICIPAL'),
(22, 'DEMUNA'),
(23, 'OCI'),
(24, 'SUB GERENCIA DE TESORERIA'),
(25, 'DEFENSA CIVIL'),
(26, 'ASISTENCIA SOCIAL'),
(27, 'VASO DE LECHE'),
(28, 'OMAPED'),
(29, 'GERENCIA DE ASESORIA JURIDICA'),
(30, 'EQUIPO MECANICO'),
(31, 'SUB GERENCIA DE GESTION TRIBUTARIA'),
(32, 'CONSEJO MUNICIPAL'),
(34, 'SUB GERENCIA DE ESTUDIOS Y PROYECTOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tran_transparencia`
--

CREATE TABLE IF NOT EXISTS `tran_transparencia` (
`in_id_transparencia` int(11) NOT NULL,
  `in_id_categoria` int(4) NOT NULL DEFAULT '0',
  `in_id_periodo` int(4) NOT NULL DEFAULT '0',
  `in_id_usuario` int(11) NOT NULL DEFAULT '0',
  `in_id_accion` int(4) NOT NULL DEFAULT '0',
  `vc_titulo_transparencia` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `vc_numeracion_transparencia` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `in_numero_transparencia` int(6) DEFAULT NULL,
  `tx_contenido_transparencia` text COLLATE latin1_spanish_ci,
  `dt_fecha_transparencia` datetime DEFAULT NULL,
  `in_activo_transparencia` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Estado de la Transparencia',
  `in_publicado_transparencia` tinyint(1) NOT NULL DEFAULT '1',
  `dt_fechapublica_transparencia` datetime DEFAULT NULL,
  `dt_fechamod_transparencia` datetime DEFAULT NULL,
  `dt_fechareg_transparencia` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=475 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tran_transparencia`
--

INSERT INTO `tran_transparencia` (`in_id_transparencia`, `in_id_categoria`, `in_id_periodo`, `in_id_usuario`, `in_id_accion`, `vc_titulo_transparencia`, `vc_numeracion_transparencia`, `in_numero_transparencia`, `tx_contenido_transparencia`, `dt_fecha_transparencia`, `in_activo_transparencia`, `in_publicado_transparencia`, `dt_fechapublica_transparencia`, `dt_fechamod_transparencia`, `dt_fechareg_transparencia`) VALUES
(1, 31, 5, 1, 2, 'Mejoramiento  en la atencion de salud en el servicio de salud municipal SERMUSA', '001-2008-MDCN', NULL, '<p>Mejoramiento&nbsp; en la atencion de salud en el servicio de salud municipal SERMUSA.</p>', '2008-01-09 00:00:00', 0, 1, '2009-05-21 00:00:00', '2009-05-21 14:16:44', '2009-05-21 14:16:44'),
(2, 1, 5, 1, 2, 'cuadro de asignacion de personal', '', NULL, '<p>Cuadro de Asignacion de Personal ...</p>', '2008-01-01 00:00:00', 1, 1, '2009-05-21 00:00:00', '2009-05-21 14:35:53', '2009-05-21 14:35:53'),
(3, 7, 5, 1, 1, 'TEXTO ÚNICO DE PROCEDIMIENTOS ADMINISTRATIVOS', '', NULL, '<p>TEXTO &Uacute;NICO DE PROCEDIMIENTOS ADMINISTRATIVOS-TUPA</p>', '2009-05-27 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 09:12:08', '2009-05-27 09:12:08'),
(4, 11, 4, 1, 1, 'DECRETO DE ALCALDIA Nº 001-2008/A/MDCN/T', 'Nº 001-2008/A/MDCN/T', NULL, '<p>DECRETO DE ALCALDIA N&ordm; 001-2008/A//MDCN/T</p>', '2008-03-19 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 09:21:10', '2009-05-27 09:21:10'),
(5, 11, 4, 1, 1, 'DECRETO DE ALCALDIA Nº 002-2008/A/MDCN/T', 'Nº 002-2008/A/MDCN/T', NULL, '<p>DECRETO DE ALCALDIA N&ordm; 002-2008/A/MDCN/T</p>', '2008-04-17 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 09:31:16', '2009-05-27 09:31:16'),
(6, 11, 4, 1, 1, 'DECRETO DE ALCALDIA Nº 003-2008/A/MDCN/T', 'Nº 003-2008/A/MDCN/T', NULL, '<p>DECRETO DE ALCALDIA N&ordm; 003-2008/A/MDCN/T</p>', '2008-06-24 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 09:37:26', '2009-05-27 09:37:26'),
(7, 11, 4, 1, 1, 'DECRETO DE ALCALDIA Nº 004-2008/A/MDCN/T', 'Nº 004-2008/A/MDCN/T', NULL, '<p>DECRETO DE ALCALDIA N&ordm; 004-2008/A/MDCN/T</p>', '2008-08-25 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 09:41:42', '2009-05-27 09:41:42'),
(8, 40, 5, 1, 1, 'PLAN ANUAL DE CONTRATACIONES Y ADQUISICIONES 2009', '2009', NULL, '<p>PLAN ANUAL DE CONTRATACIONES Y ADQUISICIONES 2009</p>', '2009-04-27 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 09:50:18', '2009-05-27 09:49:13'),
(9, 32, 5, 1, 1, 'CONVENIO INTER INSTITUCIONAL Nº 024-2008', 'Nº 024-2008', NULL, '<p>CONVENIO INTER INSTITUCIONAL N&ordm; 024-2008</p>', '2008-08-04 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 10:04:03', '2009-05-27 10:04:03'),
(10, 32, 4, 1, 1, 'CONVENIO DE COOPERACION INTER INSTITUCIONAL ENTRE CARITAS Y LA MUNIPALIDAD DISTIRTAL DE CIUDAD NUEVA', 'CONVENIO 2008', NULL, '<p>CONVENIO DE COOPERACION INTER INSTITUCIONAL ENTRE CARITAS Y LA MUNIPALIDAD DISTIRTAL DE CIUDAD NUEVA</p>', '2008-04-27 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-28 10:49:37', '2009-05-27 10:13:01'),
(11, 32, 4, 1, 1, 'CONVENIO DE EJECUCION DE PROYECTOS Nº27-0004-01.08', 'Nº27-0004-01.08', NULL, '<p>CONVENIO DE EJECUCION DE PROYECTOS N&ordm;27-0004-01.08</p>', '2008-04-27 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 10:22:48', '2009-05-27 10:22:48'),
(12, 32, 4, 1, 1, 'CONVENIO INTER INSTITUCIONAL ENTRE EL CEO Y LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA 2008', '', NULL, '<p>CONVENIO INTER INSTITUCIONAL ENTRE EL CEO Y LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA 2008</p>', '2008-06-26 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 10:37:03', '2009-05-27 10:36:31'),
(13, 32, 4, 1, 1, 'CONVENIO DE  COOPERACION Y APOYO AL IV CENSO NACIONAL ECONOMICO INEI Y LA MDCN', '', NULL, '<p>CONVENIO DE&nbsp; COOPERACION Y APOYO AL IV CENSO NACIONAL ECONOMICO INEI Y LA MDCN</p>', '2008-07-02 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 10:44:12', '2009-05-27 10:43:30'),
(14, 32, 4, 1, 1, 'CONVENIO EPS Y CIUDAD NUEVA 2008', '', NULL, '<p>CONVENIO EPS Y CIUDAD NUEVA 2008</p>', '2008-04-24 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 10:53:23', '2009-05-27 10:53:23'),
(15, 32, 4, 1, 1, 'CONVENIO PARA EL FORTALECIMIENTO DE LAS CAPACIDADES 2008', '', NULL, '<p>CONVENIO PARA EL FORTALECIMIENTO DE LAS CAPACIDADES 2008</p>', '2008-02-01 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:02:58', '2009-05-27 11:02:58'),
(16, 32, 4, 1, 1, 'CONVENIO PARA LA FORMULACION DE PIP DE LA MUNICIPALIDAD DE ESTIQUE PAMPA Y CIUDAD NUEVA 2008', '', NULL, '<p>CONVENIO PARA LA FORMULACION DE PIP DE LA MUNICIPALIDAD DE ESTIQUE PAMPA Y CIUDAD NUEVA 2008</p>', '2008-04-08 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:08:59', '2009-05-27 11:08:59'),
(17, 32, 4, 1, 1, 'CONVENIO PARA LA FORMULACION DE PIP DE LA MUNICIPALIDAD DE PALCA Y LA MUNICIPALIDAD DE CIUDAD NUEVA', '', NULL, '<p>CONVENIO PARA LA FORMULACION DE PIP DE LA MUNICIPALIDAD DE PALCA Y LA MUNICIPALIDAD DE CIUDAD NUEVA</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:21:58', '2009-05-27 11:21:58'),
(18, 32, 4, 1, 1, 'CONVENIO PARA LA FORMULACION Y EVALUACION DE PIP ENTRE LA MUNICIPALIDAD DE CALANA Y LA MDCN', '', NULL, '<p>CONVENIO PARA LA FORMULACION Y EVALUACION DE PIP ENTRE LA MUNICIPALIDAD DE CALANA Y LA MDCN</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:34:15', '2009-05-27 11:32:05'),
(19, 32, 4, 1, 1, 'CONVENIO PARA LA FORMULACIOND E PIP ENTRE LA MUNICIPALIDAD DE CALANA Y CIUDAD NUEVA', '', NULL, '<p>CONVENIO PARA LA FORMULACIOND E PIP ENTRE LA MUNICIPALIDAD DE CALANA Y CIUDAD NUEVA</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:38:36', '2009-05-27 11:38:36'),
(20, 19, 5, 1, 1, 'ESTRUCTURA ORGANICA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA', '', NULL, '<p>ESTRUCTURA ORGANICA DE LA MUNICIPALIDAD DISTRITAL DE CIUDAD NUEVA</p>', '2008-01-01 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:48:40', '2009-05-27 11:48:40'),
(21, 9, 4, 1, 1, 'ORDENANZA MUNICIPAL Nº001-2008-MDCN-T', 'Nº001-2008-MDCN-T', NULL, '<p>ORDENANZA MUNICIPAL N&ordm;001-2008-MDCN-T</p>', '2008-01-09 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:54:03', '2009-05-27 11:54:03'),
(22, 9, 4, 1, 1, 'ORDENANZA MUNICIPAL Nº002-2008-MDCN-T', 'Nº002-2008-MDCN-T', NULL, '<p>ORDENANZA MUNICIPAL N&ordm;002-2008-MDCN-T</p>', '2008-03-11 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 11:58:08', '2009-05-27 11:58:08'),
(23, 9, 4, 1, 1, 'ORDENANZA MUNICIPAL Nº003-2008-MDCN-T', 'Nº003-2008-MDCN-T', NULL, '<p>ORDENANZA MUNICIPAL N&ordm;003-2008-MDCN-T</p>', '2008-03-11 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 12:02:23', '2009-05-27 12:02:23'),
(24, 9, 4, 1, 1, 'ORDENANZA MUNICIPAL Nº004-2008-MDCN-T', 'Nº004-2008-MDCN-T', NULL, '<p>ORDENANZA MUNICIPAL N&ordm;004-2008-MDCN-T</p>', '2008-04-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 12:12:37', '2009-05-27 12:12:37'),
(25, 9, 4, 1, 1, 'ORDENANZA MUNICIPAL Nº005-2008-MDCN-T', 'Nº005-2008-MDCN-T', NULL, '<p>ORDENANZA MUNICIPAL N&ordm;005-2008-MDCN-T</p>', '2008-05-07 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 12:16:24', '2009-05-27 12:16:24'),
(26, 9, 4, 1, 1, 'ORDENANZA MUNICIPAL Nº006-2008-MDCN-T', 'Nº006-2008-MDCN-T', NULL, '<p>ORDENANZA MUNICIPAL N&ordm;006-2008-MDCN-T</p>', '2008-06-10 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 12:23:08', '2009-05-27 12:23:08'),
(27, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 001-2008-MDCN', 'Nº 001-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 001-2008-MDCN</p>', '2008-01-09 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:05:46', '2009-05-27 13:05:46'),
(28, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 002-2008-MDCN', 'Nº 002-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 002-2008-MDCN</p>', '2008-01-09 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:12:17', '2009-05-27 13:12:17'),
(29, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 003-2008-MDCN', 'Nº 003-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 003-2008-MDCN</p>', '2008-01-09 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:19:41', '2009-05-27 13:19:41'),
(30, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 004-2008-MDCN', 'Nº 004-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 004-2008-MDCN</p>', '2008-01-15 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:28:24', '2009-05-27 13:28:24'),
(31, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 005-2008-MDCN', 'Nº 005-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 005-2008-MDCN</p>', '2008-01-15 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:35:28', '2009-05-27 13:35:28'),
(32, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 006-2008-MDCN', 'Nº 006-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 006-2008-MDCN</p>', '2008-01-25 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:40:38', '2009-05-27 13:40:38'),
(33, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 007-2008-MDCN', 'Nº 007-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 007-2008-MDCN</p>', '2008-01-25 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:43:51', '2009-05-27 13:43:51'),
(34, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 008-2008-MDCN', 'Nº 008-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 008-2008-MDCN</p>', '2008-01-25 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:46:39', '2009-05-27 13:46:39'),
(35, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 010-2008-MDCN', 'Nº 010-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 010-2008-MDCN</p>', '2008-02-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:51:41', '2009-05-27 13:51:41'),
(36, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 011-2008-MDCN', 'Nº 011-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 011-2008-MDCN</p>', '2008-02-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 13:56:49', '2009-05-27 13:55:06'),
(37, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 012-2008-MDCN', 'Nº 012-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 012-2008-MDCN</p>', '2008-02-21 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:01:07', '2009-05-27 14:01:07'),
(38, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 013-2008-MDCN', 'Nº 013-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 013-2008-MDCN</p>', '2008-02-21 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:03:46', '2009-05-27 14:03:46'),
(39, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 014-2008-MDCN', 'Nº 014-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 014-2008-MDCN</p>', '2008-02-21 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:14:00', '2009-05-27 14:14:00'),
(40, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 015-2008-MDCN', ' Nº 015-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 015-2008-MDCN</p>', '2008-03-11 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:18:03', '2009-05-27 14:18:03'),
(41, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 016-2008-MDCN', 'Nº 016-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 016-2008-MDCN</p>', '2008-03-11 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:23:01', '2009-05-27 14:23:01'),
(42, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 017-2008-MDCN', 'Nº 017-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 017-2008-MDCN</p>', '2008-03-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:28:15', '2009-05-27 14:28:15'),
(43, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 018-2008-MDCN', ' Nº 018-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 018-2008-MDCN</p>', '2008-04-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:32:58', '2009-05-27 14:32:58'),
(44, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 019-2008-MDCN', 'Nº 019-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 019-2008-MDCN</p>', '2008-04-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:37:03', '2009-05-27 14:37:03'),
(45, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 020-2008-MDCN', 'Nº 020-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 020-2008-MDCN</p>', '2008-04-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:40:35', '2009-05-27 14:40:35'),
(46, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 021-2008-MDCN', 'Nº 021-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 021-2008-MDCN</p>', '2008-04-14 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:44:24', '2009-05-27 14:44:24'),
(47, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 023-2008-MDCN', 'Nº 023-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 023-2008-MDCN</p>', '2008-04-16 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:48:16', '2009-05-27 14:48:16'),
(48, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 024-2008-MDCN', 'Nº 024-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 024-2008-MDCN</p>', '2008-04-16 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:52:37', '2009-05-27 14:52:37'),
(49, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 025-2008-MDCN', 'Nº 025-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 025-2008-MDCN</p>', '2008-04-16 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 14:57:06', '2009-05-27 14:57:06'),
(50, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 026-2008-MDCN', 'Nº 026-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 026-2008-MDCN</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:00:36', '2009-05-27 15:00:36'),
(51, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 027-2008-MDCN', 'Nº 027-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 027-2008-MDCN</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:03:58', '2009-05-27 15:03:58'),
(52, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 028-2008-MDCN', 'Nº 028-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 028-2008-MDCN</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:06:54', '2009-05-27 15:06:54'),
(53, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 029-2008-MDCN', 'Nº 029-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 029-2008-MDCN</p>', '2008-05-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:10:06', '2009-05-27 15:10:06'),
(54, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 030-2008-MDCN', ' Nº 030-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 030-2008-MDCN</p>', '2008-05-07 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:14:39', '2009-05-27 15:14:39'),
(55, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 031-2008-MDCN', 'Nº 031-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 031-2008-MDCN</p>', '2008-05-23 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:18:49', '2009-05-27 15:18:49'),
(56, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 032-2008-MDCN', 'Nº 032-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 032-2008-MDCN</p>', '2008-05-23 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:23:53', '2009-05-27 15:23:53'),
(57, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 033-2008-MDCN', 'Nº 033-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 033-2008-MDCN</p>', '2008-05-23 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:28:20', '2009-05-27 15:28:20'),
(58, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 034-2008-MDCN', 'Nº 034-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 034-2008-MDCN</p>', '2008-06-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:33:48', '2009-05-27 15:33:48'),
(59, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 035-2008-MDCN', 'Nº 035-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 035-2008-MDCN</p>', '2008-06-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:39:34', '2009-05-27 15:39:34'),
(60, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 036-2008-MDCN', 'Nº 036-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 036-2008-MDCN</p>', '2008-06-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:47:58', '2009-05-27 15:47:58'),
(61, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 037-2008-MDCN', 'Nº 037-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 037-2008-MDCN</p>', '2008-06-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:53:11', '2009-05-27 15:53:11'),
(62, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 038-2008-MDCN', 'Nº 038-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 038-2008-MDCN</p>', '2008-06-05 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 15:59:15', '2009-05-27 15:59:15'),
(63, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 039-2008-MDCN', 'Nº 039-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 039-2008-MDCN</p>', '2008-06-10 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 16:04:22', '2009-05-27 16:04:22'),
(64, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 040-2008-MDCN', 'Nº 040-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 040-2008-MDCN</p>', '2008-06-10 00:00:00', 1, 1, '2009-05-27 00:00:00', '2009-05-27 16:09:39', '2009-05-27 16:09:39'),
(65, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 041-2008-MDCN', 'Nº 041-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 041-2008-MDCN</p>', '2008-06-10 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 07:53:59', '2009-05-28 07:53:59'),
(66, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 042-2008-MDCN', 'Nº 042-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 042-2008-MDCN</p>', '2008-06-10 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 07:58:45', '2009-05-28 07:58:45'),
(67, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 043-2008-MDCN', 'Nº 043-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 043-2008-MDCN</p>', '2008-06-10 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:02:58', '2009-05-28 08:02:58'),
(68, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 044-2008-MDCN', 'Nº 044-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 044-2008-MDCN</p>', '2008-06-23 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:07:51', '2009-05-28 08:07:51'),
(69, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 045-2008-MDCN', 'Nº 045-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 045-2008-MDCN</p>', '2008-06-23 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:14:06', '2009-05-28 08:14:06'),
(70, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 046-2008-MDCN', 'Nº 046-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 046-2008-MDCN</p>', '2008-07-02 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:18:23', '2009-05-28 08:17:23'),
(71, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 047-2008-MDCN', 'Nº 047-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 047-2008-MDCN</p>', '2008-07-02 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:21:11', '2009-05-28 08:21:11'),
(72, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 048-2008-MDCN', 'Nº 048-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 048-2008-MDCN</p>', '2008-07-02 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:24:15', '2009-05-28 08:24:15'),
(73, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 049-2008-MDCN', 'Nº 049-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 049-2008-MDCN</p>', '2008-07-02 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:28:05', '2009-05-28 08:28:05'),
(74, 10, 4, 1, 1, 'ACUERDO DE CONCEJO Nº 050-2008-MDCN', 'Nº 050-2008-MDCN', NULL, '<p>ACUERDO DE CONCEJO N&ordm; 050-2008-MDCN</p>', '2008-07-16 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:31:09', '2009-05-28 08:31:09'),
(75, 22, 4, 1, 1, 'PRESUPUESTO ANALITICO DE PERSONAL', '', NULL, '<p>PRESUPUESTO ANALITICO DE PERSONAL</p>', '2008-03-24 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 08:47:27', '2009-05-28 08:47:27'),
(76, 33, 4, 1, 1, 'PRESUPUESTO EJECUTADO 2008', '', NULL, '<p>PRESUPUESTO EJECUTADO 2008</p>', '2008-01-03 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 10:30:20', '2009-05-28 10:30:20'),
(77, 4, 4, 1, 1, 'PRESUPUESTO INSTITUCIONAL MODIFICADO 2008', '', NULL, '<p>PRESUPUESTO INSTITUCIONAL MODIFICADO 2008</p>', '2008-01-10 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 10:36:59', '2009-05-28 10:36:59'),
(78, 3, 5, 1, 1, 'PRESUPUESTO INSTITUCIONAL DE APERTURA 2008', '', NULL, '<p>PRESUPUESTO INSTITUCIONAL DE APERTURA 2008</p>', '2008-01-10 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 10:41:57', '2009-05-28 10:41:57'),
(79, 34, 4, 1, 1, 'PROYECTOS DE INVERSION PUBLICA', '', NULL, '<p>PROYECTOS DE INVERSION PUBLICA</p>', '2008-01-10 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 11:17:21', '2009-05-28 11:17:21'),
(80, 38, 5, 1, 1, 'PROCESO DE PRESUPUESTO PARTICIPATIVO AÑO FISCAL 2010', '', NULL, '<p>PROCESO DE PRESUPUESTO PARTICIPATIVO A&Ntilde;O FISCAL 2010</p>', '2009-05-28 00:00:00', 1, 1, '2009-05-28 00:00:00', '2009-05-28 11:57:45', '2009-05-28 11:57:45'),
(81, 20, 5, 1, 1, 'PLAN DE DESARROLLO INSTITUCIONAL 2009', '', NULL, '', '2009-06-01 00:00:00', 0, 1, '2009-06-01 00:00:00', '2009-06-01 08:50:54', '2009-06-01 08:50:54'),
(82, 20, 5, 1, 1, 'PLAN DE DESARROLLO INSTITUCIONAL 2009', '', NULL, '<p>PLAN DE DESARROLLO INSTITUCIONAL 2009</p>', '2009-06-01 00:00:00', 1, 1, '2009-06-01 00:00:00', '2009-06-01 09:30:36', '2009-06-01 09:12:50'),
(83, 38, 5, 1, 1, 'PRESUPUESTO PARTICIPATIVO 2011', 'PRESUPUESTO PARTICIPATIVO 2011', NULL, '<p>PRESUPUESTO PARTICIPATIVO 2011</p>', '2010-08-18 00:00:00', 0, 1, '2009-08-18 00:00:00', '2010-08-18 12:41:21', '2009-06-01 09:39:30'),
(84, 20, 5, 1, 1, 'PLAN DE DESARROLLO INSTITUCIONAL 2009 ', '', NULL, '<p>PLAN DE DESARROLLO INSTITUCIONAL 2009 </p>', '2009-06-01 00:00:00', 1, 1, '2009-06-01 00:00:00', '2009-06-01 09:44:21', '2009-06-01 09:44:21'),
(85, 20, 5, 1, 1, 'PLAN DE DESARROLLO INSTITUCIONAL 2009', '', NULL, '<p>PLAN DE DESARROLLO INSTITUCIONAL 2009</p>', '2009-06-01 00:00:00', 1, 1, '2009-06-01 00:00:00', '2009-06-01 09:49:18', '2009-06-01 09:49:18'),
(86, 20, 5, 1, 1, 'PLAN DE DESARROLLO INSTITUCIONAL 2009', '', NULL, '<p>PLAN DE DESARROLLO INSTITUCIONAL 2009</p>', '2009-06-01 00:00:00', 1, 1, '2009-06-01 00:00:00', '2009-06-01 09:53:33', '2009-06-01 09:53:33'),
(87, 5, 5, 1, 1, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES ', '', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES </p>', '2009-06-01 00:00:00', 0, 1, '2009-06-01 00:00:00', '2009-06-01 10:03:05', '2009-06-01 10:03:05'),
(88, 5, 5, 1, 1, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES', '', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES</p>', '2009-06-01 00:00:00', 0, 1, '2009-06-01 00:00:00', '2009-06-01 10:14:31', '2009-06-01 10:14:31'),
(89, 40, 5, 1, 1, 'PLAN ANUAL DE CONTRATACIONES Y ADQUISICIONES 2009', '', NULL, '<p>PLAN ANUAL DE CONTRATACIONES Y ADQUISICIONES 2009</p>', '2009-06-01 00:00:00', 0, 1, '2009-06-01 00:00:00', '2009-06-01 10:37:42', '2009-06-01 10:37:42'),
(90, 41, 5, 1, 1, 'CONVOCATORIAS DE PROCESOS', '', NULL, '<p>CONVOCATORIAS DE PROCESOS</p>', '2009-06-01 00:00:00', 1, 1, '2009-06-01 00:00:00', '2009-06-01 10:53:35', '2009-06-01 10:53:35'),
(91, 42, 5, 1, 1, 'RESULTADOS DE PROCESOS ', '', NULL, '<p>RESULTADOS DE PROCESOS </p>', '2009-06-01 00:00:00', 1, 1, '2009-06-01 00:00:00', '2009-06-01 11:02:57', '2009-06-01 11:02:18'),
(92, 39, 5, 1, 1, 'INFORME DE AUDIENCIAS DE RENDICION DE CUENTAS', '', NULL, '<p>INFORME DE AUDIENCIAS DE RENDICION DE CUENTAS</p>', '2009-06-12 00:00:00', 1, 1, '2009-06-12 00:00:00', '2009-06-12 12:06:40', '2009-06-12 12:06:40'),
(93, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL I', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL I</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:16:19', '2009-06-17 14:16:19'),
(94, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL II', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL II</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:23:48', '2009-06-17 14:23:48'),
(95, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL III', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL III</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:31:17', '2009-06-17 14:31:17'),
(96, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL IV', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL IV</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:36:28', '2009-06-17 14:36:28'),
(97, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL V', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL V</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:40:21', '2009-06-17 14:40:21'),
(98, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL VI', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL VI</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:42:31', '2009-06-17 14:42:31'),
(99, 31, 5, 1, 1, 'ACTAS DE SESION DE CONCEJO MUNICIPAL VII', '', NULL, '<p>ACTAS DE SESION DE CONCEJO MUNICIPAL VII</p>', '2009-06-17 00:00:00', 1, 0, '2009-06-17 00:00:00', '2009-06-17 14:48:11', '2009-06-17 14:48:11'),
(100, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-23 00:00:00', 0, 1, '2009-06-23 00:00:00', '2009-06-23 08:25:35', '2009-06-23 08:25:35'),
(101, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-23 00:00:00', 0, 1, '2009-06-23 00:00:00', '2009-06-23 08:39:13', '2009-06-23 08:29:13'),
(102, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-23 00:00:00', 0, 1, '2009-06-23 00:00:00', '2009-06-23 08:43:07', '2009-06-23 08:43:07'),
(103, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-23 00:00:00', 0, 1, '2009-06-23 00:00:00', '2009-06-23 19:19:26', '2009-06-23 19:19:26'),
(104, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-24 00:00:00', 0, 1, '2009-06-24 00:00:00', '2009-06-24 08:03:27', '2009-06-24 08:03:27'),
(105, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-24 00:00:00', 0, 1, '2009-06-24 00:00:00', '2009-06-24 08:08:14', '2009-06-24 08:08:14'),
(106, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-24 00:00:00', 0, 1, '2009-06-24 00:00:00', '2009-06-24 08:10:50', '2009-06-24 08:10:50'),
(107, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-24 00:00:00', 0, 1, '2009-06-24 00:00:00', '2009-06-24 09:50:34', '2009-06-24 09:50:34'),
(108, 37, 5, 1, 1, 'prueba', 'prueba', NULL, '<p>prueba</p>', '2009-06-24 00:00:00', 0, 1, '2009-06-24 00:00:00', '2009-06-24 10:34:00', '2009-06-24 10:11:19'),
(109, 37, 5, 1, 1, 'ACTIVIDADES OFICIALES DEL ALCALDE 2009', '', NULL, '<p>ACTIVIDADES OFICIALES DEL ALCALDE 2009</p>', '2009-06-24 00:00:00', 1, 1, '2009-06-24 00:00:00', '2009-06-24 15:29:08', '2009-06-24 15:29:08'),
(110, 46, 5, 1, 1, 'RESPONSABLE DE LA PAGINA WEB', '', NULL, '<p>RESPONSABLE DE LA PAGINA WEB</p>', '2009-07-10 00:00:00', 0, 1, '2009-07-10 00:00:00', '2009-07-10 11:38:21', '2009-07-10 11:38:21'),
(111, 9, 5, 1, 1, 'ORDENANZA MUNICIPAL Nº 011-2009-MDCN-T', 'Ordenanza Municipal Nº 011-2009-MDCN-T', NULL, '<p>Ordenanza Municipal N&ordm; 011-2009-MDCN-T</p>', '2009-09-02 00:00:00', 0, 1, '2009-09-02 00:00:00', '2009-09-08 09:42:41', '2009-09-08 09:42:41'),
(112, 1, 5, 1, 1, 'ORDENANZA MUNICIPAL Nº 011-2009-MDCN-T', 'Ordenanza Municipal Nº 011-2009-MDCN-T', NULL, '<p>Ordenanza Municipal N&ordm; 011-2009-MDCN-T</p>', '2009-09-02 00:00:00', 1, 1, '2009-09-02 00:00:00', '2009-09-08 09:51:16', '2009-09-08 09:51:16'),
(113, 10, 5, 1, 4, 'ACUERDO DE CONCEJO Nº052-2009-MDCN-T', 'ACUERDO DE CONCEJO Nº052-2009-MDCN-T', NULL, '<p>ACUERDO DE CONCEJO N&ordm;052-2009-MDCN-T</p>', '2009-10-29 00:00:00', 1, 1, '2009-10-29 00:00:00', '2009-10-29 10:36:22', '2009-10-29 10:36:22'),
(114, 10, 5, 1, 1, 'ACUERDO DE CONCEJO Nº054-2009-MDCN-T', 'ACUERDO DE CONCEJO Nº054-2009-MDCN-T', NULL, '<p>ACUERDO DE CONCEJO N&ordm;054-2009-MDCN-T</p>', '2009-11-01 00:00:00', 1, 1, '2009-11-01 00:00:00', '2009-11-02 07:01:41', '2009-11-02 07:01:41'),
(115, 41, 5, 1, 1, 'CONVOCATORIA CAS 001-2009-MDCN ', 'CONVOCATORIA CAS 001-2009-MDCN ', NULL, '<p>CONVOCATORIA CAS 001-2009-MDCN</p>', '2009-10-24 00:00:00', 0, 1, '2009-10-25 00:00:00', '2009-11-03 15:53:34', '2009-11-03 15:43:03'),
(116, 41, 5, 1, 1, 'CONVOCATORIA CAS 001-2009-MDCN ', '', NULL, '', '2009-11-01 00:00:00', 0, 1, '2009-11-01 00:00:00', '2009-11-03 15:54:34', '2009-11-03 15:54:34'),
(117, 41, 5, 1, 1, 'CONVOCATORIA CAS 001-2009-MDCN ', 'CONVOCATORIA CAS 001-2009-MDCN ', NULL, '<p>CONVOCATORIA CAS 001-2009-MDCN</p>', '2009-10-24 00:00:00', 0, 1, '2009-10-25 00:00:00', '2009-11-03 15:57:02', '2009-11-03 15:55:15'),
(118, 41, 5, 1, 1, 'CONVOCATORIA CAS 002-2009-MDCN ', 'CONVOCATORIA CAS 002-2009-MDCN ', NULL, '<p>CONVOCATORIA CAS 002-2009-MDCN </p>', '2009-10-24 00:00:00', 0, 1, '2009-10-24 00:00:00', '2009-11-03 15:59:35', '2009-11-03 15:59:35'),
(119, 5, 5, 1, 6, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES', '', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES</p>', '2010-04-29 00:00:00', 0, 1, '2010-04-29 00:00:00', '2010-04-29 09:25:44', '2010-04-29 09:25:44'),
(120, 5, 5, 1, 1, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES', '001-2010/MUNI', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES</p>', '2010-05-01 00:00:00', 0, 1, '2010-05-01 00:00:00', '2010-05-03 08:50:25', '2010-05-03 08:47:55'),
(121, 5, 5, 1, 1, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES', '', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES&nbsp; I PARTE&nbsp;</p>', '2010-05-01 00:00:00', 1, 1, '2010-05-01 00:00:00', '2010-05-03 09:23:46', '2010-05-03 09:18:12'),
(122, 5, 5, 1, 1, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES', '', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES II PARTE</p>', '2010-05-01 00:00:00', 1, 1, '2010-05-01 00:00:00', '2010-05-16 22:38:56', '2010-05-03 09:26:01'),
(123, 1, 5, 1, 1, 'ORDENANZA "REGULACION DEL USO DE LA PROPAGANDA POLITICA ELECTORAL EN CIUDAD NUEVA"', 'ORDENANZA Nº 006-2010-A/MDCN', NULL, '', '2010-08-13 00:00:00', 1, 1, '2010-08-13 00:00:00', '2010-08-13 15:21:56', '2010-08-13 15:21:56'),
(124, 11, 5, 1, 1, 'PRESUPUESTO PARTICIPATIVO 2010', 'PRESUPUESTO PARTICIPATIVO 2010', NULL, '', '2010-08-17 00:00:00', 0, 1, '2010-08-17 00:00:00', '2010-08-17 10:41:02', '2010-08-17 10:41:02'),
(125, 38, 5, 1, 1, 'PRESUPUESTO PARTICIPATIVO 2011', 'PRESUPUESTO PARTICIPATIVO 2011', NULL, '', '2010-08-18 00:00:00', 0, 1, '2010-08-18 00:00:00', '2010-08-18 12:36:26', '2010-08-18 12:36:26'),
(126, 38, 5, 1, 6, 'PRESUPUESTO PARTICIPATIVO 2011', 'PRESUPUESTO PARTICIPATIVO 2011', NULL, '', '2010-08-17 00:00:00', 1, 1, '2010-08-17 00:00:00', '2010-08-19 11:55:09', '2010-08-19 11:55:09'),
(127, 1, 5, 1, 1, 'PROCESO ELECCION DE JUEZ DE PAZ', 'PROCESO ELECCION DE JUEZ DE PAZ', NULL, '<p>RECABAR INFORMACION DEL PROCESO PARA ELECCION DE JUEZ DE PAZ 2010</p>', '2010-10-28 00:00:00', 0, 1, '2010-10-28 00:00:00', '2010-10-28 10:54:32', '2010-10-28 10:54:32'),
(128, 9, 5, 1, 1, 'ORDENANZA Nº 008-2010-A-MDCN-T', 'ORDENANZA Nº 008-2010-A-MDCN-T', NULL, '<p>ORDENANZA QUE APRUEBA LA AMPLIACION DEL BENEFICIO TRIBUTARIO A PARTIR DEL 01 DE OCTUBRE AL 15 DE DICIEMBRE 2010 EN CIUDAD NUEVA</p>', '2010-10-28 00:00:00', 1, 1, '2010-10-28 00:00:00', '2010-10-28 12:00:08', '2010-10-28 12:00:08'),
(129, 9, 7, 1, 1, 'Ordenanza Municipal Nº 001-2011-MDCN-T', 'O.M. Nº 001-2011-MDCN-T', NULL, '', '2011-01-14 00:00:00', 1, 1, '2011-01-14 00:00:00', '2011-05-17 16:57:59', '2011-01-14 00:00:00'),
(130, 9, 5, 1, 6, 'Ordenanza Municipal Nº 002-2011-MDCN-T', 'O.M. Nº 002-2011-MDCN-T', NULL, '', '2011-01-15 00:00:00', 0, 1, '2011-01-15 00:00:00', '2011-05-17 16:54:10', '2011-01-15 00:00:00'),
(457, 9, 7, 1, 6, 'Ordenanza Municipal Nº 003-2011-MDCN-T', 'O.M. Nº 003-2011-MDCN-T', NULL, '', '2011-01-14 00:00:00', 1, 1, '2011-01-14 12:00:00', '2011-01-14 12:00:00', '2011-01-14 12:00:00'),
(131, 9, 5, 1, 6, 'Ordenanza Municipal Nº 003-2011-MDCN-T', 'O.M. Nº003-2011-MDCN-T', NULL, '', '2011-01-15 00:00:00', 0, 1, '2011-01-15 00:00:00', '2011-05-17 16:59:00', '2011-01-15 00:00:00'),
(458, 9, 7, 1, 6, 'Ordenanza Municipal Nº 004-2011-MDCN-T', 'O.M. Nº 004-2011-MDCN-T', NULL, '', '2011-02-11 00:00:00', 1, 1, '2011-02-11 00:00:00', '2011-02-11 00:00:00', '2011-02-11 00:00:00'),
(132, 8, 5, 1, 6, 'CONFORMACION DEL COMITE DISTRITAL DE SEGURIDAD CIUDADANA ', 'R.A. Nº 075-2011-MDCN-T', NULL, '<p><strong>APROBAR</strong> LA CONFORMIDAD DEL COMITE DISTRITAL DE SEGURIDAD CIUDADANA DEL DISTRITO DE CIUDAD NUEVA</p>', '2011-01-27 00:00:00', 1, 1, '2011-01-27 00:00:00', '2011-01-27 00:00:00', '2011-01-27 00:00:00'),
(133, 8, 5, 1, 6, 'DESIGNACION DEL SECRETARIO TECNICO DEL COMITE DISTRITAL DE SEGURIDAD CIUDADANA', 'R.A. Nº 076-2011-MDCN-T', NULL, '<p><strong>DESIGNAR</strong> AL MAYOR PNP FLORES FUENTES JEFE DE LA COMISARIA DEL DISTRITO DE CIUDAD NUEVA COMO SECRETARIO TECNICO DEL COMITE DISTRITAL DE SEGURIDAD CIUDADANA</p>', '2011-01-27 00:00:00', 0, 1, '2010-01-27 00:00:00', '2010-01-27 00:00:00', '2010-01-27 00:00:00'),
(134, 8, 5, 1, 6, 'DESIGNAR SECRETARIO TECNICO DEL COMITE DISTRITAL DE SEGURIDAD CIUDADANA', 'R.A. Nº 076-2011-MDCN-T', NULL, '<p>DESIGNAR AL MAYOR PNP FLORES FUENTES JEFE DE LA COMISARIA DEL DISTRITO DE CIUDAD NUEVA COMO SECRETARIO TECNICO DEL COMITE DISTRITAL DE SEGURIDAD CIUDADANA</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2011-01-27 00:00:00', 1, 1, '2011-01-27 00:00:00', '2011-01-27 00:00:00', '2011-01-27 00:00:00'),
(135, 10, 5, 1, 6, 'Acuerdo de Concejo Nº 001-2011-MDCN-T', 'Nº 001-2011-MDCN-T', NULL, '', '2011-01-04 01:00:00', 1, 1, '2011-01-04 01:00:00', '2011-01-04 01:00:00', '2011-01-04 01:00:00'),
(136, 10, 5, 1, 6, 'Acuerdo de Concejo Nº 002-2011-MDCN-T', 'Nº 002-2011-MDCN-T', NULL, '', '2011-01-04 02:00:00', 1, 1, '2011-01-04 02:00:00', '2011-01-04 02:00:00', '2011-01-04 02:00:00'),
(137, 10, 5, 1, 6, 'Acuerdo de Concejo Nº 003-2011-MDCN-T', 'Nº 003-2011-MDCN-T', NULL, '', '2011-01-05 00:00:00', 1, 1, '2011-01-05 01:00:00', '2011-01-05 01:00:00', '2011-01-05 01:00:00'),
(138, 10, 5, 1, 6, 'Acuerdo de Concejo Nº 004-2011-MDCN-T', 'Nº 004-2011-MDCN-T', NULL, '', '2011-01-12 01:00:00', 1, 1, '2011-01-12 01:00:00', '2011-01-12 01:00:00', '2011-01-12 01:00:00'),
(139, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 005-2011-MDCN-T', 'Nº 005-2011-MDCN-T', NULL, '', '2011-01-12 02:00:00', 1, 1, '2011-01-12 02:00:00', '2011-01-12 02:00:00', '2011-01-12 02:00:00'),
(140, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 006-2011-MDCN-T', 'Nº 006-2011-MDCN-T', NULL, '', '2011-01-12 00:00:00', 1, 1, '2011-01-12 03:00:00', '2011-01-12 03:00:00', '2011-01-12 03:00:00'),
(141, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 007-2011-MDCN-T', 'Nº 007-2011-MDCN-T', NULL, '', '2011-01-13 01:00:00', 1, 1, '2011-01-13 01:00:00', '2011-01-13 01:00:00', '2011-01-13 01:00:00'),
(142, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 008-2011-MDCN-T', 'Nº 008-2011-MDCN-T', NULL, '', '2011-01-13 02:00:00', 1, 1, '2011-01-13 02:00:00', '2011-01-13 02:00:00', '2011-01-13 02:00:00'),
(143, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 009-2011-MDCN-T', 'Nº 009-2011-MDCN-T', NULL, '', '2011-01-13 03:00:00', 1, 1, '2011-01-13 03:00:00', '2011-01-13 03:00:00', '2011-01-13 03:00:00'),
(144, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 010-2011-MDCN-T', 'Nº 010-2011-MDCN-T', NULL, '', '2011-01-28 01:00:00', 1, 1, '2011-01-28 01:00:00', '2011-01-28 01:00:00', '2011-01-28 01:00:00'),
(145, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 011-2011-MDCN-T', 'Nº 011-2011-MDCN-T', NULL, '', '2011-01-28 02:00:00', 1, 1, '2011-01-28 02:00:00', '2011-01-28 02:00:00', '2011-01-28 02:00:00'),
(146, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 012-2011-MDCN-T', 'Nº 012-2011-MDCN-T', NULL, '', '2011-01-31 01:00:00', 1, 1, '2011-01-31 01:00:00', '2011-01-31 01:00:00', '2011-01-31 01:00:00'),
(147, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 013-2011-MDCN-T', 'Nº 013-2011-MDCN-T', NULL, '', '2011-01-31 02:00:00', 1, 1, '2011-01-31 02:00:00', '2011-01-31 02:00:00', '2011-01-31 02:00:00'),
(148, 10, 5, 0, 6, 'Acuerdo de Concejo Nº 014-2011-MDCN-T', 'Nº 014-2011-MDCN-T', NULL, '', '2011-01-31 03:00:00', 1, 1, '2011-01-31 03:00:00', '2011-01-31 03:00:00', '2011-01-31 03:00:00'),
(149, 10, 5, 1, 6, 'Acuerdo de Concejo Nº 015-2011-MDCN-T', 'Nº 015-2011-MDCN-T', NULL, '', '2011-01-31 04:00:00', 1, 1, '2011-01-31 04:00:00', '2011-01-31 04:00:00', '2011-01-31 04:00:00'),
(150, 9, 7, 1, 6, 'Ordenanza Municipal Nº 004-2011-MDCN-T', 'O.M. Nº 004-2011-MDCN-T', NULL, '', '2011-01-31 00:00:00', 0, 1, '2011-01-31 00:00:00', '2011-05-17 17:04:07', '2011-01-31 05:00:00'),
(456, 9, 7, 1, 6, 'Ordenanza Municipal Nº 002-2011-MDCN-T', 'O.M. Nº 002-2011-MDCN-T', NULL, '', '2011-01-14 00:00:00', 1, 1, '2011-01-14 10:00:00', '2011-01-14 10:00:00', '2011-01-14 10:00:00'),
(151, 10, 5, 1, 6, 'Acuerdo de Concejo Nº 016-2011-MDCN-T', 'Nº 016-2011-MDCN-T', NULL, '<p>Regulacion de Beneficio Tributario</p>\r\n<p>&nbsp;</p>', '2011-02-11 00:00:00', 1, 1, '2011-02-11 00:00:00', '2011-03-11 06:49:23', '2011-03-11 06:48:58'),
(152, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 017-2011-MDCN-T', 'Nº 017-2011-MDCN-T', NULL, '<p>Carnavales&nbsp; Costumbres de mi Pueblo-Ciudad Nueva 2011&quot;</p>', '2011-02-11 00:00:00', 1, 1, '2011-02-11 00:00:00', '2011-03-11 06:51:19', '2011-03-11 06:51:19'),
(153, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 018-2011-MDCN-T', 'Nº 018-2011-MDCN-T', NULL, '<p>Donaci&oacute;n&nbsp; de lnfraestructura de servicios Higi&eacute;nicos&nbsp; a&nbsp; favor de la Asociaci&oacute;n de Comerciantes Campo Ferial Per&uacute; - Bolivia</p>', '2011-02-14 00:00:00', 1, 1, '2011-02-14 00:00:00', '2011-03-11 07:13:57', '2011-03-11 06:51:54'),
(154, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 019-2011-MDCN-T', 'Nº 019-2011-MDCN-T', NULL, '<p>Convenio&nbsp; de Cooperaci&oacute;n&nbsp; lnterinstitucional entre&nbsp; la ONG&nbsp; IADES BLANSAL y la Municipalidad Distrital de Ciudad Nueva para&nbsp; la implementaci&oacute;n del Centro de Prevenci&oacute;n del Abuso Sexual lnfantil en forma conjunta a favor de&nbsp; la ni&ntilde;ez</p>', '2011-02-14 00:00:00', 1, 1, '2011-02-14 00:00:00', '2011-03-15 14:16:26', '2011-03-11 10:02:29'),
(155, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 020-2011-MDCN-T ', 'Nº 020-2011-MDCN-T ', NULL, '<p>Izamiento del pabellon a media asta en la plaza principal del distrito y en la cede institucional como muestra de solidaridad con los reclamos efectuados por trabajadores dedicados al reacondicionamiento de vehiculos de segundo uso - zofra tacna</p>', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 11:54:08', '2011-03-16 11:54:08'),
(156, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 021-2011-MDCN-T ', 'Nº 021-2011-MDCN-T ', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 12:23:56', '2011-03-16 12:23:56'),
(157, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 022-2011-MDCN-T ', 'Nº 022-2011-MDCN-T ', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 12:24:18', '2011-03-16 12:24:18'),
(158, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 023-2011-MDCN-T ', 'Nº 023-2011-MDCN-T ', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 12:28:11', '2011-03-16 12:24:50'),
(159, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 024-2011-MDCN-T ', 'Nº 024-2011-MDCN-T ', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 12:27:29', '2011-03-16 12:25:12'),
(160, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 025-2011-MDCN-T ', 'Nº 025-2011-MDCN-T ', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 12:26:58', '2011-03-16 12:25:43'),
(161, 10, 5, 1, 1, 'Acuerdo de Concejo Nº 026-2011-MDCN-T ', 'Nº 026-2011-MDCN-T ', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 12:26:13', '2011-03-16 12:26:13'),
(162, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 001-2011-MDCN-T ', 'Nº 001-2011-MDCN-T ', NULL, '<p><strong>Designar</strong> a partir del 01de enero del a&ntilde;o 2011al Abogado LORENZO CABANA PONCE, como secretario general de la MDCN</p>', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:41:03', '2011-03-16 13:36:39'),
(163, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 002-2011-MDCN-T', 'R.A. Nº 002-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:38:59', '2011-03-16 13:38:59'),
(164, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 003-2011-MDCN-T', 'R.A. Nº 003-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:39:29', '2011-03-16 13:39:29'),
(165, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 004-2011-MDCN-T', 'Nº 004-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:40:00', '2011-03-16 13:40:00'),
(166, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 005-2011-MDCN-T', 'Nº 005-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:41:58', '2011-03-16 13:41:58'),
(167, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 006-2011-MDCN-T', 'Nº 006-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:42:36', '2011-03-16 13:42:36'),
(168, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 007-2011-MDCN-T', 'Nº 007-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:43:46', '2011-03-16 13:43:46'),
(169, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 008-2011-MDCN-T', 'Nº 008-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:44:23', '2011-03-16 13:44:23'),
(170, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 009-2011-MDCN-T', 'Nº 009-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:44:57', '2011-03-16 13:44:57'),
(171, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 010-2011-MDCN-T', 'Nº 010-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:53:31', '2011-03-16 13:53:31'),
(172, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 011-2011-MDCN-T', 'Nº 011-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:53:58', '2011-03-16 13:53:58'),
(173, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 012-2011-MDCN-T', 'Nº 012-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:54:25', '2011-03-16 13:54:25'),
(174, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 013-2011-MDCN-T', 'Nº 013-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:54:53', '2011-03-16 13:54:53'),
(175, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 014-2011-MDCN-T', 'Nº 014-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:55:20', '2011-03-16 13:55:20'),
(176, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 015-2011-MDCN-T', 'Nº 015-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:55:50', '2011-03-16 13:55:50'),
(177, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 016-2011-MDCN-T', 'Nº 016-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:57:18', '2011-03-16 13:57:18'),
(178, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 017-2011-MDCN-T', 'Nº 017-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:57:53', '2011-03-16 13:57:53'),
(179, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 018-2011-MDCN-T', 'Nº 018-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:58:31', '2011-03-16 13:58:31'),
(180, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 019-2011-MDCN-T', 'Nº 019-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:59:00', '2011-03-16 13:59:00'),
(181, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 020-2011-MDCN-T', 'Nº 020-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:59:22', '2011-03-16 13:59:22'),
(182, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 021-2011-MDCN-T', 'Nº 021-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 13:59:49', '2011-03-16 13:59:49'),
(183, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 022-2011-MDCN-T', 'Nº 022-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:00:21', '2011-03-16 14:00:21'),
(184, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 023-2011-MDCN-T', 'Nº 023-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:00:49', '2011-03-16 14:00:49'),
(185, 8, 5, 1, 1, 'Resolución de Alcaldía Nº 024-2011-MDCN-T', 'Nº 024-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:01:52', '2011-03-16 14:01:52'),
(186, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 025-2011-MDCN-T', 'Nº 025-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:02:27', '2011-03-16 14:02:27'),
(187, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 026-2011-MDCN-T', 'Nº 026-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:02:53', '2011-03-16 14:02:53'),
(188, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 027-2011-MDCN-T', 'Nº 027-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:03:31', '2011-03-16 14:03:31'),
(189, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 028-2011-MDCN-T', 'Nº 028-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:03:52', '2011-03-16 14:03:52'),
(190, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 029-2011-MDCN-T', 'Nº 029-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:04:24', '2011-03-16 14:04:24'),
(191, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 030-2011-MDCN-T', 'Nº 030-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 14:04:47', '2011-03-16 14:04:47'),
(192, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 031-2011-MDCN-T ', 'Nº 031-2011-MDCN-T ', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:08:53', '2011-03-17 08:08:53'),
(193, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 032-2011-MDCN-T', 'Nº 032-2011-MDCN-T ', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:09:19', '2011-03-17 08:09:19'),
(194, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 033-2011-MDCN-T', 'Nº 033-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:09:40', '2011-03-17 08:09:40'),
(195, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 034-2011-MDCN-T', 'Nº 034-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:10:04', '2011-03-17 08:10:04'),
(196, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 035-2011-MDCN-T', 'Nº 035-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:10:37', '2011-03-17 08:10:37'),
(197, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 036-2011-MDCN-T', 'Nº 036-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:11:07', '2011-03-17 08:11:07'),
(198, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 037-2011-MDCN-T', 'Nº 037-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:11:54', '2011-03-17 08:11:54'),
(199, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 038-2011-MDCN-T', 'Nº 038-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:12:26', '2011-03-17 08:12:26'),
(200, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 039-2011-MDCN-T', 'Nº 039-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:12:58', '2011-03-17 08:12:58'),
(201, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 040-2011-MDCN-T', 'Nº 040-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:13:28', '2011-03-17 08:13:28'),
(202, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 041-2011-MDCN-T', 'Nº 041-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:14:02', '2011-03-17 08:14:02'),
(203, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 042-2011-MDCN-T', 'Nº 042-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:14:30', '2011-03-17 08:14:30'),
(204, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 043-2011-MDCN-T', 'Nº 043-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:16:39', '2011-03-17 08:16:39'),
(205, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 044-2011-MDCN-T', 'Nº 044-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:16:57', '2011-03-17 08:16:57'),
(206, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 045-2011-MDCN-T', 'Nº 045-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:18:02', '2011-03-17 08:18:02'),
(207, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 046-2011-MDCN-T', 'Nº 046-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:18:32', '2011-03-17 08:18:32'),
(208, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 047-2011-MDCN-T', 'Nº 047-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:18:56', '2011-03-17 08:18:56'),
(209, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 048-2011-MDCN-T', 'Nº 048-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:19:27', '2011-03-17 08:19:27'),
(210, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 049-2011-MDCN-T', 'Nº 049-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:19:57', '2011-03-17 08:19:57'),
(211, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 050-2011-MDCN-T', 'Nº 050-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 08:20:38', '2011-03-17 08:20:38'),
(212, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 051-2011-MDCN-T', 'Nº 051-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:05:17', '2011-03-17 10:05:17'),
(213, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 052-2011-MDCN-T', 'Nº 052-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:05:43', '2011-03-17 10:05:43'),
(214, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 053-2011-MDCN-T', 'Nº 053-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:06:11', '2011-03-17 10:06:11'),
(215, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 054-2011-MDCN-T', 'Nº 054-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:06:31', '2011-03-17 10:06:31'),
(216, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 055-2011-MDCN-T', 'Nº 055-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:06:50', '2011-03-17 10:06:50'),
(217, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 056-2011-MDCN-T', 'Nº 056-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:07:12', '2011-03-17 10:07:12');
INSERT INTO `tran_transparencia` (`in_id_transparencia`, `in_id_categoria`, `in_id_periodo`, `in_id_usuario`, `in_id_accion`, `vc_titulo_transparencia`, `vc_numeracion_transparencia`, `in_numero_transparencia`, `tx_contenido_transparencia`, `dt_fecha_transparencia`, `in_activo_transparencia`, `in_publicado_transparencia`, `dt_fechapublica_transparencia`, `dt_fechamod_transparencia`, `dt_fechareg_transparencia`) VALUES
(218, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 057-2011-MDCN-T', 'Nº 057-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:07:35', '2011-03-17 10:07:35'),
(219, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 058-2011-MDCN-T', 'Nº 058-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:08:01', '2011-03-17 10:08:01'),
(220, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 059-2011-MDCN-T', 'Nº 059-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:08:23', '2011-03-17 10:08:23'),
(221, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 060-2011-MDCN-T', 'Nº 060-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 0, '2011-03-17 00:00:00', '2011-03-17 10:21:06', '2011-03-17 10:08:44'),
(222, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 061-2011-MDCN-T', 'Nº 061-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:21:25', '2011-03-17 10:19:59'),
(223, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 062-2011-MDCN-T', 'Nº 062-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:22:10', '2011-03-17 10:22:10'),
(224, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 063-2011-MDCN-T', 'Nº 063-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 0, '2011-03-17 00:00:00', '2011-03-17 10:22:36', '2011-03-17 10:22:36'),
(225, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 064-2011-MDCN-T', 'Nº 064-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 0, '2011-03-17 00:00:00', '2011-03-17 10:23:05', '2011-03-17 10:23:05'),
(226, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 065-2011-MDCN-T', 'Nº 065-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:23:36', '2011-03-17 10:23:36'),
(227, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 066-2011-MDCN-T', 'Nº 066-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:24:13', '2011-03-17 10:24:13'),
(228, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 067-2011-MDCN-T', 'Nº 067-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:25:21', '2011-03-17 10:25:21'),
(229, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 068-2011-MDCN-T', 'Nº 068-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:25:48', '2011-03-17 10:25:48'),
(230, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 069-2011-MDCN-T', 'Nº 069-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:26:16', '2011-03-17 10:26:16'),
(231, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 070-2011-MDCN-T', 'Nº 070-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:28:20', '2011-03-17 10:28:20'),
(232, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 071-2011-MDCN-T', 'Nº 071-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:28:54', '2011-03-17 10:28:54'),
(233, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 072-2011-MDCN-T', 'Nº 072-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:29:23', '2011-03-17 10:29:23'),
(234, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 073-2011-MDCN-T', 'Nº 073-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:29:50', '2011-03-17 10:29:50'),
(235, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 074-2011-MDCN-T', 'Nº 074-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:30:21', '2011-03-17 10:30:21'),
(236, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 075-2011-MDCN-T', 'Nº 075-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:30:53', '2011-03-17 10:30:53'),
(237, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 076-2011-MDCN-T', 'Nº 076-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:32:28', '2011-03-17 10:32:28'),
(238, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 077-2011-MDCN-T', 'Nº 077-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:32:59', '2011-03-17 10:32:59'),
(239, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 078-2011-MDCN-T', 'Nº 078-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:33:41', '2011-03-17 10:33:41'),
(240, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 079-2011-MDCN-T', 'Nº 079-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:34:31', '2011-03-17 10:34:31'),
(241, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 080-2011-MDCN-T', 'Nº 080-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 10:35:00', '2011-03-17 10:35:00'),
(242, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 081-2011-MDCN-T', 'Nº 081-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 09:13:56', '2011-03-18 09:13:56'),
(243, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 082-2011-MDCN-T', 'Nº 082-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 09:15:06', '2011-03-18 09:15:06'),
(244, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 083-2011-MDCN-T', 'Nº 083-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 09:15:29', '2011-03-18 09:15:29'),
(245, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 084-2011-MDCN-T', 'Nº 084-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 13:44:26', '2011-03-18 13:44:26'),
(246, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 085-2011-MDCN-T', 'Nº 085-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 13:45:06', '2011-03-18 13:45:06'),
(247, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 086-2011-MDCN-T', 'Nº 086-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 13:47:37', '2011-03-18 13:47:37'),
(248, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 087-2011-MDCN-T', 'Nº 087-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 0, '2011-03-18 00:00:00', '2011-03-18 13:48:26', '2011-03-18 13:48:26'),
(249, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 088-2011-MDCN-T', 'Nº 088-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 13:49:15', '2011-03-18 13:49:15'),
(250, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 089-2011-MDCN-T', 'Nº 089-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 13:49:42', '2011-03-18 13:49:42'),
(251, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 090-2011-MDCN-T', 'Nº 090-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 13:50:17', '2011-03-18 13:50:17'),
(252, 38, 5, 1, 5, 'PLAN INTEGRAL DE GESTION AMBIENTAL DE RESIDUOS ', '001', NULL, '', '2011-03-21 00:00:00', 0, 1, '2011-03-21 00:00:00', '2011-03-21 10:29:00', '2011-03-21 10:26:09'),
(253, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 091-2011-MDCN-T ', 'Nº 091-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 11:21:14', '2011-03-21 11:21:14'),
(254, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 092-2011-MDCN-T ', 'Nº 092-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 11:21:43', '2011-03-21 11:21:43'),
(255, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 093-2011-MDCN-T ', 'Nº 093-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 0, '2011-03-21 00:00:00', '2011-03-21 11:22:12', '2011-03-21 11:22:12'),
(256, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 094-2011-MDCN-T ', 'Nº 094-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 11:26:20', '2011-03-21 11:26:20'),
(257, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 095-2011-MDCN-T ', 'Nº 095-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 11:26:43', '2011-03-21 11:26:43'),
(258, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 096-2011-MDCN-T ', 'Nº 096-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 11:27:05', '2011-03-21 11:27:05'),
(259, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 097-2011-MDCN-T ', 'Nº 097-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 11:27:32', '2011-03-21 11:27:32'),
(260, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 098-2011-MDCN-T ', 'Nº 098-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:04:52', '2011-03-21 12:04:52'),
(261, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 099-2011-MDCN-T ', 'Nº 099-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:05:21', '2011-03-21 12:05:21'),
(262, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 100-2011-MDCN-T ', 'Nº 100-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 0, '2011-03-21 00:00:00', '2011-03-21 12:05:54', '2011-03-21 12:05:54'),
(263, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 101-2011-MDCN-T ', 'Nº 101-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:06:30', '2011-03-21 12:06:30'),
(264, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 102-2011-MDCN-T ', 'Nº 102-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:06:50', '2011-03-21 12:06:50'),
(265, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 103-2011-MDCN-T ', 'Nº 103-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:07:14', '2011-03-21 12:07:14'),
(266, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 104-2011-MDCN-T ', 'Nº 104-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:07:59', '2011-03-21 12:07:59'),
(267, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 105-2011-MDCN-T ', 'Nº 105-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:08:23', '2011-03-21 12:08:23'),
(268, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 106-2011-MDCN-T ', 'Nº 106-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:08:44', '2011-03-21 12:08:44'),
(269, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 107-2011-MDCN-T ', 'Nº 107-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:09:09', '2011-03-21 12:09:09'),
(270, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 108-2011-MDCN-T ', 'Nº 108-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:09:43', '2011-03-21 12:09:43'),
(271, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 109-2011-MDCN-T ', 'Nº 109-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:10:05', '2011-03-21 12:10:05'),
(272, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 110-2011-MDCN-T ', 'Nº 110-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:10:33', '2011-03-21 12:10:33'),
(273, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 111-2011-MDCN-T ', 'Nº 111-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:10:58', '2011-03-21 12:10:58'),
(274, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 112-2011-MDCN-T ', 'Nº 112-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:11:21', '2011-03-21 12:11:21'),
(275, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 113-2011-MDCN-T ', 'Nº 113-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:12:30', '2011-03-21 12:12:30'),
(276, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 114-2011-MDCN-T ', 'Nº 114-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:12:51', '2011-03-21 12:12:51'),
(277, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 115-2011-MDCN-T ', 'Nº 115-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:13:13', '2011-03-21 12:13:13'),
(278, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 116-2011-MDCN-T ', 'Nº 116-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:13:39', '2011-03-21 12:13:39'),
(279, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 117-2011-MDCN-T ', 'Nº 117-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:14:04', '2011-03-21 12:14:04'),
(280, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 118-2011-MDCN-T ', 'Nº 118-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:14:31', '2011-03-21 12:14:31'),
(281, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 119-2011-MDCN-T ', 'Nº 119-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:14:52', '2011-03-21 12:14:52'),
(282, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 120-2011-MDCN-T ', 'Nº 120-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 12:15:14', '2011-03-21 12:15:14'),
(283, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 121-2011-MDCN-T', 'Nº 121-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 10:10:45', '2011-03-22 10:10:45'),
(284, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 122-2011-MDCN-T', 'Nº 122-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:36:45', '2011-03-22 10:11:15'),
(285, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 122-2011-MDCN-T', 'Nº 122-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 0, 1, '2011-03-22 00:00:00', '2011-03-22 10:39:42', '2011-03-22 10:39:42'),
(286, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 123-2011-MDCN-T', 'Nº 123-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:04:43', '2011-03-22 11:03:06'),
(287, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 124-2011-MDCN-T', 'Nº 124-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 0, '2011-03-22 00:00:00', '2011-03-22 11:03:34', '2011-03-22 11:03:34'),
(288, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 125-2011-MDCN-T', 'Nº 125-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:05:14', '2011-03-22 11:05:14'),
(289, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 126-2011-MDCN-T', 'Nº 126-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 0, '2011-03-22 00:00:00', '2011-03-22 11:05:44', '2011-03-22 11:05:44'),
(290, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 127-2011-MDCN-T', 'Nº 127-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 0, '2011-03-22 00:00:00', '2011-03-22 11:06:07', '2011-03-22 11:06:07'),
(291, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 128-2011-MDCN-T', 'Nº 128-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 0, '2011-03-22 00:00:00', '2011-03-22 11:06:38', '2011-03-22 11:06:38'),
(292, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 129-2011-MDCN-T', 'Nº 129-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:07:47', '2011-03-22 11:07:47'),
(293, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 130-2011-MDCN-T', 'Nº 130-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:08:13', '2011-03-22 11:08:13'),
(294, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 131-2011-MDCN-T', 'Nº 131-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:12:45', '2011-03-22 11:12:45'),
(295, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 132-2011-MDCN-T', 'Nº 132-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:21:35', '2011-03-22 11:21:35'),
(296, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 133-2011-MDCN-T', 'Nº 133-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:21:58', '2011-03-22 11:21:58'),
(297, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 134-2011-MDCN-T', 'Nº 134-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:22:49', '2011-03-22 11:22:49'),
(298, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 135-2011-MDCN-T', 'Nº 135-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:23:15', '2011-03-22 11:23:15'),
(299, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 136-2011-MDCN-T', 'Nº 136-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:25:06', '2011-03-22 11:25:06'),
(300, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 137-2011-MDCN-T', 'Nº 137-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:26:40', '2011-03-22 11:26:40'),
(301, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 138-2011-MDCN-T', 'Nº 138-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:27:34', '2011-03-22 11:27:34'),
(302, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 139-2011-MDCN-T', 'Nº 139-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:29:32', '2011-03-22 11:29:32'),
(303, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 140-2011-MDCN-T', 'Nº 140-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:31:00', '2011-03-22 11:31:00'),
(304, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 141-2011-MDCN-T', 'Nº 141-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:50:31', '2011-03-22 11:50:31'),
(305, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 142-2011-MDCN-T', 'Nº 142-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:50:50', '2011-03-22 11:50:50'),
(306, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 143-2011-MDCN-T', 'Nº 143-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:51:22', '2011-03-22 11:51:22'),
(307, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 144-2011-MDCN-T', 'Nº 144-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:51:46', '2011-03-22 11:51:46'),
(308, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 145-2011-MDCN-T', 'Nº 145-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:52:08', '2011-03-22 11:52:08'),
(309, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 146-2011-MDCN-T', 'Nº 146-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:52:36', '2011-03-22 11:52:36'),
(310, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 147-2011-MDCN-T', 'Nº 147-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:52:55', '2011-03-22 11:52:55'),
(311, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 148-2011-MDCN-T', 'Nº 148-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:53:30', '2011-03-22 11:53:30'),
(312, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 149-2011-MDCN-T', 'Nº 149-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 11:53:59', '2011-03-22 11:53:59'),
(313, 8, 5, 1, 6, 'Resolución de Alcaldía Nº 150-2011-MDCN-T', 'Nº 150-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 0, '2011-03-22 00:00:00', '2011-03-22 11:54:24', '2011-03-22 11:54:24'),
(314, 48, 7, 1, 6, 'CONVOCATORIA PERSONAL CAS', 'Nº 01-2011-MDCN/TAC', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(315, 41, 7, 0, 6, 'SUMINISTRO DE COMBUSTIBLE PARA EL GRIFO MUNICIPAL', 'LP Nº 001-2011-CE-MDCN-T', NULL, '<p>\r\n<table cellspacing="0" cellpadding="0" border="0" style="width: 430px; height: 64px">\r\n    <tbody>\r\n        <tr>\r\n            <td><span style="color: rgb(0,0,255)"><span class="c-black fs-8 lpac-c-blue">LP- </span>N&ordm;&nbsp; 001-2011-CE-MDCN-T</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">(BIENES)</span></span>&nbsp;</td>\r\n            <td style="text-align: center">Ver Proceso</td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Referencial:</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">S/. 7`930,980.47</span></span><span class="fs-8">&nbsp; Costo de participacion:</span>&nbsp;<span class="c-black\r\n            fs-8">S/. 5.00</span></td>\r\n            <td valign="top" rowspan="3" style="text-align: center"><a title="Ver Proceso en el SE@CE" target="_blank" href="http://www.seace.gob.pe/Default.asp?_CALIFICADOR_=PORTLET.1.47.0.3.10&amp;_REGIONID_=1&amp;_PORTLETID_=47&amp;_PRIVILEGEID_=5&amp;_ORDERID_=0&amp;_PAGEID_=3&amp;_CONTENTID_=10&amp;_USERID_=%3C%21--USERID--%3E&amp;_EVENTNAME_=&amp;_OBJECTFIRE_=&amp;_OBJECTEVENT_=&amp;scriptdo=PKU_OPNEGOCIO.doviewficha&amp;lpnombre_sigla_entidad=CIUDAD+NUEVA&amp;lpf_registro=&amp;lpcodobjeto=&amp;lpproc_tipo=1&amp;lpproc_num=1&amp;lpanhoentidad=2011&amp;lpproc_sigla=&amp;lpdep_codigo=23&amp;lpitem_descripcion=&amp;lptipobien=&amp;lpgrupobien=&amp;lppagenum=&amp;lpinproclose=0&amp;lpcodentidad=&amp;lpcodtiposubasta=&amp;aplicatribunal=&amp;lpproc_numtrib=&amp;lpanhoentidadtrib=&amp;lpnconvoca=1703327"><img height="30" alt="Ver Proceso en el SE@CE" width="70" border="0" src="../images/seace.gif" /></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Adjudicado:</span>&nbsp;<span class="lpac-c-blue fs-8">S/. 7`837,647.38</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Fecha:</span><span class="fs-8">16/05/2011</span><span class="fs-8">,&nbsp; Fase:</span>&nbsp;<strong><font color="#666666">BUENA PRO CONSENTIDA</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '2011-03-24 00:00:00', 1, 1, '2011-03-24 00:00:00', '2011-05-27 10:11:00', '2011-03-24 15:41:16'),
(316, 49, 5, 1, 6, 'Plan Urbano 2010- 2015', 'Nº 001', NULL, '<p>Periodo de Publicaci&oacute;n y Recepci&oacute;n de observaciones del Plan Urbano del 02 de Marzo al 02 de Abril </p>', '2011-03-01 00:00:00', 1, 1, '2011-03-01 00:00:00', '2011-03-01 00:00:00', '2011-03-01 00:00:00'),
(317, 11, 7, 1, 6, 'DECRETO DE ALCALDIA Nº 002-2011-MDCN-T', 'Nº 002-2011-MDCN-T', NULL, '<p>DECRETO DE LEY SECA A PARTIR DE LAS 00:00 HORAS DEL DIA 08 DE ABRIL DEL 2011</p>', '2011-04-08 00:00:00', 1, 1, '2011-04-08 00:00:00', '2011-04-08 11:18:19', '2011-04-08 11:17:32'),
(318, 11, 7, 1, 6, 'ADJUDICACIÓN DIRECTA SELECTIVA DE SUMINISTRO DE LECHE FRESCA', 'ADS Nº 001-2011-MDCN-T', NULL, '', '2011-04-15 00:00:00', 0, 1, '2011-04-15 00:00:00', '2011-04-15 16:49:39', '2011-04-15 16:49:39'),
(319, 41, 7, 1, 6, 'SUMINISTRO DE LECHE FRESCA PARA EL PROGRAMA VASO DE LECHE DE LA MDCN-T', 'Nº 001-2011-CE-MDCN-T', NULL, '<p>\r\n<table cellspacing="0" cellpadding="0" border="0" style="width: 430px; height: 64px">\r\n    <tbody>\r\n        <tr>\r\n            <td><span style="color: rgb(0,0,255)"><span class="c-black fs-8 lpac-c-blue">ADS - </span>N&ordm;&nbsp; 001-2011-CE-MDCN-T</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">(BIENES)</span></span>&nbsp;</td>\r\n            <td style="text-align: center">Ver Proceso</td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Referencial:</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">S/. 158,328.00</span></span><span class="fs-8">,&nbsp; Costo de participacion:</span>&nbsp;<span class="c-black\r\n            fs-8">S/. 5.00</span></td>\r\n            <td valign="top" rowspan="3" style="text-align: center"><a title="Ver Proceso en el SE@CE" target="_blank" href="http://www.seace.gob.pe/Default.asp?_CALIFICADOR_=PORTLET.1.47.0.3.10&amp;_REGIONID_=1&amp;_PORTLETID_=47&amp;_PRIVILEGEID_=5&amp;_ORDERID_=0&amp;_PAGEID_=3&amp;_CONTENTID_=10&amp;_USERID_=%3C%21--USERID--%3E&amp;_EVENTNAME_=&amp;_OBJECTFIRE_=&amp;_OBJECTEVENT_=&amp;scriptdo=PKU_OPNEGOCIO.doviewficha&amp;lpnombre_sigla_entidad=CIUDAD+NUEVA&amp;lpf_registro=&amp;lpcodobjeto=&amp;lpproc_tipo=8&amp;lpproc_num=1&amp;lpanhoentidad=2011&amp;lpproc_sigla=&amp;lpdep_codigo=23&amp;lpitem_descripcion=&amp;lptipobien=&amp;lpgrupobien=&amp;lppagenum=&amp;lpinproclose=0&amp;lpcodentidad=&amp;lpcodtiposubasta=&amp;aplicatribunal=&amp;lpproc_numtrib=&amp;lpanhoentidadtrib=&amp;lpnconvoca=1705314"><img height="30" alt="Ver Proceso en el SE@CE" width="70" border="0" src="../images/seace.gif" /></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Adjudicado:</span>&nbsp;<span class="lpac-c-blue fs-8">S/. 158,328.00</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Fecha:</span><span class="fs-8">16/05/2011</span><span class="fs-8">,&nbsp; Fase:</span>&nbsp;<strong><font color="#666666">BUENA PRO CONSENTIDA</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '2011-03-29 00:00:00', 1, 1, '2011-03-29 00:00:00', '2011-05-27 10:28:36', '2011-03-29 16:54:41');
INSERT INTO `tran_transparencia` (`in_id_transparencia`, `in_id_categoria`, `in_id_periodo`, `in_id_usuario`, `in_id_accion`, `vc_titulo_transparencia`, `vc_numeracion_transparencia`, `in_numero_transparencia`, `tx_contenido_transparencia`, `dt_fecha_transparencia`, `in_activo_transparencia`, `in_publicado_transparencia`, `dt_fechapublica_transparencia`, `dt_fechamod_transparencia`, `dt_fechareg_transparencia`) VALUES
(463, 50, 7, 1, 6, 'PROCESO DE PRESUPUESTO PARTICIPATIVO BASADO EN RESULTADOS PARA EL AÑO FISCAL 2012', 'Nº 272 - 2011 - MDCN-T', NULL, '<p>\r\n<meta content="text/html; charset=utf-8" http-equiv="Content-Type">\r\n<meta content="Word.Document" name="ProgId">\r\n<meta content="Microsoft Word 12" name="Generator">\r\n<meta content="Microsoft Word 12" name="Originator">\r\n<link href="file:///C:WindowsTempmsohtmlclip1&#65533;1clip_filelist.xml" rel="File-List" />\r\n<link href="file:///C:WindowsTempmsohtmlclip1&#65533;1clip_themedata.thmx" rel="themeData" />\r\n<link href="file:///C:WindowsTempmsohtmlclip1&#65533;1clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>\r\n<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\nDefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\nLatentStyleCount="267">\r\n<w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Normal" />\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="heading 1" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 1" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 2" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 3" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 4" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 5" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 6" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 7" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 8" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 9" />\r\n<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />\r\n<w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Title" />\r\n<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />\r\n<w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtitle" />\r\n<w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Strong" />\r\n<w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Emphasis" />\r\n<w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Table Grid" />\r\n<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />\r\n<w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="No Spacing" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 1" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 1" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 1" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 1" />\r\n<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />\r\n<w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />\r\n<w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Quote" />\r\n<w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 1" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 1" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 1" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 1" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 2" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 2" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 2" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 2" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 2" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 2" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 2" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 3" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 3" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 3" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 3" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 3" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 3" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 3" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 4" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 4" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 4" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 4" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 4" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 4" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 4" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 5" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 5" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 5" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 5" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 5" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 5" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 5" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 6" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 6" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 6" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 6" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 6" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 6" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 6" />\r\n<w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />\r\n<w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />\r\n<w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />\r\n<w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />\r\n<w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Book Title" />\r\n<w:LsdException Locked="false" Priority="37" Name="Bibliography" />\r\n<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />\r\n</w:LatentStyles>\r\n</xml><![endif]--><style type="text/css">\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin-top:0cm;\r\n	margin-right:0cm;\r\n	margin-bottom:10.0pt;\r\n	margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	margin-bottom:10.0pt;\r\n	line-height:115%;}\r\n@page Section1\r\n	{size:595.3pt 841.9pt;\r\n	margin:70.85pt 3.0cm 70.85pt 3.0cm;\r\n	mso-header-margin:35.4pt;\r\n	mso-footer-margin:35.4pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style><!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Tabla normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin-top:0cm;\r\nmso-para-margin-right:0cm;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0cm;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:"Calibri","sans-serif";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:"Times New Roman";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->    </meta>\r\n</meta>\r\n</meta>\r\n</meta>\r\n<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />\r\n<meta content="Word.Document" name="ProgId" />\r\n<meta content="Microsoft Word 12" name="Generator" />\r\n<meta content="Microsoft Word 12" name="Originator" />\r\n<link href="file:///C:WindowsTempmsohtmlclip1\01clip_filelist.xml" rel="File-List" />\r\n<link href="file:///C:WindowsTempmsohtmlclip1\01clip_themedata.thmx" rel="themeData" />\r\n<link href="file:///C:WindowsTempmsohtmlclip1\01clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>\r\n<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\nDefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\nLatentStyleCount="267">\r\n<w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Normal" />\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="heading 1" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 1" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 2" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 3" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 4" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 5" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 6" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 7" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 8" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 9" />\r\n<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />\r\n<w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Title" />\r\n<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />\r\n<w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtitle" />\r\n<w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Strong" />\r\n<w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Emphasis" />\r\n<w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Table Grid" />\r\n<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />\r\n<w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="No Spacing" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 1" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 1" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 1" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 1" />\r\n<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />\r\n<w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />\r\n<w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Quote" />\r\n<w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 1" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 1" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 1" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 1" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 2" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 2" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 2" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 2" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 2" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 2" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 2" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 3" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 3" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 3" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 3" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 3" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 3" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 3" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 4" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 4" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 4" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 4" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 4" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 4" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 4" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 5" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 5" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 5" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 5" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 5" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 5" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 5" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 6" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 6" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 6" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 6" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 6" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 6" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 6" />\r\n<w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />\r\n<w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />\r\n<w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />\r\n<w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />\r\n<w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Book Title" />\r\n<w:LsdException Locked="false" Priority="37" Name="Bibliography" />\r\n<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />\r\n</w:LatentStyles>\r\n</xml><![endif]--><style type="text/css">\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n@font-face\r\n	{font-family:Tahoma;\r\n	panose-1:2 11 6 4 3 5 4 4 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:1627400839 -2147483648 8 0 66047 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin-top:0cm;\r\n	margin-right:0cm;\r\n	margin-bottom:10.0pt;\r\n	margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	margin-bottom:10.0pt;\r\n	line-height:115%;}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:70.85pt 3.0cm 70.85pt 3.0cm;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style><!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Tabla normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin-top:0cm;\r\nmso-para-margin-right:0cm;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0cm;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:"Calibri","sans-serif";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:"Times New Roman";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]--><span style="font-size: 9pt; line-height: 115%; font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: rgb(51, 51, 51);">Proceso de Presupuesto Participativo basado en resultados para el a&ntilde;o Fiscal 2012.</span></p>', '2011-05-12 00:00:00', 1, 1, '2011-05-12 00:00:00', '2011-05-24 08:20:52', '2011-05-12 16:00:00'),
(464, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 272-2011-MDCN-T', 'RA Nº 272-2011-MDCN-T', NULL, '', '2011-05-12 00:00:00', 1, 1, '2011-05-12 00:00:00', '2011-05-12 15:19:19', '2011-05-12 15:19:19');
INSERT INTO `tran_transparencia` (`in_id_transparencia`, `in_id_categoria`, `in_id_periodo`, `in_id_usuario`, `in_id_accion`, `vc_titulo_transparencia`, `vc_numeracion_transparencia`, `in_numero_transparencia`, `tx_contenido_transparencia`, `dt_fecha_transparencia`, `in_activo_transparencia`, `in_publicado_transparencia`, `dt_fechapublica_transparencia`, `dt_fechamod_transparencia`, `dt_fechareg_transparencia`) VALUES
(465, 50, 7, 1, 6, 'RESOLUCIÓN DE ALCALDÍA Nº 272-2011-MDCN-T', 'RA Nº 272-2011-MDCN-T', NULL, '<p>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\r\n<meta name="ProgId" content="Word.Document">\r\n<meta name="Generator" content="Microsoft Word 12">\r\n<meta name="Originator" content="Microsoft Word 12">\r\n<link rel="File-List" href="file:///C:%5CWindows%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml" />\r\n<link rel="themeData" href="file:///C:%5CWindows%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx" />\r\n<link rel="colorSchemeMapping" href="file:///C:%5CWindows%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml" /><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>ES-TRAD</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:DontVertAlignCellWithSp/>\r\n   <w:DontBreakConstrainedForcedTables/>\r\n   <w:DontVertAlignInTxbx/>\r\n   <w:Word11KerningPairs/>\r\n   <w:CachedColBalance/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="--"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><style type="text/css">\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n@font-face\r\n	{font-family:Tahoma;\r\n	panose-1:2 11 6 4 3 5 4 4 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:1627400839 -2147483648 8 0 66047 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin-top:0cm;\r\n	margin-right:0cm;\r\n	margin-bottom:10.0pt;\r\n	margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	margin-bottom:10.0pt;\r\n	line-height:115%;}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:70.85pt 3.0cm 70.85pt 3.0cm;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Tabla normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:"Times New Roman";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]--><span style="font-size: 9pt; line-height: 115%; font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: rgb(51, 51, 51);">Resoluci&oacute;n que <strong><span style="font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;;">APRUEBA </span></strong>el Proceso de Presupuesto Participativo basado en resultados para el a&ntilde;o Fiscal 2012</span>    .</meta>\r\n</meta>\r\n</meta>\r\n</meta>\r\n</p>', '2011-05-12 00:00:00', 1, 1, '2011-05-12 00:00:00', '2011-05-24 08:23:55', '2011-05-12 15:53:01'),
(466, 50, 7, 1, 6, 'REGLAMENTO DE PROCESO PRESUPUESTO PARTICIPATIVO 2012', 'R 2012-MDCN-T', NULL, '<p>\r\n<meta content="text/html; charset=utf-8" http-equiv="Content-Type">\r\n<meta content="Word.Document" name="ProgId">\r\n<meta content="Microsoft Word 12" name="Generator">\r\n<meta content="Microsoft Word 12" name="Originator">\r\n<link href="file:///C:%5CWindows%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml" rel="File-List" />\r\n<link href="file:///C:%5CWindows%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx" rel="themeData" />\r\n<link href="file:///C:%5CWindows%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>ES-TRAD</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:DontVertAlignCellWithSp/>\r\n   <w:DontBreakConstrainedForcedTables/>\r\n   <w:DontVertAlignInTxbx/>\r\n   <w:Word11KerningPairs/>\r\n   <w:CachedColBalance/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="--"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><style type="text/css">\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n@font-face\r\n	{font-family:Tahoma;\r\n	panose-1:2 11 6 4 3 5 4 4 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:1627400839 -2147483648 8 0 66047 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin-top:0cm;\r\n	margin-right:0cm;\r\n	margin-bottom:10.0pt;\r\n	margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-fareast-language:EN-US;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	margin-bottom:10.0pt;\r\n	line-height:115%;}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:70.85pt 3.0cm 70.85pt 3.0cm;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Tabla normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:"Times New Roman";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]--><span style="font-size: 9pt; line-height: 115%; font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: rgb(51, 51, 51);">Reglamento de proceso de presupuesto participativo basado en resultados de la municipalidad distrital de Ciudad Nueva (MDCN) &ndash; 2012.</span></meta>\r\n</meta>\r\n</meta>\r\n</meta>\r\n</p>', '2011-05-12 00:00:00', 1, 1, '2011-05-12 00:00:00', '2011-05-24 08:18:54', '2011-05-12 17:06:39'),
(467, 41, 7, 1, 6, 'SERVICIO DE FORMULACIÓN DE ESTUDIO DE PRE INVERSIÓN A NIVEL DE PREFACTIBILIDAD', 'AMC Nº 001-2011-CE-MDCN-T', NULL, '<p>\r\n<table cellspacing="0" cellpadding="0" border="0" style="width: 430px; height: 64px">\r\n    <tbody>\r\n        <tr>\r\n            <td><span style="color: rgb(0,0,255)"><span class="c-black fs-8 lpac-c-blue">AMC - </span>N&ordm;&nbsp; 001-2011-MDCN-T</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">(SERVICIOS)</span></span>&nbsp;</td>\r\n            <td style="text-align: center">Ver Proceso</td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Referencial:</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">S/. 39.500</span></span><span class="fs-8">,&nbsp; Costo de participacion:</span>&nbsp;<span class="c-black\r\n            fs-8">S/. 0.00</span></td>\r\n            <td valign="top" rowspan="3" style="text-align: center"><a title="Ver Proceso en el SE@CE" target="_blank" href="http://www.seace.gob.pe/Default.asp?_CALIFICADOR_=PORTLET.1.47.0.3.10&amp;_REGIONID_=1&amp;_PORTLETID_=47&amp;_PRIVILEGEID_=5&amp;_ORDERID_=0&amp;_PAGEID_=3&amp;_CONTENTID_=10&amp;_USERID_=%3C%21--USERID--%3E&amp;_EVENTNAME_=&amp;_OBJECTFIRE_=&amp;_OBJECTEVENT_=&amp;scriptdo=PKU_OPNEGOCIO.doviewficha&amp;lpnombre_sigla_entidad=CIUDAD+NUEVA&amp;lpf_registro=&amp;lpcodobjeto=&amp;lpproc_tipo=9&amp;lpproc_num=1&amp;lpanhoentidad=2011&amp;lpproc_sigla=&amp;lpdep_codigo=23&amp;lpitem_descripcion=&amp;lptipobien=&amp;lpgrupobien=&amp;lppagenum=&amp;lpinproclose=0&amp;lpcodentidad=&amp;lpcodtiposubasta=&amp;aplicatribunal=&amp;lpproc_numtrib=&amp;lpanhoentidadtrib=&amp;lpnconvoca=1731152"><img height="30" alt="Ver Proceso en el SE@CE" width="70" border="0" src="../images/seace.gif" /></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Adjudicado:</span>&nbsp;<span class="lpac-c-blue fs-8">S/. 39.500</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Fecha:</span><span class="fs-8">16/05/2011</span><span class="fs-8">,&nbsp; Fase:</span>&nbsp;<strong><font color="#666666">BUENA PRO CONSENTIDA</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '2011-05-16 00:00:00', 1, 1, '2011-05-16 00:00:00', '2011-05-27 08:01:03', '2011-05-16 00:00:00'),
(468, 50, 7, 1, 1, 'ORDENANZA MUNICIPAL Nº 007 - 2011 MDCN-T', 'O.M. Nº 007-2011-MDCN-T', NULL, '<p><strong>Dar inicio</strong> al presupuesto participativo del a&ntilde;o fiscal 2012</p>', '2011-05-09 00:00:00', 1, 1, '2011-05-09 00:00:00', '2011-05-25 09:10:15', '2011-05-09 08:57:01');
INSERT INTO `tran_transparencia` (`in_id_transparencia`, `in_id_categoria`, `in_id_periodo`, `in_id_usuario`, `in_id_accion`, `vc_titulo_transparencia`, `vc_numeracion_transparencia`, `in_numero_transparencia`, `tx_contenido_transparencia`, `dt_fecha_transparencia`, `in_activo_transparencia`, `in_publicado_transparencia`, `dt_fechapublica_transparencia`, `dt_fechamod_transparencia`, `dt_fechareg_transparencia`) VALUES
(320, 41, 7, 1, 6, 'SUMINISTRO DE CEREALES PARA EL PROGRAMA VASO DE LECHE DE LA MDCN-T', 'Nº 002-2011-CE-MDCN-T ', NULL, '<p>\r\n<table cellspacing="0" cellpadding="0" border="0" style="width: 430px; height: 64px">\r\n    <tbody>\r\n        <tr>\r\n            <td><span style="color: rgb(0,0,255)"><span class="c-black fs-8 lpac-c-blue">ADS - </span>N&ordm;&nbsp; 002-2011-CE-MDCN-T</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">(BIENES)</span></span>&nbsp;</td>\r\n            <td style="text-align: center">Ver Proceso</td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Referencial:</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">S/. 59,847.98</span></span><span class="fs-8">,&nbsp; Costo de participacion:</span>&nbsp;<span class="c-black\r\n            fs-8">S/. 5.00</span></td>\r\n            <td valign="top" rowspan="3" style="text-align: center"><a title="Ver Proceso en el SE@CE" target="_blank" href="http://www.seace.gob.pe/Default.asp?_CALIFICADOR_=PORTLET.1.47.0.3.10&amp;_REGIONID_=1&amp;_PORTLETID_=47&amp;_PRIVILEGEID_=5&amp;_ORDERID_=0&amp;_PAGEID_=3&amp;_CONTENTID_=10&amp;_USERID_=%3C%21--USERID--%3E&amp;_EVENTNAME_=&amp;_OBJECTFIRE_=&amp;_OBJECTEVENT_=&amp;scriptdo=PKU_OPNEGOCIO.doviewficha&amp;lpnombre_sigla_entidad=CIUDAD+NUEVA&amp;lpf_registro=&amp;lpcodobjeto=&amp;lpproc_tipo=8&amp;lpproc_num=2&amp;lpanhoentidad=2011&amp;lpproc_sigla=&amp;lpdep_codigo=23&amp;lpitem_descripcion=&amp;lptipobien=&amp;lpgrupobien=&amp;lppagenum=&amp;lpinproclose=0&amp;lpcodentidad=&amp;lpcodtiposubasta=&amp;aplicatribunal=&amp;lpproc_numtrib=&amp;lpanhoentidadtrib=&amp;lpnconvoca=1706169"><img height="30" alt="Ver Proceso en el SE@CE" width="70" border="0" src="../images/seace.gif" /></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Adjudicado:</span>&nbsp;<span class="lpac-c-blue fs-8">S/. 58,185.54</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Fecha:</span><span class="fs-8">16/05/2011</span><span class="fs-8">,&nbsp; Fase:</span>&nbsp;<strong><font color="#666666">BUENA PRO CONSENTIDA</font></strong></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-05-27 10:27:49', '2011-03-30 17:00:31'),
(321, 41, 7, 1, 6, 'ADQUISICIÓN DE TUBOS PVC PARA LA OBRA AMPLIACION DEL SISTEMA DE AGUA POTABLE Y ALCANTARILLADO', 'Nº 002-2011-CE-MDCN-T', NULL, '<p>\r\n<table cellspacing="0" cellpadding="0" border="0" style="width: 430px; height: 64px">\r\n    <tbody>\r\n        <tr>\r\n            <td><span style="color: rgb(0,0,255)"><span class="c-black fs-8 lpac-c-blue">AMC - </span>N&ordm;&nbsp; 002-2011-MDCN-T</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">(BIENES)</span></span>&nbsp;</td>\r\n            <td style="text-align: center">Ver Proceso</td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Referencial:</span>&nbsp; <span style="color: rgb(255,0,0)"><span class="lpac-c-red fs-8">S/. 18.430</span></span><span class="fs-8">,&nbsp; Costo de participacion:</span>&nbsp;<span class="c-black\r\n            fs-8">S/. 0.00</span></td>\r\n            <td valign="top" rowspan="3" style="text-align: center"><a title="Ver Proceso en el SE@CE" target="_blank" href="http://www.seace.gob.pe/Default.asp?_CALIFICADOR_=PORTLET.1.47.0.3.10&amp;_REGIONID_=1&amp;_PORTLETID_=47&amp;_PRIVILEGEID_=5&amp;_ORDERID_=0&amp;_PAGEID_=3&amp;_CONTENTID_=10&amp;_USERID_=%3C%21--USERID--%3E&amp;_EVENTNAME_=&amp;_OBJECTFIRE_=&amp;_OBJECTEVENT_=&amp;scriptdo=PKU_OPNEGOCIO.doviewficha&amp;lpnombre_sigla_entidad=CIUDAD+NUEVA&amp;lpf_registro=&amp;lpcodobjeto=&amp;lpproc_tipo=9&amp;lpproc_num=2&amp;lpanhoentidad=2011&amp;lpproc_sigla=&amp;lpdep_codigo=23&amp;lpitem_descripcion=&amp;lptipobien=&amp;lpgrupobien=&amp;lppagenum=&amp;lpinproclose=0&amp;lpcodentidad=&amp;lpcodtiposubasta=&amp;aplicatribunal=&amp;lpproc_numtrib=&amp;lpanhoentidadtrib=&amp;lpnconvoca=1715729"><img height="30" alt="Ver Proceso en el SE@CE" width="70" border="0" src="../images/seace.gif" /></a></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Valor Adjudicado:</span>&nbsp;<span class="lpac-c-blue fs-8">S/. 15.731.98</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><span class="fs-8">Fecha:</span><span class="fs-8">15/04/2011</span><span class="fs-8">,&nbsp; Fase:</span>&nbsp;<span style="color: rgb(102,102,102)"><strong><span class="c-gray bold fs-8">BUENA PRO CONSENTIDA</span></strong></span></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', '2011-04-15 00:00:00', 1, 1, '2011-04-15 00:00:00', '2011-05-27 10:26:44', '2011-04-15 17:09:14'),
(322, 9, 7, 1, 6, 'Ordenanza Municipal Nº 006-2011 MDCN-T', 'Nº 006-2011 MDCN-T', NULL, '<p>Aprobar la Realizaci&oacute;n de la campa&ntilde;a de emisi&oacute;n gratuita de copiasde las atas de Nacimiento.</p>', '2011-05-04 00:00:00', 0, 1, '2011-05-04 00:00:00', '2011-05-04 10:43:03', '2011-05-04 10:43:03'),
(323, 1, 7, 1, 1, 'Ordenanza Municipal Nº 006-2011 MDCN-T', 'Nº 006-2011 MDCN-T', NULL, '', '2011-05-04 00:00:00', 0, 1, '2011-05-04 00:00:00', '2011-05-04 10:49:12', '2011-05-04 10:49:12'),
(324, 9, 7, 1, 6, 'Ordenanza Municipal Nº 007-2011-MDCN-T', 'Nº 007-2011-MDCN-T', NULL, '', '2011-05-11 00:00:00', 0, 1, '2011-05-11 00:00:00', '2011-05-11 11:29:01', '2011-05-11 11:29:01'),
(325, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 027-2011-MDCN-T', 'Nº 027-2011-MDCN-T', NULL, '', '2011-03-07 00:00:00', 1, 1, '2011-03-07 00:00:00', '2011-03-07 00:00:00', '2011-03-07 00:00:00'),
(326, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 028-2011-MDCN-T ', 'Nº 028-2011-MDCN-T ', NULL, '', '2011-03-09 00:00:00', 1, 1, '2011-03-09 00:00:00', '2011-03-09 00:00:00', '2011-03-09 00:00:00'),
(327, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 029-2011-MDCN-T', 'A.C Nº 029-2011-MDCN-T', NULL, '', '2011-03-23 00:00:00', 1, 1, '2011-03-23 00:00:00', '2011-03-23 00:00:00', '2011-03-23 00:00:00'),
(328, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 030-2011-MDCN-T ', 'A.C Nº 030-2011-MDCN-T', NULL, '', '2011-03-23 00:00:00', 1, 1, '2011-03-23 00:00:00', '2011-03-23 00:00:00', '2011-03-23 00:00:00'),
(329, 7, 7, 1, 1, 'Acuerdo de Concejo Nº 029-2011-MDCN-T', 'A.C Nº 030-2011-MDCN-T', NULL, '', '2011-03-23 00:00:00', 0, 1, '2011-03-23 00:00:00', '2011-03-23 00:00:00', '2011-03-23 00:00:00'),
(330, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 031-2011-MDCN-T', 'A.C Nº 031-2011-MDCN-T', NULL, '', '2011-03-23 00:00:00', 1, 1, '2011-03-23 00:00:00', '2011-03-23 00:00:00', '2011-03-23 00:00:00'),
(331, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 032-2011-MDCN-T', 'A.C Nº 032-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(332, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 033-2011-MDCN-T', 'A.C Nº 033-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(333, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 034-2011-MDCN-T', 'A.C Nº 034-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(334, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 035-2011-MDCN-T', 'Nº 035-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(335, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 036-2011-MDCN-T', 'Nº 036-2011-MDCN-T', NULL, '', '2011-03-31 00:00:00', 1, 1, '2011-03-31 00:00:00', '2011-03-31 00:00:00', '2011-03-31 00:00:00'),
(336, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 037-2011-MDCN-T', 'Nº 037-2011-MDCN-T', NULL, '', '2011-03-31 00:00:00', 1, 1, '2011-03-31 00:00:00', '2011-03-31 00:00:00', '2011-03-31 00:00:00'),
(337, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 038-2011-MDCN-T', 'A.C Nº 038-2011-MDCN-T', NULL, '', '2011-03-31 00:00:00', 1, 1, '2011-03-31 00:00:00', '2011-03-31 00:00:00', '2011-03-31 00:00:00'),
(338, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 039-2011-MDCN-T', 'A.C Nº 039-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(339, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 040-2011-MDCN-T', 'A.C Nº 040-2011-MDCN-T', NULL, '', '2011-04-07 00:00:00', 1, 1, '2011-04-07 00:00:00', '2011-04-07 00:00:00', '2011-04-07 00:00:00'),
(340, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 041-2011-MDCN-T', 'A.C Nº 041-2011-MDCN-T', NULL, '', '2011-04-19 00:00:00', 1, 1, '2011-04-19 00:00:00', '2011-04-19 00:00:00', '2011-04-19 00:00:00'),
(341, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 042-2011-MDCN-T', 'A.C Nº 042-2011-MDCN-T', NULL, '', '2011-04-19 00:00:00', 1, 1, '2011-04-19 00:00:00', '2011-04-19 00:00:00', '2011-04-19 00:00:00'),
(342, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 043-2011-MDCN-T', 'A.C Nº 043-2011-MDCN-T', NULL, '', '2011-04-29 00:00:00', 1, 1, '2011-04-29 00:00:00', '2011-04-29 00:00:00', '2011-04-29 00:00:00'),
(343, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 044-2011-MDCN-T', 'A.C Nº 044-2011-MDCN-T', NULL, '', '2011-04-29 00:00:00', 1, 1, '2011-04-29 00:00:00', '2011-04-29 00:00:00', '2011-04-29 00:00:00'),
(344, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 045-2011-MDCN-T', 'A.C Nº 045-2011-MDCN-T', NULL, '', '2011-05-09 00:00:00', 0, 1, '2011-05-09 00:00:00', '2011-05-09 00:00:00', '2011-05-09 00:00:00'),
(345, 10, 7, 1, 6, 'Acuerdo de Concejo Nº 045-2011-MDCN-T', 'A.C Nº 045-2011-MDCN-T', NULL, '', '2011-05-09 00:00:00', 1, 1, '2011-05-09 00:00:00', '2011-05-09 00:00:00', '2011-05-09 00:00:00'),
(346, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 150-2011-MDCN-T', 'R.A.Nº 150-2011-MDCN-T', NULL, '', '2011-03-11 00:00:00', 1, 1, '2011-03-11 00:00:00', '2011-03-11 00:00:00', '2011-03-11 00:00:00'),
(347, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 151-2011-MDCN-T', 'R.A.Nº 151-2011-MDCN-T', NULL, '', '2011-03-15 00:00:00', 1, 1, '2011-03-15 00:00:00', '2011-03-15 00:00:00', '2011-03-15 00:00:00'),
(348, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 152-2011-MDCN-T', 'R.A.Nº 152-2011-MDCN-T', NULL, '', '2011-03-15 00:00:00', 1, 1, '2011-03-15 00:00:00', '2011-03-15 00:00:00', '2011-03-15 00:00:00'),
(349, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 153-2011-MDCN-T', 'R.A.Nº 153-2011-MDCN-T', NULL, '', '2011-02-15 00:00:00', 1, 1, '2011-02-15 00:00:00', '2011-02-15 00:00:00', '2011-02-15 00:00:00'),
(350, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 154-2011-MDCN-T', 'R.A.Nº 154-2011-MDCN-T', NULL, '', '2011-03-15 00:00:00', 1, 1, '2011-03-15 00:00:00', '2011-03-15 00:00:00', '2011-03-15 00:00:00'),
(351, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 155-2011-MDCN-T', 'R.A.Nº 155-2011-MDCN-T', NULL, '', '2011-03-16 00:00:00', 1, 1, '2011-03-16 00:00:00', '2011-03-16 00:00:00', '2011-03-16 00:00:00'),
(352, 10, 7, 1, 6, 'Resolución de Alcaldía Nº 156-2011-MDCN-T', 'R.A.Nº 156-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 00:00:00', '2011-03-17 00:00:00'),
(353, 5, 7, 1, 6, 'REGLAMENTO DE ORGANIZACION Y FUNCIONES 2010', 'Nº 000 -2010-MDCN', NULL, '<p>REGLAMENTO DE ORGANIZACION Y FUNCIONES<strong><br />\r\n</strong></p>', '2011-05-16 00:00:00', 1, 1, '2011-05-16 00:00:00', '2011-05-16 00:00:00', '2011-05-16 00:00:00'),
(354, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 157-2011-MDCN-T', 'R.A.Nº 157-2011-MDCN-T', NULL, '', '2011-03-17 00:00:00', 1, 1, '2011-03-17 00:00:00', '2011-03-17 00:00:00', '2011-03-17 00:00:00'),
(355, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 158-2011-MDCN-T', 'R.A.Nº 158-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 00:00:00', '2011-03-18 00:00:00'),
(356, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 159-2011-MDCN-T', 'R.A.Nº 159-2011-MDCN-T', NULL, '', '2011-03-18 00:00:00', 1, 1, '2011-03-18 00:00:00', '2011-03-18 00:00:00', '2011-03-18 00:00:00'),
(357, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 160-2011-MDCN-T', 'R.A.Nº 160-2011-MDCN-T', NULL, '', '2011-03-21 00:00:00', 1, 1, '2011-03-21 00:00:00', '2011-03-21 00:00:00', '2011-03-21 00:00:00'),
(358, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 161-2011-MDCN-T', 'R.A.Nº 161-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(359, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 162-2011-MDCN-T', 'R.A.Nº 162-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 0, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(360, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 163-2011-MDCN-T', 'R.A.Nº 163-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(361, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 164-2011-MDCN-T', 'R.A.Nº 164-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(362, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 165-2011-MDCN-T', 'R.A. Nº 165-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(363, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 166-2011-MDCN-T', 'R.A. Nº 166-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(364, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 167-2011-MDCN-T', 'R.A. Nº 167-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(365, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 168-2011-MDCN-T', 'R.A. Nº 168-2011-MDCN-T', NULL, '', '2011-03-22 00:00:00', 1, 1, '2011-03-22 00:00:00', '2011-03-22 00:00:00', '2011-03-22 00:00:00'),
(366, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 169-2011-MDCN-T', 'R.A. Nº 169-2011-MDCN-T', NULL, '', '2011-03-23 00:00:00', 1, 1, '2011-03-23 00:00:00', '2011-03-23 00:00:00', '2011-03-23 00:00:00'),
(367, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 170-2011-MDCN-T', 'R.A. Nº 170-2011-MDCN-T', NULL, '', '2011-03-23 00:00:00', 1, 1, '2011-03-23 00:00:00', '2011-03-23 00:00:00', '2011-03-23 00:00:00'),
(368, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 171-2011-MDCN-T', 'R.A. Nº 171-2011-MDCN-T', NULL, '', '2011-03-25 00:00:00', 1, 1, '2011-03-25 00:00:00', '2011-03-25 00:00:00', '2011-03-25 00:00:00'),
(369, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 172-2011-MDCN-T', 'R.A. Nº 172-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(370, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 173-2011-MDCN-T', 'R.A. Nº 173-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(371, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 174-2011-MDCN-T', 'R.A. Nº 174-2011-MDCN-T', NULL, '', '2011-03-28 00:00:00', 1, 1, '2011-03-28 00:00:00', '2011-03-28 00:00:00', '2011-03-28 00:00:00'),
(372, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 175-2011-MDCN-T', 'R.A. Nº 175-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(373, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 176-2011-MDCN-T', 'R.A. Nº 176-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(374, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 177-2011-MDCN-T', 'R.A. Nº 177-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(375, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 178-2011-MDCN-T', 'R.A. Nº 178-2011-MDCN-T', NULL, '', '2011-03-29 00:00:00', 1, 1, '2011-03-29 00:00:00', '2011-03-29 00:00:00', '2011-03-29 00:00:00'),
(376, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 179-2011-MDCN-T', 'R.A. Nº 179-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(377, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 180-2011-MDCN-T', 'R.A. Nº 180-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(378, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 181-2011-MDCN-T', 'R.A. Nº 181-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(379, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 182-2011-MDCN-T', 'R.A. Nº 182-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(380, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 183-2011-MDCN-T', 'R.A. Nº 183-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(381, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 184-2011-MDCN-T', 'R.A. Nº 184-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(382, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 185-2011-MDCN-T', 'R.A. Nº 185-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(383, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 186-2011-MDCN-T ', 'R.A. Nº 186-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(384, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 187-2011-MDCN-T', 'R.A. Nº 187-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(385, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 188-2011-MDCN-T', 'R.A. Nº 188-2011-MDCN-T', NULL, '', '2011-03-31 00:00:00', 1, 1, '2011-03-31 00:00:00', '2011-03-31 00:00:00', '2011-03-31 00:00:00'),
(386, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 189-2011-MDCN-T', 'Resolución de Alcaldía Nº 189-2011-MDCN-T ', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(387, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 190-2011-MDCN-T', 'R.A. Nº 190-2011-MDCN-T', NULL, '', '2011-04-01 00:00:00', 1, 1, '2011-04-01 00:00:00', '2011-04-01 00:00:00', '2011-04-01 00:00:00'),
(388, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 191-2011-MDCN-T', 'R.A. Nº 191-2011-MDCN-T', NULL, '', '2011-04-01 00:00:00', 1, 1, '2011-04-01 00:00:00', '2011-04-01 00:00:00', '2011-04-01 00:00:00'),
(389, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 192-2011-MDCN-T', 'R.A. Nº 192-2011-MDCN-T', NULL, '', '2011-03-30 00:00:00', 1, 1, '2011-03-30 00:00:00', '2011-03-30 00:00:00', '2011-03-30 00:00:00'),
(390, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 193-2011-MDCN-T', 'R.A. Nº 193-2011-MDCN-T', NULL, '', '2011-04-01 00:00:00', 1, 0, '2011-04-01 00:00:00', '2011-04-01 00:00:00', '2011-04-01 00:00:00'),
(391, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 194-2011-MDCN-T', 'R.A. Nº 194-2011-MDCN-T', NULL, '', '2011-03-31 00:00:00', 1, 1, '2011-03-31 00:00:00', '2011-03-31 00:00:00', '2011-03-31 00:00:00'),
(392, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 195-2011-MDCN-T', 'R.A. Nº 195-2011-MDCN-T', NULL, '', '2011-04-04 00:00:00', 1, 1, '2011-04-04 00:00:00', '2011-04-04 00:00:00', '2011-04-04 00:00:00'),
(393, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 196-2011-MDCN-T', 'R.A. Nº 196-2011-MDCN-T', NULL, '', '2011-04-01 00:00:00', 1, 1, '2011-04-01 00:00:00', '2011-04-01 00:00:00', '2011-04-01 00:00:00'),
(394, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 197-2011-MDCN-T', 'R.A. Nº 197-2011-MDCN-T', NULL, '', '2011-04-01 00:00:00', 1, 1, '2011-03-01 00:00:00', '2011-03-01 00:00:00', '2011-03-01 00:00:00'),
(395, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 198-2011-MDCN-T', 'R.A. Nº 198-2011-MDCN-T', NULL, '', '2011-04-04 00:00:00', 1, 1, '2011-04-04 00:00:00', '2011-04-04 00:00:00', '2011-04-04 00:00:00'),
(396, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 199-2011-MDCN-T ', 'R.A. Nº 199-2011-MDCN-T', NULL, '', '2011-04-05 00:00:00', 1, 1, '2011-04-05 00:00:00', '2011-04-05 00:00:00', '2011-04-05 00:00:00'),
(397, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 200-2011-MDCN-T', 'R.A. Nº 200-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(398, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 201-2011-MDCN-T', 'R.A. Nº 201-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(399, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 202-2011-MDCN-T', 'R.A. Nº 202-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(400, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 203-2011-MDCN-T', 'R.A. Nº 203-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(401, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 204-2011-MDCN-T', 'R.A. Nº 204-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(402, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 205-2011-MDCN-T', 'R.A. Nº 205-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(403, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 206-2011-MDCN-T', 'R.A. Nº 206-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(404, 8, 7, 1, 6, 'Resolución de Alcaldía Nº 207-2011-MDCN-T', 'R.A. Nº 207-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(405, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 208-2011-MDCN-T', 'R.A. Nº 208-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(406, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 209-2011-MDCN-T', 'R.A. Nº 209-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(407, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 210-2011-MDCN-T', 'R.A. Nº 210-2011-MDCN-T', NULL, '', '2011-04-07 00:00:00', 1, 1, '2011-04-07 00:00:00', '2011-04-07 00:00:00', '2011-04-07 00:00:00'),
(408, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 211-2011-MDCN-T', 'R.A. Nº 211-2011-MDCN-T', NULL, '', '2011-04-06 00:00:00', 1, 1, '2011-04-06 00:00:00', '2011-04-06 00:00:00', '2011-04-06 00:00:00'),
(409, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 212-2011-MDCN-T', 'R.A. Nº 212-2011-MDCN-T', NULL, '', '2011-04-07 09:00:00', 1, 1, '2011-04-07 09:00:00', '2011-04-07 09:00:00', '2011-04-07 09:00:00'),
(410, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 213-2011-MDCN-T', 'R.A. Nº 213-2011-MDCN-T', NULL, '', '2011-04-07 12:00:00', 1, 1, '2011-04-07 12:00:00', '2011-04-07 12:00:00', '2011-04-07 12:00:00'),
(411, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 214-2011-MDCN-T ', 'R.A. Nº 214-2011-MDCN-T', NULL, '', '2011-04-07 13:00:00', 1, 1, '2011-04-07 13:00:00', '2011-04-07 13:00:00', '2011-04-07 13:00:00'),
(412, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 215-2011-MDCN-T', 'R.A. Nº 215-2011-MDCN-T', NULL, '', '2011-04-08 00:00:00', 1, 1, '2011-04-08 00:00:00', '2011-04-08 00:00:00', '2011-04-08 00:00:00'),
(413, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 216 -2011-MDCN-T ', 'R.A. Nº 216-2011-MDCN-T', NULL, '', '2011-04-18 00:00:00', 1, 1, '2011-04-18 00:00:00', '2011-04-18 00:00:00', '2011-04-18 00:00:00'),
(414, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 217-2011-MDCN-T', 'R.A. Nº 217-2011-MDCN-T', NULL, '', '2011-04-11 00:00:00', 1, 1, '2011-04-11 00:00:00', '2011-04-11 00:00:00', '2011-04-11 00:00:00'),
(415, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 218-2011-MDCN-T', 'R.A. Nº 218-2011-MDCN-T', NULL, '', '2011-04-12 00:00:00', 1, 1, '2011-04-12 00:00:00', '2011-04-12 00:00:00', '2011-04-12 00:00:00'),
(416, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 219-2011-MDCN-T', 'R.A. Nº 219-2011-MDCN-T', NULL, '', '2011-04-15 00:00:00', 1, 1, '2011-04-15 00:00:00', '2011-04-15 00:00:00', '2011-04-15 00:00:00'),
(417, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 220-2011-MDCN-T', 'Resolución de Alcaldía Nº 220-2011-MDCN-T ', NULL, '', '2011-04-15 08:00:00', 1, 1, '2011-04-15 08:00:00', '2011-04-15 08:00:00', '2011-04-15 08:00:00'),
(418, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 221-2011-MDCN-T', 'R.A. Nº 221-2011-MDCN-T', NULL, '', '2011-04-15 09:00:00', 1, 1, '2011-04-15 09:00:00', '2011-04-15 09:00:00', '2011-04-15 09:00:00'),
(419, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 222-2011-MDCN-T', 'R.A. Nº 222-2011-MDCN-T', NULL, '', '2011-04-15 10:00:00', 1, 1, '2011-04-15 10:00:00', '2011-04-15 10:00:00', '2011-04-15 10:00:00'),
(420, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 223-2011-MDCN-T', 'R.A. Nº 223-2011-MDCN-T', NULL, '', '2011-04-18 10:00:00', 1, 1, '2011-04-18 10:00:00', '2011-04-18 10:00:00', '2011-04-18 10:00:00'),
(421, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 224-2011-MDCN-T', 'Nº 224-2011-MDCN-T ', NULL, '', '2011-04-18 11:00:00', 1, 1, '2011-04-18 11:00:00', '2011-04-18 11:00:00', '2011-04-18 11:00:00'),
(422, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 225-2011-MDCN-T', 'R.A. Nº 225-2011-MDCN-T', NULL, '', '2011-04-18 00:00:00', 1, 1, '2011-04-18 12:00:00', '2011-04-18 12:00:00', '2011-04-18 12:00:00'),
(423, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 226-2011-MDCN-T', 'R.A. Nº 226-2011-MDCN-T', NULL, '', '2011-04-19 00:00:00', 1, 1, '2011-04-19 00:00:00', '2011-04-19 00:00:00', '2011-04-19 00:00:00'),
(424, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 227-2011-MDCN-T', 'R.A. Nº 227-2011-MDCN-T', NULL, '', '2011-04-19 10:00:00', 1, 1, '2011-04-19 10:00:00', '2011-04-19 10:00:00', '2011-04-19 10:00:00'),
(425, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 228-2011-MDCN-T', 'R.A. Nº 228-2011-MDCN-T', NULL, '', '2011-04-25 00:00:00', 1, 1, '2011-04-25 00:00:00', '2011-04-25 00:00:00', '2011-04-25 00:00:00'),
(426, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 229-2011-MDCN-T', 'R.A. Nº 229-2011-MDCN-T', NULL, '', '2011-03-31 00:00:00', 1, 1, '2011-03-31 00:00:00', '2011-03-31 00:00:00', '2011-03-31 00:00:00'),
(427, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 230-2011-MDCN-T', 'R.A. Nº 230-2011-MDCN-T', NULL, '', '2011-04-18 00:00:00', 1, 0, '2011-04-18 00:00:00', '2011-04-18 00:00:00', '2011-04-18 00:00:00'),
(428, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 231-2011-MDCN-T', 'R.A. Nº 231-2011-MDCN-T', NULL, '', '2011-04-15 11:00:00', 1, 1, '2011-04-15 11:00:00', '2011-04-15 11:00:00', '2011-04-15 11:00:00'),
(429, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 232-2011-MDCN-T', 'R.A. Nº 232-2011-MDCN-T', NULL, '', '2011-04-26 00:00:00', 1, 1, '2011-04-26 00:00:00', '2011-04-26 00:00:00', '2011-04-26 00:00:00'),
(430, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 233-2011-MDCN-T ', 'R.A. Nº 233-2011-MDCN-T', NULL, '', '2011-04-26 10:00:00', 1, 1, '2011-04-26 10:00:00', '2011-04-26 10:00:00', '2011-04-26 10:00:00'),
(431, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 234-2011-MDCN-T', 'R.A. Nº 234-2011-MDCN-T', NULL, '', '2011-04-25 10:00:00', 1, 1, '2011-04-25 10:00:00', '2011-04-25 10:00:00', '2011-04-25 10:00:00'),
(432, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 235-2011-MDCN-T', 'R.A. Nº 235-2011-MDCN-T', NULL, '', '2011-04-25 11:00:00', 1, 1, '2011-04-25 11:00:00', '2011-04-25 11:00:00', '2011-04-25 11:00:00'),
(433, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 236-2011-MDCN-T', 'R.A. Nº 236-2011-MDCN-T', NULL, '', '2011-04-25 12:00:00', 1, 1, '2011-04-25 12:00:00', '2011-04-25 12:00:00', '2011-04-25 12:00:00'),
(434, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 237-2011-MDCN-T', 'R.A. Nº 237-2011-MDCN-T', NULL, '', '2011-04-25 13:00:00', 1, 1, '2011-04-25 13:00:00', '2011-04-25 13:00:00', '2011-04-25 13:00:00'),
(435, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 238-2011-MDCN-T', 'R.A. Nº 238-2011-MDCN-T', NULL, '', '2011-04-25 14:00:00', 1, 1, '2011-04-25 14:00:00', '2011-04-25 14:00:00', '2011-04-25 14:00:00'),
(436, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 239-2011-MDCN-T', 'R.A. Nº 239-2011-MDCN-T', NULL, '', '2011-04-25 15:00:00', 1, 1, '2011-04-25 15:00:00', '2011-04-25 15:00:00', '2011-04-25 15:00:00'),
(437, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 240-2011-MDCN-T', 'R.A. Nº 240-2011-MDCN-T', NULL, '', '2011-04-25 00:00:00', 1, 1, '2011-04-25 16:00:00', '2011-04-25 16:00:00', '2011-04-25 16:00:00'),
(438, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 241-2011-MDCN-T', 'R.A. Nº 241-2011-MDCN-T', NULL, '', '2011-04-26 11:00:00', 1, 1, '2011-04-26 11:00:00', '2011-04-26 11:00:00', '2011-04-26 11:00:00'),
(439, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 242-2011-MDCN-T', 'R.A. Nº 242-2011-MDCN-T', NULL, '', '2011-04-25 17:00:00', 1, 1, '2011-04-25 17:00:00', '2011-04-25 17:00:00', '2011-04-25 17:00:00'),
(440, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 243-2011-MDCN-T', 'R.A. Nº 243-2011-MDCN-T', NULL, '', '2011-04-27 00:00:00', 1, 1, '2011-04-27 00:00:00', '2011-04-27 00:00:00', '2011-04-27 00:00:00'),
(441, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 244-2011-MDCN-T', 'R.A. Nº 244-2011-MDCN-T', NULL, '', '2011-04-26 12:00:00', 1, 1, '2011-04-26 12:00:00', '2011-04-26 12:00:00', '2011-04-26 12:00:00'),
(442, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 245-2011-MDCN-T', 'R.A. Nº 245-2011-MDCN-T', NULL, '', '2011-04-28 00:00:00', 1, 1, '2011-04-28 00:00:00', '2011-04-28 00:00:00', '2011-04-28 00:00:00'),
(443, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 246-2011-MDCN-T', 'R.A. Nº 246-2011-MDCN-T', NULL, '', '2011-04-25 18:00:00', 1, 1, '2011-04-25 18:00:00', '2011-04-25 18:00:00', '2011-04-25 18:00:00'),
(444, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 247-2011-MDCN-T', 'R.A. Nº 247-2011-MDCN-T', NULL, '', '2011-04-27 10:00:00', 1, 1, '2011-04-27 10:00:00', '2011-04-27 10:00:00', '2011-04-27 10:00:00'),
(445, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 248-2011-MDCN-T', 'R.A. Nº 248-2011-MDCN-T', NULL, '', '2011-04-29 00:00:00', 1, 1, '2011-04-29 00:00:00', '2011-04-29 00:00:00', '2011-04-29 00:00:00'),
(446, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 249-2011-MDCN-T', 'R.A. Nº 249-2011-MDCN-T', NULL, '', '2011-04-29 00:00:00', 1, 0, '2011-04-29 00:00:00', '2011-04-29 00:00:00', '2011-04-29 00:00:00'),
(447, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 250-2011-MDCN-T', 'R.A. Nº 250-2011-MDCN-T', NULL, '', '2011-04-29 10:00:00', 1, 1, '2011-04-29 10:00:00', '2011-04-29 10:00:00', '2011-04-29 10:00:00'),
(448, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 251-2011-MDCN-T', 'R.A. Nº 251-2011-MDCN-T', NULL, '', '2011-04-29 00:00:00', 1, 0, '2011-04-29 00:00:00', '2011-04-29 00:00:00', '2011-04-29 00:00:00'),
(449, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 252-2011-MDCN-T', 'R.A. Nº 252-2011-MDCN-T', NULL, '', '2011-04-29 00:00:00', 1, 0, '2011-04-29 00:00:00', '2011-04-29 00:00:00', '2011-04-29 00:00:00'),
(450, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 253-2011-MDCN-T', 'R.A. Nº 253-2011-MDCN-T', NULL, '', '2011-04-29 11:00:00', 1, 1, '2011-04-29 11:00:00', '2011-04-29 11:00:00', '2011-04-29 11:00:00'),
(451, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 254-2011-MDCN-T', 'R.A. Nº 254-2011-MDCN-T', NULL, '', '2011-04-29 12:00:00', 1, 1, '2011-04-29 12:00:00', '2011-04-29 12:00:00', '2011-04-29 12:00:00'),
(452, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 255-2011-MDCN-T', 'R.A. Nº 255-2011-MDCN-T', NULL, '', '2011-05-03 00:00:00', 1, 0, '2011-05-03 00:00:00', '2011-05-03 00:00:00', '2011-05-03 00:00:00'),
(453, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 256-2011-MDCN-T', 'R.A. Nº 256-2011-MDCN-T', NULL, '', '2011-05-03 00:00:00', 1, 0, '2011-05-03 00:00:00', '2011-05-03 00:00:00', '2011-05-03 00:00:00'),
(454, 8, 7, 0, 6, 'Resolución de Alcaldía Nº 257-2011-MDCN-T', 'R.A. Nº 257-2011-MDCN-T', NULL, '', '2011-05-06 00:00:00', 1, 1, '2011-05-06 00:00:00', '2011-05-06 00:00:00', '2011-05-06 00:00:00'),
(455, 9, 7, 0, 6, 'Ordenanza Municipal Nº 005-2011-MDCN-T ', 'O.M. Nº 005-2011-MDCN-T ', NULL, '', '2011-02-28 00:00:00', 0, 1, '2011-02-28 00:00:00', '2011-02-28 00:00:00', '2011-02-28 00:00:00'),
(459, 9, 7, 1, 6, 'Ordenanza Municipal Nº 005-2011-MDCN-T', 'O.M. Nº 005-2011-MDCN-T', NULL, '', '2011-03-07 00:00:00', 1, 1, '2011-03-07 00:00:00', '2011-03-07 00:00:00', '2011-03-07 00:00:00'),
(460, 9, 7, 1, 6, 'Ordenanza Municipal Nº 006-2011-MDCN-T', 'O.M. Nº 006-2011-MDCN-T', NULL, '', '2011-04-20 00:00:00', 1, 1, '2011-04-20 00:00:00', '2011-04-20 00:00:00', '2011-04-20 00:00:00'),
(461, 9, 7, 1, 6, 'Ordenanza Municipal Nº 007-2011-MDCN-T', 'O.M. Nº 007-2011-MDCN-T', NULL, '', '2011-05-09 00:00:00', 1, 1, '2011-05-09 00:00:00', '2011-05-09 00:00:00', '2011-05-09 00:00:00'),
(469, 51, 7, 1, 6, 'I Concurso de Limpieza y Ambientación Intrainstitucional de la MDCN', 'MC Nº 009-2011-A-MDCN-T', NULL, '<p>Las Inscripciones se realizaran a partir del miercoles 18 de mayo al 01 de junio del 2011 en la Oficina de la Sub Gerencia de Recursos Humanos.</p>', '2011-05-27 00:00:00', 1, 1, '2011-05-27 00:00:00', '2011-05-27 14:19:31', '2011-05-27 14:18:05'),
(470, 9, 7, 1, 6, 'Ordenanza Municipal Nº 008-2011-MDCN-T ', 'O.M. Nº 008-2011-MDCN-T', NULL, '', '2011-06-06 00:00:00', 1, 1, '2011-06-06 00:00:00', '2011-06-06 12:42:10', '2011-06-06 12:42:10'),
(471, 50, 7, 1, 6, 'CRONOGRAMA DE ACTIVIDADES PROCESO DEL PRESUPUESO PARTICIPATIVO 2012', '', NULL, '', '2011-06-01 00:00:00', 1, 1, '2011-06-01 00:00:00', '2011-06-14 08:44:05', '2011-06-14 08:44:05'),
(472, 9, 7, 1, 6, 'Ordenanza Municipal Nº 009-2011-MDCN-T  ', 'O.M Nº 009-2011-MDCN-T  ', NULL, '', '2011-06-21 00:00:00', 1, 1, '2011-06-21 00:00:00', '2011-06-21 14:20:18', '2011-06-21 14:15:29'),
(473, 48, 7, 1, 5, 'SEGUNDA CONVOCATORIA PERSONAL CAS', 'CAS Nº 02-2011-MDCN-T', NULL, '', '2011-06-22 00:00:00', 1, 1, '2011-06-22 00:00:00', '2011-06-22 16:26:58', '2011-06-22 16:24:06'),
(474, 48, 7, 1, 5, 'Requerimientos de Servicios de Personal Administrativo', 'CAS Nº 02-2011-MDCN-T', NULL, '', '2011-06-23 00:00:00', 1, 1, '2011-06-23 00:00:00', '2011-06-23 12:44:35', '2011-06-23 12:44:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `login` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `name`, `created`, `updated`, `login`, `password`, `email`, `perfil_id`) VALUES
(1, 'Administrador', '2014-07-07 10:55:40', '2015-04-20 10:00:00', 'admin', 'munimdcn', 'admin@gmail.com', 1),
(6, 'Emperatriz', '2014-07-07 22:57:00', '2015-03-27 15:58:00', 'secretaria', 'muni2015', 'emperatriz@gmail.com', 9),
(8, 'Jefe Imagen', '2015-03-27 15:59:00', '2015-04-16 10:50:00', 'imagen', 'muni2015', 'imagen@mdcn.gob.pe', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosconvoca`
--

CREATE TABLE IF NOT EXISTS `usuariosconvoca` (
`id` int(10) NOT NULL,
  `nombre_usuario` text NOT NULL,
  `clave_usuario` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuariosconvoca`
--

INSERT INTO `usuariosconvoca` (`id`, `nombre_usuario`, `clave_usuario`) VALUES
(1, 'mdcnpersonal', 'tacnaperu123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(10) NOT NULL,
  `titulo` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `video`) VALUES
(10, 'TALLERES VACACIONES EN CIUDAD NUEVA - TACNA', 'XfTI1r29lHk'),
(11, 'CAMPAÑA DE LIMPIEZA 2015 CIUDAD NUEVA', 'IydlTtFKjz4'),
(12, 'TALLERES VACACIONALES DE PINTURA, DIBUJO, BAILE MODERNO, DEPORTE, MATEMATICA EN CIUDAD NUEVA', 'XZOWsAtetFw'),
(13, 'ALCALDE EDGAR CONCORI BRINDA APOYO A POBLADORA', 'f1mobr0N8y8'),
(14, 'PRIMER ENCUENTRO DE CONCERTACION DE ALCALDES DISTRITALES, PROVINCIALES Y GRT', 'hr4QCs18xxs'),
(15, 'POBLADOR QUE PADECE TUMOR NASAL SOLICITA APOYO A AUTORIDADES DE TACNA', 'YwQ5VtGNt9o'),
(16, 'VISITA DEL PRESIDENTE DE LA REPUBLICA', '5XZrXbYbH1A'),
(17, 'CONSULTA VECINAL SOBRE SEGURIDAD CIUDADANA', 'YzMXrOOXeEI'),
(18, 'PREMIACION AL CLUB DEPORTIVO LEONCIO PRADO\r\n', 'f_z45umxC_w'),
(19, 'ANIVERSARIO JESUS DIVINA MISERICORDIA', 'eDbqypvRrHU'),
(20, 'ANIVERSARIO DEL HOSPITAL HIPOLITO UNANUE ', 'mrWtBCGTmOc'),
(21, 'MOTOTAXISTAS SON CAPACITADOS POR LA MUNICIPALIDAD DE CIUDAD NUEVA EN SEGURIDAD VIAL Y REVISIÓN TÉCNICA', '8N5YOww4IJU'),
(22, 'INICIO DE CEREMONIAS COMITE CIVICO PATRIOTICO ', 'JacuI-a6A9w'),
(24, 'REUNION ENTRE GOBERNADOR Y ALCALDE DE CIUDAD NUEVA', 'idetOBPKEnQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `youtube`
--

CREATE TABLE IF NOT EXISTS `youtube` (
`id` int(10) NOT NULL,
  `foto` text NOT NULL,
  `video` text NOT NULL,
  `titulo` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `youtube`
--

INSERT INTO `youtube` (`id`, `foto`, `video`, `titulo`) VALUES
(3, 'foto2.jpg', 'http://www.youtube.com/watch?v=4mHaiggil6Y', 'Inicio de Ciclo Pre Universitario y Pre Cadete'),
(2, 'foto1.jpg', 'http://www.youtube.com/watch?v=nNmwyH1gWX0', 'Inauguración de Local Multiuso 26 de Enero'),
(4, 'foto3.jpg', 'http://www.youtube.com/watch?v=_8NSMU4jwtQ', 'Se inaugura Campo Deportivo 28 de Agosto'),
(5, 'foto4.jpg', 'http://www.youtube.com/watch?v=_BiL2ptqrrI', 'Municipio de Ciudad Nueva recibe reconocimiento "Aguila Municipal" a la buena gestión 2011'),
(6, 'foto5.jpg', 'http://www.youtube.com/watch?v=PeSoim_S8-M', 'Spot II Concurso de Danzas Folklóricas y Gran Pasacalle Ciudad Nueva 2012'),
(7, 'foto6.jpg', 'http://www.youtube.com/watch?v=yZf1n9pvVB0', 'II Concurso de danzas y Pasacalle Revaloremos las Costumbres y Tradiciones de Ciudad Nueva'),
(8, 'foto7.jpg', 'http://www.youtube.com/watch?v=GQxsAXu7PXQ', 'Colocación de la primera piedra en el comite 04 de la Asoc. de vivienda Villa el Triunfo'),
(9, 'foto8.jpg', 'http://www.youtube.com/watch?v=3ZBdGCuW8xk', 'En Alto Berlín se inauguran las nuevas pistas y veredas'),
(10, 'foto9.jpg', 'http://www.youtube.com/watch?v=yOfFR2gsSBY', 'Juventud saca cara por el Distrito de Ciudad Nueva'),
(11, 'foto10.jpg', 'http://www.youtube.com/watch?v=Gq8dBZuANdA', 'Se premia a más de 40 jóvenes integrantes del CEPU Ciudad Nueva ingresantes a la UNJBG'),
(12, 'foto11.jpg', 'http://www.youtube.com/watch?v=fiemimVgY0g', 'Spot Beneficio Tributario 2012'),
(13, 'foto12.jpg', 'http://www.youtube.com/watch?v=QytC-LnmvmQ', 'Operativo Multisectorial a Cabinas públicas de Internet'),
(14, 'foto13.jpg', 'http://www.youtube.com/watch?v=ekLGe1dShxQ', 'Juramentan a Policías Escolares de las Instituciones Educativas del Distrito de Ciudad Nueva'),
(15, 'foto14.jpg', 'http://www.youtube.com/watch?v=5rnGdftfDgM', 'Calibración de semaforos LED en el Distrito de Ciudad Nueva\r\n'),
(16, 'foto15.jpg', 'http://www.youtube.com/watch?v=YXib31OL8mM', 'Procesión de la Virgen de Chapi'),
(17, '0016.jpg', 'http://youtu.be/0j7XgSC5S8g', 'En ceremonia realizada en la plaza central de la Asoc. de Viv. 28 de Agosto juramentó el pleno de la nueva Junta Directiva para el periodo 2012 - 2013 siendo el Señor Francisco Fermandez, el nuevo Presidente electo juramentado por el Alcalde del Distrito Abog. Hugo Mita Alanoca.'),
(18, '0017.jpg', 'http://youtu.be/kx72LV6Bu8w', 'Celebracion a la Madre discapacitada.'),
(19, '0018.jpg', 'http://youtu.be/G20yIa7PD98', 'Día de la madre.'),
(20, '0019.jpg', 'http://youtu.be/zWv03Z_v6zs', 'Desfile cívico militar.'),
(21, '0020.jpg', 'http://youtu.be/ajrGqO_tu7E', 'Matrimonio Civil.'),
(22, '0021.jpg', 'http://youtu.be/4R-E6DuIruM', 'Inauguración del Proyecto Educativo'),
(23, '0022.jpg', 'http://youtu.be/71RuXfDWeQ4', 'Juegos Deportivos Escolares'),
(24, '0023.jpg', 'http://youtu.be/leirDOKD00c', 'Conferencia de Prensa Defensa Civil.'),
(25, '0024.jpg', 'http://youtu.be/0ojhCLhDadY', 'Ceremonia Residentes de Unicachi'),
(26, '0025.jpg', 'http://youtu.be/AaYRrp-zcCo', 'Desfile Aniversario de la educación inicial.'),
(27, '0026.jpg', 'http://youtu.be/-TkIhdTeCHA', '5to concurso de escoltas'),
(28, '0027.jpg', 'http://youtu.be/Tu3g-HRMo1U', 'Ceremonia y premiación a profesores por cumplir 25 y 30 años.'),
(29, '0028.jpg', 'http://youtu.be/ii4YZVv_Y3w', 'Simulacro de Sismo 31 de Mayo del 2012.'),
(30, '0029.jpg', 'http://youtu.be/a2c9qJnfbNg', 'Primera Campaña de recolección selectiva de residuos sólidos domiciliarios.'),
(31, '0030.jpg', 'http://youtu.be/jr-cbtsm-zs', 'Día de la Bandera'),
(32, '0031.jpg', 'http://youtu.be/pVTDHyqy5lk', 'Clausura Mundialito Radio Taxi Copa "Hugo Mita Alanoca"'),
(33, '0032.jpg', 'http://youtu.be/CS-vifKfeH8', 'Visita del Sr. Alcalde por celebrarse el Aniversario de Ite'),
(34, '0033.jpg', 'http://youtu.be/csr2YpIDhdE', 'Campaña Médica de Salud a los pobladores del Distrito de Ciudad Nueva'),
(35, '0034.jpg', 'http://youtu.be/kA9FPcZ7r4U', 'Tercer Presupuesto Participativo.'),
(36, '0035.jpg', 'http://youtu.be/fooN7CPfb-I', 'Residentes de Pomata'),
(37, '0036.jpg', 'http://youtu.be/taJ46bjnT_c', 'Campeonato Alto de la Alianza'),
(38, '0037.jpg', 'http://youtu.be/EdI_ULWxi8U', 'Festividad Sr de los Milagros 1era etapa'),
(39, '0038.jpg', 'http://youtu.be/DcdqaQfSMFI', 'Aniversario Residentes de Pilcuyo'),
(40, '0039.jpg', 'http://youtu.be/dGAFeAFeozM', 'II simulacro de sismo'),
(41, '0040.jpg', 'http://youtu.be/CwAZ0-pvsKs', 'Aniversario de José Olaya y arma de comunicaciones del EP Parte I'),
(42, '0041.jpg', 'http://youtu.be/wZ6FVtOS42Q', 'Aniversario de José Olaya y arma de comunicaciones del EP Parte II'),
(43, '0042.jpg', 'http://youtu.be/mMbGE9rG3T0', 'Noche de San Juan y Concurso de Canto parte I'),
(44, '0043.jpg', 'http://youtu.be/YNhVpcyMgVI', 'Noche de San Juan y Concurso de Canto parte II'),
(45, '0044.jpg', 'http://youtu.be/j_GwiQEXcAc', 'Noche de San Juan y concurso de Canto parte III'),
(46, '0045.jpg', 'http://youtu.be/NgQsgan6VSs', 'Noche de San Juan y concurso de Canto parte IV'),
(47, '0046.jpg', 'http://youtu.be/zCxeMK9hQHo', 'Inauguración local multiusos Nueva barranquilla'),
(48, '0047.jpg', 'http://youtu.be/u9Rpl8kTSBA', 'Copa Aniversario Caballería'),
(49, '0048.jpg', 'http://youtu.be/5hfL8diaaME', 'Fiestas Patrias 2012 Parte I'),
(50, '0049.jpg', 'http://youtu.be/ftL-F4bROWs', 'Fiestas Patrias 2012 Parte II'),
(51, '0050.jpg', 'http://youtu.be/2UQWxn3KhTE', 'Comité de Taxi El Chasqui'),
(52, '0051.jpg', 'http://youtu.be/fdFYwwbW1Y8', 'IX Campaña de Residuos Sólidos'),
(53, '0052.jpg', 'http://www.youtube.com/watch?v=1XOJvd0QKIE&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Desfile escolar organizado por la UGEL Tacna'),
(54, '0053.jpg', 'http://www.youtube.com/watch?v=xseq_dUVGm4&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Desfile escolar organizado por la UGEL Tacna II'),
(55, '0054.jpg', 'http://www.youtube.com/watch?v=rpy6uOSyfGA&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Aniversario Tacna Parte I'),
(56, '0055.jpg', 'http://www.youtube.com/watch?v=5K6b21wKYBc&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Aniversario Tacna Parte II'),
(57, '0056.jpg', 'http://www.youtube.com/watch?v=HCX2JK7-t88&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Aniversario Tacna Parte III'),
(58, '0057.jpg', 'http://www.youtube.com/watch?v=dGjT5Pwl3TA&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Aniversario Asoc 28 de agosto parte I'),
(59, '0058.jpg', 'http://www.youtube.com/watch?v=WcePaaMu6T0&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Aniversario Asoc 28 de agosto parte II'),
(60, '0059.jpg', 'http://www.youtube.com/watch?v=E1Ldrmo9Eg0&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Aniversario Asoc 28 de agosto'),
(61, '0060.jpg', 'http://www.youtube.com/watch?v=G-RNl9M2-1Y&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Ciclovida I'),
(62, '0061.jpg', 'http://www.youtube.com/watch?v=l3vV0riz03A&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'Ciclovida II'),
(63, '0062.jpg', 'http://www.youtube.com/watch?v=WH0fPUMLEck&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', '2do ciclovida recreativo familiar'),
(64, '0063.jpg', 'http://www.youtube.com/watch?v=Jp1ddfXeRak&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', '3er ciclovida recreativo familiar'),
(65, '0064.jpg', 'http://www.youtube.com/watch?v=vzU0sRkU2VU&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', '5TO CICLOVIDA'),
(66, '0065.jpg', 'http://www.youtube.com/watch?v=TKYurI8MAm0&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', 'INAUGURACION DEL CAMPO DEPORTIVO DE CACHIPUCARA'),
(67, '0066.jpg', 'http://www.youtube.com/watch?v=wT7vybdZK9Y&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', '6TO CICLOVIDA'),
(68, '0067.jpg', 'http://www.youtube.com/watch?v=HLlw6OpPGv8&feature=share&list=UU3EoQCVz6O_Kgqkn8N64d1A', '7MO CICLOVIDA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_agenda_usuario1_idx` (`usuario_id`);

--
-- Indices de la tabla `clave`
--
ALTER TABLE `clave`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `declaraciones`
--
ALTER TABLE `declaraciones`
 ADD PRIMARY KEY (`idnor`);

--
-- Indices de la tabla `funcionario`
--
ALTER TABLE `funcionario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `info_informacion`
--
ALTER TABLE `info_informacion`
 ADD PRIMARY KEY (`in_id_informacion`), ADD FULLTEXT KEY `busqueda` (`vc_titulo_informacion`,`vc_resumen_informacion`);

--
-- Indices de la tabla `matrimonio`
--
ALTER TABLE `matrimonio`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_perfil`
--
ALTER TABLE `menu_perfil`
 ADD PRIMARY KEY (`id`), ADD KEY `menu_id` (`menu_id`), ADD KEY `perfil_id` (`perfil_id`);

--
-- Indices de la tabla `mw_convoca`
--
ALTER TABLE `mw_convoca`
 ADD PRIMARY KEY (`idnoti`);

--
-- Indices de la tabla `normas`
--
ALTER TABLE `normas`
 ADD PRIMARY KEY (`idnor`);

--
-- Indices de la tabla `obra`
--
ALTER TABLE `obra`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `popup`
--
ALTER TABLE `popup`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
 ADD PRIMARY KEY (`id_slide`);

--
-- Indices de la tabla `tdocumento`
--
ALTER TABLE `tdocumento`
 ADD PRIMARY KEY (`iddoc`);

--
-- Indices de la tabla `toficina`
--
ALTER TABLE `toficina`
 ADD PRIMARY KEY (`idofi`);

--
-- Indices de la tabla `tran_transparencia`
--
ALTER TABLE `tran_transparencia`
 ADD PRIMARY KEY (`in_id_transparencia`), ADD FULLTEXT KEY `busqueda` (`vc_titulo_transparencia`,`tx_contenido_transparencia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`), ADD KEY `perfil_id` (`perfil_id`);

--
-- Indices de la tabla `usuariosconvoca`
--
ALTER TABLE `usuariosconvoca`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `youtube`
--
ALTER TABLE `youtube`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT de la tabla `clave`
--
ALTER TABLE `clave`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `declaraciones`
--
ALTER TABLE `declaraciones`
MODIFY `idnor` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT de la tabla `funcionario`
--
ALTER TABLE `funcionario`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `info_informacion`
--
ALTER TABLE `info_informacion`
MODIFY `in_id_informacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1118;
--
-- AUTO_INCREMENT de la tabla `matrimonio`
--
ALTER TABLE `matrimonio`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `menu_perfil`
--
ALTER TABLE `menu_perfil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `mw_convoca`
--
ALTER TABLE `mw_convoca`
MODIFY `idnoti` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `normas`
--
ALTER TABLE `normas`
MODIFY `idnor` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2309;
--
-- AUTO_INCREMENT de la tabla `obra`
--
ALTER TABLE `obra`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `popup`
--
ALTER TABLE `popup`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
MODIFY `id_slide` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tdocumento`
--
ALTER TABLE `tdocumento`
MODIFY `iddoc` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `toficina`
--
ALTER TABLE `toficina`
MODIFY `idofi` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `tran_transparencia`
--
ALTER TABLE `tran_transparencia`
MODIFY `in_id_transparencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=475;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuariosconvoca`
--
ALTER TABLE `usuariosconvoca`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `youtube`
--
ALTER TABLE `youtube`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agenda`
--
ALTER TABLE `agenda`
ADD CONSTRAINT `fk_agenda_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menu_perfil`
--
ALTER TABLE `menu_perfil`
ADD CONSTRAINT `menu_perfil_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
ADD CONSTRAINT `menu_perfil_ibfk_2` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
