-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: agenciaviaje
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `descuentos`
--

DROP TABLE IF EXISTS `descuentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descuentos` (
  `idDescuento` int NOT NULL AUTO_INCREMENT,
  `promocion` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `precio` varchar(200) NOT NULL,
  PRIMARY KEY (`idDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descuentos`
--

LOCK TABLES `descuentos` WRITE;
/*!40000 ALTER TABLE `descuentos` DISABLE KEYS */;
INSERT INTO `descuentos` VALUES (1,'10% de decuento','Viaje Canada','20 de marzo del 2021','2,500'),(2,'5% de decuento','Viaje Inglaterra','20 de marzo del 2022','7,500'),(3,'15% de decuento','Viaje Francia','20 de septiembre del 2021','6,500'),(4,'25% de decuento','Viaje Italia','01 de diciembre del 2021','12,500');
/*!40000 ALTER TABLE `descuentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimoniales`
--

DROP TABLE IF EXISTS `testimoniales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimoniales` (
  `idTestimoniales` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `mensaje` varchar(5000) NOT NULL,
  PRIMARY KEY (`idTestimoniales`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimoniales`
--

LOCK TABLES `testimoniales` WRITE;
/*!40000 ALTER TABLE `testimoniales` DISABLE KEYS */;
INSERT INTO `testimoniales` VALUES (4,'Kevin','kevinesquivelrojas@hotmail.com','Las mejores vacaciones'),(5,'Hanny','Hanny@gmail.com','Muy buena atención, me encanto la forma en que sirven los alimentos.'),(6,'Aracely','ara040678@hotmail.com','Maravillosas vacaciones en familia'),(7,'Jimmy','upoli123@gmail.com','Excelente vacaciones, las mejores de mi vida... '),(8,'Jimmy','upoli123@gmail.com','Excelente vacaciones, las mejores de mi vida... '),(9,'Jimmy','kevinesquivelrojas@hotmail.com','jyjyjujju'),(10,'ewew','upoli123@gmail.com','jttku'),(11,'ddsds','ara040678@hotmail.com','nhhnhhnhnhnhnhnhnhn'),(12,'kevin','kevinesquivelrojas@hotmail.com','fdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),(13,'Aracely','ara040678@hotmail.com','1233445446656');
/*!40000 ALTER TABLE `testimoniales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes` (
  `idViaje` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `fecha_ida` date DEFAULT NULL,
  `fecha_vuelta` date DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `disponibles` int DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idViaje`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (1,'Italia',5000,'2021-06-24','2021-06-30','roma','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dignissim erat tellus, eget faucibus orci facilisis eget. Vivamus eget laoreet lectus. Duis egestas metus sit amet scelerisque tempor. Etiam suscipit interdum nisi, sed hendrerit libero condimentum in. Quisque commodo tincidunt felis, id vestibulum massa tincidunt id. Cras id dui at odio varius congue ac maximus mauris. Nullam et est mauris. Vivamus ut augue rhoncus, posuere velit sed, fermentum orci. Aliquam libero odio, lacinia sed dui quis, mattis sagittis neque. Nam ex est, auctor et hendrerit at, laoreet at ipsum.\n\nNunc sem quam, semper non vehicula non, dapibus sed felis. Nulla blandit lacinia mauris, eu feugiat libero pulvinar in. In hac habitasse platea dictumst. Donec sodales ipsum lorem, sit amet suscipit neque pellentesque at. Duis sit amet vestibulum leo. Quisque non ex eget odio ornare blandit et a nisi. Aliquam diam massa, viverra sed felis non, semper viverra nibh.\n\nSed eu gravida lectus. Nulla interdum dapibus nisl et condimentum. Quisque convallis ante a diam sagittis, eu posuere quam pellentesque. Maecenas a metus neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pretium euismod lacinia. Nunc euismod, ligula non rhoncus semper, metus ipsum tristique nulla, ut finibus quam tortor non elit. Sed sed lectus at magna fermentum malesuada. Morbi ac auctor sem, eget pellentesque dui. Vestibulum sollicitudin nisi sit amet urna luctus accumsan. Donec tellus risus, lacinia efficitur imperdiet sed, hendrerit a tortor.',32,'viaje-italia'),(3,'Canada',5000,'2021-07-24','2021-08-30','canada','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dignissim erat tellus, eget faucibus orci facilisis eget. Vivamus eget laoreet lectus. Duis egestas metus sit amet scelerisque tempor. Etiam suscipit interdum nisi, sed hendrerit libero condimentum in. Quisque commodo tincidunt felis, id vestibulum massa tincidunt id. Cras id dui at odio varius congue ac maximus mauris. Nullam et est mauris. Vivamus ut augue rhoncus, posuere velit sed, fermentum orci. Aliquam libero odio, lacinia sed dui quis, mattis sagittis neque. Nam ex est, auctor et hendrerit at, laoreet at ipsum.\n\nNunc sem quam, semper non vehicula non, dapibus sed felis. Nulla blandit lacinia mauris, eu feugiat libero pulvinar in. In hac habitasse platea dictumst. Donec sodales ipsum lorem, sit amet suscipit neque pellentesque at. Duis sit amet vestibulum leo. Quisque non ex eget odio ornare blandit et a nisi. Aliquam diam massa, viverra sed felis non, semper viverra nibh.\n\nSed eu gravida lectus. Nulla interdum dapibus nisl et condimentum. Quisque convallis ante a diam sagittis, eu posuere quam pellentesque. Maecenas a metus neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pretium euismod lacinia. Nunc euismod, ligula non rhoncus semper, metus ipsum tristique nulla, ut finibus quam tortor non elit. Sed sed lectus at magna fermentum malesuada. Morbi ac auctor sem, eget pellentesque dui. Vestibulum sollicitudin nisi sit amet urna luctus accumsan. Donec tellus risus, lacinia efficitur imperdiet sed, hendrerit a tortor.',25,'viaje-canada'),(4,'Greacia',4000,'2021-08-24','2021-09-30','grecia','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dignissim erat tellus, eget faucibus orci facilisis eget. Vivamus eget laoreet lectus. Duis egestas metus sit amet scelerisque tempor. Etiam suscipit interdum nisi, sed hendrerit libero condimentum in. Quisque commodo tincidunt felis, id vestibulum massa tincidunt id. Cras id dui at odio varius congue ac maximus mauris. Nullam et est mauris. Vivamus ut augue rhoncus, posuere velit sed, fermentum orci. Aliquam libero odio, lacinia sed dui quis, mattis sagittis neque. Nam ex est, auctor et hendrerit at, laoreet at ipsum.\n\nNunc sem quam, semper non vehicula non, dapibus sed felis. Nulla blandit lacinia mauris, eu feugiat libero pulvinar in. In hac habitasse platea dictumst. Donec sodales ipsum lorem, sit amet suscipit neque pellentesque at. Duis sit amet vestibulum leo. Quisque non ex eget odio ornare blandit et a nisi. Aliquam diam massa, viverra sed felis non, semper viverra nibh.\n\nSed eu gravida lectus. Nulla interdum dapibus nisl et condimentum. Quisque convallis ante a diam sagittis, eu posuere quam pellentesque. Maecenas a metus neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pretium euismod lacinia. Nunc euismod, ligula non rhoncus semper, metus ipsum tristique nulla, ut finibus quam tortor non elit. Sed sed lectus at magna fermentum malesuada. Morbi ac auctor sem, eget pellentesque dui. Vestibulum sollicitudin nisi sit amet urna luctus accumsan. Donec tellus risus, lacinia efficitur imperdiet sed, hendrerit a tortor.',45,'viaje-grecia'),(5,'Inglaterra',4500,'2021-09-24','2021-09-30','londres','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dignissim erat tellus, eget faucibus orci facilisis eget. Vivamus eget laoreet lectus. Duis egestas metus sit amet scelerisque tempor. Etiam suscipit interdum nisi, sed hendrerit libero condimentum in. Quisque commodo tincidunt felis, id vestibulum massa tincidunt id. Cras id dui at odio varius congue ac maximus mauris. Nullam et est mauris. Vivamus ut augue rhoncus, posuere velit sed, fermentum orci. Aliquam libero odio, lacinia sed dui quis, mattis sagittis neque. Nam ex est, auctor et hendrerit at, laoreet at ipsum.\n\nNunc sem quam, semper non vehicula non, dapibus sed felis. Nulla blandit lacinia mauris, eu feugiat libero pulvinar in. In hac habitasse platea dictumst. Donec sodales ipsum lorem, sit amet suscipit neque pellentesque at. Duis sit amet vestibulum leo. Quisque non ex eget odio ornare blandit et a nisi. Aliquam diam massa, viverra sed felis non, semper viverra nibh.\n\nSed eu gravida lectus. Nulla interdum dapibus nisl et condimentum. Quisque convallis ante a diam sagittis, eu posuere quam pellentesque. Maecenas a metus neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pretium euismod lacinia. Nunc euismod, ligula non rhoncus semper, metus ipsum tristique nulla, ut finibus quam tortor non elit. Sed sed lectus at magna fermentum malesuada. Morbi ac auctor sem, eget pellentesque dui. Vestibulum sollicitudin nisi sit amet urna luctus accumsan. Donec tellus risus, lacinia efficitur imperdiet sed, hendrerit a tortor.',65,'viaje-inglaterra'),(6,'Rio de Janeiro',45000,'2021-10-24','2021-11-30','rio','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dignissim erat tellus, eget faucibus orci facilisis eget. Vivamus eget laoreet lectus. Duis egestas metus sit amet scelerisque tempor. Etiam suscipit interdum nisi, sed hendrerit libero condimentum in. Quisque commodo tincidunt felis, id vestibulum massa tincidunt id. Cras id dui at odio varius congue ac maximus mauris. Nullam et est mauris. Vivamus ut augue rhoncus, posuere velit sed, fermentum orci. Aliquam libero odio, lacinia sed dui quis, mattis sagittis neque. Nam ex est, auctor et hendrerit at, laoreet at ipsum.\n\nNunc sem quam, semper non vehicula non, dapibus sed felis. Nulla blandit lacinia mauris, eu feugiat libero pulvinar in. In hac habitasse platea dictumst. Donec sodales ipsum lorem, sit amet suscipit neque pellentesque at. Duis sit amet vestibulum leo. Quisque non ex eget odio ornare blandit et a nisi. Aliquam diam massa, viverra sed felis non, semper viverra nibh.\n\nSed eu gravida lectus. Nulla interdum dapibus nisl et condimentum. Quisque convallis ante a diam sagittis, eu posuere quam pellentesque. Maecenas a metus neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pretium euismod lacinia. Nunc euismod, ligula non rhoncus semper, metus ipsum tristique nulla, ut finibus quam tortor non elit. Sed sed lectus at magna fermentum malesuada. Morbi ac auctor sem, eget pellentesque dui. Vestibulum sollicitudin nisi sit amet urna luctus accumsan. Donec tellus risus, lacinia efficitur imperdiet sed, hendrerit a tortor.',23,'viaje-rio-de-janeiro'),(7,'Francia',55000,'2021-10-24','2021-12-30','paris','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dignissim erat tellus, eget faucibus orci facilisis eget. Vivamus eget laoreet lectus. Duis egestas metus sit amet scelerisque tempor. Etiam suscipit interdum nisi, sed hendrerit libero condimentum in. Quisque commodo tincidunt felis, id vestibulum massa tincidunt id. Cras id dui at odio varius congue ac maximus mauris. Nullam et est mauris. Vivamus ut augue rhoncus, posuere velit sed, fermentum orci. Aliquam libero odio, lacinia sed dui quis, mattis sagittis neque. Nam ex est, auctor et hendrerit at, laoreet at ipsum.\n\nNunc sem quam, semper non vehicula non, dapibus sed felis. Nulla blandit lacinia mauris, eu feugiat libero pulvinar in. In hac habitasse platea dictumst. Donec sodales ipsum lorem, sit amet suscipit neque pellentesque at. Duis sit amet vestibulum leo. Quisque non ex eget odio ornare blandit et a nisi. Aliquam diam massa, viverra sed felis non, semper viverra nibh.\n\nSed eu gravida lectus. Nulla interdum dapibus nisl et condimentum. Quisque convallis ante a diam sagittis, eu posuere quam pellentesque. Maecenas a metus neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pretium euismod lacinia. Nunc euismod, ligula non rhoncus semper, metus ipsum tristique nulla, ut finibus quam tortor non elit. Sed sed lectus at magna fermentum malesuada. Morbi ac auctor sem, eget pellentesque dui. Vestibulum sollicitudin nisi sit amet urna luctus accumsan. Donec tellus risus, lacinia efficitur imperdiet sed, hendrerit a tortor.',50,'viaje-francia');
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-04 17:53:20
