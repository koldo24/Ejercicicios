-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.30-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para alumnos
CREATE DATABASE IF NOT EXISTS `alumnos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */;
USE `alumnos`;

-- Volcando estructura para tabla alumnos.alumno
CREATE TABLE IF NOT EXISTS `alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT '0',
  `avatar` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT '0',
  `sexo` char(1) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla alumnos.alumno: ~3 rows (aproximadamente)
DELETE FROM `alumno`;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` (`id`, `nombre`, `avatar`, `sexo`) VALUES
	(1, 'javier', 'foto1.png', 'h'),
	(2, 'Sara', 'foto2.png', 'm'),
	(3, 'pedro', 'foto3.png', 'h');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;

-- Volcando estructura para tabla alumnos.curso
CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT '0',
  `imagen` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT '0',
  `precio` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla alumnos.curso: ~3 rows (aproximadamente)
DELETE FROM `curso`;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` (`id`, `titulo`, `imagen`, `precio`) VALUES
	(1, 'informatica', 'imagen1.jpg', 135.2),
	(2, 'ciencia\r\n', 'imagen2.jpg', 90.2),
	(3, 'ingles', 'imagen3.jpg', 60);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;

-- Volcando estructura para tabla alumnos.cursos_comprados
CREATE TABLE IF NOT EXISTS `cursos_comprados` (
  `id_alumno` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  KEY `id_alumno` (`id_alumno`),
  KEY `FK_cursos_comprados_curso` (`id_curso`),
  CONSTRAINT `FK_cursos_comprados_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  CONSTRAINT `FK_cursos_comprados_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla alumnos.cursos_comprados: ~3 rows (aproximadamente)
DELETE FROM `cursos_comprados`;
/*!40000 ALTER TABLE `cursos_comprados` DISABLE KEYS */;
INSERT INTO `cursos_comprados` (`id_alumno`, `id_curso`) VALUES
	(1, 2),
	(3, 3),
	(2, 1);
/*!40000 ALTER TABLE `cursos_comprados` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
