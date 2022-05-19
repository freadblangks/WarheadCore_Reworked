-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                8.0.28 - MySQL Community Server - GPL
-- Server-OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumpar struktur för tabell acore_world.itemset_dbc
DROP TABLE IF EXISTS `itemset_dbc`;
CREATE TABLE IF NOT EXISTS `itemset_dbc` (
  `ID` INT NOT NULL DEFAULT 0,
  `Name_Lang_enUS` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_enGB` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_koKR` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_frFR` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_deDE` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_enCN` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_zhCN` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_enTW` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_zhTW` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_esES` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_esMX` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_ruRU` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_ptPT` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_ptBR` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_itIT` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_Unk` VARCHAR(100) DEFAULT NULL,
  `Name_Lang_Mask` INT unsigned NOT NULL DEFAULT 0,
  `ItemID_1` INT NOT NULL DEFAULT 0,
  `ItemID_2` INT NOT NULL DEFAULT 0,
  `ItemID_3` INT NOT NULL DEFAULT 0,
  `ItemID_4` INT NOT NULL DEFAULT 0,
  `ItemID_5` INT NOT NULL DEFAULT 0,
  `ItemID_6` INT NOT NULL DEFAULT 0,
  `ItemID_7` INT NOT NULL DEFAULT 0,
  `ItemID_8` INT NOT NULL DEFAULT 0,
  `ItemID_9` INT NOT NULL DEFAULT 0,
  `ItemID_10` INT NOT NULL DEFAULT 0,
  `ItemID_11` INT NOT NULL DEFAULT 0,
  `ItemID_12` INT NOT NULL DEFAULT 0,
  `ItemID_13` INT NOT NULL DEFAULT 0,
  `ItemID_14` INT NOT NULL DEFAULT 0,
  `ItemID_15` INT NOT NULL DEFAULT 0,
  `ItemID_16` INT NOT NULL DEFAULT 0,
  `ItemID_17` INT NOT NULL DEFAULT 0,
  `SetSpellID_1` INT NOT NULL DEFAULT 0,
  `SetSpellID_2` INT NOT NULL DEFAULT 0,
  `SetSpellID_3` INT NOT NULL DEFAULT 0,
  `SetSpellID_4` INT NOT NULL DEFAULT 0,
  `SetSpellID_5` INT NOT NULL DEFAULT 0,
  `SetSpellID_6` INT NOT NULL DEFAULT 0,
  `SetSpellID_7` INT NOT NULL DEFAULT 0,
  `SetSpellID_8` INT NOT NULL DEFAULT 0,
  `SetThreshold_1` INT NOT NULL DEFAULT 0,
  `SetThreshold_2` INT NOT NULL DEFAULT 0,
  `SetThreshold_3` INT NOT NULL DEFAULT 0,
  `SetThreshold_4` INT NOT NULL DEFAULT 0,
  `SetThreshold_5` INT NOT NULL DEFAULT 0,
  `SetThreshold_6` INT NOT NULL DEFAULT 0,
  `SetThreshold_7` INT NOT NULL DEFAULT 0,
  `SetThreshold_8` INT NOT NULL DEFAULT 0,
  `RequiredSkill` INT NOT NULL DEFAULT 0,
  `RequiredSkillRank` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell acore_world.itemset_dbc: 0 rows
DELETE FROM `itemset_dbc`;
/*!40000 ALTER TABLE `itemset_dbc` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemset_dbc` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;