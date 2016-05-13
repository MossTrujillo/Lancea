-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-05-2016 a las 00:30:53
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `s.s.de_accidentes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afectados`
--

CREATE TABLE IF NOT EXISTS `afectados` (
  `idAfectados` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Razon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAfectados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `afectados`
--

INSERT INTO `afectados` (`idAfectados`, `Nombre`, `Edad`, `Razon`) VALUES
(1, 'Maria Goméz Díaz', 40, 'Fuera de casa'),
(2, 'Carlos Estrada Peréz', 54, 'En su domicilio'),
(3, 'Itzel Buendia Cardoso', 27, 'Avenida principal de su localidad'),
(4, 'Diana Rojas Suarez', 19, 'En su domicilio'),
(5, 'Carmina Contreras Vasquez', 19, 'Fuera de casa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE IF NOT EXISTS `direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `Calle` varchar(20) DEFAULT NULL,
  `N_Interior` int(3) DEFAULT NULL,
  `N_Exterior` int(3) DEFAULT NULL,
  `Colonia` varchar(20) DEFAULT NULL,
  `CP` int(5) DEFAULT NULL,
  `Ciudad` varchar(15) DEFAULT NULL,
  `Estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`idDireccion`, `Calle`, `N_Interior`, `N_Exterior`, `Colonia`, `CP`, `Ciudad`, `Estado`) VALUES
(1, 'Oriente14', 1394, 124, 'Del Carmen', 521478, 'Valle de los Ha', 'Rapaz'),
(2, 'margaritas ', 123, 21, 'Vista Gorda', 62514, 'Chalco', 'Mexico'),
(3, 'magnolia ', 15, 144, 'Del Carmen', 32164, 'Ecatepec', 'Estado de Mexic'),
(4, 'Emiliano Zapata', 65, 25, 'Del Carmen', 23254, 'Ixtapaluca', 'Estado de Mexic'),
(5, 'Tenango del Cuijingo', 963, 3655, 'Aires', 64614, 'TIxtapaluca', 'Estado de Mexic'),
(6, 'm', 0, 0, 'm', 0, 'm', 'm'),
(7, 'Puebla', 414, 25, 'Puebla', 1445, 'moi', '54'),
(8, 'Puebla', 414, 25, 'Puebla', 1445, 'moi', '54'),
(9, 'Oriental', 514, 12, 'Mexica', 65898, 'Valle de los Ha', 'Estado de Mexic'),
(10, 'Oriental', 514, 12, 'Mexica', 65898, 'Valle de los Ha', 'Estado de Mexic'),
(11, 'Poniente 12', 12, 21, 'Tlapala', 0, 'Chalco', 'Estado de Mexic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `involucrados`
--

CREATE TABLE IF NOT EXISTS `involucrados` (
  `idInvolucrados` int(11) NOT NULL,
  `Afectados_idAfectados` int(11) NOT NULL,
  `Victimas_id_Nombre` int(11) NOT NULL,
  PRIMARY KEY (`idInvolucrados`),
  KEY `fk_Involucrados_Afectados_idx` (`Afectados_idAfectados`),
  KEY `fk_Involucrados_Victimas1_idx` (`Victimas_id_Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `involucrados`
--

INSERT INTO `involucrados` (`idInvolucrados`, `Afectados_idAfectados`, `Victimas_id_Nombre`) VALUES
(1013, 1, 2002),
(1014, 2, 2001),
(1015, 4, 2004),
(1016, 5, 2003),
(1017, 3, 2005);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modir`
--

CREATE TABLE IF NOT EXISTS `modir` (
  `idDirección` int(11) NOT NULL AUTO_INCREMENT,
  `Calle` varchar(20) DEFAULT NULL,
  `N_Interior` int(3) DEFAULT NULL,
  `N_Exterior` int(3) DEFAULT NULL,
  `Colonia` varchar(20) DEFAULT NULL,
  `CP` int(5) DEFAULT NULL,
  `Ciudad` varchar(15) DEFAULT NULL,
  `Estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idDirección`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perdidas`
--

CREATE TABLE IF NOT EXISTS `perdidas` (
  `idPerdidas` int(11) NOT NULL,
  `Monto_total` int(10) DEFAULT NULL,
  `Perdidas_Materiales_id_Objeto` int(11) NOT NULL,
  PRIMARY KEY (`idPerdidas`),
  KEY `fk_Perdidas_Perdidas_Materiales1_idx` (`Perdidas_Materiales_id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perdidas`
--

INSERT INTO `perdidas` (`idPerdidas`, `Monto_total`, `Perdidas_Materiales_id_Objeto`) VALUES
(1512, 198731, 1010),
(1513, 108972, 1011),
(1514, 698210, 1013),
(1515, 238989, 1014),
(1516, 99279, 1012);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perdidas_materiales`
--

CREATE TABLE IF NOT EXISTS `perdidas_materiales` (
  `id_Objeto` int(11) NOT NULL,
  `Objeto` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Costo` int(6) DEFAULT NULL,
  PRIMARY KEY (`id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perdidas_materiales`
--

INSERT INTO `perdidas_materiales` (`id_Objeto`, `Objeto`, `Descripcion`, `Costo`) VALUES
(1010, 'Electrodomesticos ', 'Descompuestos por inundacion', 46880),
(1011, 'Automovil', 'Se le cayo un arbol ensima', 169000),
(1012, 'Casa', 'Derrumbada', 194354),
(1013, 'Autobus', 'Choque en la parte delantera del autobus', 790201),
(1014, 'Postes de luz', 'Postes tirados en la calle por mucho viento', 13803);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proteccion_civil`
--

CREATE TABLE IF NOT EXISTS `proteccion_civil` (
  `idProteccion_civil` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Num_atencion` int(10) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Tipo_incidente` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idProteccion_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proteccion_civil`
--

INSERT INTO `proteccion_civil` (`idProteccion_civil`, `Nombre`, `Num_atencion`, `Direccion`, `Tipo_incidente`) VALUES
(55551, 'Carlos Morales Diaz ', 159354268, 'Calle San Juan #790 Col. Ocampo ', 'Temporal'),
(55552, 'Daniel Carmona Valdez', 158840239, 'Calle Venustiano Carranza #79 COl. Insurgente', 'Temporal'),
(55553, 'Sandra Malverde Gonzales', 156788935, 'Calle La capilla #67 Col. Aldama', 'Permanente'),
(55554, 'Roberto Estrada Montes', 152386830, 'Calle Carmina #18 Col. La rosa', 'Temporal'),
(55555, 'Jorge Gomez Carrillo', 152784920, 'Calle Roma #48 Col. Constitucion ', 'Temporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE IF NOT EXISTS `publicacion` (
  `idPublicación` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `ruta` varchar(150) DEFAULT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `idDireccion` int(11) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  PRIMARY KEY (`idPublicación`),
  KEY `fk_Publicación_Dirección1_idx` (`idDireccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=491 ;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`idPublicación`, `Nombre`, `Descripcion`, `ruta`, `Fecha`, `idDireccion`, `Titulo`) VALUES
(1, 'Moises', 'Robaron la casa de doña yolis, se presume que', 'imagenes/IMG-20151003-WA0004.jpeg', '01-05-16', 1, 'Robo a casa habitación'),
(2, 'Javier', 'MOissesws Javier rojas daaakak', 'imagenes/', '01-05-16', 2, 'Moises'),
(3, 'Moises', 'Se cayo de la cama por avanzado', 'imagenes/10402719_10204350459356022_2519536183567865833_n.jpg', '01-05-16', 3, 'Caida de edgar'),
(4, 'Rebel', 'Un espectaluar se vino a abajo , causando un ', 'imagenes/IMG-20151003-WA0004.jpeg', '01-05-16', 4, 'Espectacular caido'),
(5, 'Moss', 'Ingeniero del TESCHA crean invernadro automat', 'imagenes/12575864_439437882921765_1878437075_n.jpg', '01-05-16', 5, 'Invernadero automatizado'),
(6, 'm', 'm', 'imagenes/', '01-05-16', 6, 'm'),
(7, 'Moss', 'Puebla es una de las 32 entidades federativas de México. Se localiza en el centro oriente del territorio mexicano. Colinda al este con el estado de Veracruz, al poniente con los estados de Hidalgo, México, Tlaxcala y Morelos y al sur con los estados de Oaxaca y Guerrero. Puebla no tiene salida al mar y presenta un relieve sumamente accidentado. Su superficie es de 34.306 km², en la cual viven más de cinco millones de personas, que convierten a este estado en el quinto más poblado del país. ', 'imagenes/12583816_439437886255098_242825149_n.jpg', '02-05-16', 7, 'Salida a Puebla'),
(8, 'Moss', 'Puebla es una de las 32 entidades federativas de México. Se localiza en el centro oriente del territorio mexicano. Colinda al este con el estado de Veracruz, al poniente con los estados de Hidalgo, México, Tlaxcala y Morelos y al sur con los estados de Oaxaca y Guerrero. Puebla no tiene salida al mar y presenta un relieve sumamente accidentado. Su superficie es de 34.306 km², en la cual viven más de cinco millones de personas, que convierten a este estado en el quinto más poblado del país. ', 'imagenes/12583816_439437886255098_242825149_n.jpg', '02-05-16', 8, 'Segunda pruebade Salida a Puebla'),
(9, 'Rebel', 'http://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.php', 'imagenes/CAM00037.jpg', '02-05-16', 9, 'Ter'),
(10, 'Rebel', 'http://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.phphttp://localhost/Incidentes/index.php', 'imagenes/CAM00037.jpg', '02-05-16', 10, 'Ter'),
(11, 'Moises', 'Amor se que tengo mis defectos y que en la vida he perdido muchos cosas valiosas, eh perdido mi integridad, he perdido sueños, he perdido amigos, incluso he soportado la perdida de mi papa, pero no soportaria perderte no podria vivir sin ti, tu eres lo mejor que ha pasado en mi vida, y TE AMO MUCHISIMO CORAZON SIEMPRE MAS QUE TU DE TODO LO QUE ME DIGAS OSITA', 'imagenes/cde.jpg', '03-05-16', 11, 'Te amo muchisimo amor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicación`
--

CREATE TABLE IF NOT EXISTS `publicación` (
  `idPublicación` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `ruta` varchar(150) DEFAULT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `Dirección_idDirección` int(11) NOT NULL,
  `Titulo` varchar(150) NOT NULL,
  PRIMARY KEY (`idPublicación`),
  KEY `fk_Publicación_Dirección1_idx` (`Dirección_idDirección`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=491 ;

--
-- Volcado de datos para la tabla `publicación`
--

INSERT INTO `publicación` (`idPublicación`, `Nombre`, `Descripcion`, `ruta`, `Fecha`, `Dirección_idDirección`, `Titulo`) VALUES
(450, 'Manuel Avila', 'Inundacion en colonia del Carmen en Chalco', '', '13/12/2015', 101, ''),
(460, 'Ivan Alboran', 'Se cayo un arbol ensima de un automovil', '', '12/01/2016', 102, ''),
(470, 'Martin Rojas', 'Se derrumbo una casa por ligero temblor ', '', '24/02/2016', 103, ''),
(480, 'Diana Rueda', 'Choco un autobus en la carretera principal', '', '29/02/2016', 104, ''),
(490, 'Fernado Escalan', 'Postes tirados en la calle por fuertes viento', '', '17/03/2016', 105, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
  `idReporte` int(11) NOT NULL,
  `Perdidas_idPerdidas` int(11) NOT NULL,
  `Publicación_idPublicación` int(11) NOT NULL,
  `Proteccion_civil_idProteccion_civil` int(11) NOT NULL,
  `Involucrados_idInvolucrados` int(11) NOT NULL,
  `Estatus` varchar(15) DEFAULT NULL,
  `Causa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReporte`),
  KEY `fk_Reporte_Publicación1_idx` (`Publicación_idPublicación`),
  KEY `fk_Reporte_Perdidas1_idx` (`Perdidas_idPerdidas`),
  KEY `fk_Reporte_Involucrados1_idx` (`Involucrados_idInvolucrados`),
  KEY `fk_Reporte_Proteccion_civil1_idx` (`Proteccion_civil_idProteccion_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`idReporte`, `Perdidas_idPerdidas`, `Publicación_idPublicación`, `Proteccion_civil_idProteccion_civil`, `Involucrados_idInvolucrados`, `Estatus`, `Causa`) VALUES
(1003, 1512, 450, 55552, 1015, 'Atendido', 'Inundacion'),
(1004, 1513, 460, 55552, 1014, 'Atendido', 'Fuertes vientos'),
(1005, 1514, 470, 55553, 1015, 'En proceso', 'Temblor'),
(1006, 1515, 480, 55554, 1016, 'Atendido', 'Conductor irresponsable'),
(1007, 1516, 490, 55555, 1017, 'Atendido', 'Fuertes vientos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`) VALUES
('Administrador', 'moises69'),
('Usuario', 'moss');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `victimas`
--

CREATE TABLE IF NOT EXISTS `victimas` (
  `id_Nombre` int(11) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `A_paterno` varchar(10) DEFAULT NULL,
  `A_materno` varchar(10) DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `victimas`
--

INSERT INTO `victimas` (`id_Nombre`, `Nombre`, `A_paterno`, `A_materno`, `Edad`, `Direccion`) VALUES
(2001, 'Pablo', 'Goméz', 'Díaz', 35, 'C. Emiliano Zapata Col.Del Carmen Puebla'),
(2002, 'Javier', 'Vega', 'Roldan', 45, 'C. Doctor Gomez Col. Chapultepec Toluca'),
(2003, 'Mauricio', 'Rojas', 'Garrido', 24, 'C. La Campana Col. Rumorosa Edo. Mex'),
(2004, 'Guadalupe', 'Azamar', 'Rosales', 31, 'C. Morelos y Pavon Col. La marqueza Morelos'),
(2005, 'Brenda', 'Flores ', 'Estrada', 17, 'C. Hidalgo Col. Cruzes Puebla');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `involucrados`
--
ALTER TABLE `involucrados`
  ADD CONSTRAINT `fk_Involucrados_Afectados` FOREIGN KEY (`Afectados_idAfectados`) REFERENCES `afectados` (`idAfectados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Involucrados_Victimas1` FOREIGN KEY (`Victimas_id_Nombre`) REFERENCES `victimas` (`id_Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perdidas`
--
ALTER TABLE `perdidas`
  ADD CONSTRAINT `fk_Perdidas_Perdidas_Materiales1` FOREIGN KEY (`Perdidas_Materiales_id_Objeto`) REFERENCES `perdidas_materiales` (`id_Objeto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`idDireccion`) REFERENCES `direccion` (`idDireccion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `fk_Reporte_Involucrados1` FOREIGN KEY (`Involucrados_idInvolucrados`) REFERENCES `involucrados` (`idInvolucrados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reporte_Perdidas1` FOREIGN KEY (`Perdidas_idPerdidas`) REFERENCES `perdidas` (`idPerdidas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reporte_Proteccion_civil1` FOREIGN KEY (`Proteccion_civil_idProteccion_civil`) REFERENCES `proteccion_civil` (`idProteccion_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reporte_Publicación1` FOREIGN KEY (`Publicación_idPublicación`) REFERENCES `publicación` (`idPublicación`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
