-- DB update 2022_02_03_05 -> 2022_02_03_06
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2022_02_03_05';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2022_02_03_05 2022_02_03_06 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1643753841347676600'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1643753841347676600');
UPDATE `creature_template` SET `gossip_menu_id`=10614, `npcflag`=1 WHERE `entry` IN (35004, 35005);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2022_02_03_06' WHERE sql_rev = '1643753841347676600';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
