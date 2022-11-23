/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : share

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 21/11/2022 11:04:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bonus_event_log
-- ----------------------------
DROP TABLE IF EXISTS `bonus_event_log`;
CREATE TABLE `bonus_event_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `value` int DEFAULT NULL COMMENT '积分操作值',
  `event` varchar(20) DEFAULT NULL COMMENT '发生的事件',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `fk_bonus_event_log_user1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='积分变更记录表';

-- ----------------------------
-- Records of bonus_event_log
-- ----------------------------
BEGIN;
INSERT INTO `bonus_event_log` VALUES (1, 2, 50, 'CONTRIBUTE', '2022-10-06 08:24:07', '投稿加积分');
INSERT INTO `bonus_event_log` VALUES (2, 2, 50, 'CONTRIBUTE', '2022-10-06 09:54:39', '投稿加积分');
INSERT INTO `bonus_event_log` VALUES (3, 2, 50, 'CONTRIBUTE', '2022-10-06 09:55:22', '投稿加积分');
INSERT INTO `bonus_event_log` VALUES (4, 4, 50, 'CONTRIBUTE', '2022-10-06 11:09:49', '投稿加积分');
INSERT INTO `bonus_event_log` VALUES (5, 4, 50, 'CONTRIBUTE', '2022-10-06 11:48:09', '投稿加积分');
COMMIT;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequence` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for mid_user_share
-- ----------------------------
DROP TABLE IF EXISTS `mid_user_share`;
CREATE TABLE `mid_user_share` (
  `id` int NOT NULL AUTO_INCREMENT,
  `share_id` int NOT NULL COMMENT 'share.id',
  `user_id` int NOT NULL COMMENT 'user.id',
  PRIMARY KEY (`id`),
  KEY `fk_mid_user_share_share1_idx` (`share_id`),
  KEY `fk_mid_user_share_user1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户-分享中间表【描述用户购买的分享】';

-- ----------------------------
-- Records of mid_user_share
-- ----------------------------
BEGIN;
INSERT INTO `mid_user_share` VALUES (1, 1, 1);
INSERT INTO `mid_user_share` VALUES (2, 2, 1);
INSERT INTO `mid_user_share` VALUES (3, 3, 1);
INSERT INTO `mid_user_share` VALUES (4, 4, 1);
INSERT INTO `mid_user_share` VALUES (5, 5, 1);
INSERT INTO `mid_user_share` VALUES (6, 6, 1);
INSERT INTO `mid_user_share` VALUES (7, 7, 1);
INSERT INTO `mid_user_share` VALUES (8, 8, 1);
INSERT INTO `mid_user_share` VALUES (9, 9, 1);
INSERT INTO `mid_user_share` VALUES (10, 10, 1);
INSERT INTO `mid_user_share` VALUES (11, 11, 1);
INSERT INTO `mid_user_share` VALUES (12, 12, 1);
INSERT INTO `mid_user_share` VALUES (13, 13, 1);
INSERT INTO `mid_user_share` VALUES (14, 14, 2);
COMMIT;

-- ----------------------------
-- Table structure for my_table
-- ----------------------------
DROP TABLE IF EXISTS `my_table`;
CREATE TABLE `my_table` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `email` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `username` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `gendar` tinyint NOT NULL COMMENT '性别',
  `address` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'address',
  `school` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT '学校',
  `major` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT '专业',
  `song` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT '喜欢的歌曲',
  `homepage` varchar(256) COLLATE utf8mb4_general_ci NOT NULL COMMENT '个人主页',
  `create_time` datetime NOT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='自动生成的表';

-- ----------------------------
-- Records of my_table
-- ----------------------------
BEGIN;
INSERT INTO `my_table` VALUES (1, '15618836788', 'dan.effertz@yahoo.com', 'bXbLl', '顾聪健', 0, '福州', '上海外国语大学', '大数据科学与技术', '演员', 'www.sharell-swift.com', '2022-05-28 21:04:54');
INSERT INTO `my_table` VALUES (2, '15843659690', 'romelia.wisoky@gmail.com', 'dhaey', '陶聪健', 1, '潍坊', '重庆三峡学院', '计算机科学与技术', '光阴的故事', 'www.aurelio-mitchell.org', '2022-10-01 18:30:03');
INSERT INTO `my_table` VALUES (3, '15351302656', 'li.rodriguez@gmail.com', '5bQoM', '黄浩轩', 0, '济南', '天津理工大学', '计算机科学与技术', '勇气', 'www.grady-hermiston.co', '2022-10-14 19:11:23');
INSERT INTO `my_table` VALUES (4, '15787931776', 'kimberlie.howe@yahoo.com', '7o', '姜瑾瑜', 0, '胶州', '重庆大学', '大数据科学与技术', '火红的萨日朗', 'www.domitila-goodwin.name', '2022-02-19 08:03:25');
INSERT INTO `my_table` VALUES (5, '17128734221', 'irmgard.wuckert@yahoo.com', '0al', '尹擎宇', 1, '义乌', '天津科技大学', '大数据科学与技术', '稻香', 'www.dewey-ferry.com', '2022-07-27 15:33:26');
INSERT INTO `my_table` VALUES (6, '15648269327', 'kyle.anderson@hotmail.com', 'T7U', '谢黎昕', 1, '清远', '海南大学', '计算机科学与技术', '反方向的钟', 'www.kathe-mcglynn.net', '2022-07-12 02:19:42');
INSERT INTO `my_table` VALUES (7, '17806153483', 'lanie.stracke@yahoo.com', 'QpROO', '萧泽洋', 1, '连云港', '安徽大学', '计算机科学与技术', '火红的萨日朗', 'www.rudolf-hyatt.com', '2022-02-22 14:17:05');
INSERT INTO `my_table` VALUES (8, '14717456455', 'myriam.rice@yahoo.com', 'QQ1Y', '沈晓啸', 1, '金昌', '内蒙古大学', '计算机科学与技术', '烟花易冷', 'www.julian-balistreri.info', '2022-02-21 06:23:34');
INSERT INTO `my_table` VALUES (9, '17269584604', 'derrick.ryan@gmail.com', '83it', '万晓啸', 1, '海门', '湖北民族学院', '计算机科学与技术', '本草纲目', 'www.herschel-baumbach.biz', '2022-08-14 23:17:51');
INSERT INTO `my_table` VALUES (10, '15091755154', 'corrine.wiegand@hotmail.com', 'vnN', '郑雨泽', 1, '湛江', '烟台大学', '大数据科学与技术', '暖暖', 'www.winford-reynolds.info', '2022-02-08 22:32:13');
INSERT INTO `my_table` VALUES (11, '15375268641', 'richard.watsica@gmail.com', 'UyTxx', '赖楷瑞', 0, '桂林', '广西中医学院', '计算机科学与技术', '坏女孩', 'www.mckinley-jakubowski.co', '2022-12-10 15:08:48');
INSERT INTO `my_table` VALUES (12, '17346346104', 'mercedez.witting@hotmail.com', '35pN', '汪思源', 1, '常州', '武汉工业学院', '计算机科学与技术', '盛夏', 'www.herschel-fadel.net', '2022-11-09 02:38:39');
INSERT INTO `my_table` VALUES (13, '17221254478', 'lamar.bailey@gmail.com', 'z3e8u', '徐明杰', 1, '临沂', '中山大学', '计算机科学与技术', '勇气', 'www.soo-ohara.co', '2022-11-29 21:23:01');
INSERT INTO `my_table` VALUES (14, '17756623198', 'trinidad.vandervort@gmail.com', '0Vtg', '夏峻熙', 1, '长治', '嘉兴学院', '大数据科学与技术', '像我这样的人', 'www.jerrell-dicki.info', '2022-12-14 09:47:44');
INSERT INTO `my_table` VALUES (15, '17693320693', 'carson.graham@yahoo.com', 'f5pK', '董嘉熙', 0, '韶关', '湖南农业大学', '大数据科学与技术', '勇气', 'www.cary-lockman.net', '2022-07-16 08:13:38');
INSERT INTO `my_table` VALUES (16, '15501289749', 'margery.tremblay@gmail.com', 'ffP7', '孙睿渊', 1, '德州', '湖南科技大学', '大数据科学与技术', '勇气', 'www.adolfo-considine.biz', '2022-06-08 19:29:40');
INSERT INTO `my_table` VALUES (17, '17118988492', 'anastasia.reichel@yahoo.com', '3C', '钟晟睿', 0, '九江', '中国计量学院', '大数据科学与技术', '模特', 'www.dominique-will.name', '2022-04-07 20:58:26');
INSERT INTO `my_table` VALUES (18, '15077168718', 'raguel.jerde@yahoo.com', 'xy', '徐智辉', 1, '海口', '中央民族大学', '大数据科学与技术', '火红的萨日朗', 'www.prince-bartoletti.co', '2022-07-18 00:08:55');
INSERT INTO `my_table` VALUES (19, '15833371237', 'aliza.prohaska@gmail.com', 'U2Ohs', '龙弘文', 1, '吉林', '华东理工大学', '大数据科学与技术', '漠河舞厅', 'www.dawna-denesik.biz', '2022-10-26 16:00:36');
INSERT INTO `my_table` VALUES (20, '15608083529', 'alessandra.schulist@yahoo.com', 'uCNNr', '金潇然', 1, '牡丹江', '广西师范学院', '大数据科学与技术', '东北民谣', 'www.dan-mcclure.co', '2022-06-25 11:43:06');
INSERT INTO `my_table` VALUES (21, '17798345000', 'marva.brakus@gmail.com', '2NV1', '叶子涵', 0, '长沙', '华北电力大学', '计算机科学与技术', '发如雪', 'www.deandra-will.name', '2022-04-18 09:47:20');
INSERT INTO `my_table` VALUES (22, '15105346020', 'gloria.aufderhar@hotmail.com', '7p', '洪懿轩', 1, '玉溪', '上海音乐学院', '计算机科学与技术', '答案', 'www.jamel-blanda.io', '2022-12-05 01:24:59');
INSERT INTO `my_table` VALUES (23, '15209917925', 'adam.schmitt@yahoo.com', 'mVt', '马立果', 1, '广州', '中国药科大学', '大数据科学与技术', '青花瓷', 'www.tressie-ondricka.io', '2022-09-23 14:33:58');
INSERT INTO `my_table` VALUES (24, '15199982425', 'neomi.mitchell@gmail.com', '0Xz2x', '江鹭洋', 1, '焦作', '北京大学', '计算机科学与技术', '演员', 'www.delinda-muller.net', '2022-05-09 05:48:27');
INSERT INTO `my_table` VALUES (25, '14510707710', 'alejandrina.jast@hotmail.com', '2zq0L', '严健雄', 1, '台州', '武汉科技大学', '计算机科学与技术', '光阴的故事', 'www.shawana-rogahn.io', '2022-03-31 14:32:03');
INSERT INTO `my_table` VALUES (26, '17689546362', 'jamel.barton@gmail.com', 'Kf', '朱乐驹', 0, '宜兴', '北京交通大学', '软件工程', '发如雪', 'www.porfirio-smitham.io', '2022-04-25 14:29:52');
INSERT INTO `my_table` VALUES (27, '17642934081', 'cleveland.beier@yahoo.com', 'Dpk', '刘哲瀚', 0, '宁波', '西南农业大学', '软件工程', '遇见', 'www.george-collins.org', '2022-08-12 02:21:02');
INSERT INTO `my_table` VALUES (28, '15372278122', 'toney.stracke@gmail.com', 'dO', '王昊焱', 0, '唐山', '嘉兴学院', '大数据科学与技术', '盛夏', 'www.kam-osinski.com', '2022-05-07 01:59:19');
INSERT INTO `my_table` VALUES (29, '14586418060', 'hans.bashirian@hotmail.com', '9p', '高昊焱', 0, '郑州', '同济大学', '计算机科学与技术', '花海', 'www.darell-haley.io', '2022-03-06 11:20:40');
INSERT INTO `my_table` VALUES (30, '17097231046', 'joi.kertzmann@yahoo.com', '8unhx', '覃思远', 1, '章丘', '浙江大学', '计算机科学与技术', '青花瓷', 'www.treena-davis.co', '2022-02-19 07:50:33');
INSERT INTO `my_table` VALUES (31, '15803529665', 'daniel.rippin@yahoo.com', 'Wr', '邹黎昕', 1, '河源', '北京师范大学', '大数据科学与技术', '一荤一素', 'www.werner-hirthe.org', '2022-08-07 23:54:26');
INSERT INTO `my_table` VALUES (32, '17025082947', 'astrid.renner@gmail.com', 'b8NX', '余晟睿', 1, '吉林', '中国计量学院', '软件工程', '手写的从前', 'www.carter-mclaughlin.com', '2022-12-08 05:17:11');
INSERT INTO `my_table` VALUES (33, '17682154045', 'yasmin.wisozk@hotmail.com', 'i3go', '苏雨泽', 1, '金昌', '大连大学', '软件工程', '青花瓷', 'www.haydee-schaden.io', '2022-06-27 14:04:31');
INSERT INTO `my_table` VALUES (34, '17072982517', 'tennille.kshlerin@gmail.com', 'biu', '董锦程', 1, '汕尾', '桂林电子工业学院', '大数据科学与技术', '青花瓷', 'www.valarie-mclaughlin.org', '2022-01-27 01:22:58');
INSERT INTO `my_table` VALUES (35, '15987525838', 'dalton.keeling@hotmail.com', 'u9', '石炎彬', 1, '开封', '汕头大学', '大数据科学与技术', '东北民谣', 'www.hal-ernser.org', '2022-08-10 10:24:53');
INSERT INTO `my_table` VALUES (36, '13067461334', 'dorcas.streich@gmail.com', 'JgSm', '郑文昊', 1, '岳阳', '浙江大学', '大数据科学与技术', '坏女孩', 'www.gilbert-damore.name', '2022-11-25 12:39:02');
INSERT INTO `my_table` VALUES (37, '15907976746', 'leandra.lesch@gmail.com', 'zhjZR', '姚胤祥', 1, '拉萨', '重庆三峡学院', '大数据科学与技术', '坏女孩', 'www.rosanne-okon.org', '2022-05-21 11:32:35');
INSERT INTO `my_table` VALUES (38, '15687010845', 'brett.mclaughlin@yahoo.com', 'ZNfLh', '张熠彤', 1, '烟台', '集美大学', '软件工程', '像我这样的人', 'www.rosalind-gerhold.org', '2022-09-11 07:50:32');
INSERT INTO `my_table` VALUES (39, '15631632078', 'darnell.rohan@hotmail.com', 'Rzi', '覃胤祥', 1, '郑州', '广东工业大学', '计算机科学与技术', '勇气', 'www.karl-green.net', '2022-10-25 22:35:00');
INSERT INTO `my_table` VALUES (40, '17340959677', 'breana.oconnell@gmail.com', '1ENqk', '邹峻熙', 0, '上海', '中国民用航空学院', '计算机科学与技术', '晴天', 'www.kareem-cremin.com', '2022-03-02 05:40:57');
INSERT INTO `my_table` VALUES (41, '15847256143', 'jules.reinger@yahoo.com', '02CWK', '武楷瑞', 0, '金昌', '上海对外贸易学院', '计算机科学与技术', '青花瓷', 'www.rob-moen.name', '2022-07-21 23:01:27');
INSERT INTO `my_table` VALUES (42, '17394614086', 'young.baumbach@gmail.com', 't5', '洪昊天', 1, '吉林', '太原理工大学', '大数据科学与技术', '无问', 'www.marisela-kirlin.io', '2022-09-18 04:17:44');
INSERT INTO `my_table` VALUES (43, '17287190097', 'tama.fay@gmail.com', 'P8VH', '熊炫明', 1, '库尔勒', '江南大学', '软件工程', '东北民谣', 'www.lakenya-thompson.com', '2022-03-03 08:11:55');
INSERT INTO `my_table` VALUES (44, '17150901441', 'mickey.cassin@yahoo.com', 'XM', '陶立果', 1, '济宁', '湖北美术学院', '大数据科学与技术', '童话', 'www.alethea-flatley.net', '2022-06-14 04:44:42');
INSERT INTO `my_table` VALUES (45, '15175522681', 'jarod.mckenzie@gmail.com', 'Wwpw0', '史哲瀚', 1, '衡水', '福建工程学院', '软件工程', '勇气', 'www.belkis-toy.info', '2022-04-05 12:06:05');
INSERT INTO `my_table` VALUES (46, '15633026668', 'coleman.lang@gmail.com', 'Q741', '武烨霖', 1, '江门', '山西中医学院', '软件工程', '烟花易冷', 'www.desmond-pfannerstill.info', '2022-09-21 01:45:36');
INSERT INTO `my_table` VALUES (47, '15321853219', 'normand.walter@yahoo.com', '0b', '龚明辉', 1, '鞍山', '江西理工大学', '软件工程', '一荤一素', 'www.hoyt-gottlieb.name', '2022-07-21 21:52:27');
INSERT INTO `my_table` VALUES (48, '15999679597', 'lou.fay@hotmail.com', 'i3a', '熊天磊', 1, '安阳', '浙江师范大学', '软件工程', '发如雪', 'www.leif-corwin.co', '2022-07-31 22:38:35');
INSERT INTO `my_table` VALUES (49, '15708269871', 'gregory.romaguera@yahoo.com', 'nZiy', '程烨霖', 1, '岳阳', '对外经济贸易大学', '软件工程', '本草纲目', 'www.young-kunde.net', '2022-06-16 06:52:53');
INSERT INTO `my_table` VALUES (50, '15868004776', 'sau.osinski@yahoo.com', 'EV', '薛晓啸', 1, '张家界', '辽宁工程技术大学', '计算机科学与技术', '反方向的钟', 'www.columbus-shanahan.io', '2022-10-01 06:32:08');
INSERT INTO `my_table` VALUES (51, '15969111677', 'cassidy.barrows@gmail.com', '5hN', '许烨伟', 1, '佛山', '中国人民武装警察部队学院', '大数据科学与技术', '手写的从前', 'www.svetlana-zemlak.net', '2022-07-06 10:40:48');
INSERT INTO `my_table` VALUES (52, '14538370204', 'eulah.mills@hotmail.com', 'kDeJa', '李建辉', 0, '西宁', '广西大学', '计算机科学与技术', '发如雪', 'www.lonnie-schneider.info', '2022-10-10 01:09:42');
INSERT INTO `my_table` VALUES (53, '17598557687', 'rebekah.gislason@yahoo.com', 'KRxOJ', '吕弘文', 0, '牡丹江', '东华大学', '软件工程', '一荤一素', 'www.ty-pacocha.name', '2022-02-17 21:22:38');
INSERT INTO `my_table` VALUES (54, '15934745008', 'willie.farrell@gmail.com', 'AzFwu', '何果', 0, '丽水', '华南农业大学', '大数据科学与技术', '晴天', 'www.jake-mayert.com', '2022-04-30 22:00:55');
INSERT INTO `my_table` VALUES (55, '17833288558', 'cary.howe@gmail.com', 'C68s', '江旭尧', 1, '岳阳', '山西师范大学', '软件工程', '无问', 'www.luis-crist.org', '2022-10-08 22:38:32');
INSERT INTO `my_table` VALUES (56, '15296666224', 'benito.wolf@hotmail.com', 'n33Vf', '林弘文', 1, '金华', '河南农业大学', '计算机科学与技术', '手写的从前', 'www.emanuel-bergstrom.biz', '2022-06-22 10:21:40');
INSERT INTO `my_table` VALUES (57, '15168060592', 'ariel.rosenbaum@yahoo.com', 'XFpk', '赖修洁', 1, '咸阳', '海南大学', '软件工程', '发如雪', 'www.virgilio-schmidt.info', '2022-07-07 11:53:32');
INSERT INTO `my_table` VALUES (58, '14548630646', 'ivelisse.schumm@hotmail.com', '249', '梁天翊', 1, '绍兴', '内蒙古农业大学', '大数据科学与技术', '坏女孩', 'www.markus-pollich.io', '2022-06-29 06:41:49');
INSERT INTO `my_table` VALUES (59, '14759979310', 'geraldo.ward@gmail.com', 'JbBX', '顾伟宸', 0, '郑州', '上海音乐学院', '计算机科学与技术', '晴天', 'www.graham-becker.co', '2022-03-23 16:45:33');
INSERT INTO `my_table` VALUES (60, '17174802644', 'king.metz@yahoo.com', 'm6FP', '蔡哲瀚', 0, '胶州', '南京农业大学', '大数据科学与技术', '无问', 'www.malcom-wiza.biz', '2022-11-25 04:01:08');
INSERT INTO `my_table` VALUES (61, '14598208085', 'idella.rippin@yahoo.com', 'PMNJ9', '何绍齐', 1, '德阳', '浙江工业大学', '大数据科学与技术', '一荤一素', 'www.johnetta-lindgren.net', '2022-05-19 03:43:54');
INSERT INTO `my_table` VALUES (62, '15524865974', 'cathy.jast@yahoo.com', 'heZO', '何展鹏', 1, '呼和浩特', '华中师范大学', '大数据科学与技术', '一荤一素', 'www.gilberte-kohler.io', '2022-11-25 15:44:00');
INSERT INTO `my_table` VALUES (63, '15856063944', 'raul.schmeler@hotmail.com', 'kP', '夏思聪', 1, '上海', '湖南大学', '大数据科学与技术', '花海', 'www.maryanna-conn.co', '2022-09-07 12:50:49');
INSERT INTO `my_table` VALUES (64, '17014768404', 'iluminada.ullrich@yahoo.com', 'LiViJ', '吴黎昕', 0, '德州', '沈阳大学', '计算机科学与技术', '暖暖', 'www.jonas-langworth.org', '2022-11-24 18:19:17');
INSERT INTO `my_table` VALUES (65, '15863779393', 'miguelina.mckenzie@gmail.com', 'irK', '顾彬', 1, '蓬莱', '中国海洋大学', '计算机科学与技术', '东北民谣', 'www.gisele-kreiger.co', '2022-04-01 15:20:13');
INSERT INTO `my_table` VALUES (66, '17335454089', 'lisha.brakus@yahoo.com', 'kf', '金文', 1, '长春', '东北大学', '计算机科学与技术', '火红的萨日朗', 'www.natacha-shields.com', '2022-01-13 23:50:23');
INSERT INTO `my_table` VALUES (67, '15053908013', 'alishia.parker@yahoo.com', '48aNQ', '侯智渊', 0, '汕头', '沈阳工业大学', '大数据科学与技术', '光阴的故事', 'www.rodrigo-turner.biz', '2022-02-23 08:15:31');
INSERT INTO `my_table` VALUES (68, '15857712369', 'isaac.hartmann@yahoo.com', 'I47v', '秦琪', 0, '渭南', '山西大学', '计算机科学与技术', '盛夏', 'www.marlana-marks.com', '2022-02-13 10:29:15');
INSERT INTO `my_table` VALUES (69, '18566252826', 'maurita.williamson@hotmail.com', 'fbK', '邱琪', 1, '徐州', '中山大学', '计算机科学与技术', '晴天', 'www.delpha-heathcote.co', '2022-01-09 15:53:54');
INSERT INTO `my_table` VALUES (70, '17643077014', 'mac.lakin@hotmail.com', 'T7', '徐志泽', 1, '嘉兴', '吉首大学', '软件工程', '光阴的故事', 'www.maranda-price.io', '2022-02-13 21:43:00');
INSERT INTO `my_table` VALUES (71, '14513221719', 'mckinley.stroman@yahoo.com', 'iq2', '方黎昕', 1, '吉林', '天津理工大学', '软件工程', '花海', 'www.pearly-harvey.com', '2022-05-21 11:23:08');
INSERT INTO `my_table` VALUES (72, '17321769432', 'aundrea.kutch@yahoo.com', 'Ee6Dy', '林熠彤', 0, '包头', '东北大学', '计算机科学与技术', '本草纲目', 'www.akilah-kozey.org', '2022-07-15 09:01:07');
INSERT INTO `my_table` VALUES (73, '15244826235', 'alane.weimann@hotmail.com', 'FrxKA', '胡航', 0, '莱芜', '湖北师范学院', '计算机科学与技术', '火红的萨日朗', 'www.blake-boyle.org', '2022-05-27 20:03:43');
INSERT INTO `my_table` VALUES (74, '18237086530', 'nelle.windler@yahoo.com', 'k4p', '段黎昕', 1, '武汉', '烟台大学', '大数据科学与技术', '童话', 'www.jamal-hermiston.info', '2022-09-30 14:37:04');
INSERT INTO `my_table` VALUES (75, '15023733932', 'albert.satterfield@gmail.com', '7UC', '顾致远', 1, '潮州', '福建农林大学', '大数据科学与技术', '火红的萨日朗', 'www.tawny-klocko.net', '2022-08-17 10:35:21');
INSERT INTO `my_table` VALUES (76, '17281675650', 'pamella.johnson@hotmail.com', 'ZZ', '崔弘文', 0, '惠州', '江西理工大学', '大数据科学与技术', '童话', 'www.bob-marquardt.net', '2022-09-08 17:54:12');
INSERT INTO `my_table` VALUES (77, '17583970116', 'christoper.hodkiewicz@yahoo.com', 'GH7Z', '姜博涛', 0, '张家港', '上海戏剧学院', '计算机科学与技术', '烟花易冷', 'www.gabriel-schulist.org', '2022-05-31 03:11:25');
INSERT INTO `my_table` VALUES (78, '17323879600', 'myron.rogahn@hotmail.com', 'OcY', '蒋楷瑞', 0, '安阳', '安徽理工大学', '软件工程', '一荤一素', 'www.sherri-harris.com', '2022-04-18 08:44:04');
INSERT INTO `my_table` VALUES (79, '17700209586', 'rich.becker@hotmail.com', '1SFO5', '段子轩', 1, '佛山', '沈阳工业大学', '软件工程', '无问', 'www.marcel-bartoletti.io', '2022-10-06 07:02:45');
INSERT INTO `my_table` VALUES (80, '17108508375', 'giovanni.crist@yahoo.com', 'Ss8', '朱鸿煊', 1, '丽水', '河南理工大学', '计算机科学与技术', '光阴的故事', 'www.mariann-daugherty.name', '2022-07-03 21:59:02');
INSERT INTO `my_table` VALUES (81, '15357664311', 'waylon.murphy@yahoo.com', 'cfJZQ', '陆胤祥', 1, '平顶山', '天津医科大学', '软件工程', '反方向的钟', 'www.ludivina-mohr.name', '2022-10-22 01:01:23');
INSERT INTO `my_table` VALUES (82, '13360266641', 'ona.bins@yahoo.com', 'zFFHf', '邱炎彬', 0, '金坛', '中北大学', '软件工程', '火红的萨日朗', 'www.luna-schultz.net', '2022-06-21 05:53:03');
INSERT INTO `my_table` VALUES (83, '15011592972', 'mirella.moore@hotmail.com', '55q', '韩瑞霖', 0, '鄂尔多斯', '华东理工大学', '大数据科学与技术', '花海', 'www.sheridan-muller.biz', '2022-10-11 06:40:34');
INSERT INTO `my_table` VALUES (84, '15167391170', 'arlette.ratke@hotmail.com', 'Qx73', '金浩轩', 1, '嘉峪关', '安徽师范大学', '大数据科学与技术', '暖暖', 'www.tod-hill.com', '2022-01-10 12:55:38');
INSERT INTO `my_table` VALUES (85, '14588515761', 'sammie.wehner@gmail.com', 'Gws', '吴越彬', 1, '韶关', '广西师范大学', '计算机科学与技术', '盛夏', 'www.celina-lindgren.com', '2022-01-21 17:16:54');
INSERT INTO `my_table` VALUES (86, '14792522661', 'cameron.jaskolski@yahoo.com', 'IWYY', '程天翊', 0, '肇庆', '河北理工大学', '软件工程', '兰亭序', 'www.tajuana-homenick.com', '2022-04-22 16:39:57');
INSERT INTO `my_table` VALUES (87, '17255499175', 'tyron.lesch@gmail.com', '4cM', '蔡苑博', 0, '茂名', '杭州大学', '软件工程', '一荤一素', 'www.drew-vonrueden.name', '2022-09-26 06:30:17');
INSERT INTO `my_table` VALUES (88, '14720848406', 'joline.mcclure@gmail.com', 'BezI', '李浩轩', 0, '云浮', '华北电力大学', '计算机科学与技术', '盛夏', 'www.denny-crona.com', '2022-08-09 20:32:19');
INSERT INTO `my_table` VALUES (89, '15374887143', 'yulanda.klocko@yahoo.com', 'a0', '江嘉熙', 0, '临汾', '南京农业大学', '大数据科学与技术', '发如雪', 'www.moises-koss.org', '2022-04-07 04:39:55');
INSERT INTO `my_table` VALUES (90, '15625283991', 'frank.blanda@yahoo.com', 'QX2sM', '杜胤祥', 1, '曲靖', '五邑大学', '软件工程', '晴天', 'www.evelynn-conroy.org', '2022-09-30 20:30:37');
INSERT INTO `my_table` VALUES (91, '15917168235', 'winona.barrows@hotmail.com', 'STt', '阎钰轩', 1, '湘潭', '安徽工程科技学院', '软件工程', '答案', 'www.brad-olson.name', '2022-01-29 13:19:46');
INSERT INTO `my_table` VALUES (92, '15136208459', 'janel.mitchell@yahoo.com', 'i4pv', '周越彬', 0, '丹东', '浙江科技学院', '软件工程', '兰亭序', 'www.tommy-kemmer.net', '2022-02-21 11:15:16');
INSERT INTO `my_table` VALUES (93, '15647685082', 'nikole.hickle@gmail.com', 'oh6LA', '萧果', 1, '武汉', '赤峰学院', '计算机科学与技术', '晴天', 'www.marg-mcdermott.biz', '2022-06-04 03:02:49');
INSERT INTO `my_table` VALUES (94, '17692197146', 'ahmed.padberg@gmail.com', '1cm', '邹立轩', 1, '芜湖', '河北师范大学', '计算机科学与技术', '东北民谣', 'www.arlena-ankunding.com', '2022-06-19 11:57:48');
INSERT INTO `my_table` VALUES (95, '17825936759', 'delmar.bednar@gmail.com', 'E3L', '蔡鹭洋', 1, '长沙', '同济大学', '计算机科学与技术', '手写的从前', 'www.camille-hoppe.org', '2022-05-19 01:57:08');
INSERT INTO `my_table` VALUES (96, '15604288502', 'madaline.gislason@yahoo.com', 'QzrPx', '邹鹏', 0, '常熟', '湖北工业大学', '计算机科学与技术', '手写的从前', 'www.hipolito-bernhard.io', '2022-06-21 13:08:03');
INSERT INTO `my_table` VALUES (97, '17594335939', 'teofila.metz@yahoo.com', 'OiA5', '郭钰轩', 1, '河源', '南昌工程学院', '大数据科学与技术', '漠河舞厅', 'www.rozanne-ward.name', '2022-02-06 05:48:04');
INSERT INTO `my_table` VALUES (98, '15692944319', 'neomi.boyer@hotmail.com', 'QK', '宋哲瀚', 1, '柳州', '广西工学院', '计算机科学与技术', '烟花易冷', 'www.rey-schiller.biz', '2022-03-27 14:40:05');
INSERT INTO `my_table` VALUES (99, '17530734382', 'rodrick.ohara@yahoo.com', 'nAp1', '余智辉', 0, '枣庄', '福建师范大学', '大数据科学与技术', '光阴的故事', 'www.chuck-kassulke.io', '2022-12-04 19:48:06');
INSERT INTO `my_table` VALUES (100, '14587421850', 'joie.armstrong@hotmail.com', 'KnU3f', '林雪松', 0, '江门', '南昌航空工业学院', '计算机科学与技术', '青花瓷', 'www.will-weber.co', '2022-08-25 00:20:50');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `show_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 0:否 1:是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` VALUES (1, '关注编程世界，发现更多精彩', 1, '2022-09-01 12:36:49');
INSERT INTO `notice` VALUES (2, 'Flutter 编程入门', 1, '2022-09-02 11:16:08');
INSERT INTO `notice` VALUES (3, '微服务的世界', 0, '2022-09-04 11:16:18');
COMMIT;

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '发布人id',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `is_original` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否原创 0:否 1:是',
  `author` varchar(45) NOT NULL DEFAULT '' COMMENT '作者',
  `cover` varchar(256) NOT NULL DEFAULT '' COMMENT '封面',
  `summary` varchar(256) NOT NULL DEFAULT '' COMMENT '概要信息',
  `price` int NOT NULL DEFAULT '0' COMMENT '价格（需要的积分）',
  `download_url` varchar(256) NOT NULL DEFAULT '' COMMENT '下载地址',
  `buy_count` int NOT NULL DEFAULT '0' COMMENT '下载数 ',
  `show_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 0:否 1:是',
  `audit_status` varchar(10) NOT NULL DEFAULT '0' COMMENT '审核状态 NOT_YET: 待审核 PASSED:审核通过 REJECTED:审核不通过',
  `reason` varchar(200) DEFAULT '' COMMENT '审核不通过原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分享表';

-- ----------------------------
-- Records of share
-- ----------------------------
BEGIN;
INSERT INTO `share` VALUES (1, 1, 'Spring Cloud Alibaba', '2020-10-15 21:13:44', '2020-10-15 21:13:48', 0, '阿里巴巴', 'https://img2.sycdn.imooc.com/szimg/5b3082da0001d7e905400300-360-202.jpg', 'SpringCloudAlibaba微服务全家桶系列组件，包含服务注册与发现Nacos、服务治理Sentinel、分布式事务Seata、消息队列RocketMQ等组件。', 30, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 5, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (2, 1, 'Go语言从入门到达人之路', '2020-10-15 17:02:06', '2020-10-15 17:02:08', 0, 'Google工程师', 'https://img1.sycdn.imooc.com/szimg/5cf47ccf0834940306000338-240-180.jpg', '从0开始搭建分布式爬虫，理解分布式系统设计思想。Go语言天生为云原生而生。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (3, 1, 'Spring Cloud分布式微服务实战', '2020-10-15 16:00:23', '2020-10-15 16:00:26', 0, '风间影月', 'https://img3.mukewang.com/szimg/5f583a2609dc33b412000676-360-202.png', '分布式/前后端分离/项目分层聚合 一体化开发门户平台＋媒体中心+运营中心3大业务平台', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (4, 1, '算法与数据结构', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 0, '算法爱好者', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/算法与数据结构.jpg', '数据结构是一种具有一定逻辑关系，在计算机中应用某种存储结构，并且封装了相应操作的数据元素集合。它包含三方面的内容，逻辑关系、存储关系及操作。', 5, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (5, 1, '微信小程序实战', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 0, 'Tencent', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/微信小程序.jpg', '小程序是一种新的开放能力，开发者可以快速地开发一个小程序。小程序可以在微信内被便捷地获取和传播，同时具有出色的使用体验。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (6, 1, '消息队列rabbitMQ', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 0, 'MQ社区', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/rabbitMQ.jpg', '消息（Message）是指在应用间传送的数据。消息可以非常简单，比如只包含文本字符串，也可以更复杂，可能包含嵌入对象。', 15, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (7, 1, 'Vue.js中文文档', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 0, '尤雨溪', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/Vue.jpg', 'Vue是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (8, 1, 'Spring Cloud Alibaba实战', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 0, '阿里巴巴', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/Spring Cloud Alibaba.jpg', 'Spring Cloud Alibaba 致力于提供微服务开发的一站式解决方案，方便开发者通过 Spring Cloud 编程模型轻松使用这些组件来开发分布式应用服务。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (9, 1, 'Python学习笔记', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 1, 'Python之父', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/Python.jpg', 'Python 是一种解释型、面向对象、动态数据类型的高级程序设计语言。Python 由 Guido van Rossum 于 1989 年底发明，第一个公开发行版发行于 1991 年。', 5, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (10, 1, 'Linux学习笔记', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 1, 'Linux之父', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/Linux.jpg', '一提到 Linux，许多人都会说到“自由”。 “自由”是指一台没有任何秘密的计算机，你可以从它那里了解一切，只要你用心的去寻找。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (11, 1, 'JavaScript学习笔记', '2020-10-01 17:19:56', '2020-10-01 17:19:58', 1, 'JS大神', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/JavaScript.jpg', 'JavaScript ( JS ) 是一种具有函数优先的轻量级，解释型或即时编译型的编程语言。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (12, 1, 'Java并发编程实战', '2020-09-29 16:14:21', '2020-09-29 16:14:24', 0, 'Java大神', 'https://coding.imooc.com/static/module/class/content/img/132/section2-1.png', '并发编程是Java 语言中最为晦涩的知识点，它涉及操作系统、内存、CPU、编程语言等多方面的基础能力，更为考验一个程序员的内功。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 20, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (13, 1, '微服务技术', '2020-09-29 12:35:16', '2020-09-29 12:35:20', 1, '佚名', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/share-app/Spring%20Cloud%20Alibaba.jpg', '从单体应用到微服务并不是一蹴而就的，这是一个逐渐演变的过程。', 20, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 30, 1, 'PASS', '通过审核');
INSERT INTO `share` VALUES (14, 2, '计算机基础', '2020-10-17 20:02:37', '2020-10-17 20:02:37', 1, 'mqxu', 'https://img2.sycdn.imooc.com/szimg/5b3082da0001d7e905400300-360-202.jpg', '计算机基础知识大全，包括计算机组成、Office、文件操作、网络基础等内容。', 5, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 5, 1, 'PASS', '过审');
INSERT INTO `share` VALUES (15, 2, '测试资源', '2020-10-17 20:42:13', '2020-10-17 20:42:13', 1, '陶然然', 'https://img3.sycdn.imooc.com/szimg/5b3082da0001d7e905400300-360-202.jpg', '测试资源', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (16, 2, 'HTTP协议', '2020-10-18 00:07:16', '2020-10-18 00:07:16', 0, 'mqxu', 'https://img2.sycdn.imooc.com/szimg/5d1032ab08719e0906000338-360-202.jpg', 'HTTP协议相关知识，了解HTTP请求、响应、状态码，学会处理各种网络请求。', 5, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (17, 2, 'JavaScript中的算法', '2020-10-18 10:59:09', '2020-10-18 10:59:09', 0, 'Lewis', 'https://img4.sycdn.imooc.com/szimg/5edf24fd081fde7906000338-360-202.jpg', '用JS语言解决LeetCode上的经典算法题，对每一道题都进行线上测试，每题都有时间/空间复杂度分析。结合前端实际开发情景，带你掌握数据结构与算法。', 15, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (18, 2, 'Node.js调试入门', '2020-10-18 11:38:10', '2020-10-18 11:38:10', 1, 'Lewis', 'https://img3.sycdn.imooc.com/5c3eaa0a08d7052706000338-360-202.jpg', '学会高效调试 Node.js 会让日常开发更高效，掌握JS全栈开发之道。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (19, 2, '软件测试进阶之路', '2020-10-18 11:39:58', '2020-10-18 11:39:58', 1, '风落几番', 'https://img3.sycdn.imooc.com/5c60f2e80984689c05400300-360-202.png', '新时代软件测试人员的职责、功能测试、性能测试等知识，让测试人员能更好的掌握学习路线。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (20, 2, 'Vue2.x 核心技术', '2020-10-18 11:41:05', '2020-10-18 11:41:05', 0, 'Brian', 'https://img3.sycdn.imooc.com/5c21e60d0822d58e06000338-360-202.jpg', '了解vue2.x的核心技术，建立前端组件化的思想，并学习Vue3组合式API及新特性。', 10, '链接: https://pan.baidu.com/s/1Hk9i9VOTz2eSuy8p-kFGrQ  密码: 5njn', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (136, 1, 'Solidity', '2022-12-12 20:07:07', '2022-10-02 02:30:09', 1, '龙鹏飞', 'www.elke-abbott.io', 'Hx', 1, 'www.efren-legros.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (137, 2, 'Haskell', '2022-08-03 01:44:26', '2022-07-22 17:42:59', 1, '胡文博', 'www.yolando-huel.co', 'Hx', 1, 'www.randell-mitchell.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (138, 1, 'Icon', '2022-10-09 01:18:54', '2022-01-31 07:57:24', 0, '潘炫明', 'www.chas-ernser.org', 'vsbW', 1, 'www.crista-osinski.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (139, 2, 'Swift', '2022-10-26 02:17:56', '2022-12-16 12:03:53', 0, '龚鹭洋', 'www.sal-wilkinson.io', 'bt', 0, 'www.lakeshia-halvorson.name', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (140, 2, 'Perl', '2022-07-03 13:19:53', '2022-12-02 21:54:23', 1, '赵旭尧', 'www.tonisha-yundt.co', 'zV', 1, 'www.riley-murray.info', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (141, 2, 'B4X', '2022-06-26 09:16:02', '2022-05-26 11:02:17', 1, '程浩然', 'www.concepcion-windler.biz', '7rvb', 0, 'www.junior-howe.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (142, 2, 'R', '2022-07-03 01:50:57', '2022-04-27 22:33:57', 0, '覃志强', 'www.kenyatta-abernathy.io', 'nkK', 0, 'www.lloyd-prosacco.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (143, 1, 'Scala', '2022-01-07 02:15:28', '2022-11-14 14:26:00', 0, '周风华', 'www.greg-hauck.net', 'Nu', 0, 'www.joel-waters.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (144, 1, 'Tcl', '2022-08-22 08:01:27', '2022-12-06 14:23:34', 1, '朱健雄', 'www.roberto-metz.com', 'qd', 1, 'www.angela-considine.com', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (145, 2, 'Pike', '2022-07-09 11:03:30', '2022-10-31 05:46:47', 1, '余鹏', 'www.brendon-price.net', '6M', 1, 'www.fae-herman.net', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (146, 1, 'C++', '2022-12-26 21:58:19', '2022-08-21 23:11:18', 1, '胡皓轩', 'www.jim-sipes.com', 'dJu', 0, 'www.del-jacobson.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (147, 1, 'Java', '2022-12-27 08:57:33', '2022-05-05 14:32:51', 1, '郭风华', 'www.edwardo-altenwerth.net', 'o0JXt', 0, 'www.vennie-welch.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (148, 1, 'Java', '2022-04-09 22:37:52', '2022-10-14 09:09:34', 0, '贺烨磊', 'www.jay-yost.info', 'j3Srf', 1, 'www.evonne-goyette.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (149, 1, 'cg', '2022-10-18 20:39:46', '2022-11-13 15:43:34', 1, '曾修杰', 'www.raleigh-cummerata.co', 'viqT', 1, 'www.galen-waters.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (150, 1, 'NATURAL', '2022-04-02 23:06:20', '2022-01-15 02:26:39', 0, '薛靖琪', 'www.son-kuhn.biz', 'Ck', 0, 'www.joetta-homenick.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (151, 2, 'C shell', '2022-05-01 19:36:24', '2022-02-20 15:59:37', 1, '万天磊', 'www.jonelle-mcglynn.org', 'c0Mt', 1, 'www.devin-fisher.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (152, 1, 'C++', '2022-01-28 19:46:25', '2022-07-29 03:49:28', 0, '韦哲瀚', 'www.sang-klocko.name', 'AGyg', 1, 'www.augustine-hickle.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (153, 2, 'OpenEdge ABL', '2022-05-06 08:26:36', '2022-09-23 08:05:50', 0, '薛昊焱', 'www.morton-murazik.biz', 'OO9Kw', 1, 'www.kirk-swift.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (154, 1, 'Solidity', '2022-04-19 15:41:39', '2022-09-16 16:56:02', 1, '孙泽洋', 'www.chuck-goodwin.biz', '6bIz', 0, 'www.elmer-kulas.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (155, 2, 'B4X', '2022-10-03 01:25:06', '2022-03-06 01:13:10', 1, '黎健柏', 'www.mariah-kessler.co', 'xFV', 1, 'www.ira-klein.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (156, 2, 'Racket', '2022-04-02 19:42:02', '2022-02-06 16:31:15', 1, '黎懿轩', 'www.jonnie-champlin.io', '9F', 0, 'www.elsie-romaguera.name', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (157, 2, 'Tcl', '2022-10-26 06:54:12', '2022-10-11 18:17:12', 1, '朱睿渊', 'www.jamie-bayer.io', '8uH0', 1, 'www.shane-effertz.com', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (158, 1, 'Korn shell', '2022-07-04 13:06:21', '2022-01-21 08:51:07', 0, '王博超', 'www.reuben-hahn.co', 'bo', 0, 'www.ronnie-boyer.info', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (159, 2, 'WebAssembly', '2022-09-12 15:43:21', '2022-06-02 01:22:47', 1, '熊修杰', 'www.lindsey-nienow.co', 'beS', 0, 'www.albertha-bergnaum.net', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (160, 1, 'Julia', '2022-11-05 05:14:34', '2022-01-08 06:28:18', 0, '莫峻熙', 'www.louie-auer.org', 's4u', 0, 'www.domenic-welch.info', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (161, 2, 'Pike', '2022-01-12 07:06:10', '2022-05-19 20:59:55', 1, '余浩然', 'www.zane-ferry.biz', 'NtPWB', 1, 'www.kendrick-gusikowski.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (162, 1, 'Vala/Genie', '2022-02-02 07:01:49', '2022-10-01 20:25:28', 1, '洪笑愚', 'www.aaron-heidenreich.net', 'gGLnD', 1, 'www.whitney-lubowitz.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (163, 1, 'Ladder Logic', '2022-08-13 10:49:16', '2022-08-16 13:44:50', 1, '洪昊然', 'www.alden-oconnell.com', '7ZshB', 0, 'www.lacey-becker.net', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (164, 2, 'B4X', '2022-04-05 12:22:53', '2022-10-17 23:30:59', 0, '徐子轩', 'www.emogene-bradtke.io', 'KmbhE', 0, 'www.wilburn-kertzmann.net', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (165, 1, 'Solidity', '2022-02-20 08:39:45', '2022-12-27 06:15:42', 1, '蔡航', 'www.carmon-altenwerth.biz', 'iL', 1, 'www.roland-damore.com', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (166, 1, 'LabVIEW', '2022-06-08 17:02:48', '2022-05-20 00:23:46', 0, '曹天宇', 'www.carli-kulas.biz', 'GwK', 1, 'www.sherly-mcglynn.org', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (167, 2, 'Perl', '2022-01-08 08:08:48', '2022-04-22 16:13:50', 1, '赵文', 'www.domingo-haag.com', 'hzZWr', 0, 'www.antonio-rolfson.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (168, 2, 'Lua', '2022-04-08 21:12:54', '2022-06-21 10:06:24', 0, '冯熠彤', 'www.paris-pouros.net', 'Zi', 1, 'www.karl-daniel.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (169, 1, 'C#', '2022-12-21 19:38:29', '2022-08-20 22:24:26', 0, '雷炫明', 'www.dwain-kutch.io', 'ZUHBY', 0, 'www.oswaldo-herzog.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (170, 1, 'cg', '2022-09-06 21:49:26', '2022-02-16 20:29:14', 0, '姜子轩', 'www.garry-trantow.name', 'pp', 0, 'www.barney-beatty.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (171, 1, 'Awk', '2022-08-02 00:59:47', '2022-03-09 04:29:58', 1, '薛笑愚', 'www.francoise-hessel.org', 'Aq7', 1, 'www.indira-hackett.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (172, 1, 'Inform', '2022-08-26 10:18:32', '2022-12-13 06:57:02', 0, '杜鸿煊', 'www.kendall-okuneva.info', 'Ix1uA', 0, 'www.lakiesha-runte.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (173, 1, 'D', '2022-07-24 06:58:30', '2022-12-01 00:12:35', 0, '钟晓博', 'www.dyan-senger.com', 'uL1Ot', 1, 'www.clair-deckow.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (174, 1, 'Ladder Logic', '2022-06-27 16:11:20', '2022-09-16 17:12:50', 0, '谭志泽', 'www.eleni-wisoky.net', 'M2', 0, 'www.arnetta-lynch.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (175, 1, 'D', '2022-05-22 09:15:09', '2022-03-31 03:47:43', 0, '宋鹏', 'www.pauline-koss.com', 'iQ', 0, 'www.tracy-kessler.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (176, 2, 'MQL5', '2022-09-15 16:03:29', '2022-01-05 00:06:48', 1, '金博涛', 'www.buck-orn.com', 'WbPtD', 0, 'www.clinton-kerluke.net', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (177, 1, 'J#', '2022-01-24 05:59:28', '2022-12-30 06:51:13', 1, '郑浩宇', 'www.marlene-gorczany.co', 'jdAW9', 1, 'www.anton-wisoky.org', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (178, 2, 'Ruby', '2022-06-30 06:07:13', '2022-04-27 12:37:12', 1, '孙靖琪', 'www.naida-fadel.biz', 'eegCr', 1, 'www.young-lueilwitz.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (179, 1, 'Ada', '2022-12-31 07:56:22', '2022-08-17 11:01:52', 0, '黄金鑫', 'www.christiane-wintheiser.net', 'mq', 0, 'www.rufina-white.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (180, 1, 'Q', '2022-11-25 15:46:17', '2022-11-01 11:32:46', 1, '雷耀杰', 'www.alonzo-rodriguez.net', '2m0fl', 0, 'www.hsiu-sporer.org', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (181, 1, 'Solidity', '2022-10-18 03:53:27', '2022-09-25 23:39:45', 0, '曹笑愚', 'www.senaida-senger.name', 'DC', 0, 'www.constance-casper.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (182, 1, 'SQL', '2022-05-24 07:01:43', '2022-11-18 01:30:11', 1, '杜晓啸', 'www.robby-douglas.name', '5mjs', 1, 'www.rosalie-turner.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (183, 1, 'OCaml', '2022-10-22 18:25:14', '2022-02-01 05:56:15', 1, '谢越泽', 'www.yi-franecki.org', 'mAWxH', 0, 'www.felix-waelchi.io', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (184, 1, 'MQL5', '2022-11-11 01:46:09', '2022-10-21 18:24:28', 0, '邓弘文', 'www.del-hermiston.org', '9eiMK', 1, 'www.alonso-kertzmann.info', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (185, 1, 'Inform', '2022-08-09 16:19:31', '2022-03-04 03:19:00', 0, '万志泽', 'www.art-baumbach.co', 'pSfD', 1, 'www.latashia-reilly.name', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (186, 1, 'R', '2022-08-30 05:05:25', '2022-01-30 01:38:17', 1, '郝鹏飞', 'www.bari-blanda.io', 'iR3n', 0, 'www.quinton-fay.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (187, 2, 'PILOT', '2022-09-06 11:53:09', '2022-10-04 05:59:49', 1, '谢浩宇', 'www.nella-hagenes.io', '84q', 1, 'www.tula-hegmann.name', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (188, 1, 'Small Basic', '2022-05-12 20:41:46', '2022-06-01 08:06:49', 0, '邹越彬', 'www.angeline-vonrueden.io', 'JsB', 1, 'www.mose-fay.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (189, 1, 'Korn shell', '2022-08-11 18:52:22', '2022-12-21 12:22:39', 1, '覃明', 'www.holley-murray.net', 'pQ', 0, 'www.mandi-auer.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (190, 1, 'Prolog', '2022-02-17 15:04:12', '2022-10-17 07:58:43', 0, '李越彬', 'www.colleen-bins.info', 'VC3', 0, 'www.cristopher-lockman.org', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (191, 1, 'Raku', '2022-01-22 12:41:43', '2022-04-29 01:00:45', 1, '曾烨磊', 'www.britt-harris.com', '463ar', 0, 'www.jamel-nicolas.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (192, 2, 'JavaScript', '2022-04-06 21:09:45', '2022-06-28 07:40:45', 1, '许浩轩', 'www.ma-feeney.info', 'daHF2', 1, 'www.ok-effertz.com', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (193, 1, 'cg', '2022-04-16 22:53:44', '2022-10-07 02:15:01', 1, '顾煜城', 'www.cheyenne-mertz.biz', '4gYh', 0, 'www.gerard-runolfsson.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (194, 1, 'MATLAB', '2022-01-04 12:38:52', '2022-06-22 05:59:00', 1, '潘弘文', 'www.joleen-quigley.co', 'Ic', 0, 'www.aliza-moore.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (195, 2, 'SAS', '2022-07-03 11:25:47', '2022-03-27 15:48:00', 0, '田振家', 'www.venita-fahey.biz', 'Tjy', 0, 'www.johnathon-greenfelder.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (196, 2, 'Ring', '2022-03-10 12:19:06', '2022-10-25 16:15:34', 0, '陆思淼', 'www.carter-ullrich.com', 'Sgq', 1, 'www.heidi-crona.name', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (197, 1, 'Verilog', '2022-05-30 12:04:58', '2022-11-27 13:54:38', 0, '钱靖琪', 'www.lavonna-hilpert.biz', 'zqpo', 1, 'www.norris-aufderhar.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (198, 1, 'Perl', '2022-11-06 17:32:02', '2022-07-14 21:18:46', 1, '严立轩', 'www.caryl-greenholt.info', 'vwpp', 0, 'www.willy-harvey.com', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (199, 1, 'Ring', '2022-04-05 03:13:57', '2022-05-02 23:54:47', 1, '高子骞', 'www.hershel-stoltenberg.org', 'YHRX', 0, 'www.arden-okeefe.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (200, 2, 'Scheme', '2022-08-20 19:10:14', '2022-11-01 16:37:26', 1, '邱烨霖', 'www.gema-murazik.net', '8h', 0, 'www.janeen-pagac.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (201, 2, 'Solidity', '2022-08-17 03:26:41', '2022-05-17 05:12:31', 0, '郑伟祺', 'www.emmy-mohr.io', 'azL51', 1, 'www.trevor-langworth.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (202, 1, 'Common Lisp', '2022-05-07 11:10:36', '2022-10-21 20:57:52', 1, '余文轩', 'www.dominique-mclaughlin.net', 'ULh', 1, 'www.eneida-hessel.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (203, 2, 'Haskell', '2022-11-27 18:49:30', '2022-01-18 23:55:37', 0, '严鹏飞', 'www.abel-carter.co', 'T0', 0, 'www.suzan-hettinger.org', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (204, 1, 'MATLAB', '2022-11-11 10:19:00', '2022-10-16 14:19:39', 1, '江立轩', 'www.rose-turcotte.name', '2njQV', 0, 'www.paulene-weimann.name', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (205, 2, 'Tcl', '2022-05-20 11:55:43', '2022-08-04 00:48:01', 1, '郝立辉', 'www.greg-mckenzie.co', 'GjFu', 0, 'www.lavern-gorczany.name', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (206, 1, 'Pike', '2022-06-18 06:04:05', '2022-02-13 04:10:17', 1, '崔博超', 'www.abdul-wilkinson.biz', 'NQ3a7', 0, 'www.oscar-schaefer.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (207, 2, 'Smalltalk', '2022-04-16 18:40:15', '2022-04-17 22:24:27', 1, '徐雨泽', 'www.deandre-heidenreich.com', '9XUn', 1, 'www.logan-sporer.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (208, 2, 'Prolog', '2022-05-04 14:25:44', '2022-06-11 15:36:41', 1, '邱越泽', 'www.ericka-reichel.com', 'bu3', 0, 'www.cecila-zulauf.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (209, 1, 'Forth', '2022-04-28 23:55:30', '2022-12-22 06:29:28', 1, '邓天翊', 'www.oda-hartmann.org', 'C5SaN', 1, 'www.curt-mertz.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (210, 1, 'Python', '2022-11-28 18:16:35', '2022-02-09 21:43:06', 0, '钱弘文', 'www.claudette-strosin.name', 'HH', 1, 'www.annabell-renner.name', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (211, 2, 'SQL', '2022-05-02 18:01:32', '2022-06-27 20:30:45', 1, '杨烨伟', 'www.gertie-kessler.io', 'Wyhb', 1, 'www.stephen-schmeler.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (212, 2, 'Verilog', '2022-07-17 07:08:57', '2022-09-08 08:44:18', 0, '袁梓晨', 'www.myron-bergnaum.name', 'BU', 0, 'www.robert-davis.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (213, 2, 'Python', '2022-02-16 07:21:11', '2022-07-15 16:11:20', 1, '段绍齐', 'www.dinah-stanton.name', 'DPes', 1, 'www.kathy-armstrong.org', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (214, 1, 'Lua', '2022-12-13 02:17:07', '2022-05-24 13:38:10', 0, '马晟睿', 'www.jordon-jacobs.info', 'oCb', 1, 'www.teddy-denesik.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (215, 1, 'PHP', '2022-02-05 06:03:46', '2022-04-07 06:24:51', 1, '程绍辉', 'www.rudolph-towne.info', '6d7k', 0, 'www.santina-boyle.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (216, 2, 'Lisp', '2022-02-24 00:00:45', '2022-01-10 16:23:51', 1, '唐炫明', 'www.marlin-walter.io', '2T7or', 1, 'www.karolyn-lebsack.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (217, 1, 'MQL5', '2022-08-17 09:24:57', '2022-05-05 11:52:09', 1, '叶聪健', 'www.tracey-dicki.org', 'Chg', 0, 'www.antoine-kertzmann.org', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (218, 1, 'PowerShell', '2022-12-24 15:36:14', '2022-07-11 00:43:24', 0, '夏文昊', 'www.wilfredo-jast.com', 'kz', 0, 'www.chelsea-ortiz.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (219, 1, 'Tcl', '2022-07-02 15:02:25', '2022-06-23 12:50:12', 0, '钱鹤轩', 'www.georgia-rohan.io', 'r32N6', 1, 'www.werner-schoen.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (220, 1, 'Dart', '2022-11-20 08:00:37', '2022-10-15 19:06:45', 1, '龚楷瑞', 'www.carolynn-schuster.net', 'D5s', 0, 'www.hayden-stroman.com', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (221, 1, 'Scratch', '2022-03-26 09:59:17', '2022-02-15 00:10:46', 0, '刘建辉', 'www.georgianna-tremblay.org', '5WfCA', 1, 'www.kali-jacobi.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (222, 1, 'Scratch', '2022-08-05 00:52:25', '2022-10-17 18:14:27', 0, '高博涛', 'www.gavin-okeefe.org', 'iRGt', 0, 'www.sharmaine-oreilly.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (223, 1, 'ActionScript', '2022-10-01 08:46:21', '2022-12-18 10:45:01', 1, '孟晋鹏', 'www.grover-schiller.org', 'xyneJ', 0, 'www.mariano-fisher.net', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (224, 1, 'JavaScript', '2022-05-10 23:04:19', '2022-11-17 10:44:50', 1, '程煜城', 'www.gaston-hessel.com', 'jecF', 1, 'www.rosina-larson.biz', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (225, 2, 'Transact-SQL', '2022-11-05 04:41:50', '2022-10-01 03:59:24', 0, '戴泽洋', 'www.arturo-altenwerth.name', 'C5fTe', 1, 'www.allen-littel.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (226, 2, 'Hack', '2022-01-12 04:12:19', '2022-12-27 00:52:27', 1, '吴文轩', 'www.dorthea-osinski.co', 'v3', 1, 'www.jed-rice.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (227, 2, 'Groovy', '2022-12-06 21:20:34', '2022-10-26 10:20:17', 1, '曾博超', 'www.lynwood-marvin.net', 'Uo', 1, 'www.ward-daniel.net', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (228, 1, 'Java', '2022-08-05 22:25:19', '2022-08-07 12:19:25', 0, '林文', 'www.idella-brakus.info', 'ni8qZ', 0, 'www.christopher-littel.co', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (229, 1, 'cg', '2022-06-06 11:10:21', '2022-04-08 08:47:09', 0, '刘立辉', 'www.freeman-kozey.org', 'djLq', 1, 'www.mohammad-weissnat.io', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (230, 2, 'Java', '2022-03-01 03:23:45', '2022-05-29 17:08:11', 1, '郭正豪', 'www.dustin-macgyver.name', 'xpT', 0, 'www.ruben-leuschke.info', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (231, 2, 'PL/I', '2022-02-23 00:14:32', '2022-09-12 10:57:14', 0, '邹思聪', 'www.michael-simonis.com', 'TCXg', 0, 'www.darwin-labadie.net', 0, 0, 'NOT_YET', '');
INSERT INTO `share` VALUES (232, 1, 'Bourne shell', '2022-08-31 19:08:14', '2022-11-24 03:06:47', 1, '罗擎苍', 'www.deshawn-pfeffer.co', '0iYKS', 0, 'www.samuel-hackett.biz', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (233, 2, 'ML', '2022-09-05 02:31:23', '2022-11-25 00:46:39', 0, '于思淼', 'www.blair-upton.com', 'Usiq', 1, 'www.antonia-raynor.co', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (234, 2, 'LabVIEW', '2022-07-27 11:21:16', '2022-03-29 00:51:10', 1, '董明', 'www.kip-kihn.name', 'mr5Ec', 1, 'www.mckinley-gleason.io', 0, 1, 'NOT_YET', '');
INSERT INTO `share` VALUES (235, 1, 'OpenCL', '2022-07-16 13:21:15', '2022-10-22 14:02:13', 0, '黎远航', 'www.dane-rutherford.net', 'JsS', 1, 'www.grace-legros.co', 0, 0, 'NOT_YET', '');
COMMIT;

-- ----------------------------
-- Table structure for t_mobile
-- ----------------------------
DROP TABLE IF EXISTS `t_mobile`;
CREATE TABLE `t_mobile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of t_mobile
-- ----------------------------
BEGIN;
INSERT INTO `t_mobile` VALUES (1, '成都', '华为', '华为mate30', 5999, '2019-10-12');
INSERT INTO `t_mobile` VALUES (2, '北京', '小米', '小米11青春版', 2999, '2018-05-04');
INSERT INTO `t_mobile` VALUES (3, '成都', '华为', '华为mate40', 6399, '2020-06-06');
INSERT INTO `t_mobile` VALUES (4, '广东', '苹果', '苹果13', 8999, '2021-12-12');
INSERT INTO `t_mobile` VALUES (5, '成都', '华为', '华为P30', 6999, '2020-10-05');
INSERT INTO `t_mobile` VALUES (6, '重庆', '红米', '红米K30', 1999, '2020-04-08');
INSERT INTO `t_mobile` VALUES (7, '成都', '华为', '华为P40', 6999, '2021-08-08');
INSERT INTO `t_mobile` VALUES (8, '深圳', '魅族', '魅族9 pro', 3299, '2019-07-08');
INSERT INTO `t_mobile` VALUES (9, '成都', '华为', '华为mate50', 7999, '2022-05-05');
INSERT INTO `t_mobile` VALUES (10, '上海', 'OPPO', 'OPPO A92s', 3699, '2019-03-04');
INSERT INTO `t_mobile` VALUES (11, '广东', '苹果', '苹果 14Pro', 9999, '2022-09-09');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `roles` varchar(100) NOT NULL DEFAULT '' COMMENT '角色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '头像地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `bonus` int NOT NULL DEFAULT '300' COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分享';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '13951905171', '123123', 'mqxu', 'admin', 'https://niit-soft.oss-cn-hangzhou.aliyuncs.com/avatar/me.png', '2022-09-03 11:23:50', '2022-09-03 12:23:50', 650);
INSERT INTO `user` VALUES (2, '13951901489', '123123', '陶然然', 'user', 'https://tva1.sinaimg.cn/large/e6c9d24egy1h5t7dsufq9j20ku0j9gno.jpg', '2022-09-03 12:23:50', '2022-09-03 16:23:50', 150);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
