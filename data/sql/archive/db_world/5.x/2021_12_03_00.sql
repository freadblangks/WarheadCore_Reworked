-- DB update 2021_12_02_03 -> 2021_12_03_00
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_12_02_03';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_12_02_03 2021_12_03_00 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1637971202896728819'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1637971202896728819');

-- Missing Springpaw formation pathing
DELETE FROM `creature` WHERE `guid` IN (55137,55154,55164,55184,55185,55187);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(55137,15366,530,0,0,1,1,0,0,10291.6,-6279.82,26.7762,1.67294,120,0,0,42,0,0,0,0,0,'',0),
(55154,15366,530,0,0,1,1,0,0,10472.7,-6460.99,22.0232,3.55367,120,0,0,42,0,0,0,0,0,'',0),
(55164,15366,530,0,0,1,1,0,0,10200.7,-6241.44,15.6028,0.621003,120,0,0,42,0,0,0,0,0,'',0),
(55184,15372,530,0,0,1,1,0,0,10291.4,-6277.55,26.6735,1.67309,120,0,0,55,0,2,0,0,0,'',0),
(55185,15372,530,0,0,1,1,0,0,10245.1,-6194.57,20.601,0.62962,120,0,0,55,0,2,0,0,0,'',0),
(55187,15372,530,0,0,1,1,0,0,10470.2,-6462.07,22.6482,3.54742,120,0,0,55,0,2,0,0,0,'',0);

DELETE FROM `creature_addon` WHERE `guid` IN (55184,55185,55187);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(55184,551840,0,0,0,0,0,NULL),
(55185,551850,0,0,0,0,0,NULL),
(55187,551870,0,0,0,0,0,NULL);

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (55184,55185,55187);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(55187,55187,0,0,515,0,0),
(55187,55154,3,180,515,0,0),
(55184,55184,0,0,515,0,0),
(55184,55137,3,180,515,0,0),
(55185,55185,0,0,515,0,0),
(55185,55164,3,180,515,0,0);

DELETE FROM `waypoint_data` WHERE `id` IN (551840,551850,551870);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(551840,1,10289.1,-6264.54,26.8377,0,0,0,0,100,0),
(551840,2,10309.8,-6231.29,27.396,0,0,0,0,100,0),
(551840,3,10321.1,-6186.69,28.3158,0,0,0,0,100,0),
(551840,4,10340.9,-6159.06,28.4496,0,0,0,0,100,0),
(551840,5,10368.7,-6131.48,28.6494,0,0,0,0,100,0),
(551840,6,10419.7,-6096.59,31.1992,0,0,0,0,100,0),
(551840,7,10368.5,-6132.31,28.7687,0,0,0,0,100,0),
(551840,8,10340.4,-6159.97,28.4244,0,0,0,0,100,0),
(551840,9,10321.3,-6187.22,28.3278,0,0,0,0,100,0),
(551840,10,10309.3,-6231.83,27.4065,0,0,0,0,100,0),
(551840,11,10289.9,-6265.54,26.8542,0,0,0,0,100,0),
(551840,12,10294.2,-6299.01,25.6592,0,0,0,0,100,0),
(551840,13,10307.8,-6329.77,25.4842,0,0,0,0,100,0),
(551840,14,10295.5,-6304.57,25.5505,0,0,0,0,100,0),
(551840,15,10291.5,-6278.09,26.672,0,0,0,0,100,0),
(551850,1,10215.7,-6225.87,17.4421,0,0,0,0,100,0),
(551850,2,10182.3,-6258.76,16.1765,0,0,0,0,100,0),
(551850,3,10159.4,-6289.44,16.6755,0,0,0,0,100,0),
(551850,4,10140.5,-6319.01,16.2499,0,0,0,0,100,0),
(551850,5,10125.6,-6347.21,14.7452,0,0,0,0,100,0),
(551850,6,10116.9,-6365.3,17.9476,0,0,0,0,100,0),
(551850,7,10127.4,-6343.74,14.5511,0,0,0,0,100,0),
(551850,8,10141.6,-6316.87,16.2922,0,0,0,0,100,0),
(551850,9,10158.4,-6287.66,16.7587,0,0,0,0,100,0),
(551850,10,10182.8,-6258.34,16.1407,0,0,0,0,100,0),
(551850,11,10215.7,-6225.67,17.451,0,0,0,0,100,0),
(551850,12,10247.1,-6196.39,20.7601,0,0,0,0,100,0),
(551870,1,10458.7,-6461.75,25.3096,0,0,0,0,100,0),
(551870,2,10446.6,-6458.02,29.8633,0,0,0,0,100,0),
(551870,3,10433.4,-6446.12,37.5819,0,0,0,0,100,0),
(551870,4,10435,-6426.54,43.5366,0,0,0,0,100,0),
(551870,5,10415.8,-6447.5,39.7772,0,0,0,0,100,0),
(551870,6,10355.9,-6454.44,36.835,0,0,0,0,100,0),
(551870,7,10333.3,-6447.81,37.878,0,0,0,0,100,0),
(551870,8,10324.4,-6451.51,39.7407,0,0,0,0,100,0),
(551870,9,10320,-6462.56,44.0913,0,0,0,0,100,0),
(551870,10,10322.7,-6484.17,53.6997,0,0,0,0,100,0),
(551870,11,10317.7,-6497.01,60.8339,0,0,0,0,100,0),
(551870,12,10307.9,-6505.04,64.257,0,0,0,0,100,0),
(551870,13,10317.2,-6497.38,61.0545,0,0,0,0,100,0),
(551870,14,10322.5,-6484.38,53.8166,0,0,0,0,100,0),
(551870,15,10319.7,-6462.88,44.2848,0,0,0,0,100,0),
(551870,16,10323.8,-6452.05,39.9808,0,0,0,0,100,0),
(551870,17,10333.9,-6448.02,37.8058,0,0,0,0,100,0),
(551870,18,10355.8,-6454.63,36.8408,0,0,0,0,100,0),
(551870,19,10416.1,-6447.69,39.738,0,0,0,0,100,0),
(551870,20,10435.1,-6426.54,43.5425,0,0,0,0,100,0),
(551870,21,10437.2,-6441.96,38.7448,0,0,0,0,100,0),
(551870,22,10451.5,-6459.26,27.9791,0,0,0,0,100,0),
(551870,23,10463.8,-6463.2,23.7556,0,0,0,0,100,0),
(551870,24,10479.7,-6460.01,18.7943,0,0,0,0,100,0),
(551870,25,10507.6,-6444.18,6.25447,0,0,0,0,100,0),
(551870,26,10493.5,-6454.54,12.5756,0,0,0,0,100,0),
(551870,27,10471.7,-6461.68,22.1123,0,0,0,0,100,0);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2021_12_03_00' WHERE sql_rev = '1637971202896728819';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
