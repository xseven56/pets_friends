-- Adminer 4.8.1 MySQL 8.1.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `Genus_command`;
CREATE TABLE `Genus_command` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CommandId` int NOT NULL,
  `GenusId` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `Genus_command` (`Id`, `CommandId`, `GenusId`) VALUES
(1,	6,	1);

DROP TABLE IF EXISTS `commands`;
CREATE TABLE `commands` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Command_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `commands` (`Id`, `Command_name`) VALUES
(1,	'прыжок'),
(2,	'сидеть'),
(3,	'скакать'),
(4,	'лежать'),
(5,	'мяукать'),
(6,	'jump');

DROP TABLE IF EXISTS `home_animals`;
CREATE TABLE `home_animals` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Genus_name` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Class_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Class_id` (`Class_id`),
  CONSTRAINT `home_animals_ibfk_1` FOREIGN KEY (`Class_id`) REFERENCES `animal_classes` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `home_animals` (`Id`, `Genus_name`, `Class_id`) VALUES
(1,	'Кошки',	2),
(2,	'Собаки',	2),
(3,	'Хомяки',	2);

DROP TABLE IF EXISTS `pet_command`;
CREATE TABLE `pet_command` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PetId` int NOT NULL,
  `CommandId` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `pet_command` (`Id`, `PetId`, `CommandId`) VALUES
(1,	2,	6);

DROP TABLE IF EXISTS `pet_list`;
CREATE TABLE `pet_list` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `GenusId` int DEFAULT NULL,
  `PetName` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Birthday` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `pet_list` (`Id`, `GenusId`, `PetName`, `Birthday`) VALUES
(2,	1,	'Lusi',	'2020-10-10'),
(3,	2,	'╨╗╤О╤Б╤М╨║╨░',	'2020-10-10');

DROP TABLE IF EXISTS `pet_types`;
CREATE TABLE `pet_types` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Genus_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `pet_types` (`Id`, `Genus_name`) VALUES
(1,	'Cat'),
(2,	'Dog'),
(3,	'Hamster');

-- 2023-10-04 21:08:33
