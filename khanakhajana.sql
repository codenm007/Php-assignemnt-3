-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: techblog
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admindate` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `added_by` varchar(100) NOT NULL DEFAULT 'HImself',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (10,'2022-04-09','Nilanjan Majumdar','codenm007','password','HImself'),(11,'2022-04-09','Nilanjan Majumdar','codenm008','','HImself'),(12,'2022-04-09','Nilanjan Majumdar','codenm009','password','HImself'),(13,'2022-04-09','Nilanjan Majumdar','codenm002','pass123','HImself'),(15,'2022-04-09','Satyam Kumar','satyam123','password','HImself'),(16,'2022-04-09','Sabana Majumdar','newuser1','password','HImself');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catdate` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,'2022-04-10','LUNCH','Nilanjan Majumdar'),(8,'2022-04-10','DINNER','Nilanjan Majumdar'),(9,'2022-04-10','DESSERT','Nilanjan Majumdar'),(10,'2022-04-10','NORTH INDIAN','Nilanjan Majumdar'),(11,'2022-04-10','KOLKATA SPL','Nilanjan Majumdar');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commentdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(5000) NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved_by` varchar(255) NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (9,'2019-10-24','sinanu1998@gmail.com','POST-1 COMMENT','approved','KENNY',6),(10,'2019-10-24','ryangonzo@gmail.com','POST-2 COMMENT\r\n','approved','KENNY',7),(11,'2019-10-24','gonsalveskenny@gmail.com','POST-3 COMMENT','unapprove','ANUBHAV',8),(12,'2019-10-24','aavezahmed@gmail.com','POST-4 COMMENT','unapprove','ANUBHAV',9),(13,'2019-10-24','sinanu1998@gmail.com','POST-5 COMMENT','unapprove','ANUBHAV',10),(14,'2019-10-24','aavez@gmail.com','hi','approved','RYAN',6);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contactdate` date NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (4,'2019-10-24','AAVEZ AHMED ','aavezahmed@gmail.com','7218450969','Hi teamalphacode, I want to publish one article on your Blog');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postDate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (8,'2019-10-24','Raspberry Pi 4 Model B','Nano CPU','ANUBHAV','raspberry-pi-4-board-SOURCE-Raspberrypi_org.jpg','THE RASPBERRY PI is a computer the size of a credit card that is aimed at do-it-yourselfers. The cheap and tiny device costs less than you\'d pay for a few drinks in San Francisco, so it\'s already proven to be a hit among hobbyists who want to add light computing or internet connectivity to their projects. But the newest version of this little board has some additional features that make it capable enough to possibly replace your desktop PC.\r\n\r\nWith the Raspberry Pi 4, the one-size-fits all approach of previous releases is gone. It\'s available with either 1, 2, or 4 gigabytes of RAM. (This is the first time it\'s been possible to get a Pi with more than 1 GB of memory.) The extra RAM opens a new world of functionality for the Pi, including running desktop softwareâ€”but the Raspberry Pi 4 is still the same great little DIY machine.'),(9,'2019-10-24','Is the NVIDIA GTX 1050 good for gaming?','Gaming','RYAN','5711723_sd.jpg','NVIDIA\'s 10-series GPUs are a serious step up from what came before it. It\'s not just a case of \"oh, new graphics card better than old one, more at 11.\" The Pascal cards are a true generational leap forward at both the top and bottom end of the range.\r\n\r\nBut while it\'s easy to get wide-eyed for the GTX 1080 Ti or the $3,000 Titan V, we shouldn\'t forget the mass market cards at the lower end of the price bracket.\r\n\r\nThe new entry-level for gaming from NVIDIA is the GTX 1050, and the slightly beefed up 1050 Ti. Is it worth your time? That depends on what you want to do with it.'),(10,'2019-10-24','ARDUINO UNO','Nano CPU\'s','ANUBHAV','0J7808.1200.jpg','The Arduino Uno is an open-source microcontroller board based on the Microchip ATmega328P microcontroller and developed by Arduino.cc. The board is equipped with sets of digital and analog input/output (I/O) pins that may be interfaced to various expansion boards (shields) and other circuits.[1] The board has 14 Digital pins, 6 Analog pins, and programmable with the Arduino IDE (Integrated Development Environment) via a type B USB cable. It can be powered by the USB cable or by an external 9-volt battery, though it accepts voltages between 7 and 20 volts. It is also similar to the Arduino Nano and Leonardo. The hardware reference design is distributed under a Creative Commons Attribution Share-Alike 2.5 license and is available on the Arduino website. Layout and production files for some versions of the hardware are also available.\r\n\r\nThe word \"uno\" means \"one\" in Italian and was chosen to mark the initial release of the Arduino Software. The Uno board is the first in a series of USB-based Arduino boards, and it and version 1.0 of the Arduino IDE were the reference versions of Arduino, now evolved to newer releases. The ATmega328 on the board comes preprogrammed with a bootloader that allows uploading new code to it without the use of an external hardware programmer.'),(11,'2022-04-08','Thandi Coolfi','Gaming','ANUBHAV','0n0vnkm8_kulfi_625x300_13_April_20-min.jpeg','eafsa\r\ndf/s\r\nd/f \'\r\n\'ade ft\r\n\'\'\r\nsea \r\n\'afe\'\r\n\'fsd\'\r\nf \'d\r\ns\r\n\' \'\r\nqwrae\'\'\r\n'),(13,'2022-04-09','Butter Chicken','Gaming','Sabana Majumdar','Butter-Chicken-IMAGE-27.jpeg','lkdlalf'),(14,'2022-04-10','Indian Butter Chicken','NORTH INDIAN','Nilanjan Majumdar','Butter-Chicken-IMAGE-27.jpeg','What Is Butter Chicken?\r\nButter chicken is prepared with marinated chicken that\'s first grilled and then served in a rich gravy (a.k.a. curry) made with tomato, butter, and a special spice blend as a base.\r\n\r\nUnlike most Indian curries where the preparation of the base starts with a blend of onion and a ginger garlic paste cooked in oil, butter chicken uses tomato as a base and is cooked in butter, giving it a slightly sweet flavor. Cashews and almonds add to the sweetness and richness of the dish.\r\n\r\nThe History of Butter Chicken\r\nThe roots of butter chicken are only as recent as the 1950s, when it was developed accidentally by the chef of famous restaurant Moti Mahal in Delhi, the capital of India. For chef Kundan Lal Gujral, it was a common practice to throw in butter, tomatoes, and leftover tandoori chicken into a pot to make use of the leftovers.\r\n\r\nLittle did he know that this dish would become their best seller and put them on the map. Now the recipe is adapted by restaurants across the world, though it\'s really a “special occasion” dish in Indian homes.'),(15,'2022-04-10','Easy Kulfi Recipe (With Khoya)','DESSERT','Nilanjan Majumdar','0n0vnkm8_kulfi_625x300_13_April_20.jpeg','How to make Kulfi Recipe with Khoya\r\nPreparation\r\n\r\n1. In a wide pan or kadai, heat milk on a sim or low flame for at least about 18 to 20 mins. The milk will reduce and thicken in this period of time.\r\n\r\nheat milk for making kulfi recipe\r\n\r\n2. Dissolve the rice flour or corn starch in 3 tbsp milk. Mix very well. Keep aside. I prefer rice flour for thickening in kulfi instead of corn starch as it gives a creamy texture.\r\n\r\nadd rice flour to milk for making kulfi\r\n3. Grate the khoya or crumble it very well. There should be no large pieces or lumps. Powder the pistachios and almonds to a semi fine consistency in a dry grinder or in a mortar-pestle. keep both of them aside.\r\n\r\nadding khoya for making kulfi recipe\r\n\r\n4. After 18 or 20 mins, add sugar to the milk and stir well. Also keep on scraping the milk solids from the sides and keep them adding to the simmering milk.\r\n\r\nadding sugar for making kulfi recipe\r\n5. When the sugar has dissolved and after 3 to 4 mins, add the rice flour paste or corn starch paste. Keep on stirring while adding the rice flour paste, so that no lumps are formed. You have to keep on stirring for some minutes till the milk thickens. In case you see small lumps, then just break them with the spatula or spoon.\r\n\r\n\r\nstir the milk kulfi mixture\r\n6. After 4 to 5 mins, when the mixture has thickened, add the grated mawa/khoya, powdered almonds + pistachios and cardamom powder.\r\n\r\nadd khoya dry fruits to kulfi mixture\r\n\r\n7. Stir very well and just simmer for a minute or two on a low flame. Keep on stirring so that the khoya/evaporated milk is distributed evenly.\r\n\r\nstir kulfi mixture\r\n8. Switch off the flame. Add the kewra water or rose water and crushed saffron.\r\n\r\nadding saffron to kulfi recipe\r\n\r\n9. Let the mixture cool. Then pour the mixture in kulfi moulds or in serving bowls or in a tray or in shot glasses. Scrape the milk solids also from the sides and add them to the glass.\r\n\r\ncool the kulfi\r\n10. Cover with lids or aluminum foil and keep it in the freezer till it sets.\r\n\r\nkeep kulfi in fridge\r\n11. Once the kulfi is well set, unmould the kulfi sliding a butter knife at the edges. You can also rub the mould or glasses between your palms or dip in some warm water and quickly remove them. Remove on a plate. Slice the kulfi and serve immediately. You can also serve kulfi directly in the serving bowls or glasses. You can also add it to falooda.\r\n\r\nkulfi recipe with khoya\r\n');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-09 23:56:50
