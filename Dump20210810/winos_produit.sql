-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: winos
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id_produit` mediumint NOT NULL AUTO_INCREMENT,
  `nom` char(55) NOT NULL,
  `cepage` char(55) DEFAULT NULL,
  `provenance` char(55) DEFAULT NULL,
  `millesime` mediumint NOT NULL,
  `descrip` char(200) DEFAULT NULL,
  `adress_photo` char(200) DEFAULT NULL,
  `tags_gout` mediumint DEFAULT NULL,
  `tags_accord` mediumint DEFAULT NULL,
  `categorie_vin` char(55) DEFAULT NULL,
  `couleur` tinyint(1) DEFAULT NULL,
  `bulles` tinyint(1) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `id_fournisseur` mediumint NOT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `tags_gout` (`tags_gout`),
  KEY `tags_accord` (`tags_accord`),
  KEY `id_fournisseur` (`id_fournisseur`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`tags_gout`) REFERENCES `tag_gout` (`id_gout`),
  CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`tags_accord`) REFERENCES `tag_accord` (`id_accord`),
  CONSTRAINT `produit_ibfk_3` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-10 14:25:59
