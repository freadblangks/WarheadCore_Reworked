-- DB update 2022_04_07_05 -> 2022_04_07_06
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2022_04_07_05';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2022_04_07_05 2022_04_07_06 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1648909090226708100'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1648909090226708100');

UPDATE `creature_template` SET `speed_run` = 1.14286, `speed_walk` = 1.26 WHERE `entry` = 10981;

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2022_04_07_06' WHERE sql_rev = '1648909090226708100';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
