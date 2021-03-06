-- DB update 2021_05_18_05 -> 2021_05_18_06
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2021_05_18_05';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2021_05_18_05 2021_05_18_06 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1620934359248602100'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1620934359248602100');
DELETE FROM `creature_loot_template` WHERE `Entry` = 1554 AND `Reference` != 11111;
INSERT INTO `creature_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES
(1554,766,0,0.08,0,1,0,1,1,NULL),
(1554,767,0,0.34,0,1,0,1,1,NULL),
(1554,768,0,0.26,0,1,0,1,1,NULL),
(1554,774,0,1.16,0,1,0,1,1,NULL),
(1554,818,0,0.4,0,1,0,1,1,NULL),
(1554,1210,0,0.02,0,1,0,1,1,NULL),
(1554,1438,0,0.08,0,1,0,1,1,NULL),
(1554,2406,0,0.02,0,1,0,1,1,NULL),
(1554,2407,0,0.02,0,1,0,1,1,NULL),
(1554,2408,0,0.02,0,1,0,1,1,NULL),
(1554,2553,0,0.02,0,1,0,1,1,NULL),
(1554,2555,0,0.02,0,1,0,1,1,NULL),
(1554,2598,0,0.28,0,1,0,1,1,NULL),
(1554,2876,0,33,1,1,0,1,1,NULL),
(1554,2959,0,0.24,0,1,0,1,1,NULL),
(1554,2960,0,0.24,0,1,0,1,1,NULL),
(1554,2963,0,0.0683,0,1,0,1,1,NULL),
(1554,2964,0,0.0342,0,1,0,1,1,NULL),
(1554,2967,0,0.04,0,1,0,1,1,NULL),
(1554,2968,0,0.24,0,1,0,1,1,NULL),
(1554,3189,0,0.34,0,1,0,1,1,NULL),
(1554,3190,0,0.34,0,1,0,1,1,NULL),
(1554,3200,0,0.1025,0,1,0,1,1,NULL),
(1554,3214,0,0.18,0,1,0,1,1,NULL),
(1554,3609,0,0.2,0,1,0,1,1,NULL),
(1554,3610,0,0.02,0,1,0,1,1,NULL),
(1554,3641,0,0.2,0,1,0,1,1,NULL),
(1554,4408,0,0.02,0,1,0,1,1,NULL),
(1554,4563,0,0.28,0,1,0,1,1,NULL),
(1554,4658,0,0.14,0,1,0,1,1,NULL),
(1554,4659,0,0.18,0,1,0,1,1,NULL),
(1554,4662,0,0.18,0,1,0,1,1,NULL),
(1554,4663,0,0.24,0,1,0,1,1,NULL),
(1554,4665,0,0.0683,0,1,0,1,1,NULL),
(1554,4666,0,0.2732,0,1,0,1,1,NULL),
(1554,4677,0,0.02,0,1,0,1,1,NULL),
(1554,4865,0,20.987,0,1,0,1,1,NULL),
(1554,6271,0,0.02,0,1,0,1,1,NULL),
(1554,6293,0,17.8449,0,1,0,1,1,NULL),
(1554,6296,0,18.3402,0,1,0,1,1,NULL),
(1554,6342,0,0.02,0,1,0,1,1,NULL),
(1554,6506,0,0.0171,0,1,0,1,1,NULL),
(1554,6507,0,0.0512,0,1,0,1,1,NULL),
(1554,6508,0,0.0854,0,1,0,1,1,NULL),
(1554,6509,0,0.0342,0,1,0,1,1,NULL),
(1554,6510,0,0.0171,0,1,0,1,1,NULL),
(1554,6513,0,0.08,0,1,0,1,1,NULL),
(1554,6514,0,0.1,0,1,0,1,1,NULL),
(1554,6515,0,0.04,0,1,0,1,1,NULL),
(1554,6517,0,0.1195,0,1,0,1,1,NULL),
(1554,6518,0,0.0512,0,1,0,1,1,NULL),
(1554,6519,0,0.0342,0,1,0,1,1,NULL),
(1554,6520,0,0.1537,0,1,0,1,1,NULL),
(1554,6521,0,0.0171,0,1,0,1,1,NULL),
(1554,7073,0,20.6796,0,1,0,1,1,NULL),
(1554,7074,0,20.4747,0,1,0,1,1,NULL),
(1554,7109,0,0.1366,0,1,0,1,1,NULL),
(1554,7288,0,0.02,0,1,0,1,1,NULL),
(1554,7350,0,0.06,0,1,0,1,1,NULL),
(1554,7351,0,0.06,0,1,0,1,1,NULL),
(1554,8177,0,0.1,0,1,0,1,1,NULL),
(1554,8179,0,0.02,0,1,0,1,1,NULL),
(1554,8181,0,0.36,0,1,0,1,1,NULL),
(1554,8182,0,0.12,0,1,0,1,1,NULL),
(1554,9742,0,0.0512,0,1,0,1,1,NULL),
(1554,9743,0,0.04,0,1,0,1,1,NULL),
(1554,9744,0,0.04,0,1,0,1,1,NULL),
(1554,9745,0,0.0683,0,1,0,1,1,NULL),
(1554,9750,0,0.0342,0,1,0,1,1,NULL),
(1554,9751,0,0.0171,0,1,0,1,1,NULL),
(1554,9752,0,0.0512,0,1,0,1,1,NULL),
(1554,9754,0,0.04,0,1,0,1,1,NULL),
(1554,9758,0,0.02,0,1,0,1,1,NULL),
(1554,9760,0,0.02,0,1,0,1,1,NULL),
(1554,9761,0,0.02,0,1,0,1,1,NULL),
(1554,12223,0,40.2152,0,1,0,1,1,NULL),
(1554,15895,0,0.0854,0,1,0,1,1,NULL),
(1554,24074,24074,1,0,1,1,1,1,NULL),
(1554,24075,24075,1,0,1,1,1,1,NULL);


--
-- END UPDATING QUERIES
--
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
