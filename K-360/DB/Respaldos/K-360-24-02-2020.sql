-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2020 at 08:28 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `K-360`
--

-- --------------------------------------------------------

--
-- Table structure for table `Arbitros`
--

CREATE TABLE `Arbitros` (
  `Id` int(11) NOT NULL,
  `Nombre_Arbitro` varchar(100) NOT NULL,
  `Apellido_Arbitros` varchar(100) NOT NULL,
  `DNI_Arbitro` varchar(25) NOT NULL,
  `Fecha_Nacimiento` varchar(25) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `Categoria_Arbitro` varchar(50) NOT NULL,
  `Tlf` varchar(25) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Categoria`
--

CREATE TABLE `Categoria` (
  `id` int(11) NOT NULL,
  `Nombre_categoria` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `Liga_Id` int(10) NOT NULL,
  `Pais_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Categoria`
--

INSERT INTO `Categoria` (`id`, `Nombre_categoria`, `Descripcion`, `Liga_Id`, `Pais_id`) VALUES
(1, 'Profesional', 'Primera División Nacional', 1, 1),
(2, 'Segunda División ', 'Segunda División Nacional (Profesional)', 2, 1),
(3, 'Amateur', 'Tercera División Nacional', 3, 1),
(4, 'Serie A', 'máxima categoría del sistema de ligas de Italia', 4, 2),
(5, 'Serie B', 'Semi-Profesional', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Club`
--

CREATE TABLE `Club` (
  `Id` int(11) NOT NULL,
  `Nombre_Club` varchar(150) NOT NULL,
  `Fundacion` varchar(50) NOT NULL,
  `Presidente` varchar(150) NOT NULL,
  `Delegado` varchar(150) NOT NULL,
  `Entrenador_Actual` int(10) NOT NULL,
  `Estadio` varchar(100) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Ubicacion` text NOT NULL,
  `Pais` varchar(100) NOT NULL,
  `Provincia` varchar(100) NOT NULL,
  `Canton` varchar(100) NOT NULL,
  `Web_Club` varchar(150) NOT NULL,
  `Telefono` varchar(25) NOT NULL,
  `Escudo_Club` varchar(250) NOT NULL,
  `Facebook` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Club`
--

INSERT INTO `Club` (`Id`, `Nombre_Club`, `Fundacion`, `Presidente`, `Delegado`, `Entrenador_Actual`, `Estadio`, `Direccion`, `Ubicacion`, `Pais`, `Provincia`, `Canton`, `Web_Club`, `Telefono`, `Escudo_Club`, `Facebook`) VALUES
(1, 'Barcelona FC', '1903/01/05', 'Josep Maria Bartomeu', 'Jordi Mestre Masdeu', 1, 'Camp Nou', 'C. d\'Arístides Maillol, 12, 08028 Barcelona, España', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11974.745900987175!2d2.1228198!3d41.380896!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x44f65330fe1b04b9!2sCamp%20Nou!5e0!3m2!1ses!2sec!4v1580327469182!5m2!1ses!2sec\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'España', 'Barcelona', 'Cataluña', 'https://www.fcbarcelona.es/', '+34910607028', 'https://vignette.wikia.nocookie.net/proevolutionsoccer/images/0/0e/Barcelona.png/revision/latest?cb=20151214164102&path-prefix=es', ''),
(2, 'Juventus de Turín', '1897/11/01', 'Andrea Agnelli', 'Franzo Grande Stevens', 2, 'Allianz Stadium', 'Corso Gaetano Scirea, 50', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2815.827289833854!2d7.6390757153307565!3d45.10956897909833!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47886c17f7814e37%3A0xe3be8084a88d8da5!2sEstadio%20Juventus!5e0!3m2!1ses!2sec!4v1580328283677!5m2!1ses!2sec\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'Italia', 'Turin', ' Piamonte', 'https://www.juventus.com/it/', '+39 333 5423 473', 'https://2.bp.blogspot.com/-ok9Tay5B5xI/W5M0UKVVuEI/AAAAAAAAJ30/FvH73lwxeDYRrtgVVZltrvM8GRL3v6wSwCLcBGAs/s1600/1.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `Encuentro`
--

CREATE TABLE `Encuentro` (
  `Id` int(11) NOT NULL,
  `Id_pais` int(10) NOT NULL,
  `Id_Liga` int(10) NOT NULL,
  `Id_Categoria` int(10) NOT NULL,
  `Id_Temporada` int(10) NOT NULL,
  `Id_Torneo` int(10) NOT NULL,
  `Id_Jornada` int(10) NOT NULL,
  `Id_Club_Home` int(10) NOT NULL,
  `Score_Club_Home` int(2) NOT NULL,
  `Resultado_Enc_Club_H` varchar(1) NOT NULL,
  `Faltas_Cometidas_H` int(5) NOT NULL,
  `Total_TA_ClubH` int(2) NOT NULL,
  `Total_TR_ClubH` int(10) NOT NULL,
  `FueraLugar_H` int(5) NOT NULL,
  `Tiros_Puerta_H` int(5) NOT NULL,
  `Tiros_Gol_H` int(5) NOT NULL,
  `TirosEsquina_H` int(5) NOT NULL,
  `Salvadas_H` int(5) NOT NULL,
  `Posecion_Home` int(2) NOT NULL,
  `Id_Entrenador_H` int(10) NOT NULL,
  `Sustituciones_ClubH` int(2) NOT NULL,
  `Id_Club_VIsitor` int(10) NOT NULL,
  `Score_Club_Visitor` int(2) NOT NULL,
  `Resultado_Enc_Club_V` varchar(1) NOT NULL,
  `Faltas_Cometidas_V` int(5) NOT NULL,
  `Total_TA_ClubV` int(10) NOT NULL,
  `Total_TR_ClubV` int(10) NOT NULL,
  `FueraLugar_V` int(5) NOT NULL,
  `Tiros_Puerta_V` int(5) NOT NULL,
  `Tiros_Gol_V` int(5) NOT NULL,
  `TirosEsquina_V` int(5) NOT NULL,
  `Salvadas_V` int(5) NOT NULL,
  `Posecion_visitor` int(2) NOT NULL,
  `Id_Entrenador_V` int(10) NOT NULL,
  `Sustituciones_ClubV` int(2) NOT NULL,
  `Fecha_encuentro` varchar(25) NOT NULL,
  `Hora_Inicio` varchar(25) NOT NULL,
  `Hora_Fin` varchar(25) NOT NULL,
  `Minutos_Jugados` int(3) NOT NULL,
  `TiempoExtra` int(1) NOT NULL,
  `Penales` int(1) NOT NULL,
  `Goles_penales_Home` int(2) NOT NULL,
  `Goles_penales_Visitor` int(2) NOT NULL,
  `Id_Arbitro_P` int(10) NOT NULL,
  `Id_Arbitro_S` int(10) NOT NULL,
  `Clima` varchar(10) NOT NULL,
  `Observaciones` text NOT NULL,
  `Status_Encuentro` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Entrenador`
--

CREATE TABLE `Entrenador` (
  `Id` int(11) NOT NULL,
  `Nombre_Entrenador` varchar(100) NOT NULL,
  `Apellido Entrenador` varchar(100) NOT NULL,
  `DNI_Entrenador` int(25) NOT NULL,
  `Fecha_Nacimiento` varchar(25) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `Foto_Perfil` varchar(200) NOT NULL,
  `Categoria_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Entrenador`
--

INSERT INTO `Entrenador` (`Id`, `Nombre_Entrenador`, `Apellido Entrenador`, `DNI_Entrenador`, `Fecha_Nacimiento`, `Nacionalidad`, `Foto_Perfil`, `Categoria_Id`) VALUES
(1, 'Enrique ', 'Setien Solar', 0, '1958/09/27', 'Española', 'https://www.ceroacero.es/img/treinadores/108/363108_ori__20161013101037_quique_setien.jpg', 1),
(2, 'Giovanni', 'Trapattoni', 0, '1939/03/17', 'Italiana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Giovanni_Trapattoni.jpg/245px-Giovanni_Trapattoni.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Jornada`
--

CREATE TABLE `Jornada` (
  `Id` int(11) NOT NULL,
  `Numero` int(5) NOT NULL,
  `Descripcion` varchar(150) NOT NULL,
  `Id_Torneo` int(10) NOT NULL,
  `Id_Liga` int(10) NOT NULL,
  `Id_Temporada` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Jugador`
--

CREATE TABLE `Jugador` (
  `Id` int(11) NOT NULL,
  `Nombre_Jugador` varchar(100) NOT NULL,
  `Apellido_Jugador` varchar(100) NOT NULL,
  `DNI_Jugador` int(25) NOT NULL,
  `Fecha_Nacimiento` varchar(25) NOT NULL,
  `Lugar_Nacimiento` varchar(100) NOT NULL,
  `Pais_Nacimiento` varchar(100) NOT NULL,
  `Peso` float NOT NULL,
  `Altura` float NOT NULL,
  `Perfil_Pie` varchar(10) NOT NULL,
  `Fecha_Debut` date NOT NULL,
  `Posicion` varchar(25) NOT NULL,
  `Dorsal` int(2) NOT NULL,
  `Foto_Jugador` varchar(150) NOT NULL,
  `Club_Actual` varchar(40) NOT NULL,
  `Categoria_Id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Jugador`
--

INSERT INTO `Jugador` (`Id`, `Nombre_Jugador`, `Apellido_Jugador`, `DNI_Jugador`, `Fecha_Nacimiento`, `Lugar_Nacimiento`, `Pais_Nacimiento`, `Peso`, `Altura`, `Perfil_Pie`, `Fecha_Debut`, `Posicion`, `Dorsal`, `Foto_Jugador`, `Club_Actual`, `Categoria_Id`) VALUES
(1, 'Gerard', 'Pique', 0, '1987-02-02', 'Barcelona', 'España', 85, 194, 'Derecho', '2008-08-13', 'Defensa', 3, 'https://pngimage.net/wp-content/uploads/2018/06/gerard-pique-png.png', '1', 1),
(2, 'Paulo', 'Dybala', 0, '1993-11-15', 'Laguna Larga', 'Argentina', 75, 177, 'Izquierdo', '2015-07-01', 'Delantero', 10, 'https://i1.wp.com/www.sopitas.com/wp-content/uploads/2019/01/juventus-habria-puesto-precio-100-millones-fichar-paulo-dybala-mercado-verano.jpg', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Liga`
--

CREATE TABLE `Liga` (
  `Id` int(11) NOT NULL,
  `Id_Pais` int(1) NOT NULL,
  `Nombre_Liga` varchar(150) NOT NULL,
  `Fundacion` varchar(25) NOT NULL,
  `Presidente` varchar(150) NOT NULL,
  `Delegado` varchar(150) NOT NULL,
  `Organizado` varchar(150) NOT NULL,
  `Patrocinado` varchar(150) NOT NULL,
  `TV_Oficial` varchar(150) NOT NULL,
  `Escudo` varchar(200) NOT NULL,
  `web` varchar(200) NOT NULL,
  `Telefono` varchar(150) NOT NULL,
  `Facebook` varchar(150) NOT NULL,
  `Total_Categorias` int(10) NOT NULL,
  `Total_Clubes` int(10) NOT NULL,
  `Total_Jugadores` int(10) NOT NULL,
  `Total_Torneos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Liga`
--

INSERT INTO `Liga` (`Id`, `Id_Pais`, `Nombre_Liga`, `Fundacion`, `Presidente`, `Delegado`, `Organizado`, `Patrocinado`, `TV_Oficial`, `Escudo`, `web`, `Telefono`, `Facebook`, `Total_Categorias`, `Total_Clubes`, `Total_Jugadores`, `Total_Torneos`) VALUES
(1, 1, 'Liga Santander', '1929', 'Javier Gómez Molina', 'Guillermo Cabello ', 'Liga de Fútbol Profesional (LFP)', 'Santander', 'http://www.movistarplus.es/liga-santander', 'https://assets.laliga.com/assets/logos/laliga-h/laliga-h-300x300.jpg', 'https://www.laliga.com/laliga-santander', 'Null', 'Null', 5, 84, 1764, 125),
(2, 1, 'Serie A', '1929', 'Miguel Loor', 'Petter Ferrer', 'Lega Serie A (LNPA)', 'Nike', 'https://sport.sky.it/', 'https://franyfran.neocities.org/imagenes/seria%20a.png', 'http://www.legaseriea.it/en', 'Null', 'Null', 4, 90, 1896, 116);

-- --------------------------------------------------------

--
-- Table structure for table `Pais`
--

CREATE TABLE `Pais` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Bandera` varchar(200) NOT NULL,
  `subscriptions` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pais`
--

INSERT INTO `Pais` (`Id`, `Nombre`, `Bandera`, `subscriptions`) VALUES
(1, 'España', 'https://www.banderas-mundo.es/data/flags/w580/es.webp', 5),
(2, 'Colombia', 'https://www.banderas-mundo.es/data/flags/w580/co.webp', 0),
(3, 'Venezuela', 'https://www.banderas-mundo.es/data/flags/w580/ve.webp', 0),
(4, 'Uruguay', 'https://www.banderas-mundo.es/data/flags/w580/uy.webp', 0),
(5, 'Peru', 'https://www.banderas-mundo.es/data/flags/w580/pe.webp', 3),
(6, 'Paraguay', 'https://www.banderas-mundo.es/data/flags/w580/py.webp', 0),
(7, 'Panama', 'https://www.banderas-mundo.es/data/flags/w580/pa.webp', 1),
(8, 'Mexico', 'https://www.banderas-mundo.es/data/flags/w580/mx.webp', 0),
(9, 'Ecuador', 'https://www.banderas-mundo.es/data/flags/w580/ec.webp', 0),
(10, 'Costa Rica', 'https://www.banderas-mundo.es/data/flags/w580/cr.webp', 0),
(11, 'Chile', 'https://www.banderas-mundo.es/data/flags/w580/cl.webp', 4),
(12, 'Brazil', 'https://www.banderas-mundo.es/data/flags/w580/br.webp', 8),
(13, 'Bolivia', 'https://www.banderas-mundo.es/data/flags/w580/bo.webp', 2),
(14, 'Argentina', 'https://www.banderas-mundo.es/data/flags/w580/ar.webp', 0),
(15, 'USA', 'https://www.banderas-mundo.es/data/flags/w580/us.webp', 2),
(16, 'Canada', 'https://www.banderas-mundo.es/data/flags/w580/us.webp', 3),
(17, 'Francia', 'https://www.banderas-mundo.es/data/flags/w580/fr.webp', 6),
(18, 'Inglaterra', 'https://www.banderas-mundo.es/data/flags/w580/gb.webp', 11),
(19, 'Alemania', 'https://www.banderas-mundo.es/data/flags/w580/de.webp', 4),
(20, 'Italia', 'https://www.banderas-mundo.es/data/flags/w580/it.webp', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Tabla_Posiciones`
--

CREATE TABLE `Tabla_Posiciones` (
  `Id` int(11) NOT NULL,
  `Id_Liga` int(25) NOT NULL,
  `Id_TemporadaF` varchar(10) NOT NULL,
  `Id_TorneoF` int(10) NOT NULL,
  `Id_Categoria` int(25) NOT NULL,
  `Nombre_Liga` varchar(50) NOT NULL,
  `Nombre_Categoria` varchar(50) NOT NULL,
  `Temporada` varchar(25) NOT NULL,
  `Id_Equipo` int(25) NOT NULL,
  `Nombre_Equipo` varchar(50) NOT NULL,
  `JJ` int(5) NOT NULL,
  `JG` int(5) NOT NULL,
  `JE` int(5) NOT NULL,
  `JP` int(5) NOT NULL,
  `GF` int(5) NOT NULL,
  `GC` int(5) NOT NULL,
  `GD` int(5) NOT NULL,
  `Pts` int(10) NOT NULL,
  `Racha` varchar(10) NOT NULL,
  `Total_Tamarilla` int(11) NOT NULL,
  `Total_Troja` int(11) NOT NULL,
  `Total_Tarjetas` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  `ImagenEscudo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Tabla_Posiciones`
--

INSERT INTO `Tabla_Posiciones` (`Id`, `Id_Liga`, `Id_TemporadaF`, `Id_TorneoF`, `Id_Categoria`, `Nombre_Liga`, `Nombre_Categoria`, `Temporada`, `Id_Equipo`, `Nombre_Equipo`, `JJ`, `JG`, `JE`, `JP`, `GF`, `GC`, `GD`, `Pts`, `Racha`, `Total_Tamarilla`, `Total_Troja`, `Total_Tarjetas`, `IsActive`, `ImagenEscudo`) VALUES
(1, 1, '2', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 1, 'Barcelona', 38, 26, 9, 3, 90, 36, 54, 87, '2 Ganados', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/3.png'),
(2, 1, '9', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 2, 'Atletico Madrid', 38, 22, 10, 6, 55, 29, 26, 76, '2 Ganados', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/42.png'),
(3, 1, '9', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 3, 'Real Madrid', 38, 21, 5, 12, 63, 46, 17, 68, '1 Empates', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/1.png'),
(4, 1, '9', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 4, 'Valencia C.F.', 38, 15, 16, 7, 51, 35, 16, 61, '2 Perdidos', 8, 3, 11, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/17.png'),
(5, 1, '9', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 5, 'Gatafe', 38, 15, 14, 9, 48, 35, 13, 59, '1 Empates', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/4.png'),
(6, 1, '2', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 6, 'Sevilla', 38, 17, 8, 13, 62, 47, 15, 59, '1 Ganados', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/53_sevilla.png'),
(7, 1, '2', 7, 4, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 7, 'RCD Espanyol', 38, 14, 11, 13, 48, 50, -2, 53, '2 Empates', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/8.png'),
(8, 1, '2', 7, 4, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 8, 'Ath.Bilbao', 38, 13, 14, 11, 41, 45, -4, 53, '1 Ganados', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/5.png'),
(9, 1, '2', 7, 4, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 9, 'Real Sociedad', 38, 13, 11, 14, 45, 46, -1, 50, '1 Perdidos', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/16.png'),
(10, 1, '2', 7, 1, 'Liga_Demo', 'Categoria_Demo', '2018-2019', 10, 'Betis', 38, 14, 8, 16, 44, 52, -8, 50, '1 Perdidos', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/liga/Clubes/Espana/BBVA/Icono/2.png'),
(11, 3, '5', 0, 3, 'Liga_Demo', 'Categoria_Demo', '2017-2018', 1, 'Barcelona', 38, 28, 9, 1, 99, 29, 70, 93, '1 Ganados', 0, 0, 0, 0, 'Imagenes/Escudo/Barcelona.png'),
(12, 3, '5', 0, 3, 'Liga_Demo', 'Categoria_Demo', '2017-2018', 2, 'Atletico Madrid', 38, 23, 10, 5, 58, 22, 36, 79, '1 Empates', 0, 0, 0, 0, 'Imagenes/Escudo/Atletico Madrid.png'),
(13, 3, '5', 0, 3, 'Liga_Demo', 'Categoria_Demo', '2017-2018', 3, 'Real Madrid', 38, 22, 10, 6, 94, 44, 50, 76, '1 Ganados', 0, 0, 0, 0, 'Imagenes/Escudo/Real Madrid.png'),
(14, 3, '5', 0, 3, 'Liga_Demo', 'Categoria_Demo', '2017-2018', 4, 'Valencia C.F.', 38, 22, 7, 9, 65, 38, 27, 73, '2 Empates', 15, 7, 22, 0, 'Imagenes/Escudo/Valencia.jpg'),
(15, 3, '5', 0, 3, 'Liga_Demo', 'Categoria_Demo', '2017-2018', 11, 'Villarreal', 38, 18, 7, 13, 57, 50, 7, 61, '2 Ganados', 0, 0, 0, 0, 'Imagenes/Escudo/Villarreal.png'),
(16, 3, '', 0, 3, 'Liga_Demo', 'Categoria_Demo', '2017-2018', 10, 'Betis', 38, 18, 6, 14, 60, 61, -1, 60, '1 Empates', 0, 0, 0, 0, 'Imagenes/Escudo/Betis.jpg'),
(17, 0, '2', 7, 4, 'Premier League', 'Primera Division', '2018-2019', 12, 'Manchester City', 38, 32, 2, 4, 95, 23, 72, 98, '5 Ganados', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/imagenes/Clubes/Inglaterra/manc.png'),
(18, 0, '2', 7, 7, 'Premier League', 'Primera Division', '2018-2019', 13, 'Liverpool', 38, 30, 7, 1, 89, 22, 67, 97, '5 Ganados', 12, 8, 20, 1, 'http://localhost/kornner-360/v2-2/360/imagenes/Clubes/Inglaterra/liverpool.jpg'),
(19, 3, '5', 7, 3, 'Premier League', 'Primera Division', '2018-2019', 14, 'Chelsea', 38, 21, 9, 8, 63, 39, 24, 72, '1 Empates', 0, 0, 0, 1, 'http://localhost/kornner-360/v2-2/360/imagenes/Clubes/Inglaterra/chesea.png'),
(20, 1, '3', 5, 1, 'Premier League', 'Primera Division', '2017-2018', 12, 'Manchester City', 38, 32, 4, 2, 106, 27, 79, 100, '2 Ganados', 14, 10, 24, 0, 'http://localhost/Api-360/AssetDemo/Escudo-Liga/manchestercity.jpg'),
(21, 1, '3', 5, 1, 'Premier League', 'Primera Division', '2017-2018', 15, 'Manchester United', 38, 25, 6, 7, 68, 28, 40, 81, '1 Ganados', 15, 6, 9, 0, 'http://localhost/Api-360/AssetDemo/Escudo-Liga/manchesterUnited.jpg'),
(22, 0, '2', 7, 44, 'Premier League', 'Primera Division', '2017-2018', 16, 'Tottenham Hotspur', 38, 23, 8, 7, 74, 36, 38, 77, '2 Ganados', 0, 0, 0, 0, ''),
(23, 0, '2', 7, 57, 'Premier League', 'Primera Division', '2017-2018', 17, 'Liverpool', 38, 21, 12, 5, 84, 38, 46, 75, '1 Ganados', 13, 5, 18, 0, ''),
(24, 3, '', 0, 3, 'Liga Pro', 'Maxima', '2018-2019', 17, 'Barcelona SC', 15, 10, 3, 2, 34, 16, 18, 33, '5 Ganados', 0, 0, 0, 1, ''),
(25, 3, '', 0, 3, 'Liga Pro', 'Maxima', '2018-2019', 18, 'Macara', 15, 9, 5, 1, 25, 8, 17, 32, '1 Empate', 0, 0, 0, 1, ''),
(26, 3, '', 0, 3, 'Liga Pro', 'Maxima', '2017-2018', 19, 'EMELEC', 22, 12, 5, 5, 35, 17, 18, 41, '2 Ganados', 0, 0, 0, 0, ''),
(27, 3, '', 0, 3, 'Liga Pro', 'Maxima', '2017-2018', 18, 'Macara', 22, 10, 8, 4, 31, 24, 7, 38, '1 Perdido', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `Temporada`
--

CREATE TABLE `Temporada` (
  `Id` int(11) NOT NULL,
  `Temporada` varchar(15) NOT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Temporada`
--

INSERT INTO `Temporada` (`Id`, `Temporada`, `Is_Active`) VALUES
(3, '2016-2017', 0),
(4, '2017-2018', 0),
(5, '2018-2019', 0),
(6, '2019-2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Torneo`
--

CREATE TABLE `Torneo` (
  `Id` int(11) NOT NULL,
  `Id_Pais` int(10) NOT NULL,
  `Id_Liga` int(10) NOT NULL,
  `Id_Categoria` int(10) NOT NULL,
  `Id_Temporada` int(10) NOT NULL,
  `Club_CampeonID` int(10) NOT NULL,
  `Club_SubCampeonId` int(10) NOT NULL,
  `Club_TerceroId` int(10) NOT NULL,
  `Goleador_JugadorId` int(10) NOT NULL,
  `Club_OfensivaId` int(10) NOT NULL,
  `Club_defensiva_Id` int(10) NOT NULL,
  `Club_FairPlay_Id` int(10) NOT NULL,
  `Total_Clubes` int(10) NOT NULL,
  `Total_Jugadores` int(10) NOT NULL,
  `Total_Encuentros` int(10) NOT NULL,
  `Entrenador_CampeonID` int(10) NOT NULL,
  `Entrenador_SubCampeonId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Arbitros`
--
ALTER TABLE `Arbitros`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Club`
--
ALTER TABLE `Club`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Encuentro`
--
ALTER TABLE `Encuentro`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Entrenador`
--
ALTER TABLE `Entrenador`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Jornada`
--
ALTER TABLE `Jornada`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Jugador`
--
ALTER TABLE `Jugador`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Liga`
--
ALTER TABLE `Liga`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Tabla_Posiciones`
--
ALTER TABLE `Tabla_Posiciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Temporada`
--
ALTER TABLE `Temporada`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Torneo`
--
ALTER TABLE `Torneo`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Arbitros`
--
ALTER TABLE `Arbitros`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Club`
--
ALTER TABLE `Club`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Encuentro`
--
ALTER TABLE `Encuentro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Entrenador`
--
ALTER TABLE `Entrenador`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Jornada`
--
ALTER TABLE `Jornada`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Jugador`
--
ALTER TABLE `Jugador`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Liga`
--
ALTER TABLE `Liga`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Pais`
--
ALTER TABLE `Pais`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Tabla_Posiciones`
--
ALTER TABLE `Tabla_Posiciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `Temporada`
--
ALTER TABLE `Temporada`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Torneo`
--
ALTER TABLE `Torneo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
