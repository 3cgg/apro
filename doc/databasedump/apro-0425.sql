/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : apro

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2018-04-25 08:53:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_aboutus
-- ----------------------------
DROP TABLE IF EXISTS `t_aboutus`;
CREATE TABLE `t_aboutus` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `detail` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_aboutus
-- ----------------------------
INSERT INTO `t_aboutus` VALUES ('92a9e90a-7eac-43d3-bcf6-c8746158e3a1', 'SYS-ID', '2018-04-15 21:32:54', 'N', 'SYS-ID', '2018-04-15 21:33:50', '1', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; text-indent: 2em; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">吴江市文教牛津布厂简介 本厂成立于1985年，原属于校办企业，2003年转制为民营企业。现工厂座落在吴江市八坼民营开发区南刘路。本厂自1990年起生产牛津布，是中国大陆上最早专业生产牛津布的几家工厂之一，也是迄今为止这几家工厂中，唯一继续专业生产牛津布的工厂。目前织造设备有大龙头织机配备四喷、三喷、二喷、提花龙头机、双泵双喷龙头机、 多选纬剑杆机等，前道设备有落丝车、倍捻机、分条整经车等。自牛津布上市以来，本厂认定牛津布不放，一直专注于生产、研发各种规格的牛津布，在多年的实践过程中，开发了许多新产品，摸索了大量的经验和教训，提高了企业各方面的素质和实力。 本工厂一向秉承“宁精勿滥”的生产方针，现侧重于生产加捻、加重、加厚、加密箱包、帐篷牛津布，色织牛津布，特殊、特种规格的牛津布。产品覆盖涤纶弹丝150D、300D、450D、600D、900D、1200D、1500D、1800D、2400D 、3000D及涤纶长丝210D、420D、840D、1200D以及1680D、2520D加捻系列精品箱包布等各种规格平纹、斜纹、提花、色织条子、色织格子牛津布。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; text-indent: 2em; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">本厂年生产总值超亿元，常年供应牛津布面料，产品远销美国、马来西亚等国。我厂曾先后为康奈集团、上海互邦医疗器械有限公司、江苏鱼跃医疗等国内大型上市企业供应面料，以信誉达成合作、质量赢得市场，更被业内誉为“牛津布大王”。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; text-indent: 2em; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">牛津布——质地坚，价格低，品种多，色泽艳、用途广，现在越来越多的领域相继采用，如：箱包面料、里料，帐篷、遮阳伞、马衣、炮衣、睡袋、车用椅套、沙滩椅、气膜布料、广告布类、热涨管对垫等布料以及鞋子面料、里料，服装面料、里料等等。 本厂销售宗旨是“质量满意、价格合理、交货及时、信誉第一”，我们一贯以诚信的态度与新老客户合作，认真操作，急客户所急，想客户所想，友好合作，共同发展，欢迎海内外朋友来样定制，开发新品。</p><p><br/></p>');

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE `t_attachment` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO `t_attachment` VALUES ('1cf333fa-03f8-4408-a3d8-b3faeeceefc4', 'SYS-ID', '2018-04-16 21:06:06', 'N', 'SYS-ID', '2018-04-16 21:06:06', '0', null, '微信截图_20180414165121', '20180416/21/d06a2679-2a44-4cfa-9b28-880668be9be2.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('3961137c-0819-4d40-be05-ce25c315caa8', 'SYS-ID', '2018-04-15 21:39:56', 'N', 'SYS-ID', '2018-04-15 21:39:56', '0', null, 'banner2', '20180415/21/c86c16eb-ddc7-4cf6-8557-4ee95eaedf63.banner2.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6474bf85-cfca-4ded-8377-c8243c767172', 'SYS-ID', '2018-04-15 21:37:19', 'N', 'SYS-ID', '2018-04-15 21:37:19', '0', null, 'banner1', '20180415/21/807232dd-4336-4cef-9cbf-0f8f726c8d39.banner1.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('77fa942e-72dc-4e9c-985f-d37b51cbadaf', 'SYS-ID', '2018-04-16 21:14:14', 'N', 'SYS-ID', '2018-04-16 21:14:14', '0', null, 'blue', '20180416/21/59b050ff-71f6-4c01-ac77-d329307de9d0.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('82ace087-4154-47d0-9de0-56c9ca1d388c', 'SYS-ID', '2018-04-16 21:06:00', 'N', 'SYS-ID', '2018-04-16 21:06:00', '0', null, '微信截图_20180414165121', '20180416/21/4323d5c7-1dcd-4480-a724-5971a3be5cea.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('a3d0dc1c-8552-45fb-b838-b5148e442f49', 'SYS-ID', '2018-04-16 21:39:43', 'N', 'SYS-ID', '2018-04-16 21:39:43', '0', null, 'blue', '20180416/21/5090283a-b2ab-40cb-baf7-1817877dacd6.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('c2c42fe6-b4ba-4364-87c1-b2d783b94278', 'SYS-ID', '2018-04-14 20:55:38', 'N', 'SYS-ID', '2018-04-14 20:55:38', '0', null, '微信截图_20180414165121', '20180414/20/b06a6810-7e9d-4e96-9332-4407569ed942.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('c478741f-fa28-4430-bb15-03b3ccf66fbc', 'SYS-ID', '2018-04-16 21:05:34', 'N', 'SYS-ID', '2018-04-16 21:05:34', '0', null, '微信截图_20180414165121', '20180416/21/d109504f-c64d-4ace-8593-c9e615947c0b.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('c98c04f7-a9ea-4547-988e-36465aa5d1c0', 'SYS-ID', '2018-04-15 21:40:30', 'N', 'SYS-ID', '2018-04-15 21:40:30', '0', null, 'banner3', '20180415/21/b53c360b-245b-454a-b662-c1b0207ad931.banner3.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('d20f4a0a-5cdc-412e-ae90-83733e5ecef9', 'SYS-ID', '2018-04-16 21:05:39', 'N', 'SYS-ID', '2018-04-16 21:05:39', '0', null, '微信截图_20180414165121', '20180416/21/1bf901a3-b980-466b-a6d3-fdd2dba310e9.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('d62516db-81fa-4e7e-86fe-16b2a95fedf0', 'SYS-ID', '2018-04-16 21:05:48', 'N', 'SYS-ID', '2018-04-16 21:05:48', '0', null, '微信截图_20180414165121', '20180416/21/cdc66cc4-6951-412c-9f84-6752613b2ce7.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('e951bb57-7bf8-4636-b216-16db440d14d6', 'SYS-ID', '2018-04-16 21:37:52', 'N', 'SYS-ID', '2018-04-16 21:37:52', '0', null, 'blue', '20180416/21/93d50f93-e323-4dfa-8028-ae12df94096a.blue.jpg', 'jpg');

-- ----------------------------
-- Table structure for t_col
-- ----------------------------
DROP TABLE IF EXISTS `t_col`;
CREATE TABLE `t_col` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_col
-- ----------------------------
INSERT INTO `t_col` VALUES ('9f125702-5ab0-441f-95ed-386cd72b5cbc', 'SYS-ID', '2018-04-15 21:35:38', 'N', 'SYS-ID', '2018-04-15 21:35:38', '0', 'BANNER', '首页banner图', '首页banner图', '', '0');

-- ----------------------------
-- Table structure for t_col_content
-- ----------------------------
DROP TABLE IF EXISTS `t_col_content`;
CREATE TABLE `t_col_content` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `col_id` varchar(255) DEFAULT NULL,
  `content_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_col_content
-- ----------------------------
INSERT INTO `t_col_content` VALUES ('07cffd1b-3344-48ec-acb3-710416ec36b8', 'SYS-ID', '2018-04-15 21:38:35', 'N', 'SYS-ID', '2018-04-15 21:38:35', '0', '9f125702-5ab0-441f-95ed-386cd72b5cbc', '8a342a20-d504-4bcd-b143-45e2bb41b498');
INSERT INTO `t_col_content` VALUES ('a96543a4-a1e2-4363-bb82-9be25f125851', 'SYS-ID', '2018-04-15 21:41:04', 'N', 'SYS-ID', '2018-04-15 21:41:04', '0', '9f125702-5ab0-441f-95ed-386cd72b5cbc', 'ecbedef8-99e1-4162-8d68-b5183e0b2f00');
INSERT INTO `t_col_content` VALUES ('c5752c5d-c495-4201-90f6-6bd12008171d', 'SYS-ID', '2018-04-15 21:41:03', 'N', 'SYS-ID', '2018-04-15 21:41:03', '0', '9f125702-5ab0-441f-95ed-386cd72b5cbc', 'a9f8dbf8-82f3-47be-8d3c-0d8ceb037136');

-- ----------------------------
-- Table structure for t_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_contact`;
CREATE TABLE `t_contact` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `detail` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_contact
-- ----------------------------
INSERT INTO `t_contact` VALUES ('a999f799-19a6-4326-8ad8-59c1129ce0be', 'SYS-ID', '2018-04-15 16:40:01', 'N', 'SYS-ID', '2018-04-15 21:33:48', '17', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">公司地址：江苏省吴江市盛泽镇西二环路999号一层1-2-40（1164）号</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">电话/传真：0512-63500113</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">手机：13806250446</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">工厂地址：江苏省吴江市八坼民营开发区南刘路</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">电话：0512-63360065 63102865</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">传真：0512-63369849</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal;\">手机：13812691192 李厂长</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; color: rgb(90, 90, 90); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; white-space: normal; text-indent: 3em;\">13405281040 李先生</p><p><br/></p>');

-- ----------------------------
-- Table structure for t_content
-- ----------------------------
DROP TABLE IF EXISTS `t_content`;
CREATE TABLE `t_content` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `ad_img` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `overview` varchar(255) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_content
-- ----------------------------
INSERT INTO `t_content` VALUES ('5dd416d5-fba7-4763-a80e-ea457744a132', 'SYS-ID', '2018-04-14 20:56:00', 'Y', 'SYS-ID', '2018-04-15 21:37:44', '1', 'c2c42fe6-b4ba-4364-87c1-b2d783b94278', 'A', '<p>A</p>', 'A', 'A', '2018-04-14 20:55:46', '1', 'A', 'A');
INSERT INTO `t_content` VALUES ('8a342a20-d504-4bcd-b143-45e2bb41b498', 'SYS-ID', '2018-04-15 21:37:32', 'N', 'SYS-ID', '2018-04-15 21:37:32', '0', '6474bf85-cfca-4ded-8377-c8243c767172', 'J', '<p>banner图1</p>', 'http://none', '自己拍摄', '2018-04-15 21:36:24', '1', '自己拍摄', 'banner图1');
INSERT INTO `t_content` VALUES ('a9f8dbf8-82f3-47be-8d3c-0d8ceb037136', 'SYS-ID', '2018-04-15 21:40:37', 'N', 'SYS-ID', '2018-04-15 21:40:37', '0', 'c98c04f7-a9ea-4547-988e-36465aa5d1c0', 'J', '<p>自己拍摄</p>', 'http://none', '自己拍摄', '2018-04-15 21:40:14', '3', '自己拍摄', 'banner图3');
INSERT INTO `t_content` VALUES ('ecbedef8-99e1-4162-8d68-b5183e0b2f00', 'SYS-ID', '2018-04-15 21:39:58', 'N', 'SYS-ID', '2018-04-15 21:39:58', '0', '3961137c-0819-4d40-be05-ce25c315caa8', 'J', '<p>自己拍摄</p>', 'http://none', '自己拍摄', '2018-04-15 21:39:32', '2', '自己拍摄', 'banner图2');

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('5d53b91d-33ec-473d-ada9-524d3ee8cdc5', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', '此组用户拥有最高权限', 'ADMIN', '管理员组');
INSERT INTO `t_group` VALUES ('9b070274-fc39-4048-8add-1c495ea88b2b', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', '不在其他组的用户自动并入此组', 'DEFAULT', '默认组');

-- ----------------------------
-- Table structure for t_mat
-- ----------------------------
DROP TABLE IF EXISTS `t_mat`;
CREATE TABLE `t_mat` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(10000) DEFAULT NULL,
  `img_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mat
-- ----------------------------
INSERT INTO `t_mat` VALUES ('0d0246c2-e0a0-4a1e-8e07-c1a641ffda16', 'SYS-ID', '2018-04-16 21:37:59', 'N', 'SYS-ID', '2018-04-16 21:40:28', '6', 'A', '<p>Abbbbbbbbbbb</p>', 'a3d0dc1c-8552-45fb-b838-b5148e442f49', 'A', 'A');
INSERT INTO `t_mat` VALUES ('1e351e24-1309-40d1-a1b4-92c67bf0d389', 'SYS-ID', '2018-04-14 20:51:43', 'Y', 'SYS-ID', '2018-04-14 20:53:05', '1', 'B', 'D', null, 'A', 'C');
INSERT INTO `t_mat` VALUES ('9c06734f-2087-4698-a3e7-a80a9c5e8d99', 'SYS-ID', '2018-04-16 21:18:57', 'N', 'SYS-ID', '2018-04-16 21:55:17', '1', 'F420菱形格-2', '<p><img src=\"http://localhost:8901//ueditor/jsp/upload/image/20180416/1523884481329086979.jpg\" title=\"1523884481329086979.jpg\" alt=\"blue.jpg\" width=\"296\" height=\"233\" style=\"float: left;\"/></p><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">现代制作在正式的社交场合所穿著的服装，多选用优质的混纺面料。而纯棉、纯毛、纯丝、纯麻等天然面料因为有着易皱、易变形等天然面料的缺点，已经沦为一般布料，较少作为高档服装用料。混纺面料有着天然面料吸汗透气、柔软舒服的特点，又吸收了化纤面料结实耐穿、垂悬挺括、光泽好颜色鲜亮等优点，每年有大量的高档优质混纺面料被开发出来。有时，穿著纯皮革制作的服装，也是允许的。一般服装面料分为二大系列：</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%A2%AD%E7%BB%87%E9%9D%A2%E6%96%99\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">梭织面料</a>：主要用于服装的外衣和衬衣。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%92%88%E7%BB%87%E9%9D%A2%E6%96%99\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">针织面料</a>：服装的内衣和运动系列服装，但由于科技的发展，针织布也向厚重、挺括发展，逐渐使针织内衣外化，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%92%88%E7%BB%87%E9%9D%A2%E6%96%99\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">针织面料</a>梭织做法，成为外衣的补充。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">随着现代人生活质量的提高，同样他们对自己的穿着要求也愈来愈高，不再限于是服装的造型，款式，更注重服装的面料是否舒适，是否环保。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">智研数据研究中心数据显示：棉价上涨导致整个<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9F%E4%BA%A7%E9%93%BE\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">生产链</a>成本增高，生产链的一系列产品不得不涨价，恰恰催生了服装行业面料的新契机，棉花的升级替身<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8E%89%E7%B1%B3%E7%BA%A4%E7%BB%B4\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">玉米纤维</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%AB%B9%E7%BA%A4%E7%BB%B4\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">竹纤维</a>、新型植物<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%BA%BB%E7%BA%A4%E7%BB%B4\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">麻纤维</a>等闪亮登场，这些生物基面料比棉布在生产过程中更节省水和农药，符合消费者乃至全社会对低碳环保的需求。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">以这些天然动植物材料为原料加工的服装人们称之为“生态服装”，如棉，麻，丝毛，皮之类新型低碳环保面料，它们以天然动植物为原材料并且经过病毒检测具有相应的标志。”与当今“环保风”和现代人返璞归真的内心需求结合，“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9F%E6%80%81%E6%9C%8D%E8%A3%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">生态服装</a>”正逐渐成为时装领域的新潮流。它们不仅从款式和上体现花色设计环保意识，而且从面料到纽扣，拉链等附件也都采用无污染的天然原料；从原料生产到加工也完全从保护生态环境的角度出发，避免使用化学印染原料和树脂等破坏环境的物质。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">生态服装与绿色服装概念基本相同，但也稍稍有区别：“绿色服装”主要是绿色纺织品和生态服装。国际上已开发上市的“绿色纺织品”一般具有防臭，抗菌，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B6%88%E7%82%8E\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">消炎</a>，抗紫外线，抗辐射，增湿等多种功能。这类产品在我国还属初创阶段，已经推出的主要以内衣为主，但由于这类纺织具有特定有益人体健康的功能，因而较受消费者的欢迎。</div><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">从以上可以看出设计服装不论从面料还是款式出发，不仅考虑到是否舒适，时尚，更重要的是与环保相结合，低碳环保才是未来服装面料的发展趋势。</p><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">以这些天然动植物材料为原料加工的服装人们称之为“生态服装”，如棉，麻，丝毛，皮之类新型低碳环保面料，它们以天然动植物为原材料并且经过病毒检测具有相应的标志。”与当今“环保风”和现代人返璞归真的内心需求结合，“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9F%E6%80%81%E6%9C%8D%E8%A3%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">生态服装</a>”正逐渐成为时装领域的新潮流。它们不仅从款式和上体现花色设计环保意识，而且从面料到纽扣，拉链等附件也都采用无污染的天然原料；从原料生产到加工也完全从保护生态环境的角度出发，避免使用化学印染原料和树脂等破坏环境的物质。</div><div class=\"anchor-list\" style=\"position: relative; color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></div><div class=\"para-title level-2\" style=\"clear: both; zoom: 1; overflow: hidden; border-left: 12px solid rgb(79, 156, 238); line-height: 24px; font-size: 22px; font-family: &quot;Microsoft YaHei&quot;, SimHei, Verdana; margin: 35px 0px 15px -30px; background: url(&quot;https://bkssl.bdimg.com/static/wiki-lemma/normal/resource/img/paraTitle-line_c5e6d61.png&quot;) rgb(255, 255, 255); position: relative; color: rgb(51, 51, 51); white-space: normal;\"></div><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><p><br/></p>', '77fa942e-72dc-4e9c-985f-d37b51cbadaf', '蓝色布料', '420D*420D');

-- ----------------------------
-- Table structure for t_mat_category
-- ----------------------------
DROP TABLE IF EXISTS `t_mat_category`;
CREATE TABLE `t_mat_category` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mat_category
-- ----------------------------
INSERT INTO `t_mat_category` VALUES ('0a145353-3ac7-4db1-a183-4fd39ab8cd68', 'SYS-ID', '2018-04-16 20:45:43', 'N', 'SYS-ID', '2018-04-16 20:45:43', '0', 'C', '多色彩条帐篷布', '多色彩条帐篷布');
INSERT INTO `t_mat_category` VALUES ('12d41569-a5ef-4e28-9424-f6a0e835f4df', 'SYS-ID', '2018-04-16 20:46:18', 'N', 'SYS-ID', '2018-04-16 20:46:18', '0', 'G', '1680D系列加捻、提花...', '1680D系列加捻、提花...');
INSERT INTO `t_mat_category` VALUES ('7b204886-ca87-41e0-83c1-78ff8d326f92', 'SYS-ID', '2018-04-16 20:46:02', 'N', 'SYS-ID', '2018-04-16 20:46:02', '0', 'E', '色织格子箱包布－客户产品...', '色织格子箱包布－客户产品...');
INSERT INTO `t_mat_category` VALUES ('925a53d8-77ad-48c1-90f8-b02608ef8e28', 'SYS-ID', '2018-04-16 20:46:09', 'N', 'SYS-ID', '2018-04-16 20:46:09', '0', 'F', '多色彩条帐篷布－客户产品...', '多色彩条帐篷布－客户产品...');
INSERT INTO `t_mat_category` VALUES ('b0f295d6-64bf-462d-ae70-94962263b5ec', 'SYS-ID', '2018-04-16 20:45:24', 'N', 'SYS-ID', '2018-04-16 20:45:24', '0', 'A', '1680D系列加捻、提花...', '1680D系列加捻、提花...');
INSERT INTO `t_mat_category` VALUES ('ba8f0d4f-5bcd-4c51-891b-e8eacbd54842', 'SYS-ID', '2018-04-16 20:46:29', 'N', 'SYS-ID', '2018-04-16 20:46:29', '0', 'H', '色织格子箱包布', '色织格子箱包布');
INSERT INTO `t_mat_category` VALUES ('c048812a-4cf5-4355-b5b3-1548e3d3eff2', 'SYS-ID', '2018-04-16 20:45:53', 'N', 'SYS-ID', '2018-04-16 20:45:53', '0', 'D', '涤纶弹丝系列', '涤纶弹丝系列');
INSERT INTO `t_mat_category` VALUES ('d0294a95-108f-44fc-b74f-8157fc0120b9', 'SYS-ID', '2018-04-16 20:45:34', 'N', 'SYS-ID', '2018-04-16 20:45:34', '0', 'B', '色织格子箱包布', '色织格子箱包布');
INSERT INTO `t_mat_category` VALUES ('ed9880ca-558e-4fd5-af3a-5599720615a5', 'SYS-ID', '2018-04-16 20:46:50', 'N', 'SYS-ID', '2018-04-16 20:48:11', '1', 'O', '多色彩条帐篷布', '多色彩条帐篷布');

-- ----------------------------
-- Table structure for t_mat_category_link
-- ----------------------------
DROP TABLE IF EXISTS `t_mat_category_link`;
CREATE TABLE `t_mat_category_link` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `mat_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mat_category_link
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('18fd06df-d9fc-4be5-8fca-ba78a6d72d4a', 'SYS-ID', '2018-04-15 15:51:52', 'N', 'SYS-ID', '2018-04-16 20:57:53', '3', 'ContactManager', '联系人管理', '联系人管理', '84da948c-3f78-437e-bae7-19ed1f978747', '100', '/pages/apro/contact/contact-edit.html');
INSERT INTO `t_menu` VALUES ('83fe6ebc-0834-48f8-867d-3445d8e8c5c1', 'SYS-ID', '2018-04-15 21:04:54', 'Y', 'SYS-ID', '2018-04-15 21:05:29', '2', 'a', '1', 'a', '', '3', '1');
INSERT INTO `t_menu` VALUES ('84da948c-3f78-437e-bae7-19ed1f978747', 'SYS-ID', '2018-04-15 15:51:12', 'N', 'SYS-ID', '2018-04-15 21:14:00', '1', 'BUSINESS', '1', '业务组', '', '0', '/pages/');
INSERT INTO `t_menu` VALUES ('c809d82c-d4a6-4ca8-87a2-75e7603c5650', 'SYS-ID', '2018-04-16 20:35:50', 'N', 'SYS-ID', '2018-04-16 20:58:14', '1', 'MatCategory', '布料分类', '布料分类', '84da948c-3f78-437e-bae7-19ed1f978747', '95', '/pages/apro/matcategory/matcategory-list.html');
INSERT INTO `t_menu` VALUES ('da88f35e-e16d-4c85-8565-f05218b49057', 'SYS-ID', '2018-04-15 21:13:42', 'N', 'SYS-ID', '2018-04-16 20:58:00', '4', 'ABOUTUS', '1', '公司简介', '84da948c-3f78-437e-bae7-19ed1f978747', '200', '/pages/apro/aboutus/aboutus-edit.html');
INSERT INTO `t_menu` VALUES ('df709238-c69a-4b25-bb0a-4f6a4618903b', 'SYS-ID', '2018-04-16 20:56:06', 'N', 'SYS-ID', '2018-04-16 20:58:20', '2', 'MATMANAGER', '布料管理', '布料管理', '84da948c-3f78-437e-bae7-19ed1f978747', '90', '/pages/apro/mat/mat-list.html');

-- ----------------------------
-- Table structure for t_menu_group
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_group`;
CREATE TABLE `t_menu_group` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu_group
-- ----------------------------
INSERT INTO `t_menu_group` VALUES ('2cf65a8b-154b-4c3b-a9f4-ff092814f3de', 'SYS-ID', '2018-04-15 15:52:27', 'N', 'SYS-ID', '2018-04-15 15:52:27', '0', '9b070274-fc39-4048-8add-1c495ea88b2b', '84da948c-3f78-437e-bae7-19ed1f978747');
INSERT INTO `t_menu_group` VALUES ('51ae4327-a37e-4b35-b4a0-be3f188d521d', 'SYS-ID', '2018-04-15 15:52:55', 'N', 'SYS-ID', '2018-04-15 15:52:55', '0', '9b070274-fc39-4048-8add-1c495ea88b2b', '18fd06df-d9fc-4be5-8fca-ba78a6d72d4a');
INSERT INTO `t_menu_group` VALUES ('7b088344-8ce0-4c4d-91ab-8af66a40aacf', 'SYS-ID', '2018-04-15 15:52:27', 'N', 'SYS-ID', '2018-04-15 15:52:27', '0', '5d53b91d-33ec-473d-ada9-524d3ee8cdc5', '84da948c-3f78-437e-bae7-19ed1f978747');
INSERT INTO `t_menu_group` VALUES ('b2d2da3e-0629-428e-8a01-ebe8dddc0223', 'SYS-ID', '2018-04-15 15:52:55', 'N', 'SYS-ID', '2018-04-15 15:52:55', '0', '5d53b91d-33ec-473d-ada9-524d3ee8cdc5', '18fd06df-d9fc-4be5-8fca-ba78a6d72d4a');

-- ----------------------------
-- Table structure for t_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_role`;
CREATE TABLE `t_menu_role` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu_role
-- ----------------------------
INSERT INTO `t_menu_role` VALUES ('01684f71-2d1f-424b-bb01-3f3a60220ee8', 'SYS-ID', '2018-04-15 15:52:25', 'N', 'SYS-ID', '2018-04-15 15:52:25', '0', '84da948c-3f78-437e-bae7-19ed1f978747', '3162f253-582d-469d-b5d2-27c8a1ffe326');
INSERT INTO `t_menu_role` VALUES ('42582d86-95b5-4e91-ad01-eb8ebbe53c5b', 'SYS-ID', '2018-04-15 21:05:05', 'Y', 'SYS-ID', '2018-04-15 21:05:14', '1', '83fe6ebc-0834-48f8-867d-3445d8e8c5c1', '7bde2824-068f-4dde-95f9-b3c1db7b98de');
INSERT INTO `t_menu_role` VALUES ('4b68e315-b786-4003-9ff3-a3820a8f43af', 'SYS-ID', '2018-04-15 15:52:53', 'N', 'SYS-ID', '2018-04-15 15:52:53', '0', '18fd06df-d9fc-4be5-8fca-ba78a6d72d4a', '7bde2824-068f-4dde-95f9-b3c1db7b98de');
INSERT INTO `t_menu_role` VALUES ('748bdaf2-7692-4737-8532-d8e795192f61', 'SYS-ID', '2018-04-15 21:05:04', 'Y', 'SYS-ID', '2018-04-15 21:05:10', '1', '83fe6ebc-0834-48f8-867d-3445d8e8c5c1', '3162f253-582d-469d-b5d2-27c8a1ffe326');
INSERT INTO `t_menu_role` VALUES ('8779c599-f265-447d-b9b1-d853321ee51d', 'SYS-ID', '2018-04-15 15:52:53', 'N', 'SYS-ID', '2018-04-15 15:52:53', '0', '18fd06df-d9fc-4be5-8fca-ba78a6d72d4a', '3162f253-582d-469d-b5d2-27c8a1ffe326');
INSERT INTO `t_menu_role` VALUES ('dea45c31-1bd6-45fe-8d3d-ba398ce5b8f5', 'SYS-ID', '2018-04-15 15:52:26', 'N', 'SYS-ID', '2018-04-15 15:52:26', '0', '84da948c-3f78-437e-bae7-19ed1f978747', '7bde2824-068f-4dde-95f9-b3c1db7b98de');
INSERT INTO `t_menu_role` VALUES ('e0bb8d04-81ff-4048-87e5-649c1a3e4ece', 'SYS-ID', '2018-04-15 21:05:20', 'N', 'SYS-ID', '2018-04-15 21:05:20', '0', '83fe6ebc-0834-48f8-867d-3445d8e8c5c1', '7bde2824-068f-4dde-95f9-b3c1db7b98de');
INSERT INTO `t_menu_role` VALUES ('e8308bc3-a484-443e-a952-347759c79fec', 'SYS-ID', '2018-04-15 21:05:19', 'N', 'SYS-ID', '2018-04-15 21:05:19', '0', '83fe6ebc-0834-48f8-867d-3445d8e8c5c1', '3162f253-582d-469d-b5d2-27c8a1ffe326');

-- ----------------------------
-- Table structure for t_param_code
-- ----------------------------
DROP TABLE IF EXISTS `t_param_code`;
CREATE TABLE `t_param_code` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_name` varchar(255) DEFAULT NULL,
  `_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_param_code
-- ----------------------------

-- ----------------------------
-- Table structure for t_param_type
-- ----------------------------
DROP TABLE IF EXISTS `t_param_type`;
CREATE TABLE `t_param_type` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_param_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `cached` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `friendly_url` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource
-- ----------------------------

-- ----------------------------
-- Table structure for t_resource_group
-- ----------------------------
DROP TABLE IF EXISTS `t_resource_group`;
CREATE TABLE `t_resource_group` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource_group
-- ----------------------------

-- ----------------------------
-- Table structure for t_resource_role
-- ----------------------------
DROP TABLE IF EXISTS `t_resource_role`;
CREATE TABLE `t_resource_role` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `enable` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resource_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('3162f253-582d-469d-b5d2-27c8a1ffe326', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', '所有没有其他角色的用户自动并入此角色', 'DEFAULT', '默认角色');
INSERT INTO `t_role` VALUES ('7bde2824-068f-4dde-95f9-b3c1db7b98de', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', '此角色用户拥有最高权限', 'ADMIN', '管理员角色');

-- ----------------------------
-- Table structure for t_role_group
-- ----------------------------
DROP TABLE IF EXISTS `t_role_group`;
CREATE TABLE `t_role_group` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_group
-- ----------------------------

-- ----------------------------
-- Table structure for t_sysparam
-- ----------------------------
DROP TABLE IF EXISTS `t_sysparam`;
CREATE TABLE `t_sysparam` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_code` varchar(255) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sysparam
-- ----------------------------
INSERT INTO `t_sysparam` VALUES ('0a3b7189-fc9a-4234-9417-00db365e3382', 'SYS-ID', '2018-04-15 21:04:38', 'Y', 'SYS-ID', '2018-04-15 21:04:45', '1', 'B', 'B', 'B');
INSERT INTO `t_sysparam` VALUES ('3e096571-deba-4e66-95e1-2a1031525cbb', 'SYS-ID', '2018-04-15 18:00:06', 'Y', 'SYS-ID', '2018-04-15 21:04:42', '7', 'A', 'A', 'A');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('7484ae40-59c5-4eaf-aaa4-a6892c6558c2', 'SYS-ID', '2018-04-15 17:42:01', 'Y', 'SYS-ID', '2018-04-15 17:42:09', '1', 'wlcFzOht5AI', '2018-04-15 17:42:01', 'ACTIVE', 'a@33.com');
INSERT INTO `t_user` VALUES ('cf09fd10-bbcc-4102-bb8a-46e7c96bb418', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', 'VjXJ55vzIFo', '2018-04-14 20:51:16', 'ACTIVE', '3cgg@163.com');

-- ----------------------------
-- Table structure for t_user_extend
-- ----------------------------
DROP TABLE IF EXISTS `t_user_extend`;
CREATE TABLE `t_user_extend` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `nature_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_extend
-- ----------------------------
INSERT INTO `t_user_extend` VALUES ('32298234-4c20-480a-ab43-1e92d3d6c265', 'SYS-ID', '2018-04-15 17:42:01', 'N', 'SYS-ID', '2018-04-15 17:42:01', '0', 'a', '7484ae40-59c5-4eaf-aaa4-a6892c6558c2', null, 'a@33.com');
INSERT INTO `t_user_extend` VALUES ('74a55ec8-08c7-4c6f-8e59-88eef0362516', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', 'J', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', null, '3cgg@163.com');

-- ----------------------------
-- Table structure for t_user_group
-- ----------------------------
DROP TABLE IF EXISTS `t_user_group`;
CREATE TABLE `t_user_group` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_group
-- ----------------------------
INSERT INTO `t_user_group` VALUES ('71471665-d269-403b-b189-c65040d74d7d', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', null, '9b070274-fc39-4048-8add-1c495ea88b2b', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418');
INSERT INTO `t_user_group` VALUES ('8f556641-b77e-4ba6-86ab-e7e8e290adb5', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', null, '5d53b91d-33ec-473d-ada9-524d3ee8cdc5', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418');
INSERT INTO `t_user_group` VALUES ('a8619d5b-c651-47a0-9174-3928e8af8f15', 'SYS-ID', '2018-04-15 17:42:01', 'N', 'SYS-ID', '2018-04-15 17:42:01', '0', null, '9b070274-fc39-4048-8add-1c495ea88b2b', '7484ae40-59c5-4eaf-aaa4-a6892c6558c2');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `_desc` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('210cc4fc-05ce-4987-b762-5ed882a4cd75', 'SYS-ID', '2018-04-15 17:42:01', 'N', 'SYS-ID', '2018-04-15 17:42:01', '0', null, '3162f253-582d-469d-b5d2-27c8a1ffe326', '7484ae40-59c5-4eaf-aaa4-a6892c6558c2');
INSERT INTO `t_user_role` VALUES ('808262af-3ff1-4807-8715-61936c468c1c', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', null, '3162f253-582d-469d-b5d2-27c8a1ffe326', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418');
INSERT INTO `t_user_role` VALUES ('8809bae0-183f-4c03-ad60-a2a6b512d8d9', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'SYS-ID', '2018-04-14 20:51:16', '0', null, '7bde2824-068f-4dde-95f9-b3c1db7b98de', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418');

-- ----------------------------
-- Table structure for t_user_tracker
-- ----------------------------
DROP TABLE IF EXISTS `t_user_tracker`;
CREATE TABLE `t_user_tracker` (
  `id` varchar(36) NOT NULL,
  `create_id` varchar(36) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `update_id` varchar(36) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `login_client` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_tracker
-- ----------------------------
