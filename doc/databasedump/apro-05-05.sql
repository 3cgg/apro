/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : apro

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2018-05-05 20:21:41
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
INSERT INTO `t_attachment` VALUES ('00cc047a-acb7-4114-aee7-e385e9ad378b', 'SYS-ID', '2018-05-03 22:28:06', 'N', 'SYS-ID', '2018-05-03 22:28:06', '0', null, 'blue', '20180503/22/ee3cecb2-ce19-4e7e-a0ae-80d7c86a50f0.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('04e9ad09-fc78-4568-b5de-0b927744120e', 'SYS-ID', '2018-05-03 22:28:33', 'N', 'SYS-ID', '2018-05-03 22:28:33', '0', null, 'green', '20180503/22/0d3c4ff1-c2aa-407d-91d2-97b6824fd475.green.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('0fd09020-6138-4d2b-94ee-56d7b8a41fc8', 'SYS-ID', '2018-05-03 22:27:51', 'N', 'SYS-ID', '2018-05-03 22:27:51', '0', null, 'red', '20180503/22/eecfc702-3676-43c1-bc95-a249cf92201f.red.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('167fa90e-f002-49aa-8e85-c824f1019f29', 'SYS-ID', '2018-05-03 21:18:29', 'N', 'SYS-ID', '2018-05-03 21:18:29', '0', null, 'blue', '20180503/21/4e60d7ab-1a05-4a7b-bc01-723fe7470a08.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('1cf333fa-03f8-4408-a3d8-b3faeeceefc4', 'SYS-ID', '2018-04-16 21:06:06', 'N', 'SYS-ID', '2018-04-16 21:06:06', '0', null, '微信截图_20180414165121', '20180416/21/d06a2679-2a44-4cfa-9b28-880668be9be2.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('23b4953c-bd1f-4692-896c-fe0a14b1fa40', 'SYS-ID', '2018-05-03 21:18:56', 'N', 'SYS-ID', '2018-05-03 21:18:56', '0', null, 'green', '20180503/21/8d3d2288-5a8c-45c9-9610-f16b1fce7f87.green.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('3961137c-0819-4d40-be05-ce25c315caa8', 'SYS-ID', '2018-04-15 21:39:56', 'N', 'SYS-ID', '2018-04-15 21:39:56', '0', null, 'banner2', '20180415/21/c86c16eb-ddc7-4cf6-8557-4ee95eaedf63.banner2.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('3d4b9079-ac41-4c65-91ff-72e3ecdc1c6b', 'SYS-ID', '2018-05-03 22:27:36', 'N', 'SYS-ID', '2018-05-03 22:27:36', '0', null, 'green', '20180503/22/49b70bd8-5c13-4dc4-a7d9-5825bfa1a944.green.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('40815b14-f7d2-4501-96eb-4aed5df6c255', 'SYS-ID', '2018-05-03 22:27:06', 'N', 'SYS-ID', '2018-05-03 22:27:06', '0', null, 'blue', '20180503/22/3cb700e7-d654-4ecd-a1a1-e3738154efa6.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('523e4882-078d-411d-a994-c5b2d3bcc027', 'SYS-ID', '2018-05-05 08:52:28', 'N', 'SYS-ID', '2018-05-05 08:52:28', '0', null, 'green', '20180505/8/c00d99aa-3906-4231-8640-9a517bae5e48.green.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6474bf85-cfca-4ded-8377-c8243c767172', 'SYS-ID', '2018-04-15 21:37:19', 'N', 'SYS-ID', '2018-04-15 21:37:19', '0', null, 'banner1', '20180415/21/807232dd-4336-4cef-9cbf-0f8f726c8d39.banner1.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6a1f73e2-bd94-4901-9c19-c5cd18cd4196', 'SYS-ID', '2018-05-03 22:27:23', 'N', 'SYS-ID', '2018-05-03 22:27:23', '0', null, 'red', '20180503/22/99d2c318-aa6f-4ccb-983e-725965fb26db.red.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('6e6dfb63-21d5-420c-ba9f-4c6f4719a904', 'SYS-ID', '2018-05-05 08:52:09', 'N', 'SYS-ID', '2018-05-05 08:52:09', '0', null, 'blue', '20180505/8/399e8273-892e-4fce-aeae-bb056b03f8e8.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('70c35b04-cf1f-4c41-b717-897995475b72', 'SYS-ID', '2018-05-03 22:28:18', 'N', 'SYS-ID', '2018-05-03 22:28:18', '0', null, 'red', '20180503/22/f919db3e-a1ef-4a60-a920-d158ce734f3e.red.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('735a0abe-7960-4060-a18b-e404a55286d2', 'SYS-ID', '2018-05-05 20:01:45', 'N', 'SYS-ID', '2018-05-05 20:01:45', '0', null, 'green', '20180505/20/8aa4c766-d912-4234-b72a-39d80d396344.green.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('77fa942e-72dc-4e9c-985f-d37b51cbadaf', 'SYS-ID', '2018-04-16 21:14:14', 'N', 'SYS-ID', '2018-04-16 21:14:14', '0', null, 'blue', '20180416/21/59b050ff-71f6-4c01-ac77-d329307de9d0.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('82ace087-4154-47d0-9de0-56c9ca1d388c', 'SYS-ID', '2018-04-16 21:06:00', 'N', 'SYS-ID', '2018-04-16 21:06:00', '0', null, '微信截图_20180414165121', '20180416/21/4323d5c7-1dcd-4480-a724-5971a3be5cea.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('9168e27a-8884-4cc7-997e-52b72456d417', 'SYS-ID', '2018-05-03 21:19:21', 'N', 'SYS-ID', '2018-05-03 21:19:21', '0', null, 'red', '20180503/21/73c92179-b6d3-44af-9714-508c8cc04c7b.red.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('a3d0dc1c-8552-45fb-b838-b5148e442f49', 'SYS-ID', '2018-04-16 21:39:43', 'N', 'SYS-ID', '2018-04-16 21:39:43', '0', null, 'blue', '20180416/21/5090283a-b2ab-40cb-baf7-1817877dacd6.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('c2c42fe6-b4ba-4364-87c1-b2d783b94278', 'SYS-ID', '2018-04-14 20:55:38', 'N', 'SYS-ID', '2018-04-14 20:55:38', '0', null, '微信截图_20180414165121', '20180414/20/b06a6810-7e9d-4e96-9332-4407569ed942.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('c478741f-fa28-4430-bb15-03b3ccf66fbc', 'SYS-ID', '2018-04-16 21:05:34', 'N', 'SYS-ID', '2018-04-16 21:05:34', '0', null, '微信截图_20180414165121', '20180416/21/d109504f-c64d-4ace-8593-c9e615947c0b.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('c98c04f7-a9ea-4547-988e-36465aa5d1c0', 'SYS-ID', '2018-04-15 21:40:30', 'N', 'SYS-ID', '2018-04-15 21:40:30', '0', null, 'banner3', '20180415/21/b53c360b-245b-454a-b662-c1b0207ad931.banner3.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('d1b8887b-786d-4218-b35a-dd3726a6cfdb', 'SYS-ID', '2018-05-03 22:26:49', 'N', 'SYS-ID', '2018-05-03 22:26:49', '0', null, 'green', '20180503/22/9debcc8e-d39c-4194-bbc8-daf95428ecd6.green.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('d20f4a0a-5cdc-412e-ae90-83733e5ecef9', 'SYS-ID', '2018-04-16 21:05:39', 'N', 'SYS-ID', '2018-04-16 21:05:39', '0', null, '微信截图_20180414165121', '20180416/21/1bf901a3-b980-466b-a6d3-fdd2dba310e9.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('d62516db-81fa-4e7e-86fe-16b2a95fedf0', 'SYS-ID', '2018-04-16 21:05:48', 'N', 'SYS-ID', '2018-04-16 21:05:48', '0', null, '微信截图_20180414165121', '20180416/21/cdc66cc4-6951-412c-9f84-6752613b2ce7.微信截图_20180414165121.png', 'png');
INSERT INTO `t_attachment` VALUES ('e951bb57-7bf8-4636-b216-16db440d14d6', 'SYS-ID', '2018-04-16 21:37:52', 'N', 'SYS-ID', '2018-04-16 21:37:52', '0', null, 'blue', '20180416/21/93d50f93-e323-4dfa-8028-ae12df94096a.blue.jpg', 'jpg');
INSERT INTO `t_attachment` VALUES ('eee23936-063a-49a3-b15d-d6dfb08be503', 'SYS-ID', '2018-05-05 08:52:45', 'N', 'SYS-ID', '2018-05-05 08:52:45', '0', null, 'red', '20180505/8/b09307b4-e76b-41bf-9bab-649b35966fc2.red.jpg', 'jpg');

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
INSERT INTO `t_col` VALUES ('926e19e8-6c90-40ae-af37-73f1828c887b', 'SYS-ID', '2018-05-03 21:17:46', 'N', 'SYS-ID', '2018-05-03 21:17:46', '0', 'EVENT', '企业活动、动态', '企业活动、动态', '', '3');
INSERT INTO `t_col` VALUES ('9f125702-5ab0-441f-95ed-386cd72b5cbc', 'SYS-ID', '2018-04-15 21:35:38', 'Y', 'SYS-ID', '2018-05-03 21:16:32', '2', 'BANNER', '首页banner图', '首页banner图', '', '0');
INSERT INTO `t_col` VALUES ('a0f151e2-876c-4985-88bb-7e1a37105cdc', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:35:39', 'Y', 'SYS-ID', '2018-05-03 21:16:36', '1', 'QQ', '公司动态', '公司动态', '', '1');
INSERT INTO `t_col` VALUES ('a9590646-305a-4c81-9cf3-0accbdf6b334', 'SYS-ID', '2018-05-03 21:16:50', 'N', 'SYS-ID', '2018-05-03 21:16:50', '0', 'INDEX_BANNER', '首页BANNER图', '首页BANNER图', '', '1');
INSERT INTO `t_col` VALUES ('de03469d-07b8-4837-bde9-09fedfeaf3a7', 'SYS-ID', '2018-05-03 21:17:19', 'N', 'SYS-ID', '2018-05-03 21:17:19', '0', 'INDEX_IMG_GROUP', '首页布料分类图', '首页布料分类图', '', '2');

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
INSERT INTO `t_col_content` VALUES ('270552bb-2bb2-4a9f-b4d9-ac8b1a103135', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:37:27', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:37:27', '0', 'a0f151e2-876c-4985-88bb-7e1a37105cdc', 'a9f8dbf8-82f3-47be-8d3c-0d8ceb037136');
INSERT INTO `t_col_content` VALUES ('36b0a657-4181-4055-9ecc-25d47643b79f', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:37:29', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:37:29', '0', 'a0f151e2-876c-4985-88bb-7e1a37105cdc', '8a342a20-d504-4bcd-b143-45e2bb41b498');
INSERT INTO `t_col_content` VALUES ('5e7f334c-035f-4024-b8a2-fbc9b37f341b', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:37:28', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-27 22:37:28', '0', 'a0f151e2-876c-4985-88bb-7e1a37105cdc', 'ecbedef8-99e1-4162-8d68-b5183e0b2f00');
INSERT INTO `t_col_content` VALUES ('770b515d-8670-4c25-ad1d-85b866a3d1f7', 'SYS-ID', '2018-05-03 21:19:44', 'N', 'SYS-ID', '2018-05-03 21:19:44', '0', 'de03469d-07b8-4837-bde9-09fedfeaf3a7', 'c55d89bc-9e19-4fe4-a285-e824c21beaf3');
INSERT INTO `t_col_content` VALUES ('894224db-aa6f-48e2-80f4-477af8fed1bc', 'SYS-ID', '2018-05-03 21:19:44', 'N', 'SYS-ID', '2018-05-03 21:19:44', '0', 'de03469d-07b8-4837-bde9-09fedfeaf3a7', '627ccbad-565a-4ff3-9b6b-f483c52045e6');
INSERT INTO `t_col_content` VALUES ('967263a4-0c05-4574-ad47-5c142a313483', 'SYS-ID', '2018-05-03 21:19:45', 'N', 'SYS-ID', '2018-05-03 21:19:45', '0', 'de03469d-07b8-4837-bde9-09fedfeaf3a7', '3cde0093-08c4-4774-b96f-483d9ef48227');
INSERT INTO `t_col_content` VALUES ('a96543a4-a1e2-4363-bb82-9be25f125851', 'SYS-ID', '2018-04-15 21:41:04', 'N', 'SYS-ID', '2018-04-15 21:41:04', '0', '9f125702-5ab0-441f-95ed-386cd72b5cbc', 'ecbedef8-99e1-4162-8d68-b5183e0b2f00');
INSERT INTO `t_col_content` VALUES ('c4e29112-f638-4e17-bce1-c5cc023d5856', 'SYS-ID', '2018-05-05 20:04:02', 'N', 'SYS-ID', '2018-05-05 20:04:02', '0', '926e19e8-6c90-40ae-af37-73f1828c887b', '43852d73-d4df-407d-b561-e9fe96bd805f');
INSERT INTO `t_col_content` VALUES ('c5752c5d-c495-4201-90f6-6bd12008171d', 'SYS-ID', '2018-04-15 21:41:03', 'N', 'SYS-ID', '2018-04-15 21:41:03', '0', '9f125702-5ab0-441f-95ed-386cd72b5cbc', 'a9f8dbf8-82f3-47be-8d3c-0d8ceb037136');
INSERT INTO `t_col_content` VALUES ('dd61ef7e-9847-4bcd-bff6-f1f7aba10b70', 'SYS-ID', '2018-05-03 21:19:37', 'N', 'SYS-ID', '2018-05-03 21:19:37', '0', 'a9590646-305a-4c81-9cf3-0accbdf6b334', 'ecbedef8-99e1-4162-8d68-b5183e0b2f00');
INSERT INTO `t_col_content` VALUES ('e0abc795-2dcd-4c63-a57a-d3bcdd4b86f5', 'SYS-ID', '2018-05-03 21:19:36', 'N', 'SYS-ID', '2018-05-03 21:19:36', '0', 'a9590646-305a-4c81-9cf3-0accbdf6b334', 'a9f8dbf8-82f3-47be-8d3c-0d8ceb037136');
INSERT INTO `t_col_content` VALUES ('e4475311-0548-4922-9321-104c099d3a9b', 'SYS-ID', '2018-05-03 21:19:38', 'N', 'SYS-ID', '2018-05-03 21:19:38', '0', 'a9590646-305a-4c81-9cf3-0accbdf6b334', '8a342a20-d504-4bcd-b143-45e2bb41b498');

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
  `content` text,
  `link` varchar(255) DEFAULT NULL,
  `overview` text,
  `publish_time` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_content
-- ----------------------------
INSERT INTO `t_content` VALUES ('3cde0093-08c4-4774-b96f-483d9ef48227', 'SYS-ID', '2018-05-03 21:19:28', 'N', 'SYS-ID', '2018-05-03 21:21:45', '1', '9168e27a-8884-4cc7-997e-52b72456d417', '分类图3', '<p>分类图3</p>', 'http://none?tag=3', '分类图3', '2018-05-09 21:19:08', '3', '分类图3', '家具布料');
INSERT INTO `t_content` VALUES ('43852d73-d4df-407d-b561-e9fe96bd805f', 'SYS-ID', '2018-05-05 20:03:49', 'N', 'SYS-ID', '2018-05-05 20:03:49', '0', '735a0abe-7960-4060-a18b-e404a55286d2', 'J', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;吴江市文教牛津布厂成立于</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">1985</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">年，前身为校办企业，</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;2003</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">年转制成为民营企业，该厂自</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">1991</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">年起生产牛津布，是全国最早生产牛津布的厂家之一，也是现在吴江地区为数不多的专业生产高档牛津布的厂家，被业界誉为精品牛津布研发</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">专家</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;&nbsp; 张克成，吴江市文教牛津布厂厂长，说他是厂长不如说他是这个厂的领路人。在企业转制时留下的就仅仅是一笔难收的应收款和卖不出去的库存产品的情况下，原本作为教书匠的他没有退缩，也没有放弃，而是勇敢的接过这个摊子，引领企业进行艰苦创业。现在回忆起来，他都在为自己的当初的选择捏了一把汗，</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">当时的情况只能用</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">‘</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">困难</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">’</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">来形容</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”&nbsp;</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">张克成回忆说。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;&nbsp;</span></span></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;&nbsp;&nbsp; 谈到这段艰苦的创业的历程，张克成很是激动，他说：</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">我们厂在转制不到</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">5</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">年的时间里，成功实现了从一个缺技术、缺资金、缺客源</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">‘</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">三缺</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">’</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">的烂摊子到现在成为</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">‘</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">专家级</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">’</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">生产商的重大转变，这都缘于我们企业始终对牛津布的专注和专一</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;&nbsp;&nbsp; 在采访中，张克成给我们讲了一个生产缝纫针的企业的成功故事，说这个企业专门生产各种规格缝纫针并将其产业化，终于获得了行业的认可并获得巨大的经济效益。他说，小小的缝纫针虽看着不不起眼，但是只要把他当成产业来做就有很大的商机。正是受此启发，我们选择了牛津布，一直专注于牛津布，并提出了</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">向牛津布纵深拓展</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">的发展思路，就这样，无论是成立以来还是改制以后，公司一直集中精力致力于牛津布的研究、开发，面对市场上出现的具有超诱惑的面料我们也会</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">无动于衷</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">。正是依靠这种专注和专一精神，现在文教牛津布厂已能生产各种规格的涤纶长丝、弹丝牛津布。产品以覆盖了所有牛津布系列，包括</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">1800 D</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">、</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">2400D</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">、</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">3000D</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">等高规格产品都有涉猎。另外，公司生产的色织牛津布堪称一绝，无论是产品规格和花型都足以引领盛泽市场高档牛津布潮流，该产品大规模的被应用在箱包、帐篷、沙发里面料、沙滩服装及特种服饰，成为文教牛津布厂近年来的主要经济增长点。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;&nbsp;&nbsp; 尽管现在的企业比转制时发生了翻天覆地的变化，但张克成并没有满足。自去年以来纺织业面临人民币升值、成本上升等诸多困难的情况下，很多企业多持观望态度，不敢进行大刀阔斧的改革，而张克成却在企业并不富裕的情况下作出了一个惊人的决策，他要斥巨资和浙江一家企业合作开发一种</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">5</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">公斤</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">的加捻车，据了解，该加捻车已在文教牛津布厂投产投产调试中。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">目前盛泽市场一般都使用的</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">0.8—1<span style=\"font-family: 宋体;\">公斤</span><span style=\"font-family: 宋体;\">的加捻车，如果</span>5<span style=\"font-family: 宋体;\">公斤</span><span style=\"font-family: 宋体;\">的加捻车的成功投产不但可以填补盛泽市场国产</span>5<span style=\"font-family: 宋体;\">公斤</span><span style=\"font-family: 宋体;\">加捻车的空白，还能很大程度提高机器的生产效率和产品质量，从而提高企业产品附加值</span>”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">张克成说。除此之外，他还大胆的在厂里进行技术改造，据他介绍，厂里自主改造的</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">喷水三喷</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">技术已经相当成熟，</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">喷水四喷技术</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">也正在研究中。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\"></span></span>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255); margin: 0cm 0cm 0pt;\"><span style=\"font-size:24px\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;&nbsp; 在加强企业硬环境建设的同时，张克成同样没有放松过企业软实力的建设，</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">拥有最先进的技术并不一定能占领最广大的市场</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">。张克成认为，信誉是企业长久生存的根本，比什么都重要。无论你有多先进的技术，多好的产品，如果没有诚信的经营是无法长久立足的。于是</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">&nbsp;“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">要学会经商，先学会做人</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">便成了张克成及企业时刻践行的口头禅。在采访中他还不时的透露，现在有些企业为了谋取一时的利益往往在生产中偷工减料，这样一来生产产品原料少了，价格就低了，于是价格成了企业竞争的筹码。</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">这样不但会给我们这些做</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">‘</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">老实</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">’</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">生意的人带来很大冲击，而且还会造成整个社会的信誉危机</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”&nbsp;</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">他说，</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">“</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">诚信不但是单个企业最大的财富，也是一个地方的财富</span><span style=\"font-family: arial; color: rgb(51, 51, 51); font-size: 9pt;\">”</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); font-size: 9pt;\">。对于盛泽纺织业的发展前景，张克成认为，盛泽纺织人在当前不利发展的大环境下，企业在提高产品竞争力的同时应将企业诚信建设提到新的高度，只有这样才能使盛泽纺织企业在激烈的竞争中始终立于不败之地。</span></span></p><p><br/></p>', 'http://www.chinanjb.com/news_detail.asp?ID=314', '吴江市文教牛津布厂成立于1985年，前身为校办企业， 2003年转制成为民营企业，该厂自1991年起生产牛津布，是全国最早生产牛津布的厂家之一，也是现在吴江地区为数不多的专业生产高档牛津布的厂家，被业界誉为精品牛津布研发“专家”。', '2018-05-05 20:01:19', '1', 'J', '——写在参观采访吴江市文教牛津布厂之后');
INSERT INTO `t_content` VALUES ('5dd416d5-fba7-4763-a80e-ea457744a132', 'SYS-ID', '2018-04-14 20:56:00', 'Y', 'SYS-ID', '2018-04-15 21:37:44', '1', 'c2c42fe6-b4ba-4364-87c1-b2d783b94278', 'A', '<p>A</p>', 'A', 'A', '2018-04-14 20:55:46', '1', 'A', 'A');
INSERT INTO `t_content` VALUES ('627ccbad-565a-4ff3-9b6b-f483c52045e6', 'SYS-ID', '2018-05-03 21:18:35', 'N', 'SYS-ID', '2018-05-03 21:22:15', '1', '167fa90e-f002-49aa-8e85-c824f1019f29', '分类图1', '<p>分类图1</p>', 'http://none?tag=1', '分类图1', '2018-05-09 21:18:13', '1', '分类图1', '户外布料');
INSERT INTO `t_content` VALUES ('8a342a20-d504-4bcd-b143-45e2bb41b498', 'SYS-ID', '2018-04-15 21:37:32', 'N', 'SYS-ID', '2018-04-15 21:37:32', '0', '6474bf85-cfca-4ded-8377-c8243c767172', 'J', '<p>banner图1</p>', 'http://none', '自己拍摄', '2018-04-15 21:36:24', '1', '自己拍摄', 'banner图1');
INSERT INTO `t_content` VALUES ('a9f8dbf8-82f3-47be-8d3c-0d8ceb037136', 'SYS-ID', '2018-04-15 21:40:37', 'N', 'SYS-ID', '2018-04-15 21:40:37', '0', 'c98c04f7-a9ea-4547-988e-36465aa5d1c0', 'J', '<p>自己拍摄</p>', 'http://none', '自己拍摄', '2018-04-15 21:40:14', '3', '自己拍摄', 'banner图3');
INSERT INTO `t_content` VALUES ('c55d89bc-9e19-4fe4-a285-e824c21beaf3', 'SYS-ID', '2018-05-03 21:19:03', 'N', 'SYS-ID', '2018-05-03 21:22:02', '1', '23b4953c-bd1f-4692-896c-fe0a14b1fa40', 'c', '<p>分类图2</p>', 'http://none?tag=2', '分类图2', '2018-05-09 21:18:41', '2', '分类图2', '箱包布料');
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
INSERT INTO `t_mat` VALUES ('03973311-2c3f-4f56-9d37-1833ac5e3453', 'SYS-ID', '2018-05-03 22:28:22', 'N', 'SYS-ID', '2018-05-03 22:28:22', '0', 'H', '<p>H</p>', '70c35b04-cf1f-4c41-b717-897995475b72', 'H', 'H');
INSERT INTO `t_mat` VALUES ('0d0246c2-e0a0-4a1e-8e07-c1a641ffda16', 'SYS-ID', '2018-04-16 21:37:59', 'N', 'SYS-ID', '2018-04-16 21:40:28', '6', 'A', '<p>Abbbbbbbbbbb</p>', 'a3d0dc1c-8552-45fb-b838-b5148e442f49', 'A', 'A');
INSERT INTO `t_mat` VALUES ('11c72784-f68a-4354-a416-076f5c37a896', 'SYS-ID', '2018-05-03 22:27:55', 'N', 'SYS-ID', '2018-05-03 22:27:55', '0', 'F', '<p>F</p>', '0fd09020-6138-4d2b-94ee-56d7b8a41fc8', 'F', 'F');
INSERT INTO `t_mat` VALUES ('1e274f4f-4d70-4585-a3db-278a6e9da0e8', 'SYS-ID', '2018-05-05 08:52:14', 'N', 'SYS-ID', '2018-05-05 08:52:14', '0', 'J', '<p>J</p>', '6e6dfb63-21d5-420c-ba9f-4c6f4719a904', 'J', 'J');
INSERT INTO `t_mat` VALUES ('1e351e24-1309-40d1-a1b4-92c67bf0d389', 'SYS-ID', '2018-04-14 20:51:43', 'Y', 'SYS-ID', '2018-04-14 20:53:05', '1', 'B', 'D', null, 'A', 'C');
INSERT INTO `t_mat` VALUES ('3f6ed533-4148-4e47-b419-e86312f5cf82', 'SYS-ID', '2018-05-03 22:28:37', 'N', 'SYS-ID', '2018-05-03 22:28:37', '0', 'O', '<p>O</p>', '04e9ad09-fc78-4568-b5de-0b927744120e', 'O', 'O');
INSERT INTO `t_mat` VALUES ('5f5e1ee2-3b20-4882-b538-fc2db3a12fa1', 'SYS-ID', '2018-05-05 08:52:47', 'N', 'SYS-ID', '2018-05-05 08:52:47', '0', 'lM', '<p>lM</p>', 'eee23936-063a-49a3-b15d-d6dfb08be503', 'lM', 'lM');
INSERT INTO `t_mat` VALUES ('63f4bc9b-6775-46dd-ac88-0941edbc4efa', 'SYS-ID', '2018-05-03 22:28:10', 'N', 'SYS-ID', '2018-05-03 22:28:10', '0', 'G', '<p>G</p>', '00cc047a-acb7-4114-aee7-e385e9ad378b', 'G', 'G');
INSERT INTO `t_mat` VALUES ('90126754-cc02-4e84-a751-cbab8306b846', 'SYS-ID', '2018-05-05 08:52:29', 'N', 'SYS-ID', '2018-05-05 08:52:29', '0', 'K', '<p>K</p>', '523e4882-078d-411d-a994-c5b2d3bcc027', 'K', 'K');
INSERT INTO `t_mat` VALUES ('909aff7d-f95d-4824-8ba5-17acb7565e97', 'SYS-ID', '2018-05-03 22:27:41', 'N', 'SYS-ID', '2018-05-03 22:27:41', '0', 'E', '<p>E</p>', '3d4b9079-ac41-4c65-91ff-72e3ecdc1c6b', 'E', 'E');
INSERT INTO `t_mat` VALUES ('9c06734f-2087-4698-a3e7-a80a9c5e8d99', 'SYS-ID', '2018-04-16 21:18:57', 'N', 'SYS-ID', '2018-04-16 21:55:17', '1', 'F420菱形格-2', '<p><img src=\"http://localhost:8901//ueditor/jsp/upload/image/20180416/1523884481329086979.jpg\" title=\"1523884481329086979.jpg\" alt=\"blue.jpg\" width=\"296\" height=\"233\" style=\"float: left;\"/></p><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">现代制作在正式的社交场合所穿著的服装，多选用优质的混纺面料。而纯棉、纯毛、纯丝、纯麻等天然面料因为有着易皱、易变形等天然面料的缺点，已经沦为一般布料，较少作为高档服装用料。混纺面料有着天然面料吸汗透气、柔软舒服的特点，又吸收了化纤面料结实耐穿、垂悬挺括、光泽好颜色鲜亮等优点，每年有大量的高档优质混纺面料被开发出来。有时，穿著纯皮革制作的服装，也是允许的。一般服装面料分为二大系列：</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%A2%AD%E7%BB%87%E9%9D%A2%E6%96%99\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">梭织面料</a>：主要用于服装的外衣和衬衣。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%92%88%E7%BB%87%E9%9D%A2%E6%96%99\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">针织面料</a>：服装的内衣和运动系列服装，但由于科技的发展，针织布也向厚重、挺括发展，逐渐使针织内衣外化，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%92%88%E7%BB%87%E9%9D%A2%E6%96%99\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">针织面料</a>梭织做法，成为外衣的补充。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">随着现代人生活质量的提高，同样他们对自己的穿着要求也愈来愈高，不再限于是服装的造型，款式，更注重服装的面料是否舒适，是否环保。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">智研数据研究中心数据显示：棉价上涨导致整个<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9F%E4%BA%A7%E9%93%BE\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">生产链</a>成本增高，生产链的一系列产品不得不涨价，恰恰催生了服装行业面料的新契机，棉花的升级替身<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8E%89%E7%B1%B3%E7%BA%A4%E7%BB%B4\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">玉米纤维</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%AB%B9%E7%BA%A4%E7%BB%B4\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">竹纤维</a>、新型植物<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%BA%BB%E7%BA%A4%E7%BB%B4\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">麻纤维</a>等闪亮登场，这些生物基面料比棉布在生产过程中更节省水和农药，符合消费者乃至全社会对低碳环保的需求。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">以这些天然动植物材料为原料加工的服装人们称之为“生态服装”，如棉，麻，丝毛，皮之类新型低碳环保面料，它们以天然动植物为原材料并且经过病毒检测具有相应的标志。”与当今“环保风”和现代人返璞归真的内心需求结合，“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9F%E6%80%81%E6%9C%8D%E8%A3%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">生态服装</a>”正逐渐成为时装领域的新潮流。它们不仅从款式和上体现花色设计环保意识，而且从面料到纽扣，拉链等附件也都采用无污染的天然原料；从原料生产到加工也完全从保护生态环境的角度出发，避免使用化学印染原料和树脂等破坏环境的物质。</div><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">生态服装与绿色服装概念基本相同，但也稍稍有区别：“绿色服装”主要是绿色纺织品和生态服装。国际上已开发上市的“绿色纺织品”一般具有防臭，抗菌，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B6%88%E7%82%8E\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">消炎</a>，抗紫外线，抗辐射，增湿等多种功能。这类产品在我国还属初创阶段，已经推出的主要以内衣为主，但由于这类纺织具有特定有益人体健康的功能，因而较受消费者的欢迎。</div><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">从以上可以看出设计服装不论从面料还是款式出发，不仅考虑到是否舒适，时尚，更重要的是与环保相结合，低碳环保才是未来服装面料的发展趋势。</p><div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">以这些天然动植物材料为原料加工的服装人们称之为“生态服装”，如棉，麻，丝毛，皮之类新型低碳环保面料，它们以天然动植物为原材料并且经过病毒检测具有相应的标志。”与当今“环保风”和现代人返璞归真的内心需求结合，“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%94%9F%E6%80%81%E6%9C%8D%E8%A3%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">生态服装</a>”正逐渐成为时装领域的新潮流。它们不仅从款式和上体现花色设计环保意识，而且从面料到纽扣，拉链等附件也都采用无污染的天然原料；从原料生产到加工也完全从保护生态环境的角度出发，避免使用化学印染原料和树脂等破坏环境的物质。</div><div class=\"anchor-list\" style=\"position: relative; color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></div><div class=\"para-title level-2\" style=\"clear: both; zoom: 1; overflow: hidden; border-left: 12px solid rgb(79, 156, 238); line-height: 24px; font-size: 22px; font-family: &quot;Microsoft YaHei&quot;, SimHei, Verdana; margin: 35px 0px 15px -30px; background: url(&quot;https://bkssl.bdimg.com/static/wiki-lemma/normal/resource/img/paraTitle-line_c5e6d61.png&quot;) rgb(255, 255, 255); position: relative; color: rgb(51, 51, 51); white-space: normal;\"></div><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><p><br/></p>', '77fa942e-72dc-4e9c-985f-d37b51cbadaf', '蓝色布料', '420D*420D');
INSERT INTO `t_mat` VALUES ('be472f4d-86a3-4873-8c98-6b19deea5cd6', 'SYS-ID', '2018-05-03 22:27:11', 'N', 'SYS-ID', '2018-05-03 22:27:11', '0', 'C', '<p>C</p>', '40815b14-f7d2-4501-96eb-4aed5df6c255', 'C', 'C');
INSERT INTO `t_mat` VALUES ('e801f9a7-a39e-4f2e-a564-0fe46755f128', 'SYS-ID', '2018-05-03 22:27:28', 'N', 'SYS-ID', '2018-05-03 22:27:28', '0', 'D', '<p>D</p>', '6a1f73e2-bd94-4901-9c19-c5cd18cd4196', 'D', 'D');
INSERT INTO `t_mat` VALUES ('fb7e04c8-5841-4a37-88b0-7bb852006770', 'SYS-ID', '2018-05-03 22:26:56', 'N', 'SYS-ID', '2018-05-03 22:26:56', '0', 'B', '<p>B</p>', 'd1b8887b-786d-4218-b35a-dd3726a6cfdb', 'B', 'B');

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
  `_group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mat_category
-- ----------------------------
INSERT INTO `t_mat_category` VALUES ('0a145353-3ac7-4db1-a183-4fd39ab8cd68', 'SYS-ID', '2018-04-16 20:45:43', 'N', 'SYS-ID', '2018-04-16 20:45:43', '0', 'C', '多色彩条帐篷布', '多色彩条帐篷布', '1');
INSERT INTO `t_mat_category` VALUES ('12d41569-a5ef-4e28-9424-f6a0e835f4df', 'SYS-ID', '2018-04-16 20:46:18', 'N', 'SYS-ID', '2018-04-16 20:46:18', '0', 'G', '1680D系列加捻、提花...', '1680D系列加捻、提花...', '1');
INSERT INTO `t_mat_category` VALUES ('7b204886-ca87-41e0-83c1-78ff8d326f92', 'SYS-ID', '2018-04-16 20:46:02', 'N', 'SYS-ID', '2018-05-03 21:12:35', '1', 'E', '色织格子箱包布－客户产品...', '色织格子箱包布－客户产品...', '2');
INSERT INTO `t_mat_category` VALUES ('925a53d8-77ad-48c1-90f8-b02608ef8e28', 'SYS-ID', '2018-04-16 20:46:09', 'N', 'SYS-ID', '2018-04-16 20:46:09', '0', 'F', '多色彩条帐篷布－客户产品...', '多色彩条帐篷布－客户产品...', '1');
INSERT INTO `t_mat_category` VALUES ('b0f295d6-64bf-462d-ae70-94962263b5ec', 'SYS-ID', '2018-04-16 20:45:24', 'N', 'SYS-ID', '2018-05-03 21:14:51', '1', 'A', '1680D系列加捻、提花...', '1680D系列加捻、提花...', '3');
INSERT INTO `t_mat_category` VALUES ('ba8f0d4f-5bcd-4c51-891b-e8eacbd54842', 'SYS-ID', '2018-04-16 20:46:29', 'N', 'SYS-ID', '2018-05-03 21:12:44', '1', 'H', '色织格子箱包布', '色织格子箱包布', '2');
INSERT INTO `t_mat_category` VALUES ('c048812a-4cf5-4355-b5b3-1548e3d3eff2', 'SYS-ID', '2018-04-16 20:45:53', 'N', 'SYS-ID', '2018-05-03 21:14:38', '1', 'D', '涤纶弹丝系列', '涤纶弹丝系列', '3');
INSERT INTO `t_mat_category` VALUES ('d0294a95-108f-44fc-b74f-8157fc0120b9', 'SYS-ID', '2018-04-16 20:45:34', 'N', 'SYS-ID', '2018-05-03 21:14:21', '1', 'B', '色织格子箱包布', '色织格子箱包布', '2');
INSERT INTO `t_mat_category` VALUES ('ed9880ca-558e-4fd5-af3a-5599720615a5', 'SYS-ID', '2018-04-16 20:46:50', 'N', 'SYS-ID', '2018-05-03 21:12:53', '5', 'O', '多色彩条帐篷布', '多色彩条帐篷布', '1');

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
INSERT INTO `t_mat_category_link` VALUES ('0f1a2cba-73c0-4468-8955-b53ad4818f9a', 'SYS-ID', '2018-05-03 22:31:55', 'N', 'SYS-ID', '2018-05-03 22:31:55', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '3f6ed533-4148-4e47-b419-e86312f5cf82');
INSERT INTO `t_mat_category_link` VALUES ('129422c7-582b-4fdc-becc-ae77007b7882', 'SYS-ID', '2018-05-03 22:32:08', 'N', 'SYS-ID', '2018-05-03 22:32:08', '0', 'c048812a-4cf5-4355-b5b3-1548e3d3eff2', '63f4bc9b-6775-46dd-ac88-0941edbc4efa');
INSERT INTO `t_mat_category_link` VALUES ('2156bd80-bfb6-46f8-b3d5-9a382b01a266', 'SYS-ID', '2018-05-03 22:31:54', 'N', 'SYS-ID', '2018-05-03 22:31:54', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '0d0246c2-e0a0-4a1e-8e07-c1a641ffda16');
INSERT INTO `t_mat_category_link` VALUES ('24bef3fc-a485-46f4-a054-564bc5ee1109', 'SYS-ID', '2018-05-03 22:39:53', 'N', 'SYS-ID', '2018-05-03 22:39:53', '0', '0a145353-3ac7-4db1-a183-4fd39ab8cd68', '0d0246c2-e0a0-4a1e-8e07-c1a641ffda16');
INSERT INTO `t_mat_category_link` VALUES ('2cf32ec8-f3ce-48ef-8f7f-950ade744d54', 'SYS-ID', '2018-05-03 22:31:57', 'N', 'SYS-ID', '2018-05-03 22:31:57', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '63f4bc9b-6775-46dd-ac88-0941edbc4efa');
INSERT INTO `t_mat_category_link` VALUES ('2f222182-0639-41f1-9c8f-9b9d37e792ab', 'SYS-ID', '2018-05-03 22:32:01', 'N', 'SYS-ID', '2018-05-03 22:32:01', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '909aff7d-f95d-4824-8ba5-17acb7565e97');
INSERT INTO `t_mat_category_link` VALUES ('39aaabed-1a57-43e0-ad20-554487696b9e', 'SYS-ID', '2018-05-03 22:32:10', 'N', 'SYS-ID', '2018-05-03 22:32:10', '0', 'c048812a-4cf5-4355-b5b3-1548e3d3eff2', 'e801f9a7-a39e-4f2e-a564-0fe46755f128');
INSERT INTO `t_mat_category_link` VALUES ('3ce4f3b4-9a7d-418b-9d16-1aabdfbf2a96', 'SYS-ID', '2018-05-03 22:31:53', 'N', 'SYS-ID', '2018-05-03 22:31:53', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '9c06734f-2087-4698-a3e7-a80a9c5e8d99');
INSERT INTO `t_mat_category_link` VALUES ('3d080f73-7533-41e9-9da5-9c29d3ce2623', 'SYS-ID', '2018-05-03 22:32:09', 'N', 'SYS-ID', '2018-05-03 22:32:09', '0', 'c048812a-4cf5-4355-b5b3-1548e3d3eff2', '0d0246c2-e0a0-4a1e-8e07-c1a641ffda16');
INSERT INTO `t_mat_category_link` VALUES ('50c85c43-1a99-4e92-a43e-14405f9b0aba', 'SYS-ID', '2018-05-03 22:39:53', 'N', 'SYS-ID', '2018-05-03 22:39:53', '0', '0a145353-3ac7-4db1-a183-4fd39ab8cd68', '11c72784-f68a-4354-a416-076f5c37a896');
INSERT INTO `t_mat_category_link` VALUES ('5290744b-d23c-4891-bf71-d1aeaff94d6b', 'SYS-ID', '2018-05-03 22:32:07', 'N', 'SYS-ID', '2018-05-03 22:32:07', '0', 'c048812a-4cf5-4355-b5b3-1548e3d3eff2', '9c06734f-2087-4698-a3e7-a80a9c5e8d99');
INSERT INTO `t_mat_category_link` VALUES ('5d654948-b9dc-49a4-8dd0-7432bdbfdce9', 'SYS-ID', '2018-05-03 22:31:58', 'N', 'SYS-ID', '2018-05-03 22:31:58', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', 'e801f9a7-a39e-4f2e-a564-0fe46755f128');
INSERT INTO `t_mat_category_link` VALUES ('5e2a1edc-bd24-492e-8d82-396be74f9f90', 'SYS-ID', '2018-05-03 22:39:43', 'N', 'SYS-ID', '2018-05-03 22:39:43', '0', '7b204886-ca87-41e0-83c1-78ff8d326f92', '3f6ed533-4148-4e47-b419-e86312f5cf82');
INSERT INTO `t_mat_category_link` VALUES ('6a30ca97-f9eb-4d40-aaeb-3fb944f803bf', 'SYS-ID', '2018-05-03 22:31:54', 'N', 'SYS-ID', '2018-05-03 22:31:54', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '03973311-2c3f-4f56-9d37-1833ac5e3453');
INSERT INTO `t_mat_category_link` VALUES ('750f2941-2151-4097-85b9-acf8b8cfb11c', 'SYS-ID', '2018-05-03 22:31:56', 'N', 'SYS-ID', '2018-05-03 22:31:56', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', '11c72784-f68a-4354-a416-076f5c37a896');
INSERT INTO `t_mat_category_link` VALUES ('7b7a8259-2e11-45e3-9be5-c08838129cda', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:05:06', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:05:06', '0', null, null);
INSERT INTO `t_mat_category_link` VALUES ('9f8d2b32-cf20-4e11-92f9-c256dd47b42d', 'SYS-ID', '2018-05-03 22:39:44', 'N', 'SYS-ID', '2018-05-03 22:39:44', '0', '7b204886-ca87-41e0-83c1-78ff8d326f92', '11c72784-f68a-4354-a416-076f5c37a896');
INSERT INTO `t_mat_category_link` VALUES ('a88c66d4-2355-4699-a37f-48eb92b7d0e8', 'SYS-ID', '2018-05-03 22:32:00', 'N', 'SYS-ID', '2018-05-03 22:32:00', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', 'be472f4d-86a3-4873-8c98-6b19deea5cd6');
INSERT INTO `t_mat_category_link` VALUES ('aa1dc0b6-691b-44f5-b954-c6118b1440b4', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:12:42', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:12:42', '0', 'ed9880ca-558e-4fd5-af3a-5599720615a5', '9c06734f-2087-4698-a3e7-a80a9c5e8d99');
INSERT INTO `t_mat_category_link` VALUES ('acae7b51-9ebd-42cc-87db-559541214566', 'SYS-ID', '2018-05-03 22:39:52', 'N', 'SYS-ID', '2018-05-03 22:39:52', '0', '0a145353-3ac7-4db1-a183-4fd39ab8cd68', '03973311-2c3f-4f56-9d37-1833ac5e3453');
INSERT INTO `t_mat_category_link` VALUES ('b9b0d296-ccb5-49ba-998e-e5e09191869a', 'SYS-ID', '2018-05-03 22:39:44', 'N', 'SYS-ID', '2018-05-03 22:39:44', '0', '7b204886-ca87-41e0-83c1-78ff8d326f92', '63f4bc9b-6775-46dd-ac88-0941edbc4efa');
INSERT INTO `t_mat_category_link` VALUES ('bd650f78-ec9c-48ab-bb21-f5e77fe72174', 'SYS-ID', '2018-05-03 22:32:07', 'N', 'SYS-ID', '2018-05-03 22:32:07', '0', 'c048812a-4cf5-4355-b5b3-1548e3d3eff2', '909aff7d-f95d-4824-8ba5-17acb7565e97');
INSERT INTO `t_mat_category_link` VALUES ('bef4e4e0-2b6e-42a2-adfb-c4b2cd3ceb1a', 'SYS-ID', '2018-05-03 22:39:46', 'N', 'SYS-ID', '2018-05-03 22:39:46', '0', '7b204886-ca87-41e0-83c1-78ff8d326f92', '03973311-2c3f-4f56-9d37-1833ac5e3453');
INSERT INTO `t_mat_category_link` VALUES ('d5bcb505-d20e-4eed-a371-03cd30f35055', 'SYS-ID', '2018-05-03 22:31:59', 'N', 'SYS-ID', '2018-05-03 22:31:59', '0', 'b0f295d6-64bf-462d-ae70-94962263b5ec', 'fb7e04c8-5841-4a37-88b0-7bb852006770');
INSERT INTO `t_mat_category_link` VALUES ('ee7a2f40-79cf-4f7d-8616-5b2450ffe592', 'SYS-ID', '2018-05-03 22:39:53', 'N', 'SYS-ID', '2018-05-03 22:39:53', '0', '0a145353-3ac7-4db1-a183-4fd39ab8cd68', '3f6ed533-4148-4e47-b419-e86312f5cf82');
INSERT INTO `t_mat_category_link` VALUES ('fbe1ee73-078f-4200-9808-78286a234fc3', 'SYS-ID', '2018-05-03 22:39:46', 'N', 'SYS-ID', '2018-05-03 22:39:46', '0', '7b204886-ca87-41e0-83c1-78ff8d326f92', '0d0246c2-e0a0-4a1e-8e07-c1a641ffda16');
INSERT INTO `t_mat_category_link` VALUES ('ff151446-126f-4613-8fdc-ed628d61541b', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:10:38', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:10:38', '0', 'ed9880ca-558e-4fd5-af3a-5599720615a5', null);

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
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_param_code
-- ----------------------------
INSERT INTO `t_param_code` VALUES ('1649abea-6b1f-4d06-8726-e0c6c5ef2732', 'SYS-ID', '2018-05-03 20:35:59', 'N', 'SYS-ID', '2018-05-03 20:35:59', '0', '3', '家具布料', '家具布料', 'MAT_CATEGORY_GROUP', '0');
INSERT INTO `t_param_code` VALUES ('64d19e29-283e-480f-893d-1f5e920916a3', 'SYS-ID', '2018-05-03 20:35:48', 'N', 'SYS-ID', '2018-05-03 20:35:48', '0', '2', '箱包布料', '箱包布料', 'MAT_CATEGORY_GROUP', '0');
INSERT INTO `t_param_code` VALUES ('e5f4c74f-f85f-42a9-b83f-3fd2ac67aedf', 'SYS-ID', '2018-05-03 20:35:22', 'N', 'SYS-ID', '2018-05-03 20:35:22', '0', '1', '户外布料', '户外布料', 'MAT_CATEGORY_GROUP', '0');

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
INSERT INTO `t_param_type` VALUES ('c70534dc-a206-4765-967d-c80b74917523', 'SYS-ID', '2018-05-03 20:34:56', 'N', 'SYS-ID', '2018-05-03 20:34:56', '0', 'MAT_CATEGORY_GROUP', '布料分类组', '布料分类组');

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
INSERT INTO `t_role_group` VALUES ('3b175af4-b3d1-41cc-aae9-20c00d709776', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 07:36:47', 'Y', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 07:36:49', '1', null, '9b070274-fc39-4048-8add-1c495ea88b2b', '3162f253-582d-469d-b5d2-27c8a1ffe326');

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
INSERT INTO `t_user` VALUES ('7484ae40-59c5-4eaf-aaa4-a6892c6558c2', 'SYS-ID', '2018-04-15 17:42:01', 'N', 'SYS-ID', '2018-04-15 17:42:09', '1', 'wlcFzOht5AI', '2018-04-15 17:42:01', 'ACTIVE', 'a@33.com');
INSERT INTO `t_user` VALUES ('cf09fd10-bbcc-4102-bb8a-46e7c96bb418', 'SYS-ID', '2018-04-14 20:51:16', 'N', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 22:26:38', '1', 'VjXJ55vzIFo', '2018-04-14 20:51:16', 'ACTIVE', '3cgg@163.com');

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
INSERT INTO `t_user_group` VALUES ('8f556641-b77e-4ba6-86ab-e7e8e290adb5', 'SYS-ID', '2018-04-14 20:51:16', 'Y', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418', '2018-04-26 08:19:21', '1', null, '5d53b91d-33ec-473d-ada9-524d3ee8cdc5', 'cf09fd10-bbcc-4102-bb8a-46e7c96bb418');
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
