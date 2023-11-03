-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.33 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
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
  `DateMark` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `Operator` smallint DEFAULT NULL,
  `OperatorAccepted` smallint DEFAULT NULL,
  `Supervisor` smallint DEFAULT NULL,
  `SupervisorFinish` smallint DEFAULT NULL,
  `Machine` tinyint DEFAULT NULL,
  `Failure` smallint DEFAULT NULL,
  `Status` tinyint DEFAULT NULL,
  `Start` time DEFAULT NULL,
  `Response` time DEFAULT NULL,
  `Repair` time DEFAULT NULL,
  PRIMARY KEY (`DateMark`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.alerts: ~16 rows (aproximadamente)
DELETE FROM `alerts`;
INSERT INTO `alerts` (`DateMark`, `Operator`, `OperatorAccepted`, `Supervisor`, `SupervisorFinish`, `Machine`, `Failure`, `Status`, `Start`, `Response`, `Repair`) VALUES
	('1686689794000', 401, 401, 3, 3, 1, 10, 4, '14:53:56', '00:02:08', '00:00:11'),
	('1686689828000', 410, 401, 3, 1, 1, 11, 4, '14:53:56', '00:02:41', '00:00:08'),
	('1686689859000', 401, 401, 3, 3, 1, 4, 4, '14:53:55', '00:03:15', '00:00:00'),
	('1686689928000', 401, 401, 3, 3, 1, 8, 4, '14:53:56', '00:04:24', '00:00:09'),
	('1686689960000', 401, 401, 3, 3, 1, 7, 4, '14:53:54', '00:04:57', '00:00:11'),
	('1686690004000', 401, 401, 3, 3, 1, 6, 4, '14:53:54', '00:05:37', '00:00:15'),
	('1686690051000', 401, 401, 3, 3, 1, 3, 4, '14:53:54', '00:06:22', '00:00:15'),
	('1686690132000', 401, 401, 3, 3, 1, 2, 4, '14:53:53', '00:07:49', '00:00:11'),
	('1686690163000', 401, 401, 3, 3, 1, 1, 4, '14:53:53', '00:08:19', '00:00:13'),
	('1686690829000', 401, 401, 3, 3, 1, 1, 4, '15:04:29', '00:08:56', '00:00:05'),
	('1686690846000', 401, 401, 3, 3, 1, 2, 4, '15:04:29', '00:09:13', '00:00:06'),
	('1686690878000', 401, 401, 3, 3, 1, 6, 4, '15:04:30', '00:09:43', '00:00:06'),
	('1686690897000', 401, 401, 3, 3, 1, 3, 4, '15:04:30', '00:10:03', '00:00:05'),
	('1686690913000', 401, 401, 3, 3, 1, 7, 4, '15:04:32', '00:10:16', '00:00:06');

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

-- Volcando datos para la tabla adm.emails: ~23 rows (aproximadamente)
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
	('1680714889', 'Roberto Quemada', 1, 'Técnico', 1, 'Sin correo', 3),
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
  `Type` varchar(3) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Ide`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.failures: ~105 rows (aproximadamente)
DELETE FROM `failures`;
INSERT INTO `failures` (`Ide`, `Name`, `Area`, `Type`) VALUES
	(1, '12 Limpieza de maquinaria', 1, 'TMP'),
	(2, '16.1 Cambio de pistones', 1, 'TMP'),
	(3, '16.2 Cambio de rodamientos', 1, 'TMP'),
	(4, '16.3 Cambio de bandas', 1, 'TMP'),
	(6, '21 Maquinaria/equipos sin refacción', 1, 'TNP'),
	(7, '23 Cambio de equipo dañado', 1, 'TNP'),
	(8, '24.1 Ajuste en cosedora', 1, 'TNP'),
	(9, '24.2 Atascamiento de sacos entre bandas', 1, 'TNP'),
	(10, '24.3 Falla de paletizado', 1, 'TNP'),
	(11, '24.4 Falla de alimentador de tarimas', 1, 'TNP'),
	(12, '24.5 Falla de alimentador de saco vac¡o', 1, 'TNP'),
	(13, '24.6 Fallo de apertura de boca', 1, 'TNP'),
	(14, '24.7 Fallo de llenado de saco', 1, 'TNP'),
	(15, '24.8 falla de banda alimentadora', 1, 'TNP'),
	(16, '24.9 Falla de etiquetadora', 1, 'TNP'),
	(17, '24.10 Falla de cosedora', 1, 'TNP'),
	(18, '24.11 Falla de volteador de sacos', 1, 'TNP'),
	(19, '24.12 Falla de bandas de extracción de saco', 1, 'TNP'),
	(20, '24.13 Falla de checkwayer', 1, 'TNP'),
	(21, '24.14 Falla de detector de metales', 1, 'TNP'),
	(22, '24.15 Falla de impresora laser(Injet)', 1, 'TNP'),
	(23, '24.16 Falla de banda basculante', 1, 'TNP'),
	(24, '24.17 Falla de banda inclinada', 1, 'TNP'),
	(25, '24.18 Falla de banda gravitarorio', 1, 'TNP'),
	(26, '24.19 Falla de conformador de sacos', 1, 'TNP'),
	(27, '24.20 Falla de Girador de sacos', 1, 'TNP'),
	(28, '24.21 Falla de banda de posición', 1, 'TNP'),
	(29, '24.22 Falla de banda conformadora de camas', 1, 'TNP'),
	(30, '24.23 Falla de desplazador de sacos', 1, 'TNP'),
	(31, '24.24 Falla de conformador de camas', 1, 'TNP'),
	(32, '24.25 Falla de compuerta de paletizado', 1, 'TNP'),
	(33, '24.26 Falla de referenciador de pallet', 1, 'TNP'),
	(34, '24.27 Falla de rodillos motorizados', 1, 'TNP'),
	(35, '24.28 Falla de sensores', 1, 'TNP'),
	(36, '25.1 Tolva de alimentación', 1, 'TNP'),
	(37, '25.2 Compuertas de tolvas', 1, 'TNP'),
	(38, '25.3 Sensores de nivel', 1, 'TNP'),
	(39, '25.4 Falla de distribuidor', 1, 'TNP'),
	(40, '25.5 Falla de aplicador de melaza', 1, 'TNP'),
	(41, '25.7 Falla de elevador de cangilones harinas', 1, 'TNP'),
	(42, '25.8 Falla de elevador de cangilones Pellet', 1, 'TNP'),
	(43, '25.9 Falla de válvula diversora', 1, 'TNP'),
	(44, '25.10 Falla de sensores', 1, 'TNP'),
	(45, '26.1 No permite selección de receta', 1, 'TNP'),
	(46, '26.2 No hay sincronización de equipos', 1, 'TNP'),
	(47, '26.3 Error de comunicación equipos de flujo', 1, 'TNP'),
	(48, '32.1 Falta de aire comprimido', 1, 'PTK'),
	(49, '32.2 Falla energ¡a eléctrica', 1, 'PTK'),
	(50, '11.1 Mtto planeado', 1, 'TMP'),
	(51, '11.2 Revisión de puntos TPM', 1, 'TMP'),
	(52, 'Exceso de tiempo de mtto planeado', 1, 'TNP'),
	(53, 'Exceso de tiempo de cambio de equipo', 1, 'TNP'),
	(54, 'tiempo excedido de limpieza', 1, 'TNP'),
	(101, '19.1 Inv. C¡clico', 2, 'TMP'),
	(102, '19.2 Inv. f¡sico', 2, 'TMP'),
	(103, '31.1 Falta de melaza', 2, 'PTK'),
	(104, '31.2 falta de empaque', 2, 'PTK'),
	(105, '31.3 falta de tarimas', 2, 'PTK'),
	(106, '31.4 falta de hilo', 2, 'PTK'),
	(107, 'Exceso de tiempo de inventario', 2, 'TNP'),
	(201, '13.1 Cambio de hilo', 3, 'TMP'),
	(202, '13.2 Cambio de aguja', 3, 'TMP'),
	(203, '13.3 Cambio de Producto', 3, 'TMP'),
	(204, '13.4 Cambio de saco', 3, 'TMP'),
	(205, '13.5 Setup', 3, 'TMP'),
	(206, '14.1 Capacitación', 3, 'TMP'),
	(207, '14.2 Horario de comida', 3, 'TMP'),
	(208, '14.3 Platica de Producción', 3, 'TMP'),
	(209, '14.4 Platica de RH', 3, 'TMP'),
	(210, '14.5 Platica de Seguridad e Higiene', 3, 'TMP'),
	(211, '15.1 Arranque inicial', 3, 'TMP'),
	(212, '15.2 Arranque x Paro obligado', 3, 'TMP'),
	(213, '17.1 Pruebas de Ing', 3, 'TMP'),
	(214, '17.2 Integración de eq. nuevos', 3, 'TMP'),
	(215, '18.1 Movimientos de equipos', 3, 'TMP'),
	(216, '18.2 Prueba de materiales', 3, 'TMP'),
	(217, '18.3 Pruebas de procesos nuevo', 3, 'TMP'),
	(218, '18.4 Pruebas de producci¢n nuevo', 3, 'TMP'),
	(219, '22.1 Ajustes extraordinarios durante cambios', 3, 'TNP'),
	(220, '22.2 Tiempo excedido en cambio de SKU', 3, 'TNP'),
	(221, '22.3 tiempo excedido en cambio de empaque', 3, 'TNP'),
	(222, '33.1 Ausentismo', 3, 'PTK'),
	(223, '33.2 Personal para actividad programada', 3, 'PTK'),
	(224, '34.1 Ajustes al proceso de ensacado', 3, 'PTK'),
	(225, '34.2 Ajustes al proceso de etiquetad', 3, 'PTK'),
	(226, '34.3 Ajustes al proc. de cocido', 3, 'PTK'),
	(227, '34.4 Ajustes a las bandas de extracci¢n', 3, 'PTK'),
	(228, '34.5 Ajustes al girador de sacos', 3, 'PTK'),
	(229, '34.6 Ajustes al checkwayer', 3, 'PTK'),
	(230, '35.1 Activación de alarma de emergencia', 3, 'PTK'),
	(231, '35.2 Simulacro', 3, 'PTK'),
	(232, 'Proceso de carga detenido x sobreproducción', 3, 'PTK'),
	(233, 'Exceso de tiempo Cambio SMED', 3, 'TNP'),
	(234, 'Exceso de tiempo falta personal planeado', 3, 'TNP'),
	(235, 'Exceso de tiempo arranque de planta', 3, 'TNP'),
	(236, 'Exceso de tiempo mejora de procesos', 3, 'TNP'),
	(237, 'Exceso de tiempo pruebas planeadas', 3, 'TNP'),
	(260, 'Silo lleno parar pellet', 3, 'TNP'),
	(301, 'Personal nuevo', 4, 'TMP'),
	(302, 'Equipo', 4, 'PTK'),
	(303, 'Prueba de materiales', 4, 'TMP'),
	(304, 'Pruebas de procesos nuevo', 4, 'TMP'),
	(305, 'Pruebas de producción nuevo', 4, 'TMP'),
	(306, 'Exceso de tiempo personal nuevo', 4, 'TNP'),
	(307, 'Exceso de tiempo pruebas planeadas', 4, 'TNP');

-- Volcando estructura para tabla adm.machines
CREATE TABLE IF NOT EXISTS `machines` (
  `Ide` tinyint NOT NULL,
  `Name` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.machines: ~0 rows (aproximadamente)
DELETE FROM `machines`;
INSERT INTO `machines` (`Ide`, `Name`) VALUES
	(1, 'Llenadora');

-- Volcando estructura para tabla adm.manufacturing
CREATE TABLE IF NOT EXISTS `manufacturing` (
  `WorkOrder` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ItemNumber` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `ItemDescription` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `LotNumber` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `PlannedQuantity` int DEFAULT NULL,
  `CompletedQuantity` int DEFAULT NULL,
  `PlannedStartDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `PlannedCompletionDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`WorkOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.manufacturing: ~3 rows (aproximadamente)
DELETE FROM `manufacturing`;
INSERT INTO `manufacturing` (`WorkOrder`, `ItemNumber`, `ItemDescription`, `LotNumber`, `PlannedQuantity`, `CompletedQuantity`, `PlannedStartDate`, `PlannedCompletionDate`) VALUES
	('WO-002-1051', 'CM60010', NULL, '001', 2000, NULL, '2023-06-20T09:00:00+00:00', '2023-06-20T13:00:00+00:00'),
	('WO-002-1052', 'CM60010', NULL, '001', 2000, NULL, '2023-06-20T13:00:00+00:00', '2023-06-20T17:00:00+00:00'),
	('WO-002-1053', 'CM60010', NULL, '001', 2000, NULL, '2023-06-20T17:00:00+00:00', '2023-06-20T21:00:00+00:00');

-- Volcando estructura para tabla adm.operators
CREATE TABLE IF NOT EXISTS `operators` (
  `Ide` smallint NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Shift` tinyint DEFAULT NULL,
  PRIMARY KEY (`Ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.operators: ~3 rows (aproximadamente)
DELETE FROM `operators`;
INSERT INTO `operators` (`Ide`, `Name`, `Shift`) VALUES
	(401, 'Operación Grupo A', 1),
	(410, 'Operacion Grupo B', 2),
	(420, 'Operacion Grupo c', 3);

-- Volcando estructura para tabla adm.production
CREATE TABLE IF NOT EXISTS `production` (
  `DateMark` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `WorkOrder` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `Machine` tinyint DEFAULT NULL,
  `Current` int DEFAULT NULL,
  `Good` int DEFAULT NULL,
  `Scrap` int DEFAULT NULL,
  `Stoppage` tinyint DEFAULT NULL,
  `Stopflag` tinyint DEFAULT NULL,
  PRIMARY KEY (`DateMark`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla adm.production: ~12 rows (aproximadamente)
DELETE FROM `production`;
INSERT INTO `production` (`DateMark`, `WorkOrder`, `Machine`, `Current`, `Good`, `Scrap`, `Stoppage`, `Stopflag`) VALUES
	('1689606272000', 'WO-002-1051', 1, 9, 7, 2, 2, 0),
	('1689606272001', 'WO-002-1051', 1, 10, 9, 1, 2, 0),
	('1689606272002', 'WO-002-1051', 1, 11, 11, 0, 2, 0),
	('1689606272003', 'WO-002-1051', 1, 0, 0, 0, 3, 0),
	('1689732718000', 'WO-002-1052', 1, 8, 7, 1, 2, 0),
	('1689732718001', 'WO-002-1052', 1, 0, 0, 0, 1, 2),
	('1689732718002', 'WO-002-1052', 1, 9, 8, 1, 2, 0),
	('1689732718003', 'WO-002-1052', 1, 10, 7, 3, 2, 0),
	('1690885171000', 'WO-002-1053', 1, 10, 10, 0, 2, 0),
	('1690885172000', 'WO-002-1053', 1, 11, 11, 0, 2, 0),
	('1690949973000', 'WO-002-1053', 1, 10, 10, 0, 2, 0),
	('1690949974000', '', 1, 11, 10, 1, 2, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
