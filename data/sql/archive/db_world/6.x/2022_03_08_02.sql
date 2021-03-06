-- DB update 2022_03_08_01 -> 2022_03_08_02
DROP PROCEDURE IF EXISTS `updateDb`;
DELIMITER //
CREATE PROCEDURE updateDb ()
proc:BEGIN DECLARE OK VARCHAR(100) DEFAULT 'FALSE';
SELECT COUNT(*) INTO @COLEXISTS
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'version_db_world' AND COLUMN_NAME = '2022_03_08_01';
IF @COLEXISTS = 0 THEN LEAVE proc; END IF;
START TRANSACTION;
ALTER TABLE version_db_world CHANGE COLUMN 2022_03_08_01 2022_03_08_02 bit;
SELECT sql_rev INTO OK FROM version_db_world WHERE sql_rev = '1646741507286965931'; IF OK <> 'FALSE' THEN LEAVE proc; END IF;
--
-- START UPDATING QUERIES
--

INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1646741507286965931');

DELETE FROM `quest_request_items_locale` WHERE `ID` IN (10008,10015,10017,10018,10019,10023,10025,10031,10041,10043,10044,10045,10073,10077,10082,10085,10091,10095,10097,10098,10117,10118,10123,10136,10164,10165,10167,10168,10169,10172,10176,10183,10201,10211,10216,10218,10220,10238,10277,10284,10294,10297,10310,10328,10339,10347,10380,10384,10385,10389,10391,10405,10406,10407,10408,10409,10410,10413,10416,10419,10420,10421,10445,10451,10458,10471,10478,10480,10481,10514,10515,10519,10523,10525,10526,10528,10537,10540,10541,10543,10547,10548,10550,10565,10566,10570,10572,10576,10577,10578,10579,10583,10589,10590,10592,10593,10597,10601,10604,10617,10618,10622,10624,10630,10634,10641,10642,10645,10647,10648,10649,10664,10665,10666,10667,10668,10669,10670,10672,10673,10677,10678,10679,10714,10715,10721,10723,10724,10742,10749,10755,10757,10758,10765,10777,10778,10780,10782,10785,10786,10791,10793,10804,10808,10810,10812,10814,10820,10821,10823,10824,10825,10826,10827,10828,10830,10831,10832,10833,10836,10837,10846,10854,10860,10861,10864,10868,10874,10876,10879,10897,10899,10902,10904,10911,10912,10914,10919,10920,10921,10922,10937,10940,10941,10946,10947,10961,10962,10963,10964,10965,10966,10967,10971,10972,10973,10974,10975,10976,10977,10978,10980,10981,10985,10987,10988,10990,10991,10992,10993,10994) AND `locale` = 'ruRU';
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES
(10008, 'ruRU', "?????????? ??????, ?????? ?? ???? ???????????? ?? ????????, ?????????????? ?????? ????????????...", 0),
(10015, 'ruRU', "?? ???????? ?????? ???????? ?????? ????????? ???? $G??????????:????????????;, ?????? ?????????????????? ?? ???????????????? ?? ?????????? ??????????????.$B$B???? ????????????, ?????????? ?????? ?????????????????? ?? ?????????????????? ???????????????????", 0),
(10017, 'ruRU', "???? ?????????????? ???????????????? ????????????, $N? ?????? ???????????????? ?????????????? ?????????? ???? ????????????????.", 0),
(10018, 'ruRU', "???? ?????????? ?????? ??????????, ?????????? ?? ?????????????", 0),
(10019, 'ruRU', "?????????? ?????? ?????????? ?????????? ???????????????? ?? ????????????????????????. ???? ???????????????? ?????? ???????????????? ????????????, $N?", 0),
(10023, 'ruRU', "?????? ????????, $N. ???? ???????????????? ?????????? ???????????????? ???????????????????", 0),
(10025, 'ruRU', "?????? ?????????????????? ???????????? ???????????????? ?????????????????? ?????????? ?????????? ???????? ????????????????????. ?????? ???????????? ???? ??????????????????, ?????? ?????????? ???????????????? ?????????? ???????????????????? ?? ??????.", 0),
(10031, 'ruRU', "$N? ?????? ???????????????????? ???????? ???? ??????? ???? $G????????????????:??????????????????; ?? ???????????? ?????????? ??????????????????????, ?????? ?? ?????????????", 0),
(10041, 'ruRU', "???? ?????? $G????????????????????????:??????????????????????????; ???? ??????????? ?????? ?????? ???????????????", 0),
(10043, 'ruRU', "???? ?????? ???? $G??????????:????????????;?", 0),
(10044, 'ruRU', "????????????????????, ??????????????, $G??????????????:??????????????;.", 0),
(10045, 'ruRU', "????????????????????, $G??????????:??????????;.", 0),
(10073, 'ruRU', "?? ?????? ?????????????????????", 0),
(10077, 'ruRU', "?????? ???????? ???????? ???????????????? ?????????????????????????????????? ?????????????? ?????????????? ???? ???????????????? ???????????????????? ??????????.$B$B???? ???????????????????? ?????????????????? ?????????????? ?????????????????????????????????? ?????????????? ?? ???????????????????? ?? ???????????????????? ???????? ??????'??????. ???????????????? ?????? ?? ???????? ?????????????? ?????????? ?? ?????????? ?????????????? ?????????????? ???????????????????? ??????'????????. ???????? ???? ?????????????? ?????????????? ???? ?????????? ?????????????????????? ?? ???????? ??????????????, ?????????? ?????? ?????? ?? ?? ?????????????? ???????? ???????????? ???????? ??????????????????????????????, ?????????????? ???? ???????????? ???????????????????????? ?????? ?????????????? ?? ????????????????????.", 0),
(10082, 'ruRU', "???????? ???? ?????????? ??????????, ?????????? ?????????????? ??????????, $N.", 0),
(10085, 'ruRU', "???????????????? ?????? ??????????, $N.", 0),
(10091, 'ruRU', "????? ?????? ?? ???????? ?????? ???????? ??????????????, $C?", 0),
(10095, 'ruRU', "$N, ???? $G????????????:????????????????; ?????????????? ???? ???????????????? ??????????????????? ??????????????-???? ?????????????????? ?????????????????? ?", 0),
(10097, 'ruRU', "???? $G??????????:??????????; ????, $N? ???? ?????????????? ?? ?????????????????", 0),
(10098, 'ruRU', "???????????????? ?????????????? ?????????????? ?????????? ?????????????????????????? ?? ????????????????. ?????????????? ???? ?????????????? ?????", 0),
(10117, 'ruRU', "?????? ???? ???????????? ???????????????? ?????????????? ???? ?????????? ???????????????", 0),
(10118, 'ruRU', "????????????????????????, ?????? ???????????????? ??????????????????, - ?????? ?????????????? ?? ???????????????? ????????????????. ?????? ???????????? ??????????, ?????? ???? ???? ???????????????? ???? ?????????????????? ????-????????????.", 0),
(10123, 'ruRU', "???????????????? ?? ????????????????????????, ???????? ?????????????? ?? ?????? ???????? ?????????? ??????????.", 0),
(10136, 'ruRU', "???????????? ??????????, $N. ???????????????? ???????????????? ???????????????????? ?????????? ?????????????????? ???? ????????????????????. ?????????? ?????? ???????????? ???????????? ???????????? ?????? ????????, ?????? ?????????? ?????????????????????????? ????????. ???? $G??????????????????:??????????????????;.", 0),
(10164, 'ruRU', "?????????? ??????????, $N.", 0),
(10165, 'ruRU', "?? ???? ?????????? ????????????????????.", 0),
(10167, 'ruRU', "<?????? ??'?????? ??????????????????.>", 0),
(10168, 'ruRU', "<???????? ?????????? ?????????????? ??????c????????????.>$B$B?????? ?????????? ?????????? ???????? ?????????????? ?? ????????.", 0),
(10169, 'ruRU', "?????????? ???????? ?? ???????????? ?????????????????? ???????????? ???????????? ????????????.", 0),
(10172, 'ruRU', "<???????????????????? ???????? ??????????.>", 0),
(10176, 'ruRU', "??????????????-???? ???? ??????????????????????.", 0),
(10183, 'ruRU', "??????????, ??????????. ???????????? ???????????? ??????????! ?????? ?????????? ?????????????????? ???????????????? ??????????!$B$B???????? ???? ?????????????", 0),
(10201, 'ruRU', "???? ??????, ???????????????????? ???????????????? ?? ???????????? ?????????", 0),
(10211, 'ruRU', "?????????????? ???????????? ????????????????, $N. ?????????????? ?????????????? ???????????? ???????????? ????????.", 0),
(10216, 'ruRU', "?? ???????? ???????????????????? ?????????? ?????????????? ????????????, ???? ???????? ???? ?????????????? ?????? ???? ?????????????? ????????????????.", 0),
(10218, 'ruRU', "????????????, ???????????? ???? ??????????.", 0),
(10220, 'ruRU', "???? ??????, ???????????????????????? ????????????, ?????? ?? ?????????????????????? ?????????? ???? ???????????????????", 0),
(10238, 'ruRU', "???? ?????? ???????????? ???????? ????????????????? ????????????????????, ????????????????????????, ?? ??????????, ?????? ?????? ?????????? ??????????????, ??, ????????????????, ?????? ?????????? ???? ?????????? ????????????????. ???????? ?????? ?????????? ?????????????????????????? ?????????????? ???? ????????, ???????? ?????????????? ?????????? ????-???????????????????? ???????????????????????? ???? ????????.", 0),
(10277, 'ruRU', "???? ??????????????????????????, ???????? ???? ???????????????? ???????? ???? ???????????????????????? ?????????????????????????? ?? ??????, ?????? ????????????????????.", 0),
(10284, 'ruRU', "<?????????????? ????????????.>", 0),
(10294, 'ruRU', "???? ?????? $G????????????????:??????????????????; ?? ?????????????????? ??????????? $G????????????:??????????????; ?????????????? ???????", 0),
(10297, 'ruRU', "???? ???????????? ???????????????????????? ???????????? ???????? ???????? ???? ???????? ?????????????? ??????????????.", 0),
(10310, 'ruRU', "?????? ?? ???????? ???????? ?????????????", 0),
(10328, 'ruRU', "?????????????? ???? ???????? ???????????? ???????????????????? ???? ?????????????????? ?????????", 0),
(10339, 'ruRU', "???????????? ??????????????, ???????????????? ???? ?????????? ?? ??????????...", 0),
(10347, 'ruRU', "?? ?????????? ???????????? ???? ????????????, ?????? ??????????????, ???? ???????????????? ????????????, ?????? ?? ????????????????????????. ???? ?????? ???? ?????? ?????????????? ???? ???????????????? ??????????????????????????!", 0),
(10380, 'ruRU', "???? ???????????????????? ???? ?????????? ??????????????, $N?", 0),
(10384, 'ruRU', "?????????????? ???? ???????? ?????????? ???????????????????????????? ?????????????", 0),
(10385, 'ruRU', "?????????????? ???? ???????? ?????????????? ???????????? ???? ?????????????????????", 0),
(10389, 'ruRU', "????, $C, ?????? ?????? ???????????????? ?????????????? ???????????", 0),
(10391, 'ruRU', "???????????? ?????????? ???????????? ?????????????? ?????? ?? ?????????? ????????????, $N! ???????? ?????????? ???????????????????? ?????? ??????????!", 0),
(10405, 'ruRU', "?????????????? ???? ???????? ?????????????????? ???????????????", 0),
(10406, 'ruRU', "???? ???????????? ?????????????? ????????!", 0),
(10407, 'ruRU', "?????????????? ???? ???????? ???????????? ???????????? ???????????????????????? ??????????????????, $N?", 0),
(10408, 'ruRU', "????... ???? ?????????????????????????? ??????????? ???????????????????", 0),
(10409, 'ruRU', "???????? ?? ??????????, $C.", 0),
(10410, 'ruRU', "?????? ???????????????? ????????, ?????????", 0),
(10413, 'ruRU', "??????, ?????? ?????? ???????? ?????? ?????????????? ??????????????????????? ???? ?????? ???? $G????????????????:??????????????????;?", 0),
(10416, 'ruRU', "??, $N! ?????? ???????? ???????????? ???????????????????????? ?????????????????", 0),
(10419, 'ruRU', "?????? ???????? ???????????? ?????????????????????? ??????????????????, $N?", 0),
(10420, 'ruRU', "???????? ?????????????? ???????????? ???????????? ???????????????? ??????????????, $N?", 0),
(10421, 'ruRU', "???? ???????????????????? ???? ?????? ?? ?????????????????? ?????????? ???????????? ???????????????? ??????????????? ???????????? ?????????????????? ?????? ???????????????????????? ???????? ?? ?????????? ????????, $N. ?????????? ???????????????? ????.", 0),
(10445, 'ruRU', "?? ???????????? ?? ???????? ????????????????????????, ???? ??????????????, ?????? ???? ?????????????????? ????????????. ???? ?????????? ???????????? ??????????????.", 0),
(10451, 'ruRU', "???? ?????????? ???????????? ?????????????", 0),
(10458, 'ruRU', "?? ??????????, ?????? ?????????? ?????? ?????????? ???? ????????????.", 0),
(10471, 'ruRU', "???? $G????????????????:??????????????????;. ???????? ???????? ?? ?????? ?????????????????????", 0),
(10478, 'ruRU', "???? $G??????????:????????????; ?????? ???????????? ????????????????, $N?", 0),
(10480, 'ruRU', "?????? ???? ???????? ???? ?????????????????????? ????????, ???????????????????? ???????????? ???????????????? ?????????????????????? ???????? ????????.", 0),
(10481, 'ruRU', "?????????? ???? ???????????????????? ?? ????????????.", 0),
(10514, 'ruRU', "?????????????? ?????? ????????????!", 0),
(10515, 'ruRU', "?????? ????????????!", 0),
(10519, 'ruRU', "???????????? ?????????????????? ?? ????????????????, $N.", 0),
(10523, 'ruRU', "?????? ???????????? ???????????????", 0),
(10525, 'ruRU', "?????? ???? ????????????? ?????????? ??????, ?? ???????????? ??????????, ?????? ??????!", 0),
(10526, 'ruRU', "?? ???????????? ???? ???????????? ???????????????? ??? ???? ???????? ???? ?????????????????? ?????????? ???????????????? ???????? ????????????????!$B$B?????????? ?????????????? ?????? ???????? ??????????????????, ???????? ?????????? ???? ?????????????????? ?????????????? ?????????????????????? ?????????? ???????????????????????? ??????, ?????? ???????? ?????????????? ?????????? ?????????? ????????????????????.$B$B???????????? ??????????????????, ???????????? ?????? ?????? ??????????? ??????????????????, ???????????? ?????? ???? ???? ?????????????? ???????????", 0),
(10528, 'ruRU', "???????????????????????? ???????? ????'???????? ???????????????????? ?????????? ?????????? ?????????? ?? ??????????????.", 0),
(10537, 'ruRU', "???? ??????????, $G????????:??????????????; $G??????:??????;. ?? ???????? ?????????? ?? ???????????? ????????.", 0),
(10540, 'ruRU', "???? $G????????????:????????????; ?????????????????? ????????!", 0),
(10541, 'ruRU', "<???????????????? ?????????? ???????????????? ???? ???????? ??????????????.>", 0),
(10543, 'ruRU', "??????????????, ??'???????? ???????????????? ???????? ??????????? ??????!$B$B????????, ???? ?????? $G????????????????:??????????????????;? ?????????????? ?? ?????????????? ?????????????", 0),
(10547, 'ruRU', "<???????????? ?????????????????? ??????????.>$B$B????????????????????? ?????????????? ???? ????????????... ?? ???? ??????, ????????????????????? ?????? ???? $G????????????:??????????????; ????????????????????????????, ?? ???????? ?????????? ????????!", 0),
(10548, 'ruRU', "?????? ?????????? ???? ?????????????????", 0),
(10550, 'ruRU', "???? $G????????????:????????????????; ?????????????????????", 0),
(10565, 'ruRU', "?????????????? ????????'???????? ?????????? ?????? ???????? ???????????? ??????????????????????????????????, ???? ???????????? ??????-???? ???????????????????????? ????.", 0),
(10566, 'ruRU', "?? ?????????????????????? ?????? ?????????? ??????????????????????, $N.", 0),
(10570, 'ruRU', "????????????????????, $G????????????:??????????????;.", 0),
(10572, 'ruRU', "<???? ?????????????????? ?????????????????? ?????????????????? ??????????.>", 0),
(10576, 'ruRU', "?????? ?????????????? ????????????, |3-6($R). ???????? ???? ????????????.", 0),
(10577, 'ruRU', "???????????????????? ????????????????????. ?????????????????????? ?????????? ????????????????, ?????????? ????????????, ?????????????? ???????????????????????? ?????? ??????????.", 0),
(10578, 'ruRU', "????????????????????!", 0),
(10579, 'ruRU', "$N!", 0),
(10583, 'ruRU', "???? ??????, ?????????????? ???????? ?????????? ?????????????? ?? ?????????????? ?????????????", 0),
(10589, 'ruRU', "???? ???????????? ?????????? ???????????? ???????????????????? ???????? ?????????????????? ????????????????????, $N. ???? ???????????? ????????????????????????, ???? ?????? ???? ?????????????? ???????????? ?????? ??????????????????.", 0),
(10590, 'ruRU', "?????????? ?????????????????????? ?????? ?????????? ???????????????", 0),
(10592, 'ruRU', "?? ???????? ???????? ??????-???? ?????? ????????, $R?", 0),
(10593, 'ruRU', "????????????????, ?????? ???? $G??????:????????;, ?? ???????? ???????????? ????????????????????????, ?????? ?????? ?????????????????????????????? ???????????????? ????????, ?? ???? ???????????? ???? ???????? ????????????????.", 0),
(10597, 'ruRU', "<???? ???????????????? ?????????????????? ??????????????>", 0),
(10601, 'ruRU', "???? ??????, ?????????????? ???????? ?????????? ?????????????? ?? ?????????????? ?????????????", 0),
(10604, 'ruRU', "???? ???? ?????????? ?????????? ?????????????? ?????????????????????? ?????????????? ?? ?????????? ???????????? ?????????? ????????????! ???? ???????????? ?????????? ???????????? ???????????????????? ???? ??????, ???????????? ?????? ?????? ???????????? ?????????????? ???????? ?????? ?????????? ??????????.", 0),
(10617, 'ruRU', "?????? ?????????? ?????????????? ?????????? ???????????? ?? ?????????????? ????????. ??????????????, ???????? ??????????????.", 0),
(10618, 'ruRU', "?????? ???????????????? ?????????? ????????????, ???? ???? ?????? ?????????? ?????????? ?????????? ????????????????.", 0),
(10622, 'ruRU', "$G????????????????:??????????????????; ???? ???? ???????????????????? ???????? ??????????????, $N? ?????????????? ???? ??????-???? ?????????? ??????????????????.", 0),
(10624, 'ruRU', "?????? ????????????, \"??????????\"? ????????????????, ?? ?????????????????? ??????-?????? ?????????????????????? ???? ?????????? ??????????.", 0),
(10630, 'ruRU', "???? ?????? ??????????? ?? ?????????????? ?????????? ????????????????.", 0),
(10634, 'ruRU', "?????????????????????? ???? ???????? ?????????????? ?????????????? ?? ?????????????????? ??????????.", 0),
(10641, 'ruRU', "???? $G????????:??????????; ?????????????????", 0),
(10642, 'ruRU', "????. ???????????? ?????????????????? ????????????????????... ?? ?????? ????????????????.", 0),
(10645, 'ruRU', "?????? ???? ?????????????????", 0),
(10647, 'ruRU', "???? ???????????????? $G????????????:??????????????;, $G????????????????:????????????????????????;?", 0),
(10648, 'ruRU', "?? ??????????????, ?????? ???? $G????????????????:??????????????????; ?????????? ????????????????????????????, $G????????????:??????????????;. ?? ?????????????????? ???????????? ??? ?????????? ????????????!", 0),
(10649, 'ruRU', "?????????????? ???? ???????? ???????????? ??????????, $N?", 0),
(10664, 'ruRU', "???? ??????? ?????????????? ?????????????? ?????????????????????? ???????????????????", 0),
(10665, 'ruRU', "?????????????? ???? ???????? ?????????????? ?????????????????????? ???????? ?? ?????????????????", 0),
(10666, 'ruRU', "???? $G????????????:????????????????; ???????????", 0),
(10667, 'ruRU', "???? ?? ?????? ?????????????????", 0),
(10668, 'ruRU', "?????????????????? ???????????????? ???????????", 0),
(10669, 'ruRU', "???? $G????????????????:??????????????????;. ???????????? ?????????", 0),
(10670, 'ruRU', "?????????????? ???? ???????? ?????????????? ???????????? ???? ?????? ???????????????", 0),
(10672, 'ruRU', "????????????????, ?? ???????? ?????? ???? ??????????????, ???? ?????????????? ??????????????????, ?????? ?????? ?????? ????????????. ???????????? ???????????? ?????? ??????????????????????.", 0),
(10673, 'ruRU', "??????????????! ???????????? ?????????????? ?????????? ???? ??????????.", 0),
(10677, 'ruRU', "?????????? ??????: ??????????????!", 0),
(10678, 'ruRU', "?????????? ??????: ?????????? ??????????????????????????.", 0),
(10679, 'ruRU', "???? ??????? ?????????????? ???????? ???????????????? ?????? ?? ?????????????? ???????????? ?????????? ???????? ??????'?????????", 0),
(10714, 'ruRU', "?????? ???????? ?????????????? ????????????, $N?", 0),
(10715, 'ruRU', "???? ??????, $G??????????:????????????; ???????????????? ????????????? ???????? ??????, ???? ?????? ?????? ?? ???? ?????????????? ?? ???????? ??????????????, ???????? ???? ????????????????, ?????? ?? ??????????.", 0),
(10721, 'ruRU', "?????? ????????????? ???? $G????????????:????????????; ?????????????? ?????? ???????????? ???????????????", 0),
(10723, 'ruRU', "?????????? ???????? ?????????? ??????????????, ???????? ?????????????????? ???????????? ???????????? ?????? ???? ????????????????????.", 0),
(10724, 'ruRU', "???????? ???? ???????????? ?????????? ???????????????? ???????????? ????????????.", 0),
(10742, 'ruRU', "???????????? ???????????? ???????? ?? ???????????????? ???????????????????? ?????????????????? ??????'??????????!", 0),
(10749, 'ruRU', "|3-6($C), ???? ?????? ???????????? $G????????????????:??????????????????;? ???? ?????? ?????????", 0),
(10755, 'ruRU', "???????? ???????? ?????? ?????? ????????????????, $N?", 0),
(10757, 'ruRU', "???? $G??????????????:????????????????;, ?????????????????????? ???????? ???????????????????", 0),
(10758, 'ruRU', "???? $G????????????????:??????????????????; ??????????????, ???????????????????? ????????, $N?", 0),
(10765, 'ruRU', "???????????? ????????, ????????????.", 0),
(10777, 'ruRU', "???? $G??????????:????????????; ?????????? ?? ?????????????", 0),
(10778, 'ruRU', "???????? ?????????????? ?????????????????? ???????????", 0),
(10780, 'ruRU', "?????????????? ???? ???????? ?????????????? ?????????? ?????? ?????????????", 0),
(10782, 'ruRU', "?????????????????????? ???????????????", 0),
(10785, 'ruRU', "???? $G????????????:????????????????; ?????? ?????????????? ?????????? ???? ????????????????????? ?????? ???? ?????? ?????? ???????", 0),
(10786, 'ruRU', "???? ???????????? ???????????? ???????? ???? ???????????????? ??????????, ???? ?? ??. ???????????????? ??????????????, ?????? ???? ?????????? ?????????????????? ?????????????? ???? ??????????, ???????????????? ?? ??????????-???????? ????????.$B$B?? ??????????????, ?????? ???? ?????????? ???????????? ?????????? ???????? ?? ???????????? ??????????'?????????", 0),
(10791, 'ruRU', "???????????????????????????? ?????????? ?? ?????????? ?????????? ??? ?????? ???????? ???????????? ?????????? ????????, ?? ?????????? ???? ??????????.", 0),
(10793, 'ruRU', "<?????????????? ???????????????? ???????????????????? ?? ?????????????? ??????????????????.>$B$B????????????... ?? ???? ?????? ?????? ???????????????", 0),
(10804, 'ruRU', "?? ???? ???????? ???????????? ???? ????????????????????????????, $N!", 0),
(10808, 'ruRU', "?????? ?????? ????????????, $N? ?????????????? ???? ???????? ???????????????? ???????????? ?????????????", 0),
(10810, 'ruRU', "???? ?????? ???? $G??????????????:????????????????; ???? ??????! ???? ????????????, ?? ?????????????? ?????????????????????? ???????????????????????? ?????????", 0),
(10812, 'ruRU', "???????????? ?????????? ???? ????????!", 0),
(10814, 'ruRU', "?????????????? ?????? ?????????????????? ?????????????? ?????????? ????????????.", 0),
(10820, 'ruRU', "?????? ???????????????? ????????????????, ???????????? ???? ???? ???? $G??????????????:????????????????;?", 0),
(10821, 'ruRU', "???????????? ???????????????????????????? ?? ?????????? ???????????? ???????? ?????????????????? ?????????????????????", 0),
(10823, 'ruRU', "?????? ???? $G????????????:??????????????; ?????? ?????? ???? ?????????????????? ??????????, $N?", 0),
(10824, 'ruRU', "??????????????????, $N.", 0),
(10825, 'ruRU', "|3-6($C), ???? ???????? ???????????????????? ??????? ??????-???? ???????????????????????????? ?? ???????? ???????????? ??????????!", 0),
(10826, 'ruRU', "$G????????????:????????????????; ???? ???? ?????????????????? ?????????? ??????????????, $N?", 0),
(10827, 'ruRU', "???? ???????????????? ?????? ???????????? ???????????????? ?????????? ????????????, |3-6($C)? ???????????????? ???????????? ?????? ?????? ???????????????? ??????, ?? ???? ???????????????????? ?????? ??????????????????????.", 0),
(10828, 'ruRU', "?? ?????????? ?????????? ???????????????????? ?? ???????? ????????. ???? ????????????????, ???????? ???????????? ?????????? ?????????????? ?????????????? ??????????????.", 0),
(10830, 'ruRU', "??????, ?????????????????? ?? ????????????????, ???????????????? ?????????????????? ???? ?????? ???????????????????????? ?? ????????.$B$B???? $G????????????:????????????; ?????????????????????? ????????????, $N, ???????? ?????? ???? ??????????????!", 0),
(10831, 'ruRU', "???? ?????????????? ?????????????? ?????????????????????? ???????????????????", 0),
(10832, 'ruRU', "???? ???????????????? ???????????????? ???????????????? ???????????????", 0),
(10833, 'ruRU', "???? ???????????????????????? ???????? ??????????????????, ?????????? ???????????? ?????????????????????? ???? ???????????? ???????????", 0),
(10836, 'ruRU', "????????????? ?? ???????? ???????????? ??????????????????, ?????? ?????? ???? ????????????...", 0),
(10837, 'ruRU', "?????? ?????? ??????????????????.", 0),
(10846, 'ruRU', "?? ?????? ?????????? ????????????. ?????????????????? ???? ??????????????, ?? ??????????????????, ?????????? ?????? ??????'??????, ??????.$B$B?????? ???? ???? ???? ????????, ???? ?????????? ???????? ???? ????????????.", 0),
(10854, 'ruRU', "???? ?????????? ??????????????. ?? ?????? ?????????? ?????????? ??????!", 0),
(10860, 'ruRU', "?????? ???? ?????? $G??????????:????????????;? ???????????????? ???? ???????? ??? ???????????? ??????????!", 0),
(10861, 'ruRU', "???? ???????????????????? ?????????", 0),
(10864, 'ruRU', "???????????????? ?????? ???? ????????????????, $N. ?????????????????????? ???? ?????? ?????????? ????????, ?????? ?????????????? ???????? ?????????? ?????????????????????? ??????????.", 0),
(10868, 'ruRU', "?????????????? ?????????????? ??????????, $N? ?????? ?????????????? ???? ??????? ?????? ?????????????? ?? ??????????????????, ?????????? ???? ?????????????????? ?? ???? ?????????????", 0),
(10874, 'ruRU', "???????????????????? ?????????????????? ?????????????????? ???????? ??????????!", 0),
(10876, 'ruRU', "???? $G????????????????????:??????????????????????; c ?????????????????? ???????????????", 0),
(10879, 'ruRU', "???????????? ???? ?????????? ?????? ???????????? ????????????????, $N. ?????? ??????????????! ???????????????? ??????????????????????!", 0),
(10897, 'ruRU', "???? $G????????????:??????????????; ?? ????????, $N? ?????????????????????????? ???? ???????????? ???????????????? ???????? ???????????????????? ?????????????? ??????????????????????????????.", 0),
(10899, 'ruRU', "???? ??????????????, ?????? ???????????? ?????????? ???????????????? ????????????????????????? ???????? ???? ?????????????????????????????????? ?? ???????? ??????????????, ???? ???? ?????????????? ???????????????????????????????????? ???? ???????????? ?????? ??????????????????.", 0),
(10902, 'ruRU', "????????????????? ?????? ?? ?????????", 0),
(10904, 'ruRU', "???????? ?????? ?? ?????????", 0),
(10911, 'ruRU', "???? ?????? ?????? ?????????????? $G??????????????????:????????????????????;?", 0),
(10912, 'ruRU', "????????, ????????????????????? ???????????? ???????? ???????????? ???????????????????????????", 0),
(10914, 'ruRU', "?????????????? ???? ??????????!", 0),
(10919, 'ruRU', "?????? ?????? ?????????????????? ?????????????? ???? ????????...", 0),
(10920, 'ruRU', "?? ????????????????, ?????? ???? ?????????? ???? ???????? ??????????. ?????????? ?????????? ????????, ?? ???????? ????????. ?????????? ?????????????? ???????????? ???????????????????", 0),
(10921, 'ruRU', "?????????????????????????? ?????? ?????????", 0),
(10922, 'ruRU', "?????? ????????????, ?????????? ???????????? ??????????????.", 0),
(10937, 'ruRU', "?????????????????? ??????????? ????, ?????????? ?????? ???????????????????? ???????????????????", 0),
(10940, 'ruRU', "?? ????????, ?????? ?????? ?????????????? ?????????????????? ???????????? ????????????! ??????????????????????!", 0),
(10941, 'ruRU', "?? ????????, ?????? ?????? ?????????????? ?????????????????? ???????????? ?????????????? ??????????????????????!", 0),
(10946, 'ruRU', "???? $G??????????????????????:????????????????????????; ?? ????????????????, $N? ?????????????? ???? ???????????? ??????????!", 0),
(10947, 'ruRU', "???????? ?????????????? ?????????????? ???????? ??????????????, $N?", 0),
(10961, 'ruRU', "???? $G????????????:????????????????; ?????????????????????? ?????? ????????????????? ????????????????????, ???????????????????? ???? ?????????????? ???? ???????? ??????????????. ?? ?????????? ?? ?????? ??????????????????????.$B$B<???????????? ?????????????? ???? ?????????????????????????? ??????????????.>", 0),
(10962, 'ruRU', "?????? ???? ??????????????, ???????????? ?????????????? ?????? ???????????? ???????????????", 0),
(10963, 'ruRU', "???????? ???????????? ??????, ?????? ?????????????? ?????? ???????????? ??????????????, ???? ?????? ?????????????????????? ??????????.", 0),
(10964, 'ruRU', "<???? ???????????????????? ???????? ?????????? ?????????????? $C.>", 0),
(10965, 'ruRU', "??????????????, $R. ???????? ?????? ???????????????? ???????????? ???? ??????????????, ?????????????? ???????????????? ???????????????? ???? ????????????????????????, ?????? ?????????????? ?? ??????????????????.", 0),
(10966, 'ruRU', "?????????????? ???????????? ?????? ??????????, |3-6($C). ?? ????????, ?????? ???? ?? ?????????????? ???????????? ???????????????????????? ?????????????? ?????????? ?????????????", 0),
(10967, 'ruRU', "?????????????? ???????????? ?????? ??????????, |3-6($C). ?? ????????, ?????? ???? ?? ?????????????? ?????????????????? ???????????????????????? ?????????????? ?????????? ?????????????", 0),
(10971, 'ruRU', "???????? ?????????????? ?????????? ?????????????????????????????????? ?????????????????", 0),
(10972, 'ruRU', "?????? ?????????? ???????????? ??????????, $N. ?????? ?????????????? ????????????????????, ?????? ?????? ???? ???????????? ???????????? ?????????????????? ?????????????? ??????????????, ???? ?????????? ???????????????? ???? ?????????????????? ?????????? ????????????????????!$B$B?????????? ???????? ?????????? ??????????????, ???? ???????????? ?????????? ????????????, ?????? ???????????????????? ???????? ????????????????, ?? ???????????????????? ???? ?? ???????????????????????? ????????????????.", 0),
(10973, 'ruRU', "?? ????????, ?????? ?????????? ??????????????, ???? ??????????????, ?????????????? ???????????? ???????? ?????????? ????????????!", 0),
(10974, 'ruRU', "????????????? ?????????????? ???? ?????????", 0),
(10975, 'ruRU', "???? ?? ?????????????????????? ??????????????????, $N. ?????????????????? ?????????? ???????????? ???????? ?????? ???????????????????? ???????????????????? ?????? ????????, ?????????? ???????????? ?????????? ??????????????????, ???????????????????????? ?? ?????????????? ?????????????? ????????????????????, ???????????? ???? ???????????? ?????????? ???????????? ?? ?????????????????????? ?????????? ?????????????? ???????????? ???? ?????????????? ???????????????? ??????????, ?? ???????????? ??????'??????.$B$B???????????????????????? ?? ???????????????? ???????????? ????????????????! ?????????????? ?????? ?????????? ???? ???????????? ????????????????, ?? ?? ???????????? ?????? ???????? ?????????? ???? ?????????????????? ?????????? ????????????????, ?????????? ?????????? ???????? ?????????????? ?????????????????? ???????????? ??????'??????.", 0),
(10976, 'ruRU', "?????? ?????????? ?????????? ???????????? ?????????? ??????????????, $N.", 0),
(10977, 'ruRU', "?? ??????????, ???????? ???? ???????????? ???????????????????? ???? ???????????????????? ????????????????, $N.", 0),
(10978, 'ruRU', "????????????, ?????????????? ?????????? ???????? ???????????????? ?????????????????", 0),
(10980, 'ruRU', "<???????????? ?? ???????????????? ?????????????? ???? ??????.>$B$B?????????????? ???? ???????? ?????????? ??????????-???????? ???????????????????? ?? ???????????", 0),
(10981, 'ruRU', "?????????? ???????????????????? ?????????? ???????? ?????????? ?????????????? ?? ???????????????????? ?? ????????????, $N. ???????? ???? ???? ?????????????? ?????????????????????????? ?? ?????????????? ???????????? ???????????? ?????????????? ?? ?????????????????? ????????, ?? ???????? ?????????????????? ????????. ?????????????? ?????? ???????? ???????????? ??????????????, ?? ?? ?????? ????????????.", 0),
(10985, 'ruRU', "<??????'???? ???????????????????????? ???????? ??????????????????????.>", 0),
(10987, 'ruRU', "???? $G????????????:??????????????; ???????????????????????????", 0),
(10988, 'ruRU', "???? $G??????????:??????????; ???????????????????? ???????????????????? ?????????? ????????????, ?????????? ?? ?????? ???? ?????????????????????????", 0),
(10990, 'ruRU', "<????????????-????????????????????????, ??????????????, ?????????????? ?????????????? ??????????????.>$B$B?????????????? ???? ???????? ???????????????????? ???????????????? ???????? ?????????", 0),
(10991, 'ruRU', "<?? ?????????? ?????????? ?????????????? ?????????????? ???? ??????????????????????????.>$B$B?? ???????? ???????? ???????????????? ?????????????", 0),
(10992, 'ruRU', "???? $G??????????????:????????????????; ???????????? ?????????????? ?? ?????? ?????????????????", 0),
(10993, 'ruRU', "?? ???????? ???????????????? ???? ??????????????.", 0),
(10994, 'ruRU', "?????????????? ?????? ???????????? ?????????? ???????????? ?????????????", 0);

--
-- END UPDATING QUERIES
--
UPDATE version_db_world SET date = '2022_03_08_02' WHERE sql_rev = '1646741507286965931';
COMMIT;
END //
DELIMITER ;
CALL updateDb();
DROP PROCEDURE IF EXISTS `updateDb`;
