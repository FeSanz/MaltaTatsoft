-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.33 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla adm.alerts
CREATE TABLE IF NOT EXISTS `alerts` (
  `DateMark` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `Operator` smallint DEFAULT NULL,
  `OperatorAccepted` smallint DEFAULT NULL,
  `Supervisor` smallint DEFAULT NULL,
  `Failure` smallint DEFAULT NULL,
  `Status` tinyint DEFAULT NULL,
  `Start` time DEFAULT NULL,
  `Response` time DEFAULT NULL,
  `Repair` time DEFAULT NULL,
  PRIMARY KEY (`DateMark`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.alerts: ~7 rows (aproximadamente)
DELETE FROM `alerts`;
INSERT INTO `alerts` (`DateMark`, `Operator`, `OperatorAccepted`, `Supervisor`, `Failure`, `Status`, `Start`, `Response`, `Repair`) VALUES
	('1682474258', NULL, NULL, NULL, 4, 1, '10:00:00', '00:00:00', '00:00:00'),
	('1682475673', NULL, NULL, NULL, 17, 1, '10:10:10', '00:00:00', '00:00:00'),
	('1682476647', NULL, NULL, NULL, 7, 1, '10:10:10', '00:00:00', '00:00:00'),
	('1682477580', NULL, NULL, NULL, 12, 1, '10:10:10', '00:00:00', '00:00:00'),
	('1685737289', 401, NULL, 0, 1, 4, '10:10:10', '11:11:11', '00:11:12'),
	('1685737424', 401, NULL, 1, 1, 4, '10:10:10', '11:11:11', '00:11:12'),
	('1685737681', 401, NULL, 3, 1, 4, '10:10:10', '11:11:11', '00:11:12');

-- Volcando estructura para tabla adm.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `Ide` tinyint NOT NULL,
  `Name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci,
  PRIMARY KEY (`Ide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.areas: ~4 rows (aproximadamente)
DELETE FROM `areas`;
INSERT INTO `areas` (`Ide`, `Name`) VALUES
	(1, 'Mantenimiento'),
	(2, 'Almacén'),
	(3, 'Producción'),
	(4, 'Calidad');

-- Volcando estructura para tabla adm.emails
CREATE TABLE IF NOT EXISTS `emails` (
  `Ide` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Area` tinyint DEFAULT NULL,
  `Role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Level` tinyint DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Rfid` smallint DEFAULT NULL,
  PRIMARY KEY (`Ide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.emails: ~24 rows (aproximadamente)
DELETE FROM `emails`;
INSERT INTO `emails` (`Ide`, `Name`, `Area`, `Role`, `Level`, `Email`, `Rfid`) VALUES
	('1675976415', 'Daniel Leija', 0, 'Desarrollador', 0, 'daniel.leija.condor@gmail.com', NULL),
	('1675976416', 'Felipe Antonio', 0, 'Desarrollador', 0, 'felipe.antonio.condor@gmail.com', NULL),
	('1680714086', 'Luis Galicia Juarez', 3, 'Supervisor', 1, 'luis.galiciajuarez@adm.com', 201),
	('1680714128', 'Alberto Hernández Rivera', 3, 'Supervisor', 1, 'alberto.hernandezrivera@adm.com', 202),
	('1680714257', 'Enrique Ramos Maldonado', 3, 'Supervisor', 1, 'enrique.ramosmaldonado@adm.com', 203),
	('1680714324', 'Miguel Rios', 3, 'Superintendente', 2, 'miguel.rios@adm.com', NULL),
	('1680714392', 'José Maldonado', 3, 'Gerente de Planta', 3, 'jose.maldonadosanchez@adm.com', NULL),
	('1680714442', 'Gia Morgante', 3, 'Director de Manufactura', 4, 'giacomo.morgantescalcon@adm.com', NULL),
	('1680714626', 'Juan Hernandez Santibañez', 1, 'Ingeniero', 1, 'juan.hernandezsantibañez@adm.com', 1),
	('1680714724', 'Eduardo Cadena García', 1, 'Supervisor', 2, 'eduardo.cadenagarcia@adm.com', 2),
	('1680714788', 'Joel Morales Aguilar', 1, 'Coordinador', 3, 'joel.moralesaguilar@adm.com', 0),
	('1680714855', 'Miguel Rios', 1, 'Coordinador', 3, 'miguel.rios@adm.com', NULL),
	('1680714889', 'Roberto Quemada', 1, 'Técnico', 1, 'None', 3),
	('1680714924', 'José Maldonado', 1, 'Gerente de Planta', 4, 'jose.maldonadosanchez@adm.com', NULL),
	('1680715002', 'José Monroy Velázquez', 2, 'Supervisor', 1, 'jose.monroyvelazquez@adm.com', 101),
	('1680715035', 'Jhonatan Díaz López', 2, 'Coordinador', 2, 'jhonatan.diazlopez@adm.com', 102),
	('1680715121', 'Miguel Rios', 2, 'Coordinador', 2, 'miguel.rios@adm.com', NULL),
	('1680715233', 'Hugo Vega Nava', 4, 'Auditor', 1, 'hugo.veganava@adm.com', 301),
	('1680715272', 'Leonor Ramírez Soriano', 4, 'Auditor', 1, 'leonor.ramirezsoriano@adm.com', 302),
	('1680715306', 'Roberto Ramos', 4, 'Auditor', 1, 'roberto.ramos@adm.com', 303),
	('1680715367', 'Silvia Vallejon', 4, 'Auditor', 1, 'silvia.vallejoncortez@adm.com', NULL),
	('1680715431', 'Luz Verónica Ximello', 4, 'Auditor', 1, 'luz.ximellobautista@adm.com', 304),
	('1680715494', 'Ruben Lopez', 4, 'Coordinador', 2, 'rubenignacio.lopezescobedo@adm.com', NULL);

-- Volcando estructura para tabla adm.failures
CREATE TABLE IF NOT EXISTS `failures` (
  `Ide` smallint NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Area` tinyint DEFAULT NULL,
  PRIMARY KEY (`Ide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.failures: ~91 rows (aproximadamente)
DELETE FROM `failures`;
INSERT INTO `failures` (`Ide`, `Name`, `Area`) VALUES
	(1, 'Limpieza de maquinaria', 1),
	(2, '16.1 Cambio de pistones', 1),
	(3, '16.2 Cambio de rodamientos', 1),
	(4, '16.3 Cambio de bandas', 1),
	(5, '21.1 Exceso de tiempo de mtto', 1),
	(6, '21.2 Maquinaria/equipos sin refacción', 1),
	(7, 'Cambio de equipo dañado', 1),
	(8, '24.1 Ajuste en cosedora', 1),
	(9, '24.2 Atascamiento de sacos entre bandas', 1),
	(10, '24.3 Falla de paletizado', 1),
	(11, '24.4 Falla de alimentador de tarimas', 1),
	(12, '24.5 Falla de alimentador de saco vacío', 1),
	(13, '24.6 Fallo de apertura de boca', 1),
	(14, '24.7 Fallo de llenado de saco', 1),
	(15, '24.8 falla de banda alimentadora', 1),
	(16, '24.9 Falla de etiquetadora', 1),
	(17, '24.10 Falla de cosedora', 1),
	(18, '24.11 Falla de volteador de sacos', 1),
	(19, '24.12 Falla de bandas de extracción de saco', 1),
	(20, '24.13 Falla de checkwayer', 1),
	(21, '24.14 Falla de detector de metales', 1),
	(22, '24.15 Falla de impresora laser(Injet)', 1),
	(23, '24.16 Falla de banda basculante', 1),
	(24, '24.17 Falla de banda inclinada', 1),
	(25, '24.18 Falla de banda gravitarorio', 1),
	(26, '24.19 Falla de conformador de sacos', 1),
	(27, '24.20 Falla de Girador de sacos', 1),
	(28, '24.21 Falla de banda de posición', 1),
	(29, '24.22 Falla de banda conformadora de camas', 1),
	(30, '24.23 Falla de desplazador de sacos', 1),
	(31, '24.24 Falla de conformador de camas', 1),
	(32, '24.25 Falla de compuerta de paletizado', 1),
	(33, '24.26 Falla de referenciador de pallet', 1),
	(34, '24.27 Falla de rodillos motorizados', 1),
	(35, '24.27 Falla de sensores', 1),
	(36, '25.1 Tolva de alimentación', 1),
	(37, '25.2 Compuertas de tolvas', 1),
	(38, '25.3 Sensores de nivel', 1),
	(39, '25.4 Falla de distribuidor', 1),
	(40, '25.5 Falla de aplicador de melaza', 1),
	(41, '25.7 Falla de elevador de cangilones harinas', 1),
	(42, '25.8 Falla de elevador de cangilones Pellet', 1),
	(43, '25.9 Falla de válvula diversora', 1),
	(44, '25.10 Falla de sensores', 1),
	(45, '26.1 No permite selección de receta', 1),
	(46, '26.2 No hay sincronización de equipos', 1),
	(47, '26.3 Error de comunicación equipos de flujo', 1),
	(48, 'Falta de aire comprimido', 1),
	(49, 'Falla energía eléctrica', 1),
	(50, '11.1 Mtto planeado', 1),
	(51, '11.2 Revisión de puntos TPM', 1),
	(101, '19.1 Inv. ciclico', 2),
	(102, 'Inv. físico', 2),
	(103, 'Falta de melaza', 2),
	(104, 'falta de empaque', 2),
	(105, 'falta de tarimas', 2),
	(106, 'falta de hilo', 2),
	(201, '13.1 Cambio de hilo', 3),
	(202, '13.2 Cambio de aguja', 3),
	(203, '13.3 Cambio de Producto', 3),
	(204, '13.4 Cambio de saco', 3),
	(205, '13.5 Setup', 3),
	(206, '14.1 Capacitación', 3),
	(207, '14.2 Horario de comida', 3),
	(208, '14.3 Platica de Producción', 3),
	(209, '14.4 Platicad e RH', 3),
	(210, '14.5 Platica de Seguridad e Higiene', 3),
	(211, '15.1 Arranque inicial', 3),
	(212, '15.2 Arranque x Paro obligado', 3),
	(213, '17.1 Pruebas de Ing', 3),
	(214, '17.2 Integración de eq. nuevos', 3),
	(215, '18.1 Movimientos de equipos', 3),
	(216, 'Prueba de materiales', 3),
	(217, 'Pruebas de procesos nuevo', 3),
	(218, 'Pruebas de produccion nuevo', 3),
	(219, 'Ajustes extraordinarios durante cambios', 3),
	(220, 'Tiempo excedido en cambio de SKu', 3),
	(221, 'tiempo excedido en cambio de empaque', 3),
	(222, '33.1 Ausentismo', 3),
	(223, '33.2 Personal para actividad programada', 3),
	(224, '34.1 Ajustes al proceso de ensacado', 3),
	(225, '34.2 Ajustes al proceso de etiquetad', 3),
	(226, 'Ajustes al proc. de cocido', 3),
	(227, 'Ajustes a las bandas de extracción', 3),
	(228, 'Ajustes al girador de sacos', 3),
	(229, 'Ajustes al checkwayer', 3),
	(230, '35.1 Activación de alarma de emergencia', 3),
	(231, '35.2 Simulacro', 3),
	(232, 'Proceso de carga detenido x sobreproducción', 3),
	(301, 'personal nuevo', 4),
	(302, 'equipo', 4);

-- Volcando estructura para tabla adm.manufacturing
CREATE TABLE IF NOT EXISTS `manufacturing` (
  `WorkOrder` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ItemNumber` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `LotNumber` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `PlannedStartDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `PlannedCompletionDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`WorkOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.manufacturing: ~0 rows (aproximadamente)
DELETE FROM `manufacturing`;

-- Volcando estructura para tabla adm.operators
CREATE TABLE IF NOT EXISTS `operators` (
  `Ide` smallint NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Shift` tinyint DEFAULT NULL,
  PRIMARY KEY (`Ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.operators: ~2 rows (aproximadamente)
DELETE FROM `operators`;
INSERT INTO `operators` (`Ide`, `Name`, `Shift`) VALUES
	(401, 'Operación Grupo A', 1),
	(410, 'Operacion Grupo B', 2),
	(420, 'Operacion Grupo c', 3);

-- Volcando estructura para tabla adm.production
CREATE TABLE IF NOT EXISTS `production` (
  `DateMark` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `WorkOrder` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Machine` tinyint DEFAULT NULL,
  `Current` int DEFAULT NULL,
  `Good` int DEFAULT NULL,
  `Scrap` int DEFAULT NULL,
  PRIMARY KEY (`DateMark`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.production: ~0 rows (aproximadamente)
DELETE FROM `production`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
