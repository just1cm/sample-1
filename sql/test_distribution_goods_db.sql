/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : test_distribution_goods_db

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/11/2022 10:14:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` int NOT NULL AUTO_INCREMENT COMMENT '测试商品id',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '测试商品名称',
  `goods_stock` int NOT NULL DEFAULT '0' COMMENT '测试商品库存',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2026 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
BEGIN;
INSERT INTO `tb_goods` VALUES (2022, 'Spring Cloud Alibaba 大型微服务项目实战（上册）', 1000);
INSERT INTO `tb_goods` VALUES (2025, 'Spring Cloud Alibaba 大型微服务项目实战（下册）', 1000);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
