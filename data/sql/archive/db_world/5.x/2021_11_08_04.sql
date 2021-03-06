-- DB update 2021_11_08_03 -> 2021_11_08_04
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_11_08_03';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_11_08_03 2021_11_08_04 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1636056541021794400'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1636056541021794400');

UPDATE `quest_poi` SET `Flags`=3 WHERE `questId`=8312 AND `id`=1;
UPDATE `quest_poi` SET `Flags`=1 WHERE `questId`=8312 AND `id`=0;

UPDATE `quest_template_addon` SET `SpecialFlags`=1 WHERE `id` IN (8353,8355,8356,8357,8358,8359,8360);
UPDATE `quest_template_addon` SET `SpecialFlags`=3 WHERE `id`=8354;

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2021_11_08_04' WHERE sql_rev = '1636056541021794400';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
