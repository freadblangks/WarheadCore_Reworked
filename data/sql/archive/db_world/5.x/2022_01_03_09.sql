-- DB update 2022_01_03_08 -> 2022_01_03_09
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2022_01_03_08';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2022_01_03_08 2022_01_03_09 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1640883398588618491'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1640883398588618491');

-- An'owyn.

UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_sentinel_infiltrator' WHERE `entry`=16333;
DELETE FROM `smart_scripts` WHERE `entryorguid`=16333 AND `source_type`=0;

DELETE FROM `creature_text` WHERE `CreatureID`=16333;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(16333,0,0, '%s attempts to run away in fear!',16,0,100,0,0,0,1150,0, 'Sentinel Infiltrator flee emote');

DELETE FROM `creature` WHERE `guid` IN 
(85935,85941,85937,85812,85811,85939,85942,85872,85819,85938,85940,85818,85876,85873,85815,85809,85934,85816,85936,85944,84103,85877,85820,85874,85870,85943,85810,85814,85871);
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`wander_distance`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(85935, 16333, 530, 0, 0, 1, 1, 0, 0, 6883.2056, -7182.4517, 34.934563, 4.278333187103271484, 300, 8, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85941, 16333, 530, 0, 0, 1, 1, 0, 0, 6850.7524, -7217.2725, 30.11297, 2.272408485412597656, 300, 8, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85937, 16333, 530, 0, 0, 1, 1, 0, 0, 6882.0767, -7214.087, 35.82521, 1.439051508903503417, 300, 8, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85812, 16333, 530, 0, 0, 1, 1, 0, 0, 6818.3774, -7247.384, 38.566143, 5.980737686157226562, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85811, 16333, 530, 0, 0, 1, 1, 0, 0, 6824.471, -7226.5625, 27.116125, 1.169370532035827636, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85939, 16333, 530, 0, 0, 1, 1, 0, 0, 6816.6333, -7196.6235, 24.126722, 4.712327957153320312, 300, 0, 0, 1, 0, 2, 0, 0, 0, '', 0),
(85942, 16333, 530, 0, 0, 1, 1, 0, 0, 6880.22, -7151.846, 31.30326, 5.645930767059326171, 300, 8, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85872, 16333, 530, 0, 0, 1, 1, 0, 0, 6812.7534, -7221.547, 26.718292, 0.872664630413055419, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85819, 16333, 530, 0, 0, 1, 1, 0, 0, 6790.6377, -7202.7, 25.85513, 0.715584993362426757, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85938, 16333, 530, 0, 0, 1, 1, 0, 0, 6784.384, -7223.663, 35.39469, 6.048944473266601562, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85940, 16333, 530, 0, 0, 1, 1, 0, 0, 6774.491, -7148.566, 49.090027, 4.328416347503662109, 300, 0, 0, 1, 0, 2, 0, 0, 0, '', 0),
(85818, 16333, 530, 0, 0, 1, 1, 0, 0, 6780.414, -7186.8496, 25.85513, 6.126105785369873046, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(84103, 16333, 530, 0, 0, 1, 1, 0, 0, 6782.822, -7196.527, 25.855133, 2.94960641860961914, 300, 0, 0, 1, 0, 2, 0, 0, 0, '', 0),
(85876, 16333, 530, 0, 0, 1, 1, 0, 0, 6812.028, -7147.289, 39.837315, 4.004274368286132812, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85873, 16333, 530, 0, 0, 1, 1, 0, 0, 6753.816, -7181.382, 33.07092, 0.370360881090164184, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85815, 16333, 530, 0, 0, 1, 1, 0, 0, 6830.1255, -7176.334, 26.021637, 4.520402908325195312, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85809, 16333, 530, 0, 0, 1, 1, 0, 0, 6836.254, -7141.6704, 30.342167, 4.485496044158935546, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85934, 16333, 530, 0, 0, 1, 1, 0, 0, 6841.585, -7174.066, 26.728662, 4.956735134124755859, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85816, 16333, 530, 0, 0, 1, 1, 0, 0, 6847.4565, -7183.7544, 27.487164, 3.804817676544189453, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85936, 16333, 530, 0, 0, 1, 1, 0, 0, 6865.168, -7110.815, 43.315678, 3.534340620040893554, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85944, 16333, 530, 0, 0, 1, 1, 0, 0, 6891.949, -7117.554, 44.728897, 5.1619873046875, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85877, 16333, 530, 0, 0, 1, 1, 0, 0, 6747.5703, -7142.9443, 60.077126, 0.55104762315750122, 300, 1, 0, 1, 0, 1, 0, 0, 0, '', 0),
(85820, 16333, 530, 0, 0, 1, 1, 0, 0, 6768.2935, -7147.101, 49.631218, 0.471238881349563598, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0),
(85874, 16333, 530, 0, 0, 1, 1, 0, 0, 6848.8335, -7244.809, 38.65544, 2.79419875144958496, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', 0);

-- Pathing for Sentinel Infiltrator Entry: 16333
SET @NPC := 84103;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6785.7802,-7196.1679,25.772482,0,0,0,0,100,0),
(@PATH,2,6801.9673,-7180.109,25.907923,0,0,0,0,100,0),
(@PATH,3,6818.525,-7178.7393,25.782923,0,0,0,0,100,0),
(@PATH,4,6822.1846,-7189.311,24.157923,0,0,0,0,100,0),
(@PATH,5,6841.8916,-7191.3696,26.759832,0,0,0,0,100,0),
(@PATH,6,6846.7656,-7184.61,27.438543,0,12000,0,0,100,0),
(@PATH,7,6846.742,-7212.095,27.739176,0,0,0,0,100,0),
(@PATH,8,6827.6426,-7219.5054,26.311243,0,0,0,0,100,0),
(@PATH,9,6825.3853,-7224.583,27.061975,0,12000,0,0,100,0),
(@PATH,10,6816.2656,-7204.9277,24.297327,0,0,0,0,100,0),
(@PATH,11,6820.12,-7177.5806,26.097498,0,0,0,0,100,0),
(@PATH,12,6810.167,-7151.385,38.6809,0,0,0,0,100,0),
(@PATH,13,6792.032,-7136.481,44.548325,0,0,0,0,100,0),
(@PATH,14,6776.7324,-7139.0005,48.25023,0,0,0,0,100,0),
(@PATH,15,6768.6904,-7146.416,49.58177,0,12000,0,0,100,0),
(@PATH,16,6791.6167,-7135.7573,45.077866,0,0,0,0,100,0),
(@PATH,17,6818.637,-7167.725,29.382166,0,0,0,0,100,0),
(@PATH,18,6833.0225,-7162.5615,27.280634,0,0,0,0,100,0),
(@PATH,19,6835.918,-7143.6865,30.149033,0,12000,0,0,100,0),
(@PATH,20,6834.9165,-7164.397,26.965014,0,0,0,0,100,0),
(@PATH,21,6836.738,-7175.278,26.380316,0,0,0,0,100,0),
(@PATH,22,6825.8394,-7187.7437,24.566126,0,0,0,0,100,0),
(@PATH,23,6813.7334,-7177.994,25.782923,0,0,0,0,100,0),
(@PATH,24,6800.1597,-7180.8237,25.907923,0,0,0,0,100,0),
(@PATH,25,6788.246,-7196.332,25.89411,0,0,0,0,100,0),
(@PATH,26,6782.377,-7196.3086,25.896795,0,25000,0,0,100,0);

-- Pathing for Sentinel Infiltrator Entry: 16333
SET @NPC := 85940;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6784.5366,-7136.4473,45.43846,0,0,0,0,100,0),
(@PATH,2,6795.357,-7137.134,44.057602,0,0,0,0,100,0),
(@PATH,3,6800.2646,-7147.7554,40.00805,0,0,0,0,100,0),
(@PATH,4,6795.1274,-7167.736,32.030342,0,0,0,0,100,0),
(@PATH,5,6794.274,-7190.413,25.896795,0,0,0,0,100,0),
(@PATH,6,6790.948,-7200.5498,25.771624,0,12000,0,0,100,0),
(@PATH,7,6789.8574,-7191.004,25.896795,0,0,0,0,100,0),
(@PATH,8,6781.5205,-7187.811,25.8815,0,12000,0,0,100,0),
(@PATH,9,6789.184,-7193.564,25.896795,0,0,0,0,100,0),
(@PATH,10,6801.363,-7179.8096,25.907923,0,0,0,0,100,0),
(@PATH,11,6812.8535,-7176.31,25.782923,0,0,0,0,100,0),
(@PATH,12,6818.854,-7192.0767,24.157923,0,0,0,0,100,0),
(@PATH,13,6814.8433,-7203.1724,24.507288,0,0,0,0,100,0),
(@PATH,14,6819.7017,-7216.159,25.484217,0,0,0,0,100,0),
(@PATH,15,6814.955,-7219.826,26.657923,0,12000,0,0,100,0),
(@PATH,16,6816.3257,-7196.019,24.154505,0,0,0,0,100,0),
(@PATH,17,6828.638,-7189.9097,24.657068,0,0,0,0,100,0),
(@PATH,18,6830.4307,-7178.8135,26.032923,0,12000,0,0,100,0),
(@PATH,19,6820.8594,-7177.1274,26.519983,0,0,0,0,100,0),
(@PATH,20,6813.2393,-7160.645,34.144035,0,0,0,0,100,0),
(@PATH,21,6796.022,-7137.7695,44.04686,0,0,0,0,100,0),
(@PATH,22,6775.7603,-7138.9243,48.620712,0,0,0,0,100,0),
(@PATH,23,6774.4116,-7148.7036,49.057846,0,25000,0,0,100,0);

-- Pathing for Sentinel Infiltrator Entry: 16333
SET @NPC := 85939;
SET @PATH := @NPC * 10;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,6816.6333,-7196.6235,24.099451,0,0,0,0,100,0),
(@PATH,2,6816.6333,-7206.371,24.4266,0,0,0,0,100,0),
(@PATH,3,6820.516,-7213.812,24.97848,0,0,0,0,100,0),
(@PATH,4,6826.326,-7216.882,25.996058,0,0,0,0,100,0),
(@PATH,5,6835.212,-7216.7383,26.493082,0,0,0,0,100,0),
(@PATH,6,6841.942,-7214.983,27.368082,0,0,0,0,100,0),
(@PATH,7,6847.863,-7209.14,27.527506,0,0,0,0,100,0),
(@PATH,8,6846.407,-7200.3657,27.267984,0,0,0,0,100,0),
(@PATH,9,6842.989,-7192.268,26.899847,0,0,0,0,100,0),
(@PATH,10,6835.602,-7187.326,26.064764,0,0,0,0,100,0),
(@PATH,11,6828.214,-7188.1807,24.513636,0,0,0,0,100,0),
(@PATH,12,6820.3257,-7191.4316,24.031214,0,0,0,0,100,0);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2022_01_03_09' WHERE sql_rev = '1640883398588618491';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
