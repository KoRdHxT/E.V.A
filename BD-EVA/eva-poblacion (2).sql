-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `diicultad` enum('basaco','avanzado','competitivo') DEFAULT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Zumba','Clase grupal de baile con música latina','01:00:00','basaco'),(2,'Spinning','Ciclismo estacionario con intensidad media','00:45:00','avanzado'),(3,'Pilates','Ejercicios de bajo impacto enfocados en postura','01:00:00','basaco'),(4,'Crossfit','Rutinas de alta intensidad y fuerza','01:30:00','competitivo'),(5,'Yoga','Relajación y estiramiento','01:00:00','basaco'),(6,'Kickboxing','Deporte de combate y cardio','01:00:00','avanzado'),(7,'TRX','Entrenamiento en suspensión','00:50:00','avanzado'),(8,'Funcional','Entrenamiento funcional variado','01:15:00','avanzado'),(9,'AeroBox','Boxeo con música y pasos aeróbicos','01:00:00','basaco'),(10,'Baile Fit','Clases de baile para ejercitar','01:00:00','basaco'),(11,'Calistenia','Fuerza usando el peso corporal','01:20:00','competitivo'),(12,'Full Body','Entrenamiento de cuerpo completo','01:00:00','avanzado'),(13,'Estiramiento','Técnicas de elongación y flexibilidad','00:45:00','basaco'),(14,'Rumba','Clase de ritmo y cardio','01:00:00','basaco'),(15,'Cardio HIIT','Intervalos de alta intensidad','00:40:00','competitivo'),(16,'Parkour','Desplazamiento libre con obstáculos','01:15:00','competitivo'),(17,'HIIT','Intervalos de alta intensidad','00:40:00','avanzado'),(18,'Body Pump','Rutinas con pesas','01:00:00','avanzado'),(19,'Cardio Dance','Baile energético para quemar calorías','01:00:00','basaco'),(20,'Pilates','Ejercicios de bajo impacto enfocados en postura','01:00:00','basaco');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_deportivo`
--

DROP TABLE IF EXISTS `centro_deportivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_deportivo` (
  `id_c` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `pgwed` varchar(250) DEFAULT NULL,
  `hrabre` time DEFAULT NULL,
  `hrcierre` time DEFAULT NULL,
  `atencion` varchar(150) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `capacidad` tinyint(4) DEFAULT NULL,
  `estado` enum('activo','inactivo','mantenimiento') NOT NULL DEFAULT 'activo',
  `direccion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_deportivo`
--

LOCK TABLES `centro_deportivo` WRITE;
/*!40000 ALTER TABLE `centro_deportivo` DISABLE KEYS */;
INSERT INTO `centro_deportivo` VALUES (1,'Fitness Club Norte','contacto@fitnorte.com','3104567890','Fitnes1A','Centro especializado en pesas y cardio','https://fitnorte.com','06:00:00','22:00:00','Lunes a sábado','Gimnasio',127,'activo',''),(2,'Vital Gym','info@vitalgym.co','3112345678','Vital09B','Zona de entrenamiento funcional y boxeo','https://vitalgym.co','07:00:00','21:00:00','Todos los días','Centro integral',100,'activo',''),(3,'PowerFit Central','power@fitcentral.com','3009876543','PowerX7C','Centro premium con spa incluido','https://fitcentral.com','05:30:00','22:30:00','Lunes a domingo','Spa y gym',127,'activo',''),(4,'Athletic Zone','contacto@athleticzone.com','3123456789','Zone88D','Deporte, fuerza y artes marciales','https://athleticzone.com','06:00:00','20:00:00','Lunes a viernes','Multideporte',120,'activo',''),(5,'Sport House','info@sporthouse.com','3011122233','Sport10E','Centro para entrenamiento familiar','https://sporthouse.com','07:00:00','21:00:00','Todos los días','Familiar',90,'activo',''),(6,'Olimpo Fit','olimpo@fit.com','3120001234','Olimp9F','Gimnasio con zona de crossfit','https://olimpofit.com','06:30:00','22:00:00','Lunes a sábado','Crossfit',127,'activo',''),(7,'Body Training','contacto@bodytrain.com','3105566778','BodyX12','Centro con pesas y cardio','https://bodytraining.com','05:45:00','21:00:00','Lunes a viernes','Gimnasio',127,'activo',''),(8,'Fitness Xtreme','fx@correo.com','3106789098','XtremE1A','Centro especializado en atletas','https://fitxtreme.com','06:00:00','22:00:00','Todos los días','Avanzado',127,'activo',''),(9,'Wellness Park','info@wellness.com','3003344556','Welln3ss','Zona verde y relajación','https://wellnesspark.com','07:00:00','19:00:00','Lunes a viernes','Salud integral',80,'activo',''),(10,'Gimnasio Central','contacto@centralgym.com','3112233445','CentrAl1','Ubicado en el centro de la ciudad','https://centralgym.com','05:00:00','23:00:00','Lunes a domingo','Gimnasio',127,'activo',''),(11,'Actívate Ya','activateya@gym.com','3120004567','Activa7X','Entrenamiento funcional grupal','https://activateya.com','06:30:00','20:30:00','Lunes a sábado','Funcional',110,'activo',''),(12,'Salud Total','salud@gym.com','3201234567','Salud9T','Para todas las edades','https://saludtotal.com','06:00:00','21:00:00','Todos los días','General',100,'activo',''),(13,'StrongFit','strongfit@correo.com','3009998888','Strong01','Fuerza extrema y pesas','https://strongfit.com','07:00:00','22:00:00','Lunes a sábado','Fuerza',90,'activo',''),(14,'Gym Elite','elite@fit.com','3011231234','Elite8X9','Gimnasio con entrenadores personales','https://gymelite.com','06:00:00','21:00:00','Lunes a viernes','Personalizado',70,'activo',''),(15,'Urban Training','urban@correo.com','3209988776','UrbanT1','Estilo libre y parkour','https://urbantraining.com','05:30:00','20:00:00','Lunes a sábado','Libre',60,'activo',''),(16,'Reto Activo','retoactivo@correo.com','3003332211','RetoA10','Centro para metas personales','https://retoactivo.com','06:00:00','20:00:00','Lunes a sábado','Personalizado',95,'activo',''),(17,'Zen Gym','zengym@correo.com','3005554433','ZenG1M1','Enfoque en mente y cuerpo','https://zengym.com','08:00:00','18:00:00','Lunes a viernes','Yoga y pilates',85,'activo',''),(18,'Fuerza Pro','fuerzapro@correo.com','3201113344','FuerzA2','Alta competencia','https://fuerzapro.com','06:00:00','22:00:00','Todos los días','Competitivo',127,'activo',''),(19,'Bienestar Fit','bienestar@fit.com','3010099887','BienF7T','Para personas mayores','https://bienestarfit.com','07:00:00','20:00:00','Lunes a viernes','Senior',70,'activo',''),(20,'Zona Activa','zonaactiva@cd.com','3200000019','Zona123C','Entrenamiento general con piscina','https://zonaactiva.com','06:00:00','21:00:00','Lunes a domingo','Multideporte',127,'activo','');
/*!40000 ALTER TABLE `centro_deportivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodos`
--

DROP TABLE IF EXISTS `metodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodos` (
  `id_m` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `detalles` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_m`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos`
--

LOCK TABLES `metodos` WRITE;
/*!40000 ALTER TABLE `metodos` DISABLE KEYS */;
INSERT INTO `metodos` VALUES (1,'Efectivo','Pago en efectivo en sede'),(2,'Tarjeta de crédito','Visa/MasterCard aceptadas'),(3,'Tarjeta débito','Débito automático desde cuenta'),(4,'Transferencia','Transferencia bancaria electrónica'),(5,'Nequi','Pago a través de Nequi'),(6,'Daviplata','Pago móvil desde Daviplata'),(7,'PSE','Pago seguro en línea'),(8,'Pago en línea','Pasarela de pagos interna'),(9,'QR Bancolombia','Escaneo de código QR'),(10,'PayPal','Pago con cuenta internacional'),(11,'Sistecrédito','Crédito directo con validación'),(12,'Crédito directo','Acordado con el centro'),(13,'Cupo empresarial','Cupo otorgado por empresa'),(14,'Bono regalo','Tarjeta prepago de cortesía'),(15,'Recibo físico','Pago por recibo en tienda'),(16,'Tarjeta prepago','Tarjeta con saldo recargable'),(17,'App bancaria','Pago desde aplicación bancaria'),(18,'Consignación','Pago físico en banco'),(19,'RappiPay','Aplicación RappiPay'),(20,'Débito automático','Débito programado mensual');
/*!40000 ALTER TABLE `metodos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_pg` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `hora` time NOT NULL,
  `monto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pg`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'2025-05-01 08:23:45','08:23:45',60000),(2,'2025-05-05 10:15:00','10:15:00',80000),(3,'2025-05-10 14:30:00','14:30:00',95000),(4,'2025-05-11 17:00:00','17:00:00',120000),(5,'2025-05-12 08:50:00','08:50:00',105000),(6,'2025-05-14 09:00:00','09:00:00',73000),(7,'2025-05-16 13:10:00','13:10:00',115000),(8,'2025-05-18 12:45:00','12:45:00',67000),(9,'2025-05-20 16:00:00','16:00:00',98000),(10,'2025-05-22 10:30:00','10:30:00',88000),(11,'2025-05-23 15:15:00','15:15:00',91000),(12,'2025-05-24 11:20:00','11:20:00',101000),(13,'2025-05-26 14:00:00','14:00:00',76000),(14,'2025-05-27 08:00:00','08:00:00',95000),(15,'2025-05-28 09:30:00','09:30:00',89000),(16,'2025-05-30 17:45:00','17:45:00',122000),(17,'2025-06-01 12:10:00','12:10:00',113000),(18,'2025-06-02 10:40:00','10:40:00',98000),(19,'2025-06-04 15:25:00','15:25:00',107000),(20,'2025-06-05 11:55:00','11:55:00',97000);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `accion` enum('SELECT','CREATE','INSERT','UPDATE','DELATE') DEFAULT NULL,
  `tabla` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (1,'SELECT','usuario'),(2,'CREATE','planes'),(3,'INSERT','actividad'),(4,'UPDATE','usuario'),(5,'DELATE','sede'),(6,'SELECT','planes'),(7,'INSERT','pagos'),(8,'UPDATE','actividad'),(9,'DELATE','planes'),(10,'CREATE','pagos'),(11,'SELECT','actividad'),(12,'DELATE','usuario'),(13,'UPDATE','planes'),(14,'INSERT','sede'),(15,'SELECT','pagos'),(16,'CREATE','usuario'),(17,'DELATE','actividad'),(18,'INSERT','planes'),(19,'UPDATE','sede'),(20,'SELECT','sede');
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'Plan Básico','Acceso general al gimnasio sin clases dirigidas','01:00:00',50000),(2,'Plan Full','Incluye clases dirigidas y asesorías personalizadas','03:00:00',120000),(3,'Plan Familiar','Dos o más miembros del mismo hogar','02:30:00',150000),(4,'Plan Estudiante','Descuento para universitarios','01:30:00',40000),(5,'Plan Adulto Mayor','Enfocado en salud y movilidad','01:00:00',35000),(6,'Plan Funcional','Acceso a clases funcionales','01:45:00',70000),(7,'Plan Spa','Incluye uso del spa y masajes','02:00:00',130000),(8,'Plan Dietético','Incluye asesoría nutricional','01:30:00',60000),(9,'Plan Crossfit','Rutinas de alta intensidad','02:00:00',100000),(10,'Plan Libre','Sin horarios fijos','04:00:00',160000),(11,'Plan Ejecutivo','Diseñado para ejecutivos','01:30:00',90000),(12,'Plan Fin de Semana','Acceso solo sábados y domingos','03:00:00',50000),(13,'Plan Express','Entrenamiento rápido','00:45:00',30000),(14,'Plan Corporativo','Para empresas, mínimo 5 personas','02:30:00',180000),(15,'Plan Premium','Todos los servicios sin límite','03:30:00',200000),(16,'Plan Zen','Yoga, pilates y meditación','02:00:00',80000),(17,'Plan Competitivo','Entrenamiento de alto rendimiento','03:00:00',140000),(18,'Plan Senior','Actividades suaves y monitoreo médico','01:15:00',50000),(19,'Plan Avanzado','Entrenamiento intensivo','03:30:00',160000),(20,'Plan Corporativo','Acceso para empresas, mínimo 5 empleados','02:30:00',180000);
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `contraseña` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador','ClaveA1'),(2,'Usuario','ClaveU2'),(3,'Instructor','PassI3'),(4,'Recepcionista','PassR4'),(5,'Gerente','Gerent5'),(6,'Socio','SocioX6'),(7,'Supervisor','Superv7'),(8,'Técnico','Tecnic8'),(9,'Coordinador','Coordi9'),(10,'Asistente','Asis10X'),(11,'Invitado','Invi11Y'),(12,'Contador','Conta12'),(13,'Analista','Anali13'),(14,'Gestor','GestorX'),(15,'Operador','Operad1'),(16,'Limpieza','Limpie2'),(17,'Cajero','Cajero3'),(18,'Consultor','Consul4'),(19,'Seguridad','Seguri5'),(20,'Desarrollador','DevsX20');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_permiso`
--

DROP TABLE IF EXISTS `rol_permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol_permiso` (
  `id_rol_permiso` int(11) NOT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_permiso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rol_permiso`),
  KEY `id_rol` (`id_rol`),
  KEY `id_permiso` (`id_permiso`),
  CONSTRAINT `id_permiso` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`),
  CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_permiso`
--

LOCK TABLES `rol_permiso` WRITE;
/*!40000 ALTER TABLE `rol_permiso` DISABLE KEYS */;
INSERT INTO `rol_permiso` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `rol_permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_usuario`
--

DROP TABLE IF EXISTS `rol_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol_usuario` (
  `id_rol_usuario` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `id_ud` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rol_usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_r` (`id_rol`),
  KEY `id_ud` (`id_ud`),
  CONSTRAINT `id_r` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `id_ud` FOREIGN KEY (`id_ud`) REFERENCES `usuario_deportivo` (`id_ud`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_u`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_usuario`
--

LOCK TABLES `rol_usuario` WRITE;
/*!40000 ALTER TABLE `rol_usuario` DISABLE KEYS */;
INSERT INTO `rol_usuario` VALUES (1,1,2,NULL),(2,2,3,NULL),(3,3,4,NULL),(4,4,5,NULL),(5,5,6,NULL),(6,6,7,NULL),(7,7,8,NULL),(8,8,9,NULL),(9,9,10,NULL),(10,10,11,NULL),(11,11,12,NULL),(12,12,13,NULL),(13,13,14,NULL),(14,14,15,NULL),(15,15,16,NULL),(16,16,17,NULL),(17,17,18,NULL),(18,18,19,NULL),(19,19,20,NULL),(20,20,1,NULL);
/*!40000 ALTER TABLE `rol_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede` (
  `id_s` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `capacidad` tinyint(4) DEFAULT NULL,
  `estado` enum('activo','inactivo','mantenimiento') NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id_s`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'Sede Norte','sedenorte@fitnorte.com','3101234567','Calle 100 #25-50','Gimnasio',120,'activo'),(2,'Sede Sur','sedesur@vitalgym.co','3119876543','Carrera 45 #10-20','Centro deportivo',90,'activo'),(3,'Sede Centro','centro@sporthouse.com','3011122233','Av. Caracas #13-30','Familiar',85,'activo'),(4,'Sede Occidente','occidente@athleticzone.com','3104445566','Calle 80 #20-10','Multideporte',100,'activo'),(5,'Sede Bosque','bosque@wellnesspark.com','3006677889','Calle 200 #30-05','Salud integral',75,'activo'),(6,'Sede Central','central@fitxtreme.com','3201111111','Cra 20 #12-01','Avanzado',127,'activo'),(7,'Sede Este','este@gym.com','3001231231','Calle 10 #15-45','Funcional',110,'activo'),(8,'Sede Alta','alta@correo.com','3013322110','Cra 55 #22-34','General',100,'activo'),(9,'Sede Colina','colina@correo.com','3000001112','Av. 9 #10-09','Fuerza',90,'activo'),(10,'Sede Élite','elite@correo.com','3100099887','Cra 7 #77-21','Personalizado',70,'activo'),(11,'Sede Urbana','urbana@gym.com','3202233445','Calle 80 #45-33','Libre',60,'activo'),(12,'Sede Saludable','saludable@correo.com','3112223334','Transv 24 #44-88','General',95,'activo'),(13,'Sede Nueva','nueva@correo.com','3101010101','Calle 110 #30-50','Competitivo',127,'activo'),(14,'Sede Campestre','campestre@correo.com','3011112223','Cra 18 #8-40','Senior',70,'activo'),(15,'Sede Sabana','sabana@correo.com','3200002221','Calle 93 #15-11','Multideporte',127,'activo'),(16,'Sede Reto Activo','reto@activo.com','3003332211','Cra 45 #89-11','Personalizado',95,'activo'),(17,'Sede Zen','zen@correo.com','3005554433','Transv 10 #45-78','Yoga y pilates',85,'activo'),(18,'Sede Fuerza Pro','fp@correo.com','3201113344','Diagonal 22 #10-40','Competitivo',127,'activo'),(19,'Sede Bienestar','bienestar@correo.com','3010099887','Cra 50 #20-90','Senior',70,'activo'),(20,'Sede Laureles','laureles@sportlife.com','3019988776','Carrera 80 #34-23','Gimnasio',85,'activo');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_u` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  PRIMARY KEY (`id_u`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Carlos','Ramírez','carlos.ramirez@gmail.com','Clave123'),(2,'Ana','Pérez','ana.perez@hotmail.com','Passw0rd'),(3,'Luis','Martínez','luis.martinez@yahoo.com','Contr4se'),(4,'María','González','maria.gonzalez@outlook.com','Segur0X'),(5,'Jorge','López','jorge.lopez@gmail.com','Xclave91'),(6,'Lucía','Torres','lucia.torres@gmail.com','PasW1to'),(7,'Pedro','Rojas','pedro.rojas@hotmail.com','ClaveZ3'),(8,'Diana','Moreno','diana.moreno@yahoo.com','Asegura7'),(9,'Mateo','Castro','mateo.castro@gmail.com','Pas123Go'),(10,'Valeria','Vargas','valeria.vargas@live.com','Acceso4X'),(11,'Daniel','Navarro','daniel.navarro@gmail.com','Contr8NA'),(12,'Laura','Cruz','laura.cruz@outlook.com','Entra91C'),(13,'Camilo','Ortiz','camilo.ortiz@gmail.com','MiPasW7'),(14,'Sara','Luna','sara.luna@hotmail.com','LunaX12'),(15,'Andrés','Ruiz','andres.ruiz@gmail.com','Cl4veXx'),(16,'Juliana','Salazar','juliana.salazar@yahoo.com','EntrY44'),(17,'Felipe','Gómez','felipe.gomez@gmail.com','Pasw0rT'),(18,'Isabella','Ramírez','isabella.ramirez@hotmail.com','S3gurOZ'),(19,'Esteban','Vera','esteban.vera@outlook.com','StartP1'),(20,'Daniela','Mendoza','daniela.mendoza@gmail.com','MiClav9');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_deportivo`
--

DROP TABLE IF EXISTS `usuario_deportivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_deportivo` (
  `id_ud` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ud`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_deportivo`
--

LOCK TABLES `usuario_deportivo` WRITE;
/*!40000 ALTER TABLE `usuario_deportivo` DISABLE KEYS */;
INSERT INTO `usuario_deportivo` VALUES (1,'Sofía','Mejía','3101234567','sofia.mejia@gmail.com','Passw0rd1'),(2,'Andrés','Cano','3119876543','andres.cano@hotmail.com','Cano2024'),(3,'Valentina','Zapata','3124567890','valentina.zapata@yahoo.com','ValenX09'),(4,'Mateo','Ríos','3136547891','mateo.rios@outlook.com','Rios_22X'),(5,'Camila','Gómez','3145678901','camila.gomez@gmail.com','Camila8A');
/*!40000 ALTER TABLE `usuario_deportivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoraciones`
--

DROP TABLE IF EXISTS `valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valoraciones` (
  `id_v` int(11) NOT NULL AUTO_INCREMENT,
  `puntuacion` decimal(10,1) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_u` int(11) NOT NULL,
  `id_c` int(11) NOT NULL,
  PRIMARY KEY (`id_v`),
  KEY `centro_deportivo` (`id_c`),
  KEY `usuario` (`id_u`),
  CONSTRAINT `centro_deportivo` FOREIGN KEY (`id_c`) REFERENCES `centro_deportivo` (`id_c`),
  CONSTRAINT `usuario` FOREIGN KEY (`id_u`) REFERENCES `usuario` (`id_u`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoraciones`
--

LOCK TABLES `valoraciones` WRITE;
/*!40000 ALTER TABLE `valoraciones` DISABLE KEYS */;
INSERT INTO `valoraciones` VALUES (1,4.5,'Excelente atención y equipos modernos','10:00:00',1,1),(2,3.8,'Podrían mejorar el horario de clases','11:30:00',2,2),(3,5.0,'Muy buena experiencia','08:00:00',3,3),(4,4.2,'Ambiente agradable','17:00:00',4,4),(5,2.9,'Mucha espera en las máquinas','19:00:00',5,5),(6,4.8,'Personal muy atento','12:00:00',6,6),(7,3.5,'El lugar es pequeño pero funcional','14:30:00',7,7),(8,4.0,'Clases variadas y buenas','09:15:00',8,8),(9,4.9,'Me encantó el spinning','06:45:00',9,9),(10,3.2,'Estacionamiento insuficiente','18:20:00',10,10),(11,4.6,'Precios justos y excelente atención','13:10:00',11,11),(12,3.7,'Poca ventilación','15:50:00',12,12),(13,4.1,'Buena asesoría nutricional','16:30:00',13,13),(14,4.4,'Siempre limpio','07:40:00',14,14),(15,2.5,'Mucho ruido en las clases','20:10:00',15,15),(16,5.0,'Lo mejor en la ciudad','06:00:00',16,16),(17,3.9,'Equipos algo viejos pero sirven','08:30:00',17,17),(18,4.3,'Amplio y cómodo','11:20:00',18,18),(19,3.6,'Poca variedad en máquinas','17:45:00',19,19),(20,4.7,'Recomiendo totalmente','10:10:00',20,20);
/*!40000 ALTER TABLE `valoraciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-10 23:12:22
