-- DB update 2021_05_25_02 -> 2021_05_25_03
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_05_25_02';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_05_25_02 2021_05_25_03 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1621271952210432100'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1621271952210432100');

UPDATE `quest_poi` SET `MapID`= 1, `WorldMapAreaId`= 17 WHERE `QuestID`= 7944 AND `id`= 0;

UPDATE `quest_poi_points` SET `X`= -732, `Y`= -2219 WHERE `QuestID`= 7944 AND `Idx1`= 0 AND `Idx2`= 0;

--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
