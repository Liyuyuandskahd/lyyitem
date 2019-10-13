/*
 Navicat MySQL Data Transfer

 Source Server         : lyy
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : swtshopdata

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/10/2019 18:03:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int(6) NOT NULL,
  `uid` int(6) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar`  (
  `id` int(6) NOT NULL,
  `uid` int(6) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nowprice` float(10, 2) NOT NULL,
  `inventory` int(6) NOT NULL,
  `buynum` int(6) NOT NULL,
  `regtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopdata
-- ----------------------------
DROP TABLE IF EXISTS `shopdata`;
CREATE TABLE `shopdata`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `originalprice` float(10, 2) NOT NULL,
  `nowprice` float(10, 2) NOT NULL,
  `sell` int(6) NOT NULL,
  `comment` int(6) NOT NULL,
  `inventory` int(6) NULL DEFAULT NULL,
  `regtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopdata
-- ----------------------------
INSERT INTO `shopdata` VALUES (1, 'http://swt100.com/images/201909/thumb_img/591_thumb_G_1569565847416.jpg', '四川攀枝花 芒果干 60g/袋', 18.00, 15.00, 0, 0, 12, '2019-10-07 20:28:28');
INSERT INTO `shopdata` VALUES (2, 'http://swt100.com/images/201909/thumb_img/590_thumb_G_1569548118276.jpg', '新疆 火焰蜜哥哈密瓜 2个装（7-8斤）', 75.60, 63.00, 0, 0, 14, '2019-10-07 20:28:57');
INSERT INTO `shopdata` VALUES (3, 'http://swt100.com/images/201909/thumb_img/589_thumb_G_1569546228363.jpg', '四川剑阁县 红将军苹果 10斤/箱', 93.60, 78.00, 0, 0, 45, '2019-10-07 20:29:06');
INSERT INTO `shopdata` VALUES (4, 'http://swt100.com/images/201909/thumb_img/562_thumb_G_1569221907164.jpg', '新疆吐鲁番 三色葡萄干220g/罐*2', 76.80, 64.00, 0, 0, 36, '2019-10-07 20:29:14');
INSERT INTO `shopdata` VALUES (5, 'http://swt100.com/images/201909/thumb_img/556_thumb_G_1568971200996.jpg', '安徽黄山 毛峰（雨前三级 ） 50g/罐*2', 91.20, 76.00, 0, 0, 28, '2019-10-07 20:29:19');
INSERT INTO `shopdata` VALUES (6, 'http://swt100.com/images/201909/thumb_img/553_thumb_G_1568876918320.jpg', '福建平和 红肉柚 2个/箱', 26.40, 22.00, 19, 5, 45, '2019-10-07 20:29:28');
INSERT INTO `shopdata` VALUES (7, 'http://swt100.com/images/201909/thumb_img/552_thumb_G_1568790531394.jpg', '云南文山 三七粉 250g/罐', 79.20, 66.00, 0, 0, 14, '2019-10-07 20:29:37');
INSERT INTO `shopdata` VALUES (8, 'http://swt100.com/images/201909/thumb_img/551_thumb_G_1568790220453.jpg', '安徽亳州 红豆薏米芡实茶 320g/袋', 36.00, 30.00, 0, 0, 8, '2019-10-07 20:29:52');
INSERT INTO `shopdata` VALUES (9, 'http://swt100.com/images/201909/thumb_img/550_thumb_G_1568789576867.jpg', '青海 黑枸杞 50g/罐*2 礼盒装', 36.00, 30.00, 3, 0, 52, '2019-10-07 20:29:55');
INSERT INTO `shopdata` VALUES (10, 'http://swt100.com/images/201909/thumb_img/549_thumb_G_1568788356480.jpg', '陕西周至 徐香绿心猕猴桃 24枚/箱', 44.40, 37.00, 6, 0, 66, '2019-10-07 20:30:02');
INSERT INTO `shopdata` VALUES (11, 'http://swt100.com/images/201909/thumb_img/548_thumb_G_1568787897528.jpg', '甘肃天水 花牛苹果 5斤/箱', 33.12, 27.60, 4, 0, 125, '2019-10-07 20:30:06');
INSERT INTO `shopdata` VALUES (12, 'http://swt100.com/images/201909/thumb_img/547_thumb_G_1568787547869.jpg', '安徽砀山 大黄梨 5斤装/箱', 28.79, 24.00, 10, 2, 144, '2019-10-07 20:30:28');
INSERT INTO `shopdata` VALUES (13, 'http://swt100.com/images/201909/thumb_img/546_thumb_G_1568690536486.jpg', '好想你 红枣桂圆枸杞茶 195g/盒', 33.60, 28.00, 0, 0, 156, '2019-10-07 20:30:31');
INSERT INTO `shopdata` VALUES (14, 'http://swt100.com/images/201909/thumb_img/545_thumb_G_1568690311655.jpg', '好想你 枣恋 核桃夹心枣 218g/袋', 35.76, 29.80, 3, 0, 45, '2019-10-07 20:30:39');
INSERT INTO `shopdata` VALUES (15, 'http://swt100.com/images/201909/thumb_img/543_thumb_G_1568686072225.jpg', '重庆万州 青柠檬 2斤/箱', 12.96, 10.80, 1, 0, 154, '2019-10-07 20:30:43');
INSERT INTO `shopdata` VALUES (16, 'http://swt100.com/images/201909/thumb_img/542_thumb_G_1568685568125.jpg', '福建平和 三红蜜柚 2个/箱', 31.08, 25.90, 16, 2, 178, '2019-10-07 20:30:56');
INSERT INTO `shopdata` VALUES (17, 'http://swt100.com/images/201909/thumb_img/541_thumb_G_1568685385296.jpg', '福建平和 黄肉蜜柚 2个/箱', 28.67, 23.90, 7, 1, 89, '2019-10-07 20:31:04');
INSERT INTO `shopdata` VALUES (18, 'http://swt100.com/images/201909/thumb_img/540_thumb_G_1568685103886.jpg', '福建平和 白肉蜜柚 2个/箱', 23.88, 19.90, 3, 0, 66, '2019-10-07 20:31:18');
INSERT INTO `shopdata` VALUES (19, 'http://swt100.com/images/201909/thumb_img/539_thumb_G_1568614346559.jpg', '云南蒙自 石榴 个大饱满 品相如一 口感怡人 精品果', 79.20, 66.00, 1, 0, 74, '2019-10-07 20:31:22');
INSERT INTO `shopdata` VALUES (20, 'http://swt100.com/images/201909/thumb_img/538_thumb_G_1568614075836.jpg', '云南蒙自 石榴 个大饱满 品相如一 口感怡人 一级果', 79.20, 66.00, 0, 0, 89, '2019-10-07 20:31:47');
INSERT INTO `shopdata` VALUES (21, 'http://swt100.com/images/201909/thumb_img/537_thumb_G_1568281560077.jpg', '好想你 二级即食红枣  500g/袋', 105.60, 88.00, 0, 0, 45, '2019-10-07 20:31:55');
INSERT INTO `shopdata` VALUES (22, 'http://swt100.com/images/201909/thumb_img/536_thumb_G_1568281255206.jpg', '好想你 清菲菲（红枣湘莲银耳汤）364g', 142.79, 119.00, 0, 0, 22, '2019-10-07 20:32:10');
INSERT INTO `shopdata` VALUES (23, 'http://swt100.com/images/201909/thumb_img/535_thumb_G_1568280835045.jpg', '好想你 薄皮核桃 500g/袋', 58.80, 49.00, 0, 0, 10, '2019-10-07 20:32:13');
INSERT INTO `shopdata` VALUES (24, 'http://swt100.com/images/201909/thumb_img/534_thumb_G_1568260583570.jpg', '好想你 特级健康情枣 1kg/袋', 213.60, 178.00, 0, 0, 65, '2019-10-07 20:32:23');
INSERT INTO `shopdata` VALUES (25, 'http://swt100.com/images/201909/thumb_img/533_thumb_G_1568260222072.jpg', '好想你 特级健康情枣 998g/礼盒', 285.59, 238.00, 0, 0, 76, '2019-10-07 20:32:43');
INSERT INTO `shopdata` VALUES (26, 'http://swt100.com/images/201909/thumb_img/532_thumb_G_1568259050705.jpg', '好想你 混装枣片 360g/盒', 38.40, 32.00, 0, 0, 65, '2019-10-07 20:32:48');
INSERT INTO `shopdata` VALUES (27, 'http://swt100.com/images/201909/thumb_img/531_thumb_G_1568258221743.jpg', '好想你 红小脆 140g/袋', 38.40, 32.00, 0, 0, 12, '2019-10-07 20:32:56');
INSERT INTO `shopdata` VALUES (28, 'http://swt100.com/images/201909/thumb_img/530_thumb_G_1568173198146.jpg', '内蒙古赤峰 敖汉四色米 4kg/盒', 120.00, 100.00, 0, 0, 8, '2019-10-07 20:33:06');
INSERT INTO `shopdata` VALUES (29, 'http://swt100.com/images/201909/thumb_img/529_thumb_G_1568172599223.jpg', '内蒙古赤峰 敖汉杂粮 5kg/盒', 138.00, 115.00, 0, 0, 186, '2019-10-07 20:33:11');
INSERT INTO `shopdata` VALUES (30, 'http://swt100.com/images/201909/thumb_img/527_thumb_G_1567997625214.jpg', '内蒙古赤峰 敖汉小米 5kg/盒', 144.00, 120.00, 0, 0, 30, '2019-10-07 20:33:15');
INSERT INTO `shopdata` VALUES (31, 'http://swt100.com/images/201909/thumb_img/526_thumb_G_1567760042736.jpg', '内蒙古赤峰 敖汉荞面 4kg/盒', 90.00, 75.00, 3, 0, 15, '2019-10-07 20:33:22');
INSERT INTO `shopdata` VALUES (32, 'http://swt100.com/images/201909/thumb_img/525_thumb_G_1567995343538.jpg', '广西钦州市 荔枝醋 750ml/瓶', 33.60, 28.00, 0, 0, 20, '2019-10-07 20:33:44');
INSERT INTO `shopdata` VALUES (33, 'http://swt100.com/images/201909/thumb_img/522_thumb_G_1567489766209.jpg', '四川通江 青杠一级椴木银耳 250g精品礼盒', 513.60, 428.00, 0, 0, 52, '2019-10-07 20:33:49');
INSERT INTO `shopdata` VALUES (34, 'http://swt100.com/images/201909/thumb_img/521_thumb_G_1567489655598.jpg', '四川通江 青杠一级有机银耳 150g精品礼盒', 717.60, 598.00, 0, 0, 41, '2019-10-07 20:33:55');
INSERT INTO `shopdata` VALUES (35, 'http://swt100.com/images/201909/thumb_img/520_thumb_G_1567489484019.jpg', '四川通江 青杠有机银耳 75g/罐', 201.60, 168.00, 0, 0, 12, '2019-10-07 20:34:00');
INSERT INTO `shopdata` VALUES (36, 'http://swt100.com/images/201909/thumb_img/519_thumb_G_1567493427157.jpg', '四川通江 青杠椴木银耳  75g/罐', 153.60, 128.00, 0, 0, 32, '2019-10-07 20:34:12');
INSERT INTO `shopdata` VALUES (37, 'http://swt100.com/images/201909/thumb_img/518_thumb_G_1567478202098.jpg', '安徽六安 霍山铁皮枫斗 30g/礼盒', 720.00, 600.00, 0, 0, 78, '2019-10-07 20:34:34');
INSERT INTO `shopdata` VALUES (38, 'http://swt100.com/images/201909/thumb_img/517_thumb_G_1567478081621.jpg', '安徽六安 霍山铁皮枫斗 5g/袋', 60.00, 50.00, 0, 0, 56, '2019-10-07 20:34:38');
INSERT INTO `shopdata` VALUES (39, 'http://swt100.com/images/201909/thumb_img/516_thumb_G_1567477955075.jpg', '安徽六安 霍山米斛 5g/袋', 360.00, 300.00, 0, 0, 66, '2019-10-07 20:34:43');
INSERT INTO `shopdata` VALUES (40, 'http://swt100.com/images/201909/thumb_img/515_thumb_G_1567477625884.jpg', '安徽六安 铁皮石斛粉 30g/瓶', 360.00, 300.00, 0, 0, 13, '2019-10-07 20:34:48');
INSERT INTO `shopdata` VALUES (41, 'http://swt100.com/images/201909/thumb_img/514_thumb_G_1567477166249.jpg', '河南焦作 福元泽 怀菊花35g/罐', 47.87, 39.90, 0, 0, 10, '2019-10-07 20:34:53');
INSERT INTO `shopdata` VALUES (42, 'http://swt100.com/images/201909/thumb_img/513_thumb_G_1567476785620.jpg', '辽宁大连 獐子岛淡干辽参 有买就有送', 2025.60, 1688.00, 0, 0, 21, '2019-10-07 20:34:59');
INSERT INTO `shopdata` VALUES (43, 'http://swt100.com/images/201909/thumb_img/512_thumb_G_1567475529395.jpg', '甘肃积石山 特级花椒 50g+研磨器', 30.72, 25.60, 6, 0, 6, '2019-10-07 20:35:05');
INSERT INTO `shopdata` VALUES (44, 'http://swt100.com/images/201909/thumb_img/510_thumb_G_1567417250856.jpg', '江西赣州 红心樱花柚 精品礼盒2个装', 67.20, 56.00, 3, 0, 66, '2019-10-07 20:35:27');
INSERT INTO `shopdata` VALUES (45, 'http://swt100.com/images/201908/thumb_img/505_thumb_G_1567069149746.jpg', '黑龙江 雪中王 森林食品大礼包 8种菌菇', 278.40, 232.00, 0, 0, 54, '2019-10-07 20:35:32');
INSERT INTO `shopdata` VALUES (46, 'http://swt100.com/images/201908/thumb_img/504_thumb_G_1567068891882.jpg', '黑龙江 雪中王 聚福阖欢礼盒装 6种菌菇', 211.20, 176.00, 0, 0, 102, '2019-10-07 20:35:36');
INSERT INTO `shopdata` VALUES (47, 'http://swt100.com/images/201908/thumb_img/502_thumb_G_1567065515152.jpg', '陕西延安 五谷杂粮 随心搭配 4罐包邮', 12.00, 10.00, 0, 0, 113, '2019-10-07 20:35:42');
INSERT INTO `shopdata` VALUES (48, 'http://swt100.com/images/201908/thumb_img/500_thumb_G_1567064729883.jpg', '陕西延安 五谷杂粮 随心搭配 6袋包邮', 12.00, 10.00, 22, 0, 51, '2019-10-07 20:35:55');
INSERT INTO `shopdata` VALUES (49, 'http://swt100.com/images/201908/thumb_img/498_thumb_G_1566973543092.jpg', '黑龙江 雪中王 榛蘑150g*2袋装', 69.12, 57.60, 0, 0, 46, '2019-10-07 20:36:00');
INSERT INTO `shopdata` VALUES (50, 'http://swt100.com/images/201908/thumb_img/497_thumb_G_1566973424718.jpg', '黑龙江 雪中王 花菇150g*2袋装', 78.71, 65.60, 0, 0, 53, '2019-10-07 20:36:07');
INSERT INTO `shopdata` VALUES (51, 'http://swt100.com/images/201908/thumb_img/496_thumb_G_1566959588213.jpg', '江西赣州 红心樱花柚 礼盒2个装', 44.40, 37.00, 2, 0, 82, '2019-10-07 20:36:11');
INSERT INTO `shopdata` VALUES (52, 'http://swt100.com/images/201908/thumb_img/494_thumb_G_1566957029734.jpg', '黑龙江 雪中王 猴头菇150g*2袋装', 64.32, 53.60, 0, 0, 68, '2019-10-07 20:36:29');
INSERT INTO `shopdata` VALUES (53, 'http://swt100.com/images/201908/thumb_img/491_thumb_G_1566887676984.jpg', '黑龙江 雪中王 香菇150g*2袋装', 64.32, 53.60, 0, 0, 15, '2019-10-07 20:36:33');
INSERT INTO `shopdata` VALUES (54, 'http://swt100.com/images/201908/thumb_img/490_thumb_G_1566887543021.jpg', '黑龙江 雪中王 滑子菇150g*2袋装', 64.32, 53.60, 0, 0, 46, '2019-10-07 20:36:38');
INSERT INTO `shopdata` VALUES (55, 'http://swt100.com/images/201908/thumb_img/489_thumb_G_1566811054864.jpg', '河南焦作 福元泽 新鲜铁棍山药 5斤/盒', 141.60, 118.00, 0, 0, 37, '2019-10-07 20:36:43');
INSERT INTO `shopdata` VALUES (56, 'http://swt100.com/images/201908/thumb_img/488_thumb_G_1566810889173.jpg', '河南焦作 福元泽 枇杷膏 280g/罐', 130.79, 109.00, 0, 0, 20, '2019-10-07 20:36:53');
INSERT INTO `shopdata` VALUES (57, 'http://swt100.com/images/201908/thumb_img/487_thumb_G_1566809533629.jpg', '黑龙江 雪中王 秋木耳150g*2袋装', 69.12, 57.60, 0, 0, 9, '2019-10-07 20:36:59');
INSERT INTO `shopdata` VALUES (58, 'http://swt100.com/images/201908/thumb_img/486_thumb_G_1566805376148.jpg', '黑龙江 雪中王 黑木耳150g*2袋装', 59.52, 49.60, 1, 0, 8, '2019-10-07 20:37:04');
INSERT INTO `shopdata` VALUES (59, 'http://swt100.com/images/201908/thumb_img/483_thumb_G_1566785047572.jpg', '浙江 四明山【蜂巢蜜】多种蜜酿期', 69.60, 58.00, 0, 0, 6, '2019-10-07 20:37:09');
INSERT INTO `shopdata` VALUES (60, 'http://swt100.com/images/201908/thumb_img/482_thumb_G_1566547799335.jpg', '黑龙江穆棱 野生榛蘑 500g/袋', 79.20, 66.00, 16, 1, 8, '2019-10-07 20:37:17');
INSERT INTO `shopdata` VALUES (61, 'http://swt100.com/images/201908/thumb_img/481_thumb_G_1566547637758.jpg', '黑龙江穆棱 野生元磨 500g/袋', 79.20, 66.00, 0, 0, 11, '2019-10-07 20:37:22');
INSERT INTO `shopdata` VALUES (62, 'http://swt100.com/images/201908/thumb_img/480_thumb_G_1566547289415.jpg', '黑龙江穆棱 猴头菇 500g/袋', 72.00, 60.00, 0, 0, 16, '2019-10-07 20:37:26');
INSERT INTO `shopdata` VALUES (63, 'http://swt100.com/images/201908/thumb_img/477_thumb_G_1566531328899.jpg', '黑龙江穆棱 黑木耳 500g/袋', 79.20, 66.00, 0, 0, 12, '2019-10-07 20:37:32');
INSERT INTO `shopdata` VALUES (64, 'http://swt100.com/images/201908/thumb_img/476_thumb_G_1566530898538.jpg', '黑龙江穆棱 椴树蜜 500g/灌', 48.00, 40.00, 0, 0, 8, '2019-10-07 20:37:47');
INSERT INTO `shopdata` VALUES (65, 'http://swt100.com/images/201908/thumb_img/475_thumb_G_1566530756400.jpg', '黑龙江穆棱 百花蜜 500g/灌', 48.00, 40.00, 0, 0, 63, '2019-10-07 20:37:50');
INSERT INTO `shopdata` VALUES (66, 'http://swt100.com/images/201908/thumb_img/474_thumb_G_1566536288214.jpg', '吉林诗美乐 富硒黑木耳固体饮料90g/盒', 345.59, 288.00, 0, 0, 22, '2019-10-07 20:37:57');
INSERT INTO `shopdata` VALUES (67, 'http://swt100.com/images/201909/thumb_img/470_thumb_G_1568108900869.jpg', '吉林诗美乐 45版18年生晒野山参', 1440.00, 1200.00, 0, 0, 42, '2019-10-07 20:38:11');
INSERT INTO `shopdata` VALUES (68, 'http://swt100.com/images/201908/thumb_img/468_thumb_G_1566535981806.jpg', '吉林诗美乐 灵芝孢子粉100g/罐', 312.00, 260.00, 0, 0, 16, '2019-10-07 20:38:17');
INSERT INTO `shopdata` VALUES (69, 'http://swt100.com/images/201908/thumb_img/467_thumb_G_1566535731146.jpg', '吉林诗美乐 人参花100g/罐', 118.80, 99.00, 0, 0, 23, '2019-10-07 20:38:24');
INSERT INTO `shopdata` VALUES (70, 'http://swt100.com/images/201908/thumb_img/466_thumb_G_1566528020374.jpg', '江西修水 霞森三茶六礼 120g随手礼盒装', 201.60, 168.00, 0, 0, 158, '2019-10-07 20:38:29');
INSERT INTO `shopdata` VALUES (71, 'http://swt100.com/images/201909/thumb_img/464_thumb_G_1567562808656.jpg', '吉林诗美乐 60版20年生晒野山参', 2160.00, 1800.00, 0, 0, 20, '2019-10-07 20:38:35');
INSERT INTO `shopdata` VALUES (72, 'http://swt100.com/images/201908/thumb_img/463_thumb_G_1566464036142.jpg', '江西修水 霞森宁红茶 255g高档礼盒装', 441.59, 368.00, 0, 0, 106, '2019-10-07 20:38:49');
INSERT INTO `shopdata` VALUES (73, 'http://swt100.com/images/201908/thumb_img/462_thumb_G_1566463929354.jpg', '江西修水 霞森宁红茶 500g精品礼盒装', 825.60, 688.00, 0, 0, 45, '2019-10-07 20:38:56');
INSERT INTO `shopdata` VALUES (74, 'http://swt100.com/images/201908/thumb_img/461_thumb_G_1566463643351.jpg', '江西修水 霞森宁红茶 120g随手礼盒装', 201.60, 168.00, 0, 0, 43, '2019-10-07 20:39:06');
INSERT INTO `shopdata` VALUES (75, 'http://swt100.com/images/201908/thumb_img/460_thumb_G_1566463369848.jpg', '江西修水 霞森双井绿 120g随手礼盒装', 201.60, 168.00, 0, 0, 55, '2019-10-07 20:39:11');
INSERT INTO `shopdata` VALUES (76, 'http://swt100.com/images/201908/thumb_img/459_thumb_G_1566463201188.jpg', '江西修水 霞森双井绿 500g精品礼盒装', 825.60, 688.00, 0, 0, 118, '2019-10-07 20:39:26');
INSERT INTO `shopdata` VALUES (77, 'http://swt100.com/images/201908/thumb_img/458_thumb_G_1566462991052.jpg', '江西修水 霞森双井绿 255g高档礼盒装', 441.59, 368.00, 0, 0, 126, '2019-10-07 20:39:31');
INSERT INTO `shopdata` VALUES (78, 'http://swt100.com/images/201908/thumb_img/457_thumb_G_1566462676136.jpg', '江西修水 霞森庐山云雾 120g随手礼盒装', 201.60, 168.00, 0, 0, 56, '2019-10-07 20:39:35');
INSERT INTO `shopdata` VALUES (79, 'http://swt100.com/images/201908/thumb_img/456_thumb_G_1566374275047.jpg', '四川攀枝花 热农芒果 5斤/8斤礼盒装', 103.20, 86.00, 0, 0, 99, '2019-10-07 20:39:41');
INSERT INTO `shopdata` VALUES (80, 'http://swt100.com/images/201908/thumb_img/455_thumb_G_1566374085484.jpg', '四川攀枝花 椰香芒果 5斤/8斤装', 117.60, 98.00, 0, 0, 45, '2019-10-07 20:39:55');
INSERT INTO `shopdata` VALUES (81, 'http://swt100.com/images/201908/thumb_img/451_thumb_G_1566371659683.jpg', '云南澜沧 糯香小沱 4斤/10斤/16斤', 178.79, 149.00, 0, 0, 86, '2019-10-07 20:40:01');
INSERT INTO `shopdata` VALUES (82, 'http://swt100.com/images/201909/thumb_img/450_thumb_G_1567589064398.jpg', '【现货】鲜活大闸蟹10只装-江苏溱湖簖蟹送礼盒包装顺丰包邮现货坏包赔', 178.79, 149.00, 0, 0, 95, '2019-10-07 20:40:16');
INSERT INTO `shopdata` VALUES (83, 'http://swt100.com/images/201908/thumb_img/449_thumb_G_1566359181238.jpg', '云南澜沧 大雪山普洱茶 200g/饼', 228.00, 190.00, 0, 0, 35, '2019-10-07 20:40:19');
INSERT INTO `shopdata` VALUES (84, 'http://swt100.com/images/201908/thumb_img/448_thumb_G_1566358991969.jpg', '云南澜沧 那卡普洱茶 375g/饼', 331.20, 276.00, 0, 0, 48, '2019-10-07 20:40:24');
INSERT INTO `shopdata` VALUES (85, 'http://swt100.com/images/201908/thumb_img/447_thumb_G_1566358773934.jpg', '云南澜沧 景迈普洱茶 375g/饼', 336.00, 280.00, 0, 0, 68, '2019-10-07 20:40:27');
INSERT INTO `shopdata` VALUES (86, 'http://swt100.com/images/201908/thumb_img/443_thumb_G_1566295105215.jpg', '安徽六安 瓜片 500g/特级礼盒', 1668.00, 1390.00, 0, 0, 2, '2019-10-07 20:40:33');
INSERT INTO `shopdata` VALUES (87, 'http://swt100.com/images/201908/thumb_img/442_thumb_G_1566295004616.jpg', '安徽六安 瓜片  500g/一级礼盒', 720.00, 600.00, 0, 0, 4, '2019-10-07 20:40:37');
INSERT INTO `shopdata` VALUES (88, 'http://swt100.com/images/201908/thumb_img/441_thumb_G_1566294894423.jpg', '安徽六安 瓜片 500g/精品礼盒', 960.00, 800.00, 0, 0, 13, '2019-10-07 20:40:46');
INSERT INTO `shopdata` VALUES (89, 'http://swt100.com/images/201908/thumb_img/440_thumb_G_1566294116303.jpg', '河南封丘 振秀金银花 150g/红色礼盒', 134.00, 112.00, 0, 0, 6, '2019-10-07 20:40:51');
INSERT INTO `shopdata` VALUES (90, 'http://swt100.com/images/201908/thumb_img/439_thumb_G_1566294028547.jpg', '河南封丘 振秀金银花 120g/绿色礼盒', 115.19, 96.00, 0, 0, 15, '2019-10-07 20:40:57');
INSERT INTO `shopdata` VALUES (91, 'http://swt100.com/images/201908/thumb_img/438_thumb_G_1566293945536.jpg', '河南封丘 振秀金银花 120g/黄色礼盒', 118.80, 99.00, 0, 0, 126, '2019-10-07 20:41:03');
INSERT INTO `shopdata` VALUES (92, 'http://swt100.com/images/201908/thumb_img/437_thumb_G_1566293849945.jpg', '河南封丘 振秀金银花 40g/圆筒简', 38.40, 32.00, 0, 0, 46, '2019-10-07 20:41:09');
INSERT INTO `shopdata` VALUES (93, 'http://swt100.com/images/201908/thumb_img/436_thumb_G_1566293258367.jpg', '辽宁大连 盘锦富硒胚芽米 4kg/盒装', 115.19, 96.00, 0, 0, 20, '2019-10-07 20:41:20');
INSERT INTO `shopdata` VALUES (94, 'http://swt100.com/images/201908/thumb_img/435_thumb_G_1566293175707.jpg', '辽宁大连 御营东富硒香米 5kg/袋', 118.80, 99.00, 0, 0, 35, '2019-10-07 20:41:29');
INSERT INTO `shopdata` VALUES (95, 'http://swt100.com/images/201908/thumb_img/434_thumb_G_1566293026081.jpg', '辽宁大连 营东富硒大米 5kg/袋', 88.55, 73.80, 0, 0, 45, '2019-10-07 20:41:33');
INSERT INTO `shopdata` VALUES (96, 'http://swt100.com/images/201908/thumb_img/433_thumb_G_1566292884956.jpg', '辽宁大连 西丰柞木木耳 500g/盒装', 177.60, 148.00, 0, 0, 19, '2019-10-07 20:41:46');

-- ----------------------------
-- Table structure for smallimg
-- ----------------------------
DROP TABLE IF EXISTS `smallimg`;
CREATE TABLE `smallimg`  (
  `id` int(6) NOT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smallimg
-- ----------------------------
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856044.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856922.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856379.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856061.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565847154.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128932.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128337.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128859.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128139.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548118201.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238405.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238679.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238458.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238550.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546228852.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221907747.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928614.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928156.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928342.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928977.jpg');
INSERT INTO `smallimg` VALUES (5, 'http://swt100.com/images/201909/goods_img/556_P_1568971211475.jpg');
INSERT INTO `smallimg` VALUES (5, 'http://swt100.com/images/201909/goods_img/556_P_1568971200090.jpg');
INSERT INTO `smallimg` VALUES (5, 'http://swt100.com/images/201909/goods_img/556_P_1568971211655.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876918929.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928037.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928758.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928408.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928064.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540156.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540336.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540540.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540310.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790531262.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790232321.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790232960.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790231338.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790231074.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790220902.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789585435.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789585930.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789585204.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789584445.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789576738.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788366582.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788366319.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788356910.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788356910.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788366260.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/source_img/548_P_1568787908532.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/goods_img/548_P_1568787908242.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/goods_img/548_P_1568787908867.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/goods_img/548_P_1568787897667.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787559937.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787558855.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787558660.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787558759.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787547994.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545043.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545809.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545378.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545291.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690536715.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690321633.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690320941.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690320212.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690320919.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690311762.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686082718.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686082993.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686082284.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686072969.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685577135.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685577863.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685576531.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685576384.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685568554.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685568554.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404267.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404070.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404070.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404251.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685385998.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/source_img/540_P_1568685122696.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685122876.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685122566.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685103915.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685121881.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614357050.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614357564.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614346451.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614346451.jpg');
INSERT INTO `smallimg` VALUES (20, 'http://swt100.com/images/201909/goods_img/537_P_1568281569835.jpg');
INSERT INTO `smallimg` VALUES (20, 'http://swt100.com/images/201909/goods_img/537_P_1568281569879.jpg');
INSERT INTO `smallimg` VALUES (20, 'http://swt100.com/images/201909/goods_img/537_P_1568281569741.jpg');
INSERT INTO `smallimg` VALUES (21, 'http://swt100.com/images/201909/goods_img/536_P_1568281269872.jpg');
INSERT INTO `smallimg` VALUES (21, 'http://swt100.com/images/201909/goods_img/536_P_1568281269936.jpg');
INSERT INTO `smallimg` VALUES (21, 'http://swt100.com/images/201909/goods_img/536_P_1568281269390.jpg');
INSERT INTO `smallimg` VALUES (22, 'http://swt100.com/images/201909/goods_img/535_P_1568280846218.jpg');
INSERT INTO `smallimg` VALUES (22, 'http://swt100.com/images/201909/goods_img/535_P_1568280845038.jpg');
INSERT INTO `smallimg` VALUES (22, 'http://swt100.com/images/201909/goods_img/535_P_1568280845002.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592729.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592209.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592170.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592170.jpg');
INSERT INTO `smallimg` VALUES (24, 'http://swt100.com/images/201909/goods_img/533_P_1568260236164.jpg');
INSERT INTO `smallimg` VALUES (24, 'http://swt100.com/images/201909/goods_img/533_P_1568260236588.jpg');
INSERT INTO `smallimg` VALUES (24, 'http://swt100.com/images/201909/goods_img/533_P_1568260222971.jpg');
INSERT INTO `smallimg` VALUES (25, 'http://swt100.com/images/201909/goods_img/532_P_1568259073837.jpg');
INSERT INTO `smallimg` VALUES (25, 'http://swt100.com/images/201909/goods_img/532_P_1568259073879.jpg');
INSERT INTO `smallimg` VALUES (25, 'http://swt100.com/images/201909/goods_img/532_P_1568259073932.jpg');
INSERT INTO `smallimg` VALUES (26, 'http://swt100.com/images/201909/goods_img/531_P_1568258235353.jpg');
INSERT INTO `smallimg` VALUES (26, 'http://swt100.com/images/201909/goods_img/531_P_1568258235529.jpg');
INSERT INTO `smallimg` VALUES (26, 'http://swt100.com/images/201909/goods_img/531_P_1568258235188.jpg');
INSERT INTO `smallimg` VALUES (27, 'http://swt100.com/images/201909/goods_img/530_P_1568173208359.jpg');
INSERT INTO `smallimg` VALUES (27, 'http://swt100.com/images/201909/goods_img/530_P_1568173208469.jpg');
INSERT INTO `smallimg` VALUES (27, 'http://swt100.com/images/201909/goods_img/530_P_1568173208399.jpg');
INSERT INTO `smallimg` VALUES (28, 'http://swt100.com/images/201909/goods_img/529_P_1568172608681.jpg');
INSERT INTO `smallimg` VALUES (28, 'http://swt100.com/images/201909/goods_img/529_P_1568172608502.jpg');
INSERT INTO `smallimg` VALUES (28, 'http://swt100.com/images/201909/goods_img/529_P_1568172608616.jpg');
INSERT INTO `smallimg` VALUES (29, 'http://swt100.com/images/201909/goods_img/527_P_1567997625805.jpg');
INSERT INTO `smallimg` VALUES (29, 'http://swt100.com/images/201909/goods_img/527_P_1567997624235.jpg');
INSERT INTO `smallimg` VALUES (30, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (30, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (31, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (31, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (32, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (32, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856044.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856922.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856379.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565856061.jpg');
INSERT INTO `smallimg` VALUES (1, 'http://swt100.com/images/201909/goods_img/591_P_1569565847154.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128932.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128337.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128859.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548128139.jpg');
INSERT INTO `smallimg` VALUES (2, 'http://swt100.com/images/201909/goods_img/590_P_1569548118201.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238405.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238679.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238458.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546238550.jpg');
INSERT INTO `smallimg` VALUES (3, 'http://swt100.com/images/201909/goods_img/589_P_1569546228852.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221907747.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928614.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928156.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928342.jpg');
INSERT INTO `smallimg` VALUES (4, 'http://swt100.com/images/201909/goods_img/562_P_1569221928977.jpg');
INSERT INTO `smallimg` VALUES (5, 'http://swt100.com/images/201909/goods_img/556_P_1568971211475.jpg');
INSERT INTO `smallimg` VALUES (5, 'http://swt100.com/images/201909/goods_img/556_P_1568971200090.jpg');
INSERT INTO `smallimg` VALUES (5, 'http://swt100.com/images/201909/goods_img/556_P_1568971211655.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876918929.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928037.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928758.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928408.jpg');
INSERT INTO `smallimg` VALUES (6, 'http://swt100.com/images/201909/goods_img/553_P_1568876928064.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540156.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540336.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540540.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790540310.jpg');
INSERT INTO `smallimg` VALUES (7, 'http://swt100.com/images/201909/goods_img/552_P_1568790531262.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790232321.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790232960.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790231338.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790231074.jpg');
INSERT INTO `smallimg` VALUES (8, 'http://swt100.com/images/201909/goods_img/551_P_1568790220902.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789585435.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789585930.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789585204.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789584445.jpg');
INSERT INTO `smallimg` VALUES (9, 'http://swt100.com/images/201909/goods_img/550_P_1568789576738.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788366582.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788366319.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788356910.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788356910.jpg');
INSERT INTO `smallimg` VALUES (10, 'http://swt100.com/images/201909/goods_img/549_P_1568788366260.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/source_img/548_P_1568787908532.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/goods_img/548_P_1568787908242.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/goods_img/548_P_1568787908867.jpg');
INSERT INTO `smallimg` VALUES (11, 'http://swt100.com/images/201909/goods_img/548_P_1568787897667.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787559937.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787558855.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787558660.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787558759.jpg');
INSERT INTO `smallimg` VALUES (12, 'http://swt100.com/images/201909/goods_img/547_P_1568787547994.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545043.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545809.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545378.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690545291.jpg');
INSERT INTO `smallimg` VALUES (13, 'http://swt100.com/images/201909/goods_img/546_P_1568690536715.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690321633.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690320941.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690320212.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690320919.jpg');
INSERT INTO `smallimg` VALUES (14, 'http://swt100.com/images/201909/goods_img/545_P_1568690311762.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686082718.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686082993.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686082284.jpg');
INSERT INTO `smallimg` VALUES (15, 'http://swt100.com/images/201909/goods_img/543_P_1568686072969.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685577135.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685577863.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685576531.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685576384.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685568554.jpg');
INSERT INTO `smallimg` VALUES (16, 'http://swt100.com/images/201909/goods_img/542_P_1568685568554.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404267.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404070.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404070.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685404251.jpg');
INSERT INTO `smallimg` VALUES (17, 'http://swt100.com/images/201909/goods_img/541_P_1568685385998.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/source_img/540_P_1568685122696.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685122876.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685122566.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685103915.jpg');
INSERT INTO `smallimg` VALUES (18, 'http://swt100.com/images/201909/goods_img/540_P_1568685121881.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614357050.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614357564.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614346451.jpg');
INSERT INTO `smallimg` VALUES (19, 'http://swt100.com/images/201909/goods_img/539_P_1568614346451.jpg');
INSERT INTO `smallimg` VALUES (20, 'http://swt100.com/images/201909/goods_img/537_P_1568281569835.jpg');
INSERT INTO `smallimg` VALUES (20, 'http://swt100.com/images/201909/goods_img/537_P_1568281569879.jpg');
INSERT INTO `smallimg` VALUES (20, 'http://swt100.com/images/201909/goods_img/537_P_1568281569741.jpg');
INSERT INTO `smallimg` VALUES (21, 'http://swt100.com/images/201909/goods_img/536_P_1568281269872.jpg');
INSERT INTO `smallimg` VALUES (21, 'http://swt100.com/images/201909/goods_img/536_P_1568281269936.jpg');
INSERT INTO `smallimg` VALUES (21, 'http://swt100.com/images/201909/goods_img/536_P_1568281269390.jpg');
INSERT INTO `smallimg` VALUES (22, 'http://swt100.com/images/201909/goods_img/535_P_1568280846218.jpg');
INSERT INTO `smallimg` VALUES (22, 'http://swt100.com/images/201909/goods_img/535_P_1568280845038.jpg');
INSERT INTO `smallimg` VALUES (22, 'http://swt100.com/images/201909/goods_img/535_P_1568280845002.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592729.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592209.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592170.jpg');
INSERT INTO `smallimg` VALUES (23, 'http://swt100.com/images/201909/goods_img/534_P_1568260592170.jpg');
INSERT INTO `smallimg` VALUES (24, 'http://swt100.com/images/201909/goods_img/533_P_1568260236164.jpg');
INSERT INTO `smallimg` VALUES (24, 'http://swt100.com/images/201909/goods_img/533_P_1568260236588.jpg');
INSERT INTO `smallimg` VALUES (24, 'http://swt100.com/images/201909/goods_img/533_P_1568260222971.jpg');
INSERT INTO `smallimg` VALUES (25, 'http://swt100.com/images/201909/goods_img/532_P_1568259073837.jpg');
INSERT INTO `smallimg` VALUES (25, 'http://swt100.com/images/201909/goods_img/532_P_1568259073879.jpg');
INSERT INTO `smallimg` VALUES (25, 'http://swt100.com/images/201909/goods_img/532_P_1568259073932.jpg');
INSERT INTO `smallimg` VALUES (26, 'http://swt100.com/images/201909/goods_img/531_P_1568258235353.jpg');
INSERT INTO `smallimg` VALUES (26, 'http://swt100.com/images/201909/goods_img/531_P_1568258235529.jpg');
INSERT INTO `smallimg` VALUES (26, 'http://swt100.com/images/201909/goods_img/531_P_1568258235188.jpg');
INSERT INTO `smallimg` VALUES (27, 'http://swt100.com/images/201909/goods_img/530_P_1568173208359.jpg');
INSERT INTO `smallimg` VALUES (27, 'http://swt100.com/images/201909/goods_img/530_P_1568173208469.jpg');
INSERT INTO `smallimg` VALUES (27, 'http://swt100.com/images/201909/goods_img/530_P_1568173208399.jpg');
INSERT INTO `smallimg` VALUES (28, 'http://swt100.com/images/201909/goods_img/529_P_1568172608681.jpg');
INSERT INTO `smallimg` VALUES (28, 'http://swt100.com/images/201909/goods_img/529_P_1568172608502.jpg');
INSERT INTO `smallimg` VALUES (28, 'http://swt100.com/images/201909/goods_img/529_P_1568172608616.jpg');
INSERT INTO `smallimg` VALUES (29, 'http://swt100.com/images/201909/goods_img/527_P_1567997625805.jpg');
INSERT INTO `smallimg` VALUES (29, 'http://swt100.com/images/201909/goods_img/527_P_1567997624235.jpg');
INSERT INTO `smallimg` VALUES (30, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (30, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (31, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (31, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (32, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (32, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (33, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (33, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (34, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (34, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (35, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (35, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (36, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (36, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (37, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (37, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (38, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (38, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (39, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (39, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (40, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (40, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (41, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (41, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (42, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (42, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (43, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (43, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (44, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (44, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (45, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (45, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (46, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (46, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (47, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (47, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (48, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (48, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (49, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (49, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (50, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (50, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (51, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (51, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (52, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (52, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (53, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (53, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (54, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (54, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (55, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (55, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (56, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (56, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (57, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (57, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (58, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (58, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (59, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (59, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (60, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (60, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (61, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (61, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (62, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (62, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (63, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (63, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (64, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (64, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (65, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (65, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (66, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (66, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (67, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (67, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (68, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (68, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (69, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (69, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (70, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (70, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (71, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (71, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (72, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (72, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (73, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (73, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (74, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (74, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (75, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (75, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (76, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (76, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (77, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (77, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (78, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (78, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (79, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (79, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (80, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (80, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (81, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (81, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (82, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (82, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (83, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (83, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (84, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (84, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (85, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (85, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (86, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (86, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (87, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (87, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (88, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (88, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (89, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (89, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (90, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (90, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (91, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (91, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (92, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (92, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (93, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (93, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');
INSERT INTO `smallimg` VALUES (94, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (94, 'http://swt100.com/images/201909/goods_img/526_P_1567760050826.jpg');
INSERT INTO `smallimg` VALUES (95, 'http://swt100.com/images/201909/goods_img/526_P_1567760050847.jpg');
INSERT INTO `smallimg` VALUES (95, 'http://swt100.com/images/201909/goods_img/526_P_1567760050110.jpg');
INSERT INTO `smallimg` VALUES (96, 'http://swt100.com/images/201909/goods_img/525_P_1567757442041.jpg');
INSERT INTO `smallimg` VALUES (96, 'http://swt100.com/images/201909/goods_img/525_P_1567757442096.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `regtime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lyy123', '123456', '2019-10-12 17:18:47');
INSERT INTO `user` VALUES (2, 'lyy888', '123456', '2019-10-12 17:18:53');
INSERT INTO `user` VALUES (3, 'lyy666', '123456', '2019-10-12 17:19:16');
INSERT INTO `user` VALUES (4, 'lyy111', '88888888', '2019-10-12 17:23:46');

SET FOREIGN_KEY_CHECKS = 1;
