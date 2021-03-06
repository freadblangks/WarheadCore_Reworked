-- DB update 2021_09_05_01 -> 2021_09_06_00
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_09_05_01';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_09_05_01 2021_09_06_00 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1630510887267941631'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1630510887267941631');

-- Set the Creature Shadowclaw a patrol route movement
UPDATE `creature_template` SET `MovementType` = 2, `speed_walk` = 1 WHERE (`entry` = 2175);
UPDATE `creature` SET  `MovementType` = 2  WHERE (`id` = 2175) AND (`guid` = 37432);

-- Delete previous routes
DELETE FROM `creature_addon` WHERE (`guid` = 37432);

-- Add new routes
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(37432, 374320, 0, 0, 0, 0, 0, NULL);

-- Delete all waypoints routes
DELETE FROM `waypoint_data` WHERE (`id` = 374320);

-- Waypoint route 1 (GUID: 37432)
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(374320,1,6559.83,310.877,31.216,0,0,0,0,100,0),
(374320,2,6561.89,320.477,30.9214,0,0,0,0,100,0),
(374320,3,6568.24,327.336,32.3687,0,0,0,0,100,0),
(374320,4,6570.53,339.091,32.3075,0,0,0,0,100,0),
(374320,5,6572.16,353.61,31.2842,0,0,0,0,100,0),
(374320,6,6593.72,383.151,31.5727,0,0,0,0,100,0),
(374320,7,6599.04,396.587,30.7275,0,0,0,0,100,0),
(374320,8,6602.39,418.766,31.1657,0,0,0,0,100,0),
(374320,9,6606.32,423.51,31.1574,0,0,0,0,100,0),
(374320,10,6616.12,424.975,31.0009,0,0,0,0,100,0),
(374320,11,6636.38,419.027,29.0109,0,0,0,0,100,0),
(374320,12,6657.03,409.434,26.5562,0,0,0,0,100,0),
(374320,13,6675.92,410.257,25.5474,0,0,0,0,100,0),
(374320,14,6695.2,404.067,24.8281,0,0,0,0,100,0),
(374320,15,6695.88,373.394,25.1366,0,0,0,0,100,0),
(374320,16,6689.89,349.379,26.4004,0,0,0,0,100,0),
(374320,17,6691.2,323.849,28.1595,0,0,0,0,100,0),
(374320,18,6681.62,314.014,29.6691,0,0,0,0,100,0),
(374320,19,6667.47,275.655,30.2672,0,0,0,0,100,0),
(374320,20,6668.59,247.85,28.5043,0,0,0,0,100,0),
(374320,21,6676.17,231.133,27.7114,0,0,0,0,100,0),
(374320,22,6689.02,231.703,27.7665,0,0,0,0,100,0),
(374320,23,6702.46,241.172,26.8066,0,0,0,0,100,0),
(374320,24,6726.36,239.691,25.1609,0,0,0,0,100,0),
(374320,25,6753.21,267.495,21.4772,0,0,0,0,100,0),
(374320,26,6756.23,281.507,21.4288,0,0,0,0,100,0),
(374320,27,6764.58,292.463,22.9999,0,0,0,0,100,0),
(374320,28,6787.86,305.657,22.1223,0,0,0,0,100,0),
(374320,29,6806,323.797,19.734,0,0,0,0,100,0),
(374320,30,6804.64,336.963,20.647,0,0,0,0,100,0),
(374320,31,6793.74,364.937,21.6829,0,0,0,0,100,0),
(374320,32,6782.48,380.527,23.073,0,0,0,0,100,0),
(374320,33,6766.45,391.01,23.8141,0,0,0,0,100,0),
(374320,34,6737.81,392.673,23.2805,0,0,0,0,100,0),
(374320,35,6727.03,379.069,25.3047,0,0,0,0,100,0),
(374320,36,6723.54,370.312,25.0861,0,0,0,0,100,0),
(374320,37,6721.03,359.625,24.6189,0,0,0,0,100,0),
(374320,38,6709.47,368.083,25.166,0,0,0,0,100,0),
(374320,39,6694.07,370.5,25.0605,0,0,0,0,100,0),
(374320,40,6680.05,363.219,22.9391,0,0,0,0,100,0),
(374320,41,6659.83,340.231,27.4319,0,0,0,0,100,0),
(374320,42,6635.55,340.878,27.8198,0,0,0,0,100,0),
(374320,43,6616.48,342.006,28.6154,0,0,0,0,100,0),
(374320,44,6600.46,319.145,28.7719,0,0,0,0,100,0),
(374320,45,6587.54,309.326,29.0843,0,0,0,0,100,0),
(374320,46,6574.89,303.877,30.9953,0,0,0,0,100,0),
(374320,47,6566.88,300.239,31.3335,0,0,0,0,100,0);

-- Add stealth by aura
DELETE FROM `creature_addon` WHERE (`guid` IN (37432));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(37432, 374320, 0, 0, 0, 0, 0, '22766');

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2021_09_06_00' WHERE sql_rev = '1630510887267941631';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
