-- DB update 2021_10_04_02 -> 2021_10_04_03
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_10_04_02';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_10_04_02 2021_10_04_03 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1632340769903194306'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1632340769903194306');

UPDATE `creature_addon` SET `path_id` = 431260 WHERE `guid`= 43126;
UPDATE `creature` SET `position_x`= -7952.43, `position_y`= 1900.06, `position_z` = 1.37144, `orientation` = 2.85624, `MovementType` = 2 WHERE `guid` = 43126;

DELETE FROM `waypoint_data` WHERE `id` = 431260;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES
(431260, 1, -7933.41, 1915.55, 4.74511, 0),
(431260, 2, -7899.94, 1913.04, 3.63808, 0),
(431260, 3, -7880.02, 1903.61, 4.84035, 0),
(431260, 4, -7874.55, 1886.31, 5.24531, 0),
(431260, 5, -7896.26, 1870.85, 5.10468, 0),
(431260, 6, -7912.29, 1852.62, 4.84624, 0),
(431260, 7, -7913.68, 1834.23, 3.93352, 0),
(431260, 8, -7923.22, 1822.2, 3.55475, 0),
(431260, 9, -7939.81, 1820.07, 3.94681, 0),
(431260, 10, -7950.68, 1834.83, 3.7851, 0),
(431260, 11, -7941.65, 1859.44, 4.83307, 0),
(431260, 12, -7948.32, 1881.01, 3.5273, 0),
(431260, 13, -7951.5, 1902.78, 2.1206, 0);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2021_10_04_03' WHERE sql_rev = '1632340769903194306';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
