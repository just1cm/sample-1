/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : test_distribution_cart_db

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/11/2022 10:14:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart_item`;
CREATE TABLE `tb_cart_item` (
  `cart_id` int NOT NULL AUTO_INCREMENT COMMENT '测试购物项id',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '测试商品id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_cart_item
-- ----------------------------
BEGIN;
INSERT INTO `tb_cart_item` VALUES (1, 2022, '2022-10-25 15:03:30');
INSERT INTO `tb_cart_item` VALUES (2, 2025, '2022-11-23 10:14:27');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
