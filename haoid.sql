/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : haoid

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-10-17 18:30:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `acer_member`
-- ----------------------------
DROP TABLE IF EXISTS `acer_member`;
CREATE TABLE `acer_member` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(16) NOT NULL DEFAULT '',
  `paypassword` varchar(16) NOT NULL DEFAULT '' COMMENT '交易密码',
  `uname` varchar(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `realname` varchar(16) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `certificates_type` varchar(16) NOT NULL COMMENT '证件类型',
  `certificates` varchar(32) NOT NULL COMMENT '证件号',
  `tel` int(16) NOT NULL,
  `register_time` int(10) NOT NULL COMMENT '注册时间',
  `log_time` int(10) NOT NULL COMMENT '登录时间',
  `vip` tinyint(2) NOT NULL,
  `vip_end` int(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `cny` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '人民币',
  `cny_cold` decimal(16,3) NOT NULL DEFAULT '0.000' COMMENT '冻结rmb',
  `headpic` varchar(32) NOT NULL DEFAULT '' COMMENT '头像',
  `content` varchar(256) NOT NULL DEFAULT '' COMMENT '个人简介',
  `city` varchar(32) NOT NULL DEFAULT '',
  `region` varchar(128) NOT NULL DEFAULT '' COMMENT '区域',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acer_member
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yang_admin`;
CREATE TABLE `yang_admin` (
  `admin_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '管理员表',
  `username` varchar(32) NOT NULL COMMENT '管理员登陆账号',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `pwd_show` varchar(64) NOT NULL,
  `nav` varchar(255) NOT NULL COMMENT '权限',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_admin
-- ----------------------------
INSERT INTO `yang_admin` VALUES ('1', 'admin', 'f6d884998357f07ea71f903bc3f79073', 'www.haoid.cn', '1,2,3,4,6,7,8,15,9,10,11,12,13,14,17,16,21,22,26,27,28,29,30,18,33,32,35,36,40,44,41,52,43,45,46,47,48,49,50,51,56,57,58,59,60', '0');

-- ----------------------------
-- Table structure for `yang_areas`
-- ----------------------------
DROP TABLE IF EXISTS `yang_areas`;
CREATE TABLE `yang_areas` (
  `area_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `parent_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '地区父id',
  `area_name` varchar(120) NOT NULL DEFAULT '' COMMENT '地区名称',
  `area_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '地区类型 0:country,1:province,2:city,3:district',
  PRIMARY KEY (`area_id`),
  KEY `parent_id` (`parent_id`),
  KEY `area_type` (`area_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3438 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_areas
-- ----------------------------
INSERT INTO `yang_areas` VALUES ('1', '0', '中国', '0');
INSERT INTO `yang_areas` VALUES ('2', '1', '北京', '1');
INSERT INTO `yang_areas` VALUES ('3', '1', '安徽', '1');
INSERT INTO `yang_areas` VALUES ('4', '1', '福建', '1');
INSERT INTO `yang_areas` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `yang_areas` VALUES ('6', '1', '广东', '1');
INSERT INTO `yang_areas` VALUES ('7', '1', '广西', '1');
INSERT INTO `yang_areas` VALUES ('8', '1', '贵州', '1');
INSERT INTO `yang_areas` VALUES ('9', '1', '海南', '1');
INSERT INTO `yang_areas` VALUES ('10', '1', '河北', '1');
INSERT INTO `yang_areas` VALUES ('11', '1', '河南', '1');
INSERT INTO `yang_areas` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `yang_areas` VALUES ('13', '1', '湖北', '1');
INSERT INTO `yang_areas` VALUES ('14', '1', '湖南', '1');
INSERT INTO `yang_areas` VALUES ('15', '1', '吉林', '1');
INSERT INTO `yang_areas` VALUES ('16', '1', '江苏', '1');
INSERT INTO `yang_areas` VALUES ('17', '1', '江西', '1');
INSERT INTO `yang_areas` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `yang_areas` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `yang_areas` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `yang_areas` VALUES ('21', '1', '青海', '1');
INSERT INTO `yang_areas` VALUES ('22', '1', '山东', '1');
INSERT INTO `yang_areas` VALUES ('23', '1', '山西', '1');
INSERT INTO `yang_areas` VALUES ('24', '1', '陕西', '1');
INSERT INTO `yang_areas` VALUES ('25', '1', '上海', '1');
INSERT INTO `yang_areas` VALUES ('26', '1', '四川', '1');
INSERT INTO `yang_areas` VALUES ('27', '1', '天津', '1');
INSERT INTO `yang_areas` VALUES ('28', '1', '西藏', '1');
INSERT INTO `yang_areas` VALUES ('29', '1', '新疆', '1');
INSERT INTO `yang_areas` VALUES ('30', '1', '云南', '1');
INSERT INTO `yang_areas` VALUES ('31', '1', '浙江', '1');
INSERT INTO `yang_areas` VALUES ('32', '1', '重庆', '1');
INSERT INTO `yang_areas` VALUES ('33', '1', '香港', '1');
INSERT INTO `yang_areas` VALUES ('34', '1', '澳门', '1');
INSERT INTO `yang_areas` VALUES ('35', '1', '台湾', '1');
INSERT INTO `yang_areas` VALUES ('36', '3', '安庆', '2');
INSERT INTO `yang_areas` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `yang_areas` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `yang_areas` VALUES ('39', '3', '池州', '2');
INSERT INTO `yang_areas` VALUES ('40', '3', '滁州', '2');
INSERT INTO `yang_areas` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `yang_areas` VALUES ('42', '3', '淮北', '2');
INSERT INTO `yang_areas` VALUES ('43', '3', '淮南', '2');
INSERT INTO `yang_areas` VALUES ('44', '3', '黄山', '2');
INSERT INTO `yang_areas` VALUES ('45', '3', '六安', '2');
INSERT INTO `yang_areas` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `yang_areas` VALUES ('47', '3', '宿州', '2');
INSERT INTO `yang_areas` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `yang_areas` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `yang_areas` VALUES ('50', '3', '宣城', '2');
INSERT INTO `yang_areas` VALUES ('51', '3', '亳州', '2');
INSERT INTO `yang_areas` VALUES ('52', '2', '北京', '2');
INSERT INTO `yang_areas` VALUES ('53', '4', '福州', '2');
INSERT INTO `yang_areas` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `yang_areas` VALUES ('55', '4', '南平', '2');
INSERT INTO `yang_areas` VALUES ('56', '4', '宁德', '2');
INSERT INTO `yang_areas` VALUES ('57', '4', '莆田', '2');
INSERT INTO `yang_areas` VALUES ('58', '4', '泉州', '2');
INSERT INTO `yang_areas` VALUES ('59', '4', '三明', '2');
INSERT INTO `yang_areas` VALUES ('60', '4', '厦门', '2');
INSERT INTO `yang_areas` VALUES ('61', '4', '漳州', '2');
INSERT INTO `yang_areas` VALUES ('62', '5', '兰州', '2');
INSERT INTO `yang_areas` VALUES ('63', '5', '白银', '2');
INSERT INTO `yang_areas` VALUES ('64', '5', '定西', '2');
INSERT INTO `yang_areas` VALUES ('65', '5', '甘南', '2');
INSERT INTO `yang_areas` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `yang_areas` VALUES ('67', '5', '金昌', '2');
INSERT INTO `yang_areas` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `yang_areas` VALUES ('69', '5', '临夏', '2');
INSERT INTO `yang_areas` VALUES ('70', '5', '陇南', '2');
INSERT INTO `yang_areas` VALUES ('71', '5', '平凉', '2');
INSERT INTO `yang_areas` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `yang_areas` VALUES ('73', '5', '天水', '2');
INSERT INTO `yang_areas` VALUES ('74', '5', '武威', '2');
INSERT INTO `yang_areas` VALUES ('75', '5', '张掖', '2');
INSERT INTO `yang_areas` VALUES ('76', '6', '广州', '2');
INSERT INTO `yang_areas` VALUES ('77', '6', '深圳', '2');
INSERT INTO `yang_areas` VALUES ('78', '6', '潮州', '2');
INSERT INTO `yang_areas` VALUES ('79', '6', '东莞', '2');
INSERT INTO `yang_areas` VALUES ('80', '6', '佛山', '2');
INSERT INTO `yang_areas` VALUES ('81', '6', '河源', '2');
INSERT INTO `yang_areas` VALUES ('82', '6', '惠州', '2');
INSERT INTO `yang_areas` VALUES ('83', '6', '江门', '2');
INSERT INTO `yang_areas` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `yang_areas` VALUES ('85', '6', '茂名', '2');
INSERT INTO `yang_areas` VALUES ('86', '6', '梅州', '2');
INSERT INTO `yang_areas` VALUES ('87', '6', '清远', '2');
INSERT INTO `yang_areas` VALUES ('88', '6', '汕头', '2');
INSERT INTO `yang_areas` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `yang_areas` VALUES ('90', '6', '韶关', '2');
INSERT INTO `yang_areas` VALUES ('91', '6', '阳江', '2');
INSERT INTO `yang_areas` VALUES ('92', '6', '云浮', '2');
INSERT INTO `yang_areas` VALUES ('93', '6', '湛江', '2');
INSERT INTO `yang_areas` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `yang_areas` VALUES ('95', '6', '中山', '2');
INSERT INTO `yang_areas` VALUES ('96', '6', '珠海', '2');
INSERT INTO `yang_areas` VALUES ('97', '7', '南宁', '2');
INSERT INTO `yang_areas` VALUES ('98', '7', '桂林', '2');
INSERT INTO `yang_areas` VALUES ('99', '7', '百色', '2');
INSERT INTO `yang_areas` VALUES ('100', '7', '北海', '2');
INSERT INTO `yang_areas` VALUES ('101', '7', '崇左', '2');
INSERT INTO `yang_areas` VALUES ('102', '7', '防城港', '2');
INSERT INTO `yang_areas` VALUES ('103', '7', '贵港', '2');
INSERT INTO `yang_areas` VALUES ('104', '7', '河池', '2');
INSERT INTO `yang_areas` VALUES ('105', '7', '贺州', '2');
INSERT INTO `yang_areas` VALUES ('106', '7', '来宾', '2');
INSERT INTO `yang_areas` VALUES ('107', '7', '柳州', '2');
INSERT INTO `yang_areas` VALUES ('108', '7', '钦州', '2');
INSERT INTO `yang_areas` VALUES ('109', '7', '梧州', '2');
INSERT INTO `yang_areas` VALUES ('110', '7', '玉林', '2');
INSERT INTO `yang_areas` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `yang_areas` VALUES ('112', '8', '安顺', '2');
INSERT INTO `yang_areas` VALUES ('113', '8', '毕节', '2');
INSERT INTO `yang_areas` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `yang_areas` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `yang_areas` VALUES ('116', '8', '黔南', '2');
INSERT INTO `yang_areas` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `yang_areas` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `yang_areas` VALUES ('119', '8', '遵义', '2');
INSERT INTO `yang_areas` VALUES ('120', '9', '海口', '2');
INSERT INTO `yang_areas` VALUES ('121', '9', '三亚', '2');
INSERT INTO `yang_areas` VALUES ('122', '9', '白沙', '2');
INSERT INTO `yang_areas` VALUES ('123', '9', '保亭', '2');
INSERT INTO `yang_areas` VALUES ('124', '9', '昌江', '2');
INSERT INTO `yang_areas` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `yang_areas` VALUES ('126', '9', '定安县', '2');
INSERT INTO `yang_areas` VALUES ('127', '9', '东方', '2');
INSERT INTO `yang_areas` VALUES ('128', '9', '乐东', '2');
INSERT INTO `yang_areas` VALUES ('129', '9', '临高县', '2');
INSERT INTO `yang_areas` VALUES ('130', '9', '陵水', '2');
INSERT INTO `yang_areas` VALUES ('131', '9', '琼海', '2');
INSERT INTO `yang_areas` VALUES ('132', '9', '琼中', '2');
INSERT INTO `yang_areas` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `yang_areas` VALUES ('134', '9', '万宁', '2');
INSERT INTO `yang_areas` VALUES ('135', '9', '文昌', '2');
INSERT INTO `yang_areas` VALUES ('136', '9', '五指山', '2');
INSERT INTO `yang_areas` VALUES ('137', '9', '儋州', '2');
INSERT INTO `yang_areas` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `yang_areas` VALUES ('139', '10', '保定', '2');
INSERT INTO `yang_areas` VALUES ('140', '10', '沧州', '2');
INSERT INTO `yang_areas` VALUES ('141', '10', '承德', '2');
INSERT INTO `yang_areas` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `yang_areas` VALUES ('143', '10', '衡水', '2');
INSERT INTO `yang_areas` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `yang_areas` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `yang_areas` VALUES ('146', '10', '唐山', '2');
INSERT INTO `yang_areas` VALUES ('147', '10', '邢台', '2');
INSERT INTO `yang_areas` VALUES ('148', '10', '张家口', '2');
INSERT INTO `yang_areas` VALUES ('149', '11', '郑州', '2');
INSERT INTO `yang_areas` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `yang_areas` VALUES ('151', '11', '开封', '2');
INSERT INTO `yang_areas` VALUES ('152', '11', '安阳', '2');
INSERT INTO `yang_areas` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `yang_areas` VALUES ('154', '11', '济源', '2');
INSERT INTO `yang_areas` VALUES ('155', '11', '焦作', '2');
INSERT INTO `yang_areas` VALUES ('156', '11', '南阳', '2');
INSERT INTO `yang_areas` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `yang_areas` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `yang_areas` VALUES ('159', '11', '商丘', '2');
INSERT INTO `yang_areas` VALUES ('160', '11', '新乡', '2');
INSERT INTO `yang_areas` VALUES ('161', '11', '信阳', '2');
INSERT INTO `yang_areas` VALUES ('162', '11', '许昌', '2');
INSERT INTO `yang_areas` VALUES ('163', '11', '周口', '2');
INSERT INTO `yang_areas` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `yang_areas` VALUES ('165', '11', '漯河', '2');
INSERT INTO `yang_areas` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `yang_areas` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `yang_areas` VALUES ('168', '12', '大庆', '2');
INSERT INTO `yang_areas` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `yang_areas` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `yang_areas` VALUES ('171', '12', '黑河', '2');
INSERT INTO `yang_areas` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `yang_areas` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `yang_areas` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `yang_areas` VALUES ('175', '12', '七台河', '2');
INSERT INTO `yang_areas` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `yang_areas` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `yang_areas` VALUES ('178', '12', '绥化', '2');
INSERT INTO `yang_areas` VALUES ('179', '12', '伊春', '2');
INSERT INTO `yang_areas` VALUES ('180', '13', '武汉', '2');
INSERT INTO `yang_areas` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `yang_areas` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `yang_areas` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `yang_areas` VALUES ('184', '13', '黄石', '2');
INSERT INTO `yang_areas` VALUES ('185', '13', '荆门', '2');
INSERT INTO `yang_areas` VALUES ('186', '13', '荆州', '2');
INSERT INTO `yang_areas` VALUES ('187', '13', '潜江', '2');
INSERT INTO `yang_areas` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `yang_areas` VALUES ('189', '13', '十堰', '2');
INSERT INTO `yang_areas` VALUES ('190', '13', '随州', '2');
INSERT INTO `yang_areas` VALUES ('191', '13', '天门', '2');
INSERT INTO `yang_areas` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `yang_areas` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `yang_areas` VALUES ('194', '13', '孝感', '2');
INSERT INTO `yang_areas` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `yang_areas` VALUES ('196', '13', '恩施', '2');
INSERT INTO `yang_areas` VALUES ('197', '14', '长沙', '2');
INSERT INTO `yang_areas` VALUES ('198', '14', '张家界', '2');
INSERT INTO `yang_areas` VALUES ('199', '14', '常德', '2');
INSERT INTO `yang_areas` VALUES ('200', '14', '郴州', '2');
INSERT INTO `yang_areas` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `yang_areas` VALUES ('202', '14', '怀化', '2');
INSERT INTO `yang_areas` VALUES ('203', '14', '娄底', '2');
INSERT INTO `yang_areas` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `yang_areas` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `yang_areas` VALUES ('206', '14', '湘西', '2');
INSERT INTO `yang_areas` VALUES ('207', '14', '益阳', '2');
INSERT INTO `yang_areas` VALUES ('208', '14', '永州', '2');
INSERT INTO `yang_areas` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `yang_areas` VALUES ('210', '14', '株洲', '2');
INSERT INTO `yang_areas` VALUES ('211', '15', '长春', '2');
INSERT INTO `yang_areas` VALUES ('212', '15', '吉林', '2');
INSERT INTO `yang_areas` VALUES ('213', '15', '白城', '2');
INSERT INTO `yang_areas` VALUES ('214', '15', '白山', '2');
INSERT INTO `yang_areas` VALUES ('215', '15', '辽源', '2');
INSERT INTO `yang_areas` VALUES ('216', '15', '四平', '2');
INSERT INTO `yang_areas` VALUES ('217', '15', '松原', '2');
INSERT INTO `yang_areas` VALUES ('218', '15', '通化', '2');
INSERT INTO `yang_areas` VALUES ('219', '15', '延边', '2');
INSERT INTO `yang_areas` VALUES ('220', '16', '南京', '2');
INSERT INTO `yang_areas` VALUES ('221', '16', '苏州', '2');
INSERT INTO `yang_areas` VALUES ('222', '16', '无锡', '2');
INSERT INTO `yang_areas` VALUES ('223', '16', '常州', '2');
INSERT INTO `yang_areas` VALUES ('224', '16', '淮安', '2');
INSERT INTO `yang_areas` VALUES ('225', '16', '连云港', '2');
INSERT INTO `yang_areas` VALUES ('226', '16', '南通', '2');
INSERT INTO `yang_areas` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `yang_areas` VALUES ('228', '16', '泰州', '2');
INSERT INTO `yang_areas` VALUES ('229', '16', '徐州', '2');
INSERT INTO `yang_areas` VALUES ('230', '16', '盐城', '2');
INSERT INTO `yang_areas` VALUES ('231', '16', '扬州', '2');
INSERT INTO `yang_areas` VALUES ('232', '16', '镇江', '2');
INSERT INTO `yang_areas` VALUES ('233', '17', '南昌', '2');
INSERT INTO `yang_areas` VALUES ('234', '17', '抚州', '2');
INSERT INTO `yang_areas` VALUES ('235', '17', '赣州', '2');
INSERT INTO `yang_areas` VALUES ('236', '17', '吉安', '2');
INSERT INTO `yang_areas` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `yang_areas` VALUES ('238', '17', '九江', '2');
INSERT INTO `yang_areas` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `yang_areas` VALUES ('240', '17', '上饶', '2');
INSERT INTO `yang_areas` VALUES ('241', '17', '新余', '2');
INSERT INTO `yang_areas` VALUES ('242', '17', '宜春', '2');
INSERT INTO `yang_areas` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `yang_areas` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `yang_areas` VALUES ('245', '18', '大连', '2');
INSERT INTO `yang_areas` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `yang_areas` VALUES ('247', '18', '本溪', '2');
INSERT INTO `yang_areas` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `yang_areas` VALUES ('249', '18', '丹东', '2');
INSERT INTO `yang_areas` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `yang_areas` VALUES ('251', '18', '阜新', '2');
INSERT INTO `yang_areas` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `yang_areas` VALUES ('253', '18', '锦州', '2');
INSERT INTO `yang_areas` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `yang_areas` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `yang_areas` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `yang_areas` VALUES ('257', '18', '营口', '2');
INSERT INTO `yang_areas` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `yang_areas` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `yang_areas` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `yang_areas` VALUES ('261', '19', '包头', '2');
INSERT INTO `yang_areas` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `yang_areas` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `yang_areas` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `yang_areas` VALUES ('265', '19', '通辽', '2');
INSERT INTO `yang_areas` VALUES ('266', '19', '乌海', '2');
INSERT INTO `yang_areas` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `yang_areas` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `yang_areas` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `yang_areas` VALUES ('270', '20', '银川', '2');
INSERT INTO `yang_areas` VALUES ('271', '20', '固原', '2');
INSERT INTO `yang_areas` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `yang_areas` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `yang_areas` VALUES ('274', '20', '中卫', '2');
INSERT INTO `yang_areas` VALUES ('275', '21', '西宁', '2');
INSERT INTO `yang_areas` VALUES ('276', '21', '果洛', '2');
INSERT INTO `yang_areas` VALUES ('277', '21', '海北', '2');
INSERT INTO `yang_areas` VALUES ('278', '21', '海东', '2');
INSERT INTO `yang_areas` VALUES ('279', '21', '海南', '2');
INSERT INTO `yang_areas` VALUES ('280', '21', '海西', '2');
INSERT INTO `yang_areas` VALUES ('281', '21', '黄南', '2');
INSERT INTO `yang_areas` VALUES ('282', '21', '玉树', '2');
INSERT INTO `yang_areas` VALUES ('283', '22', '济南', '2');
INSERT INTO `yang_areas` VALUES ('284', '22', '青岛', '2');
INSERT INTO `yang_areas` VALUES ('285', '22', '滨州', '2');
INSERT INTO `yang_areas` VALUES ('286', '22', '德州', '2');
INSERT INTO `yang_areas` VALUES ('287', '22', '东营', '2');
INSERT INTO `yang_areas` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `yang_areas` VALUES ('289', '22', '济宁', '2');
INSERT INTO `yang_areas` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `yang_areas` VALUES ('291', '22', '聊城', '2');
INSERT INTO `yang_areas` VALUES ('292', '22', '临沂', '2');
INSERT INTO `yang_areas` VALUES ('293', '22', '日照', '2');
INSERT INTO `yang_areas` VALUES ('294', '22', '泰安', '2');
INSERT INTO `yang_areas` VALUES ('295', '22', '威海', '2');
INSERT INTO `yang_areas` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `yang_areas` VALUES ('297', '22', '烟台', '2');
INSERT INTO `yang_areas` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `yang_areas` VALUES ('299', '22', '淄博', '2');
INSERT INTO `yang_areas` VALUES ('300', '23', '太原', '2');
INSERT INTO `yang_areas` VALUES ('301', '23', '长治', '2');
INSERT INTO `yang_areas` VALUES ('302', '23', '大同', '2');
INSERT INTO `yang_areas` VALUES ('303', '23', '晋城', '2');
INSERT INTO `yang_areas` VALUES ('304', '23', '晋中', '2');
INSERT INTO `yang_areas` VALUES ('305', '23', '临汾', '2');
INSERT INTO `yang_areas` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `yang_areas` VALUES ('307', '23', '朔州', '2');
INSERT INTO `yang_areas` VALUES ('308', '23', '忻州', '2');
INSERT INTO `yang_areas` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `yang_areas` VALUES ('310', '23', '运城', '2');
INSERT INTO `yang_areas` VALUES ('311', '24', '西安', '2');
INSERT INTO `yang_areas` VALUES ('312', '24', '安康', '2');
INSERT INTO `yang_areas` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `yang_areas` VALUES ('314', '24', '汉中', '2');
INSERT INTO `yang_areas` VALUES ('315', '24', '商洛', '2');
INSERT INTO `yang_areas` VALUES ('316', '24', '铜川', '2');
INSERT INTO `yang_areas` VALUES ('317', '24', '渭南', '2');
INSERT INTO `yang_areas` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `yang_areas` VALUES ('319', '24', '延安', '2');
INSERT INTO `yang_areas` VALUES ('320', '24', '榆林', '2');
INSERT INTO `yang_areas` VALUES ('321', '25', '上海', '2');
INSERT INTO `yang_areas` VALUES ('322', '26', '成都', '2');
INSERT INTO `yang_areas` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `yang_areas` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `yang_areas` VALUES ('325', '26', '巴中', '2');
INSERT INTO `yang_areas` VALUES ('326', '26', '达州', '2');
INSERT INTO `yang_areas` VALUES ('327', '26', '德阳', '2');
INSERT INTO `yang_areas` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `yang_areas` VALUES ('329', '26', '广安', '2');
INSERT INTO `yang_areas` VALUES ('330', '26', '广元', '2');
INSERT INTO `yang_areas` VALUES ('331', '26', '乐山', '2');
INSERT INTO `yang_areas` VALUES ('332', '26', '凉山', '2');
INSERT INTO `yang_areas` VALUES ('333', '26', '眉山', '2');
INSERT INTO `yang_areas` VALUES ('334', '26', '南充', '2');
INSERT INTO `yang_areas` VALUES ('335', '26', '内江', '2');
INSERT INTO `yang_areas` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `yang_areas` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `yang_areas` VALUES ('338', '26', '雅安', '2');
INSERT INTO `yang_areas` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `yang_areas` VALUES ('340', '26', '资阳', '2');
INSERT INTO `yang_areas` VALUES ('341', '26', '自贡', '2');
INSERT INTO `yang_areas` VALUES ('342', '26', '泸州', '2');
INSERT INTO `yang_areas` VALUES ('343', '27', '天津', '2');
INSERT INTO `yang_areas` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `yang_areas` VALUES ('345', '28', '阿里', '2');
INSERT INTO `yang_areas` VALUES ('346', '28', '昌都', '2');
INSERT INTO `yang_areas` VALUES ('347', '28', '林芝', '2');
INSERT INTO `yang_areas` VALUES ('348', '28', '那曲', '2');
INSERT INTO `yang_areas` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `yang_areas` VALUES ('350', '28', '山南', '2');
INSERT INTO `yang_areas` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `yang_areas` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `yang_areas` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `yang_areas` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `yang_areas` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `yang_areas` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `yang_areas` VALUES ('357', '29', '哈密', '2');
INSERT INTO `yang_areas` VALUES ('358', '29', '和田', '2');
INSERT INTO `yang_areas` VALUES ('359', '29', '喀什', '2');
INSERT INTO `yang_areas` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `yang_areas` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `yang_areas` VALUES ('362', '29', '石河子', '2');
INSERT INTO `yang_areas` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `yang_areas` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `yang_areas` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `yang_areas` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `yang_areas` VALUES ('367', '30', '昆明', '2');
INSERT INTO `yang_areas` VALUES ('368', '30', '怒江', '2');
INSERT INTO `yang_areas` VALUES ('369', '30', '普洱', '2');
INSERT INTO `yang_areas` VALUES ('370', '30', '丽江', '2');
INSERT INTO `yang_areas` VALUES ('371', '30', '保山', '2');
INSERT INTO `yang_areas` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `yang_areas` VALUES ('373', '30', '大理', '2');
INSERT INTO `yang_areas` VALUES ('374', '30', '德宏', '2');
INSERT INTO `yang_areas` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `yang_areas` VALUES ('376', '30', '红河', '2');
INSERT INTO `yang_areas` VALUES ('377', '30', '临沧', '2');
INSERT INTO `yang_areas` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `yang_areas` VALUES ('379', '30', '文山', '2');
INSERT INTO `yang_areas` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `yang_areas` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `yang_areas` VALUES ('382', '30', '昭通', '2');
INSERT INTO `yang_areas` VALUES ('383', '31', '杭州', '2');
INSERT INTO `yang_areas` VALUES ('384', '31', '湖州', '2');
INSERT INTO `yang_areas` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `yang_areas` VALUES ('386', '31', '金华', '2');
INSERT INTO `yang_areas` VALUES ('387', '31', '丽水', '2');
INSERT INTO `yang_areas` VALUES ('388', '31', '宁波', '2');
INSERT INTO `yang_areas` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `yang_areas` VALUES ('390', '31', '台州', '2');
INSERT INTO `yang_areas` VALUES ('391', '31', '温州', '2');
INSERT INTO `yang_areas` VALUES ('392', '31', '舟山', '2');
INSERT INTO `yang_areas` VALUES ('393', '31', '衢州', '2');
INSERT INTO `yang_areas` VALUES ('394', '32', '重庆', '2');
INSERT INTO `yang_areas` VALUES ('395', '33', '香港', '2');
INSERT INTO `yang_areas` VALUES ('396', '34', '澳门', '2');
INSERT INTO `yang_areas` VALUES ('397', '35', '台湾', '2');
INSERT INTO `yang_areas` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `yang_areas` VALUES ('399', '36', '大观区', '3');
INSERT INTO `yang_areas` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `yang_areas` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `yang_areas` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `yang_areas` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `yang_areas` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `yang_areas` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `yang_areas` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `yang_areas` VALUES ('407', '36', '望江县', '3');
INSERT INTO `yang_areas` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `yang_areas` VALUES ('409', '37', '中市区', '3');
INSERT INTO `yang_areas` VALUES ('410', '37', '东市区', '3');
INSERT INTO `yang_areas` VALUES ('411', '37', '西市区', '3');
INSERT INTO `yang_areas` VALUES ('412', '37', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `yang_areas` VALUES ('414', '37', '五河县', '3');
INSERT INTO `yang_areas` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `yang_areas` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `yang_areas` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `yang_areas` VALUES ('418', '38', '无为县', '3');
INSERT INTO `yang_areas` VALUES ('419', '38', '含山县', '3');
INSERT INTO `yang_areas` VALUES ('420', '38', '和县', '3');
INSERT INTO `yang_areas` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `yang_areas` VALUES ('422', '39', '东至县', '3');
INSERT INTO `yang_areas` VALUES ('423', '39', '石台县', '3');
INSERT INTO `yang_areas` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `yang_areas` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `yang_areas` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `yang_areas` VALUES ('427', '40', '天长市', '3');
INSERT INTO `yang_areas` VALUES ('428', '40', '明光市', '3');
INSERT INTO `yang_areas` VALUES ('429', '40', '来安县', '3');
INSERT INTO `yang_areas` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `yang_areas` VALUES ('431', '40', '定远县', '3');
INSERT INTO `yang_areas` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `yang_areas` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `yang_areas` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `yang_areas` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `yang_areas` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `yang_areas` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `yang_areas` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `yang_areas` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `yang_areas` VALUES ('440', '41', '界首市', '3');
INSERT INTO `yang_areas` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `yang_areas` VALUES ('442', '41', '太和县', '3');
INSERT INTO `yang_areas` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `yang_areas` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `yang_areas` VALUES ('445', '42', '相山区', '3');
INSERT INTO `yang_areas` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `yang_areas` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `yang_areas` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `yang_areas` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `yang_areas` VALUES ('450', '43', '大通区', '3');
INSERT INTO `yang_areas` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `yang_areas` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `yang_areas` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `yang_areas` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `yang_areas` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `yang_areas` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `yang_areas` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `yang_areas` VALUES ('458', '44', '歙县', '3');
INSERT INTO `yang_areas` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `yang_areas` VALUES ('460', '44', '黟县', '3');
INSERT INTO `yang_areas` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `yang_areas` VALUES ('462', '45', '金安区', '3');
INSERT INTO `yang_areas` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `yang_areas` VALUES ('464', '45', '寿县', '3');
INSERT INTO `yang_areas` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `yang_areas` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `yang_areas` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `yang_areas` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `yang_areas` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `yang_areas` VALUES ('470', '46', '花山区', '3');
INSERT INTO `yang_areas` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `yang_areas` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `yang_areas` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `yang_areas` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `yang_areas` VALUES ('475', '47', '萧县', '3');
INSERT INTO `yang_areas` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `yang_areas` VALUES ('477', '47', '泗县', '3');
INSERT INTO `yang_areas` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `yang_areas` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `yang_areas` VALUES ('480', '48', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `yang_areas` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `yang_areas` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `yang_areas` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `yang_areas` VALUES ('485', '49', '三山区', '3');
INSERT INTO `yang_areas` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `yang_areas` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `yang_areas` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `yang_areas` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `yang_areas` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `yang_areas` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `yang_areas` VALUES ('492', '50', '广德县', '3');
INSERT INTO `yang_areas` VALUES ('493', '50', '泾县', '3');
INSERT INTO `yang_areas` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `yang_areas` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `yang_areas` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `yang_areas` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `yang_areas` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `yang_areas` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `yang_areas` VALUES ('500', '52', '东城区', '3');
INSERT INTO `yang_areas` VALUES ('501', '52', '西城区', '3');
INSERT INTO `yang_areas` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `yang_areas` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `yang_areas` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `yang_areas` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `yang_areas` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `yang_areas` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `yang_areas` VALUES ('508', '52', '房山区', '3');
INSERT INTO `yang_areas` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `yang_areas` VALUES ('510', '52', '通州区', '3');
INSERT INTO `yang_areas` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `yang_areas` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `yang_areas` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `yang_areas` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `yang_areas` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `yang_areas` VALUES ('516', '52', '密云县', '3');
INSERT INTO `yang_areas` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `yang_areas` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('519', '53', '台江区', '3');
INSERT INTO `yang_areas` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `yang_areas` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `yang_areas` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `yang_areas` VALUES ('523', '53', '福清市', '3');
INSERT INTO `yang_areas` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `yang_areas` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `yang_areas` VALUES ('526', '53', '连江县', '3');
INSERT INTO `yang_areas` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `yang_areas` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `yang_areas` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `yang_areas` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `yang_areas` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `yang_areas` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `yang_areas` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `yang_areas` VALUES ('534', '54', '永定县', '3');
INSERT INTO `yang_areas` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `yang_areas` VALUES ('536', '54', '武平县', '3');
INSERT INTO `yang_areas` VALUES ('537', '54', '连城县', '3');
INSERT INTO `yang_areas` VALUES ('538', '55', '延平区', '3');
INSERT INTO `yang_areas` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `yang_areas` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `yang_areas` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `yang_areas` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `yang_areas` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `yang_areas` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `yang_areas` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `yang_areas` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `yang_areas` VALUES ('547', '55', '政和县', '3');
INSERT INTO `yang_areas` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `yang_areas` VALUES ('549', '56', '福安市', '3');
INSERT INTO `yang_areas` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `yang_areas` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `yang_areas` VALUES ('552', '56', '古田县', '3');
INSERT INTO `yang_areas` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `yang_areas` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `yang_areas` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `yang_areas` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `yang_areas` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `yang_areas` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `yang_areas` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `yang_areas` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `yang_areas` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `yang_areas` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `yang_areas` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `yang_areas` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `yang_areas` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `yang_areas` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `yang_areas` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `yang_areas` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `yang_areas` VALUES ('569', '58', '南安市', '3');
INSERT INTO `yang_areas` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `yang_areas` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `yang_areas` VALUES ('572', '58', '永春县', '3');
INSERT INTO `yang_areas` VALUES ('573', '58', '德化县', '3');
INSERT INTO `yang_areas` VALUES ('574', '58', '金门县', '3');
INSERT INTO `yang_areas` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `yang_areas` VALUES ('576', '59', '三元区', '3');
INSERT INTO `yang_areas` VALUES ('577', '59', '永安市', '3');
INSERT INTO `yang_areas` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `yang_areas` VALUES ('579', '59', '清流县', '3');
INSERT INTO `yang_areas` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `yang_areas` VALUES ('581', '59', '大田县', '3');
INSERT INTO `yang_areas` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `yang_areas` VALUES ('583', '59', '沙县', '3');
INSERT INTO `yang_areas` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `yang_areas` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `yang_areas` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `yang_areas` VALUES ('587', '60', '思明区', '3');
INSERT INTO `yang_areas` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `yang_areas` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `yang_areas` VALUES ('590', '60', '集美区', '3');
INSERT INTO `yang_areas` VALUES ('591', '60', '同安区', '3');
INSERT INTO `yang_areas` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `yang_areas` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `yang_areas` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `yang_areas` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `yang_areas` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `yang_areas` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `yang_areas` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `yang_areas` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `yang_areas` VALUES ('600', '61', '东山县', '3');
INSERT INTO `yang_areas` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `yang_areas` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `yang_areas` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `yang_areas` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `yang_areas` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `yang_areas` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `yang_areas` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `yang_areas` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `yang_areas` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `yang_areas` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `yang_areas` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `yang_areas` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `yang_areas` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `yang_areas` VALUES ('1034', '118', '印江', '3');
INSERT INTO `yang_areas` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `yang_areas` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `yang_areas` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `yang_areas` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `yang_areas` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `yang_areas` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `yang_areas` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `yang_areas` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `yang_areas` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `yang_areas` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `yang_areas` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `yang_areas` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `yang_areas` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `yang_areas` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `yang_areas` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `yang_areas` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `yang_areas` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `yang_areas` VALUES ('1052', '119', '道真', '3');
INSERT INTO `yang_areas` VALUES ('1053', '119', '务川', '3');
INSERT INTO `yang_areas` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `yang_areas` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `yang_areas` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `yang_areas` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `yang_areas` VALUES ('1058', '137', '市区', '3');
INSERT INTO `yang_areas` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `yang_areas` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `yang_areas` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `yang_areas` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `yang_areas` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `yang_areas` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `yang_areas` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `yang_areas` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `yang_areas` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `yang_areas` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `yang_areas` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `yang_areas` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `yang_areas` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `yang_areas` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `yang_areas` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `yang_areas` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `yang_areas` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `yang_areas` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `yang_areas` VALUES ('1077', '137', '其他', '3');
INSERT INTO `yang_areas` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `yang_areas` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `yang_areas` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `yang_areas` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `yang_areas` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `yang_areas` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `yang_areas` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `yang_areas` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `yang_areas` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `yang_areas` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `yang_areas` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `yang_areas` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `yang_areas` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `yang_areas` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `yang_areas` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `yang_areas` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `yang_areas` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `yang_areas` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `yang_areas` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `yang_areas` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `yang_areas` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `yang_areas` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `yang_areas` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `yang_areas` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `yang_areas` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `yang_areas` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `yang_areas` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `yang_areas` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `yang_areas` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `yang_areas` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `yang_areas` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `yang_areas` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `yang_areas` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `yang_areas` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `yang_areas` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `yang_areas` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `yang_areas` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `yang_areas` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `yang_areas` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `yang_areas` VALUES ('1121', '139', '易县', '3');
INSERT INTO `yang_areas` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `yang_areas` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `yang_areas` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `yang_areas` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `yang_areas` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `yang_areas` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `yang_areas` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `yang_areas` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `yang_areas` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `yang_areas` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `yang_areas` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `yang_areas` VALUES ('1134', '140', '青县', '3');
INSERT INTO `yang_areas` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `yang_areas` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `yang_areas` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `yang_areas` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `yang_areas` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `yang_areas` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `yang_areas` VALUES ('1141', '140', '献县', '3');
INSERT INTO `yang_areas` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `yang_areas` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `yang_areas` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `yang_areas` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `yang_areas` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `yang_areas` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `yang_areas` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `yang_areas` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `yang_areas` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `yang_areas` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `yang_areas` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `yang_areas` VALUES ('1153', '141', '围场', '3');
INSERT INTO `yang_areas` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `yang_areas` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `yang_areas` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `yang_areas` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `yang_areas` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `yang_areas` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `yang_areas` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `yang_areas` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `yang_areas` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `yang_areas` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `yang_areas` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `yang_areas` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `yang_areas` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `yang_areas` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `yang_areas` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `yang_areas` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `yang_areas` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `yang_areas` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `yang_areas` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `yang_areas` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `yang_areas` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `yang_areas` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `yang_areas` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `yang_areas` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `yang_areas` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `yang_areas` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `yang_areas` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `yang_areas` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `yang_areas` VALUES ('1182', '143', '景县', '3');
INSERT INTO `yang_areas` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `yang_areas` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `yang_areas` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `yang_areas` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `yang_areas` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `yang_areas` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `yang_areas` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `yang_areas` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `yang_areas` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `yang_areas` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `yang_areas` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `yang_areas` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `yang_areas` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `yang_areas` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `yang_areas` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `yang_areas` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `yang_areas` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `yang_areas` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `yang_areas` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `yang_areas` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `yang_areas` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `yang_areas` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `yang_areas` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `yang_areas` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `yang_areas` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `yang_areas` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `yang_areas` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `yang_areas` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `yang_areas` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `yang_areas` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `yang_areas` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `yang_areas` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `yang_areas` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `yang_areas` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `yang_areas` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `yang_areas` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `yang_areas` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `yang_areas` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `yang_areas` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `yang_areas` VALUES ('1224', '147', '任县', '3');
INSERT INTO `yang_areas` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `yang_areas` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `yang_areas` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `yang_areas` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `yang_areas` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `yang_areas` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `yang_areas` VALUES ('1231', '147', '威县', '3');
INSERT INTO `yang_areas` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `yang_areas` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `yang_areas` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `yang_areas` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `yang_areas` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `yang_areas` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `yang_areas` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `yang_areas` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `yang_areas` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `yang_areas` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `yang_areas` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `yang_areas` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `yang_areas` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `yang_areas` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `yang_areas` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `yang_areas` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `yang_areas` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `yang_areas` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `yang_areas` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `yang_areas` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `yang_areas` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `yang_areas` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `yang_areas` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `yang_areas` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `yang_areas` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `yang_areas` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `yang_areas` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `yang_areas` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `yang_areas` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `yang_areas` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `yang_areas` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `yang_areas` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `yang_areas` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `yang_areas` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `yang_areas` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `yang_areas` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `yang_areas` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `yang_areas` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `yang_areas` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `yang_areas` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `yang_areas` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `yang_areas` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `yang_areas` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `yang_areas` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `yang_areas` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `yang_areas` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `yang_areas` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `yang_areas` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `yang_areas` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `yang_areas` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `yang_areas` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `yang_areas` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `yang_areas` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `yang_areas` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `yang_areas` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `yang_areas` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `yang_areas` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `yang_areas` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `yang_areas` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `yang_areas` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `yang_areas` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `yang_areas` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `yang_areas` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `yang_areas` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `yang_areas` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `yang_areas` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `yang_areas` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `yang_areas` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `yang_areas` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `yang_areas` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `yang_areas` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `yang_areas` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `yang_areas` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `yang_areas` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `yang_areas` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `yang_areas` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `yang_areas` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `yang_areas` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `yang_areas` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `yang_areas` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `yang_areas` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `yang_areas` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `yang_areas` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `yang_areas` VALUES ('1317', '155', '温县', '3');
INSERT INTO `yang_areas` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `yang_areas` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `yang_areas` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `yang_areas` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `yang_areas` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `yang_areas` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `yang_areas` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `yang_areas` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `yang_areas` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `yang_areas` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `yang_areas` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `yang_areas` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `yang_areas` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `yang_areas` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `yang_areas` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `yang_areas` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `yang_areas` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `yang_areas` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `yang_areas` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `yang_areas` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `yang_areas` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `yang_areas` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `yang_areas` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `yang_areas` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `yang_areas` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `yang_areas` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `yang_areas` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `yang_areas` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `yang_areas` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `yang_areas` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `yang_areas` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `yang_areas` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `yang_areas` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `yang_areas` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `yang_areas` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `yang_areas` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `yang_areas` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `yang_areas` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `yang_areas` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `yang_areas` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `yang_areas` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `yang_areas` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `yang_areas` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `yang_areas` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `yang_areas` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `yang_areas` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `yang_areas` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `yang_areas` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `yang_areas` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `yang_areas` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `yang_areas` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `yang_areas` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `yang_areas` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `yang_areas` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `yang_areas` VALUES ('1372', '161', '新县', '3');
INSERT INTO `yang_areas` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `yang_areas` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `yang_areas` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `yang_areas` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `yang_areas` VALUES ('1377', '161', '息县', '3');
INSERT INTO `yang_areas` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `yang_areas` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `yang_areas` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `yang_areas` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `yang_areas` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `yang_areas` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `yang_areas` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `yang_areas` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `yang_areas` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `yang_areas` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `yang_areas` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `yang_areas` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `yang_areas` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `yang_areas` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `yang_areas` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `yang_areas` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `yang_areas` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `yang_areas` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `yang_areas` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `yang_areas` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `yang_areas` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `yang_areas` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `yang_areas` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `yang_areas` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `yang_areas` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `yang_areas` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `yang_areas` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `yang_areas` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `yang_areas` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `yang_areas` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `yang_areas` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `yang_areas` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `yang_areas` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `yang_areas` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `yang_areas` VALUES ('1412', '166', '范县', '3');
INSERT INTO `yang_areas` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `yang_areas` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `yang_areas` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `yang_areas` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `yang_areas` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `yang_areas` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `yang_areas` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `yang_areas` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `yang_areas` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `yang_areas` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `yang_areas` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `yang_areas` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `yang_areas` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `yang_areas` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `yang_areas` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `yang_areas` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `yang_areas` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `yang_areas` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `yang_areas` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `yang_areas` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `yang_areas` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `yang_areas` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `yang_areas` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `yang_areas` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `yang_areas` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `yang_areas` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `yang_areas` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `yang_areas` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `yang_areas` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `yang_areas` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `yang_areas` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `yang_areas` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `yang_areas` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `yang_areas` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `yang_areas` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `yang_areas` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `yang_areas` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `yang_areas` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `yang_areas` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `yang_areas` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `yang_areas` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `yang_areas` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `yang_areas` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `yang_areas` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `yang_areas` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `yang_areas` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `yang_areas` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `yang_areas` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `yang_areas` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `yang_areas` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `yang_areas` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `yang_areas` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `yang_areas` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `yang_areas` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `yang_areas` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `yang_areas` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `yang_areas` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `yang_areas` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `yang_areas` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `yang_areas` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `yang_areas` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `yang_areas` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `yang_areas` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `yang_areas` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `yang_areas` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `yang_areas` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `yang_areas` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `yang_areas` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `yang_areas` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `yang_areas` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `yang_areas` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `yang_areas` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `yang_areas` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `yang_areas` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `yang_areas` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `yang_areas` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `yang_areas` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `yang_areas` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `yang_areas` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `yang_areas` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `yang_areas` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `yang_areas` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `yang_areas` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `yang_areas` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `yang_areas` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `yang_areas` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `yang_areas` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `yang_areas` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `yang_areas` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `yang_areas` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `yang_areas` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `yang_areas` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `yang_areas` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `yang_areas` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `yang_areas` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `yang_areas` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `yang_areas` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `yang_areas` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `yang_areas` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `yang_areas` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `yang_areas` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `yang_areas` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `yang_areas` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `yang_areas` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `yang_areas` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `yang_areas` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `yang_areas` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `yang_areas` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `yang_areas` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `yang_areas` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `yang_areas` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `yang_areas` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `yang_areas` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `yang_areas` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `yang_areas` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `yang_areas` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `yang_areas` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `yang_areas` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `yang_areas` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `yang_areas` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `yang_areas` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `yang_areas` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `yang_areas` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `yang_areas` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `yang_areas` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `yang_areas` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `yang_areas` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `yang_areas` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `yang_areas` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `yang_areas` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `yang_areas` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `yang_areas` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `yang_areas` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `yang_areas` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `yang_areas` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `yang_areas` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `yang_areas` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `yang_areas` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `yang_areas` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `yang_areas` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `yang_areas` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `yang_areas` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `yang_areas` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `yang_areas` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `yang_areas` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `yang_areas` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `yang_areas` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `yang_areas` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `yang_areas` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `yang_areas` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `yang_areas` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `yang_areas` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `yang_areas` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `yang_areas` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `yang_areas` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `yang_areas` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `yang_areas` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `yang_areas` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `yang_areas` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `yang_areas` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `yang_areas` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `yang_areas` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `yang_areas` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `yang_areas` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `yang_areas` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `yang_areas` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `yang_areas` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `yang_areas` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `yang_areas` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `yang_areas` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `yang_areas` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `yang_areas` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `yang_areas` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `yang_areas` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `yang_areas` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `yang_areas` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `yang_areas` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `yang_areas` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `yang_areas` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `yang_areas` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `yang_areas` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `yang_areas` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `yang_areas` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `yang_areas` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `yang_areas` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `yang_areas` VALUES ('1600', '189', '房县', '3');
INSERT INTO `yang_areas` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `yang_areas` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `yang_areas` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `yang_areas` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `yang_areas` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `yang_areas` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `yang_areas` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `yang_areas` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `yang_areas` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `yang_areas` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `yang_areas` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `yang_areas` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `yang_areas` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `yang_areas` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `yang_areas` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `yang_areas` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `yang_areas` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `yang_areas` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `yang_areas` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `yang_areas` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `yang_areas` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `yang_areas` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `yang_areas` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `yang_areas` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `yang_areas` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `yang_areas` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `yang_areas` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `yang_areas` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `yang_areas` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `yang_areas` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `yang_areas` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `yang_areas` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `yang_areas` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `yang_areas` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `yang_areas` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `yang_areas` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `yang_areas` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `yang_areas` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `yang_areas` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `yang_areas` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `yang_areas` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `yang_areas` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `yang_areas` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `yang_areas` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `yang_areas` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `yang_areas` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `yang_areas` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `yang_areas` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `yang_areas` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `yang_areas` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `yang_areas` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `yang_areas` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `yang_areas` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `yang_areas` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `yang_areas` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `yang_areas` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `yang_areas` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `yang_areas` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `yang_areas` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `yang_areas` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `yang_areas` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `yang_areas` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `yang_areas` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `yang_areas` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `yang_areas` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `yang_areas` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `yang_areas` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `yang_areas` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `yang_areas` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `yang_areas` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `yang_areas` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `yang_areas` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `yang_areas` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `yang_areas` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `yang_areas` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `yang_areas` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `yang_areas` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `yang_areas` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `yang_areas` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `yang_areas` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `yang_areas` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `yang_areas` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `yang_areas` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `yang_areas` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `yang_areas` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `yang_areas` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `yang_areas` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `yang_areas` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `yang_areas` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `yang_areas` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `yang_areas` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `yang_areas` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `yang_areas` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `yang_areas` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `yang_areas` VALUES ('1696', '202', '通道', '3');
INSERT INTO `yang_areas` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `yang_areas` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `yang_areas` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `yang_areas` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `yang_areas` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `yang_areas` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `yang_areas` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `yang_areas` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `yang_areas` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `yang_areas` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `yang_areas` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `yang_areas` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `yang_areas` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `yang_areas` VALUES ('1710', '204', '城步', '3');
INSERT INTO `yang_areas` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `yang_areas` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `yang_areas` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `yang_areas` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `yang_areas` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `yang_areas` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `yang_areas` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `yang_areas` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `yang_areas` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `yang_areas` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `yang_areas` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `yang_areas` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `yang_areas` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `yang_areas` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `yang_areas` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `yang_areas` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `yang_areas` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `yang_areas` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `yang_areas` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `yang_areas` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `yang_areas` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `yang_areas` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `yang_areas` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `yang_areas` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `yang_areas` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `yang_areas` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `yang_areas` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `yang_areas` VALUES ('1738', '207', '南县', '3');
INSERT INTO `yang_areas` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `yang_areas` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `yang_areas` VALUES ('1741', '208', '江华', '3');
INSERT INTO `yang_areas` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `yang_areas` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `yang_areas` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `yang_areas` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `yang_areas` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `yang_areas` VALUES ('1747', '208', '道县', '3');
INSERT INTO `yang_areas` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `yang_areas` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `yang_areas` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `yang_areas` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `yang_areas` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `yang_areas` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `yang_areas` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `yang_areas` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `yang_areas` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `yang_areas` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `yang_areas` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `yang_areas` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `yang_areas` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `yang_areas` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `yang_areas` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `yang_areas` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `yang_areas` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `yang_areas` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `yang_areas` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `yang_areas` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `yang_areas` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `yang_areas` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `yang_areas` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `yang_areas` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `yang_areas` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `yang_areas` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `yang_areas` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `yang_areas` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `yang_areas` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `yang_areas` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `yang_areas` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `yang_areas` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `yang_areas` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `yang_areas` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `yang_areas` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `yang_areas` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `yang_areas` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `yang_areas` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `yang_areas` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `yang_areas` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `yang_areas` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `yang_areas` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `yang_areas` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `yang_areas` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `yang_areas` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `yang_areas` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `yang_areas` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `yang_areas` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `yang_areas` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `yang_areas` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `yang_areas` VALUES ('1800', '214', '长白', '3');
INSERT INTO `yang_areas` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `yang_areas` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `yang_areas` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `yang_areas` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `yang_areas` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `yang_areas` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `yang_areas` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `yang_areas` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `yang_areas` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `yang_areas` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `yang_areas` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `yang_areas` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `yang_areas` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `yang_areas` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `yang_areas` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `yang_areas` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `yang_areas` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `yang_areas` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `yang_areas` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `yang_areas` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `yang_areas` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `yang_areas` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `yang_areas` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `yang_areas` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `yang_areas` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `yang_areas` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `yang_areas` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `yang_areas` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `yang_areas` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `yang_areas` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `yang_areas` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `yang_areas` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `yang_areas` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `yang_areas` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `yang_areas` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `yang_areas` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `yang_areas` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `yang_areas` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `yang_areas` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `yang_areas` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `yang_areas` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `yang_areas` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `yang_areas` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `yang_areas` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `yang_areas` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `yang_areas` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `yang_areas` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `yang_areas` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `yang_areas` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `yang_areas` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `yang_areas` VALUES ('1853', '221', '园区', '3');
INSERT INTO `yang_areas` VALUES ('1854', '221', '新区', '3');
INSERT INTO `yang_areas` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `yang_areas` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `yang_areas` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `yang_areas` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `yang_areas` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `yang_areas` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `yang_areas` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `yang_areas` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `yang_areas` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `yang_areas` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `yang_areas` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `yang_areas` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `yang_areas` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `yang_areas` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `yang_areas` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `yang_areas` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `yang_areas` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `yang_areas` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `yang_areas` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `yang_areas` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `yang_areas` VALUES ('1876', '222', '新区', '3');
INSERT INTO `yang_areas` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `yang_areas` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `yang_areas` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `yang_areas` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `yang_areas` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `yang_areas` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `yang_areas` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `yang_areas` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `yang_areas` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `yang_areas` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `yang_areas` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `yang_areas` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `yang_areas` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `yang_areas` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `yang_areas` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `yang_areas` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `yang_areas` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `yang_areas` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `yang_areas` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `yang_areas` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `yang_areas` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `yang_areas` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `yang_areas` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `yang_areas` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `yang_areas` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `yang_areas` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `yang_areas` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `yang_areas` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `yang_areas` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `yang_areas` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `yang_areas` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `yang_areas` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `yang_areas` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `yang_areas` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `yang_areas` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `yang_areas` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `yang_areas` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `yang_areas` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `yang_areas` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `yang_areas` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `yang_areas` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `yang_areas` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `yang_areas` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `yang_areas` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `yang_areas` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `yang_areas` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `yang_areas` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `yang_areas` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `yang_areas` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `yang_areas` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `yang_areas` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `yang_areas` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `yang_areas` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `yang_areas` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `yang_areas` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `yang_areas` VALUES ('1934', '230', '城区', '3');
INSERT INTO `yang_areas` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `yang_areas` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `yang_areas` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `yang_areas` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `yang_areas` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `yang_areas` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `yang_areas` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `yang_areas` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `yang_areas` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `yang_areas` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `yang_areas` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `yang_areas` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `yang_areas` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `yang_areas` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `yang_areas` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `yang_areas` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `yang_areas` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `yang_areas` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `yang_areas` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `yang_areas` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `yang_areas` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `yang_areas` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `yang_areas` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `yang_areas` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `yang_areas` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `yang_areas` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `yang_areas` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `yang_areas` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `yang_areas` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `yang_areas` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `yang_areas` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `yang_areas` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `yang_areas` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `yang_areas` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `yang_areas` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `yang_areas` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `yang_areas` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `yang_areas` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `yang_areas` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `yang_areas` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `yang_areas` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `yang_areas` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `yang_areas` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `yang_areas` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `yang_areas` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `yang_areas` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `yang_areas` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `yang_areas` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `yang_areas` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `yang_areas` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `yang_areas` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `yang_areas` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `yang_areas` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `yang_areas` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `yang_areas` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `yang_areas` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `yang_areas` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `yang_areas` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `yang_areas` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `yang_areas` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `yang_areas` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `yang_areas` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `yang_areas` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `yang_areas` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `yang_areas` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `yang_areas` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `yang_areas` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `yang_areas` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `yang_areas` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `yang_areas` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `yang_areas` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `yang_areas` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `yang_areas` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `yang_areas` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `yang_areas` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `yang_areas` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `yang_areas` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `yang_areas` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `yang_areas` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `yang_areas` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `yang_areas` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `yang_areas` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `yang_areas` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `yang_areas` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `yang_areas` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `yang_areas` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `yang_areas` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `yang_areas` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `yang_areas` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `yang_areas` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `yang_areas` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `yang_areas` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `yang_areas` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `yang_areas` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `yang_areas` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `yang_areas` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `yang_areas` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `yang_areas` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `yang_areas` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `yang_areas` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `yang_areas` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `yang_areas` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `yang_areas` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `yang_areas` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `yang_areas` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `yang_areas` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `yang_areas` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `yang_areas` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `yang_areas` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `yang_areas` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `yang_areas` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `yang_areas` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `yang_areas` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `yang_areas` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `yang_areas` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `yang_areas` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `yang_areas` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `yang_areas` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `yang_areas` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `yang_areas` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `yang_areas` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `yang_areas` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `yang_areas` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `yang_areas` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `yang_areas` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `yang_areas` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `yang_areas` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `yang_areas` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `yang_areas` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `yang_areas` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `yang_areas` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `yang_areas` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `yang_areas` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `yang_areas` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `yang_areas` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `yang_areas` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `yang_areas` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `yang_areas` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `yang_areas` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `yang_areas` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `yang_areas` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `yang_areas` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `yang_areas` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `yang_areas` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `yang_areas` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `yang_areas` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `yang_areas` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `yang_areas` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `yang_areas` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `yang_areas` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `yang_areas` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `yang_areas` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `yang_areas` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `yang_areas` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `yang_areas` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `yang_areas` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `yang_areas` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `yang_areas` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `yang_areas` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `yang_areas` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `yang_areas` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `yang_areas` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `yang_areas` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `yang_areas` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `yang_areas` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `yang_areas` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `yang_areas` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `yang_areas` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `yang_areas` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `yang_areas` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `yang_areas` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `yang_areas` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `yang_areas` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `yang_areas` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `yang_areas` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `yang_areas` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `yang_areas` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `yang_areas` VALUES ('2115', '250', '清原', '3');
INSERT INTO `yang_areas` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `yang_areas` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `yang_areas` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `yang_areas` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `yang_areas` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `yang_areas` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `yang_areas` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `yang_areas` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `yang_areas` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `yang_areas` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `yang_areas` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `yang_areas` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `yang_areas` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `yang_areas` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `yang_areas` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `yang_areas` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `yang_areas` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `yang_areas` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `yang_areas` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `yang_areas` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `yang_areas` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `yang_areas` VALUES ('2137', '253', '义县', '3');
INSERT INTO `yang_areas` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `yang_areas` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `yang_areas` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `yang_areas` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `yang_areas` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `yang_areas` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `yang_areas` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `yang_areas` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `yang_areas` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `yang_areas` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `yang_areas` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `yang_areas` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `yang_areas` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `yang_areas` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `yang_areas` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `yang_areas` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `yang_areas` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `yang_areas` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `yang_areas` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `yang_areas` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `yang_areas` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `yang_areas` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `yang_areas` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `yang_areas` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `yang_areas` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `yang_areas` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `yang_areas` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `yang_areas` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `yang_areas` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `yang_areas` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `yang_areas` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `yang_areas` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `yang_areas` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `yang_areas` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `yang_areas` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `yang_areas` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `yang_areas` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `yang_areas` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `yang_areas` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `yang_areas` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `yang_areas` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `yang_areas` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `yang_areas` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `yang_areas` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `yang_areas` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `yang_areas` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `yang_areas` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `yang_areas` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `yang_areas` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `yang_areas` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `yang_areas` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `yang_areas` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `yang_areas` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `yang_areas` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `yang_areas` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `yang_areas` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `yang_areas` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `yang_areas` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `yang_areas` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `yang_areas` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `yang_areas` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `yang_areas` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `yang_areas` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `yang_areas` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `yang_areas` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `yang_areas` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `yang_areas` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `yang_areas` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `yang_areas` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `yang_areas` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `yang_areas` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `yang_areas` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `yang_areas` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `yang_areas` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `yang_areas` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `yang_areas` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `yang_areas` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `yang_areas` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `yang_areas` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `yang_areas` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `yang_areas` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `yang_areas` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `yang_areas` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `yang_areas` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `yang_areas` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `yang_areas` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `yang_areas` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `yang_areas` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `yang_areas` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `yang_areas` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `yang_areas` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `yang_areas` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `yang_areas` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `yang_areas` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `yang_areas` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `yang_areas` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `yang_areas` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `yang_areas` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `yang_areas` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `yang_areas` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `yang_areas` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `yang_areas` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `yang_areas` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `yang_areas` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `yang_areas` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `yang_areas` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `yang_areas` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `yang_areas` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `yang_areas` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `yang_areas` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `yang_areas` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `yang_areas` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `yang_areas` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `yang_areas` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `yang_areas` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `yang_areas` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `yang_areas` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `yang_areas` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `yang_areas` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `yang_areas` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `yang_areas` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `yang_areas` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `yang_areas` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `yang_areas` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `yang_areas` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `yang_areas` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `yang_areas` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `yang_areas` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `yang_areas` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `yang_areas` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `yang_areas` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `yang_areas` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `yang_areas` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `yang_areas` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `yang_areas` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `yang_areas` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `yang_areas` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `yang_areas` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `yang_areas` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `yang_areas` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `yang_areas` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `yang_areas` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `yang_areas` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `yang_areas` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `yang_areas` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `yang_areas` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `yang_areas` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `yang_areas` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `yang_areas` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `yang_areas` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `yang_areas` VALUES ('2295', '275', '大通', '3');
INSERT INTO `yang_areas` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `yang_areas` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `yang_areas` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `yang_areas` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `yang_areas` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `yang_areas` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `yang_areas` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `yang_areas` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `yang_areas` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `yang_areas` VALUES ('2305', '277', '门源', '3');
INSERT INTO `yang_areas` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `yang_areas` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `yang_areas` VALUES ('2308', '278', '民和', '3');
INSERT INTO `yang_areas` VALUES ('2309', '278', '互助', '3');
INSERT INTO `yang_areas` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `yang_areas` VALUES ('2311', '278', '循化', '3');
INSERT INTO `yang_areas` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `yang_areas` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `yang_areas` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `yang_areas` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `yang_areas` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `yang_areas` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `yang_areas` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `yang_areas` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `yang_areas` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `yang_areas` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `yang_areas` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `yang_areas` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `yang_areas` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `yang_areas` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `yang_areas` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `yang_areas` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `yang_areas` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `yang_areas` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `yang_areas` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `yang_areas` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `yang_areas` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `yang_areas` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `yang_areas` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `yang_areas` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `yang_areas` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `yang_areas` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `yang_areas` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `yang_areas` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `yang_areas` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `yang_areas` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `yang_areas` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `yang_areas` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `yang_areas` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `yang_areas` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `yang_areas` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `yang_areas` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `yang_areas` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `yang_areas` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `yang_areas` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `yang_areas` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `yang_areas` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `yang_areas` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `yang_areas` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `yang_areas` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `yang_areas` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `yang_areas` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `yang_areas` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `yang_areas` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `yang_areas` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `yang_areas` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `yang_areas` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `yang_areas` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `yang_areas` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `yang_areas` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `yang_areas` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `yang_areas` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `yang_areas` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `yang_areas` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `yang_areas` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `yang_areas` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `yang_areas` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `yang_areas` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `yang_areas` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `yang_areas` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `yang_areas` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `yang_areas` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `yang_areas` VALUES ('2379', '288', '单县', '3');
INSERT INTO `yang_areas` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `yang_areas` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `yang_areas` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `yang_areas` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `yang_areas` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `yang_areas` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `yang_areas` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `yang_areas` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `yang_areas` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `yang_areas` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `yang_areas` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `yang_areas` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `yang_areas` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `yang_areas` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `yang_areas` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `yang_areas` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `yang_areas` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `yang_areas` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `yang_areas` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `yang_areas` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `yang_areas` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `yang_areas` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `yang_areas` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `yang_areas` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `yang_areas` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `yang_areas` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `yang_areas` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `yang_areas` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `yang_areas` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `yang_areas` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `yang_areas` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `yang_areas` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `yang_areas` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `yang_areas` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `yang_areas` VALUES ('2415', '292', '费县', '3');
INSERT INTO `yang_areas` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `yang_areas` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `yang_areas` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `yang_areas` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `yang_areas` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `yang_areas` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `yang_areas` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `yang_areas` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `yang_areas` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `yang_areas` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `yang_areas` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `yang_areas` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `yang_areas` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `yang_areas` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `yang_areas` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `yang_areas` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `yang_areas` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `yang_areas` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `yang_areas` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `yang_areas` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `yang_areas` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `yang_areas` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `yang_areas` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `yang_areas` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `yang_areas` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `yang_areas` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `yang_areas` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `yang_areas` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `yang_areas` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `yang_areas` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `yang_areas` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `yang_areas` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `yang_areas` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `yang_areas` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `yang_areas` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `yang_areas` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `yang_areas` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `yang_areas` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `yang_areas` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `yang_areas` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `yang_areas` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `yang_areas` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `yang_areas` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `yang_areas` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `yang_areas` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `yang_areas` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `yang_areas` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `yang_areas` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `yang_areas` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `yang_areas` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `yang_areas` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `yang_areas` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `yang_areas` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `yang_areas` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `yang_areas` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `yang_areas` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `yang_areas` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `yang_areas` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `yang_areas` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `yang_areas` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `yang_areas` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `yang_areas` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `yang_areas` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `yang_areas` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `yang_areas` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `yang_areas` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `yang_areas` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `yang_areas` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `yang_areas` VALUES ('2486', '301', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `yang_areas` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `yang_areas` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `yang_areas` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `yang_areas` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `yang_areas` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `yang_areas` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `yang_areas` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `yang_areas` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `yang_areas` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `yang_areas` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `yang_areas` VALUES ('2499', '302', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `yang_areas` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `yang_areas` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `yang_areas` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `yang_areas` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `yang_areas` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `yang_areas` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `yang_areas` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `yang_areas` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `yang_areas` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `yang_areas` VALUES ('2510', '303', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `yang_areas` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `yang_areas` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `yang_areas` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `yang_areas` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `yang_areas` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `yang_areas` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `yang_areas` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `yang_areas` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `yang_areas` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `yang_areas` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `yang_areas` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `yang_areas` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `yang_areas` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `yang_areas` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `yang_areas` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `yang_areas` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `yang_areas` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `yang_areas` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `yang_areas` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `yang_areas` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `yang_areas` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `yang_areas` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `yang_areas` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `yang_areas` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `yang_areas` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `yang_areas` VALUES ('2537', '305', '古县', '3');
INSERT INTO `yang_areas` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `yang_areas` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `yang_areas` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `yang_areas` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `yang_areas` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `yang_areas` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `yang_areas` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `yang_areas` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `yang_areas` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `yang_areas` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `yang_areas` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `yang_areas` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `yang_areas` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `yang_areas` VALUES ('2551', '306', '临县', '3');
INSERT INTO `yang_areas` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `yang_areas` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `yang_areas` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `yang_areas` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `yang_areas` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `yang_areas` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `yang_areas` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `yang_areas` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `yang_areas` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `yang_areas` VALUES ('2561', '307', '应县', '3');
INSERT INTO `yang_areas` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `yang_areas` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `yang_areas` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `yang_areas` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `yang_areas` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `yang_areas` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `yang_areas` VALUES ('2568', '308', '代县', '3');
INSERT INTO `yang_areas` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `yang_areas` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `yang_areas` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `yang_areas` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `yang_areas` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `yang_areas` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `yang_areas` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `yang_areas` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `yang_areas` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `yang_areas` VALUES ('2578', '309', '城区', '3');
INSERT INTO `yang_areas` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `yang_areas` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `yang_areas` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `yang_areas` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `yang_areas` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `yang_areas` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `yang_areas` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `yang_areas` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `yang_areas` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `yang_areas` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `yang_areas` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `yang_areas` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `yang_areas` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `yang_areas` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `yang_areas` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `yang_areas` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `yang_areas` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `yang_areas` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `yang_areas` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `yang_areas` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `yang_areas` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `yang_areas` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `yang_areas` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `yang_areas` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `yang_areas` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `yang_areas` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `yang_areas` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `yang_areas` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `yang_areas` VALUES ('2607', '311', '户县', '3');
INSERT INTO `yang_areas` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `yang_areas` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `yang_areas` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `yang_areas` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `yang_areas` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `yang_areas` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `yang_areas` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `yang_areas` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `yang_areas` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `yang_areas` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `yang_areas` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `yang_areas` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `yang_areas` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `yang_areas` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `yang_areas` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `yang_areas` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `yang_areas` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `yang_areas` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `yang_areas` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `yang_areas` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `yang_areas` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `yang_areas` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `yang_areas` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `yang_areas` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `yang_areas` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `yang_areas` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `yang_areas` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `yang_areas` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `yang_areas` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `yang_areas` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `yang_areas` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `yang_areas` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `yang_areas` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `yang_areas` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `yang_areas` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `yang_areas` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `yang_areas` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `yang_areas` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `yang_areas` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `yang_areas` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `yang_areas` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `yang_areas` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `yang_areas` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `yang_areas` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `yang_areas` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `yang_areas` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `yang_areas` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `yang_areas` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `yang_areas` VALUES ('2656', '317', '华县', '3');
INSERT INTO `yang_areas` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `yang_areas` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `yang_areas` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `yang_areas` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `yang_areas` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `yang_areas` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `yang_areas` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `yang_areas` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `yang_areas` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `yang_areas` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `yang_areas` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `yang_areas` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `yang_areas` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `yang_areas` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `yang_areas` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `yang_areas` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `yang_areas` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `yang_areas` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `yang_areas` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `yang_areas` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `yang_areas` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `yang_areas` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `yang_areas` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `yang_areas` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `yang_areas` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `yang_areas` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `yang_areas` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `yang_areas` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `yang_areas` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `yang_areas` VALUES ('2686', '319', '富县', '3');
INSERT INTO `yang_areas` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `yang_areas` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `yang_areas` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `yang_areas` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `yang_areas` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `yang_areas` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `yang_areas` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `yang_areas` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `yang_areas` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `yang_areas` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `yang_areas` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `yang_areas` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `yang_areas` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `yang_areas` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `yang_areas` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `yang_areas` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `yang_areas` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `yang_areas` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `yang_areas` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `yang_areas` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `yang_areas` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `yang_areas` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `yang_areas` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `yang_areas` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `yang_areas` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `yang_areas` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `yang_areas` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `yang_areas` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `yang_areas` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `yang_areas` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `yang_areas` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `yang_areas` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `yang_areas` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `yang_areas` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `yang_areas` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `yang_areas` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `yang_areas` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `yang_areas` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `yang_areas` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `yang_areas` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `yang_areas` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `yang_areas` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `yang_areas` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `yang_areas` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `yang_areas` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `yang_areas` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `yang_areas` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `yang_areas` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `yang_areas` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `yang_areas` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `yang_areas` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `yang_areas` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `yang_areas` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `yang_areas` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `yang_areas` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `yang_areas` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `yang_areas` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `yang_areas` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `yang_areas` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `yang_areas` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `yang_areas` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `yang_areas` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `yang_areas` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `yang_areas` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `yang_areas` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `yang_areas` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `yang_areas` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `yang_areas` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `yang_areas` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `yang_areas` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `yang_areas` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `yang_areas` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `yang_areas` VALUES ('2759', '323', '安县', '3');
INSERT INTO `yang_areas` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `yang_areas` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `yang_areas` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `yang_areas` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `yang_areas` VALUES ('2764', '324', '理县', '3');
INSERT INTO `yang_areas` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `yang_areas` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `yang_areas` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `yang_areas` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `yang_areas` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `yang_areas` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `yang_areas` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `yang_areas` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `yang_areas` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `yang_areas` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `yang_areas` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `yang_areas` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `yang_areas` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `yang_areas` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `yang_areas` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `yang_areas` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `yang_areas` VALUES ('2781', '326', '达县', '3');
INSERT INTO `yang_areas` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `yang_areas` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `yang_areas` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `yang_areas` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `yang_areas` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `yang_areas` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `yang_areas` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `yang_areas` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `yang_areas` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `yang_areas` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `yang_areas` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `yang_areas` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `yang_areas` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `yang_areas` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `yang_areas` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `yang_areas` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `yang_areas` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `yang_areas` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `yang_areas` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `yang_areas` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `yang_areas` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `yang_areas` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `yang_areas` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `yang_areas` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `yang_areas` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `yang_areas` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `yang_areas` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `yang_areas` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `yang_areas` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `yang_areas` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `yang_areas` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `yang_areas` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `yang_areas` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `yang_areas` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `yang_areas` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `yang_areas` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `yang_areas` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `yang_areas` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `yang_areas` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `yang_areas` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `yang_areas` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `yang_areas` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `yang_areas` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `yang_areas` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `yang_areas` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `yang_areas` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `yang_areas` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `yang_areas` VALUES ('2829', '331', '马边', '3');
INSERT INTO `yang_areas` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `yang_areas` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `yang_areas` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `yang_areas` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `yang_areas` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `yang_areas` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `yang_areas` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `yang_areas` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `yang_areas` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `yang_areas` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `yang_areas` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `yang_areas` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `yang_areas` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `yang_areas` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `yang_areas` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `yang_areas` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `yang_areas` VALUES ('2846', '332', '木里', '3');
INSERT INTO `yang_areas` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `yang_areas` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `yang_areas` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `yang_areas` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `yang_areas` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `yang_areas` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `yang_areas` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `yang_areas` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `yang_areas` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `yang_areas` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `yang_areas` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `yang_areas` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `yang_areas` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `yang_areas` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `yang_areas` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `yang_areas` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `yang_areas` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `yang_areas` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `yang_areas` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `yang_areas` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `yang_areas` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `yang_areas` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `yang_areas` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `yang_areas` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `yang_areas` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `yang_areas` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `yang_areas` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `yang_areas` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `yang_areas` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `yang_areas` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `yang_areas` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `yang_areas` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `yang_areas` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `yang_areas` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `yang_areas` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `yang_areas` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `yang_areas` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `yang_areas` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `yang_areas` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `yang_areas` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `yang_areas` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `yang_areas` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `yang_areas` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `yang_areas` VALUES ('2890', '339', '高县', '3');
INSERT INTO `yang_areas` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `yang_areas` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `yang_areas` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `yang_areas` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `yang_areas` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `yang_areas` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `yang_areas` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `yang_areas` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `yang_areas` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `yang_areas` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `yang_areas` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `yang_areas` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `yang_areas` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `yang_areas` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `yang_areas` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `yang_areas` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `yang_areas` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `yang_areas` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `yang_areas` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `yang_areas` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `yang_areas` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `yang_areas` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `yang_areas` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `yang_areas` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `yang_areas` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `yang_areas` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `yang_areas` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `yang_areas` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `yang_areas` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `yang_areas` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `yang_areas` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `yang_areas` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `yang_areas` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `yang_areas` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `yang_areas` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `yang_areas` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `yang_areas` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `yang_areas` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `yang_areas` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `yang_areas` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `yang_areas` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `yang_areas` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `yang_areas` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `yang_areas` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `yang_areas` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `yang_areas` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `yang_areas` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `yang_areas` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `yang_areas` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `yang_areas` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `yang_areas` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `yang_areas` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `yang_areas` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `yang_areas` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `yang_areas` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `yang_areas` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `yang_areas` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `yang_areas` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `yang_areas` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `yang_areas` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `yang_areas` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `yang_areas` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `yang_areas` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `yang_areas` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `yang_areas` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `yang_areas` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `yang_areas` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `yang_areas` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `yang_areas` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `yang_areas` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `yang_areas` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `yang_areas` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `yang_areas` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `yang_areas` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `yang_areas` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `yang_areas` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `yang_areas` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `yang_areas` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `yang_areas` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `yang_areas` VALUES ('2970', '348', '索县', '3');
INSERT INTO `yang_areas` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `yang_areas` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `yang_areas` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `yang_areas` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `yang_areas` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `yang_areas` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `yang_areas` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `yang_areas` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `yang_areas` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `yang_areas` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `yang_areas` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `yang_areas` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `yang_areas` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `yang_areas` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `yang_areas` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `yang_areas` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `yang_areas` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `yang_areas` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `yang_areas` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `yang_areas` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `yang_areas` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `yang_areas` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `yang_areas` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `yang_areas` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `yang_areas` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `yang_areas` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `yang_areas` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `yang_areas` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `yang_areas` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `yang_areas` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `yang_areas` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `yang_areas` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `yang_areas` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `yang_areas` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `yang_areas` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `yang_areas` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `yang_areas` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `yang_areas` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `yang_areas` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `yang_areas` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `yang_areas` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `yang_areas` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `yang_areas` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `yang_areas` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `yang_areas` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `yang_areas` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `yang_areas` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `yang_areas` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `yang_areas` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `yang_areas` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `yang_areas` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `yang_areas` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `yang_areas` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `yang_areas` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `yang_areas` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `yang_areas` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `yang_areas` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `yang_areas` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `yang_areas` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `yang_areas` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `yang_areas` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `yang_areas` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `yang_areas` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `yang_areas` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `yang_areas` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `yang_areas` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `yang_areas` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `yang_areas` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `yang_areas` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `yang_areas` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `yang_areas` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `yang_areas` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `yang_areas` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `yang_areas` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `yang_areas` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `yang_areas` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `yang_areas` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `yang_areas` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `yang_areas` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `yang_areas` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `yang_areas` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `yang_areas` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `yang_areas` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `yang_areas` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `yang_areas` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `yang_areas` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `yang_areas` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `yang_areas` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `yang_areas` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `yang_areas` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `yang_areas` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `yang_areas` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `yang_areas` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `yang_areas` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `yang_areas` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `yang_areas` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `yang_areas` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `yang_areas` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `yang_areas` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `yang_areas` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `yang_areas` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `yang_areas` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `yang_areas` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `yang_areas` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `yang_areas` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `yang_areas` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `yang_areas` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `yang_areas` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `yang_areas` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `yang_areas` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `yang_areas` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `yang_areas` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `yang_areas` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `yang_areas` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `yang_areas` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `yang_areas` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `yang_areas` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `yang_areas` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `yang_areas` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `yang_areas` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `yang_areas` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `yang_areas` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `yang_areas` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `yang_areas` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `yang_areas` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `yang_areas` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `yang_areas` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `yang_areas` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `yang_areas` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `yang_areas` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `yang_areas` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `yang_areas` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `yang_areas` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `yang_areas` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `yang_areas` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `yang_areas` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `yang_areas` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `yang_areas` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `yang_areas` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `yang_areas` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `yang_areas` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `yang_areas` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `yang_areas` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `yang_areas` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `yang_areas` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `yang_areas` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `yang_areas` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `yang_areas` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `yang_areas` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `yang_areas` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `yang_areas` VALUES ('3121', '369', '景东', '3');
INSERT INTO `yang_areas` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `yang_areas` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `yang_areas` VALUES ('3124', '369', '江城', '3');
INSERT INTO `yang_areas` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `yang_areas` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `yang_areas` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `yang_areas` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `yang_areas` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `yang_areas` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `yang_areas` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `yang_areas` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `yang_areas` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `yang_areas` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `yang_areas` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `yang_areas` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `yang_areas` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `yang_areas` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `yang_areas` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `yang_areas` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `yang_areas` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `yang_areas` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `yang_areas` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `yang_areas` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `yang_areas` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `yang_areas` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `yang_areas` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `yang_areas` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `yang_areas` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `yang_areas` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `yang_areas` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `yang_areas` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `yang_areas` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `yang_areas` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `yang_areas` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `yang_areas` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `yang_areas` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `yang_areas` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `yang_areas` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `yang_areas` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `yang_areas` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `yang_areas` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `yang_areas` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `yang_areas` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `yang_areas` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `yang_areas` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `yang_areas` VALUES ('3167', '375', '维西', '3');
INSERT INTO `yang_areas` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `yang_areas` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `yang_areas` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `yang_areas` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `yang_areas` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `yang_areas` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `yang_areas` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `yang_areas` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `yang_areas` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `yang_areas` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `yang_areas` VALUES ('3178', '376', '金平', '3');
INSERT INTO `yang_areas` VALUES ('3179', '376', '河口', '3');
INSERT INTO `yang_areas` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `yang_areas` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `yang_areas` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `yang_areas` VALUES ('3183', '377', '云县', '3');
INSERT INTO `yang_areas` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `yang_areas` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `yang_areas` VALUES ('3186', '377', '双江', '3');
INSERT INTO `yang_areas` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `yang_areas` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `yang_areas` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `yang_areas` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `yang_areas` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `yang_areas` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `yang_areas` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `yang_areas` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `yang_areas` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `yang_areas` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `yang_areas` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `yang_areas` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `yang_areas` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `yang_areas` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `yang_areas` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `yang_areas` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `yang_areas` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `yang_areas` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `yang_areas` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `yang_areas` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `yang_areas` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `yang_areas` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `yang_areas` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `yang_areas` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `yang_areas` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `yang_areas` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `yang_areas` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `yang_areas` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `yang_areas` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `yang_areas` VALUES ('3216', '381', '新平', '3');
INSERT INTO `yang_areas` VALUES ('3217', '381', '元江', '3');
INSERT INTO `yang_areas` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `yang_areas` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `yang_areas` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `yang_areas` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `yang_areas` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `yang_areas` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `yang_areas` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `yang_areas` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `yang_areas` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `yang_areas` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `yang_areas` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `yang_areas` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `yang_areas` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `yang_areas` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `yang_areas` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `yang_areas` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `yang_areas` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `yang_areas` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `yang_areas` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `yang_areas` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `yang_areas` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `yang_areas` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `yang_areas` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `yang_areas` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `yang_areas` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `yang_areas` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `yang_areas` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `yang_areas` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `yang_areas` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `yang_areas` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `yang_areas` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `yang_areas` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `yang_areas` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `yang_areas` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `yang_areas` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `yang_areas` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `yang_areas` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `yang_areas` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `yang_areas` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `yang_areas` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `yang_areas` VALUES ('3258', '386', '市区', '3');
INSERT INTO `yang_areas` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `yang_areas` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `yang_areas` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `yang_areas` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `yang_areas` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `yang_areas` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `yang_areas` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `yang_areas` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `yang_areas` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `yang_areas` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `yang_areas` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `yang_areas` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `yang_areas` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `yang_areas` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `yang_areas` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `yang_areas` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `yang_areas` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `yang_areas` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `yang_areas` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `yang_areas` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `yang_areas` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `yang_areas` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `yang_areas` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `yang_areas` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `yang_areas` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `yang_areas` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `yang_areas` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `yang_areas` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `yang_areas` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `yang_areas` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `yang_areas` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `yang_areas` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `yang_areas` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `yang_areas` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `yang_areas` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `yang_areas` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `yang_areas` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `yang_areas` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `yang_areas` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `yang_areas` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `yang_areas` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `yang_areas` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `yang_areas` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `yang_areas` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `yang_areas` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `yang_areas` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `yang_areas` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `yang_areas` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `yang_areas` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `yang_areas` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `yang_areas` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `yang_areas` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `yang_areas` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `yang_areas` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `yang_areas` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `yang_areas` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `yang_areas` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `yang_areas` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `yang_areas` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `yang_areas` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `yang_areas` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `yang_areas` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `yang_areas` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `yang_areas` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `yang_areas` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `yang_areas` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `yang_areas` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `yang_areas` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `yang_areas` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `yang_areas` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `yang_areas` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `yang_areas` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `yang_areas` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `yang_areas` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `yang_areas` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `yang_areas` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `yang_areas` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `yang_areas` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `yang_areas` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `yang_areas` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `yang_areas` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `yang_areas` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `yang_areas` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `yang_areas` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `yang_areas` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `yang_areas` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `yang_areas` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `yang_areas` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `yang_areas` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `yang_areas` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `yang_areas` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `yang_areas` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `yang_areas` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `yang_areas` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `yang_areas` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `yang_areas` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `yang_areas` VALUES ('3355', '394', '开县', '3');
INSERT INTO `yang_areas` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `yang_areas` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `yang_areas` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `yang_areas` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `yang_areas` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `yang_areas` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `yang_areas` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `yang_areas` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `yang_areas` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `yang_areas` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `yang_areas` VALUES ('3366', '395', '东区', '3');
INSERT INTO `yang_areas` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `yang_areas` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `yang_areas` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `yang_areas` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `yang_areas` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `yang_areas` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `yang_areas` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `yang_areas` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `yang_areas` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `yang_areas` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `yang_areas` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `yang_areas` VALUES ('3378', '395', '北区', '3');
INSERT INTO `yang_areas` VALUES ('3379', '395', '南区', '3');
INSERT INTO `yang_areas` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `yang_areas` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `yang_areas` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `yang_areas` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `yang_areas` VALUES ('3384', '397', '台北', '3');
INSERT INTO `yang_areas` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `yang_areas` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `yang_areas` VALUES ('3387', '397', '台中', '3');
INSERT INTO `yang_areas` VALUES ('3388', '397', '台南', '3');
INSERT INTO `yang_areas` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `yang_areas` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `yang_areas` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `yang_areas` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `yang_areas` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `yang_areas` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `yang_areas` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `yang_areas` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `yang_areas` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `yang_areas` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `yang_areas` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `yang_areas` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `yang_areas` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `yang_areas` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `yang_areas` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `yang_areas` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `yang_areas` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `yang_areas` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `yang_areas` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `yang_areas` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `yang_areas` VALUES ('3426', '1', 'www', '2');
INSERT INTO `yang_areas` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `yang_areas` VALUES ('602', '61', '平和县', '3');
INSERT INTO `yang_areas` VALUES ('603', '61', '华安县', '3');
INSERT INTO `yang_areas` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `yang_areas` VALUES ('605', '62', '城关区', '3');
INSERT INTO `yang_areas` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `yang_areas` VALUES ('607', '62', '西固区', '3');
INSERT INTO `yang_areas` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `yang_areas` VALUES ('609', '62', '红古区', '3');
INSERT INTO `yang_areas` VALUES ('610', '62', '永登县', '3');
INSERT INTO `yang_areas` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `yang_areas` VALUES ('612', '63', '白银区', '3');
INSERT INTO `yang_areas` VALUES ('613', '63', '平川区', '3');
INSERT INTO `yang_areas` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `yang_areas` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `yang_areas` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `yang_areas` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `yang_areas` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `yang_areas` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `yang_areas` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `yang_areas` VALUES ('621', '64', '漳县', '3');
INSERT INTO `yang_areas` VALUES ('622', '64', '岷县', '3');
INSERT INTO `yang_areas` VALUES ('623', '64', '安定区', '3');
INSERT INTO `yang_areas` VALUES ('624', '64', '安定区', '3');
INSERT INTO `yang_areas` VALUES ('625', '65', '合作市', '3');
INSERT INTO `yang_areas` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `yang_areas` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `yang_areas` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `yang_areas` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `yang_areas` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `yang_areas` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `yang_areas` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `yang_areas` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `yang_areas` VALUES ('634', '67', '金川区', '3');
INSERT INTO `yang_areas` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `yang_areas` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `yang_areas` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `yang_areas` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `yang_areas` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `yang_areas` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `yang_areas` VALUES ('641', '68', '肃北', '3');
INSERT INTO `yang_areas` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `yang_areas` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `yang_areas` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `yang_areas` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `yang_areas` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `yang_areas` VALUES ('647', '69', '广河县', '3');
INSERT INTO `yang_areas` VALUES ('648', '69', '和政县', '3');
INSERT INTO `yang_areas` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `yang_areas` VALUES ('650', '69', '积石山', '3');
INSERT INTO `yang_areas` VALUES ('651', '70', '成县', '3');
INSERT INTO `yang_areas` VALUES ('652', '70', '徽县', '3');
INSERT INTO `yang_areas` VALUES ('653', '70', '康县', '3');
INSERT INTO `yang_areas` VALUES ('654', '70', '礼县', '3');
INSERT INTO `yang_areas` VALUES ('655', '70', '两当县', '3');
INSERT INTO `yang_areas` VALUES ('656', '70', '文县', '3');
INSERT INTO `yang_areas` VALUES ('657', '70', '西和县', '3');
INSERT INTO `yang_areas` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `yang_areas` VALUES ('659', '70', '武都区', '3');
INSERT INTO `yang_areas` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `yang_areas` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `yang_areas` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `yang_areas` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `yang_areas` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `yang_areas` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `yang_areas` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `yang_areas` VALUES ('667', '72', '合水县', '3');
INSERT INTO `yang_areas` VALUES ('668', '72', '华池县', '3');
INSERT INTO `yang_areas` VALUES ('669', '72', '环县', '3');
INSERT INTO `yang_areas` VALUES ('670', '72', '宁县', '3');
INSERT INTO `yang_areas` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `yang_areas` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `yang_areas` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `yang_areas` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `yang_areas` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `yang_areas` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `yang_areas` VALUES ('677', '73', '清水县', '3');
INSERT INTO `yang_areas` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `yang_areas` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `yang_areas` VALUES ('680', '73', '武山县', '3');
INSERT INTO `yang_areas` VALUES ('681', '73', '张家川', '3');
INSERT INTO `yang_areas` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `yang_areas` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `yang_areas` VALUES ('684', '74', '天祝', '3');
INSERT INTO `yang_areas` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `yang_areas` VALUES ('686', '75', '高台县', '3');
INSERT INTO `yang_areas` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `yang_areas` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `yang_areas` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `yang_areas` VALUES ('690', '75', '肃南', '3');
INSERT INTO `yang_areas` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `yang_areas` VALUES ('692', '76', '从化市', '3');
INSERT INTO `yang_areas` VALUES ('693', '76', '天河区', '3');
INSERT INTO `yang_areas` VALUES ('694', '76', '东山区', '3');
INSERT INTO `yang_areas` VALUES ('695', '76', '白云区', '3');
INSERT INTO `yang_areas` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `yang_areas` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `yang_areas` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `yang_areas` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `yang_areas` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `yang_areas` VALUES ('701', '76', '花都区', '3');
INSERT INTO `yang_areas` VALUES ('702', '76', '增城区', '3');
INSERT INTO `yang_areas` VALUES ('703', '76', '从化区', '3');
INSERT INTO `yang_areas` VALUES ('704', '76', '市郊', '3');
INSERT INTO `yang_areas` VALUES ('705', '77', '福田区', '3');
INSERT INTO `yang_areas` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `yang_areas` VALUES ('707', '77', '南山区', '3');
INSERT INTO `yang_areas` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `yang_areas` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `yang_areas` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `yang_areas` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `yang_areas` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `yang_areas` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `yang_areas` VALUES ('714', '79', '南城区', '3');
INSERT INTO `yang_areas` VALUES ('715', '79', '东城区', '3');
INSERT INTO `yang_areas` VALUES ('716', '79', '万江区', '3');
INSERT INTO `yang_areas` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `yang_areas` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `yang_areas` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `yang_areas` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `yang_areas` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `yang_areas` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `yang_areas` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `yang_areas` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `yang_areas` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `yang_areas` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `yang_areas` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `yang_areas` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `yang_areas` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `yang_areas` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `yang_areas` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `yang_areas` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `yang_areas` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `yang_areas` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `yang_areas` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `yang_areas` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `yang_areas` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `yang_areas` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `yang_areas` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `yang_areas` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `yang_areas` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `yang_areas` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `yang_areas` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `yang_areas` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `yang_areas` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `yang_areas` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `yang_areas` VALUES ('747', '80', '南海区', '3');
INSERT INTO `yang_areas` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `yang_areas` VALUES ('749', '80', '三水区', '3');
INSERT INTO `yang_areas` VALUES ('750', '80', '高明区', '3');
INSERT INTO `yang_areas` VALUES ('751', '81', '东源县', '3');
INSERT INTO `yang_areas` VALUES ('752', '81', '和平县', '3');
INSERT INTO `yang_areas` VALUES ('753', '81', '源城区', '3');
INSERT INTO `yang_areas` VALUES ('754', '81', '连平县', '3');
INSERT INTO `yang_areas` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `yang_areas` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `yang_areas` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `yang_areas` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `yang_areas` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `yang_areas` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `yang_areas` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `yang_areas` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `yang_areas` VALUES ('763', '83', '江海区', '3');
INSERT INTO `yang_areas` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `yang_areas` VALUES ('765', '83', '新会区', '3');
INSERT INTO `yang_areas` VALUES ('766', '83', '台山市', '3');
INSERT INTO `yang_areas` VALUES ('767', '83', '开平市', '3');
INSERT INTO `yang_areas` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `yang_areas` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `yang_areas` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `yang_areas` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `yang_areas` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `yang_areas` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `yang_areas` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `yang_areas` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `yang_areas` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `yang_areas` VALUES ('777', '85', '高州市', '3');
INSERT INTO `yang_areas` VALUES ('778', '85', '化州市', '3');
INSERT INTO `yang_areas` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `yang_areas` VALUES ('780', '85', '电白县', '3');
INSERT INTO `yang_areas` VALUES ('781', '86', '梅县', '3');
INSERT INTO `yang_areas` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `yang_areas` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `yang_areas` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `yang_areas` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `yang_areas` VALUES ('786', '86', '五华县', '3');
INSERT INTO `yang_areas` VALUES ('787', '86', '平远县', '3');
INSERT INTO `yang_areas` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `yang_areas` VALUES ('789', '87', '清城区', '3');
INSERT INTO `yang_areas` VALUES ('790', '87', '英德市', '3');
INSERT INTO `yang_areas` VALUES ('791', '87', '连州市', '3');
INSERT INTO `yang_areas` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `yang_areas` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `yang_areas` VALUES ('794', '87', '清新县', '3');
INSERT INTO `yang_areas` VALUES ('795', '87', '连山', '3');
INSERT INTO `yang_areas` VALUES ('796', '87', '连南', '3');
INSERT INTO `yang_areas` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `yang_areas` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `yang_areas` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `yang_areas` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `yang_areas` VALUES ('801', '88', '金平区', '3');
INSERT INTO `yang_areas` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `yang_areas` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `yang_areas` VALUES ('804', '89', '城区', '3');
INSERT INTO `yang_areas` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `yang_areas` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `yang_areas` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `yang_areas` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `yang_areas` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `yang_areas` VALUES ('810', '90', '武江区', '3');
INSERT INTO `yang_areas` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `yang_areas` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `yang_areas` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `yang_areas` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `yang_areas` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `yang_areas` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `yang_areas` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `yang_areas` VALUES ('818', '90', '乳源', '3');
INSERT INTO `yang_areas` VALUES ('819', '91', '江城区', '3');
INSERT INTO `yang_areas` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `yang_areas` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `yang_areas` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `yang_areas` VALUES ('823', '92', '云城区', '3');
INSERT INTO `yang_areas` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `yang_areas` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `yang_areas` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `yang_areas` VALUES ('827', '92', '云安县', '3');
INSERT INTO `yang_areas` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `yang_areas` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `yang_areas` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `yang_areas` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `yang_areas` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `yang_areas` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `yang_areas` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `yang_areas` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `yang_areas` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `yang_areas` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `yang_areas` VALUES ('838', '94', '高要市', '3');
INSERT INTO `yang_areas` VALUES ('839', '94', '四会市', '3');
INSERT INTO `yang_areas` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `yang_areas` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `yang_areas` VALUES ('842', '94', '封开县', '3');
INSERT INTO `yang_areas` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `yang_areas` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `yang_areas` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `yang_areas` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `yang_areas` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `yang_areas` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `yang_areas` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `yang_areas` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `yang_areas` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `yang_areas` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `yang_areas` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `yang_areas` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `yang_areas` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `yang_areas` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `yang_areas` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `yang_areas` VALUES ('858', '97', '江南区', '3');
INSERT INTO `yang_areas` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `yang_areas` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `yang_areas` VALUES ('861', '97', '马山县', '3');
INSERT INTO `yang_areas` VALUES ('862', '97', '上林县', '3');
INSERT INTO `yang_areas` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `yang_areas` VALUES ('864', '97', '横县', '3');
INSERT INTO `yang_areas` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `yang_areas` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `yang_areas` VALUES ('867', '98', '象山区', '3');
INSERT INTO `yang_areas` VALUES ('868', '98', '七星区', '3');
INSERT INTO `yang_areas` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `yang_areas` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `yang_areas` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `yang_areas` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `yang_areas` VALUES ('873', '98', '全州县', '3');
INSERT INTO `yang_areas` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `yang_areas` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `yang_areas` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `yang_areas` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `yang_areas` VALUES ('878', '98', '资源县', '3');
INSERT INTO `yang_areas` VALUES ('879', '98', '永福县', '3');
INSERT INTO `yang_areas` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `yang_areas` VALUES ('881', '98', '恭城', '3');
INSERT INTO `yang_areas` VALUES ('882', '99', '右江区', '3');
INSERT INTO `yang_areas` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `yang_areas` VALUES ('884', '99', '平果县', '3');
INSERT INTO `yang_areas` VALUES ('885', '99', '西林县', '3');
INSERT INTO `yang_areas` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `yang_areas` VALUES ('887', '99', '德保县', '3');
INSERT INTO `yang_areas` VALUES ('888', '99', '田林县', '3');
INSERT INTO `yang_areas` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `yang_areas` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `yang_areas` VALUES ('891', '99', '田东县', '3');
INSERT INTO `yang_areas` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `yang_areas` VALUES ('893', '99', '隆林', '3');
INSERT INTO `yang_areas` VALUES ('894', '100', '海城区', '3');
INSERT INTO `yang_areas` VALUES ('895', '100', '银海区', '3');
INSERT INTO `yang_areas` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `yang_areas` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `yang_areas` VALUES ('898', '101', '江州区', '3');
INSERT INTO `yang_areas` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `yang_areas` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `yang_areas` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `yang_areas` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `yang_areas` VALUES ('903', '101', '大新县', '3');
INSERT INTO `yang_areas` VALUES ('904', '101', '天等县', '3');
INSERT INTO `yang_areas` VALUES ('905', '102', '港口区', '3');
INSERT INTO `yang_areas` VALUES ('906', '102', '防城区', '3');
INSERT INTO `yang_areas` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `yang_areas` VALUES ('908', '102', '上思县', '3');
INSERT INTO `yang_areas` VALUES ('909', '103', '港北区', '3');
INSERT INTO `yang_areas` VALUES ('910', '103', '港南区', '3');
INSERT INTO `yang_areas` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `yang_areas` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `yang_areas` VALUES ('913', '103', '平南县', '3');
INSERT INTO `yang_areas` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `yang_areas` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `yang_areas` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `yang_areas` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `yang_areas` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `yang_areas` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `yang_areas` VALUES ('920', '104', '都安', '3');
INSERT INTO `yang_areas` VALUES ('921', '104', '罗城', '3');
INSERT INTO `yang_areas` VALUES ('922', '104', '巴马', '3');
INSERT INTO `yang_areas` VALUES ('923', '104', '环江', '3');
INSERT INTO `yang_areas` VALUES ('924', '104', '大化', '3');
INSERT INTO `yang_areas` VALUES ('925', '105', '八步区', '3');
INSERT INTO `yang_areas` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `yang_areas` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `yang_areas` VALUES ('928', '105', '富川', '3');
INSERT INTO `yang_areas` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `yang_areas` VALUES ('930', '106', '合山市', '3');
INSERT INTO `yang_areas` VALUES ('931', '106', '象州县', '3');
INSERT INTO `yang_areas` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `yang_areas` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `yang_areas` VALUES ('934', '106', '金秀', '3');
INSERT INTO `yang_areas` VALUES ('935', '107', '城中区', '3');
INSERT INTO `yang_areas` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `yang_areas` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `yang_areas` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `yang_areas` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `yang_areas` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `yang_areas` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `yang_areas` VALUES ('942', '107', '融安县', '3');
INSERT INTO `yang_areas` VALUES ('943', '107', '融水', '3');
INSERT INTO `yang_areas` VALUES ('944', '107', '三江', '3');
INSERT INTO `yang_areas` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `yang_areas` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `yang_areas` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `yang_areas` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `yang_areas` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `yang_areas` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `yang_areas` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `yang_areas` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `yang_areas` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `yang_areas` VALUES ('954', '109', '藤县', '3');
INSERT INTO `yang_areas` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `yang_areas` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `yang_areas` VALUES ('957', '110', '北流市', '3');
INSERT INTO `yang_areas` VALUES ('958', '110', '容县', '3');
INSERT INTO `yang_areas` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `yang_areas` VALUES ('960', '110', '博白县', '3');
INSERT INTO `yang_areas` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `yang_areas` VALUES ('962', '111', '南明区', '3');
INSERT INTO `yang_areas` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `yang_areas` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `yang_areas` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `yang_areas` VALUES ('966', '111', '白云区', '3');
INSERT INTO `yang_areas` VALUES ('967', '111', '小河区', '3');
INSERT INTO `yang_areas` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `yang_areas` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `yang_areas` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `yang_areas` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `yang_areas` VALUES ('972', '111', '修文县', '3');
INSERT INTO `yang_areas` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `yang_areas` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `yang_areas` VALUES ('975', '112', '关岭', '3');
INSERT INTO `yang_areas` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `yang_areas` VALUES ('977', '112', '紫云', '3');
INSERT INTO `yang_areas` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `yang_areas` VALUES ('979', '112', '普定县', '3');
INSERT INTO `yang_areas` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `yang_areas` VALUES ('981', '113', '大方县', '3');
INSERT INTO `yang_areas` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `yang_areas` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `yang_areas` VALUES ('984', '113', '织金县', '3');
INSERT INTO `yang_areas` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `yang_areas` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `yang_areas` VALUES ('987', '113', '威宁', '3');
INSERT INTO `yang_areas` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `yang_areas` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `yang_areas` VALUES ('990', '114', '水城县', '3');
INSERT INTO `yang_areas` VALUES ('991', '114', '盘县', '3');
INSERT INTO `yang_areas` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `yang_areas` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `yang_areas` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `yang_areas` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `yang_areas` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `yang_areas` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `yang_areas` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `yang_areas` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `yang_areas` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `yang_areas` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `yang_areas` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `yang_areas` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `yang_areas` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `yang_areas` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `yang_areas` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `yang_areas` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `yang_areas` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `yang_areas` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `yang_areas` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `yang_areas` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `yang_areas` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `yang_areas` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `yang_areas` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `yang_areas` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `yang_areas` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `yang_areas` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `yang_areas` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `yang_areas` VALUES ('1019', '116', '三都', '3');
INSERT INTO `yang_areas` VALUES ('1020', '117', '兴义市', '3');
INSERT INTO `yang_areas` VALUES ('3437', '1', '其他', '1');

-- ----------------------------
-- Table structure for `yang_article`
-- ----------------------------
DROP TABLE IF EXISTS `yang_article`;
CREATE TABLE `yang_article` (
  `article_id` int(32) NOT NULL AUTO_INCREMENT,
  `position_id` int(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` mediumtext NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sign` int(4) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_article
-- ----------------------------
INSERT INTO `yang_article` VALUES ('42', '1', '服务条款', '<h3>\r\n	第一条 服务条款的确认与接纳\r\n</h3>\r\n<p>\r\n	（一）以下所述条款和条件即构成您与币胜网平台就使用服务所达成的协议。当您完成注册并在本服务条款前方囗打√时，即表示双方已就服务条款\r\n达成一致意见，该服务协议对您及本网具有约束力，包括但不限于本协议、币胜网平台会员服务协议和隐私权政策等。如果您不同意接受全部的条款和条件，请不要\r\n在口打√，此时，双方未就服务条款达成一致意见，该服务协议对您及本网不具有约束力，本网亦无义务向您提供币胜网平台的服务。\r\n</p>\r\n<p>\r\n	（二）在合同有效期内，币胜网平台有权随时修改本协议条款和条件，在其网站公布后即行对您及本网具有约束力。在币胜网平台修改服务条款后，您继续使用服务应被视作您已接受了修改后的条款。\r\n</p>\r\n<p>\r\n	（三）除非得到币胜网平台的书面授权，任何人将不得修改本协议。\r\n</p>\r\n<p>\r\n	（四）币胜网平台提供的网络服务的所有权和最终解释权归币胜网络科技有限公司所有。 本协议中，被许可使用币胜网平台服务的用户均简称为“用户”。\r\n</p>\r\n<h3>\r\n	第二条 服务内容\r\n</h3>\r\n<p>\r\n	（一）在用户同意遵守本协议条款前提下，用户有权在币胜网平台网站指定位置上发布符合中国各项法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）及包括部门规章、地方规章、决定、命令等在内的其他各类规范性文件以及币胜网平台网站服务条款要求的信息。\r\n</p>\r\n<p>\r\n	（二）币胜网平台运用自己的操作系统通过国际互联网络为用户顺利实现在币胜网平台网站的信息发布提供服务。\r\n</p>\r\n<h3>\r\n	第三条 用户权利义务\r\n</h3>\r\n<p>\r\n	（一）用户有权在币胜网平台网站指定位置上发布符合中国各项法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）及包括部门规\r\n章、地方规章、决定、命令等在内的其他各类规范性文件以及币胜网平台网站服务条款要求的信息，并依据本平台服务规则享受币胜网平台提供的各项服务。\r\n</p>\r\n<p>\r\n	（二）用户有义务保证其发布的信息符合法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）及包括部门规章、地方规章、决定、命\r\n令等在内的其他各类规范性文件及币胜网平台网站的相关服务规则，并及时对已发布的信息进行维护和管理。因用户发布的信息不合法产生任何争议，均由用户自己\r\n负责，与本平台不存在任何关系。\r\n</p>\r\n<p>\r\n	（三）考虑到币胜网平台产品服务的重要性，用户有义务保证其提供的所有信息（包括但不限于个人注册信息、 \r\n发布的项目信息等）真实、准确，无重大遗漏或误导。如因用户提供的信息不准确，不真实，不合法有效或有重大遗漏或误导，币胜网平台保留结束用户使用币胜网\r\n平台各项服务的权利，同时用户应赔偿因此造成的一切损失。\r\n</p>\r\n<p>\r\n	（四）除币胜网平台规定的条件外，用户因其在币胜网平台网站的信息发布行为而达成的交易，应当与交易对方约定具体交易条件并完成交易。同时，用户明确知道，自己应当对币胜网平台上发布的项目做出独立的投资判断，币胜网平台不对用户的投资判断承担任何责任。\r\n</p>\r\n<p>\r\n	（五）币胜网只接受实名充值，提现时银行等姓名信息必须与您的认证姓名一致。我承认提交的信息属于本人所有，不存在冒用、盗用他人证件的行为。因冒用、盗用他人证件造成的一切后果，由本人承担。\r\n</p>\r\n<p>\r\n	（六）币胜网有合理的理由怀疑用户提供虚假身份信息时，有权拒绝注册或者冻结、注销已经注册的账户及资产。\r\n</p>\r\n<h3>\r\n	第四条 币胜网平台权利义务\r\n</h3>\r\n<p>\r\n	（一）币胜网平台应运用专业电子技术为用户发布信息提供技术服务。\r\n</p>\r\n<p>\r\n	（二）如用户有如下行为之一的，币胜网平台有权立即停止用户所发布的信息的技术支持，并保存有关记录， \r\n必要时可依据法律法规等规定向国家有关机关报告，并且删除含有该内容的地址、目录或关闭服务器。用户应承担全部法律责任，并赔偿币胜网平台由此受到的损\r\n失，包括合理的追索费用：<br />\r\n1、用户提供的产品有侵害任何第三方知识产权、财产权等合法权益，或可能对第三方造成不利影响或侵害；<br />\r\n2、用户利用币胜网平台提供之网络平台进行任何犯罪活动，或宣传散播法律法规禁止散播的信息，或一切损害币胜网平台利益的活动；<br />\r\n3、用户有违反本协议任何条款的行为，经币胜网平台警告后仍未更正的；<br />\r\n4、用户的行为干扰币胜网平台的服务。\r\n</p>\r\n<p>\r\n	（三）用户同意币胜网平台有权依据本协议及本平台服务规则对用户的涉嫌违反法律、法规（含行政法规及地方法规、自治条例和单行条例、规章）\r\n及包括部门规章、地方规章、决定、命令等在内的其他各类规范性文件以及币胜网平台网站服务条款的行为采取行动，包括但不限于中断其帐号、删除地址、目录或\r\n关闭服务器等。\r\n</p>\r\n<p>\r\n	（四）币胜网平台或币胜网络科技有限公司对本平台发布的信息真实性、及时性和有效性不做任何形式的担保， 对该等信息的理解和认识应当依赖于用户自身判断。\r\n</p>\r\n<h3>\r\n	第五条 免责及责任的限制与排除\r\n</h3>\r\n<p>\r\n	（一）根据本协议，币胜网平台仅为用户提供网络空间及技术服务，对用户发布的信息的真实性、合法性、及时性和有效性不作任何性质的担保及保\r\n证，用户理解并使用这些信息应当依赖自身的独立思考和投资判断，除另有说明外，用户不会从币胜网络科技有限公司收到口头或书面的意见或信息。币胜\r\n网平台对用户的投资收益不做任何承诺，同时对用户的投资损失不承担任何责任。\r\n</p>\r\n<p>\r\n	（二）币胜网络科技有限公司尽力维护币胜网平台的稳定，但不就电讯系统或互联网的中断或无法运作、技术 故障、计算机错误或病毒、信息损坏或丢失或由此而产生的其他任何性质的破坏而向用户或任何第三方承担赔偿责任。\r\n</p>\r\n<p>\r\n	（三）用户明确同意使用币胜网平台服务的风险由用户个人承担。币胜网平台不担保服务一定能满足用户的要求，用户理解并接受下载或通过币胜网平台产品服务取得的任何信息资料取决于用户自己，并由用户自己承担系统受损、资料丢失以及其它任何风险。\r\n</p>\r\n<p>\r\n	（四）各方承认本条款反映了各方就协商谈判达成的一致意见。各方均完全了解本条款的后果并进一步承认本条款的合理性。\r\n</p>\r\n<h3>\r\n	第六条 隐私政策与安全\r\n</h3>\r\n<p>\r\n	（一）尊重用户个人隐私是币胜网平台的一项基本政策，币胜网平台将尽力维护用户隐私。除非用户授权，币胜网平台一定不会公开、修改或透露用户的注册资料，亦不会公开币胜网平台各项服务中的非公开内容，但以下情况除外：<br />\r\n1、为符合国家法律法规强制性规定，或应有权机关要求，提供用户在币胜网平台的网页上发布的信息内容及其发布时间、互联网地址或者域名。<br />\r\n2、为维护币胜网平台的知识产权和其他重要权利。<br />\r\n3、在紧急情况下为维护用户个人和社会大众的隐私安全。<br />\r\n4、根据本条款相关规定或者币胜网平台认为必要的其他情况下。\r\n</p>\r\n<p>\r\n	（二）用户一旦注册成功成为用户，即得到一个密码和帐号。如果用户未保管好自己的帐号和密码而对用户、 \r\n币胜网平台或第三方造成的损害，用户将负全部责任。另外，每个用户应对其在对应帐户中的所有活动和事件承担全部责任 。 \r\n用户可随时改变您的密码和图标，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，应立即通告币胜网络科技有限公司。\r\n</p>\r\n<h3>\r\n	第七条 知识产权\r\n</h3>\r\n<p>\r\n	（一）币胜网平台服务涉及到的产品的所有权以及相关软件的知识产权归币胜网络科技有限公司所有。\r\n</p>\r\n<p>\r\n	（二）在本平台内，无论是用户原创或是用户得到著作权人授权转载的作品，用户上载的行为即意味着用户或用户代理的著作权人授权币胜网平台及\r\n币胜网络科技有限公司对上载作品享有不可撤销的永久的使用权和收益权且无需支付任何费用，但用户或原著作权人仍保有上载作品的著作权。\r\n</p>\r\n<p>\r\n	（三）用户应当保证其发布的信息不侵犯任何第三方知识产权及其他权利，否则由此给第三方及币胜网平台造成的损失由用户承担。\r\n</p>\r\n<h3>\r\n	第八条 不可抗力\r\n</h3>\r\n<p>\r\n	如果由于黑客攻击或政府管制或网络通讯瘫痪等原因，致使发生的不能预见的事件，双方均确认此属不可抗力；双方应按照不可抗力对影响履行本协议的程度，协商决定是否解除本协议、免除履行本协议的部分义务， 或者延期履行本协议。\r\n</p>\r\n<h3>\r\n	第九条 法律及争议解决\r\n</h3>\r\n<p>\r\n	（一）本协议签署、效力、解释和执行以及争议之解决均应适用中国法律。\r\n</p>\r\n<p>\r\n	（二）因本协议引起之双方争议，应该通过友好协商解决；协商不成的，任一方均可向币胜网络科技有限公司所在地人民法院起诉。\r\n</p>\r\n<h3>\r\n	第十条 期限\r\n</h3>\r\n<p>\r\n	本协议的期限自用户点击同意之日起算，至用户注销账号之日起自动终止。\r\n</p>\r\n<h3>\r\n	第十一条 协议的转让\r\n</h3>\r\n<p>\r\n	除非取得币胜网平台的事先书面同意。用户不得将其在本协议项下的权利与义务转让给任何第三方。否则，第三方所造成的任何损害后果或给该第三方造成任何损害的，均由用户承担全部责任，与本币胜网平台无关。\r\n</p>\r\n<h3>\r\n	第十二条 其他\r\n</h3>\r\n<p>\r\n	（一）本协议构成用户和币胜网平台间就使用平台的完整的协议，并取代双方就有关本协议所载任何事项于先前以口头及书面达成的共识。\r\n</p>\r\n<p>\r\n	（二）如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部分则仍具有法律效力。\r\n</p>\r\n<p>\r\n	（三）本协议的标题仅为方便阅读所设，非对条款的定义、限制、解释或描述其范围或界限。\r\n</p>\r\n<p>\r\n	（四）币胜网平台于用户过失或违约时放弃本协议规定的权利的，不得视为其对用户的其他或以后同类之过失 或违约行为弃权。\r\n</p>\r\n<p>\r\n	（五）本平台不参与任何买卖行为，买卖双方均为本站注册用户。作为注册用户，您应保证您是帐户中所有资金的合法拥有者， \r\n您进行的交易不侵犯任何第三方的权利或适用法律。在法律允许范围内，本网站将不对用户的任何损害、利润损失、收入损失、业务损失、数据损失负责，除非损失\r\n是因本网站违反此服务条款所致。本网站不对任何因网络故障、网络中断或网络延迟，以及其它任何因无法正常访问本网站而导致的损失负责。 \r\n如果本网站的内容中包括由第三方提供的其它网站链接，这些链接仅用于提供信息，我们无法对其内容负责， 本网站不对因使用其内容而导致的损失负责。 \r\n如果出现诈骗或是其他违法行为，本网站将向有关监管部门提供所有必需的用户信息。 当监管部门要求调查诈骗或其他非法行为时，用户的帐户可能会被冻结。\r\n</p>\r\n<p>\r\n	（六）用户注册以及在注册后更改的联系方式均为有效联系方式，均能产生送达的法律效力。\r\n</p>\r\n<p>\r\n	（七）请您在注册时，认真阅读本协议条款，若您有任何异议或需要本网说明的，请随时联系本网站以获得解释和说明。若您未向本网站提出异议或\r\n要求说明解释，则表明您对本协议之条款已有充分的认识和理解，且视为币胜网平台或币胜网络科技有限公司已向您做了充分的解释和说明。\r\n</p>\r\n<h3 style=\"font-weight:normal;\">\r\n	币胜网平台或币胜网络科技有限公司保留最终解释权。\r\n</h3>', '1462700558', '0', '', '0');
INSERT INTO `yang_article` VALUES ('5', '118', '关于我们', '&lt;div class=&quot;main_content&quot;&gt;\r\n	&lt;div class=&quot;page&quot;&gt;\r\n		&lt;div class=&quot;main-content&quot;&gt;\r\n			&lt;div&gt;\r\n				本站是一个统计收录虚拟币山寨币的专业网站，对新手玩币族提供一个选币的导航平台。本站坚持以最公正的态度对待每一个币种。同时提供大家评论讨论的机会，让我们一起去发现新币，热币。一起去摒弃黑币平台。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				1、所有收录币种最新虚拟币、山寨币网均没有经过评测，请网友自行分析投资与挖矿风险。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				2、对于已收录虚拟币、山寨币但缺乏操守的币种，请网友告知，本站将予以下架删除等妥当处理。\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				&amp;nbsp;\r\n			&lt;/div&gt;\r\n			&lt;div&gt;\r\n				3、炒币有风险，投资需谨慎。选好平台是关键。山寨币但缺乏操守的币种，请网友告知，本站将予以下架删除等妥当处理。\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;br /&gt;', '1458797434', '0', '', '0');
INSERT INTO `yang_article` VALUES ('6', '120', '提现人民币说明', '1. 提现手续费0.3%，请仔细确认后再操作。&lt;br /&gt;\r\n&lt;p&gt;\r\n	2. 单笔提现限额100元——5万元；单日累计最大提现限额50万元。&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;span style=&quot;color:#E53333;&quot;&gt;3. 由于近期充值提现业务量暴增，提现到账时间临时延长到24小时，敬请谅解!&lt;/span&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;br /&gt;', '1458808275', '0', '', '0');
INSERT INTO `yang_article` VALUES ('61', '110', '转入币', '<b>转入虚拟币<span style=\"font-weight:normal;\">（以狗狗币为例）</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig2.png\" />\r\n</p>\r\n<p>\r\n	1.进入财务中心，点击【转入虚拟币】，页面跳转到转入币种页面，选择狗狗币。\r\n</p>\r\n<p>\r\n	2.页面显示狗狗币在聚币网上的钱包地址，将虚拟币转入该钱包即可。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig3.png\" />\r\n</p>\r\n<p>\r\n	也可通过手机扫描右侧的【狗币钱包地址】二维码，获取钱包地址。 <br />\r\n<span class=\"impo\">注：转入虚拟币是自动的，各个币种需要达到不同的确认数后将自动充值到聚币网账户中。请了解转入币种的网络确认数。</span>\r\n</p>\r\n<p>\r\n	3.请确认已达到确认数后，刷新页面，点击【财务中心】查看资产变化。 <br />\r\n可在转入记录中查询转入具体情况，如图：\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig4.png\" />\r\n</p>\r\n<p>\r\n	如遇转入未到账等问题，可咨询在线客服400-657-8880。\r\n</p>', '1458718009', '0', '', '1');
INSERT INTO `yang_article` VALUES ('124', '124', '卖出指南', '<img src=\"http://www.jubi.com/images/jubi/help/trade6.png\" />\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在卖出栏中填入【卖出价格】【卖出数量】【交易密码】，点击【卖出】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade7.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：卖出数量应小于等于【最大可买】。\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2. 挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade8.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade9.png\" />\r\n</p>\r\n<p>\r\n	4. 挂单成交后，请刷新页面，点击【财务中心】查看资产变化。 <br />\r\n如有挂单其他问题，可咨询在线客服400-657-8880。\r\n</p>', '1458960091', '0', '', '0');
INSERT INTO `yang_article` VALUES ('62', '111', '转出币', '<b>转出虚拟币 <span>(以转出狗狗币为例)</span></b> \r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig5.png\" />\r\n</p>\r\n<p>\r\n	1. 进入财务中心，点击【转出虚拟币】，页面跳转到转出币种页面，选择狗狗币 <br />\r\n2. 在狗狗币转出页面，输入转出信息，包括钱包地址（将狗狗币转入的钱包地址）、转出数量（应少于等于可用狗狗币数量）、交易密码、GA码及手机验证码。确认无误后，点击【确认转出】。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/zhuanbig6.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若短信验证码无法正常接收，请换用语音验证码。</span><br />\r\n3.请等待客服人员确认转出。转出后，可通过狗狗币的区块链接查询当前的网络确认数。达到网络确认数后将自动转入到接收方的账户中 。 <br />\r\n如有其他问题，请咨询在线客服400-657-8880。\r\n</p>', '1458718034', '0', '', '1');
INSERT INTO `yang_article` VALUES ('119', '119', '加入我们', '我要开始招聘啦，你来不来！！！！！', '1458800420', '0', '', '0');
INSERT INTO `yang_article` VALUES ('120', '121', '邀请规则', '1.被邀请的用户在元宝网成功注册账户、完善资料并充值CNY，邀请人可在活动期内每天最高获得被推荐人45%太一股配送收益。<br />\r\n2.如果同一用户被多名元宝网用户邀请，元宝网将认定第一位确定的邀请人为该用户邀请人。<br />\r\n3.禁止通过作弊手段进行虚假邀请注册骗取返利，一经发现将取消奖励并酌情处理。<br />\r\n<p>\r\n	<br />\r\n</p>', '1458973500', '0', '', '0');
INSERT INTO `yang_article` VALUES ('126', '125', '银行转账充值', '<img src=\"http://www.jubi.com/images/jubi/help/chongzhi8.png\" alt=\"充值流程8\" /> \r\n<p>\r\n	<span class=\"impo\">注：汇款人姓名默认为实名认证的姓名，仅允许使用本人的银行卡或支付宝进行转账充值。</span>\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi9.png\" alt=\"充值流程9\" /> \r\n<p>\r\n	2. 页面弹出平台的收款账号及汇款信息，请根据“银行转账汇款”信息通过网银、去银行柜台或使用支付宝进行转账汇款。 <br />\r\n1）使用招商银行网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi10.png\" alt=\"充值流程10\" /> \r\n<p>\r\n	2）使用招商银行手机网银转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi11.png\" alt=\"充值流程11\" /> \r\n<p>\r\n	3）使用支付宝转账示例：\r\n</p>\r\n<img src=\"http://www.jubi.com/images/jubi/help/chongzhi12.png\" alt=\"充值流程12\" /> \r\n<p>\r\n	3. 银行转账成功后，聚币会在收到汇款后30分钟内入账。请及时刷新页面，并查看资产。\r\n                            若转账后超过30分钟仍未入账，请联系在线客服400-657-8880。\r\n</p>', '1458976342', '0', '', '0');
INSERT INTO `yang_article` VALUES ('121', '122', '邀请好友', '&lt;span&gt;邀请好友注册，可在活动期内每天获得被推荐人10%太一股配送收益。&lt;/span&gt;', '1458824052', '0', '', '0');
INSERT INTO `yang_article` VALUES ('123', '123', '买入指南', '<b><span style=\"font-weight:normal;\"></span></b><img src=\"http://www.jubi.com/images/jubi/help/trade2.png\" height=\"158\" width=\"1158\" />\r\n<p>\r\n	1.页面跳转到狗狗币交易页面，在买入栏中填入【买入价格】【买入数量】【交易密码】，点击【买入】。系统将自动成交挂单。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade3.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：买入数量应小于等于【最大可买】。<br />\r\n虚拟币买入数量不能小于0.1；成交金额不能少于1元。<br />\r\n不同虚拟币的买入手续费不同，请买入前仔细确认金额。 </span>\r\n</p>\r\n<p>\r\n	2.挂单成功后，可在【财务中心】-【委托管理】中查询挂单委托情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade4.png\" />\r\n</p>\r\n<p>\r\n	<span class=\"impo\">注：若挂单价格与当前市价不吻合，可能导致挂单不能及时成交。可稍作等待，观察行情。若挂单仍未成交，可撤销（交易中心-我的委托挂单-撤销）挂单调整价格重新挂单。撤销后，未成交部分资产（如买币时冻结的资金、卖币时冻结的币）将原数返还到您的平台账户中。</span>\r\n</p>\r\n<p>\r\n	3. 也可在【财务中心】-【成交查询】中查询挂单成交情况。\r\n</p>\r\n<p>\r\n	<img src=\"http://www.jubi.com/images/jubi/help/trade5.png\" />\r\n</p>\r\n<p>\r\n	4.挂单成交后，请刷新页面，点击【财务中心】查看资产变化。 <br />\r\n如有挂单其他问题，可咨询在线客服400-657-8880。\r\n</p>', '1458960048', '0', '', '0');
INSERT INTO `yang_article` VALUES ('32', '126', '新币上线申请', '<span>   若您是加密数字货币开发者或者官方团队成员，有意向将您开发的币种上线聚币网，欢迎您通过以下方式和流程递交申请。</span> \r\n<p>\r\n	申请流程：\r\n</p>\r\n<ol>\r\n	<li>\r\n		下载 <a href=\"http://www.jubi.com/newcoin-sheet.docx\" target=\"_blank\">“新币上线申请表”</a>，按要求填写并发送至邮箱market@jubi.com。\r\n	</li>\r\n	<li>\r\n		若申请资料填写齐全并符合聚币上线条件，我们将和申请人或官方团队联系并确定币种上线可行性。\r\n	</li>\r\n	<li>\r\n		确定上线币种后，聚币会安排技术进行钱包、交易相关开发，我们将至少提前1天通知上线新币 。\r\n	</li>\r\n</ol>\r\n<p>\r\n	另：若在聚币已上线的币种出现下列情况之一，聚币将考虑下线该币种。\r\n</p>\r\n<ol>\r\n	<li>\r\n		官方团队解散或者不再有正常维护更新，导致该币种不能进行正常挖矿、转币、区块查询等；\r\n	</li>\r\n	<li>\r\n		该币种已经没有用户进行交易或者使用、持有；\r\n	</li>\r\n	<li>\r\n		该币种出现重大技术故障，影响到区块查询、挖矿转币等正常功能；\r\n	</li>\r\n	<li>\r\n		官方团队涉嫌恶意预挖、传销诈骗、坐庄圈钱等欺诈行为。\r\n	</li>\r\n</ol>\r\n<p>\r\n	<a>为了维护广大用户的财产安全我们将尽量避免币种下线。</a>\r\n</p>', '1459152106', '0', '', '0');
INSERT INTO `yang_article` VALUES ('328', '62', '币胜网充值指南', '<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<span>1．  </span>充<span style=\"line-height:1.5;\">值</span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	登录币胜网→【我的账户】→【人民币充值】→输入充值金额并点击【去充值】→选<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	择网银并点击【确定】→根据系统提示完成相应操作即可\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img src=\"/Public/kindeditor/attached/image/20160507/20160507135236_75821.png\" alt=\"\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	根据系统生成汇款单信息（上图），登录自己“网银”或“手机银行”账户（下图），向企业收款账户汇款。汇款成功后，待系统收到您银行打来的汇款后<span>20</span>分钟内入账。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	注：币胜网人工充值一般系统收到汇款将自动入账，到账时间主要取决于银行汇款速度。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	汇款金额后<span>3</span>位是为快速到账系统自动生成的。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	2．绑定银行账户\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	登录币胜网→【我的账户】→【人民币提现】→【点击绑定银行卡】→填写银行卡相应信息后并【确认添加】→收到手机验证码后并输入【确认】。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	特别提示：币胜网是同卡进出，绑定的银行卡号和开户姓名必须与系统实名认证姓名一致，否则提现无法到账！\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	正确填写银行账户信息后，点击【确认添加】\r\n</p>', '1462600360', '0', '', '0');
INSERT INTO `yang_article` VALUES ('329', '64', '币胜网提现指南', '<p class=\"MsoNormal\">\r\n	<span>1</span>．提现<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	登录币胜网账户→【我的账户】→【人民币提现】→【选择提款地址】→输入提款金额和交易密码→【确认提交】<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 <img src=\"/Public/kindeditor/attached/image/20160507/20160507135515_99167.png\" alt=\"\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	说明：人民币提现手续费0.3%，单笔限额100元-5万元，一般48小时内到账。详见人民币提现下方说明。若提现申请被系统取消，可能是您绑定的银行信息有误，如卡号不对。请仔细核对信息并联系官方在线客服。\r\n</p>', '1462600518', '0', '', '0');
INSERT INTO `yang_article` VALUES ('330', '63', '币胜网转币指南', '<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<span>1.     </span>充币<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	登录币胜网账号→【我的账号】→丘特币右手边【充值】将丘特币转入您币胜网的丘特币地址。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	注：每种币的地址都是唯一的，要对应币种地址充值。否则无法到账。比如说丘特币，不能用\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	冲进其他币的地址里。且充币地址一定要是自己账号里的地址，地址相当于自己的银行卡卡号。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> <img src=\"/Public/kindeditor/attached/image/20160507/20160507140150_48844.png\" alt=\"\" /></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span><img src=\"/Public/kindeditor/attached/image/20160507/20160507140205_60523.png\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	币到账后在【我的账户】丘特币里显示。若没有显示，请刷新一下。\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<img width=\"432\" height=\"83\" src=\"/Public/kindeditor/attached/image/20160507/20160507140231_65236.png\" />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"margin-left:18pt;text-indent:-18pt;\">\r\n	2.  提币\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	先绑定提币地址，成功后向这个地址提币。\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	绑定提币地址。点击丘特币【提币】】→【点击添加一个新的提币地址】】→填写地址标签和提币地址】→【确认】系统会发短信告知验证码】→输入验证码并【确认】\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<img width=\"428\" height=\"78\" src=\"/Public/kindeditor/attached/image/20160507/20160507140243_88112.png\" />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	提币地址绑定成功后，选择这个地址，输入提币数额、交易密码，然后【确认提币】即可。如果下次还向绑定的这个地址提币，不需要再绑定，直接按此操作即可。\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	注：不同数字货币提币续费不同，每种币在提币操作界面都有显示。币胜网的丘特币的提币手续费为<span>0.1%</span>，请仔细核实再操作。\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<img width=\"429\" height=\"110\" src=\"/Public/kindeditor/attached/image/20160507/20160507140304_53255.png\" />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<span style=\"line-height:1.5;\">币胜网每一种提币下面都有转出（提币）记录。新绑定地址首次提币，需要人工审核，当转出记录中的状态由【处理中】转为【成功】，说明该笔币已成功转出币胜网。</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>', '1462600992', '0', '', '0');
INSERT INTO `yang_article` VALUES ('332', '60', '币胜网注册指南', '<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<span>1.     </span>打开币胜网首页（<span><a href=\"http://www.zheyitianshi.com/\">www.zheyitianshi.com</a></span>），点击注册或免费注册，进入注册页面，注册新账号或绑定已有账号。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> <img src=\"/Public/kindeditor/attached/image/20160507/20160507203649_51382.png\" alt=\"\" /></span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<span>2.     </span>填写常用的电子邮箱（用于登录和找回密码）、登录密码（需设置<span>6</span>位以上）、邀请码，并仔细阅读，《注册协议》，点击【下一步】<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<img border=\"0\" width=\"430\" height=\"247\" src=\"/Public/kindeditor/attached/image/20160507/20160507203812_50663.png\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-indent:-18.0pt;\">\r\n	<span>3.     </span>填写交易密码（填写<span>6</span>位以上，且与登录密码不同），确认后点击【下一步】。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	<img border=\"0\" width=\"432\" height=\"252\" src=\"/Public/kindeditor/attached/image/20160507/20160507203829_56549.png\" />\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"margin-left:18pt;text-indent:-18pt;\">\r\n	4.  根据国家相关规定，币胜网对注册用户进行实名登记。\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	请选择证件类型（系统默认身份证，可选择护照、军官证、港澳通行证等），输入\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	用户真实的证件信息后（证件信息注册后不可修改），点击【下一步】\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	注：提现时银行卡信息需与填写的身份信息一致，请填写真实身份信息，以免带来\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	不便\r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\">\r\n	5.注册成功。登录账户后即可直接进行充值并交易。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span> </span>\r\n</p>', '1462624744', '0', '', '0');
INSERT INTO `yang_article` VALUES ('333', '61', '币胜网交易指南', '<p class=\"MsoNormal\" style=\"margin-left:18pt;text-indent:-18pt;\">\r\n	1.     充币登录币胜网账号→【我的账号】→丘特币右手边【充值】将丘特币转入您币胜网的丘特币地址。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	注：每种币的地址都是唯一的，要对应币种地址充值。否则无法到账。比如说丘特币，不能用冲进其他币的地址里。且充币地址一定要是自己账号里的地址，地址相当于自己的银行卡卡号。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img src=\"http://www.zheyitianshi.com/Public/kindeditor/attached/image/20160507/20160507204235_57738.png\" alt=\"\" /><img src=\"http://www.zheyitianshi.com/Public/kindeditor/attached/image/20160507/20160507204236_66966.png\" alt=\"\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	币到账后在【我的账户】丘特币里显示。若没有显示，请刷新一下。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	 \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:18pt;text-indent:-18pt;\">\r\n	2.     提币先绑定提币地址，成功后向这个地址提币。绑定提币地址。点击丘特币【提币】】→【点击添加一个新的提币地址】】→填写地址标签和提币地址】→【确认】系统会发短信告知验证码→输入验证码并【确认】\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img width=\"434\" height=\"79\" src=\"http://www.zheyitianshi.com/Public/kindeditor/attached/image/20160507/20160507204255_42577.png\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提币地址绑定成功后，选择这个地址，输入提币数额、交易密码，然后【确认提币】即可。如果下次还向绑定的这个地址提币，不需要再绑定，直接按此操作即可。注：不同数字货币提币续费不同，每种币在提币操作界面都有显示。币胜网的丘特币的提币手续费为0.1%，请仔细核实再操作。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<img width=\"434\" height=\"111\" src=\"http://www.zheyitianshi.com/Public/kindeditor/attached/image/20160507/20160507204310_32972.png\" />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	币胜网每一种提币下面都有转出（提币）记录。新绑定地址首次提币，需要人工审核，当转出记录中的状态由【处理中】转为【成功】，说明该笔币已成功转出币胜网。\r\n</p>', '1462625036', '0', '', '0');

-- ----------------------------
-- Table structure for `yang_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `yang_article_category`;
CREATE TABLE `yang_article_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `keywords` varchar(128) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_article_category
-- ----------------------------
INSERT INTO `yang_article_category` VALUES ('1', '官方公告', '0', '11', '111', '1');
INSERT INTO `yang_article_category` VALUES ('2', '市场动态', '0', '首页文章', '2', '1');
INSERT INTO `yang_article_category` VALUES ('123', '买入指南', '61', '0', '0', '0');
INSERT INTO `yang_article_category` VALUES ('3', '单条提示', '0', '111', '1', '1');
INSERT INTO `yang_article_category` VALUES ('32', '系统公告', '0', '系统公告', '10', '1');
INSERT INTO `yang_article_category` VALUES ('6', '帮助中心', '0', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('60', '注册指南', '6', '注册指南', '60', '1');
INSERT INTO `yang_article_category` VALUES ('61', '交易指南', '6', '交易指南', '61', '1');
INSERT INTO `yang_article_category` VALUES ('62', '充值指南', '6', '充值指南', '62', '1');
INSERT INTO `yang_article_category` VALUES ('64', '提现指南', '6', '提现指南', '64', '1');
INSERT INTO `yang_article_category` VALUES ('63', '转币指南', '6', '转币指南', '63', '1');
INSERT INTO `yang_article_category` VALUES ('4', '风险提示', '0', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('125', '银行转账充值', '62', '0', '0', '0');
INSERT INTO `yang_article_category` VALUES ('110', '转入币', '63', '转入币', '110', '1');
INSERT INTO `yang_article_category` VALUES ('111', '转出币', '63', '转出币', '111', '1');
INSERT INTO `yang_article_category` VALUES ('7', '团队信息', '0', '团队信息', '0', '1');
INSERT INTO `yang_article_category` VALUES ('118', '关于我们', '7', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('119', '加入我们', '7', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('120', '提现提示', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('121', '邀请规则', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('122', '邀请好友', '3', '', '0', '0');
INSERT INTO `yang_article_category` VALUES ('126', '新币上线申请', '3', '', '0', '0');

-- ----------------------------
-- Table structure for `yang_bank`
-- ----------------------------
DROP TABLE IF EXISTS `yang_bank`;
CREATE TABLE `yang_bank` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `bankname` varchar(32) NOT NULL COMMENT '银行',
  `uid` int(32) NOT NULL,
  `cardname` varchar(32) NOT NULL COMMENT '用户名',
  `address` varchar(128) NOT NULL COMMENT '开户地',
  `cardnum` varchar(128) NOT NULL COMMENT '卡号',
  `bname` varchar(32) NOT NULL COMMENT '标签',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `bank_branch` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_bank
-- ----------------------------
INSERT INTO `yang_bank` VALUES ('1', '工商银行', '0', '', '252', '234', '1234', '0', '');
INSERT INTO `yang_bank` VALUES ('4', '中信银行', '60', '456', '9127', '756756756765', '7657657', '0', '');
INSERT INTO `yang_bank` VALUES ('5', '华夏银行', '60', '456', '15213', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('6', '华夏银行', '60', '456', '18245', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('7', '华夏银行', '60', '456', '广东0', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('8', '华夏银行', '60', '456', '福建0', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('9', '华夏银行', '60', '456', '福建0', '23456', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('10', '华夏银行', '60', '456', '271', '2345', '456', '0', '');
INSERT INTO `yang_bank` VALUES ('16', '交通银行', '60', '456', '122', '666666', '6666', '0', '');
INSERT INTO `yang_bank` VALUES ('17', '兴业银行', '59', '姜鹏', '159', '666666', 'kk', '0', '');
INSERT INTO `yang_bank` VALUES ('18', '农业银行', '62', '打的', '55', '444444', '体系那', '0', '');
INSERT INTO `yang_bank` VALUES ('20', '工商银行', '62', '打的', '176', '4545665', '阿萨德', '0', '');
INSERT INTO `yang_bank` VALUES ('22', '招商银行', '62', '打的', '239', '5', '+6', '0', '');
INSERT INTO `yang_bank` VALUES ('25', '中国银行', '59', '我我14141', '236', '65885477855547884', 'asdf', '0', '');
INSERT INTO `yang_bank` VALUES ('26', '工商银行', '83', '王军', '220', '6212264301011709753', '支付宝 15996472029', '0', '江苏省 南京市 燕江路支行');
INSERT INTO `yang_bank` VALUES ('27', '中国银行', '113', '杨兴娟', '77', '6013822000578796024', '提现', '0', '华丽支行');
INSERT INTO `yang_bank` VALUES ('28', '建设银行', '106', '于耀进', '164', '6227002574590398314', '卡1', '0', '西平支行');
INSERT INTO `yang_bank` VALUES ('29', '中国邮政储蓄银行', '132', '朱明鑫', '152', '6217994960008744416', '提现卡', '0', '无');
INSERT INTO `yang_bank` VALUES ('31', '工商银行', '163', '刘梦', '43', '6222021304002628399', '工商卡', '0', '田家庵支行');
INSERT INTO `yang_bank` VALUES ('32', '建设银行', '171', '黄雨浓', '149', '6217002430009828386', '建行', '0', '无');
INSERT INTO `yang_bank` VALUES ('33', '中国银行', '102', '苏杨', '82', '6217857000053596803', '中国银行', '0', '惠州大道中支行');
INSERT INTO `yang_bank` VALUES ('34', '招商银行', '179', '周海波', '77', '6225887821604986', '01', '0', '深圳市招商银行高新园支行');
INSERT INTO `yang_bank` VALUES ('35', '工商银行', '146', '曾玲美', '76', '6222023602052050028', '01', '0', '番禺南村支行');
INSERT INTO `yang_bank` VALUES ('36', '工商银行', '203', '王友良', '197', '6212261901003904941', '01', '0', '长沙市香樟路支行');
INSERT INTO `yang_bank` VALUES ('37', '工商银行', '201', '杨旺', '232', '6222021104008516873', '银行卡1', '0', '江苏省镇江市江苏大学支行');
INSERT INTO `yang_bank` VALUES ('38', '建设银行', '206', '田纪山', '292', '6227002297082354104', '聚币富甲一方田', '0', '沂南支行');
INSERT INTO `yang_bank` VALUES ('39', '支付宝', '210', '李大武', '120', '514603496@qq.com', '支付宝', '0', 'd支付宝');
INSERT INTO `yang_bank` VALUES ('40', '中国银行', '213', '', '77', '6217582000022604532', '6217582000022604532', '0', '宝安区福永镇和平支行');
INSERT INTO `yang_bank` VALUES ('41', '农业银行', '130', '季强', '383', '6228480323046346819', '001', '0', '丁桥支行');
INSERT INTO `yang_bank` VALUES ('42', '建设银行', '223', '邝祎睆', '321', '6217001210040376699', '01', '0', '上海东海广场支行');
INSERT INTO `yang_bank` VALUES ('43', '支付宝', '228', '余志彬', '76', '0000000000000000', '支付宝', '0', '49264377@qq.com');
INSERT INTO `yang_bank` VALUES ('44', '招商银行', '228', '余志彬', '77', '4682037895333333', '招行', '0', '布吉支行');
INSERT INTO `yang_bank` VALUES ('45', '农业银行', '239', '辛文龙', '304', '6228481650632133113', '01', '0', '中国农业银行股份有限公司晋中工业园区分理处');
INSERT INTO `yang_bank` VALUES ('46', '工商银行', '286', '郑凤娇', '185', '6215591809000053824', '银行卡', '0', '钟祥市郢中支行');
INSERT INTO `yang_bank` VALUES ('47', '工商银行', '312', '刘壬新', '142', '6215580405000611753', '刘壬新', '0', '邯郸车站支行');
INSERT INTO `yang_bank` VALUES ('48', '工商银行', '332', '龚燕妮', '180', '6222023202027604148', '提现1', '0', '武汉临江府支行');
INSERT INTO `yang_bank` VALUES ('49', '中国银行', '348', '华月存', '220', '6217856100038196512', '中行提现卡', '0', '中华路支行');
INSERT INTO `yang_bank` VALUES ('50', '建设银行', '296', '陈庚', '120', '6227003525930037839', '01', '0', '海南省分行国贸支行营业部');
INSERT INTO `yang_bank` VALUES ('51', '工商银行', '114', '卫少云', '301', '6212260505001149747', '01', '0', '山西省潞城市山化支行');

-- ----------------------------
-- Table structure for `yang_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_config`;
CREATE TABLE `yang_config` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_config
-- ----------------------------
INSERT INTO `yang_config` VALUES ('title', '币胜网数字货币交易平台-好站长资源网【http://www.haoid.cn】');
INSERT INTO `yang_config` VALUES ('keywords', '币胜网');
INSERT INTO `yang_config` VALUES ('desc', '币胜网友情提示：请控制风险，不要投入超过您风险承受能力的资金，不要投资您所不了解的数字货币，拒绝传销组织，警惕虚假宣传。');
INSERT INTO `yang_config` VALUES ('logo', '/Uploads/Public/Uploads/2016-05-04/57296bb8e79af.png');
INSERT INTO `yang_config` VALUES ('copyright', 'Copyright 2013-2016 数据库 All Rights Reserved. Powered by 好站长资源网');
INSERT INTO `yang_config` VALUES ('record', '深ICP备13052038号-1');
INSERT INTO `yang_config` VALUES ('tel', '');
INSERT INTO `yang_config` VALUES ('email', '3213288469@qq.com');
INSERT INTO `yang_config` VALUES ('qqcode', '2522');
INSERT INTO `yang_config` VALUES ('business_email', '3213288469@qq.com');
INSERT INTO `yang_config` VALUES ('name', '币胜网');
INSERT INTO `yang_config` VALUES ('address', '深圳市宝安区兴业路');
INSERT INTO `yang_config` VALUES ('qq', '4008367667');
INSERT INTO `yang_config` VALUES ('qqqun2', '339537450');
INSERT INTO `yang_config` VALUES ('qqqun3', '');
INSERT INTO `yang_config` VALUES ('qqqun1', '535028291');
INSERT INTO `yang_config` VALUES ('pay_min_money', '100');
INSERT INTO `yang_config` VALUES ('pay_max_money', '1000000');
INSERT INTO `yang_config` VALUES ('pay_fee', '0');
INSERT INTO `yang_config` VALUES ('pay_get_name', '北京亚投科技有限责任公司');
INSERT INTO `yang_config` VALUES ('pay_get_card', '1100 1042 1000 5302 8052');
INSERT INTO `yang_config` VALUES ('pay_get_bank', '中国建设银行北京电子城科技园区支行');
INSERT INTO `yang_config` VALUES ('xnb', 'BISHENG');
INSERT INTO `yang_config` VALUES ('xnb_name', '币胜币');
INSERT INTO `yang_config` VALUES ('bili', '1');
INSERT INTO `yang_config` VALUES ('weixin', '/Uploads/Public/Uploads/2016-03-19/56ecc75e1312d.jpg');
INSERT INTO `yang_config` VALUES ('weibo', '');
INSERT INTO `yang_config` VALUES ('time_limit', '20');
INSERT INTO `yang_config` VALUES ('localhost', '127.0.0.1');
INSERT INTO `yang_config` VALUES ('worktime', '工作日:9-19时 节假日:9-18时');
INSERT INTO `yang_config` VALUES ('qqqun_url', '');
INSERT INTO `yang_config` VALUES ('fee', '0.3');
INSERT INTO `yang_config` VALUES ('CODE_USER_NAME', 'vip-bsw');
INSERT INTO `yang_config` VALUES ('CODE_USER_PASS', 'Tch980112');
INSERT INTO `yang_config` VALUES ('CODE_NAME', '币胜网');
INSERT INTO `yang_config` VALUES ('', 'friendship_tips');
INSERT INTO `yang_config` VALUES ('', 'risk_warning');
INSERT INTO `yang_config` VALUES ('friendship_tips', '<div>\r\n	<span style=\"color:#E53333;\">币胜网友情提示：请控制风险，不要投入超过您风险承受能力的资金，不要投资您所不了解的数字货币，拒绝传销组织，警惕虚假宣传。</span> \r\n</div>\r\n<div>\r\n	<br />\r\n</div>');
INSERT INTO `yang_config` VALUES ('risk_warning', '风险提示 数字货币交易具有极高的风险（预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），据国家五部委《关于防范比特币风险的通知》，币胜网为数字货币的爱好者提供一个自由的网上交换平台，对币的投资价值不承担任何审查、担保、赔偿的责任，如果您不能接受，请不要进行交易！谢谢！');
INSERT INTO `yang_config` VALUES ('biaoge_url', '/Uploads/Public/Uploads/2016-03-31/新币申请表');
INSERT INTO `yang_config` VALUES ('jiedong_bili', '100');
INSERT INTO `yang_config` VALUES ('withdraw_warning', ' 1. 提现手续费0.3%，请仔细确认后再操作。\r\n<div>\r\n	2. 单笔提现限额100元——5万元；单日累计最大提现限额500000元。\r\n</div>');
INSERT INTO `yang_config` VALUES ('invite_rule', '');
INSERT INTO `yang_config` VALUES ('tcoin_fee', '0.1');
INSERT INTO `yang_config` VALUES ('jiaoyi_over_hour', '24');
INSERT INTO `yang_config` VALUES ('jiaoyi_start_minute', '0');
INSERT INTO `yang_config` VALUES ('jiaoyi_start_hour', '0');
INSERT INTO `yang_config` VALUES ('jiaoyi_over_minute', '0');
INSERT INTO `yang_config` VALUES ('zibenfen_bili', '100');
INSERT INTO `yang_config` VALUES ('VAP_rule', '');
INSERT INTO `yang_config` VALUES ('transaction_false', '500000');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_CURRENCY_ID', '26');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_ONE_RATIO', '100');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_TWO_RATIO', '50');
INSERT INTO `yang_config` VALUES ('ZC_AWARDS_STATUS', '1');
INSERT INTO `yang_config` VALUES ('qq2', '3353510891');
INSERT INTO `yang_config` VALUES ('qq3', '');
INSERT INTO `yang_config` VALUES ('qq1', '3213288469');
INSERT INTO `yang_config` VALUES ('FWTK', '<span style=\"color:#E53333;font-size:14px;\">根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。币胜网仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在币胜网平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。 请您务必注意以下几点： 1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。  2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，币胜网不会对任何数字货币进行背书和承诺。 3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。 4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。 5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。 6.在币胜网注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。 7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。 8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。 我已经认真阅读以上风险提示，并已同意币胜网服务条款，同意在自担风险，自担损失的情况下参与交易币胜网</span>');
INSERT INTO `yang_config` VALUES ('disclaimer', '');
INSERT INTO `yang_config` VALUES ('EMAIL_USERNAME', 'mail@koumang.com');
INSERT INTO `yang_config` VALUES ('EMAIL_PASSWORD', 'xiaowei7758258');
INSERT INTO `yang_config` VALUES ('EMAIL_HOST', 'smtp.qq.com');
INSERT INTO `yang_config` VALUES ('zhuce_jiangli', '100');
INSERT INTO `yang_config` VALUES ('new_coin_up', '');
INSERT INTO `yang_config` VALUES ('reg_risk_warning', '<div>\r\n	根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货 币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。币胜网仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在币胜网平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。\r\n</div>\r\n<div>\r\n	请您务必注意以下几点：\r\n</div>\r\n<div>\r\n	1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。\r\n</div>\r\n<div>\r\n	2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，币胜网不会对任何数字货币进行背书和承诺。\r\n</div>\r\n<div>\r\n	3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。\r\n</div>\r\n<div>\r\n	4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。\r\n</div>\r\n<div>\r\n	5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。\r\n</div>\r\n<div>\r\n	6.在币胜网注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。\r\n</div>\r\n<div>\r\n	7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。\r\n</div>\r\n<div>\r\n	8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。\r\n</div>');

-- ----------------------------
-- Table structure for `yang_currency`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency`;
CREATE TABLE `yang_currency` (
  `currency_id` int(32) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(32) NOT NULL COMMENT '货币名称',
  `currency_logo` varchar(255) NOT NULL COMMENT '货币logo',
  `currency_mark` varchar(32) NOT NULL COMMENT '英文标识',
  `currency_content` text NOT NULL,
  `currency_all_money` decimal(40,6) NOT NULL COMMENT '总市值',
  `currency_all_num` decimal(40,4) DEFAULT '0.0000' COMMENT '币总数量',
  `currency_buy_fee` float(64,4) NOT NULL COMMENT '买入手续费',
  `currency_sell_fee` float(64,4) NOT NULL COMMENT '卖出手续费',
  `currency_url` varchar(128) NOT NULL COMMENT '该币种的链接地址',
  `trade_currency_id` int(10) NOT NULL DEFAULT '1' COMMENT '可以进行交易的币种',
  `is_line` tinyint(4) NOT NULL DEFAULT '0',
  `is_lock` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否交易 0 是交易许可 1是交易不许可',
  `port_number` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `rpc_url` varchar(255) NOT NULL COMMENT 'rpc路径',
  `rpc_pwd` varchar(255) NOT NULL COMMENT 'rpc密码',
  `rpc_user` varchar(255) NOT NULL COMMENT 'rpc账号（用户名）',
  `currency_all_tibi` int(10) NOT NULL DEFAULT '0' COMMENT '最大提币额',
  `detail_url` varchar(64) NOT NULL COMMENT '详情跳转链接',
  `qianbao_url` varchar(64) NOT NULL COMMENT '钱包储存路径',
  `qianbao_key` varchar(64) NOT NULL COMMENT '钱包密钥',
  `price_up` float(64,4) NOT NULL COMMENT '涨停',
  `price_down` float(64,4) NOT NULL COMMENT '跌停',
  `sort` int(10) NOT NULL DEFAULT '0',
  `currency_digit_num` int(10) NOT NULL COMMENT '限制位数',
  `guanwang_url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`currency_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_mark` (`currency_mark`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency
-- ----------------------------
INSERT INTO `yang_currency` VALUES ('29', '丘特币', '/Uploads/Public/Uploads/2016-05-04/572a0bd58385c.png', 'CPC', '', '0.000000', '10000000.0000', '0.1000', '0.1000', '', '0', '1', '1', '29991', '1463110582', '0', '127.0.0.1', 'passwd', 'user', '0', '', '', '', '0.0000', '0.0000', '0', '0', null);

-- ----------------------------
-- Table structure for `yang_currency_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_comment`;
CREATE TABLE `yang_currency_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种评论表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `content` varchar(256) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_currency_concern`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_concern`;
CREATE TABLE `yang_currency_concern` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种关注表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_concern
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_currency_pic`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_pic`;
CREATE TABLE `yang_currency_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种详情图片',
  `currency_id` int(11) NOT NULL,
  `pic` varchar(128) NOT NULL COMMENT '图片路径',
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_pic
-- ----------------------------
INSERT INTO `yang_currency_pic` VALUES ('1', '25', '/Uploads/Public/Uploads/2016-03-29/56f9eacacdfe6.jpg', '1459219262', '0');
INSERT INTO `yang_currency_pic` VALUES ('2', '25', '/Uploads/Public/Uploads/2016-03-29/56f9ead02625a.jpg', '1459219263', '0');

-- ----------------------------
-- Table structure for `yang_currency_user`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_user`;
CREATE TABLE `yang_currency_user` (
  `cu_id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `num` decimal(40,4) NOT NULL COMMENT '数量',
  `forzen_num` decimal(40,4) NOT NULL COMMENT '冻结数量',
  `status` tinyint(4) NOT NULL,
  `chongzhi_url` varchar(128) NOT NULL COMMENT '钱包充值地址',
  PRIMARY KEY (`cu_id`),
  KEY `member_id_2` (`member_id`,`currency_id`),
  KEY `cu_id` (`cu_id`,`member_id`,`currency_id`,`num`,`forzen_num`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=863 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_currency_user
-- ----------------------------
INSERT INTO `yang_currency_user` VALUES ('69', '78', '29', '0.0000', '0.0000', '0', 'CSQwkJQx8ba4bhEJaVzVZJ2nSNe4dHVjHQ');
INSERT INTO `yang_currency_user` VALUES ('79', '80', '29', '0.0000', '0.0000', '0', 'CT8GAz4xw5n82QWpb1xcpYdCGeE3XQhhCf');
INSERT INTO `yang_currency_user` VALUES ('84', '81', '29', '330010.1175', '0.0000', '0', 'CWtoEAascjz4Nv1nfEmFjeeb3qzbHKyNuA');
INSERT INTO `yang_currency_user` VALUES ('89', '82', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('94', '83', '29', '70850.8825', '0.0000', '0', 'CTyg2wntrSb9fU7aQxhUEUxXfmkifWzWzK');
INSERT INTO `yang_currency_user` VALUES ('106', '87', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('109', '88', '29', '5055.8800', '0.0000', '0', 'CSDWzqEcxn9cfZquRcnk7hEAh8d6wtniwu');
INSERT INTO `yang_currency_user` VALUES ('112', '89', '29', '10102.3700', '0.0000', '0', 'CGnxjKKhSfYerpRjv99gigYtR893nQuH4G');
INSERT INTO `yang_currency_user` VALUES ('115', '90', '29', '14999.0000', '0.0000', '0', 'CSAD2jfJqmJAf8yDCWGiACZauLKudHrrZZ');
INSERT INTO `yang_currency_user` VALUES ('124', '93', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('127', '94', '29', '1.0000', '0.0000', '0', 'CRMsJ2sE2nMzhdry73Z5PAEe7uSAizSm2V');
INSERT INTO `yang_currency_user` VALUES ('130', '95', '29', '5019.0000', '0.0000', '0', 'CZXMsXZCGNh7ekm8tfVx3xQxVeHY5eDchA');
INSERT INTO `yang_currency_user` VALUES ('133', '96', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('136', '97', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('139', '98', '29', '1000.0000', '0.0000', '0', 'CVttUYwJNq643CFzyajmWWie1MukWuM83F');
INSERT INTO `yang_currency_user` VALUES ('142', '99', '29', '0.0000', '0.0000', '0', 'CPzfGbxBXaK1QWeJgZNoHTGAjvTDcFHY6B');
INSERT INTO `yang_currency_user` VALUES ('145', '100', '29', '0.0000', '0.0000', '0', 'CGiJksUHJTsgGV5bHGMx635QEt6hdCroS9');
INSERT INTO `yang_currency_user` VALUES ('148', '101', '29', '2504.0000', '0.0000', '0', 'CTidGhyGu7xhtEkgok43ozkkCTrZ2WbuBW');
INSERT INTO `yang_currency_user` VALUES ('151', '102', '29', '1.0000', '0.0000', '0', 'CV5VkuUmpe1HoTZa2g69VbApUc5wXztWQ1');
INSERT INTO `yang_currency_user` VALUES ('154', '104', '29', '22762.0000', '0.0000', '0', 'CPANKd8ZHPFXoUNLV2itmnsZ5toATmn5ui');
INSERT INTO `yang_currency_user` VALUES ('157', '103', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('160', '105', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('163', '106', '29', '1007.3000', '0.0000', '0', 'CfNJdryZw2Rrx4iGbujz1wkpp6bsFZEAWj');
INSERT INTO `yang_currency_user` VALUES ('166', '107', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('169', '108', '29', '2579.0000', '0.0000', '0', 'CPPja5QtKnKZ4pqQkv5MrETszqkTsTV9RQ');
INSERT INTO `yang_currency_user` VALUES ('172', '109', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('175', '110', '29', '10038.0000', '0.0000', '0', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnasJM');
INSERT INTO `yang_currency_user` VALUES ('178', '111', '29', '0.0000', '0.0000', '0', 'CW87EjiDiTAnjE4TVP3VKbdMio2Jkoaq91');
INSERT INTO `yang_currency_user` VALUES ('181', '112', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('184', '113', '29', '16586.0000', '0.0000', '0', 'CYG5wn5ut1v7WrtXtB1Uq5bMJaDZ9z6HsK');
INSERT INTO `yang_currency_user` VALUES ('187', '114', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('190', '115', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('193', '116', '29', '3979.9900', '0.0000', '0', 'CWobdTZgdyCmheMVL2JfQaKq2AFtigG2jX');
INSERT INTO `yang_currency_user` VALUES ('196', '117', '29', '31058.0000', '0.0000', '0', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y');
INSERT INTO `yang_currency_user` VALUES ('199', '118', '29', '0.0000', '0.0000', '0', 'CUjKWC7dMmPCWCWnDQvTBW4MEB5QsMUbdd');
INSERT INTO `yang_currency_user` VALUES ('202', '119', '29', '22222.0000', '0.0000', '0', 'CT5G7h1frWi26nGPdMgFdaE9rksxXMPv6K');
INSERT INTO `yang_currency_user` VALUES ('205', '121', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('208', '120', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('211', '122', '29', '1003.0000', '0.0000', '0', 'CSpsuZcsFB1CMXkR2inbPaay2tYMZGCLzQ');
INSERT INTO `yang_currency_user` VALUES ('214', '123', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('217', '124', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('220', '126', '29', '0.0000', '0.0000', '0', 'CZ8RCe5vLN2cP1UYTvegMahAVA8tNgA4mk');
INSERT INTO `yang_currency_user` VALUES ('223', '127', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('226', '128', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('229', '129', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('232', '130', '29', '29590.0000', '0.0000', '0', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz');
INSERT INTO `yang_currency_user` VALUES ('235', '131', '29', '5597.2159', '0.0000', '0', 'CWFGfw8csqaWGUN6baKoossmj5Xc9VJhZu');
INSERT INTO `yang_currency_user` VALUES ('238', '132', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('241', '133', '29', '0.0000', '0.0000', '0', 'CMxM1hvtdjtJRK3Q999GNq1hFhQvnVMSvQ');
INSERT INTO `yang_currency_user` VALUES ('244', '134', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('247', '135', '29', '12.0000', '0.0000', '0', 'CMCSALefn2dRocceGmJLWTkpgmfFWnKvzE');
INSERT INTO `yang_currency_user` VALUES ('250', '136', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('253', '137', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('256', '138', '29', '6545.0000', '0.0000', '0', 'CTTGgvkpj2SDe2Qg7PCjMV5Jdw6Nr7MfSU');
INSERT INTO `yang_currency_user` VALUES ('259', '139', '29', '1052.0000', '0.0000', '0', 'CSs96ie9wnJ1gnm8kSTHUWVjaSygmr4PVf');
INSERT INTO `yang_currency_user` VALUES ('262', '140', '29', '5009.9700', '0.0000', '0', 'CH64KReDpLpfaNHHsa7fKs8fNeKmhw632L');
INSERT INTO `yang_currency_user` VALUES ('265', '141', '29', '3704.3275', '0.0000', '0', 'CPnNp7HidB58E12jywsPrCePFjTRhuRSw7');
INSERT INTO `yang_currency_user` VALUES ('268', '142', '29', '0.0000', '0.0000', '0', 'CNKn4QzMHgoVYucrTZJYJJz7qvRjmmh3cn');
INSERT INTO `yang_currency_user` VALUES ('271', '143', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('274', '144', '29', '0.0000', '0.0000', '0', 'CTWNydKPuDNgLJm5SvfioQTg85NZ9nJQax');
INSERT INTO `yang_currency_user` VALUES ('277', '145', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('280', '146', '29', '0.0000', '0.0000', '0', 'CaT8PNhjRVexuXU6W3Y2qaXu9EMag2f6SU');
INSERT INTO `yang_currency_user` VALUES ('283', '147', '29', '0.0000', '0.0000', '0', 'CMdRe7hokQQGPTug7uzANtxMJQRpgFwe5n');
INSERT INTO `yang_currency_user` VALUES ('286', '148', '29', '0.0000', '0.0000', '0', 'CesPn4a1ELZakZAmW2CWyfoSwDfoBSdBCo');
INSERT INTO `yang_currency_user` VALUES ('289', '125', '29', '1.0000', '0.0000', '0', 'CWKeFaCktCcHypbAmWUk3TSqJ8zxDnaciA');
INSERT INTO `yang_currency_user` VALUES ('292', '149', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('295', '150', '29', '10250.0000', '0.0000', '0', 'CY9Z2mByNfd264zpJmPCocHnJnPxcdR38s');
INSERT INTO `yang_currency_user` VALUES ('298', '151', '29', '0.0000', '0.0000', '0', 'CV9HRAmnB5kucN9dPRYT2Yu7HJ13D63b1r');
INSERT INTO `yang_currency_user` VALUES ('301', '152', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('304', '153', '29', '5038.3600', '0.0000', '0', 'CNSGSQUxEsoLHZXKM29aeUzyjN8BfMKBvM');
INSERT INTO `yang_currency_user` VALUES ('307', '154', '29', '25066.0000', '0.0000', '0', 'CT31sUpmevkWVr1dzjYgf3oC1awCdFsFvX');
INSERT INTO `yang_currency_user` VALUES ('310', '155', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('313', '157', '29', '0.0000', '0.0000', '0', 'CatXqQsvr4h7zbDf47eDKoX3kCkeD1aGkF');
INSERT INTO `yang_currency_user` VALUES ('316', '156', '29', '25176.0000', '0.0000', '0', 'Cbh4k2HfXYWy5Davhxrcp4g2ChURPvfcGk');
INSERT INTO `yang_currency_user` VALUES ('319', '158', '29', '0.0000', '0.0000', '0', 'CL69WY6hMgwih2uCPnSfb2v7g9c8SrZFgc');
INSERT INTO `yang_currency_user` VALUES ('322', '159', '29', '0.0000', '0.0000', '0', 'CNcVYeiZaCwR5a7ykABzfA346su5kbcPjW');
INSERT INTO `yang_currency_user` VALUES ('325', '160', '29', '15045.0000', '0.0000', '0', 'CdxVdvAeFhSn7QBDUddvisiuf6rTNKnsfM');
INSERT INTO `yang_currency_user` VALUES ('328', '161', '29', '2090.0000', '0.0000', '0', 'CKWshCfVxbTG1TwWRzjYoXLyWJ1SFmFv1a');
INSERT INTO `yang_currency_user` VALUES ('331', '162', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('334', '163', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('337', '164', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('340', '165', '29', '2519.0000', '0.0000', '0', 'CSpum8c9xsQ2fKzXmYWeBjzgjJDPtLjnCf');
INSERT INTO `yang_currency_user` VALUES ('343', '166', '29', '10075.1000', '0.0000', '0', 'CURwpoNALyeQadudJMHp497cpMA3LQqisF');
INSERT INTO `yang_currency_user` VALUES ('346', '167', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('349', '168', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('352', '169', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('355', '170', '29', '5004.9000', '0.0000', '0', 'CdDYm2YLeSHhbm16R2wJSX8Tc72owkx8Eg');
INSERT INTO `yang_currency_user` VALUES ('358', '171', '29', '0.0000', '0.0000', '0', 'CJLt2yAqMaQi9nJpjjfkejMcUsvLg9fYMh');
INSERT INTO `yang_currency_user` VALUES ('361', '172', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('364', '173', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('367', '174', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('370', '175', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('373', '176', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('376', '177', '29', '25061.0000', '0.0000', '0', 'CVPVCg9c8SdXwhN1XoHcZFTyBXVRBmiQJS');
INSERT INTO `yang_currency_user` VALUES ('379', '178', '29', '2419.0000', '0.0000', '0', 'CY39HB4xEByidYeCH95PLaK3AZdX4q9Gsv');
INSERT INTO `yang_currency_user` VALUES ('382', '179', '29', '5368.0000', '0.0000', '0', 'Cbxd8cht7geiD2uY9mmV5p3Bi9tACXd6XC');
INSERT INTO `yang_currency_user` VALUES ('385', '180', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('388', '181', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('391', '182', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('394', '183', '29', '31578.9300', '0.0000', '0', 'CYb5h8ZsPt7jjAjP5A9c9ViHBjzfaPc1Bk');
INSERT INTO `yang_currency_user` VALUES ('397', '184', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('400', '185', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('403', '186', '29', '5577.0000', '0.0000', '0', 'CYHK4T8XQCkFW1i4j5E4DVBi6nLfWLts4m');
INSERT INTO `yang_currency_user` VALUES ('406', '187', '29', '1000.0000', '0.0000', '0', 'CQGGZFVzy4k9wVcSHScBwYNRqvDTVdipf3');
INSERT INTO `yang_currency_user` VALUES ('409', '188', '29', '55144.0000', '0.0000', '0', 'CUHotLdyY3wbHqNFbVCXB4xc6yW5y91bCd');
INSERT INTO `yang_currency_user` VALUES ('412', '190', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('415', '191', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('418', '192', '29', '0.0000', '0.0000', '0', 'CRhVqnTrgDfaGg19jZtKjBkHAbDMerh33w');
INSERT INTO `yang_currency_user` VALUES ('421', '193', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('424', '194', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('427', '195', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('430', '196', '29', '0.0000', '0.0000', '0', 'CaoGJbrXGxiVoQ8dMavaTH2fxmMWot23Dm');
INSERT INTO `yang_currency_user` VALUES ('433', '197', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('436', '198', '29', '0.0000', '0.0000', '0', 'Cc6osEtQni7tSSMXFuwtDjrc8JX4pYHmic');
INSERT INTO `yang_currency_user` VALUES ('439', '199', '29', '5035.0000', '0.0000', '0', 'CNe2PXUSEL39pagZU1C5LL7Xk1Wz5RbbhP');
INSERT INTO `yang_currency_user` VALUES ('442', '200', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('445', '201', '29', '2635.0000', '0.0000', '0', 'CQaAmaMBTBM5PuAcsVx78kTaYcRAmjnge5');
INSERT INTO `yang_currency_user` VALUES ('448', '202', '29', '1003.0000', '0.0000', '0', 'CUQFcy2JgzfHSzsjTAgrUFeeX8G68aQnYt');
INSERT INTO `yang_currency_user` VALUES ('451', '203', '29', '25160.0000', '0.0000', '0', 'CTMmJgkSHgJ2BYrho1HgD8hEsv9iWeA11s');
INSERT INTO `yang_currency_user` VALUES ('454', '204', '29', '0.0000', '0.0000', '0', 'CTVFiBzhu4EvpSCmMWPXY617b2Hzm7dA5b');
INSERT INTO `yang_currency_user` VALUES ('457', '205', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('460', '206', '29', '0.0000', '0.0000', '0', 'CJVxnvuQoVThtimVVVfymDvjA4KC9kza3p');
INSERT INTO `yang_currency_user` VALUES ('463', '207', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('466', '208', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('469', '209', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('472', '210', '29', '5000.0000', '0.0000', '0', 'CWPxB3becLMwYWXYkxq2bSf1KESXjd5dL6');
INSERT INTO `yang_currency_user` VALUES ('475', '211', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('478', '212', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('481', '213', '29', '11188.0000', '0.0000', '0', 'CZe9VWLZRYCqHdb2RDB3hzb5YycPpndW99');
INSERT INTO `yang_currency_user` VALUES ('484', '214', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('487', '215', '29', '1050.0000', '0.0000', '0', 'CKKM7cHvgdt723RAg8VAmck8tMG2Rz6EJT');
INSERT INTO `yang_currency_user` VALUES ('490', '216', '29', '9999.9800', '0.0000', '0', 'CKav2Tr3REKZA9Duz2NJ2rZN8w4yeBkwrj');
INSERT INTO `yang_currency_user` VALUES ('493', '217', '29', '3000.0000', '0.0000', '0', 'CU9ZzmUuXZXQo2JeasiuSHcWTkUNpaEuSJ');
INSERT INTO `yang_currency_user` VALUES ('496', '218', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('499', '219', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('502', '220', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('505', '221', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('508', '222', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('511', '223', '29', '3000.0000', '0.0000', '0', 'CfC4W1ZKtfWe7YzzhGUbDrhNAbFHo3FmvV');
INSERT INTO `yang_currency_user` VALUES ('514', '224', '29', '0.0000', '0.0000', '0', 'CduHieBihm3C4oG3UBdFprqXCYdw2hG2xo');
INSERT INTO `yang_currency_user` VALUES ('517', '225', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('520', '226', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('523', '227', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('526', '228', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('529', '229', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('532', '230', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('535', '231', '29', '0.0000', '0.0000', '0', 'CbzK49y2m32AfzTY53KZwxxcCLr9pXDZ6b');
INSERT INTO `yang_currency_user` VALUES ('538', '232', '29', '0.0000', '0.0000', '0', 'Ced8ZLZQm2xKbMePWX5sycLdvNb4gYPKkS');
INSERT INTO `yang_currency_user` VALUES ('541', '233', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('544', '234', '29', '5039.9000', '0.0000', '0', 'CUN8gNTj51fDSc6vmgsoYmAEV74zXcnMRp');
INSERT INTO `yang_currency_user` VALUES ('547', '235', '29', '2500.0000', '0.0000', '0', 'CchA17vUU1J7BfiWZE6aunTwDdBESBKcZX');
INSERT INTO `yang_currency_user` VALUES ('550', '236', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('553', '237', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('556', '238', '29', '20.0000', '0.0000', '0', 'CQfUMMc9sbrDAeLnJwNnM9LtHn7i5L1AUB');
INSERT INTO `yang_currency_user` VALUES ('559', '239', '29', '0.0000', '0.0000', '0', 'CYdBcbaUt4qiBPS5mfubEYozAvs39oVYHy');
INSERT INTO `yang_currency_user` VALUES ('562', '240', '29', '10077.4100', '0.0000', '0', 'CVQCjrUMDerECSFFp8qASnUgBLxZon5dKa');
INSERT INTO `yang_currency_user` VALUES ('565', '241', '29', '1999.9800', '0.0000', '0', 'CQ7DAB85p4BZhWjnnR8YYJndWQH3QDzHFF');
INSERT INTO `yang_currency_user` VALUES ('568', '242', '29', '3.0000', '0.0000', '0', 'CUBUS5vagusQKm7ksPouA5DjsvdVZsc6Ne');
INSERT INTO `yang_currency_user` VALUES ('571', '243', '29', '200000.0000', '0.0000', '0', 'CS3LWR6Gn6fmsXVWd66LABAS3FY2jVEw46');
INSERT INTO `yang_currency_user` VALUES ('574', '244', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('577', '245', '29', '5597.0000', '0.0000', '0', 'CJ3i6w5zgDVEvBHUYYWxRGVNMJ7rADdrs5');
INSERT INTO `yang_currency_user` VALUES ('580', '246', '29', '0.0000', '0.0000', '0', 'Ca5VCEC9jg7egriUfXiNkQp9VYE21woz1p');
INSERT INTO `yang_currency_user` VALUES ('583', '247', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('586', '248', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('589', '249', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('592', '250', '29', '10564.0000', '0.0000', '0', 'CZhGguqhPi3Whb2zA1UGXH4SXHaQRdG2fi');
INSERT INTO `yang_currency_user` VALUES ('595', '251', '29', '10066.0000', '0.0000', '0', 'CTnjZLEkk7jxwwvAHuTFy6RWY6PHkErTBM');
INSERT INTO `yang_currency_user` VALUES ('598', '252', '29', '526.0000', '0.0000', '0', 'CU8QvEYoSDVxKn4NUWZy8wyUgSEtcaiqVC');
INSERT INTO `yang_currency_user` VALUES ('601', '253', '29', '0.0000', '0.0000', '0', 'CNZ3rcafjPpdZcMe7GrdiF6ojoXpLu75oF');
INSERT INTO `yang_currency_user` VALUES ('604', '254', '29', '0.0000', '0.0000', '0', 'CQVEkZGFNt6qAnRVt2XgSr4KoYtudZuM5x');
INSERT INTO `yang_currency_user` VALUES ('607', '255', '29', '0.0000', '0.0000', '0', 'CfL8hFTsdd4BqJTVph3S3FRzWBmXXDYcEY');
INSERT INTO `yang_currency_user` VALUES ('610', '256', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('613', '257', '29', '0.0000', '0.0000', '0', 'CHBC74RPxKBHqEaafTcqrQ3zeCvJAiyk7P');
INSERT INTO `yang_currency_user` VALUES ('616', '258', '29', '500.0000', '0.0000', '0', 'CRrd62AEYbmaQXgSWsFtM14EtWQhig5HzE');
INSERT INTO `yang_currency_user` VALUES ('619', '259', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('622', '260', '29', '11143.1000', '0.0000', '0', 'CQgmDUBsDR9et6nyLdR7q8cFCR4Si63cHB');
INSERT INTO `yang_currency_user` VALUES ('625', '261', '29', '2500.0000', '0.0000', '0', 'CeNA5rEYJNQ4dy3FssBEanDUopY1bC1cpL');
INSERT INTO `yang_currency_user` VALUES ('628', '262', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('631', '263', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('634', '264', '29', '2509.6590', '0.0000', '0', 'CS7Eci6AwT2gy1bjvBjnkyr4gpyrqxPk1F');
INSERT INTO `yang_currency_user` VALUES ('637', '265', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('640', '266', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('643', '267', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('646', '268', '29', '5036.0000', '0.0000', '0', 'CMA2T53aDDWxpkSA61XKBTdqFEnw8BBq17');
INSERT INTO `yang_currency_user` VALUES ('649', '269', '29', '0.0000', '0.0000', '0', 'CbuDdFQCPxywpyLEX17zUVZBySUPjZMxW6');
INSERT INTO `yang_currency_user` VALUES ('652', '270', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('655', '271', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('658', '272', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('661', '273', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('664', '274', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('667', '275', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('670', '276', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('673', '277', '29', '2999.9000', '0.0000', '0', 'CbUvvBvKczGB7uoRUFnTLCGvAxgAg1eQSP');
INSERT INTO `yang_currency_user` VALUES ('676', '278', '29', '0.0000', '0.0000', '0', 'CbLTeGwTdarPC36sRAKM2Mn6uMswVVcnym');
INSERT INTO `yang_currency_user` VALUES ('679', '279', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('682', '280', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('685', '281', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('688', '282', '29', '0.0000', '0.0000', '0', 'CLCk4QzR6e3JE76BuvCyRAf81ZhRzFMFKu');
INSERT INTO `yang_currency_user` VALUES ('691', '283', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('694', '284', '29', '2892.0000', '0.0000', '0', 'CN5TaHNbCNC9w6Hp3on63YUSZfMWST97NJ');
INSERT INTO `yang_currency_user` VALUES ('697', '285', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('700', '286', '29', '5039.0000', '0.0000', '0', 'CJxQCeMPWnAsPCjnGjx7X66niP5VGGcVNh');
INSERT INTO `yang_currency_user` VALUES ('703', '287', '29', '3882.0000', '0.0000', '0', 'CKgXEE3arHKtbsy1nfNS8tbEqT83vAgCAQ');
INSERT INTO `yang_currency_user` VALUES ('706', '288', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('709', '289', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('712', '290', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('715', '291', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('718', '292', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('721', '293', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('724', '294', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('727', '295', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('730', '296', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('733', '297', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('736', '298', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('739', '299', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('742', '300', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('745', '301', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('748', '302', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('751', '303', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('754', '304', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('757', '305', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('760', '306', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('763', '307', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('766', '308', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('769', '309', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('772', '310', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('775', '311', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('778', '312', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('781', '313', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('784', '314', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('787', '315', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('790', '316', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('793', '317', '29', '1.0000', '0.0000', '0', 'CHwX39Xt6cEJ4DXiwLz2dEs38wuuszMBRf');
INSERT INTO `yang_currency_user` VALUES ('796', '318', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('797', '319', '29', '0.5000', '0.0000', '0', 'CbHXQVpS7gEr8ieBk5RKjmduoF9Ry5WJ7z');
INSERT INTO `yang_currency_user` VALUES ('798', '320', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('799', '321', '29', '15106.0000', '0.0000', '0', 'CLRm4nXPrA28t2RxwbB1JK3zNJobYksCqE');
INSERT INTO `yang_currency_user` VALUES ('800', '322', '29', '4000.0000', '0.0000', '0', 'CSjs6J4HJdg46Kk4KXoK5x7Kk3BA1bt2t4');
INSERT INTO `yang_currency_user` VALUES ('801', '323', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('802', '324', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('803', '325', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('804', '326', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('805', '327', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('806', '328', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('807', '329', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('808', '330', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('809', '331', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('810', '332', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('811', '333', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('812', '334', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('813', '335', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('814', '336', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('815', '337', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('816', '338', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('817', '339', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('818', '340', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('819', '342', '29', '5041.5500', '0.0000', '0', 'CRJBPeDxeWahdmkSALpy6ZYQwH3ttDo9fS');
INSERT INTO `yang_currency_user` VALUES ('820', '343', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('821', '344', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('822', '345', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('823', '346', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('824', '347', '29', '0.0000', '0.0000', '0', 'CNdAuGJeBi2zJJBUJNMmw56Z8YSLKgU7Cj');
INSERT INTO `yang_currency_user` VALUES ('825', '348', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('826', '349', '29', '0.0000', '0.0000', '0', 'CJ4eMvaH5ZUXeJSGKVHgqHiRktJpv5H6V5');
INSERT INTO `yang_currency_user` VALUES ('827', '350', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('828', '351', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('829', '352', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('830', '353', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('831', '354', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('832', '355', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('833', '356', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('834', '357', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('835', '358', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('836', '359', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('837', '360', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('838', '361', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('839', '362', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('840', '363', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('841', '364', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('842', '365', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('843', '366', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('844', '367', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('845', '368', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('846', '369', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('847', '370', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('848', '371', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('849', '372', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('850', '373', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('851', '374', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('852', '375', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('853', '376', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('854', '377', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('855', '378', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('856', '379', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('857', '380', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('858', '381', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('859', '382', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('860', '383', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('861', '384', '29', '0.0000', '0.0000', '0', '');
INSERT INTO `yang_currency_user` VALUES ('862', '385', '29', '0.0000', '0.0000', '0', '');

-- ----------------------------
-- Table structure for `yang_currency_voted`
-- ----------------------------
DROP TABLE IF EXISTS `yang_currency_voted`;
CREATE TABLE `yang_currency_voted` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '币种投票表',
  `currency_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `币种id` (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_currency_voted
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_dividend_config`
-- ----------------------------
DROP TABLE IF EXISTS `yang_dividend_config`;
CREATE TABLE `yang_dividend_config` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_dividend_config
-- ----------------------------
INSERT INTO `yang_dividend_config` VALUES ('dividend_id', '0', '0');
INSERT INTO `yang_dividend_config` VALUES ('num1', '0', '0');
INSERT INTO `yang_dividend_config` VALUES ('num2', '', '0');
INSERT INTO `yang_dividend_config` VALUES ('num3', '', '0');
INSERT INTO `yang_dividend_config` VALUES ('num4', '', '0');
INSERT INTO `yang_dividend_config` VALUES ('money1', '', '0');
INSERT INTO `yang_dividend_config` VALUES ('money2', '', '0');
INSERT INTO `yang_dividend_config` VALUES ('money3', '', '0');

-- ----------------------------
-- Table structure for `yang_entrust`
-- ----------------------------
DROP TABLE IF EXISTS `yang_entrust`;
CREATE TABLE `yang_entrust` (
  `entrust_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '委托记录表（委托管理）',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `currency_id` int(32) NOT NULL COMMENT '货币id',
  `all_num` decimal(10,4) NOT NULL COMMENT '总数量',
  `surplus_num` decimal(10,4) NOT NULL COMMENT '剩余数量',
  `price` decimal(10,2) NOT NULL COMMENT '实际价格(卖出价格）',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `type` tinyint(4) NOT NULL COMMENT '类型 卖出单1 还是买入单2',
  `on_price` decimal(10,2) NOT NULL COMMENT '委托价格(挂单价格全价格 卖出价格是扣除手续费的）',
  `fee` decimal(10,2) NOT NULL COMMENT '手续费比例',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`entrust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_entrust
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_examine_pwdtrade`
-- ----------------------------
DROP TABLE IF EXISTS `yang_examine_pwdtrade`;
CREATE TABLE `yang_examine_pwdtrade` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `u_id` int(32) NOT NULL COMMENT '用户ID',
  `pwdtrade` varchar(64) NOT NULL COMMENT '修改支付密码',
  `idcard` varchar(20) NOT NULL COMMENT '身份证号',
  `idcardPositive` varchar(64) NOT NULL COMMENT '身份证正面',
  `idcardSide` varchar(64) NOT NULL COMMENT '身份证反面',
  `idcardHold` varchar(64) NOT NULL COMMENT '手持身份证',
  `add_time` int(32) NOT NULL COMMENT '添加时间',
  `examine_time` int(32) NOT NULL COMMENT '审核通过时间',
  `examine_name` varchar(32) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未审核1通过',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_examine_pwdtrade
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_fill`
-- ----------------------------
DROP TABLE IF EXISTS `yang_fill`;
CREATE TABLE `yang_fill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `num` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bank` int(5) NOT NULL,
  `banknum` varchar(36) NOT NULL,
  `uname` varchar(36) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `bankname` varchar(36) NOT NULL,
  `ctime` int(11) NOT NULL,
  `random` int(10) NOT NULL,
  `tradeno` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL COMMENT '1:网上支付 2：支付宝手动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_fill
-- ----------------------------
INSERT INTO `yang_fill` VALUES ('206', '3355', '2.00', '1106', '', '123', '', '', '1460868657', '4591', '20160417125057531228', '0', '1');
INSERT INTO `yang_fill` VALUES ('207', '3355', '2.00', '1106', '', '123', '', '', '1460868813', '2682', '20160417125333561570', '0', '1');
INSERT INTO `yang_fill` VALUES ('208', '3355', '2.00', '1106', '', '123', '', '', '1460868931', '2759', '20160417125531598926', '0', '1');
INSERT INTO `yang_fill` VALUES ('209', '3355', '2.00', '1106', '', '123', '', '', '1460869161', '9109', '20160417125921605944', '0', '1');
INSERT INTO `yang_fill` VALUES ('210', '3355', '2.00', '1106', '', '123', '', '', '1460869649', '3536', '20160417130729941988', '0', '1');
INSERT INTO `yang_fill` VALUES ('211', '3355', '2.00', '1106', '', '123', '', '', '1460869966', '3298', '20160417131246640300', '1', '1');
INSERT INTO `yang_fill` VALUES ('212', '3355', '2.00', '0', '', '123', '', '1106', '1460870529', '1859', '20160417132209612443', '1', '1');
INSERT INTO `yang_fill` VALUES ('213', '3355', '2.00', '0', '', '123', '', '1106', '1460870950', '7984', '20160417132910390607', '1', '1');
INSERT INTO `yang_fill` VALUES ('214', '3355', '2.00', '0', '', '123', '', '1106', '1460871092', '9997', '20160417133132761973', '1', '1');
INSERT INTO `yang_fill` VALUES ('215', '3355', '2.00', '0', '', '123', '', '1106', '1460871165', '867', '20160417133245253252', '1', '1');
INSERT INTO `yang_fill` VALUES ('216', '59', '5.00', '0', '', '', '', '1101', '1461899802', '8544', '20160429111642930846', '0', '1');
INSERT INTO `yang_fill` VALUES ('217', '72', '1.00', '0', '', '', '', '1100', '1462330732', '61', '20160504105852419767', '0', '1');
INSERT INTO `yang_fill` VALUES ('218', '72', '1.00', '0', '', '', '', '1101', '1462334942', '8814', '20160504120902899382', '0', '1');
INSERT INTO `yang_fill` VALUES ('219', '75', '1.00', '0', '', '', '', '1101', '1462370359', '3450', '20160504215919235990', '0', '1');
INSERT INTO `yang_fill` VALUES ('220', '79', '500.00', '0', '', '', '', '1100', '1462374803', '9884', '20160504231323264633', '0', '1');
INSERT INTO `yang_fill` VALUES ('221', '79', '3.00', '0', '', '', '', '1100', '1462530094', '80', '20160506182134335096', '0', '1');
INSERT INTO `yang_fill` VALUES ('222', '88', '1.00', '0', '', '', '', '1101', '1462704630', '4994', '20160508185030682755', '0', '1');
INSERT INTO `yang_fill` VALUES ('223', '88', '1.00', '0', '', '', '', '1101', '1462704661', '1837', '20160508185101416012', '0', '1');
INSERT INTO `yang_fill` VALUES ('224', '87', '1.00', '0', '', '', '', '1100', '1462887312', '7651', '20160510213512220918', '0', '1');

-- ----------------------------
-- Table structure for `yang_finance`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance`;
CREATE TABLE `yang_finance` (
  `finance_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '财务日志表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `money_type` tinyint(4) NOT NULL COMMENT '收入=1/支出=2',
  `money` decimal(10,2) NOT NULL COMMENT '价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `currency_id` int(10) NOT NULL COMMENT '币种',
  `ip` varchar(64) NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `种类` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=424 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance
-- ----------------------------
INSERT INTO `yang_finance` VALUES ('423', '87', '6', '线下充值80000.3516。', '1', '80000.35', '1462887676', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('422', '87', '10', '分红', '1', '63.93', '1462670629', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('421', '83', '10', '分红', '1', '6.62', '1462670629', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('420', '81', '10', '分红', '1', '0.08', '1462670629', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('419', '78', '10', '分红', '1', '29.38', '1462670629', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('418', '87', '11', '交易手续费', '2', '0.00', '1462587941', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('417', '87', '11', '交易手续费', '2', '0.00', '1462587941', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('416', '87', '11', '交易手续费', '2', '0.00', '1462587878', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('415', '87', '11', '交易手续费', '2', '0.00', '1462587878', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('414', '87', '11', '交易手续费', '2', '0.00', '1462587781', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('413', '87', '11', '交易手续费', '2', '0.00', '1462587781', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('412', '87', '11', '交易手续费', '2', '0.00', '1462544669', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('411', '87', '11', '交易手续费', '2', '0.00', '1462544669', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('410', '78', '11', '交易手续费', '2', '0.00', '1462544669', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('409', '87', '11', '交易手续费', '2', '0.00', '1462544669', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('408', '87', '11', '交易手续费', '2', '0.00', '1462544669', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('407', '87', '11', '交易手续费', '2', '0.00', '1462544669', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('406', '87', '11', '交易手续费', '2', '0.00', '1462541338', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('405', '78', '11', '交易手续费', '2', '0.00', '1462541338', '29', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('404', '87', '11', '交易手续费', '2', '0.00', '1462541338', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('403', '78', '11', '交易手续费', '2', '0.00', '1462541338', '29', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('402', '87', '11', '交易手续费', '2', '0.00', '1462541004', '0', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('401', '87', '11', '交易手续费', '2', '0.00', '1462541004', '29', '171.40.145.2');
INSERT INTO `yang_finance` VALUES ('400', '87', '11', '交易手续费', '2', '0.00', '1462540348', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('399', '78', '11', '交易手续费', '2', '0.00', '1462540348', '29', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('398', '87', '11', '交易手续费', '2', '0.00', '1462540296', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('393', '83', '6', '线下充值100.63。', '1', '100.63', '1462536751', '0', '223.104.91.75');
INSERT INTO `yang_finance` VALUES ('392', '83', '10', '1', '1', '98824.91', '1462535466', '0', '171.34.246.38');
INSERT INTO `yang_finance` VALUES ('390', '83', '10', '分红成功', '1', '9.88', '1462535337', '29', '171.34.246.38');
INSERT INTO `yang_finance` VALUES ('391', '81', '10', '1', '1', '1175.09', '1462535466', '0', '171.34.246.38');
INSERT INTO `yang_finance` VALUES ('388', '81', '6', '线下充值100.36。', '1', '100.36', '1462444913', '0', '180.140.137.117');
INSERT INTO `yang_finance` VALUES ('389', '81', '10', '分红成功', '1', '0.12', '1462535337', '29', '171.34.246.38');
INSERT INTO `yang_finance` VALUES ('397', '78', '11', '交易手续费', '2', '0.00', '1462540296', '29', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('396', '78', '3', '管理员充值', '1', '2000.00', '1462539962', '29', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('395', '78', '3', '管理员充值', '1', '1000.00', '1462539923', '0', '121.61.57.67');
INSERT INTO `yang_finance` VALUES ('394', '87', '6', '线下充值1000.14。', '1', '1000.14', '1462539648', '0', '121.61.57.67');

-- ----------------------------
-- Table structure for `yang_finance_type`
-- ----------------------------
DROP TABLE IF EXISTS `yang_finance_type`;
CREATE TABLE `yang_finance_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_finance_type
-- ----------------------------
INSERT INTO `yang_finance_type` VALUES ('1', '会员升级', '1');
INSERT INTO `yang_finance_type` VALUES ('3', '管理员充值', '1');
INSERT INTO `yang_finance_type` VALUES ('4', '管理员扣款', '1');
INSERT INTO `yang_finance_type` VALUES ('5', '升级会员', '1');
INSERT INTO `yang_finance_type` VALUES ('6', '充值', '1');
INSERT INTO `yang_finance_type` VALUES ('8', '众筹扣款', '1');
INSERT INTO `yang_finance_type` VALUES ('9', '众筹获取', '1');
INSERT INTO `yang_finance_type` VALUES ('10', '分红奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('11', '交易手续费', '1');
INSERT INTO `yang_finance_type` VALUES ('12', '推荐奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('13', '分红股奖励', '1');
INSERT INTO `yang_finance_type` VALUES ('23', '提现', '1');

-- ----------------------------
-- Table structure for `yang_findpwd`
-- ----------------------------
DROP TABLE IF EXISTS `yang_findpwd`;
CREATE TABLE `yang_findpwd` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `member_id` int(32) NOT NULL,
  `token` varchar(100) NOT NULL,
  `add_time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_findpwd
-- ----------------------------
INSERT INTO `yang_findpwd` VALUES ('12', '66', 'C9C5D5AEC4D4BCAA49F3CB8A7BA5DBF90A63A9328E5185341228E884A1A58748', '1460718823');
INSERT INTO `yang_findpwd` VALUES ('13', '66', 'C9C5D5AEC4D4BCAA49F3CB8A7BA5DBF916E98A29D552B179551D81A46975C397', '1460719103');
INSERT INTO `yang_findpwd` VALUES ('14', '66', 'C9C5D5AEC4D4BCAA49F3CB8A7BA5DBF93AA1936B542E8AAE9CAF44C3EC3C4977', '1460719228');
INSERT INTO `yang_findpwd` VALUES ('16', '171', '4E44D4D7A24C61E3020B87B8AF107F49CAE3014C156F1DD9B1D2B7BFF1580BF0', '1462888265');

-- ----------------------------
-- Table structure for `yang_flash`
-- ----------------------------
DROP TABLE IF EXISTS `yang_flash`;
CREATE TABLE `yang_flash` (
  `flash_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `pic` varchar(128) NOT NULL,
  `jump_url` varchar(128) NOT NULL COMMENT '跳转地址',
  `sort` int(16) NOT NULL COMMENT '排序',
  `type` varchar(16) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`flash_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_flash
-- ----------------------------
INSERT INTO `yang_flash` VALUES ('8', '', '/Uploads/Public/Uploads/2016-05-04/5729b62d5fe0e.jpg', '', '3', '', '1462351558', '0');
INSERT INTO `yang_flash` VALUES ('7', '', '/Uploads/Public/Uploads/2016-05-04/5729b604b04be.jpg', '', '2', '', '1462351451', '0');
INSERT INTO `yang_flash` VALUES ('11', '', '/Uploads/Public/Uploads/2016-05-04/5729b73a85d30.jpg', '', '4', '', '1462351674', '0');
INSERT INTO `yang_flash` VALUES ('13', '', '/Uploads/Public/Uploads/2016-05-06/572cb61623e98.jpg', '', '0', '', '1462547990', '0');

-- ----------------------------
-- Table structure for `yang_follow`
-- ----------------------------
DROP TABLE IF EXISTS `yang_follow`;
CREATE TABLE `yang_follow` (
  `follow_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '关注表',
  `member_id` int(32) NOT NULL COMMENT '用户id',
  `uid` int(32) NOT NULL COMMENT '关注人id',
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`follow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_follow
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_issue`
-- ----------------------------
DROP TABLE IF EXISTS `yang_issue`;
CREATE TABLE `yang_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '众筹表',
  `currency_id` int(11) NOT NULL,
  `num` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '发行数量',
  `price` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '发行价格',
  `deal` decimal(20,3) NOT NULL DEFAULT '0.000' COMMENT '剩余数量',
  `ctime` varchar(32) NOT NULL COMMENT '添加时间',
  `money` decimal(32,2) NOT NULL COMMENT '总金额',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `min_limit` decimal(32,2) NOT NULL DEFAULT '0.00' COMMENT '最低购买',
  `limit` decimal(32,2) NOT NULL DEFAULT '0.00' COMMENT '限购数量',
  `limit_count` int(32) NOT NULL DEFAULT '1' COMMENT '限购次数',
  `title` varchar(32) NOT NULL,
  `info` text NOT NULL,
  `url1` varchar(64) NOT NULL,
  `url2` varchar(64) NOT NULL,
  `wenjian_url` varchar(64) NOT NULL COMMENT '上传文件路径',
  `num_nosell` decimal(64,0) NOT NULL,
  `add_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `zhongchou_success_bili` decimal(20,4) NOT NULL COMMENT '众筹成功比例',
  `buy_currency_id` int(11) NOT NULL,
  `is_forzen` tinyint(4) NOT NULL COMMENT '0冻结1是可用',
  `remove_forzen_bili` tinyint(4) NOT NULL,
  `remove_forzen_cycle` int(20) NOT NULL COMMENT 's解冻周期',
  `zc_awards_currency_id` varchar(32) NOT NULL,
  `zc_awards_one_ratio` varchar(32) NOT NULL,
  `zc_awards_two_ratio` varchar(32) NOT NULL,
  `zc_awards_status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_issue
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_issue_log`
-- ----------------------------
DROP TABLE IF EXISTS `yang_issue_log`;
CREATE TABLE `yang_issue_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '认筹日志表',
  `iid` int(11) NOT NULL COMMENT '认筹表id',
  `uid` int(11) NOT NULL,
  `num` decimal(32,0) NOT NULL,
  `price` decimal(32,3) NOT NULL,
  `add_time` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `buy_currency_id` int(11) NOT NULL,
  `deal` decimal(32,0) NOT NULL COMMENT '冻结剩余量',
  `cid` int(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iid` (`iid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_issue_log
-- ----------------------------
INSERT INTO `yang_issue_log` VALUES ('30', '10', '59', '500', '0.100', '1462371467', '1', '27', '0', '26');
INSERT INTO `yang_issue_log` VALUES ('31', '10', '59', '500', '0.100', '1476699349', '0', '27', '250', '26');

-- ----------------------------
-- Table structure for `yang_link`
-- ----------------------------
DROP TABLE IF EXISTS `yang_link`;
CREATE TABLE `yang_link` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `tupian` varchar(125) NOT NULL,
  `url` varchar(125) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_link
-- ----------------------------
INSERT INTO `yang_link` VALUES ('3', '新浪', '', 'https://www.baidu.com/', '1', '1458907678');
INSERT INTO `yang_link` VALUES ('4', '凤凰', '', 'https://www.baidu.com/', '1', '1458907719');
INSERT INTO `yang_link` VALUES ('5', '比特币', '', 'https://www.baidu.com/', '1', '1458907730');
INSERT INTO `yang_link` VALUES ('6', '虚拟币', '', 'https://www.baidu.com/', '1', '1458907737');
INSERT INTO `yang_link` VALUES ('7', '支付宝', '', 'https://www.baidu.com/', '1', '1458907745');
INSERT INTO `yang_link` VALUES ('8', '淘宝', '', 'https://www.baidu.com/', '1', '1458907791');
INSERT INTO `yang_link` VALUES ('9', '网易', '', 'https://www.baidu.com/', '1', '1458907803');
INSERT INTO `yang_link` VALUES ('10', '京东', '', 'https://www.baidu.com/', '1', '1458907821');
INSERT INTO `yang_link` VALUES ('11', '央视', '', 'https://www.baidu.com/', '1', '1458907834');
INSERT INTO `yang_link` VALUES ('12', '太平洋', '', 'https://www.baidu.com/', '1', '1458907845');
INSERT INTO `yang_link` VALUES ('13', '汽车', '', 'https://www.baidu.com/', '1', '1458907860');
INSERT INTO `yang_link` VALUES ('15', '银行', '', 'https://www.baidu.com/', '1', '1458907866');
INSERT INTO `yang_link` VALUES ('19', '百度', '', 'https://www.baidu.com/', '1', '1458907682');

-- ----------------------------
-- Table structure for `yang_member`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member`;
CREATE TABLE `yang_member` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `openid` varchar(128) NOT NULL,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `pid` varchar(64) NOT NULL COMMENT '邀请人',
  `pwdtrade` varchar(64) NOT NULL COMMENT '支付密码',
  `nick` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `name` varchar(32) NOT NULL COMMENT '真实姓名',
  `cardtype` varchar(4) NOT NULL DEFAULT '1' COMMENT '1=身份证2=护照',
  `idcard` varchar(20) NOT NULL COMMENT '身份证',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `ip` varchar(64) NOT NULL COMMENT '注册IP',
  `reg_time` int(32) NOT NULL COMMENT '注册时间',
  `login_ip` varchar(64) NOT NULL COMMENT '本次登录IP',
  `login_time` int(10) NOT NULL COMMENT '登录时间',
  `vip_level` int(10) NOT NULL COMMENT 'vip等级',
  `vip_end_time` int(10) NOT NULL COMMENT 'vip到期时间',
  `rmb` decimal(20,4) NOT NULL COMMENT '人民币',
  `forzen_rmb` decimal(20,4) NOT NULL COMMENT 'forzen_rmb',
  `head` varchar(64) NOT NULL COMMENT 'head',
  `profile` text NOT NULL COMMENT '个人简介',
  `province` int(10) NOT NULL COMMENT '省市',
  `city` int(10) NOT NULL COMMENT '城市',
  `job` varchar(64) NOT NULL COMMENT '职位/头衔',
  `is_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0是正常 1是锁定',
  `status` tinyint(4) NOT NULL COMMENT '0=有效未填写个人信息1=有效并且填写完个人信息2=无效',
  `dividend_num` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `threepwd` varchar(64) DEFAULT '',
  PRIMARY KEY (`member_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member
-- ----------------------------
INSERT INTO `yang_member` VALUES ('78', '', '353763004@qq.com', 'be057b635eb1a49ae9a1dd346227d748', '', '1aaeabb7187be5c1d21cfff575c8fb86', 'xin888', '邱佳欣', '1', '421222199404280045', '13986617911', '121.61.56.121', '1462373515', '222.240.194.108', '1462997299', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('80', '', '779189797@qq.com', '0c3c981dd1d8316f46213877d2f64cd4', '', '6c70572852f50fa3114fd77549ee3a00', 'caihao966800', '蔡浩', '1', '360429199602100015', '18720209668', '171.34.246.181', '1462444186', '117.27.42.197', '1462809339', '0', '0', '0.0000', '0.0000', '/Public/Home/images/ulogodefault.jpg', '', '17', '233', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('81', '', '1156276238@qq.com', '08a5847546bd5933abad99b11d1896de', '78', '840afda49c53beb571d886db30996f33', '泽尔页、影', '黄栋', '1', '452122199604240938', '18376983437', '180.140.137.117', '1462444343', '180.136.130.59', '1462969324', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('83', '', '846969750@qq.com', '6a31d8317e0d2e76f39dfb813029328b', '888888', '2c3cec7e63da90f63dbad6c7b2c8ca9e', '我是强哥。', '王军', '1', '341122198906300632', '15996472029', '180.109.154.25', '1462462485', '114.221.232.76', '1463058193', '0', '0', '100.4600', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('87', '', '1009168155@qq.com', 'a2c4820f2ce55a05f5e9b308a3271e7c', '', 'a79df47c17422c2f887c9e335393fbc8', '搜路', '赵志谋', '1', '42220119851114211X', '15072163019', '171.40.145.2', '1462539284', '171.40.145.2', '1463096866', '0', '0', '80000.3516', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('88', '', '464722937@qq.com', 'be462c8e3a32095a010f64d9d7eedb27', '', '6844ff27c19754d608b1f00f5804d63a', '一路发', '张东海', '1', '450721199110155332', '18677713417', '171.105.176.181', '1462539691', '171.105.176.181', '1462762006', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('89', '', '420626398@qq.com', '0515d3f4d0e5b91b98d85cb90edaae1e', '', '3133a9bb9fc56e125d6599b0c02122a4', '黑夜', '丘祖彬', '1', '450922199306083497', '13677759290', '59.63.28.78', '1462539811', '59.63.28.78', '1462807382', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('90', '', '350795056@qq.com', '2c34e7d06f3918b4c3e4fcca37b9e842', '83', '16bb3162356f76947de37dd21feb59cd', '美兮', '冯利莉', '1', '14030219840626082X', '18635343448', '183.202.226.158', '1462542238', '183.203.196.114', '1462948927', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('93', '', '1113933201@qq.com', '26e3ea765faa9e57b0e3c019ad9d1af6', '123', 'bf9f8d1f05dc08cc3b02e8fcf2c2ba57', '看看', '萧玲', '1', '3508241993102130010', '15676188074', '106.6.189.165', '1462593367', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('94', '', '137606080@qq.com', '563364f14ec6e1352fa15c37fc39aee2', '', '1288374765e64371b42ecddf16a790d4', '小韭菜', '李建东', '1', '352225198103160039', '18959313060', '27.156.253.240', '1462616428', '27.156.253.240', '1462706369', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('95', '', '290977632@qq.com', '9cbf8a4dcb8e30682b927f352d6559a0', '', 'b8cb1547ee0002e08c59ac7df1b4e942', '蜗牛', '王亮', '1', '430422198908139659', '13875587477', '110.52.64.173', '1462701620', '110.52.64.173', '1462769392', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('96', '', '715618515@qq.com', 'b803686b1345fcdc944aa26175060dd1', '', 'da4603275bf8a34660f6ef8a4b9fd4ea', '', '', '1', '', '', '182.86.19.248', '1462701680', '106.226.0.8', '1463061283', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('97', '', '1039213138@qq.com', 'cc468c17e8a832d2578ecf26cbb522cb', '', '44d4e8baa9bbf51833975c187b95b3ec', 'hkn0619', '胡康宁', '1', '500235199406197238', '13083997857', '124.160.213.183', '1462701683', '115.200.123.98', '1462712743', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('98', '', '9505525@qq.com', '756f566af74f123732bf2d4b099d9e2e', '', '7afca3d87754f7d3a0214dbfa8922877', '命运', '郭振隆', '1', '411222199403095014', '15839833187', '113.138.56.249', '1462701734', '117.22.237.232', '1462773071', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('99', '', '1939113561@qq.com', '9b4444ef2a7f288b257e24a57a570942', '', '69bd7aa593c88604b4692841f5f1aa76', 'za1983363689', '张昂', '1', '41272419950226430', '15738571332', '106.46.47.234', '1462701780', '106.46.47.234', '1462706682', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('100', '', '347156160@qq.com', '3b4bfb88e4097d28c0a32db0116007aa', '', 'ce066f5995eeba853467f1a082d351b9', 'MAER', '廖金湖', '1', '440582199107225838', '13413420161', '61.146.243.167', '1462701795', '61.146.243.167', '1462760169', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('101', '', 'henry412@foxmail.com', '2049510a0e02f3b393efef0b12419bb3', '', 'd9ab8077a90ae4ecafdfbaaa0be17e56', 'xiaoxiao', '封利', '1', '430922199003136850', '13117317031', '175.11.130.37', '1462701865', '175.8.6.229', '1462947944', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('102', '', 'sushayang@126.com', '3fbbd3b8323b3a63e10607446fab2f9a', '', 'd157bef0df4121a85bf704652ff8fdd1', '小杨a', '苏杨', '1', '513030198807197914', '18026682998', '119.124.33.213', '1462701901', '119.124.95.193', '1462940239', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('103', '', '11578704@qq.com', '2b8b387569c1600e8cb37f4ef8245f6f', '', '145c9a1de7f3731956fdbb6e49545dae', '', '', '1', '', '', '220.202.152.95', '1462701903', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('104', '', '959830654@qq.com', '5636c9a646fdb1595d84f348c3340286', '', 'c036d0a7a18c7d494326b1f7a8362968', '大咖马', '马立荣', '1', '130927199306201817', '15613715508', '101.27.243.184', '1462701905', '101.27.242.232', '1463099525', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('105', '', '949316526@qq.com', 'ef2694fef7fd7c0a00018510101e14f0', '', 'd69f8932353070c06149d03f2aa311e5', '', '', '1', '', '', '103.44.204.86', '1462701913', '103.44.204.86', '1463108372', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('106', '', '632593787@qq.com', 'd69168dc747c7ba6cdb7270d95da08f6', '', 'c295594b8680ea624f49e9956b8721ce', '骨头', '于耀进', '1', '412824195805292617', '15249060779', '124.115.231.252', '1462702088', '125.76.215.83', '1462869937', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('107', '', '771441214@qq.com', '237788f7eb1a9110ca7a0d797debc368', '', '6beada6cc750e005d4b31820a36e24d7', '李子', '李岩岩', '1', '411421198905207784', '15237053540', '183.245.147.44', '1462702094', '183.245.147.44', '1462703444', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('108', '', '1441215379@qq.com', 'e29210e8f8750462efc35b6acc11347f', '', '956559e9044c8aed1c6d780b8c5eb8db', '帅比', '胡伟', '1', '371102199609206011', '13455041817', '119.184.90.235', '1462702185', '39.72.76.152', '1462759883', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('109', '', '864017053@qq.com', '6035d7a170ff97458068c79e64310a38', '105', 'e6f192fa223415e7f0c638f9b3cda35e', 'sxc0215', '孙喜成', '1', '320925199403155413', '15572118812', '27.26.171.204', '1462702226', '113.57.244.17', '1463099070', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('110', '', '946762106@qq.com', '1b1b3714fde324e2a4f75be65a6aa220', '', 'f63f292555a3802139193b93b6202536', '小乔', '乔继华', '1', '341222198308028996', '15357871968', '223.67.59.30', '1462702250', '183.162.39.74', '1463095381', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('111', '', '1960957781@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'e03240621e089bf1df7e47d7275af6a5', '奋起', '朱世根', '1', '430181199611206257', '15807302114', '42.48.194.167', '1462702274', '111.22.179.73', '1462873055', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('112', '', '1273722325@qq.com', '53cd5b3375a7f4099232912fd605bb22', '105', 'cc512a518b1fc11d78288bfd3b97f66f', 'haogou1212', '夏昌芝', '1', '372928198705081216', '13082699301', '39.71.231.154', '1462702312', '39.71.231.154', '1462765745', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('113', '', '527580286@qq.com', 'b23a9a61333f2487deb4f1b9595e01fc', '', '91aad7c73294e28aeeb336b07f448097', '凯西', '杨兴娟', '1', '513022198509221429', '13163780249', '121.15.53.145', '1462702314', '58.60.160.111', '1462937188', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('114', '', '460041059@qq.com', '2debcc87807de13e985e50dbe859fef2', '', 'a61f1cdb1b6b18c3c701a3135f9acbf8', '云少', '卫少云', '1', '140430198904162414', '13753508317', '118.75.160.26', '1462702344', '118.75.53.232', '1463108692', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('115', '', '119917322@qq.com', '50c7ccb9d165d82523242f93cc737178', '', '94e2626da24389c45d0019b29a82e959', '', '', '1', '', '', '14.144.251.133', '1462702381', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('116', '', '516914833@qq.com', '2ade445b7b11b6548669e832663279d6', '', 'efa2406942b58a8e111240c4728c2f62', '333', '贺国龙', '1', '510182199001106837', '13308175822', '171.210.11.70', '1462702485', '118.113.250.48', '1462949067', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('117', '', '1067874362@qq.com', '56c11536d261810f612967cda1e4e6b8', '', '01f76f16a917d432180cd00d6065cfaa', '天涯。', '张月材', '1', '320831199304192018', '15861727485', '49.87.247.120', '1462702509', '223.104.19.56', '1463076540', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('118', '', 'jinghou109@qq.com', '46f94c8de14fb36680850768ff1b7f2a', '', '200820e3227815ed1756a6b531e7e0d2', '漫游', '陈久', '1', '340621198312052811', '13093558729', '112.26.142.176', '1462702635', '112.26.142.176', '1462702712', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('119', '', '992214871@qq.com', 'c635d461b66060995bf96d6d2c610c81', '105', 'b7bb9639c8f6b705f53515d247b6d507', '小怪兽', '汪健', '1', '429001199202034529', '13545194485', '171.42.201.7', '1462702695', '171.42.201.7', '1462969416', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('120', '', '576148797@qq.com', '8a78b9c9b0c72d510bad18c1aaeae30b', '117', '4cdc1db286ce61d91d49255f01b44dca', '岁月', '杜少龙', '1', '410222199001263037', '18277331065', '183.204.53.120', '1462702735', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('121', '', '591596522@qq.com', '4b23df5f843e0a2747b515b10d5029c4', '', '1e03a3b0c49dd49c483859fb872919f2', '666', '钟志鹏', '1', '441621199401041259', '13750237820', '58.255.17.169', '1462702749', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('122', '', '1329481748@qq.com', '60e3676ca015e7914d00f4cd6a07a0e9', '', '850880e045dfe6ab98f80bd7f995a613', '杰哥', '乔豪杰', '1', '412723199504209038', '18336173626', '123.15.46.50', '1462702792', '123.15.46.50', '1462947586', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('123', '', '1625644646@qq.com', 'dcaec5002d19266d5378f7bab7a30b63', '83', 'd80fd67ca97bc9fb257697d0364a88b3', 'cxf', '陈小凤', '1', '450603199707071221', '13657702019', '180.141.30.186', '1462702831', '180.138.71.137', '1462769821', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('124', '', '986300964@qq.com', 'cd1e14aec74a8774996e515edf85b1d0', '', '2b120a5cd590a688abe246481e6ac6f6', '', '', '1', '', '', '1.68.21.70', '1462702842', '171.120.97.209', '1462887503', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('125', '', '1129319674@qq.com', '64316c866e26310a49a98579ffcdd95f', '', 'f3c1f0f2f7cb90902861b2f7ca416431', 'liu085420', '刘荣荣', '1', '370481198809195624', '18766663036', '27.215.86.29', '1462702847', '27.215.86.29', '1462704123', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('126', '', 'yang710224003@qq.com', '7c35f73fda1af2fd9970a0f101575fe5', '83', 'af93f3d110f5905378d80875f2ebea81', 'yang710224003', '杨杰方', '1', '513721199408203690', '15520225710', '171.221.114.109', '1462702901', '125.69.14.152', '1462710123', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('127', '', 'zzkai01@163.com', 'e7a1878fb11c0373dc646ae5ae18e43b', '', 'f133bce440dfdfd73f9f604d67a3f94d', 'zzkai', '钟志凯', '1', '441621199503061218', '13750260317', '183.6.46.6', '1462703003', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('128', '', '564381772@qq.com', '04d1492e7934a7df4703e54074b18453', '', '78ceb598f90c726fffb54735ba5401a7', '龙硕', '周文龙', '1', '371424198707211519', '13573431679', '117.136.94.186', '1462703030', '223.96.148.81', '1462767497', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('129', '', '2410860980@qq.com', '5aa83310d9dcf6ee6ac94ac69e5fe417', '', 'c86223dea2cdadd3412ed9913b06954b', '', '', '1', '', '', '219.159.130.45', '1462703068', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('130', '', '412237670@qq.com', '6ad59b40b20ca77304babe139a75479f', '', '5b3a9de3bb21920060b8a79a4c3da6e2', '努力向钱', '季强', '1', '411481199101015411', '18768156212', '111.0.173.132', '1462703080', '39.181.49.220', '1463031301', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('131', '', '106336742@qq.com', 'dc283ed8c574ba067c2bd39e5eb6ca81', '', 'e47feaef17db5be5975e91c0279418ec', '李华', '李永华', '1', '440603198111053819', '13118809966', '14.152.68.119', '1462703332', '58.252.67.94', '1462706633', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('132', '', '958123483@qq.com', 'a1d123a63936abbee87823e2f1affa9b', '', '1095cbff71a574b198d65b647fc766d0', '大户', '朱明鑫', '1', '411628199403110018', '18695957631', '120.194.57.176', '1462703346', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('133', '', '757387777@qq.com', 'e7eedc82688de4130f3a88773dabac9c', '83', '48524812c2309a2eacfb431b50a2376c', '曙光', '杨小虎', '1', '432522199209300038', '13368184176', '183.228.26.49', '1462703368', '183.228.225.51', '1463060203', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('134', '', 'zhangjunjuu@126.com', 'c4c18ac3ed91e470e84b00164b94304b', '', '6b5329b65b41ebf97bd866f959a3796d', '', '', '1', '', '', '124.163.206.73', '1462703374', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('135', '', '717088507@qq.com', '798bdb7cc5a335313af7c3c71b906604', '', '09b0064d0ab68aec27f6cd06962e6fc9', 'sslyg33333', '李立家', '1', '230208197304220413', '13923723457', '121.15.115.222', '1462703424', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('136', '', '278521000@qq.com', '8f907e32f52acb6010b96e98acd52000', '83', 'a6b37e76b2631e6866dc38c8030753af', 'jackyli', '李华臣', '1', '370202197907065419', '15610098068', '112.9.242.108', '1462703462', '112.9.242.117', '1463060212', '0', '0', '0.0000', '0.0000', '/Public/Home/images/ulogodefault.jpg', '丘特币', '22', '284', '职员', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('137', '', '13713014413@163.com', '28efe3b50c9698f347919f07016a440d', '78', '85da6858de36293419a80862243ba9ec', '紫日', '徐唐明', '1', '422326198901104314', '13713014413', '58.216.99.120', '1462703471', '58.216.99.120', '1462715553', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('138', '', '425891343@qq.com', '85f085ef8cf15460bf999ffab876d68e', '', '4166e41a3a44a7f40309d549bba8d608', '小潮', '轩宗潮', '1', '130229199105067417', '15131589454', '101.25.177.229', '1462703562', '110.243.199.233', '1462883921', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('139', '', '1433635764@qq.com', '5b3a8f984dfa56eb9a4c4314f8487a06', '', '77b579ea981bcc058c2d6f507c23db27', '矫情', '周小琳', '1', '371081199504036423', '13022733367', '60.212.34.235', '1462703664', '218.59.110.71', '1462758675', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('140', '', '2364352401@qq.com', 'e52c0356e5b59a3aea7033656fbbc12d', '78', 'a9641658b3823dc4465c3af42e6132ea', '土豆欧巴', '李本爽', '1', '371082199610236732', '15588370268', '43.245.216.194', '1462703711', '43.245.216.194', '1463041007', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('141', '', '105117349@qq.com', 'bc87143478d868d364d0b9268d156145', '', 'c6ead68afa606af08d14bb02a050c434', '105117349＠qq.com', '付云艳', '1', '211381198106213225', '15898152023', '58.244.191.187', '1462703780', '113.234.206.48', '1462793216', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('142', '', '357199409@qq.com', '909af08dc166e260611e8b650cfaee4e', '', 'ea2494225bade785d0e1dbdf9d4d65e0', 'ejdjj', '陈俊培', '1', '440583196508052711', '13417046289', '14.17.37.69', '1462703872', '14.17.37.43', '1462714261', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('143', '', '123021666@qq.com', 'feb94bf7fbf2e33c7654930fce38cdc9', '113', 'c31f56a2df41affc023e2147f4f0cb6a', '', '', '1', '', '', '218.18.225.219', '1462703908', '219.133.78.250', '1462717611', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('144', '', '181749984@qq.com', '49ed75be465ab580c6b9dbbe17cf057a', '', '841bfcc69c0239706b6ea5e0a1b70eba', '会飞的猫', '吴小飞', '1', '360723198609281211', '13423251711', '112.90.237.82', '1462703915', '59.37.23.176', '1463094810', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('145', '', '237837504@qq.com', '8e8e8b678291eac622642a4e675cb483', '119', '8aaa8a956d1bfc9f6ed628a9b0e1af38', '', '', '1', '', '', '60.174.249.113', '1462703941', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('146', '', '362261174@qq.com', 'a1ca4b4bb82bb5b5e861e48ac5bf3aaa', '', '926df4ef3fc9bf16de0a1c68529902b6', '七彩', '曾玲美', '1', '430723198702165029', '15920306011', '122.228.113.161', '1462703995', '122.228.113.161', '1462795365', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('147', '', '383222390@qq.com', '151fa82b75f7d1f9745f5a253eb39308', '', '13a44e4efdf798a7303cb676f5468923', '顾、先森', '顾坤', '1', '420381199204060616', '15921645891', '180.164.142.34', '1462704013', '101.81.193.126', '1462762257', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('148', '', '840130133@qq.com', 'eabd8ce9404507aa8c22714d3f5eada9', '', 'a38f890d3742286ea7f630bd48a7b8ed', '收心', '吴涛', '1', '360723199608232017', '13697900003', '115.153.56.42', '1462704032', '115.153.57.185', '1462758625', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('149', '', '352467929@163.com', '5a7a7bf877153ff5cc767520307bad12', '1', '65a511121505fe778744dfa8b88eee60', '', '', '1', '', '', '183.162.34.17', '1462704157', '114.99.75.153', '1462715278', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('150', '', '372984796@qq.com', 'db6ee98b476fc7fe45d29c6ee7b6e2d1', '', '773e37dc4f0fbbfc0cc1d6a854815e74', '123', '田向东', '1', '342224199305050555', '18305155391', '223.104.33.159', '1462704167', '117.136.100.58', '1462852164', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('151', '', '15671562279@163.com', '1de7508fa4261e4ef6d37e49f4a336ca', '', '8c244a258565e9e476ce3baffaa07b58', '帥呆的猪蹄', '苏鹏飞', '1', '411221199102231012', '15510098717', '117.114.129.162', '1462704345', '124.166.229.187', '1462715645', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('152', '', 'q456321@126.com', '76f725cc4914e5fecfdde0dffd220f91', '', '1adc3eb383a272a0345d433b4668775d', '', '', '1', '', '', '110.73.205.245', '1462704631', '110.73.205.245', '1462709749', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('153', '', '798533840@qq.com', '176542935bf5f779708199f7744b930a', '119', 'e95a0135ffe2ef09919b118470706893', 'Anglo2046', '陈啟恩', '1', '450404198805250611', '18319599670', '117.136.40.58', '1462704650', '112.91.119.151', '1462943128', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('154', '', '836529477@qq.com', '8bbf3ef7c90021e9ab94f140b944eee7', '83', 'd857c353fecf795f298320b7a9ebefb5', '冷殇', '吴加怀', '1', '352229199312291019', '13600813624', '117.136.75.146', '1462704762', '117.136.75.165', '1462870367', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('155', '', '2297570188@qq.com', '182cb5f0131919abcf79f4ea7186e1c7', '', 'aeea647572a32c440a450a97797db5f1', '', '', '1', '', '', '14.16.240.104', '1462705388', '125.91.244.114', '1462715669', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('156', '', '375114009@qq.com', '43f830b0903b09563e10bb1633451e05', '83', '009b927906b97d1507451f45d795d55e', '18166043728', '徐志峰', '1', '429006199312153619', '18166043728', '59.52.193.210', '1462705437', '220.175.105.23', '1463101998', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('157', '', '523136752@qq.com', '8e59451cbbcd0ec00f1500acb88a716b', '', 'c1daebb9461b1ae1ebecd3041d160f4a', 'jiubo20', '张新英', '1', '330824198203090921', '15157066676', '39.173.212.91', '1462705490', '39.173.212.91', '1462712256', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('158', '', '1342094032@qq.com', '94cb3ddac2c334ce728dfd056823bb6a', '119', '5c3ed64cc45161ec2f9e3dba8320f7c3', 'chelleen', '梁秋林', '1', '513901199308137046', '18227587904', '183.222.165.65', '1462705779', '183.222.165.22', '1462877105', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('159', '', '1102153766@qq.com', '48d42ba0ae0ce6ad3197b23279d7ed56', '0000', '86577e037065e5e49c931dab97691c8a', '橘子', '刘哼', '1', '130432199501051512', '18632003718', '27.188.164.248', '1462706135', '222.223.125.7', '1463014241', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('160', '', '15079792233@163.com', 'c5c8825cd0c45156e1b27684cdf31d93', '', 'd2902cc822806982a2085a1a4f152656', '晨逸', '钟玉军', '1', '440223198703200038', '15079792233', '106.226.26.250', '1462706263', '106.226.26.250', '1462879432', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('161', '', '759588355@qq.com', '309d7cbcb2d4d695e9ae2bacc1d00c9b', '100', '9e44f364769f9d4bcab302fa03165928', '18883154196', '肖利波', '1', '500233199402137251', '18883154196', '106.89.89.100', '1462706578', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('162', '', '176064526@qq.com', 'c85b8f52732893937276c123b8848837', '105', '8e28228d6c24928b19adf26c3499bcc4', '潘毛毛妈妈', '潘慧芬', '1', '330122198507272221', '15967196046', '112.10.213.9', '1462706632', '211.140.21.14', '1463102971', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('163', '', '541395616@qq.com', '9cabfa8e1157ba81f3492b1daedaefaf', '149', 'e95033e861257c6ccd4e648679ec8891', '梦梦哥', '刘梦', '1', '622101199310020817', '18655439061', '60.175.65.20', '1462706652', '114.101.130.69', '1462797537', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('164', '', '604647845@qq.com', '20400e54abe2992bacdc141d2757f8a1', '', '1818496d7a9a42c594ee1a8480a2d39a', '', '', '1', '', '', '121.18.234.161', '1462706861', '120.2.160.38', '1462765413', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('165', '', '781792404@qq.com', '90859d0c49d6103447216b09cd42fc4c', '', 'e72336c3816f3c876e1833b8c0face02', 'ciejjj', '程强', '1', '511322198603197714', '13794731177', '163.204.169.178', '1462707009', '163.204.169.213', '1462886052', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('166', '', '181828608@qq.com', '0294d403758212c173e1c951ef1f6997', '', '1bb6bae4d157d1d1c7f468b1dca3e910', '我就是我', '吴贤金', '1', '510722198006122053', '13550663570', '223.87.38.65', '1462707234', '139.205.11.253', '1462784446', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('167', '', '107298672@qq.com', '1e14a8905693f90e7ee84556ee6d2871', '105', 'c21f2c8f469f507ac0dd4f0afeeb41e9', '黄飞', '黄飞', '1', '330124198707220066', '13758287717', '39.187.152.119', '1462707258', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('168', '', '343064511@qq.com', 'bb455846d03e6b5c96dc7c8239f9aab1', '', '1eaf1c7182da192af219de00bb01cf82', '', '', '1', '', '', '112.243.224.200', '1462707896', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('169', '', '1362390513@qq.com', 'a15cbf583534a933debe94977fe77661', '83', 'fa430f28d4dfdadf51542add4a3160d2', '', '', '1', '', '', '60.223.127.74', '1462708067', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('170', '', '2824559420@qq.com', 'eac9618b1c8d3ce292a7ddc662eeb3c9', '', 'eff9377d7ae42ebc0f91d3e1b95ee2dc', '万俟', '王兆强', '1', '220422199411232810', '15943713663', '175.19.17.149', '1462708291', '175.19.17.149', '1462721963', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('171', '', '372951986@qq.com', '773057d107f983d66d93498672473682', '', '43b075e054ac235a00b0a9f74143c703', 'ministars', '黄雨浓', '1', '412521198807190518', '13137113137', '219.155.21.14', '1462708498', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('172', '', '1277497876@qq.com', '2ace819630c5c4bfff3e0b492149cf54', '', 'd87566e727b8ebba4e3ca2a39ff0ff70', '安静', '张少辉', '1', '411281198001181513', '13298280107', '171.12.141.203', '1462708672', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('173', '', '405235555@qq.com', '200820e3227815ed1756a6b531e7e0d2', '', '332c87033116f0f941ea026da7b9c364', '', '', '1', '', '', '61.162.87.79', '1462708729', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('174', '', 'blue6365@163.com', 'f8f556eef35140df9d2764952d4e7a45', '', '4619b6d3c0f4e46d7f9987b1c478c62c', '', '', '1', '', '', '183.208.97.145', '1462708749', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('175', '', '84588963@qq.com', 'f8f556eef35140df9d2764952d4e7a45', '', '4619b6d3c0f4e46d7f9987b1c478c62c', '', '', '1', '', '', '183.208.97.145', '1462708803', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('176', '', '13126182132@163.com', '2cccaadd2c65374361033ea6f7add7e1', '', 'e6e43cea96c9ca1ec213ac62eabbfb57', '呼啦呼啦瘦', '李高峰', '1', '130130198608091836', '18931125370', '222.223.228.247', '1462708903', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('177', '', '50067861@qq.com', '539041862000e7bcbd39ca188f3995d2', '', '5f4507361d328db90442e618a8a62c43', '宝哥', '刘锡保', '1', '510623198706052712', '13541713441', '139.205.1.192', '1462709391', '139.205.1.192', '1462885541', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('178', '', '2117676112@qq.com', '181c275d4a35b5031a7520615a685d7a', '', 'b208e34a0dd7460469f7b39eb66ee158', '绝版少爷', '方友灿', '1', '350124198407301394', '15060411507', '112.5.236.59', '1462709432', '112.5.236.59', '1462713493', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('179', '', '285724786@qq.com', '23a0ac2c604f754a724a520a41f21036', '', '96e79218965eb72c92a549dd5a330112', '285724786@qq.com', '周海波', '1', '362329198510080135', '18270193516', '218.66.45.175', '1462709813', '120.42.225.35', '1462867359', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('180', '', '764561441@qq.com', '8736e53a73087885b38f13a532421889', '83', '69b4879428a2ae84f3701bf1999b6fa6', '肺肺', '夏顶坤', '1', '431128199106214634', '17724328087', '157.122.148.152', '1462710495', '157.122.148.152', '1462851074', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('181', '', '912128224@qq.com', '75a55e764fcc272118bddaf730ba9e62', '', 'fd6651829b27050840f63a2368b76e8d', '', '', '1', '', '', '183.6.66.33', '1462711676', '183.6.66.33', '1462892600', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('182', '', '653378816@qq.com', '23975d9f46b2434cadb36eb0488c9150', '', 'c2fe0ec414bbe1162f2861ea83d547ba', '相濡以沫', '付长华', '1', '130532199202083034', '15561412172', '110.17.170.150', '1462712187', '110.17.170.127', '1462886635', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('183', '', '15271532393@163.com', '8e3eed1665e6c0360ab48442461e8282', '136', 'df80fa2b1af7ef159868f030088a5830', '高傲姿态丶', '张宇', '1', '42052119900503003X', '15271532393', '119.84.56.138', '1462712658', '117.136.30.84', '1462876416', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('184', '', 'z836662924@163.com', 'eb925b8b3e9ca7ee0656888da051e052', '', '3fd6083ec914187fb775df5103ffb95d', 'gdzt', '赵通', '1', '62010219960308531X', '17826832966', '39.183.40.231', '1462712706', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('185', '', '826788283@qq.com', 'fd1a0fcdb05b26fef42d97d9f692d1b2', '', 'fa85e72856855849437b0fd1084f11a4', '', '', '1', '', '', '223.167.0.142', '1462712739', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('186', '', '493037313@qq.com', 'f1f4932094d38d24ca0a8bb78abb1865', '', '77e7c1bba0734f2189798fe45a89d5f8', '小乖乖', '于琴', '1', '513022198609272100', '14781896769', '117.136.70.197', '1462712918', '183.222.255.97', '1462840478', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('187', '', '371620969@qq.com', 'fbe0f24183f69564fac4259fc8e11bd2', '', 'fdee19df57d1a413b8a0a4a294246f17', 'yanyan99', '许亚华', '1', '35052419870708862X', '15985991721', '27.152.126.71', '1462713040', '117.28.127.229', '1462792384', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('188', '', '1205103113@qq.com', '28e6d5547760c162ae6e87a173f2bcc3', '81', 'df1b1736a53b8e6e6503b6525db9a2bf', 'nina', '孙继娜', '1', '622822199302051365', '15580201870', '110.53.134.174', '1462713232', '110.52.124.20', '1462987397', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('189', '', 'lyalong@126.com', '58af1461dc9d778bf382088d81d57fed', '132', '0199d64329fea8e51e89d21e6e3b268a', '', '', '1', '', '', '120.194.57.176', '1462714181', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('190', '', '491457087@qq.com', 'c4639574ef36270637878e9ff9b18ce9', '', '650949b0ea4d476ab4c6096d81972ec3', '', '', '1', '', '', '117.136.24.4', '1462714693', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('191', '', '352467929@qq.com', '5a7a7bf877153ff5cc767520307bad12', '163', '65a511121505fe778744dfa8b88eee60', 'Wynn1992', '杨宗仁', '1', '513821199206263375', '18155416310', '114.99.75.153', '1462715332', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('192', '', '983662730@qq.com', 'f80e9178cd46af07822b438c0d8d8e31', '', 'd1e203581729acd54f115ab1da0f69fc', 'yan123', '杨妍', '1', '500113199104177529', '15683004942', '106.83.249.23', '1462715566', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('193', '', '1051757090@qq.com', 'dc483e80a7a0bd9ef71d8cf973673924', '137', '8df32286deed62bae5bf746672805c78', '', '', '1', '', '', '113.68.250.146', '1462715740', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('194', '', 'xfuxie@163.com', 'dd6566e1c2088e9d584e2fc331c9e5f0', '81', 'e86bbd5de6b55be0709df5d17d6f9560', '', '', '1', '', '', '221.233.198.159', '1462716149', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('195', '', 'woailuo1228@163.com', '95e615d2d6b9945d9452495ce2904093', '', '202d3b0f4558db44e760e8a2009bd12d', '', '', '1', '', '', '123.4.211.249', '1462716323', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('196', '', '276650946@qq.com', 'c31367fed1eb1a1f9c0f1f7231d70a1e', '119', '3e5014da1ebf30d8b36302e2f34a1b5c', '哈哈', '李建力', '1', '610327198805021535', '15330099678', '221.217.4.170', '1462716534', '221.217.4.170', '1462977118', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('197', '', '313997791@qq.com', 'c55f55d1da195f59cfa92d0016dce27f', '', 'ed6d0878310cf92662a5911e4c8c01cd', '313997791', '张士元', '1', '321084199411111519', '18051353126', '180.125.239.126', '1462716867', '180.123.95.89', '1462945279', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('198', '', '531897513@qq.com', 'c8bc9ec583bc66c8b72c741dfab069fe', '', '2ff16322aa8d496dc08d1adc84019e22', '刀刀', '李俊豪', '1', '510603199406136171', '18380449675', '222.18.127.66', '1462716884', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('199', '', '825488767@qq.com', '8a07ae088af98854ca47e5fab4ede9f0', '', 'c35bd83801063dcbe4b1ee12492c4dfb', 'huihui', '李海祥', '1', '37292219901028577X', '15163800393', '222.133.82.167', '1462717044', '222.133.82.167', '1462840409', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('200', '', '310345424@qq.com', '5dc253d99257ee5b8769810a9f7e5c7c', '8', '156d1f6e01e822be28895df5528377c0', 'eqeqw', '张达超', '1', '330326199604027130', '18501513682', '223.106.35.220', '1462717524', '112.0.140.93', '1463064554', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('201', '', '450297014@qq.com', 'a94a9e6635c3163c9653d7b2c3c3e591', '', 'd56fa19d170b0e5aa1ab6043abcca9b6', 'Vampire圣域', '杨旺', '1', '612328199409090814', '18362887100', '114.229.48.83', '1462720171', '114.221.131.98', '1463056410', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('202', '', '845940601@qq.com', 'ab4f6368127b811e254800f3b775cd68', '', '726975842d6b74479e036a88a7d8064a', '斐123', '余文斐', '1', '620421199112014117', '18894311285', '117.136.27.35', '1462722577', '61.178.69.67', '1462774559', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('203', '', '23999567@qq.com', '21e320c85302d4f280aacfc1d8ab0e1d', '', 'bf991d82dc35ae2025d502dec63cd633', '漠然', '王友良', '1', '430111198406162116', '15116488898', '58.20.20.140', '1462722647', '58.20.20.66', '1462955483', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('204', '', '549826865@qq.com', 'bbb250b5b31e00151a17dafd7f8231c2', '', 'b8341950257d97869018c5bb2f3262c4', '雪天', '罗少长', '1', '430521199010098014', '18682194905', '211.162.33.140', '1462723290', '211.162.33.135', '1463032292', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('205', '', '1510668219@qq.com', 'e40f01afbb1b9ae3dd6747ced5bca532', '136', '860c6d6d6c82a25147a6bb7312fbd3a7', '', '', '1', '', '', '112.96.161.131', '1462743484', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('206', '', '634073233@qq.com', '6cef08b1b970b5df5f94d0404cf936fa', '', '913e212ce654481971a4802dcb855762', '随心灬', '田纪山', '1', '371321198710044518', '15605390309', '60.213.26.114', '1462745704', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('207', '', '1758605@qq.com', '46f94c8de14fb36680850768ff1b7f2a', '', 'df4d92875850593985d78ee9bc1e180f', '', '', '1', '', '', '180.95.129.208', '1462748569', '180.95.129.208', '1462949395', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('208', '', '1392697678@qq.com', '91e996cb8e24aca2875c4c154609cded', '', '953773a68ef5dd33bebb5327cffd161b', '', '', '1', '', '', '61.158.152.9', '1462751161', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('209', '', '475359398@qq.com', 'aa9c06db00eed3a88f4b6ba17c12e37b', '', '801f587012234c3f84090b08b11e31f7', '小熊', '李聪聪', '1', '130123198703266020', '15103164815', '101.73.18.50', '1462751829', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('210', '', '514603496@qq.com', 'c17d20888e81f7ade09717eb4fff75bf', '123', '5513dd376bae47dd8ebe2cc457edd60a', '莽荒123', '李大武', '1', '460006198809152376', '15108969681', '202.100.206.197', '1462753684', '202.100.206.197', '1462852028', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('211', '', '572467447@qq.com', '842476b14ccad18c4ea4eb1561914f00', '117', '085177e50ef3bdf27a0c650597947987', '星星', '邢金英', '1', '412726198912251248', '18672222539', '116.210.220.188', '1462754392', '116.210.220.188', '1462887351', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('212', '', '287538087@qq.com', '69864ed83f2180b202f3af5d2c30485b', '', 'b149dd669232a29a14411ff84dec2567', 'fenger', '李亮', '1', '610111198110271050', '15291323161', '113.138.94.136', '1462757186', '113.138.85.219', '1462978233', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('213', '', '894705853@qq.com', '8ae45cbe2131ae704ca40b4ff460c3b6', '', '92b121a755e79a5c02505870752e5c2c', '亭妃', '卢生优', '1', '440222197309090386', '13692149713', '58.60.161.189', '1462757432', '58.60.161.189', '1462863208', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('214', '', '1321832007@qq.com', '5871ae65b78b19d563a8c1aa5192e959', '', '7f509a35207b8a437518d448d9d26076', '1321832007', '李绍宏', '1', '440781198510161001', '18575026818', '120.82.176.20', '1462758758', '14.117.116.14', '1462887412', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('215', '', '799973987@qq.com', 'b3e9f53b60ad0160383ee69547ddcc06', '', 'aa8d342a245f6a8d1b783ac5b82b6b40', '白雨', '李建春', '1', '510112198304121811', '15881076908', '182.150.154.235', '1462759297', '182.150.156.195', '1463041785', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('216', '', '390987415@qq.com', 'e4bd902ae0f2aca95b78c0f5555f1ffb', '', '937d4a1e51ca95a70fb7cc246f2cf7a6', '爱拼才会赢', '叶文城', '1', '350524198006077717', '18691866388', '59.57.54.239', '1462759620', '121.207.51.4', '1463097882', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('217', '', 'ew123123@qq.com', '98ccd43db98d1c378234d5c520126baa', '', '192d76925862992a02dbe4648efaf9b6', 'kk1888', '莫海欧', '1', '431129198404165414', '13267662721', '157.122.148.218', '1462760064', '112.96.188.78', '1462881807', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('218', '', '332029907@qq.com', '607523d9621094f45b2294102a111123', '', '1003511d3ea5f1a1b53a2e1d1cc7a7f9', '珊妹儿', '赵珊', '1', '43080219871120058x', '15974408841', '220.168.194.211', '1462760130', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('219', '', '281558237@qq.com', 'f704c51b68805b14b9eb223026d333ca', '105', '12b90b33cc425445a0af6e0bd979254f', '', '', '1', '', '', '117.44.136.81', '1462761480', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('220', '', '916476832@qq.com', '0e2451c4d406036a3cf94a1422b7b40e', '', '1a100d2c0dab19c4430e7d73762b3423', '老五', '李海', '1', '51010519810102177X', '15183888509', '125.68.93.198', '1462761618', '125.68.93.198', '1462930376', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('221', '', '420821490@qq.com', '6229b3654700383241aecbb60096cacd', '220', 'cd74ef56b1394461d370a7ff76f8cd4b', '', '', '1', '', '', '220.178.115.50', '1462761865', '220.178.115.50', '1462838347', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('222', '', '634072271@qq.com', '3cdf17c9bfe55686f99b6f313f5917d1', '1', '48b487cde0033740b668ea9b6c5ef1e3', '野草', '陈伟辉', '1', '350524199412165511', '15505927327', '123.103.8.108', '1462762134', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('223', '', '1726061521@qq.com', '5d0bb29e9d7e41c44996877e55066124', '', '5eab2e7689b60fce79ce28f428540b1c', 'kyh随心', '邝祎睆', '1', '360734199102024316', '13072188329', '210.22.149.78', '1462763563', '210.22.149.78', '1462767043', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('224', '', '2631038556@qq.com', 'af7a09e0c7d893507406aac54683d86e', '', '827d5193af32a629d36cf8e132bb3937', '赫连大人', '李钰洁', '1', '421024199306182101', '13165606150', '116.207.61.200', '1462763649', '', '0', '0', '0', '0.0000', '0.0000', '/Public/Home/images/ulogodefault.jpg', '', '13', '180', '普通职员', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('225', '', '470837921@qq.com', '9b4e252cd45e3f4b0884a1438c63d40c', '', 'db304c0c06222d9c79241e3dbf2e5093', 'mooXing', '杨林楠', '1', '412724198802082938', '18039679512', '115.60.59.240', '1462763758', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('226', '', '981167000@qq.com', '993c1537e0456de10945f2ecec6e6349', '', 'd97185e8e6bff27a5bc697a45aad4f02', 'lixiang2095', '李祥', '1', '320826199004262095', '15295521375', '112.25.185.130', '1462764096', '112.25.185.130', '1462960417', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('227', '', 'simonyzb@163.com', 'f1fca07722c81df4e731f33ff48404c8', '', '314fbeb8f70de0fbf9dce367bb3684fe', 'hsf', '黄淑芳', '1', '412822197701096925', '18823203661', '183.51.143.104', '1462764184', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('228', '', '49264377@qq.com', 'f1fca07722c81df4e731f33ff48404c8', '227', '314fbeb8f70de0fbf9dce367bb3684fe', 'simonyzb', '余志彬', '1', '510221197511152415', '18823200339', '183.51.143.104', '1462764358', '183.51.152.235', '1462929985', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('229', '', '534041953@qq.com', '69b89e0b8036818a2ee4636310549b30', '226', '76ec8d5cff46990370c399d510094437', '林木', '程二林', '1', '320826199009264030', '18516522143', '116.236.237.118', '1462765790', '116.236.237.118', '1462945625', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('230', '', '370470958@qq.com', 'f86a8b9d4c1e5d77eb881c8420f01170', '', 'c8c6956cad9bc439ea180afac68bf265', '', '', '1', '', '', '27.187.53.150', '1462766815', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('231', '', '181338384@qq.com', '27458a7b503aa6a005eddebefbe8b13c', '', 'b2b83ddfa22c375d4bdbaf1f2bd2eaf5', '黑哥哥', '胡建军', '1', '350623198708220039', '15959642333', '112.5.236.97', '1462767685', '112.5.236.97', '1462767790', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('232', '', '751438376@qq.com', '285424cfe060e73a77b2c1813b6b28db', '110', '7a47fede191e5fd68e23e19d05a21dea', '爱戴', '刘盛焰', '1', '360281199510175217', '18208945696', '150.255.21.236', '1462768339', '150.255.190.101', '1462853322', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('233', '', '1162446164@qq.com', '6f49e939ece2ef12774a606079d817af', '105', '1214ad3ed9a0b668a3d925c5f23cd211', '1162446164', '张雪苹', '1', '511022198110031226', '13558785840', '222.210.222.51', '1462768809', '117.172.25.85', '1463016733', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('234', '', '173606896@qq.com', 'a8a317a3bca04939169451aeebede7ff', '', '42d1fdc0560b4287e77ec5d5af5884e9', '就喜欢币币', '郑材', '1', '510132199001284015', '13628005660', '117.174.31.97', '1462769432', '117.174.31.97', '1462807450', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('235', '', '352246869@qq.com', 'd8f82ea5cb2b2c2d2b7705a70c3bd395', '', '8e52339e5ec6d1411a464fa069419f91', 'huige', '晏艳辉', '1', '362228199107273730', '13162608838', '180.173.126.225', '1462770566', '180.173.126.225', '1462800245', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('236', '', '1519393282@qq.com', '275922e6082369a25e6e3d3e3d21231a', '', 'b7a6d0347c7f8dc63c4cc98b32ba183c', '', '', '1', '', '', '112.25.185.151', '1462775616', '112.25.185.149', '1462926206', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('237', '', '327558737@qq.com', '0b2952b0d93576dd24b49dcb66a9c7d8', '', '483050aae61b71acb2fb8fc3a11f9b7f', '', '', '1', '', '', '60.169.23.10', '1462777837', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('238', '', '842814519@qq.com', '3df2f5b7e6beaae4b422b5cbc610926e', '', '839af0177cad9faa9c57930c1320140d', '大牛', '刘奇', '1', '320704199210181014', '13235802598', '112.25.185.147', '1462780513', '112.25.185.147', '1462784616', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('239', '', '1183772508@qq.com', '80ed80da553b5237b843c2c9179e9976', '', '3825f1498b4678847a885cf5431c2629', '好人有好报', '辛文龙', '1', '140702199211177096', '18234059221', '60.223.149.123', '1462782566', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('240', '', '460010554@qq.com', 'ef58c6a3b433baa3f800c49f4205c69e', '', '16f42d83a7b573ba2b3f21a7fe0e1ca3', '4600', '颜加贤', '1', '440882198712064712', '13450487829', '119.35.184.34', '1462785030', '119.35.184.34', '1462787754', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('241', '', '1253737811@qq.com', 'bd12927f22ea0486e30804f535c181b8', '', '378bb6811c8f553db798066b619c954c', 'Galhoney', '丁铭', '1', '320911199308183434', '18018022706', '218.94.136.165', '1462790649', '218.94.136.174', '1462937639', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('242', '', '1414153358@qq.com', '41a392fc1e50779c85f04fcead9f554f', '', 'a6cdab3e4debabf601964677479d5c96', '暖阳1991', '郑琳琳', '1', '220721199105030225', '13596972717', '106.2.236.12', '1462791785', '43.225.236.128', '1463060475', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('243', '', '944988837@qq.com', '9c5d31b66e0b48beb6084281bbefc793', '', '4df07a49132c8b812384d9ae93a0e47c', '天赐', '王涛', '1', '340604198512200210', '15056173099', '112.26.232.13', '1462793304', '223.104.33.144', '1463061428', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('244', '', '3054172931@qq.com', '05b74e00b54039ef7632225cddc6a22f', '', '455082c6b94603f673619110712d4bbc', ' 中国梦', '陈留安', '1', '410782198201224015', '17603731084', '182.125.169.78', '1462794742', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('245', '', '823951613@qq.com', 'a2e9d6ff505a3235e9ba1e06e76ab2af', '', 'ffbc1e18744a58d72f5f23922c0dde1a', '何问', '何文庆', '1', '452727198710043217', '14769260082', '60.160.225.201', '1462795767', '60.160.225.201', '1462940819', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('246', '', '462016171@qq.com', '9068415121c8c073661d8c8ce973528f', '110', '9847fccd0c9751b08a0981a6f2432763', '敏敏', '王晓敏', '1', '33068119880314706X', '15067526060', '112.14.222.209', '1462796881', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('247', '', '1205526782@qq.com', '452d0474902a946fc1cc32fd63c8101b', '', 'c51a3d8ed783d4e8490a1b6e0403b1f5', 'dancelove52', '祝雄鹰', '1', '330921199104303013', '13615853751', '183.152.65.28', '1462802090', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('248', '', 'rxch888@163.com', '806de9f5d59ff46c49d33f79c7f4846b', '', '39effcf369575e1068feef8c0462e589', '', '', '1', '', '', '112.0.177.189', '1462833353', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('249', '', '285163003@qq.com', '46f94c8de14fb36680850768ff1b7f2a', '', 'b50296a3e6a3811d906736702ae700ee', '', '', '1', '', '', '121.31.12.71', '1462843621', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('250', '', '442641034@qq.com', 'e2e56cb1a19083cab9ba08b44d2a5890', '117', 'cb5440d0790a8bc12556f8a0d30614c5', '竹林清风', '冯梅', '1', '320381197701170047', '15862293618', '183.206.123.73', '1462844774', '120.195.243.218', '1462953433', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('251', '', '573083033@qq.com', 'e2e56cb1a19083cab9ba08b44d2a5890', '', 'cb5440d0790a8bc12556f8a0d30614c5', '事在人为', '袁亚军', '1', '320381197703295249', '13775957229', '183.206.123.73', '1462845182', '117.87.178.220', '1462959474', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('252', '', '289203766@qq.com', '22972152f8366ad736989ed4a08c0eaa', '81', '8f825b5066fb2fc389c752f4af81ca7a', '暴涨', '杨帆', '1', '460002199204144162', '15298979748', '153.0.60.47', '1462848439', '14.152.69.10', '1462853606', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('253', '', '85949234@qq.com', '0281930594fc131c74ab9461dff24d96', '', 'b5efc5288ab3080ff2da69f7936b5f9c', 'wyz888', '王云召', '1', '140702199306187115', '15035646881', '223.104.14.9', '1462849753', '60.223.151.184', '1462881855', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('254', '', '562491681@qq.com', 'f6c94917a9d95e98033b8e58a079f07d', '83', '26b7bf6b2cf931883c35fb5547359c6d', 'hch2899', '叶美兰', '1', '452123198704161024', '15578163179', '14.29.112.164', '1462849969', '14.29.112.164', '1462850500', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('255', '', '2329243312@qq.com', '5cae7e43bd12d878444cbeee7c94d508', '', '395fab9762c761eef0f15b27f118b524', '9991sheng', '王保龙', '1', '341222199308097275', '15055511787', '117.14.165.182', '1462850915', '117.14.165.182', '1462854991', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('256', '', '273463217@qq.com', '85494fa0749f99512eb158cd4ab337c9', '', '505829bce38b5cf8edf5201f760950be', '晓凇', '张凇辅', '1', '211224198610115314', '18604107976', '113.231.72.216', '1462851568', '113.231.72.216', '1462893459', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('257', '', '617384853@qq.com', 'b83fdf45b5c8b7bff4151a07df53eb7d', '', 'c88a7f3cd7cb140ceb7358061efc4c92', '呦呦呦', '李佳顺', '1', '452428199801032518', '18278475202', '223.104.91.138', '1462852349', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('258', '', '785431580@qq.com', '45a3437be4db9667d2a729d16094c100', '', 'c43bd6ead1af2ccd0f4d5d4615b2eff5', '啪啪啪县令', '张文君', '1', '142303199607030118', '15035350784', '223.14.195.87', '1462852378', '223.14.195.87', '1462858108', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('259', '', '2879693064@qq.com', 'df9631e20b5aa4326d86b0f3a543eeb2', '', 'cbaccd0f1919f46ac729a2155470214c', '', '', '1', '', '', '118.251.150.119', '1462854343', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('260', '', '706990674@qq.com', 'b72db27a086f8ab0b5ac59528444fa0e', '', '57bf74497f9a116795c13f655daa3c6a', '依赖', '赵红平', '1', '421123198912195222', '13482360732', '183.193.125.50', '1462857193', '183.193.125.50', '1462862952', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('261', '', '529400265@qq.com', '7681088eb5ae36649c913d658f0299cd', '', 'e0a0deca8a2108d7b70f6e7bac595eaa', 'xj0801', '王梅华', '1', '411329198108012568', '13889466193', '222.161.201.118', '1462857911', '222.161.201.118', '1462859762', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('262', '', '408254936@qq.com', '18998aafe459f1de028eeb6600d9f0b9', '', 'd02bde61630c6a916788103866c712f0', '', '', '1', '', '', '113.89.152.60', '1462864323', '113.89.152.60', '1462934630', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('263', '', '254867138@qq.com', 'd0dcbf0d12a6b1e7fbfa2ce5848f3eff', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '', '222.209.45.107', '1462865687', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('264', '', '2781891977@qq.com', '909af08dc166e260611e8b650cfaee4e', '142', 'ea2494225bade785d0e1dbdf9d4d65e0', '时间', '陈俊培', '1', '440583196502042813', '13076453098', '116.26.149.174', '1462868251', '116.26.149.174', '1462870130', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('265', '', '15920585568@163.com', '744027dc3967c45cd5b29b3f86ee152c', '83', '439b2d92af5431294521c9a98644134a', '发哥', '王槐', '1', '441423198711104435', '15920585568', '119.130.171.98', '1462868288', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('266', '', '1783398332@qq.com', '9983aad3d8de5638ba24f0b11bb6e904', '', 'e4b562969298295f0f7ed38fff060bbe', '', '', '1', '', '', '171.35.82.191', '1462872311', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('267', '', '1837356452@qq.com', '75a2f337ec8cd7dd7a71d9728cd2b7f9', '', '21c7b54d6082094c6b77e663577335ec', '高富帅', '周培柱', '1', '441522199206118215', '15812659064', '125.91.244.115', '1462872898', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('268', '', '584475894@qq.com', '3f03a989798273e595936c8f61abf1da', '', 'f03f59447b503ad37293fe8b71f37553', '小刚', '胡仁刚', '1', '320283199111074211', '13812533239', '222.191.223.180', '1462876295', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('269', '', '583623270@qq.com', 'f07abd4bad829d7cbb4dc865fdbfd553', '', 'fcea920f7412b5da7be0cf42b8c93759', '沈潇', '沈潇', '1', '372925199711067723', '13283755031', '218.28.63.101', '1462877723', '218.28.63.101', '1463065082', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('270', '', '1065208809@qq.com', 'd84a39bf4e9cf6f1edb4a26f5c70eb66', '91', 'f0c6dfb318dea1d5c10604c88c8577bf', '', '', '1', '', '', '117.136.30.86', '1462878533', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('271', '', '610433076@qq.com', 'd1c6d15989f8b9154e543630e0bdc574', '87', '899fc10ca8725d13664cacd0b008ae19', '', '', '1', '', '', '183.193.121.142', '1462883188', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('272', '', '872986159@qq.com', '723b097a497e482db47881ad7a3e5161', '83', 'd2955467c112797c7d93c9a4a4ff6e3b', 'zxt1314', '赵红梅', '1', '370802197904039525', '13562430182', '39.85.214.93', '1462885712', '39.85.214.93', '1463106122', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('273', '', '491699443@qq.com', 'e0783f151b9d1822bae11bde7b0cea94', '', 'e55bda39d86477f7bee972679d3f03d8', '赵四', '张小露', '1', '130406199102150916', '18849028162', '124.239.176.3', '1462886997', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('274', '', '982097582@qq.com', '18d40f1db24d140a3598b8973bf475bb', '', 'adc573251be850ba926ff6e4b5470f16', '', '', '1', '', '', '219.147.0.6', '1462887656', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('275', '', 'a8509703@126.com', 'c8db0979bd866d9bb822ce3ae7c7da33', '', 'e10adc3949ba59abbe56e057f20f883e', 'bbq人', '陈文钊', '1', '440883199001090333', '13535324287', '219.132.182.81', '1462887764', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('276', '', '741962492@qq.com', '4223042905265358e05125a7cf9716d3', '', 'a4a3e3662bd0008d086b982768c4e5b9', '', '', '1', '', '', '222.138.19.217', '1462887797', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('277', '', '58803233@qq.com', 'dc483e80a7a0bd9ef71d8cf973673924', '', '5690dddfa28ae085d23518a035707282', '肖小', '肖渊广', '1', '330324199602130393', '15757332981', '115.228.26.215', '1462889164', '115.228.26.215', '1462964497', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('278', '', '13822244806@163.com', '20ba8b0443022f550a46b60ea419de98', '', '491ab63077648c9519315611f414ad0f', 'welcame', '庄楚宣', '1', '440582198906122654', '13138559340', '183.7.212.13', '1462889949', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('279', '', '1363008038@qq.com', '3afba21e781ac8eda4e5788f88e8e8ff', '83', '4126df2e36841b58879202c9388dea4f', 'SaturnWang', '王超', '1', '429006198612105139', '15671179458', '171.112.240.11', '1462890240', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('280', '', '364726935@qq.com', 'e5f6f4b58bf40ac865bf75c53441db31', '', 'e0575c8023353091331c4a08870f2fbc', '', '', '1', '', '', '124.230.207.31', '1462893816', '124.230.207.31', '1463070179', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('281', '', '23864559@qq.com', '6cf690197104b662696bcac9f60c05c5', '88', '60a8d70dad93cfc93fc7c94e47a30e69', '可乐', '杨洁', '1', '450303198101190524', '18078209191', '122.228.209.117', '1462897113', '122.228.209.117', '1462897826', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('282', '', '1801206569@qq.com', '9fc24e12e23349e0158c01b35826bbca', '', 'dc120849873f4208df8f59839ec04405', '止息', '李义辉', '1', '431022199808015492', '15575759939', '223.152.158.102', '1462917191', '222.246.193.28', '1462965437', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('283', '', '623212083@qq.com', '64a482a7297e61b32f41352ec43ac35a', '', 'b9013464547c54adb25df755922c0b54', '', '', '1', '', '', '223.150.190.213', '1462924640', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('284', '', '603621600@qq.com', '8177169109b272b61809b0e037cc25a1', '', 'a9b5e864288a3c28688252d096e81f11', 'asd碧海蓝天', '夏立海', '1', '371581198903220458', '15206522585', '117.136.37.238', '1462926936', '117.136.94.170', '1462936047', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('285', '', '329425982@qq.com', 'c7f56c30da2de0bd144eadeaad24b6ef', '', 'a178fa3725cdd8bc96ac4a903437ae7d', '', '', '1', '', '', '117.136.94.84', '1462928559', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('286', '', '329725403@qq.com', '5da802aad60e1ec190d1af4c0f23d044', '', 'fad601e3de8244608203d03c10fb8eab', '郑凤娇', '郑凤娇', '1', '420881198808081023', '18271675306', '125.39.181.151', '1462930872', '125.39.181.151', '1462968388', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('287', '', '2304789426@qq.com', 'f87ac9c543fe7bf64428a19a16f73148', '81', '8e3497269ea22c74e21c796df3168660', 'king', '林燕明', '1', '440883199308105157', '13423584694', '218.15.22.132', '1462934054', '218.15.22.132', '1462951593', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('288', '', '82551524@qq.com', 'a0a475cf454cf9a06979034098167b9e', '', '661b616c3896856c312c56ad7c02492f', '迷茫', '郑佳雄', '1', '131002199611293011', '15532629962', '121.23.193.121', '1462934140', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('289', '', '2197271165@qq.com', 'a0a475cf454cf9a06979034098167b9e', '288', '661b616c3896856c312c56ad7c02492f', '', '', '1', '', '', '121.23.193.121', '1462934446', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('290', '', 'tsyl101@163.com', 'e0756903164d35a8a5a731b9bfecae70', '', 'b97f5ccb0a23806efd43b40e59dbc265', '小谁', '尹磊', '1', '130203198311190012', '18132159152', '27.190.99.96', '1462935326', '27.190.99.96', '1462937865', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('291', '', '374851766@qq.com', '330f32a301a84964dba1f962749557ed', '', '3267d5d17d45e8d8398c351a0af64228', '', '', '1', '', '', '124.166.240.142', '1462935362', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('292', '', '57996310@qq.com', '714c3cb665363062d7039c9824e76140', '83', 'c690c8995ab8dccbc340098ca3a3c4fe', '', '', '1', '', '', '171.83.19.93', '1462935842', '59.172.181.168', '1462980259', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('293', '', '85888647@qq.com', '21445416a7aa30913deb8f05bc5d3b1c', '', 'e2f4d73ce9b37e5a3ca697fa2d16571a', '石头阿卡姆', '栾航', '1', '220104198512032611', '13029133210', '113.213.86.193', '1462936021', '113.213.86.193', '1462977888', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('294', '', '1242248372@qq.com', 'c617c2c909dcb1169919669725cdd4fd', '', 'b92eb33e329aeb548aff009480445b71', '同兴', '林玮文', '1', '350824199002275477', '18250157248', '211.162.33.85', '1462936452', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('295', '', '275374371@qq.com', 'af614cf555d4377caba7f06bd5485347', '', '07786c4da88b46a4fe94d9606e6fbc0f', '阿森', '邵鹏', '1', '370682198302131936', '15315458569', '223.79.21.34', '1462936803', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('296', '', '1438616755@qq.com', 'c84a0667521528339bd2d8879be5047d', '211', '76fc39288c27ac6f160f9d4d09fd01cc', '小红花', '陈庚', '1', '460200197705200271', '13976186336', '112.66.14.25', '1462938646', '112.66.9.64', '1463074918', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('297', '', 'yu_haha@hotmail.com', '24038ef042123eaceca81c607774621f', '83', '74389ec317b0b66e49b0e1e088c8b011', '么么', '周钰钊', '1', '360429198511082718', '18668057638', '119.129.103.136', '1462939276', '119.129.103.136', '1462949593', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('298', '', 'yyzifly2016@163.com', '5db61a66e3c829cfe63eeaeb9d9656f9', '', '1a100d2c0dab19c4430e7d73762b3423', '', '', '1', '', '', '111.37.29.188', '1462939898', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('299', '', '695466435@qq.com', 'c5692c2143a50a4a77ee96b0cd3ec501', '', '5b0ee985afc130916cbfc1af84b517b5', '', '', '1', '', '', '116.17.8.86', '1462940972', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('300', '', '54144407@qq.com', 'f5d2feb2530c4006081bf0b2af3f4cec', '297', 'aad512f51811404baf852d1f7a4a5dcf', '羽毛的晴天', '胡云丽', '1', '441424198510054925', '18718955260', '116.22.165.169', '1462941731', '116.22.165.169', '1462949633', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('301', '', '993895793@qq.com', 'd5960169c232d3fff97b34db60db9308', '', 'd653b7888761c6221389c5f67e8ecedc', '', '', '1', '', '', '183.204.240.138', '1462941867', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('302', '', '787009577@qq.com', 'cac523a16c7b6e3077d0bae26b6bcecd', '', 'bbbdf08c63fa8dc3b60ca23f464dee3b', '川宝', '朱川莲', '1', '370281199112096726', '15054221465', '39.65.186.192', '1462942229', '39.65.186.192', '1462942281', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('303', '', '536564586@qq.com', '61cad0d987d6a3ba5a04886feb351b2c', '', 'bf8b1c1e6320d45d6661737301f23200', '念非雨', '苑朋波', '1', '130426199405254216', '15127034676', '106.119.104.210', '1462942688', '123.151.139.155', '1463060420', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('304', '', '710111270@qq.com', 'c5ea317c20a979dc05c024acbfb31f59', '87', '4197fc5771669ff82da526a9416eb00c', 'shuxinh', '崔恩伟', '1', '371102198405105038', '13561958214', '112.9.16.132', '1462944232', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('305', '', '496025108@qq.com', 'c57562653c783faeb8b6cd917ef258c1', '', '9bff531b7a7688e082ac4ffff1963bd3', '', '', '1', '', '', '112.252.196.13', '1462945133', '112.252.196.13', '1463057053', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('306', '', '2942135357@qq.com', '47a9c5324d6e8647fd7960abede79b1f', '', '03daa5330b6046a216adc7bd8054a6aa', 'xinxinweiya', '马昕', '1', '410523199203020028', '15517188196', '218.206.228.43', '1462945140', '218.29.136.43', '1463059943', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('307', '', '13880767196@163.com', '2aad7e6645dee24e3da5d3cca3c0038e', '', '96e79218965eb72c92a549dd5a330112', '', '', '1', '', '', '222.211.138.252', '1462945848', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('308', '', '985624080@qq.com', 'a35831ea8338136aadd13b2045fda4be', '', 'b1532dd401526f66c125eea64f501d06', 'wu985624080', '吴棠祯', '1', '362427198805302316', '15959365176', '120.41.126.68', '1462945864', '120.41.126.68', '1463049560', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('309', '', '2076906174@qq.com', '989a6eac42ca68ec6e98a86f6f321503', '136', 'e233f17c6ad6454e35fb179a98db7e26', '', '', '1', '', '', '14.204.20.234', '1462946111', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('310', '', 'y15628626625@126.com', '0c0ff525197af17c4a2d4e013414c76a', '305', '1307feed8f377818a62f8a4669875f3f', '', '', '1', '', '', '60.211.97.99', '1462946598', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('311', '', '199954454@qq.com', '9185bb7298473d9cfdfbeba81af31ef7', '', 'd76afb926ae534019d820792f362f6f3', '', '', '1', '', '', '60.12.3.34', '1462949394', '115.198.185.35', '1463053813', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('312', '', '980089565@qq.com', '2ff02f5c65795d96ec320265809934fd', '', 'a4caa0ea89a4b0aea2d45a212bb703c1', '贪嗔痴慢', '刘壬新', '1', '13042619950111423x', '13920796228', '101.26.23.251', '1462955087', '101.26.23.251', '1463022369', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('313', '', '891683197@qq.com', 'f6e3c93659983f99cb5dfedec199f99e', '87', '0b738c8067c251b82949791e77d464ce', '', '', '1', '', '', '115.194.53.253', '1462955450', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('314', '', '692893160@qq.com', '46188d6c197221c3411f9d8f31ca474b', '', '2744ad48e3bde2d61f4c7775ab371ddc', '', '', '1', '', '', '36.251.188.137', '1462956733', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('315', '', '2320155660@qq.com', '325a2cc052914ceeb8c19016c091d2ac', '305', 'aa1e01f00c9a1099eeca3b9e818bc0d9', 'zhongshan188', '冯涛宁', '1', '130683198409231330', '18831218097', '27.186.100.48', '1462956878', '27.186.96.219', '1463055040', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('316', '', '412158312@qq.com', '325a2cc052914ceeb8c19016c091d2ac', '315', 'aa1e01f00c9a1099eeca3b9e818bc0d9', '梦想钟山', '冯涛宁', '1', '130683198409231330', '13264051375', '27.186.100.48', '1462957153', '27.186.96.219', '1463054996', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('317', '', '3149009@qq.com', '3196ead8b155c93cfae614e0b552f76d', '', 'ace176c52e3a85c2afd80b34ad013956', 'meng', '陈立亚', '1', '422723197111071042', '18171916100', '171.114.80.169', '1462957565', '171.114.80.169', '1463060196', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('318', '', '82281105@qq.com', 'a12d21f76ab908482ea72e5d21aa3e64', '', '8823e186421d090a6a90bbba4dae00a3', '王超', '王超', '1', '420102198401223110', '13545217015', '171.83.30.227', '1462958158', '59.172.127.139', '1463061211', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('319', '', '77259498@qq.com', '0f25a1d483e23b7124b33a30d69485be', '', 'a66d92cacbcb69c63a629611a1558195', '小萍', '曹小平', '1', '422723197111071042', '18972600010', '171.114.80.169', '1462963315', '171.114.80.169', '1462964319', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('320', '', '37229557@qq.com', '7b8c6836cfac4a7960954f816192fee6', '162', 'a3b03c3d724ad8b6768089cd6cd87bb4', '黑子', '冀闻博', '1', '130705198303203012', '13722333313', '106.112.145.208', '1462964586', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('321', '', 'sdjiaai@163.com', '15586104d833db2358aa0ad948fc6a50', '', '25d687e2c7e715b2f1c9bc30a47b0863', '可可', '李光', '1', '370322198601102534', '13475616780', '39.75.106.76', '1462966374', '39.75.239.39', '1463026844', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('322', '', '631169542@qq.com', 'cd3b850ed495ce2e0e461818babf5f4e', '', 'c7810af0987e9df31d8dacb88031358c', '夜风来袭', '周风坤', '1', '371521198704243132', '18365863691', '223.96.146.22', '1462968617', '14.152.68.23', '1462970797', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('323', '', '83446508@qq.com', '9b8c8df70b07c9f435ca798cc28a4cfd', '305', 'b1312c835126a5a24d277195730e8c15', '', '', '1', '', '', '106.19.53.212', '1462970015', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('324', '', '420423396@qq.com', '8e4c1cb5b9bc36ff5f502f3c3f01e386', '162', '013f89cbbe4a16f3f6723fdb15901e83', 'bssasa', '卜莎', '1', '430903198808174842', '13530690895', '113.118.247.156', '1462972311', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('325', '', '114850889@qq.com', '38eadd22aa74be3efadca6661680ed51', '', 'b531c1c5e1a18627af2a355d3fbbe4a8', 'alan198647', '孟庆海', '1', '210103198604072436', '15040361350', '219.149.31.253', '1462973207', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('326', '', 'www.2890711619@qq.com', '95996b1403aef7a6fd1dbd8a85475f62', '', '7db88cdd3c295d227680b119a479ddfb', '', '', '1', '', '', '36.62.24.236', '1462974246', '36.62.24.236', '1463023275', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('327', '', '51518782@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '305', 'c33367701511b4f6020ec61ded352059', '', '', '1', '', '', '223.167.34.244', '1462975099', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('328', '', '1297853984@qq.com', 'd467ed6eda58b52a565a8de72411c0c6', '326', '315e2588d00fd39e06c2f5038f05d636', '', '', '1', '', '', '1.62.5.9', '1462975561', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('329', '', '228217526@qq.com', '257a8ee05571be256dbeb22b8be667d5', '305', 'af4d201f2a1af36654d8b7dd1346f81d', '', '', '1', '', '', '117.136.81.77', '1462976131', '27.17.0.238', '1463055715', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('330', '', '1301956486@qq.com', '774ba652651c3fa8c155aa7b6060e52d', '', 'b00da51f76731f1ec63ae8d201855995', '韭菜', '胡泽敬', '1', '500235199307176298', '18013534363', '180.152.116.49', '1462976222', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('331', '', '1057780873@qq.com', '809c084981620743e906acd4190be429', '329', '30afaad872f0d39c9502f2c12d1ac50c', 'syunhappy', '沈烨', '1', '440921197807140050', '13592997789', '119.134.72.95', '1462976263', '119.134.72.95', '1462976294', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('332', '', 'hhll@foxmail.com', '1621490e42be8e85a2f979448e49bfcb', '329', 'ebc293bbad877bcb601e46a399c653d4', 'hhll88', '龚燕妮', '1', '420104198303110828', '13476008283', '118.212.237.8', '1462976289', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('333', '', '30140233@qq.com', '70a3170019bb47cff770245b8cb0314f', '162', 'ac8f380f535b2dc29ef41a563d64058e', 'fiong', '邵敏', '1', '330104197410110026', '15356165632', '183.157.89.13', '1462976645', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('334', '', '459486730@qq.com', '19366f0b65105dbaed239a234506282d', '', '5439377ef59e5915bd3f75b592f9a009', '彬彬', '黄彬清', '1', '362421198905195919', '13777856993', '123.158.59.72', '1462976960', '124.90.112.123', '1463055840', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('335', '', '18906351286@163.com', '7a734523887b76ee82b6903d516b0c13', '305', 'b7574e74d70b0d9291b629a8e40a652f', '', '', '1', '', '', '182.39.110.216', '1462977074', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('336', '', '232218978@qq.com', 'ded0de17bad0165af6c44bb549671120', '', '5f7a46bae5c585e296374007f9206917', '天利', '褚火煅', '1', '350524198311231530', '13616032161', '27.152.126.71', '1462977289', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('337', '', '11541349@qq.com', '2b2990a367e12ae13f211dff21c82d73', '305', 'b028f480c59b0cee9c5fc6524bfe4367', 'daisy', '涂媛', '1', '421121198410304027', '13686867619', '117.136.39.207', '1462977675', '117.136.39.207', '1462979070', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('338', '', '1484102541@qq.com', 'f7887cdba5258d73c9888d86dd0ab557', '337', '5bbf71d23b1d889ad590871438d4dee6', '', '', '1', '', '', '124.228.82.121', '1462977992', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('339', '', '447090223@qq.com', '4a77e1f514bba2e7c23382f0c78434e0', '293', 'ba9050043021f6cef28f21a820fef59e', '佰富行刘', '刘亮', '1', '22010419911129181X', '15144020666', '36.48.26.200', '1462977995', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('340', '', '1587503275@qq.com', 'a0614f88cf5ba4239ec41189a9c833c2', '337', '7dd75c55c0f3a84969cacc5fcdbbd980', '', '', '1', '', '', '125.122.8.191', '1462978599', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('341', '', '519595979@qq.com', '7a282b09d6304a5ea01b5a1c2db9053b', '', '1095cbff71a574b198d65b647fc766d0', '', '', '1', '', '', '61.158.152.120', '1462978875', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('342', '', 'occuit@qq.com', '7b4a496548ca941d209dccda42934526', '', '546fbe7f007dcf249a4c275fe98fcbd0', 'occuit', '徐烨', '1', '320802199008243026', '18851267012', '222.59.159.189', '1462982590', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('343', '', '304288799@qq.com', 'b6b64f439045109e0463598d133dccc1', '', 'd80130ce12028154b0df24c4cebf0cb8', '', '', '1', '', '', '27.189.219.110', '1462982622', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('344', '', '348852378@qq.com', '93545c6db93a0dc3b77e2c3f84064023', '', '037094c252c24e898bcbff425ce86dd9', 'lin', '林映生', '1', '445122198912155715', '15814144868', '183.24.210.137', '1463011337', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('345', '', 'cheng159329@sina.com', '0ecaa0c3d6ed300aecb8bc3fa89e046b', '', '0e680ba9ee002612040ba2914630439b', '', '', '1', '', '', '116.226.111.229', '1463011813', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('346', '', '117290202@qq.com', '0fee9e669da96369e38770e26b2e8292', '', '5ff2ec5e38ef5160d95c401030e342cc', '', '', '1', '', '', '183.157.197.248', '1463013588', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('347', '', '448981592@qq.com', '7fa563fd3ab12ec1ff0b56a45cf881ae', '', '7f0d74f3a65c375c1eacbfa69ba5ad20', '后知后觉', '田胜', '1', '320382198601202559', '15996272466', '211.101.41.2', '1463014591', '211.101.41.2', '1463015572', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('348', '', '2544804330@qq.com', '6eba21ddb113c608e0541bc251820db5', '', '51f87c9a3b85ef42c139a39bdc076896', '币胜', '华月存', '1', '32128119831121573X', '13813002812', '49.77.245.184', '1463019236', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('349', '', '13281710534@163.com', '43f45ca43ad8e451164c0e1589caa012', '', 'c12abd2d34775823e239887710e38509', 'ketude', '柯土德', '1', '44088319911129111X', '13281710534', '114.64.255.29', '1463020063', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('350', '', '5810016227060@sina.com', 'abe36bce1151213f0ea6e6ec0f0e3f18', '136', 'c75f8c2ffd755a5b269bbffad9d77980', '天之怪才', '罗辉群', '1', '430105196011180022', '13873151612', '175.9.148.93', '1463020299', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('351', '', '2338920084@qq.com', '2569d419bfea999ff13fd1f7f4498b89', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '1', '', '', '171.217.102.207', '1463027676', '171.217.102.207', '1463037987', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('352', '', '179660865@qq.com', '874d692e6b3c858725997805d0f5e13f', '305', '92793315cc59cf55bb3504d39dba3956', '', '', '1', '', '', '117.169.1.106', '1463038717', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('353', '', '1024538579@qq.com', '698a240ee1bce7b770a6e7db601affff', '', 'b8ef412285c9b6f51e867652ca06c3b0', '', '', '1', '', '', '111.37.21.156', '1463039547', '111.37.21.152', '1463100620', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('354', '', '472266142@qq.com', '776f5e91f721c3f06af2f1588ed62244', '', '94e7d712742adbbb7a73a1d52a7cc1a9', '英姐', '许丽英', '1', '510623198704045025', '15983832712', '125.68.27.14', '1463047950', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('355', '', '282899270@qq.com', '7c2aee6d6ce997ae6257ce3496ba8323', '', '98c6f3567df682f014f0345f3fdaf35c', 'wjcshuaige', '王景昌', '1', '431003198908256513', '15274951514', '61.187.186.66', '1463048679', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('356', '', '124531934@qq.com', 'bf25aefd64836b3e4e47459efdae8391', '83', '15e8234fc2ce534cdb6bbce5a0610dcc', '13980569274', '万训松', '1', '511028199003091015', '13980569274', '222.215.33.104', '1463050258', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('357', '', '1012337410@qq.com', 'de2f965313942a89698ccf9f99577136', '', '54a996478c33068b41c0739f93a047c3', 'xiaobu', '王世钻', '1', '460028199211222838', '13123100680', '58.23.158.50', '1463052667', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('358', '', '839747538@qq.com', '91962946a45c403b747f22201a6489fd', '305', '4722cf695e8f611b260d39ef1fea5ce6', '帝都', '马方刚', '1', '37292819960824441X', '18354036648', '39.87.126.206', '1463055629', '39.87.126.206', '1463066930', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('359', '', '75672478@qq.com', 'efe6398127928f1b2e9ef3207fb82663', '', '5bacd9f25613659b2fbd2f3a58822e5c', 'xiaoniuniu', '任中中', '1', '13113199705880012', '15073504357', '222.242.179.65', '1463055885', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('360', '', 'dasen2016@qq.com', '6a53bd0860da6f114610ac25e8e081e4', '329', 'cc064f7ceda330f1c9a7735d1f4c5530', '', '', '1', '', '', '114.95.205.103', '1463055902', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('361', '', '553123917@qq.com', '5bacd9f25613659b2fbd2f3a58822e5c', '', '5471418ab3acc1227d564038bf73a636', '宝宝', '廖宝宝', '1', '431021199101198297', '13187272011', '222.242.179.65', '1463055982', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('362', '', '316867434@qq.com', '2e426be5bd7fba9f7a12363a91cf58e0', '315', 'ec8c50603446f68216a29434e53e0ca7', '哈弗', '李鹏', '1', '13068319831002135X', '15369388650', '222.223.228.246', '1463056220', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('363', '', '1540982311@qq.com', 'b1cbf64758fc4bf76de3d77fdf26ec35', '305', 'ec33422d8145afc53489e389c1591a1a', '', '', '1', '', '', '112.9.209.30', '1463056231', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('364', '', '2473261549@qq.com', '2e426be5bd7fba9f7a12363a91cf58e0', '362', 'ec8c50603446f68216a29434e53e0ca7', '', '', '1', '', '', '222.223.228.246', '1463057326', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('365', '', '531697654@qq.com', 'df331f8edc93a52d37d7440ac6511a5c', '', '7d4d8259af3f3e07c2ba9e502c908a56', '', '', '1', '', '', '106.4.14.237', '1463059781', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('366', '', '15095141987@163.com', 'cb37560ce24b76b5352ad451c5a474e6', '315', '94d1ac214d22eed38292dcb94a3691fc', '', '', '1', '', '', '223.81.196.45', '1463059784', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('367', '', '1318077719@qq.com', 'f28bcbb14198370e8bb3e3c599b1fb51', '', 'd0ac893f613ba8905579fd81631aefb0', '', '', '1', '', '', '183.23.172.43', '1463059805', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('368', '', '410474696@qq.com', 'b9646081ad4304defd1c40a7828d632c', '83', 'aa773fa99c136835f3fe28cbcee6df21', '', '', '1', '', '', '112.224.67.110', '1463060123', '112.224.67.110', '1463064690', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('369', '', '779583134@qq.com', '93bb25c2419b84091f0414e79d6480b8', '305', 'eca62a1fdcf44e917eb046481c668a85', '猴王', '张新停', '1', '372930198909014092', '18653025851', '111.37.24.83', '1463060338', '111.37.24.83', '1463062673', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('370', '', '584421215@qq.com', '5a0986cfbe89e7c4236a7286448bbc1f', '', '2dc8b722ea60a9e19a07a38853e608a3', '小志', '黄志江', '1', '35021219920610505X', '17750631174', '117.30.45.180', '1463060408', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('371', '', '1332198709@qq.com', 'b43aae653e430db6be805d3ae97113f3', '', '88d33877f3b347b9df76ad930565ac7b', 'cyrus', '陈萱然', '1', '510681199112170322', '15608100896', '175.155.53.104', '1463061224', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('372', '', '1768265137@qq.com', 'f9448a052f06afd5543d6d534ae98c12', '', '92873e186d929cb93cd89aff98f8acae', 'dau239', '廖画清', '1', '350524198808260118', '15860724799', '58.23.9.84', '1463061976', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('373', '', '136875208@qq.com', 'ec9561ead9525f9dc0d5a9c628db824b', '', '6717c3bf751174e8af69c08d3b7d891e', '22', '练东文', '1', '44148119900118247X', '13549150522', '119.122.81.38', '1463062129', '119.122.81.38', '1463062177', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('374', '', '39589742@qq.com', '32d597f3dc5f19d7dec5019ac1336fe6', '318', 'b8a1bb9654660ba3e0ce7df98d90488c', '', '', '1', '', '', '117.174.91.241', '1463062572', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('375', '', '861101816@qq.com', '0e393e55663dff114503a36c5e14bd1d', '', '915788ea501597f058029229b8bf7204', '', '', '1', '', '', '14.17.37.43', '1463063283', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('376', '', '631996666@qq.com', '3d24b838770ee90773804e8599e549ff', '305', '7adaa756553ba9eb6a235080f6263b5b', '娜娜', '王慧为', '1', '370404198509116821', '13386371777', '119.186.205.99', '1463064655', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('377', '', '332243164@qq.com', '78ba474db617ac52715eb8b6079fbce3', '', '83d3cf5430d64c6bbaa9af306ce6f0d1', '', '', '1', '', '', '121.230.69.177', '1463068281', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('378', '', '408161651@qq.com', '934bcb6b6eadd87c4d2c74a19bc5b0da', '83', 'f2a3e31a7a85f15394fa0641f686d33b', '', '', '1', '', '', '43.226.163.17', '1463074722', '43.226.163.17', '1463076093', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('379', '', 'wangxuehaiasd@qq.com', '917aee93b39983033528edfe85752df5', '83', 'a69875f8d09009dde053e2c6d00a04cb', '', '', '1', '', '', '123.168.108.213', '1463087091', '123.168.108.213', '1463087235', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('380', '', '15548000058@163.com', '8f9654fae7d61df67ffaabcb31acfcb9', '', '6c54f8cd4d75062dcec256d94fe358cc', '', '', '1', '', '', '123.151.12.152', '1463099455', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('381', '', '1976873302@qq.com', '32f0e4840c9e45ae7cf955bb61e562ff', '305', 'd5018ac97b902aba45d64398a51934f2', '', '', '1', '', '', '111.11.188.225', '1463100350', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('382', '', '1127439078@qq.com', 'd3eda4f31154bb3cefd81007cc526e74', '305', '747a57f995cc1c97433e80141bcf83a0', '', '', '1', '', '', '117.136.41.99', '1463104489', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('383', '', '1515662694@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '8fc902590d8aac5df61faaf2e2c60e59', '生长', '黄凯', '1', '340321199002162853', '13955244052', '223.243.251.152', '1463108708', '0.0.0.0', '1473393878', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '1', '0.0000', '');
INSERT INTO `yang_member` VALUES ('384', '', '1091098809@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '25f9e794323b453885f5181f1b624d0b', '', '', '1', '', '', '127.0.0.1', '1475467669', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');
INSERT INTO `yang_member` VALUES ('385', '', 'admin@haoid.cn', 'e10adc3949ba59abbe56e057f20f883e', '', 'a45fdb1e4ac646c9e65a1769663e5704', '', '', '1', '', '', '127.0.0.1', '1476699348', '', '0', '0', '0', '0.0000', '0.0000', '', '', '0', '0', '', '0', '0', '0.0000', '');

-- ----------------------------
-- Table structure for `yang_member_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member_comment`;
CREATE TABLE `yang_member_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `comment` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yang_member_old`
-- ----------------------------
DROP TABLE IF EXISTS `yang_member_old`;
CREATE TABLE `yang_member_old` (
  `member_id` int(32) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `paypwd` varchar(64) NOT NULL COMMENT '邀请人',
  `nike` varchar(32) NOT NULL,
  `realname` varchar(32) NOT NULL,
  `document_type` tinyint(4) NOT NULL,
  `document_num` varchar(32) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `reg_time` int(32) NOT NULL,
  `login_time` int(10) NOT NULL,
  `vip_level` int(10) NOT NULL,
  `vip_end_time` int(10) NOT NULL,
  `rmb` decimal(10,2) NOT NULL,
  `forzen_rmb` decimal(10,2) NOT NULL,
  `head` varchar(64) NOT NULL,
  `profile` text NOT NULL,
  `city` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_member_old
-- ----------------------------
INSERT INTO `yang_member_old` VALUES ('1', 'admin@qq.com', '', '', '', '', '0', '', '', '0', '0', '0', '0', '0.00', '0.00', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `yang_message`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message`;
CREATE TABLE `yang_message` (
  `message_id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `member_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `message_all_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message
-- ----------------------------
INSERT INTO `yang_message` VALUES ('54', '众筹成功', '64', '3', '您参与的众筹项目测试已成功,扣除交易币5,获取众筹币50', '1458298735', '0', '24');
INSERT INTO `yang_message` VALUES ('55', '我是标题', '60', '4', '我是内容', '1458014795', '1', '21');
INSERT INTO `yang_message` VALUES ('56', '我是标题', '60', '4', '我是内容', '1458014795', '1', '21');
INSERT INTO `yang_message` VALUES ('57', '众筹失败', '60', '-2', '您参与的众筹项目测试未成功', '1458891683', '1', '25');
INSERT INTO `yang_message` VALUES ('58', '众筹失败', '60', '-2', '您参与的众筹项目众筹项目--1未成功', '1458894074', '0', '26');
INSERT INTO `yang_message` VALUES ('59', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984256', '1', '27');
INSERT INTO `yang_message` VALUES ('60', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984260', '1', '28');
INSERT INTO `yang_message` VALUES ('61', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984298', '1', '29');
INSERT INTO `yang_message` VALUES ('62', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1458984340', '1', '30');
INSERT INTO `yang_message` VALUES ('63', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1458994993', '1', '31');
INSERT INTO `yang_message` VALUES ('64', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币2,获取众筹币20', '1458998972', '1', '32');
INSERT INTO `yang_message` VALUES ('65', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999061', '1', '33');
INSERT INTO `yang_message` VALUES ('66', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999086', '1', '34');
INSERT INTO `yang_message` VALUES ('67', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999107', '1', '35');
INSERT INTO `yang_message` VALUES ('68', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1459141895', '0', '36');
INSERT INTO `yang_message` VALUES ('69', 'CNY提现成功', '59', '-2', '恭喜您提现成功！', '1459142269', '0', '37');
INSERT INTO `yang_message` VALUES ('70', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1459142304', '0', '38');
INSERT INTO `yang_message` VALUES ('71', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为100000', '1459142553', '0', '39');
INSERT INTO `yang_message` VALUES ('72', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为600000', '1459142573', '0', '40');
INSERT INTO `yang_message` VALUES ('73', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1459156907', '1', '41');
INSERT INTO `yang_message` VALUES ('74', '分红奖励', '59', '-2', '585', '1459272075', '0', '45');
INSERT INTO `yang_message` VALUES ('75', '分红奖励', '59', '-2', '8547', '1459272123', '1', '50');
INSERT INTO `yang_message` VALUES ('76', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1459272579', '0', '54');
INSERT INTO `yang_message` VALUES ('77', '分红奖励', '59', '-2', 'rdds', '1459302015', '1', '58');
INSERT INTO `yang_message` VALUES ('78', '分红奖励', '59', '-2', 'eee', '1459302056', '1', '63');
INSERT INTO `yang_message` VALUES ('79', '分红奖励', '59', '-2', 'dssd', '1459302173', '1', '69');
INSERT INTO `yang_message` VALUES ('80', '管理员充值', '59', '-2', '管理员充值人民币:2000', '1459417852', '0', '70');
INSERT INTO `yang_message` VALUES ('81', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1459437549', '0', '73');
INSERT INTO `yang_message` VALUES ('82', '分红奖励', '60', '-2', '585', '1459272075', '0', '46');
INSERT INTO `yang_message` VALUES ('83', '分红奖励', '60', '-2', '8547', '1459272123', '0', '51');
INSERT INTO `yang_message` VALUES ('84', '分红奖励', '60', '-2', 'rdds', '1459302015', '0', '59');
INSERT INTO `yang_message` VALUES ('85', '分红奖励', '60', '-2', 'eee', '1459302056', '0', '64');
INSERT INTO `yang_message` VALUES ('86', '分红奖励', '60', '-2', 'dssd', '1459302173', '0', '68');
INSERT INTO `yang_message` VALUES ('87', '管理员充值', '59', '-2', '管理员充值人民币:500', '1460032830', '0', '74');
INSERT INTO `yang_message` VALUES ('88', '管理员充值', '59', '-2', '管理员充值狗狗币:1000', '1460086552', '0', '76');
INSERT INTO `yang_message` VALUES ('89', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460118277', '0', '77');
INSERT INTO `yang_message` VALUES ('90', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1460118279', '0', '78');
INSERT INTO `yang_message` VALUES ('91', 'CNY提现成功', '59', '-2', '恭喜您提现1000.00成功！', '1460126924', '0', '79');
INSERT INTO `yang_message` VALUES ('92', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460126929', '0', '80');
INSERT INTO `yang_message` VALUES ('93', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127223', '0', '87');
INSERT INTO `yang_message` VALUES ('94', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127227', '0', '88');
INSERT INTO `yang_message` VALUES ('95', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127240', '0', '89');
INSERT INTO `yang_message` VALUES ('96', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127273', '0', '90');
INSERT INTO `yang_message` VALUES ('97', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127274', '0', '91');
INSERT INTO `yang_message` VALUES ('98', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127275', '0', '92');
INSERT INTO `yang_message` VALUES ('99', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127276', '0', '93');
INSERT INTO `yang_message` VALUES ('100', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127277', '0', '94');
INSERT INTO `yang_message` VALUES ('101', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127278', '0', '95');
INSERT INTO `yang_message` VALUES ('102', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127283', '0', '96');
INSERT INTO `yang_message` VALUES ('103', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127299', '0', '97');
INSERT INTO `yang_message` VALUES ('104', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127306', '0', '98');
INSERT INTO `yang_message` VALUES ('105', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127326', '0', '99');
INSERT INTO `yang_message` VALUES ('106', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127328', '0', '100');
INSERT INTO `yang_message` VALUES ('107', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127452', '0', '101');
INSERT INTO `yang_message` VALUES ('108', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460127455', '0', '102');
INSERT INTO `yang_message` VALUES ('109', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127465', '0', '103');
INSERT INTO `yang_message` VALUES ('110', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127506', '0', '104');
INSERT INTO `yang_message` VALUES ('111', '管理员充值', '59', '-2', '管理员充值人民币:1000', '1460349599', '0', '105');
INSERT INTO `yang_message` VALUES ('112', '管理员充值', '59', '-2', '管理员充值人民币:1111', '1460349612', '0', '106');
INSERT INTO `yang_message` VALUES ('113', '管理员充值', '59', '-2', '管理员充值人民币:2222', '1460349639', '0', '107');
INSERT INTO `yang_message` VALUES ('114', '管理员充值', '59', '-2', '管理员充值人民币:888', '1460350077', '1', '108');
INSERT INTO `yang_message` VALUES ('115', '管理员充值', '59', '-2', '管理员充值狗狗币:50', '1460350099', '1', '109');
INSERT INTO `yang_message` VALUES ('116', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601735', '1', '111');
INSERT INTO `yang_message` VALUES ('117', '众筹成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601033', '0', '110');
INSERT INTO `yang_message` VALUES ('118', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601852', '0', '112');
INSERT INTO `yang_message` VALUES ('119', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602083', '0', '113');
INSERT INTO `yang_message` VALUES ('120', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602123', '0', '114');
INSERT INTO `yang_message` VALUES ('121', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602172', '0', '115');
INSERT INTO `yang_message` VALUES ('122', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602247', '0', '116');
INSERT INTO `yang_message` VALUES ('123', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460632973', '0', '117');
INSERT INTO `yang_message` VALUES ('124', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633136', '0', '118');
INSERT INTO `yang_message` VALUES ('125', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633246', '0', '119');
INSERT INTO `yang_message` VALUES ('126', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633283', '0', '120');
INSERT INTO `yang_message` VALUES ('127', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633326', '0', '121');
INSERT INTO `yang_message` VALUES ('128', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633459', '0', '122');
INSERT INTO `yang_message` VALUES ('129', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633966', '1', '124');
INSERT INTO `yang_message` VALUES ('130', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460634054', '1', '125');
INSERT INTO `yang_message` VALUES ('131', '434334433443', '59', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039', '1', '126');
INSERT INTO `yang_message` VALUES ('132', '管理员充值', '59', '-2', '管理员充值狗狗币:5000', '1461228938', '1', '127');
INSERT INTO `yang_message` VALUES ('133', '管理员充值', '59', '-2', '管理员充值进盟币:1000', '1461228959', '1', '128');
INSERT INTO `yang_message` VALUES ('134', '434334433443', '60', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039', '0', '126');
INSERT INTO `yang_message` VALUES ('135', '【公告】元宝网加强反洗钱措施的公告', '72', '-1', '【公告】元宝网加强反洗钱措施的公告<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462352562', '1', '129');
INSERT INTO `yang_message` VALUES ('136', '人工充值成功', '81', '-2', '您申请的人工充值已成功，充值金额为', '1462444913', '0', '131');
INSERT INTO `yang_message` VALUES ('137', '分红奖励', '81', '-2', '分红成功', '1462535337', '0', '132');
INSERT INTO `yang_message` VALUES ('138', '分红奖励', '81', '-2', '1', '1462535466', '0', '134');
INSERT INTO `yang_message` VALUES ('139', '分红奖励', '83', '-2', '分红成功', '1462535337', '1', '133');
INSERT INTO `yang_message` VALUES ('140', '分红奖励', '83', '-2', '1', '1462535466', '1', '135');
INSERT INTO `yang_message` VALUES ('141', '人工充值成功', '83', '-2', '您申请的人工充值已成功，充值金额为', '1462536751', '1', '136');
INSERT INTO `yang_message` VALUES ('142', '管理员充值', '78', '-2', '管理员充值人民币:1000', '1462539923', '1', '138');
INSERT INTO `yang_message` VALUES ('143', '管理员充值', '78', '-2', '管理员充值丘特币:2000', '1462539962', '1', '139');
INSERT INTO `yang_message` VALUES ('144', '人工充值成功', '87', '-2', '您申请的人工充值已成功，充值金额为', '1462539648', '1', '137');
INSERT INTO `yang_message` VALUES ('145', '分红奖励', '87', '-2', '分红', '1462670629', '1', '143');
INSERT INTO `yang_message` VALUES ('146', '分红奖励', '83', '-2', '分红', '1462670629', '1', '142');
INSERT INTO `yang_message` VALUES ('147', '服务条款', '87', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '1', '144');
INSERT INTO `yang_message` VALUES ('148', '分红奖励', '78', '-2', '分红', '1462670629', '0', '140');
INSERT INTO `yang_message` VALUES ('149', '服务条款', '78', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '0', '144');
INSERT INTO `yang_message` VALUES ('150', '服务条款', '78', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('151', '服务条款', '78', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('152', '服务条款', '78', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('153', '服务条款', '87', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '1', '145');
INSERT INTO `yang_message` VALUES ('154', '服务条款', '87', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '1', '146');
INSERT INTO `yang_message` VALUES ('155', '服务条款', '87', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '1', '147');
INSERT INTO `yang_message` VALUES ('156', '服务条款', '88', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '1', '144');
INSERT INTO `yang_message` VALUES ('157', '服务条款', '88', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('158', '服务条款', '88', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('159', '服务条款', '88', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('160', '服务条款', '90', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '0', '144');
INSERT INTO `yang_message` VALUES ('161', '服务条款', '90', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('162', '服务条款', '90', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('163', '服务条款', '90', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('164', '服务条款', '83', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '1', '144');
INSERT INTO `yang_message` VALUES ('165', '服务条款', '83', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('166', '服务条款', '83', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('167', '服务条款', '83', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('168', '服务条款', '89', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '0', '144');
INSERT INTO `yang_message` VALUES ('169', '服务条款', '89', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('170', '服务条款', '89', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('171', '服务条款', '89', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('172', '服务条款', '94', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '0', '144');
INSERT INTO `yang_message` VALUES ('173', '服务条款', '94', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('174', '服务条款', '94', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('175', '服务条款', '94', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('176', '服务条款', '80', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '1', '144');
INSERT INTO `yang_message` VALUES ('177', '服务条款', '80', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '1', '145');
INSERT INTO `yang_message` VALUES ('178', '服务条款', '80', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '1', '146');
INSERT INTO `yang_message` VALUES ('179', '服务条款', '80', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '1', '147');
INSERT INTO `yang_message` VALUES ('180', '分红奖励', '81', '-2', '分红', '1462670629', '0', '141');
INSERT INTO `yang_message` VALUES ('181', '服务条款', '81', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679', '0', '144');
INSERT INTO `yang_message` VALUES ('182', '服务条款', '81', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893', '0', '145');
INSERT INTO `yang_message` VALUES ('183', '服务条款', '81', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332', '0', '146');
INSERT INTO `yang_message` VALUES ('184', '服务条款', '81', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558', '0', '147');
INSERT INTO `yang_message` VALUES ('185', '人工充值成功', '87', '-2', '您申请的人工充值已成功，充值金额为', '1462887676', '1', '148');

-- ----------------------------
-- Table structure for `yang_message_all`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message_all`;
CREATE TABLE `yang_message_all` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '消息标题',
  `u_id` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message_all
-- ----------------------------
INSERT INTO `yang_message_all` VALUES ('21', '我是标题', '-1', '4', '我是内容', '1458014795');
INSERT INTO `yang_message_all` VALUES ('22', '我是标题', '59', '4', '我是内容', '1458014795');
INSERT INTO `yang_message_all` VALUES ('24', '众筹成功', '64', '3', '您参与的众筹项目测试已成功,扣除交易币5,获取众筹币50', '1458298735');
INSERT INTO `yang_message_all` VALUES ('25', '众筹失败', '60', '-2', '您参与的众筹项目测试未成功', '1458891683');
INSERT INTO `yang_message_all` VALUES ('26', '众筹失败', '60', '-2', '您参与的众筹项目众筹项目--1未成功', '1458894074');
INSERT INTO `yang_message_all` VALUES ('27', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984256');
INSERT INTO `yang_message_all` VALUES ('28', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984260');
INSERT INTO `yang_message_all` VALUES ('29', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币5,获取众筹币50', '1458984298');
INSERT INTO `yang_message_all` VALUES ('30', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1458984340');
INSERT INTO `yang_message_all` VALUES ('31', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1458994993');
INSERT INTO `yang_message_all` VALUES ('32', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币2,获取众筹币20', '1458998972');
INSERT INTO `yang_message_all` VALUES ('33', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999061');
INSERT INTO `yang_message_all` VALUES ('34', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999086');
INSERT INTO `yang_message_all` VALUES ('35', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币10,获取众筹币100', '1458999107');
INSERT INTO `yang_message_all` VALUES ('36', '众筹失败', '59', '-2', '您参与的众筹项目众筹项目--1未成功', '1459141895');
INSERT INTO `yang_message_all` VALUES ('37', 'CNY提现成功', '59', '-2', '恭喜您提现成功！', '1459142269');
INSERT INTO `yang_message_all` VALUES ('38', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1459142304');
INSERT INTO `yang_message_all` VALUES ('39', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为100000', '1459142553');
INSERT INTO `yang_message_all` VALUES ('40', '人工充值成功', '59', '-2', '您申请的人工充值已成功，充值金额为600000', '1459142573');
INSERT INTO `yang_message_all` VALUES ('41', '众筹成功', '59', '-2', '您参与的众筹项目众筹项目--1已成功,扣除交易币50,获取众筹币500', '1459156907');
INSERT INTO `yang_message_all` VALUES ('42', '分红奖励', '1', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('43', '分红奖励', '61', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('44', '分红奖励', '64', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('45', '分红奖励', '59', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('46', '分红奖励', '60', '-2', '585', '1459272075');
INSERT INTO `yang_message_all` VALUES ('47', '分红奖励', '1', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('48', '分红奖励', '61', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('49', '分红奖励', '64', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('50', '分红奖励', '59', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('51', '分红奖励', '60', '-2', '8547', '1459272123');
INSERT INTO `yang_message_all` VALUES ('52', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459272571');
INSERT INTO `yang_message_all` VALUES ('53', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459272576');
INSERT INTO `yang_message_all` VALUES ('54', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1459272579');
INSERT INTO `yang_message_all` VALUES ('55', '分红奖励', '1', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('56', '分红奖励', '61', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('57', '分红奖励', '64', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('58', '分红奖励', '59', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('59', '分红奖励', '60', '-2', 'rdds', '1459302015');
INSERT INTO `yang_message_all` VALUES ('60', '分红奖励', '1', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('61', '分红奖励', '61', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('62', '分红奖励', '64', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('63', '分红奖励', '59', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('64', '分红奖励', '60', '-2', 'eee', '1459302056');
INSERT INTO `yang_message_all` VALUES ('65', '分红奖励', '1', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('66', '分红奖励', '61', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('67', '分红奖励', '64', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('68', '分红奖励', '60', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('69', '分红奖励', '59', '-2', 'dssd', '1459302173');
INSERT INTO `yang_message_all` VALUES ('70', '管理员充值', '59', '-2', '管理员充值人民币:2000', '1459417852');
INSERT INTO `yang_message_all` VALUES ('71', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459437542');
INSERT INTO `yang_message_all` VALUES ('72', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1459437546');
INSERT INTO `yang_message_all` VALUES ('73', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1459437549');
INSERT INTO `yang_message_all` VALUES ('74', '管理员充值', '59', '-2', '管理员充值人民币:500', '1460032830');
INSERT INTO `yang_message_all` VALUES ('75', '管理员充值', '65', '-2', '管理员充值进盟币:500', '1460086516');
INSERT INTO `yang_message_all` VALUES ('76', '管理员充值', '59', '-2', '管理员充值狗狗币:1000', '1460086552');
INSERT INTO `yang_message_all` VALUES ('77', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460118277');
INSERT INTO `yang_message_all` VALUES ('78', 'CNY提现失败', '59', '-2', '很抱歉您提现失败，请重新操作或联系客服！', '1460118279');
INSERT INTO `yang_message_all` VALUES ('79', 'CNY提现成功', '59', '-2', '恭喜您提现1000.00成功！', '1460126924');
INSERT INTO `yang_message_all` VALUES ('80', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460126929');
INSERT INTO `yang_message_all` VALUES ('81', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460126933');
INSERT INTO `yang_message_all` VALUES ('82', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127006');
INSERT INTO `yang_message_all` VALUES ('83', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127009');
INSERT INTO `yang_message_all` VALUES ('84', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127152');
INSERT INTO `yang_message_all` VALUES ('85', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127161');
INSERT INTO `yang_message_all` VALUES ('86', 'CNY提现成功', '62', '-2', '恭喜您提现123.00成功！', '1460127163');
INSERT INTO `yang_message_all` VALUES ('87', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127223');
INSERT INTO `yang_message_all` VALUES ('88', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127227');
INSERT INTO `yang_message_all` VALUES ('89', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127240');
INSERT INTO `yang_message_all` VALUES ('90', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127273');
INSERT INTO `yang_message_all` VALUES ('91', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127274');
INSERT INTO `yang_message_all` VALUES ('92', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127275');
INSERT INTO `yang_message_all` VALUES ('93', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127276');
INSERT INTO `yang_message_all` VALUES ('94', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127277');
INSERT INTO `yang_message_all` VALUES ('95', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127278');
INSERT INTO `yang_message_all` VALUES ('96', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127283');
INSERT INTO `yang_message_all` VALUES ('97', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127299');
INSERT INTO `yang_message_all` VALUES ('98', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127306');
INSERT INTO `yang_message_all` VALUES ('99', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127326');
INSERT INTO `yang_message_all` VALUES ('100', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127328');
INSERT INTO `yang_message_all` VALUES ('101', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127452');
INSERT INTO `yang_message_all` VALUES ('102', 'CNY提现成功', '59', '-2', '恭喜您提现100.00成功！', '1460127455');
INSERT INTO `yang_message_all` VALUES ('103', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127465');
INSERT INTO `yang_message_all` VALUES ('104', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1460127506');
INSERT INTO `yang_message_all` VALUES ('105', '管理员充值', '59', '-2', '管理员充值人民币:1000', '1460349599');
INSERT INTO `yang_message_all` VALUES ('106', '管理员充值', '59', '-2', '管理员充值人民币:1111', '1460349612');
INSERT INTO `yang_message_all` VALUES ('107', '管理员充值', '59', '-2', '管理员充值人民币:2222', '1460349639');
INSERT INTO `yang_message_all` VALUES ('108', '管理员充值', '59', '-2', '管理员充值人民币:888', '1460350077');
INSERT INTO `yang_message_all` VALUES ('109', '管理员充值', '59', '-2', '管理员充值狗狗币:50', '1460350099');
INSERT INTO `yang_message_all` VALUES ('110', '众筹成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601033');
INSERT INTO `yang_message_all` VALUES ('111', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601735');
INSERT INTO `yang_message_all` VALUES ('112', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460601852');
INSERT INTO `yang_message_all` VALUES ('113', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602083');
INSERT INTO `yang_message_all` VALUES ('114', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602123');
INSERT INTO `yang_message_all` VALUES ('115', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602172');
INSERT INTO `yang_message_all` VALUES ('116', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460602247');
INSERT INTO `yang_message_all` VALUES ('117', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460632973');
INSERT INTO `yang_message_all` VALUES ('118', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633136');
INSERT INTO `yang_message_all` VALUES ('119', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633246');
INSERT INTO `yang_message_all` VALUES ('120', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633283');
INSERT INTO `yang_message_all` VALUES ('121', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633326');
INSERT INTO `yang_message_all` VALUES ('122', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633459');
INSERT INTO `yang_message_all` VALUES ('123', '认购成功', '67', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币100,获取众筹币1000', '1460633488');
INSERT INTO `yang_message_all` VALUES ('124', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460633966');
INSERT INTO `yang_message_all` VALUES ('125', '认购成功', '59', '-2', '您参与的众筹项目重酬测试已成功,扣除交易币50,获取众筹币500', '1460634054');
INSERT INTO `yang_message_all` VALUES ('126', '434334433443', '-1', '-1', '434334433443<br/><a href=/Home/Art/details/id/323.html>点击显示详情</a>', '1461061039');
INSERT INTO `yang_message_all` VALUES ('127', '管理员充值', '59', '-2', '管理员充值狗狗币:5000', '1461228938');
INSERT INTO `yang_message_all` VALUES ('128', '管理员充值', '59', '-2', '管理员充值进盟币:1000', '1461228959');
INSERT INTO `yang_message_all` VALUES ('129', '【公告】元宝网加强反洗钱措施的公告', '-1', '-1', '【公告】元宝网加强反洗钱措施的公告<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462352562');
INSERT INTO `yang_message_all` VALUES ('130', 'CNY提现成功', '59', '-2', '恭喜您提现123.00成功！', '1462360142');
INSERT INTO `yang_message_all` VALUES ('131', '人工充值成功', '81', '-2', '您申请的人工充值已成功，充值金额为', '1462444913');
INSERT INTO `yang_message_all` VALUES ('132', '分红奖励', '81', '-2', '分红成功', '1462535337');
INSERT INTO `yang_message_all` VALUES ('133', '分红奖励', '83', '-2', '分红成功', '1462535337');
INSERT INTO `yang_message_all` VALUES ('134', '分红奖励', '81', '-2', '1', '1462535466');
INSERT INTO `yang_message_all` VALUES ('135', '分红奖励', '83', '-2', '1', '1462535466');
INSERT INTO `yang_message_all` VALUES ('136', '人工充值成功', '83', '-2', '您申请的人工充值已成功，充值金额为', '1462536751');
INSERT INTO `yang_message_all` VALUES ('137', '人工充值成功', '87', '-2', '您申请的人工充值已成功，充值金额为', '1462539648');
INSERT INTO `yang_message_all` VALUES ('138', '管理员充值', '78', '-2', '管理员充值人民币:1000', '1462539923');
INSERT INTO `yang_message_all` VALUES ('139', '管理员充值', '78', '-2', '管理员充值丘特币:2000', '1462539962');
INSERT INTO `yang_message_all` VALUES ('140', '分红奖励', '78', '-2', '分红', '1462670629');
INSERT INTO `yang_message_all` VALUES ('141', '分红奖励', '81', '-2', '分红', '1462670629');
INSERT INTO `yang_message_all` VALUES ('142', '分红奖励', '83', '-2', '分红', '1462670629');
INSERT INTO `yang_message_all` VALUES ('143', '分红奖励', '87', '-2', '分红', '1462670629');
INSERT INTO `yang_message_all` VALUES ('144', '服务条款', '-1', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462698679');
INSERT INTO `yang_message_all` VALUES ('145', '服务条款', '-1', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462699893');
INSERT INTO `yang_message_all` VALUES ('146', '服务条款', '-1', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700332');
INSERT INTO `yang_message_all` VALUES ('147', '服务条款', '-1', '-1', '服务条款<br/><a href=/Home/Art/details/id/1.html>点击显示详情</a>', '1462700558');
INSERT INTO `yang_message_all` VALUES ('148', '人工充值成功', '87', '-2', '您申请的人工充值已成功，充值金额为', '1462887676');

-- ----------------------------
-- Table structure for `yang_message_category`
-- ----------------------------
DROP TABLE IF EXISTS `yang_message_category`;
CREATE TABLE `yang_message_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_message_category
-- ----------------------------
INSERT INTO `yang_message_category` VALUES ('-2', '个人信息');
INSERT INTO `yang_message_category` VALUES ('4', '系统消息');
INSERT INTO `yang_message_category` VALUES ('-1', '系统公告');

-- ----------------------------
-- Table structure for `yang_nav`
-- ----------------------------
DROP TABLE IF EXISTS `yang_nav`;
CREATE TABLE `yang_nav` (
  `nav_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '权限表',
  `nav_name` varchar(32) NOT NULL COMMENT '列表名称',
  `nav_e` varchar(32) NOT NULL COMMENT '英文标识',
  `nav_url` varchar(64) NOT NULL COMMENT 'url路径',
  `cat_id` varchar(32) NOT NULL COMMENT '类别',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_nav
-- ----------------------------
INSERT INTO `yang_nav` VALUES ('1', '系统设置', '&#xe642;', '/Config/index', 'sys');
INSERT INTO `yang_nav` VALUES ('2', '幻灯管理', '&#xf002c;', '/Flash/index', 'common');
INSERT INTO `yang_nav` VALUES ('3', '币种管理', '&#xe756;', '/Currency/index', 'wallet');
INSERT INTO `yang_nav` VALUES ('4', '官方公告管理', '&#xe6f7;', '/Art/index/article_category_id/1', 'article');
INSERT INTO `yang_nav` VALUES ('6', '友情链接', '&#xe602;', '/Link/index', 'common');
INSERT INTO `yang_nav` VALUES ('7', '会员列表', '&#x3434;', '/Member/index', 'user');
INSERT INTO `yang_nav` VALUES ('8', '添加会员', '&#xe62f;', '/Member/addMember', 'user');
INSERT INTO `yang_nav` VALUES ('15', '提现审核', '&#xe6a7;', '/Pending/index', 'finance');
INSERT INTO `yang_nav` VALUES ('9', '系统消息', '&#xe627;', '/Message/index', 'user');
INSERT INTO `yang_nav` VALUES ('10', '交易密码修改审核', '&#xe600;', '/Examine/index', 'user');
INSERT INTO `yang_nav` VALUES ('11', '人工充值管理', '&#xe61e;', '/Pay/payByMan', 'finance');
INSERT INTO `yang_nav` VALUES ('12', '财务日志', '&#xe659;', '/Finance/index', 'finance');
INSERT INTO `yang_nav` VALUES ('13', '众筹管理', '&#xe73e;', '/Zhongchou/index', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('14', '众筹记录', '&#xe78a;', '/Zhongchou/log', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('17', '委托记录', '&#xecf6;', '/Trade/orders', 'trade');
INSERT INTO `yang_nav` VALUES ('16', '交易记录', '&#xe608;', '/Trade/trade', 'trade');
INSERT INTO `yang_nav` VALUES ('21', '充币记录', '&#xe604;', '/Currency/chongzhi_index', 'wallet');
INSERT INTO `yang_nav` VALUES ('22', '提币记录', '&#xe601;', '/Currency/tibi_index', 'wallet');
INSERT INTO `yang_nav` VALUES ('26', '添加分红奖励', '&#xe617;', '/Bonus/index', 'bonus');
INSERT INTO `yang_nav` VALUES ('27', '信息设置', '&#xe642;', '/Config/information', 'sys');
INSERT INTO `yang_nav` VALUES ('28', '财务设置', '&#xe61d;', '/Config/finance', 'sys');
INSERT INTO `yang_nav` VALUES ('29', '客服设置', '&#xe77f;', '/Config/customerService', 'sys');
INSERT INTO `yang_nav` VALUES ('30', '短信邮箱设置', '&#xe6ef;', '/Config/shortMessage', 'sys');
INSERT INTO `yang_nav` VALUES ('18', '全站统计信息', '&#xe73e;', '/Index/infoStatistics', 'common');
INSERT INTO `yang_nav` VALUES ('33', '银行列表', '&#xe637;', '/Websitebank/index', 'bank');
INSERT INTO `yang_nav` VALUES ('32', '添加银行', '&#xe601;', '/Websitebank/addBank', 'bank');
INSERT INTO `yang_nav` VALUES ('35', '会员钱包充值列表', '&#xe60e;', '/CurrencyUser/MemberQianbaoChongzhiUrl', 'wallet');
INSERT INTO `yang_nav` VALUES ('36', '会员钱包提币列表', '&#xe640;', '/CurrencyUser/MemberQianbaoTibiUrl', 'wallet');
INSERT INTO `yang_nav` VALUES ('40', '分红列表', '&#xe617;', '/Bonus/bonusList', 'bonus');
INSERT INTO `yang_nav` VALUES ('44', '下载管理', '&#xe601;', '/Download/index', 'wallet');
INSERT INTO `yang_nav` VALUES ('41', '管理员管理', '&#xe64d;', '/Manage/index', 'admin');
INSERT INTO `yang_nav` VALUES ('52', '财务明细', '&#xe73e;', '/Finance/count', 'finance');
INSERT INTO `yang_nav` VALUES ('43', '众筹推荐奖励列表', '&#xe601;', '/Zhongchou/awardsList', 'zhongchou');
INSERT INTO `yang_nav` VALUES ('45', '管理员充值管理', '&#xe61e;', '/Pay/admRecharge', 'finance');
INSERT INTO `yang_nav` VALUES ('46', '后台入口配置管理', '&#xe642;', '/Fileconfigoperation/saveEntrance', 'sys');
INSERT INTO `yang_nav` VALUES ('47', '数据库配置管理', '&#xe642;', '/Fileconfigoperation/saveDb', 'sys');
INSERT INTO `yang_nav` VALUES ('48', '分红股管理', '&#xe617;', '/Dividend/index', 'bonus');
INSERT INTO `yang_nav` VALUES ('49', '市场动态管理', '&#xe6f7;', '/Art/index/article_category_id/2', 'article');
INSERT INTO `yang_nav` VALUES ('50', '帮助中心管理', '&#xe6f7;', '/Art/helpindex/article_category_id/6', 'article');
INSERT INTO `yang_nav` VALUES ('51', '团队信息管理', '&#xe6f7;', '/Art/index/article_category_id/7', 'article');
INSERT INTO `yang_nav` VALUES ('56', '第三方充值记录', '&#xe6f7;', '/Pay/fill', 'finance');
INSERT INTO `yang_nav` VALUES ('57', '推广排名', '&#xe6f7;', '/Tongji/tuiguang', 'tongji');
INSERT INTO `yang_nav` VALUES ('58', '数据统计', '&#xe6f7;', '/Tongji/shuju', 'tongji');
INSERT INTO `yang_nav` VALUES ('59', '详细统计', '&#xe6f7;', '/Tongji/xiangxi', 'tongji');
INSERT INTO `yang_nav` VALUES ('60', '余额排名', '&#xe6f7;', '/Tongji/yue', 'tongji');

-- ----------------------------
-- Table structure for `yang_orders`
-- ----------------------------
DROP TABLE IF EXISTS `yang_orders`;
CREATE TABLE `yang_orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `currency_id` int(10) NOT NULL COMMENT '主币种ID',
  `currency_trade_id` int(10) NOT NULL COMMENT '对应交易币种ID',
  `price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `num` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT '挂单数量',
  `trade_num` decimal(20,4) NOT NULL COMMENT '成交数量',
  `fee` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT '记录的是比例',
  `type` char(4) NOT NULL DEFAULT '0' COMMENT 'buy sell',
  `add_time` int(10) NOT NULL,
  `trade_time` int(10) NOT NULL COMMENT '成交时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0是挂单，1是部分成交,2成交， -1撤销',
  PRIMARY KEY (`orders_id`),
  KEY `add_time` (`add_time`),
  KEY `cid` (`currency_id`),
  KEY `id` (`orders_id`),
  KEY `member_id` (`member_id`),
  KEY `trade_id` (`currency_trade_id`),
  KEY `member_id_2` (`member_id`,`currency_id`,`currency_trade_id`,`price`,`num`,`trade_num`,`type`,`status`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `currency_trade_id` (`currency_trade_id`),
  KEY `currency_id` (`currency_id`,`type`,`add_time`) USING BTREE,
  KEY `price` (`price`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_orders
-- ----------------------------
INSERT INTO `yang_orders` VALUES ('13', '87', '29', '0', '0.1000', '500.0000', '500.0000', '0.0010', 'sell', '1462539810', '1462540296', '2');
INSERT INTO `yang_orders` VALUES ('14', '87', '29', '0', '0.1100', '500.0000', '500.0000', '0.0010', 'sell', '1462539833', '1462540348', '2');
INSERT INTO `yang_orders` VALUES ('15', '87', '29', '0', '0.1300', '1000.0000', '1000.0000', '0.0010', 'sell', '1462539870', '1462541004', '2');
INSERT INTO `yang_orders` VALUES ('16', '87', '29', '0', '0.2600', '100.0000', '100.0000', '0.0010', 'sell', '1462539905', '1462541338', '2');
INSERT INTO `yang_orders` VALUES ('17', '87', '29', '0', '0.2800', '1000.0000', '1000.0000', '0.0010', 'sell', '1462539940', '1462544669', '2');
INSERT INTO `yang_orders` VALUES ('18', '87', '29', '0', '0.0900', '1000.0000', '0.0000', '0.0000', 'buy', '1462539964', '0', '-1');
INSERT INTO `yang_orders` VALUES ('19', '87', '29', '0', '0.0800', '1000.0000', '0.0000', '0.0000', 'buy', '1462539992', '0', '-1');
INSERT INTO `yang_orders` VALUES ('20', '78', '29', '0', '0.3000', '222.0000', '222.0000', '0.0010', 'sell', '1462540037', '1462544669', '2');
INSERT INTO `yang_orders` VALUES ('21', '87', '29', '0', '0.3000', '900.0000', '678.0000', '0.0010', 'sell', '1462540038', '1462544669', '-1');
INSERT INTO `yang_orders` VALUES ('22', '87', '29', '0', '0.3100', '1000.0000', '0.0000', '0.0010', 'sell', '1462540065', '0', '-1');
INSERT INTO `yang_orders` VALUES ('23', '87', '29', '0', '0.3200', '500.0000', '0.0000', '0.0010', 'sell', '1462540085', '0', '-1');
INSERT INTO `yang_orders` VALUES ('24', '87', '29', '0', '0.3300', '600.0000', '0.0000', '0.0010', 'sell', '1462540126', '0', '-1');
INSERT INTO `yang_orders` VALUES ('25', '87', '29', '0', '0.3500', '600.0000', '0.0000', '0.0010', 'sell', '1462540151', '0', '-1');
INSERT INTO `yang_orders` VALUES ('26', '87', '29', '0', '0.3600', '1000.0000', '0.0000', '0.0010', 'sell', '1462540172', '0', '-1');
INSERT INTO `yang_orders` VALUES ('27', '87', '29', '0', '0.0700', '1000.0000', '0.0000', '0.0000', 'buy', '1462540234', '0', '-1');
INSERT INTO `yang_orders` VALUES ('28', '87', '29', '0', '0.0600', '1000.0000', '0.0000', '0.0000', 'buy', '1462540257', '0', '-1');
INSERT INTO `yang_orders` VALUES ('29', '78', '29', '0', '0.0900', '14.0000', '0.0000', '0.0000', 'buy', '1462540259', '0', '-1');
INSERT INTO `yang_orders` VALUES ('30', '87', '29', '0', '0.0500', '1000.0000', '0.0000', '0.0000', 'buy', '1462540279', '0', '-1');
INSERT INTO `yang_orders` VALUES ('31', '78', '29', '0', '0.1000', '500.0000', '500.0000', '0.0000', 'buy', '1462540296', '1462540296', '2');
INSERT INTO `yang_orders` VALUES ('32', '78', '29', '0', '0.1100', '500.0000', '500.0000', '0.0000', 'buy', '1462540348', '1462540348', '2');
INSERT INTO `yang_orders` VALUES ('33', '87', '29', '0', '0.0400', '1000.0000', '0.0000', '0.0000', 'buy', '1462540947', '0', '-1');
INSERT INTO `yang_orders` VALUES ('34', '87', '29', '0', '0.1300', '1000.0000', '1000.0000', '0.0000', 'buy', '1462541004', '1462541004', '2');
INSERT INTO `yang_orders` VALUES ('35', '78', '29', '0', '0.2000', '1000.0000', '0.0000', '0.0000', 'buy', '1462541299', '0', '-1');
INSERT INTO `yang_orders` VALUES ('36', '78', '29', '0', '0.2800', '1000.0000', '1000.0000', '0.0000', 'buy', '1462541338', '1462541338', '2');
INSERT INTO `yang_orders` VALUES ('37', '87', '29', '0', '0.3800', '1000.0000', '0.0000', '0.0010', 'sell', '1462541861', '0', '-1');
INSERT INTO `yang_orders` VALUES ('38', '87', '29', '0', '0.4000', '1000.0000', '0.0000', '0.0010', 'sell', '1462541891', '0', '-1');
INSERT INTO `yang_orders` VALUES ('39', '78', '29', '0', '0.5000', '500.0000', '0.0000', '0.0010', 'sell', '1462541942', '0', '-1');
INSERT INTO `yang_orders` VALUES ('40', '87', '29', '0', '0.2100', '1000.0000', '0.0000', '0.0000', 'buy', '1462542368', '0', '-1');
INSERT INTO `yang_orders` VALUES ('41', '87', '29', '0', '0.2200', '1000.0000', '0.0000', '0.0000', 'buy', '1462542390', '0', '-1');
INSERT INTO `yang_orders` VALUES ('42', '87', '29', '0', '0.2300', '1000.0000', '0.0000', '0.0000', 'buy', '1462543648', '0', '-1');
INSERT INTO `yang_orders` VALUES ('43', '87', '29', '0', '0.3000', '1000.0000', '1000.0000', '0.0000', 'buy', '1462544669', '1462544669', '2');
INSERT INTO `yang_orders` VALUES ('44', '87', '29', '0', '0.2300', '1000.0000', '1000.0000', '0.0010', 'sell', '1462587668', '1462587781', '2');
INSERT INTO `yang_orders` VALUES ('45', '87', '29', '0', '0.2300', '1000.0000', '1000.0000', '0.0000', 'buy', '1462587781', '1462587781', '2');
INSERT INTO `yang_orders` VALUES ('46', '87', '29', '0', '0.3000', '4300.0000', '1500.0000', '0.0000', 'buy', '1462587858', '1462587941', '-1');
INSERT INTO `yang_orders` VALUES ('47', '87', '29', '0', '0.3000', '500.0000', '500.0000', '0.0010', 'sell', '1462587878', '1462587878', '2');
INSERT INTO `yang_orders` VALUES ('48', '78', '29', '0', '0.5000', '200.0000', '0.0000', '0.0010', 'sell', '1462587922', '0', '-1');
INSERT INTO `yang_orders` VALUES ('49', '87', '29', '0', '0.3000', '1000.0000', '1000.0000', '0.0010', 'sell', '1462587941', '1462587941', '2');

-- ----------------------------
-- Table structure for `yang_pay`
-- ----------------------------
DROP TABLE IF EXISTS `yang_pay`;
CREATE TABLE `yang_pay` (
  `pay_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '充值表',
  `member_name` varchar(32) NOT NULL COMMENT '汇款人',
  `add_time` int(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `account` varchar(128) NOT NULL COMMENT '汇出银行账号',
  `type` int(4) NOT NULL COMMENT '1是银行   2是支付宝 ,3管理员充值',
  `money` int(64) NOT NULL COMMENT '要充值钱数',
  `count` float(64,4) NOT NULL COMMENT '总量，等于充值数+手续费',
  `currency_id` int(32) DEFAULT '0',
  `member_id` varchar(32) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_pay
-- ----------------------------
INSERT INTO `yang_pay` VALUES ('29', '邱佳欣', '1462374376', '0', '13986617911', '1', '100', '100.2000', '0', '78');
INSERT INTO `yang_pay` VALUES ('31', '黄栋', '1462444699', '1', '18376983437', '1', '100', '100.3600', '0', '81');
INSERT INTO `yang_pay` VALUES ('32', '王军', '1462536107', '1', '15996472029', '1', '100', '100.6300', '0', '83');
INSERT INTO `yang_pay` VALUES ('33', '赵志谋', '1462539602', '1', '1954202974@qq.com', '1', '1000', '1000.1400', '0', '87');
INSERT INTO `yang_pay` VALUES ('34', '邱佳欣', '1462539923', '1', '', '3', '1000', '0.0000', '0', '78');
INSERT INTO `yang_pay` VALUES ('35', '邱佳欣', '1462539962', '1', '', '3', '2000', '0.0000', '29', '78');
INSERT INTO `yang_pay` VALUES ('36', '黄栋', '1462584125', '0', '6228480831805917612', '1', '100', '100.4300', '0', '81');
INSERT INTO `yang_pay` VALUES ('37', '赵志谋', '1462887637', '1', '1954202974@qq.com', '1', '80000', '80000.3516', '0', '87');
INSERT INTO `yang_pay` VALUES ('38', '廖宝宝', '1463056159', '0', '13187272011', '1', '1000', '1000.1500', '0', '361');

-- ----------------------------
-- Table structure for `yang_position`
-- ----------------------------
DROP TABLE IF EXISTS `yang_position`;
CREATE TABLE `yang_position` (
  `position_id` int(32) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(128) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_position
-- ----------------------------
INSERT INTO `yang_position` VALUES ('1', '首页左侧导航banner');

-- ----------------------------
-- Table structure for `yang_qianbao_address`
-- ----------------------------
DROP TABLE IF EXISTS `yang_qianbao_address`;
CREATE TABLE `yang_qianbao_address` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `qianbao_url` varchar(128) NOT NULL COMMENT '钱包地址',
  `status` tinyint(4) NOT NULL,
  `add_time` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_qianbao_address
-- ----------------------------
INSERT INTO `yang_qianbao_address` VALUES ('1', '59', '333', '7Vm6FTHYjdNbjfhQ5rFkiZZkAzbTxP2JKe', '1', '1461406051', '25');
INSERT INTO `yang_qianbao_address` VALUES ('2', '110', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnas', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnasJM', '1', '1462704836', '29');
INSERT INTO `yang_qianbao_address` VALUES ('3', '203', '02', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '1', '1462799966', '25');
INSERT INTO `yang_qianbao_address` VALUES ('4', '177', 'bf', 'CVPVCg9c8SdXwhN1XoHcZFTyBXVRBmiQJS', '1', '1462802400', '25');
INSERT INTO `yang_qianbao_address` VALUES ('6', '119', '秋林', 'CL69WY6hMgwih2uCPnSfb2v7g9c8SrZFgc', '1', '1462963646', '29');

-- ----------------------------
-- Table structure for `yang_tibi`
-- ----------------------------
DROP TABLE IF EXISTS `yang_tibi`;
CREATE TABLE `yang_tibi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `url` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `add_time` int(10) NOT NULL,
  `num` decimal(20,8) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0为提币中 1为提币成功  2为充值中 3位充值成功',
  `ti_id` varchar(128) NOT NULL,
  `check_time` int(10) NOT NULL,
  `currency_id` int(10) NOT NULL,
  `fee` decimal(10,4) NOT NULL,
  `actual` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yang_tibi
-- ----------------------------
INSERT INTO `yang_tibi` VALUES ('1', '59', '7Vm6FTHYjdNbjfhQ5rFkiZZkAzbTxP2JKe', '333', '1461406149', '100.00000000', '0', '49c5ec2446c1822f7703b7876fd442ed4af37e75a2d51e84dbccfd328a4d277c', '0', '25', '0.1000', '99.9000');
INSERT INTO `yang_tibi` VALUES ('2', '59', '7Vm6FTHYjdNbjfhQ5rFkiZZkAzbTxP2JKe', '333', '1461406153', '100.00000000', '0', '10f2e18fb61791bc08f9ae244b3581dacae2ca8ccb3b96e8a4536bd65b16d34f', '0', '25', '0.1000', '99.9000');
INSERT INTO `yang_tibi` VALUES ('3', '81', 'CWtoEAascjz4Nv1nfEmFjeeb3qzbHKyNuA', '1156276238@qq.com', '1462451526', '10.00000000', '3', '6d629d78a3ae9b903ec8767f076d7e94758ce22e17e9f8620651674122f62299', '1462451526', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('4', '83', 'CTyg2wntrSb9fU7aQxhUEUxXfmkifWzWzK', '846969750@qq.com', '1462464222', '841.00000000', '3', '35ca8f59091007f138da7708bd3deabdccec6f121fb51425890a3c085a41055a', '1462464222', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('5', '113', 'CYG5wn5ut1v7WrtXtB1Uq5bMJaDZ9z6HsK', '527580286@qq.com', '1462702792', '1.00000000', '3', 'd9d672418cdc0c6c7b48037c3b35efbda9be3f9fa8e8de7ae310da89082204cd', '1462702792', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('6', '88', 'CSDWzqEcxn9cfZquRcnk7hEAh8d6wtniwu', '464722937@qq.com', '1462703507', '5050.90000000', '3', 'b7afc5171fc9c0054eacd516a04da29ac99f8b5a96fab177960907906d63a0a7', '1462703507', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('7', '113', 'CYG5wn5ut1v7WrtXtB1Uq5bMJaDZ9z6HsK', '527580286@qq.com', '1462703595', '10000.00000000', '3', '9cac3b013cf26b38fe48056aecfd3e53774af27538a69d3603ccd86e38fd414c', '1462703595', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('8', '88', 'CSDWzqEcxn9cfZquRcnk7hEAh8d6wtniwu', '464722937@qq.com', '1462703602', '4.98000000', '3', 'eb1ca968a5b00c337a61240af5bba83e2c3b548c27557106ae38f4d08bd2c2c2', '1462703602', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('9', '135', 'CMCSALefn2dRocceGmJLWTkpgmfFWnKvzE', '717088507@qq.com', '1462703831', '12.00000000', '3', 'fa50949b251770d9d91b8bef8ef3fbc7a24aa4c1258338a23ae684716c64da70', '1462703831', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('10', '110', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnasJM', '946762106@qq.com', '1462704056', '2.00000000', '3', '01be72a698bc82e484ed43d675d85ba7f6000bf551349aae01fc58befbb5d945', '1462704056', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('11', '138', 'CTTGgvkpj2SDe2Qg7PCjMV5Jdw6Nr7MfSU', '425891343@qq.com', '1462704440', '45.00000000', '3', 'a6444866d57e43d86f65755bc6e42880dae413208d3641f69d2774078672aa76', '1462704440', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('12', '113', 'CYG5wn5ut1v7WrtXtB1Uq5bMJaDZ9z6HsK', '527580286@qq.com', '1462705326', '6585.00000000', '3', '4a9fd3f432299ccfab94156ecc24ab41e2c8c05d9d24495d92a4949e4ca36bdf', '1462705326', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('13', '108', 'CPPja5QtKnKZ4pqQkv5MrETszqkTsTV9RQ', '1441215379@qq.com', '1462705735', '1.00000000', '3', '5095d3a465928e63a59bd5dfb64afb74c8a3b920e12a16c6c21d85ebb14fc5a9', '1462705735', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('14', '108', 'CPPja5QtKnKZ4pqQkv5MrETszqkTsTV9RQ', '1441215379@qq.com', '1462705769', '78.00000000', '3', '2fb9f62bf1bdcc1ebd7cd11af9a8557403ceca1ea408cce57cd4951b8c32b294', '1462705769', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('15', '140', 'CH64KReDpLpfaNHHsa7fKs8fNeKmhw632L', '2364352401@qq.com', '1462705974', '8.00000000', '3', 'e0e715a1699a1c18dd4f57f5176dcfffba6053e4c5786fe4f30cd287b2ac79e1', '1462705974', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('16', '131', 'CWFGfw8csqaWGUN6baKoossmj5Xc9VJhZu', '106336742@qq.com', '1462706095', '5597.21589900', '3', 'aba4cbe24a3ecd091f94c9fa056e751cfe2e2c23c9334a1c4054526ac4076f9d', '1462706095', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('17', '108', 'CPPja5QtKnKZ4pqQkv5MrETszqkTsTV9RQ', '1441215379@qq.com', '1462706161', '2500.00000000', '3', '16d9bdae7f890c6a9c14ff15ac3ff0a58ba6edf67a1d1c39ae572939c2ad8c1b', '1462706161', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('18', '108', 'CPPja5QtKnKZ4pqQkv5MrETszqkTsTV9RQ', '1441215379@qq.com', '1462706213', '4.38000000', '2', 'b992233a4075b3e2670e25ad8216086004034dc9948c7a742f6a0b3ce667d799', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('19', '140', 'CH64KReDpLpfaNHHsa7fKs8fNeKmhw632L', '2364352401@qq.com', '1462706351', '5001.89000000', '3', 'd4a58c1016effb88228cd20ed58551eff7c060602cf2879bfb41a203f35f45f6', '1462706351', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('20', '94', 'CRMsJ2sE2nMzhdry73Z5PAEe7uSAizSm2V', '137606080@qq.com', '1462706532', '1.00000000', '3', 'e36f284306b15647d5c3b0b47d5c1ff34e9fbc96b447ff299f133d40c68ae684', '1462706532', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('21', '140', 'CH64KReDpLpfaNHHsa7fKs8fNeKmhw632L', '2364352401@qq.com', '1462706543', '0.08000000', '3', '4ccb4158df9e12a2db8db09f137d814f9a732d48f0edf379c4384eaafeaa4796', '1462706543', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('22', '156', 'Cbh4k2HfXYWy5Davhxrcp4g2ChURPvfcGk', '375114009@qq.com', '1462706826', '1.00000000', '3', 'fd37d76135b201793e1c4e5eed97492604614c4b249c2dd2b4c073c015b536fb', '1462706826', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('23', '89', 'CGnxjKKhSfYerpRjv99gigYtR893nQuH4G', '420626398@qq.com', '1462706860', '10.00000000', '3', '43d8eb239a28abd2d90f099984204a07cb5edad07268edf9bc090970a2620b7f', '1462706860', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('24', '138', 'CTTGgvkpj2SDe2Qg7PCjMV5Jdw6Nr7MfSU', '425891343@qq.com', '1462707000', '6500.00000000', '3', '6311ab610afae2cec19055fe4db33ab29912e35c51822787c42f607de9c268df', '1462707000', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('25', '89', 'CGnxjKKhSfYerpRjv99gigYtR893nQuH4G', '420626398@qq.com', '1462707021', '1092.38000000', '3', '9f88d01bf3b61f63b222705ab658b7ac0f27e9d9368d2195aa92900158ad48fe', '1462707021', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('26', '89', 'CGnxjKKhSfYerpRjv99gigYtR893nQuH4G', '420626398@qq.com', '1462707070', '8999.99000000', '3', 'b60dc0377458d5ee898a9d2f5debdea6ca3d0b38d532b2457b4cc1c21221e542', '1462707070', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('27', '161', 'CKWshCfVxbTG1TwWRzjYoXLyWJ1SFmFv1a', '759588355@qq.com', '1462707150', '2090.00000000', '3', '28fa34e8cc957e8c0bab2754f50232cee7af8c2dd89790c90c7bdad448588e11', '1462707150', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('28', '160', 'CdxVdvAeFhSn7QBDUddvisiuf6rTNKnsfM', '15079792233@163.com', '1462707553', '15045.00000000', '3', '20afe1d1aa51fda6994679c8830c8669b937824cce273fdc4db3e4be40fb7041', '1462707553', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('29', '125', 'CWKeFaCktCcHypbAmWUk3TSqJ8zxDnaciA', '1129319674@qq.com', '1462708183', '1.00000000', '3', '762492c0788aa24bd9218f7a4013f05623dcd0356a524235e02ab4a00da6a199', '1462708183', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('30', '125', 'CWKeFaCktCcHypbAmWUk3TSqJ8zxDnaciA', '1129319674@qq.com', '1462708246', '2498.00000000', '2', '2e05b47e1011f8c69faca3fb21b3f1d157691e08c6b9e82aeaa7f199c4186b91', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('31', '156', 'Cbh4k2HfXYWy5Davhxrcp4g2ChURPvfcGk', '375114009@qq.com', '1462708413', '5000.00000000', '3', 'aa89e9236d3bde0d1c5bafd0ee34b936d548b4bd8b92c5c4f63c0b6fdbe3484d', '1462708413', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('32', '104', 'CPANKd8ZHPFXoUNLV2itmnsZ5toATmn5ui', '959830654@qq.com', '1462707325', '100.00000000', '3', '5e71f272c2305d31bdfb9b096687de618ab8ac7be9d9632e61da9735a8183067', '1462707325', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('33', '104', 'CPANKd8ZHPFXoUNLV2itmnsZ5toATmn5ui', '959830654@qq.com', '1462708873', '22662.00000000', '3', '281aeeddda1c809316a60f7d34494f69e089589637ad1212a7601b635efdc7c4', '1462708873', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('34', '170', 'CdDYm2YLeSHhbm16R2wJSX8Tc72owkx8Eg', '2824559420@qq.com', '1462709082', '5004.90000000', '3', '55d37edde0513b00e4aca181124f607b55875b6db5afafb645df88976d7f69a2', '1462709082', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('35', '110', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnasJM', '946762106@qq.com', '1462706105', '9013.00000000', '3', 'e491fcf02f225b5ef0521e52a2df143c7d87b645b571957d64006eaf62b33342', '1462706105', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('36', '110', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnasJM', '946762106@qq.com', '1462708050', '1023.00000000', '3', 'c9a08989d3fbe0110f989c06b232446ddec879977e691c4a714507c1700e5fc6', '1462708050', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('37', '110', 'CMTRt5GcJzea2VCWWRQm5Nqt9YuFFnasJM', '946762106@qq.com', '1462711237', '850.00000000', '2', 'a4dfa6c174c16355f94aafb5000141451b68d9b0181131c7c2ccf8e7278f67e9', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('38', '159', 'CNcVYeiZaCwR5a7ykABzfA346su5kbcPjW', '1102153766@qq.com', '1462713033', '1000.00000000', '2', '290819354d48fe79a9a04cfff0eaefe56a58a0e28a3b7a2aace37dcbb14fbe7c', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('39', '179', 'Cbxd8cht7geiD2uY9mmV5p3Bi9tACXd6XC', '285724786@qq.com', '1462713094', '5368.00000000', '3', 'c0657cddaf3d4f025743e66ac0e03da2b292d3c5f8edf340a1555ed440e3d690', '1462713094', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('40', '178', 'CY39HB4xEByidYeCH95PLaK3AZdX4q9Gsv', '2117676112@qq.com', '1462713104', '2419.00000000', '3', '164f2f857c9e7d31befaf67d810c546a53855c267a1646eee085f7db518250bb', '1462713104', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('41', '188', 'CUHotLdyY3wbHqNFbVCXB4xc6yW5y91bCd', '1205103113@qq.com', '1462714945', '55144.00000000', '3', 'e94172c03cb3beb10fc6a3eb57150d4f4f40886488e9c7c024b395184c852d58', '1462714945', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('42', '188', 'CUHotLdyY3wbHqNFbVCXB4xc6yW5y91bCd', '1205103113@qq.com', '1462715053', '0.28000000', '2', 'a8ee52c8b545e255955d1e0af530ebdb4c18af8f7b3c4540b9cb4bfb04df3fb2', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('43', '156', 'Cbh4k2HfXYWy5Davhxrcp4g2ChURPvfcGk', '375114009@qq.com', '1462715240', '20175.00000000', '3', 'b8bc2a7add884d451859a1f32b5e424b5ca8654765af816bd027340a572ddd2b', '1462715240', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('44', '83', 'CTyg2wntrSb9fU7aQxhUEUxXfmkifWzWzK', '846969750@qq.com', '1462715548', '70000.00000000', '3', '236935d6856dd6f9e87f803fde76690ebac2173adebcaad98ec8982e9ff72ac3', '1462715548', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('45', '166', 'CURwpoNALyeQadudJMHp497cpMA3LQqisF', '181828608@qq.com', '1462717797', '30.00000000', '3', '30609c7481307e676b365601cdeee8ba3d36fa7bbf432f2119e2b45d04400ed0', '1462717797', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('46', '166', 'CURwpoNALyeQadudJMHp497cpMA3LQqisF', '181828608@qq.com', '1462718445', '5009.00000000', '3', 'ab0a54c39f8fed096625c749e4a8acabc97b3b864fd5101ebcdb23c5657d0522', '1462718445', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('47', '199', 'CNe2PXUSEL39pagZU1C5LL7Xk1Wz5RbbhP', '825488767@qq.com', '1462720281', '5035.00000000', '3', '4af892cf97cb14f5a791ade3715cc0b5875ae758e9a73c1d383a4c3bfa53e191', '1462720281', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('48', '201', 'CQaAmaMBTBM5PuAcsVx78kTaYcRAmjnge5', '450297014@qq.com', '1462724190', '2635.00000000', '3', 'cb6b5c4bb04ed626afaafd0a6b4abdb68f30962fa17d0f79e5127b21e56baabe', '1462724190', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('49', '203', 'CTMmJgkSHgJ2BYrho1HgD8hEsv9iWeA11s', '23999567@qq.com', '1462725997', '5000.00000000', '3', 'c9cf1bda1f326c4d998c75185c32620e88d3617ba0297eab28167a271f5cc189', '1462725997', '25', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('50', '203', 'CTMmJgkSHgJ2BYrho1HgD8hEsv9iWeA11s', '23999567@qq.com', '1462732630', '5000.00000000', '3', '7fdc66fff664798bd62e1dc4b7f9a7d4f89a0dfaf51c661a2604a14891d79e37', '1462732630', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('51', '186', 'CYHK4T8XQCkFW1i4j5E4DVBi6nLfWLts4m', '493037313@qq.com', '1462754562', '5577.00000000', '3', 'c1bb6bc9ea0b6a66e2b93c1998e5e0d761567c860b48716e3d1ae27a36c60c29', '1462754562', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('52', '203', 'CTMmJgkSHgJ2BYrho1HgD8hEsv9iWeA11s', '23999567@qq.com', '1462758584', '15160.00000000', '3', 'c5f81672735dfcc6825a07573cd5f72c521802650064c5a313eb106d514fb532', '1462758584', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('53', '213', 'CZe9VWLZRYCqHdb2RDB3hzb5YycPpndW99', '894705853@qq.com', '1462759571', '11188.00000000', '3', 'f860d3647804cecdfd8151be89f85dcb8f529ce8b1577be8cca74b1fda3d1e4a', '1462759571', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('54', '216', 'CKav2Tr3REKZA9Duz2NJ2rZN8w4yeBkwrj', '390987415@qq.com', '1462760140', '1.00000000', '3', 'f406f070e75722f7b04351bdea3f7d21eb62926d6554237fc4388a49f3f80408', '1462760140', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('55', '216', 'CKav2Tr3REKZA9Duz2NJ2rZN8w4yeBkwrj', '390987415@qq.com', '1462760318', '9998.98000000', '3', 'a4ac913ea150c6c833e7b13958d7c2050fef0a58320c10aac8f72999d9518914', '1462760318', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('56', '223', 'CfC4W1ZKtfWe7YzzhGUbDrhNAbFHo3FmvV', '1726061521@qq.com', '1462766984', '3000.00000000', '3', '404dbe354097082175ee631d8dfdb0618e096898c566d7fd67b75ff5d4f35b04', '1462766984', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('57', '139', 'CSs96ie9wnJ1gnm8kSTHUWVjaSygmr4PVf', '1433635764@qq.com', '1462767420', '1052.00000000', '3', '81f5e1946e08a05c2a6882641627f3dc1ac12fb63c41ae8114e1e03604062e98', '1462767420', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('58', '215', 'CKKM7cHvgdt723RAg8VAmck8tMG2Rz6EJT', '799973987@qq.com', '1462767526', '1050.00000000', '3', '3eab1ae7ba5b94512bf5d39826f7de94d575b22344e0b46bb4bb3979d1ed2f38', '1462767526', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('59', '95', 'CZXMsXZCGNh7ekm8tfVx3xQxVeHY5eDchA', '290977632@qq.com', '1462770064', '5019.00000000', '3', '0053a10d59a7983b3fec9edf63ae39f714d303656a3e33d6a5aae1c7503355e0', '1462770064', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('60', '98', 'CVttUYwJNq643CFzyajmWWie1MukWuM83F', '9505525@qq.com', '1462773880', '1000.00000000', '3', 'c45b8ef93383242a6435881ad89b7b916842e1d1d873da247f7398a28d3f184e', '1462773880', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('61', '202', 'CUQFcy2JgzfHSzsjTAgrUFeeX8G68aQnYt', '845940601@qq.com', '1462774727', '1.00000000', '3', 'e391f1172d2dfa0d85c9c51968091f8c4f1da8d71aa924c9600fdfc458648586', '1462774727', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('62', '202', 'CUQFcy2JgzfHSzsjTAgrUFeeX8G68aQnYt', '845940601@qq.com', '1462774806', '499.00000000', '3', '06eb458bda96a0bc37fae6bcda10312b4b95402b9f45f4f4f5fc692bfaf307db', '1462774806', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('63', '166', 'CURwpoNALyeQadudJMHp497cpMA3LQqisF', '181828608@qq.com', '1462779705', '30.00000000', '3', 'd1086799114da367591969bc9b7856dc233d1f781c81256b7c928f7e46db2307', '1462779705', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('64', '166', 'CURwpoNALyeQadudJMHp497cpMA3LQqisF', '181828608@qq.com', '1462779748', '4500.00000000', '3', '5c1f617b0af099235eda3c461ae428917c926545f6d48b0c6efaf0d9d86fb46a', '1462779748', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('65', '238', 'CQfUMMc9sbrDAeLnJwNnM9LtHn7i5L1AUB', '842814519@qq.com', '1462780916', '20.00000000', '3', 'c19a47c1a4705530e1ff507227454cf82c6aa863f023bb278edf5d1f623897bb', '1462780916', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('66', '119', 'CT5G7h1frWi26nGPdMgFdaE9rksxXMPv6K', '992214871@qq.com', '1462784039', '22222.00000000', '3', '3bc8fcda6d56f24e3afb7891d463bbed201667586d7281920369fabb07f696c4', '1462784039', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('67', '166', 'CURwpoNALyeQadudJMHp497cpMA3LQqisF', '181828608@qq.com', '1462784427', '506.10000000', '3', 'dd67323c0c151d2d0ad78533c129ab82e83dd61e43d5fb7e2273ba93501c5139', '1462784427', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('68', '240', 'CVQCjrUMDerECSFFp8qASnUgBLxZon5dKa', '460010554@qq.com', '1462785291', '10077.41000000', '3', 'a3806430a519ec6a644e4034cd944ccdf79d3def217522a68b979d23f315eba4', '1462785291', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('69', '106', 'CfNJdryZw2Rrx4iGbujz1wkpp6bsFZEAWj', '632593787@qq.com', '1462788226', '5.00000000', '3', '88cbef80976ad8484c5e858b661a948563869fad16c94df020a81549ebd5f16b', '1462788226', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('70', '241', 'CQ7DAB85p4BZhWjnnR8YYJndWQH3QDzHFF', '1253737811@qq.com', '1462790912', '1.00000000', '3', '00efb029ae9b2b7c7af849d8e67477e82687e10ba457817e9be48accebea5c34', '1462790912', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('71', '187', 'CQGGZFVzy4k9wVcSHScBwYNRqvDTVdipf3', '371620969@qq.com', '1462788549', '1000.00000000', '3', 'afbe9906f3e322787164dd1fa847ee4657401b1cc2388dc296a5eb1386f0fc45', '1462788549', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('72', '241', 'CQ7DAB85p4BZhWjnnR8YYJndWQH3QDzHFF', '1253737811@qq.com', '1462791123', '1998.98000000', '3', '74c033a4b95871a9018c6f33ec08429b0cd40151199602d4723ac4a8ee49418e', '1462791123', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('73', '210', 'CWPxB3becLMwYWXYkxq2bSf1KESXjd5dL6', '514603496@qq.com', '1462789879', '5000.00000000', '3', '43b4b6c8aa352d58d01f24b9685b7f65bfdca6986942fdea7753b5865b7295c4', '1462789879', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('74', '141', 'CPnNp7HidB58E12jywsPrCePFjTRhuRSw7', '105117349@qq.com', '1462793826', '3704.32746500', '3', 'e3732853857c242ba542d88992f152239caf68f38690f2d7355c196b7cc5db6c', '1462793826', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('75', '243', 'CS3LWR6Gn6fmsXVWd66LABAS3FY2jVEw46', '944988837@qq.com', '1462795072', '200000.00000000', '3', '27ca6530a04ec3ee48849ee924ad35f75b35eadbdf9e821b8ca4d701bb7c5bc9', '1462795072', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('76', '150', 'CY9Z2mByNfd264zpJmPCocHnJnPxcdR38s', '372984796@qq.com', '1462795540', '10250.00000000', '3', 'c9e1013b9899e976f8040f743c2e34510cf58b14ec693f12ca0652f4386f469f', '1462795540', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('77', '242', 'CUBUS5vagusQKm7ksPouA5DjsvdVZsc6Ne', '1414153358@qq.com', '1462796257', '1.00000000', '3', '7a25f2a60e5c504510f2c48a67c3c964a83d5434bc3999cc7185ca6c26a42b79', '1462796257', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('78', '245', 'CJ3i6w5zgDVEvBHUYYWxRGVNMJ7rADdrs5', '823951613@qq.com', '1462796267', '5597.00000000', '3', 'e99fa887fa6cf72e32b85428c000c693de973c438ebf1df6c2897f18d6e1567b', '1462796267', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('79', '242', 'CUBUS5vagusQKm7ksPouA5DjsvdVZsc6Ne', '1414153358@qq.com', '1462796314', '2.00000000', '3', 'cad34e5d229cdcfe873fb0c2f196fce1f97f66e625109e5bc2a0980ef098ec49', '1462796314', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('80', '246', 'Ca5VCEC9jg7egriUfXiNkQp9VYE21woz1p', '462016171@qq.com', '1462797298', '5567.00000000', '2', '8341d7dddb954d0b5e10b341f105664755600f890d7700c26996dee9e0667ae1', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('81', '183', 'CYb5h8ZsPt7jjAjP5A9c9ViHBjzfaPc1Bk', '15271532393@163.com', '1462794925', '31578.93000000', '3', '01167adfbd15f90798078f22ccf374c9bc2afeb909a57be183f290e43461f0ad', '1462794925', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('82', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800057', '200.00000000', '1', 'c8b4072c8af835232ffcd750111ddc69e48b7007a706356632204bf06a131cca', '1462800063', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('83', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800206', '200.00000000', '1', '49f00b49b5351f048b6617c2a78036cae284959652b4477335f70a8c8fe973d5', '1462800211', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('84', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800289', '200.00000000', '1', '9bd373acf342c8a1b9773de3a55ef24db6e9404d16cb7f247181b44bd80839a3', '1462800294', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('85', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800334', '200.00000000', '1', '57ccf76e687e24f497355fe23e42f66a4d862993de3bd1242354d29b05cbdbab', '1462800339', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('86', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800375', '200.00000000', '1', '25c9809e9df66614693f96cf42816715e2aa82a2fce0e773518c7a6d5ac67bcb', '1462800380', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('87', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800413', '200.00000000', '1', '714589afe55a7a4861a85b1d6914ada5e9058e4a9a3a34f7086c258a8ce0015d', '1462800418', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('88', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800434', '200.00000000', '1', '034b387eeced4adaf091ce7c8da427e3abb38f77614babfeafbdb238b2f98578', '1462800439', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('89', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800451', '200.00000000', '1', '0024a5908ecc20889667d566b22ef86979973d4eac102b01873e7a7cb97be151', '1462800456', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('90', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800487', '200.00000000', '1', '5fb263bd993b9b9703522a53c12ee3538462aa76ea38d633d49b383cd3a3e805', '1462800492', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('91', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800503', '200.00000000', '1', '8aadec359ddfd47868eed4a981106b17e39772fbd3c5f48e056a61e80f5a4772', '1462800508', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('92', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800552', '200.00000000', '0', 'a48ee3ee54b21df2c6e81f8b6af75c27a27a44964cbe0ff752bda7c5a71b0d43', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('93', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800594', '200.00000000', '0', 'f674ccb4be8940671e41e098e4e5e3ae49c366a2b007501a3ddd20607d3ef492', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('94', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800631', '200.00000000', '0', '37d61a087be8f800586664bb0794f0e959227aee713bb41374db031e7529216f', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('95', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800654', '200.00000000', '0', '6093d27ef03a5f6008ccb9aa48686f2c4b2d814176562333289cb30074b13e47', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('96', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800671', '200.00000000', '0', 'bbd0140fbbd6affdb8f570e1f43612312b1df1d706116f73c0f31ffd1d331347', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('97', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800686', '200.00000000', '0', 'add6ea27615102c71c2e426c970f2023d148d9a1f29b889b792d6d0cbfbc4942', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('98', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800705', '200.00000000', '0', 'e5976984d97b744f2efabd050f9b1ae7a88083956f2912ad52144c710d093cf5', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('99', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800789', '200.00000000', '0', 'cc63994858a4b39cbaf637100912bcd2a99e1dd3f3599e1f49650b1f5f483fd7', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('100', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800803', '200.00000000', '0', '43ea7dbc72aa00198846e4fc2a4778aa5837fac8f626b26a5fc4eb90095e4c47', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('101', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800818', '200.00000000', '0', 'f925778f641829c25ce2fc68564deb3241691cf3f9cb5fd1b8cc3d71856e1ec8', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('102', '235', 'CchA17vUU1J7BfiWZE6aunTwDdBESBKcZX', '352246869@qq.com', '1462800825', '2500.00000000', '3', '8ab4b72c3729cbadfd9cf7cc81b027965b8a93ed454698c57defb8df79f9b9b7', '1462800825', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('103', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800832', '200.00000000', '0', 'c13bef7dacdd2963bb1c33ee1b70662cdd566aed6d75b4e82c600ab6aeda7c35', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('104', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800853', '200.00000000', '0', 'f17c6a64aa93957f5b588c60364aa2e2b1699723179d71a025d6176cf98e0544', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('105', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800871', '200.00000000', '0', '9762485e16e48296f44de45af7b509418b138cbac09cebb8d1ebb72d47026264', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('106', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800888', '200.00000000', '0', 'db7ff51c7dd300449a75aeab0960161314e2677cad8ccc3a2bb44f59d6067cb9', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('107', '203', 'CWR5zVVSv6CXC7ZrGUKhsUntH2AxnRBKba', '02', '1462800903', '200.00000000', '0', '1600ec1a6885b9295d68357ae79c1e40ee11f07c3cb7908046594cc21697a1b4', '0', '25', '0.1000', '199.8000');
INSERT INTO `yang_tibi` VALUES ('108', '203', 'CTMmJgkSHgJ2BYrho1HgD8hEsv9iWeA11s', '23999567@qq.com', '1462801005', '4200.00000000', '3', '85acc53676b20370d520e9d985fdc5b94b1eb82dc058e9e573d15f519407eb6d', '1462801005', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('109', '203', 'CTMmJgkSHgJ2BYrho1HgD8hEsv9iWeA11s', '23999567@qq.com', '1462801022', '800.00000000', '3', '2d29488398cf6b8df30fab207d63e26c8ebc252fd02539bc16af0c468b582a41', '1462801022', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('110', '177', 'CVPVCg9c8SdXwhN1XoHcZFTyBXVRBmiQJS', '50067861@qq.com', '1462801556', '25062.00000000', '3', '479dad5c45001c13f3e74c103e8dcbee5bb1f5ba34d9b26f972104c60141a9cf', '1462801556', '25', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('111', '202', 'CUQFcy2JgzfHSzsjTAgrUFeeX8G68aQnYt', '845940601@qq.com', '1462802427', '503.00000000', '3', '1a49c912306517b8229d897276273d23808ba35fe58afa132982a25b9b4c0728', '1462802427', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('112', '177', 'CVPVCg9c8SdXwhN1XoHcZFTyBXVRBmiQJS', 'bf', '1462802431', '1.00000000', '1', 'bdd5108ed6745d4dee84d5e74f0b706cc9ff5ef91f93a5346ddebb505bba46db', '1462802436', '25', '0.1000', '0.9990');
INSERT INTO `yang_tibi` VALUES ('113', '234', 'CUN8gNTj51fDSc6vmgsoYmAEV74zXcnMRp', '173606896@qq.com', '1462807542', '1.00000000', '3', '5f36f3876f5083ed7de75c2492b240716f0804d3f8c565b8f540e2c9fdfc8176', '1462807542', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('114', '234', 'CUN8gNTj51fDSc6vmgsoYmAEV74zXcnMRp', '173606896@qq.com', '1462807705', '5038.90000000', '3', '33137e0e73387ac16c1a8ebb9f58e065de104c10822d164060079ee009fa23ee', '1462807705', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('115', '232', 'Ced8ZLZQm2xKbMePWX5sycLdvNb4gYPKkS', '751438376@qq.com', '1462853627', '5564.60780000', '2', '27f74b76639d9079ff3094ec64fe6e820b2bbc190b41d563e5543a3dd9974835', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('116', '252', 'CU8QvEYoSDVxKn4NUWZy8wyUgSEtcaiqVC', '289203766@qq.com', '1462853569', '526.00000000', '3', '7540a6e0c9aa716986b90bc27b1a1321e022c87502a13c488ee8f87907ce5045', '1462853569', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('117', '81', 'CWtoEAascjz4Nv1nfEmFjeeb3qzbHKyNuA', '1156276238@qq.com', '1462856034', '100000.00000000', '3', 'c8f25593804aa42400f76819f88da3f2ff057ea3eb143b181e8ee999f2281be1', '1462856034', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('118', '81', 'CWtoEAascjz4Nv1nfEmFjeeb3qzbHKyNuA', '1156276238@qq.com', '1462856240', '100000.00000000', '3', '3adba2b816308dad8e55fdb300461e85ed9fc6d9f6f3af7193da0efb5fe657ec', '1462856240', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('119', '81', 'CWtoEAascjz4Nv1nfEmFjeeb3qzbHKyNuA', '1156276238@qq.com', '1462856542', '80000.00000000', '3', '0f765b4c2b413edfc07c9e989e2fa819f000e8a561802cde295188541079b100', '1462856542', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('120', '258', 'CRrd62AEYbmaQXgSWsFtM14EtWQhig5HzE', '785431580@qq.com', '1462858222', '500.00000000', '3', '98067a2bbecc58ee1f58b196d726b0024e0a64ed968b0e4f7b53a4e66c0e8e9b', '1462858222', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('121', '261', 'CeNA5rEYJNQ4dy3FssBEanDUopY1bC1cpL', '529400265@qq.com', '1462858269', '2500.00000000', '3', 'f260d58690f057cf07b7cf4caf51e268af1de54c84fbeae153891dac408b1045', '1462858269', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('122', '260', 'CQgmDUBsDR9et6nyLdR7q8cFCR4Si63cHB', '706990674@qq.com', '1462862705', '11143.10000000', '3', '91658dd544a586e5da15faef5cb67f7bf44523f47753f9f3bfce7649b0e58bf6', '1462862705', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('123', '81', 'CWtoEAascjz4Nv1nfEmFjeeb3qzbHKyNuA', '1156276238@qq.com', '1462868020', '50000.00000000', '3', 'a93daea8060724c97d225b7a570ea35f10058424e5f177c5aa30c467c93bfb8e', '1462868020', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('124', '264', 'CS7Eci6AwT2gy1bjvBjnkyr4gpyrqxPk1F', '2781891977@qq.com', '1462869096', '1.00000000', '3', 'e94f49b176987bfe9834fba5cfe7edc662df1081070d0ebf40ded8984ca6f1fb', '1462869096', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('125', '264', 'CS7Eci6AwT2gy1bjvBjnkyr4gpyrqxPk1F', '2781891977@qq.com', '1462869159', '100.00000000', '3', '4e1a094a17879fecb4a5400b18216e9b6bacdd4ea3b2a52145e42dd84bb6e294', '1462869159', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('126', '264', 'CS7Eci6AwT2gy1bjvBjnkyr4gpyrqxPk1F', '2781891977@qq.com', '1462869238', '2408.65900000', '3', 'bc9115abb9c8662ad6112db222d72eb6f54f03a65297a5799a8ba32a45945dfa', '1462869238', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('127', '106', 'CfNJdryZw2Rrx4iGbujz1wkpp6bsFZEAWj', '632593787@qq.com', '1462869985', '100.00000000', '3', '1ac7b3053ed3fdd9e0b5a186114cb1db05d0957a820e092ae70e81ca9d7df209', '1462869985', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('128', '106', 'CfNJdryZw2Rrx4iGbujz1wkpp6bsFZEAWj', '632593787@qq.com', '1462870151', '902.30000000', '3', 'c5e801b28bd9fb68fca0c797ffc30ab906837d6569c6cf45904a50e9c7387a27', '1462870151', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('129', '154', 'CT31sUpmevkWVr1dzjYgf3oC1awCdFsFvX', '836529477@qq.com', '1462869560', '25066.00000000', '3', 'df70b0850dbcaa2e06a3fadc6153841c98c5dab607919adcef968de01c319517', '1462869560', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('130', '90', 'CSAD2jfJqmJAf8yDCWGiACZauLKudHrrZZ', '350795056@qq.com', '1462870683', '14999.00000000', '3', 'f58d65fcc8eb128678a942cbc653d5164869454c73965915194fffd464d75f12', '1462870683', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('131', '268', 'CMA2T53aDDWxpkSA61XKBTdqFEnw8BBq17', '584475894@qq.com', '1462877796', '5036.00000000', '3', '5ff7bdfffe2d677c06c829203a28688c5b938882dc1007ebbd9c96d5ae3c6555', '1462877796', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('132', '217', 'CU9ZzmUuXZXQo2JeasiuSHcWTkUNpaEuSJ', 'ew123123@qq.com', '1462881888', '3000.00000000', '3', '650b283e4d492a8e915df8623811456dbe2a5635a047240d83268fef26013f91', '1462881888', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('133', '165', 'CSpum8c9xsQ2fKzXmYWeBjzgjJDPtLjnCf', '781792404@qq.com', '1462886387', '2519.00000000', '3', 'e00ec77e8cda51171470cb3d3c2ef2e871bf3126b7be3081b9d412b084a162f3', '1462886387', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('134', '130', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz', '412237670@qq.com', '1462888747', '1.00000000', '3', 'e597a5a4deb38e2518dc9575e4d1cf0ea8604f9022e0b768fa9e74c19e5a57e5', '1462888747', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('135', '122', 'CSpsuZcsFB1CMXkR2inbPaay2tYMZGCLzQ', '1329481748@qq.com', '1462888935', '10.00000000', '3', 'cfcb714ec3862d7155b1902c23649b941408915fcc38b561888b330d7437751b', '1462888935', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('136', '130', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz', '412237670@qq.com', '1462889978', '10000.00000000', '3', '1c4dda38240ebbf6dad886745fa4bcb0025229fb0b1798c34254c4a6a34b33ba', '1462889978', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('137', '130', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz', '412237670@qq.com', '1462890211', '5000.00000000', '3', '17e90c1a21795716eca52fc9039f43e62ccff4bf136ece0019e968dc358557ee', '1462890211', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('138', '130', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz', '412237670@qq.com', '1462890250', '5000.00000000', '3', '2b6c5b95f72368e18f2e0d0636507efc4db8d99442a0c73464692d53e0500366', '1462890250', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('139', '277', 'CbUvvBvKczGB7uoRUFnTLCGvAxgAg1eQSP', '58803233@qq.com', '1462890276', '2999.90000000', '3', 'b31ee9c8654dfa5cc9255c7f8c1943ac69b478841fecddfbb11d61edff9851a4', '1462890276', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('140', '130', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz', '412237670@qq.com', '1462890399', '5000.00000000', '3', 'f10215420fce16b1e4d98b73adf1ada05bf06a2933aa21dd7d904ef3a373532b', '1462890399', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('141', '130', 'CKLNzYfwyF1ejCbRLQNtQ5CpmctinLnoMz', '412237670@qq.com', '1462890466', '4589.00000000', '3', '7dfb3f2d1e754d1536cdc4d642643839c28e1fee659307a756be64c30689bd8e', '1462890466', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('142', '122', 'CSpsuZcsFB1CMXkR2inbPaay2tYMZGCLzQ', '1329481748@qq.com', '1462890656', '993.00000000', '3', '2d07bf6cec4b502c7ef0ba6b1f3a23f0e5b3053c741c3b4b4d2ec6b1f0ff1f80', '1462890656', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('143', '153', 'CNSGSQUxEsoLHZXKM29aeUzyjN8BfMKBvM', '798533840@qq.com', '1462927623', '38.00000000', '3', '8f0b7337e02f7788e44819acc1fba9e30efb3bba37064ecd8daf6c49d57cdc10', '1462927623', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('144', '153', 'CNSGSQUxEsoLHZXKM29aeUzyjN8BfMKBvM', '798533840@qq.com', '1462933853', '5000.36000000', '3', '986b0c3f5107a4700ac6f5a692dcb2e369d4117b4382180b6a2957e8e0cae634', '1462933853', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('145', '284', 'CN5TaHNbCNC9w6Hp3on63YUSZfMWST97NJ', '603621600@qq.com', '1462928575', '2892.00000000', '3', '5bf84b7d2a2b566a6c11200b534896acf3f6bd9197152c28453e8b3de10f76c8', '1462928575', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('146', '102', 'CV5VkuUmpe1HoTZa2g69VbApUc5wXztWQ1', 'sushayang@126.com', '1462940285', '1.00000000', '3', '0954823f8dc89ec1854db675860130043217c0b9bfa0920fd9f193c47a52358c', '1462940285', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('147', '101', 'CTidGhyGu7xhtEkgok43ozkkCTrZ2WbuBW', 'henry412@foxmail.com', '1462942831', '2500.00000000', '3', '0b78b0aed452c11ce827fe58f1d5ddf75f9b4a7ca5ad58bef41a441c577c3737', '1462942831', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('148', '101', 'CTidGhyGu7xhtEkgok43ozkkCTrZ2WbuBW', 'henry412@foxmail.com', '1462947125', '4.00000000', '3', '55ef02ed1a5533c06c67361b432c381791a3d31e7a66029ad7f141f7083e9e33', '1462947125', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('149', '287', 'CKgXEE3arHKtbsy1nfNS8tbEqT83vAgCAQ', '2304789426@qq.com', '1462950004', '3882.00000000', '3', '58225a733a142c4c3b2cc9bfb64ea5a0d10aee28c3a2158af45c61e24f449a7a', '1462950004', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('150', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462952201', '1.00000000', '3', '7d095010cd0163a3a546a6a24edb672e2ff583866b1d7a0415b92b155985a816', '1462952201', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('151', '250', 'CZhGguqhPi3Whb2zA1UGXH4SXHaQRdG2fi', '442641034@qq.com', '1462952765', '1.00000000', '3', '7ab43d5d95a554a8348fcc0dba50656be1a835aaeaf5e9e0a71810d7addca777', '1462952765', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('152', '250', 'CZhGguqhPi3Whb2zA1UGXH4SXHaQRdG2fi', '442641034@qq.com', '1462953082', '10563.00000000', '3', '878a2584902e264a28f5a41243a601143c4da00ebba97b296baad8ab8f7397f3', '1462953082', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('153', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462953958', '1.00000000', '3', 'bc046a8f621d29bbe9ec01dbaa10aa0590a775b1c28a7f8eb0d0264ecf12308a', '1462953958', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('154', '116', 'CWobdTZgdyCmheMVL2JfQaKq2AFtigG2jX', '516914833@qq.com', '1462954761', '3979.99000000', '3', '143da310d0d407593af15ea2d35198d6546c67d3263d7bba02ac5fd828306845', '1462954761', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('155', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462955751', '5000.00000000', '3', '9f567894d3ca7d314b33320cbbf0cb1394c22244fa8036d71cb9762d627a7fe8', '1462955751', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('156', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462956195', '5000.00000000', '3', 'd8704c4fb58c3bce1865b67cf9a3b323016a4e727788ccd7cb028d23f518f4ff', '1462956195', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('157', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462956197', '5000.00000000', '3', '40a797a29181b5d10037867be73b2cf665d195d8747529d486b627fb41a435af', '1462956197', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('158', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462956757', '5000.00000000', '3', '10350622ece361f9fd8eaf96b1e1a54d15e152f9e2eb8cdcff99fdf96319d2a6', '1462956757', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('159', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462957724', '3000.00000000', '3', 'f8a319d7426c33f593ff20c0fc901b8f46663eaf6324101cb04a0618d41fedc1', '1462957724', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('160', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462958007', '3000.00000000', '3', 'a3af60c2a6599e9ace765894a0f7917645c5778875e3ac5abbd0bb8c9ca2a790', '1462958007', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('161', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462958323', '3000.00000000', '3', 'eae99f2960a886190a03ef7a2d9fbb0d3ce8b595211861db9dd1dd124d8b429c', '1462958323', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('162', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462958604', '2056.00000000', '3', '5e7225c1c0900a92dbceb310f0ad305de0eb56bdd0db0fd8c0148b7d50133bbb', '1462958604', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('163', '117', 'CctjuZqqQEZcmi22bfhXgJ5SwyS21FNE3Y', '1067874362@qq.com', '1462958733', '0.63000000', '2', '3ad63a32b4f076edeb012a5d99f52197abfdef4499180b0ae815bed3a59ef31f', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('164', '251', 'CTnjZLEkk7jxwwvAHuTFy6RWY6PHkErTBM', '573083033@qq.com', '1462959913', '1.00000000', '3', '8247aaa4f734cf489c83199fa99f281065aab417bac777607592eb11eb1f39ab', '1462959913', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('165', '251', 'CTnjZLEkk7jxwwvAHuTFy6RWY6PHkErTBM', '573083033@qq.com', '1462960316', '5000.00000000', '3', '7b03843114f2ac3caf68bc294983a07244f73b82c19b53d9a5e8c17e58a26661', '1462960316', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('166', '251', 'CTnjZLEkk7jxwwvAHuTFy6RWY6PHkErTBM', '573083033@qq.com', '1462960571', '5065.00000000', '3', '119a0027575657f09940664f8fe51b9627e3ef1ced0d26e8d077133d64674870', '1462960571', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('167', '317', 'CHwX39Xt6cEJ4DXiwLz2dEs38wuuszMBRf', '3149009@qq.com', '1462961960', '1.00000000', '3', '2d2154be14fb6a99ad2d920276aa8b006b1aecabbd470ccb30c0920349451ecb', '1462961960', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('168', '319', 'CbHXQVpS7gEr8ieBk5RKjmduoF9Ry5WJ7z', '77259498@qq.com', '1462964366', '0.50000000', '3', '4090d2a6e5f15a2fc6e6093c53737aa898e895fadb4aa560c6296f1b645e6296', '1462964366', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('169', '286', 'CJxQCeMPWnAsPCjnGjx7X66niP5VGGcVNh', '329725403@qq.com', '1462968449', '5039.00000000', '3', 'b0db5eec9247b45e2f2479604daa44a99ee058f4a91192891dda46ea084a6e6f', '1462968449', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('170', '321', 'CLRm4nXPrA28t2RxwbB1JK3zNJobYksCqE', 'sdjiaai@163.com', '1462970772', '1000.00000000', '3', 'ff4b9a5dfc471f1addb476b9cdf7700e5e35561a4ef20edac51bcf146678406c', '1462970772', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('171', '321', 'CLRm4nXPrA28t2RxwbB1JK3zNJobYksCqE', 'sdjiaai@163.com', '1462970847', '2000.00000000', '3', '458f3f1cb49b8506b739a8c41a5821ddfaf48fe0728a14400ece525b5a400a8a', '1462970847', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('172', '321', 'CLRm4nXPrA28t2RxwbB1JK3zNJobYksCqE', 'sdjiaai@163.com', '1462970914', '762.00000000', '3', 'bf0eef81179278e086757511ce03a9277c2943b7feae0f716568d2540b32c5d7', '1462970914', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('173', '322', 'CSjs6J4HJdg46Kk4KXoK5x7Kk3BA1bt2t4', '631169542@qq.com', '1462972199', '4000.00000000', '3', '0ce543cf506dafbe63243b3a35c4d0dc36124d851998ae1561664699d6b94b26', '1462972199', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('174', '342', 'CRJBPeDxeWahdmkSALpy6ZYQwH3ttDo9fS', 'occuit@qq.com', '1463017426', '5041.55000000', '3', '0b0d5b0ac47aa0867ebd3f3ac9c93ed4d65731961ab85dd809657b6b92b06581', '1463017426', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('175', '321', 'CLRm4nXPrA28t2RxwbB1JK3zNJobYksCqE', 'sdjiaai@163.com', '1463018898', '11344.00000000', '3', '8ed30706082be2c076ebfb3fbf42bb98582bf230ad2c94d1155f58116f6e35d4', '1463018898', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('176', '133', 'CMxM1hvtdjtJRK3Q999GNq1hFhQvnVMSvQ', '757387777@qq.com', '1463060531', '999.00000000', '2', '746b6127a83744da0b8159373b02243507657c1813cee47681c2f36655e181d3', '0', '29', '0.0000', '0.0000');
INSERT INTO `yang_tibi` VALUES ('177', '269', 'CbuDdFQCPxywpyLEX17zUVZBySUPjZMxW6', '583623270@qq.com', '1463065130', '5041.00000000', '2', '6942cbb5e72a00519dcc4ecdbdb091b37ec390d7f4d2b402a981393c93350a98', '0', '29', '0.0000', '0.0000');

-- ----------------------------
-- Table structure for `yang_trade`
-- ----------------------------
DROP TABLE IF EXISTS `yang_trade`;
CREATE TABLE `yang_trade` (
  `trade_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '交易表 交易表的id',
  `trade_no` varchar(32) NOT NULL COMMENT '订单号',
  `member_id` int(10) NOT NULL COMMENT '买家uid即member_id',
  `currency_id` int(10) NOT NULL COMMENT '货币id',
  `currency_trade_id` int(10) NOT NULL,
  `price` decimal(20,4) NOT NULL COMMENT '价格',
  `num` decimal(20,4) NOT NULL COMMENT '数量',
  `money` decimal(20,4) NOT NULL,
  `fee` decimal(20,4) NOT NULL COMMENT '手续费',
  `type` char(10) NOT NULL COMMENT 'buy 或sell',
  `add_time` int(10) NOT NULL COMMENT '成交时间 （添加表的时间）',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`trade_id`),
  KEY `type` (`type`),
  KEY `id` (`trade_id`),
  KEY `member_id` (`member_id`),
  KEY `currency_id` (`currency_id`),
  KEY `currency_trade_id` (`currency_trade_id`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_trade
-- ----------------------------
INSERT INTO `yang_trade` VALUES ('355', 'T1462541338', '87', '29', '0', '0.2800', '900.0000', '252.0000', '0.0000', 'sell', '1462541338', '0');
INSERT INTO `yang_trade` VALUES ('354', 'T1462541338', '78', '29', '0', '0.2800', '900.0000', '252.0000', '0.0000', 'buy', '1462541338', '0');
INSERT INTO `yang_trade` VALUES ('353', 'T1462541338', '87', '29', '0', '0.2600', '100.0000', '26.0000', '0.0000', 'sell', '1462541338', '0');
INSERT INTO `yang_trade` VALUES ('352', 'T1462541338', '78', '29', '0', '0.2600', '100.0000', '26.0000', '0.0000', 'buy', '1462541338', '0');
INSERT INTO `yang_trade` VALUES ('351', 'T1462541004', '87', '29', '0', '0.1300', '1000.0000', '130.0000', '0.0000', 'sell', '1462541004', '0');
INSERT INTO `yang_trade` VALUES ('350', 'T1462541004', '87', '29', '0', '0.1300', '1000.0000', '130.0000', '0.0000', 'buy', '1462541004', '0');
INSERT INTO `yang_trade` VALUES ('349', 'T1462540348', '87', '29', '0', '0.1100', '500.0000', '55.0000', '0.0000', 'sell', '1462540348', '0');
INSERT INTO `yang_trade` VALUES ('348', 'T1462540348', '78', '29', '0', '0.1100', '500.0000', '55.0000', '0.0000', 'buy', '1462540348', '0');
INSERT INTO `yang_trade` VALUES ('347', 'T1462540296', '87', '29', '0', '0.1000', '500.0000', '50.0000', '0.0000', 'sell', '1462540296', '0');
INSERT INTO `yang_trade` VALUES ('346', 'T1462540296', '78', '29', '0', '0.1000', '500.0000', '50.0000', '0.0000', 'buy', '1462540296', '0');
INSERT INTO `yang_trade` VALUES ('356', 'T1462544669', '87', '29', '0', '0.2800', '100.0000', '28.0000', '0.0000', 'buy', '1462544669', '0');
INSERT INTO `yang_trade` VALUES ('357', 'T1462544669', '87', '29', '0', '0.2800', '100.0000', '28.0000', '0.0000', 'sell', '1462544669', '0');
INSERT INTO `yang_trade` VALUES ('358', 'T1462544669', '87', '29', '0', '0.3000', '222.0000', '66.6000', '0.0000', 'buy', '1462544669', '0');
INSERT INTO `yang_trade` VALUES ('359', 'T1462544669', '78', '29', '0', '0.3000', '222.0000', '66.6000', '0.0000', 'sell', '1462544669', '0');
INSERT INTO `yang_trade` VALUES ('360', 'T1462544669', '87', '29', '0', '0.3000', '678.0000', '203.4000', '0.0000', 'buy', '1462544669', '0');
INSERT INTO `yang_trade` VALUES ('361', 'T1462544669', '87', '29', '0', '0.3000', '678.0000', '203.4000', '0.0000', 'sell', '1462544669', '0');
INSERT INTO `yang_trade` VALUES ('362', 'T1462587781', '87', '29', '0', '0.2300', '1000.0000', '230.0000', '0.0000', 'buy', '1462587781', '0');
INSERT INTO `yang_trade` VALUES ('363', 'T1462587781', '87', '29', '0', '0.2300', '1000.0000', '230.0000', '0.0000', 'sell', '1462587781', '0');
INSERT INTO `yang_trade` VALUES ('364', 'T1462587878', '87', '29', '0', '0.3000', '500.0000', '150.0000', '0.0015', 'sell', '1462587878', '0');
INSERT INTO `yang_trade` VALUES ('365', 'T1462587878', '87', '29', '0', '0.3000', '500.0000', '150.0000', '0.0050', 'buy', '1462587878', '0');
INSERT INTO `yang_trade` VALUES ('366', 'T1462587941', '87', '29', '0', '0.3000', '1000.0000', '300.0000', '0.0030', 'sell', '1462587941', '0');
INSERT INTO `yang_trade` VALUES ('367', 'T1462587941', '87', '29', '0', '0.3000', '1000.0000', '300.0000', '0.0100', 'buy', '1462587941', '0');

-- ----------------------------
-- Table structure for `yang_website_bank`
-- ----------------------------
DROP TABLE IF EXISTS `yang_website_bank`;
CREATE TABLE `yang_website_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(125) NOT NULL,
  `bank_adddress` varchar(252) NOT NULL,
  `bank_no` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_website_bank
-- ----------------------------
INSERT INTO `yang_website_bank` VALUES ('3', '黄栋', '广西南宁', '6228480831805917612', '1');

-- ----------------------------
-- Table structure for `yang_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `yang_withdraw`;
CREATE TABLE `yang_withdraw` (
  `withdraw_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '提现表',
  `uid` int(32) NOT NULL COMMENT '用户id',
  `all_money` decimal(10,2) NOT NULL COMMENT '全部价格',
  `withdraw_fee` decimal(10,2) NOT NULL COMMENT '手续费',
  `money` decimal(10,2) NOT NULL COMMENT '实际价格',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `order_num` varchar(32) NOT NULL COMMENT '订单号',
  `check_time` int(10) NOT NULL COMMENT '审核时间',
  `admin_uid` int(32) NOT NULL COMMENT '审核操作人(管理员）',
  `bank_id` int(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3' COMMENT '1不通过2通过3审核中',
  PRIMARY KEY (`withdraw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yang_withdraw
-- ----------------------------
INSERT INTO `yang_withdraw` VALUES ('1', '0', '123.00', '0.00', '123.00', '1458195580', '60-1458195580', '0', '0', '1', '3');
INSERT INTO `yang_withdraw` VALUES ('17', '0', '123.00', '3.69', '123.00', '1458270065', '59-1458270065', '0', '0', '17', '3');
INSERT INTO `yang_withdraw` VALUES ('9', '0', '123.00', '0.00', '123.00', '1458196059', '60-1458196059', '0', '0', '16', '3');
INSERT INTO `yang_withdraw` VALUES ('12', '0', '123.00', '0.00', '123.00', '1458204559', '60-1458204559', '1459301718', '1', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('13', '0', '123.00', '0.00', '123.00', '1458204601', '60-1458204601', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('14', '0', '213.00', '0.00', '213.00', '1458225111', '60-1458225111', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('15', '0', '123.00', '0.00', '123.00', '1458225147', '60-1458225147', '0', '0', '10', '3');
INSERT INTO `yang_withdraw` VALUES ('16', '0', '123.00', '3.69', '123.00', '1458226415', '60-1458226415', '0', '0', '10', '3');

-- ----------------------------
-- Procedure structure for `addScore`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addScore`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addScore`(_uid int, _amount float)
begin
	
	declare bonus float;
	select `value` into bonus from ssc_params where name='scoreProp' limit 1;
	
	set bonus=bonus*_amount;
	
	if bonus then
		update ssc_members u, ssc_params p set u.score = u.score+bonus, u.scoreTotal=u.scoreTotal+bonus where u.`uid`=_uid;
	end if;
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `clearData`
-- ----------------------------
DROP PROCEDURE IF EXISTS `clearData`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clearData`(dateInt int(11))
begin

	declare endDate int;
	set endDate = dateInt;
	-- set endDate = unix_timestamp(dateString)+24*3600;

	-- 投注
	delete from ssc_bets where kjTime < endDate and lotteryNo <> '';
	-- 帐变
	delete from ssc_coin_log where actionTime < endDate;
	-- 管理员日志
	delete from ssc_admin_log where actionTime < endDate;
	-- 会员登录session
	delete from ssc_member_session where accessTime < endDate;
	-- 提现
	delete from ssc_member_cash where actionTime < endDate and state <> 1;
	-- 充值
	delete from ssc_member_recharge where actionTime < endDate and state <> 0;
	delete from ssc_member_recharge where actionTime < endDate-24*3600 and state = 0;
		
	-- select 1, _fanDian, _parentId;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `conComAll`
-- ----------------------------
DROP PROCEDURE IF EXISTS `conComAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `conComAll`(baseAmount float, parentAmount float, parentLevel int)
begin

	declare conUid int;
	declare conUserName varchar(255);
	declare tjAmount float;
	declare done int default 0;	
	declare dateTime int default unix_timestamp(curdate());

	declare cur cursor for
	select b.uid, b.username, sum(b.`mode` * b.actionNum * b.beiShu) _tjAmount from ssc_bets b where b.kjTime>=dateTime and b.uid not in(select distinct l.extfield0 from ssc_coin_log l where l.liqType=53 and l.actionTime>=dateTime and l.extfield2=parentLevel) group by b.uid having _tjAmount>=baseAmount;
	declare continue HANDLER for not found set done=1;

	-- select baseAmount , parentAmount , parentLevel;
	
	open cur;
		repeat fetch cur into conUid, conUserName, tjAmount;
		-- select conUid, conUserName, tjAmount;
		if not done then
			call conComSingle(conUid, parentAmount, parentLevel);
		end if;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `conComSingle`
-- ----------------------------
DROP PROCEDURE IF EXISTS `conComSingle`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `conComSingle`(conUid int, parentAmount float, parentLevel int)
begin

	declare parentId int;
	declare superParentId int;
	declare conUserName varchar(255) character set utf8;
	declare p_username varchar(255) character set utf8;

	declare liqType int default 53;
	declare info varchar(255) character set utf8;

	declare done int default 0;
	declare cur cursor for
	select p.uid, p.parentId, p.username, u.username from ssc_members p, ssc_members u where u.parentId=p.uid and u.`uid`=conUid; 
	declare continue HANDLER for not found set done=1;

	open cur;
		repeat fetch cur into parentId, superParentId, p_username, conUserName;
		-- select parentId, superParentId, p_username, conUserName, parentLevel;
		if not done then
			if parentLevel=1 then
				if parentId and parentAmount then
					set info=concat('下级[', conUserName, ']消费佣金');
					call setCoin(parentAmount, 0, parentId, liqType, 0, info, conUid, conUserName, parentLevel);
				end if;
			end if;
			
			if parentLevel=2 then
				if superParentId and parentAmount then
					set info=concat('下级[', conUserName, '<=', p_username, ']消费佣金');
					call setCoin(parentAmount, 0, superParentId, liqType, 0, info, conUid, conUserName, parentLevel);
				end if;
			end if;
		end if;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `consumptionCommission`
-- ----------------------------
DROP PROCEDURE IF EXISTS `consumptionCommission`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consumptionCommission`()
begin

	declare baseAmount float;
	declare baseAmount2 float;
	declare parentAmount float;
	declare superParentAmount float;

	call readConComSet(baseAmount, baseAmount2, parentAmount, superParentAmount);
	-- select baseAmount, baseAmount2, parentAmount, superParentAmount;

	if baseAmount>0 then
		call conComAll(baseAmount, parentAmount, 1);
	end if;
	if baseAmount2>0 then
		call conComAll(baseAmount2, superParentAmount, 2);
	end if;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `delUser`
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUser`(_uid int)
begin
	-- 投注
	delete from ssc_bets where `uid`=_uid;
	-- 帐变
	delete from ssc_coin_log where `uid`=_uid;
	-- 管理员日志
	delete from ssc_admin_log where `uid`=_uid;
	-- 会员登录session
	delete from ssc_member_session where `uid`=_uid;
	-- 提现
	delete from ssc_member_cash where `uid`=_uid;
	-- 充值
	delete from ssc_member_recharge where `uid`=_uid;
	-- 银行
	delete from ssc_member_bank where `uid`=_uid;
	-- 用户
	delete from ssc_members where `uid`=_uid;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `delUsers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUsers`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUsers`(_coin float(10,2), _date int)
begin
	declare uid_del int;
	
	declare done int default 0;
	declare cur cursor for
	select distinct u.uid from ssc_members u, ssc_member_session s where u.uid=s.uid and (u.coin+u.fcoin)<_coin and s.accessTime<_date and not exists(select u1.`uid` from ssc_members u1 where u1.parentId=u.`uid`)
union 
select distinct u2.uid from ssc_members u2 where (u2.coin+u2.fcoin)<_coin and u2.regTime<_date and not exists (select s1.uid from ssc_member_session s1 where s1.uid=u2.uid);
	declare continue HANDLER for not found set done = 1;

	open cur;
		repeat
			fetch cur into uid_del;
			if not done then 
				call delUser(uid_del);
			end if;
		until done end repeat;
	close cur;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getQzInfo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getQzInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getQzInfo`(_uid int, inout _fanDian float, inout _parentId int)
begin

	declare done int default 0;
	declare cur cursor for
	select fanDian, parentId from ssc_members where `uid`=_uid;
	declare continue HANDLER for not found set done = 1;

	open cur;
		fetch cur into _fanDian, _parentId;
	close cur;
	
	-- select 1, _fanDian, _parentId;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `kanJiang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `kanJiang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `kanJiang`(_betId int, _zjCount int, _kjData varchar(255) character set utf8, _kset varchar(255) character set utf8)
begin
	
	declare `uid` int;									-- 抢庄人ID
	declare qz_uid int;									-- 抢庄人ID
	declare qz_username varchar(32) character set utf8;	-- 抢庄人用户名
	declare qz_fcoin varchar(32);						-- 抢庄冻结资金
	
	declare parentId int;								-- 投注人上级ID
	declare username varchar(32) character set utf8;	-- 投注人帐号
	
	-- 投注
	declare actionNum int;
	declare serializeId varchar(64);
	declare actionData longtext character set utf8;
	declare actionNo varchar(255);
	declare `type` int;
	declare playedId int;
	
	declare isDelete int;
	
	declare fanDian float;		-- 返点
	declare `mode` float;		-- 模式
	declare beiShu int;			-- 倍数
	declare zhuiHao int;		-- 追号剩余期数
	declare zhuiHaoMode int;	-- 追号是否中奖停止追号
	declare bonusProp float;	-- 赔率
	
	declare amount float;					-- 投注总额
	declare zjAmount float default 0;		-- 中奖总额
	declare _fanDianAmount float default 0;	-- 总返点的钱
	declare chouShuiAmount float default 0;	-- 总抽水钱
	
	declare liqType int;
	declare info varchar(255) character set utf8;
	
	declare _parentId int;		-- 处理上级时返回
	declare _fanDian float;		-- 用户返点
	declare qz_fanDian float;	-- 抢庄人返点

	-- 提取投注信息
	declare done int default 0;
	declare cur cursor for
	select b.`uid`, u.parentId, u.username, b.qz_uid, b.qz_username, b.qz_fcoin, b.actionNum, b.serializeId, b.actionData, b.actionNo, b.`type`, b.playedId, b.isDelete, b.fanDian, u.fanDian, b.`mode`, b.beiShu, b.zhuiHao, b.zhuiHaoMode, b.bonusProp, b.actionNum*b.`mode`*b.beiShu amount from ssc_bets b, ssc_members u where b.`uid`=u.`uid` and b.id=_betId;
	declare continue handler for sqlstate '02000' set done = 1;
	
	open cur;
		repeat
			fetch cur into `uid`, parentId, username, qz_uid, qz_username, qz_fcoin, actionNum, serializeId, actionData, actionNo, `type`, playedId, isDelete, fanDian, _fanDian, `mode`, beiShu, zhuiHao, zhuiHaoMode, bonusProp, amount;
		until done end repeat;
	close cur;
	
	-- select `uid`, parentId, username, qz_uid, qz_username, qz_fcoin, actionNum, serializeId, actionData, actionNo, `type`, playedId, isDelete, fanDian, _fanDian, `mode`, beiShu, zhuiHao, zhuiHaoMode, bonusProp, amount;

	-- 开始事务
	start transaction;
	if md5(_kset)='47df5dd3fc251a6115761119c90b964a' then
		
		-- 已撤单处理，不进行处理
		if isDelete=0 then
			
			-- 开奖扣除冻结资金
			-- set liqType=108;
			-- set info='开奖扣除冻结资金';
			-- call setCoin(0, - amount, `uid`, liqType, `type`, info, _betId, '', '');
			
			-- 处理积分
			call addScore(`uid`, amount);
		
			-- select fanDian, parentId, qz_uid;
			-- 处理自己返点
			if fanDian then
				set liqType=2;
				set info='返点';
				set _fanDianAmount=amount * fanDian/100;
				call setCoin(_fanDianAmount, 0, `uid`, liqType, `type`, info, _betId, '', '');
			end if;
			
			-- 循环处理上级返点
			set _parentId=parentId;
			-- set _fanDian=fanDian;
			set fanDian=_fanDian;
			
			while _parentId do
				call setUpFanDian(amount, _fanDian, _parentId, `type`, _betId, `uid`, username);
			end while;
			set _fanDianAmount = _fanDianAmount + amount * ( _fanDian - fanDian)/100;
			-- select _fanDian , fanDian, _fanDianAmount;
			
			-- 如果有人抢庄，循环处理上级抽水
			if qz_uid then
				
				-- 投注资金付给抢庄人
				call getQzInfo(qz_uid, _fanDian, _parentId);
				-- select qz_uid, _parentId, _fanDian;
				set qz_fanDian=_fanDian;
				
				while _parentId do
					call setUpChouShui(amount, _fanDian, _parentId, `type`, _betId, qz_uid, qz_username);
					-- select amount, _fanDian, _parentId, `type`, _betId, qz_uid, qz_username;
				end while;
				
				-- 平台抽3%水
				set chouShuiAmount=amount * ( _fanDian - qz_fanDian + 3) / 100;
				-- select chouShuiAmount, _fanDian, qz_fanDian;
			end if;
			
			
			
			
			-- 处理奖金
			if _zjCount then
				-- 中奖处理
				
				set liqType=6;
				set info='中奖奖金';
				set zjAmount=bonusProp * _zjCount * beiShu * `mode`/2;
				call setCoin(zjAmount, 0, `uid`, liqType, `type`, info, _betId, '', '');
	
			end if;
			
			-- 更新开奖数据
			update ssc_bets set lotteryNo=_kjData, zjCount=_zjCount, bonus=zjAmount, fanDianAmount=_fanDianAmount, qz_chouShui=chouShuiAmount where id=_betId;

			-- 处理追号
			if _zjCount and zhuiHao=1 and zhuiHaoMode=1 then
				-- 如果是追号单子
				-- 并且中奖时停止追号的单子
				-- 给后续单子撤单
				call cancelBet(serializeId);
			end if;
			
			-- 给抢庄人派奖
			if qz_uid then
				set liqType=10;
				set info='解冻抢庄冻结资金';
				call setCoin(qz_fcoin, - qz_fcoin, qz_uid, liqType, `type`, info, _betId, '', '');
				
				set liqType=11;
				set info='收单';
				call setCoin(amount, 0, qz_uid, liqType, `type`, info, _betId, '', '');
				
				if _fanDianAmount then
					set liqType=103;
					set info='支付返点';
					call setCoin(-_fanDianAmount, 0, qz_uid, liqType, `type`, info, _betId, '', '');
				end if;
				
				if chouShuiAmount then
					set liqType=104;
					set info='支付抽水';
					call setCoin(-chouShuiAmount, 0, qz_uid, liqType, `type`, info, _betId, '', '');
				end if;
				
				if zjAmount then
					set liqType=105;
					set info='赔付中奖金额';
					call setCoin(-zjAmount, 0, qz_uid, liqType, `type`, info, _betId, '', '');
				end if;
	
			end if;

		end if;
	end if;

	-- 提交事务
	commit;
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `readConComSet`
-- ----------------------------
DROP PROCEDURE IF EXISTS `readConComSet`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `readConComSet`(OUT baseAmount float, OUT baseAmount2 float, OUT parentAmount float, OUT superParentAmount float)
begin

	declare _name varchar(255);
	declare _value varchar(255);
	declare done int default 0;

	declare cur cursor for
	select name, `value` from ssc_params where name in('conCommissionBase', 'conCommissionBase2', 'conCommissionParentAmount', 'conCommissionParentAmount2');
	declare continue HANDLER for not found set done=1;

	open cur;
		repeat fetch cur into _name, _value;
			case _name
			when 'conCommissionBase' then
				set baseAmount=_value-0;
			when 'conCommissionBase2' then
				set baseAmount2=_value-0;
			when 'conCommissionParentAmount' then
				set parentAmount=_value-0;
			when 'conCommissionParentAmount2' then
				set superParentAmount=_value-0;
			end case;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setCoin`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setCoin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setCoin`(_coin float, _fcoin float, _uid int, _liqType int, _type int, _info varchar(255) character set utf8, _extfield0 int, _extfield1 varchar(255) character set utf8, _extfield2 varchar(255) character set utf8)
begin
	
	-- 当前时间
	declare currentTime int default unix_timestamp();
	declare _userCoin float;

	-- select _coin, _fcoin, _liqType, _info;
	if _coin is null then
		set _coin=0;
	end if;
	if _fcoin is null then
		set _fcoin=0;
	end if;
	-- 更新用户表
	update ssc_members set coin = coin + _coin, fcoin = fcoin + _fcoin where `uid` = _uid;
	select coin into _userCoin from ssc_members where `uid`=_uid;
	
	-- 添加资金流动日志
	insert into ssc_coin_log(coin, fcoin, userCoin, `uid`, actionTime, liqType, `type`, info, extfield0, extfield1, extfield2) values(_coin, _fcoin, _userCoin, _uid, currentTime, _liqType, _type, _info, _extfield0, _extfield1, _extfield2);
	
	-- select coin, fcoin from ssc_members where `uid`=_uid;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setUpChouShui`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setUpChouShui`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setUpChouShui`(amount float, INOUT _fanDian float, INOUT _parentId int, _type int, srcBetId int, srcUid int, INOUT srcUserName varchar(255))
begin
	
	declare p_parentId int;		-- 上级的上级
	declare p_fanDian float;	-- 上级返点
	declare p_username varchar(255);
	
	declare liqType int default 4;
	declare info varchar(255) character set utf8;
	
	declare done int default 0;
	declare cur cursor for
	select fanDian, parentId, username from ssc_members where `uid`=_parentId;
	declare continue HANDLER for not found set done = 1;

	open cur;
		repeat
			fetch cur into p_fanDian, p_parentId, p_username;
		until done end repeat;
	close cur;
	
	-- select p_fanDian, p_parentId, _parentId;

	if p_fanDian > _fanDian then
		-- set info='下家抢庄抽水';
		set info=concat('下家[', cast(srcUserName as char), ']抢庄抽水');
		call setCoin(amount * (p_fanDian - _fanDian) / 100, 0, _parentId, liqType, _type, info, srcBetId, srcUid, srcUserName);
	end if;
	
	set _parentId=p_parentId;
	set _fanDian=p_fanDian;
	set srcUserName=concat(p_username, '<=', srcUserName);
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `setUpFanDian`
-- ----------------------------
DROP PROCEDURE IF EXISTS `setUpFanDian`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setUpFanDian`(amount float, INOUT _fanDian float, INOUT _parentId int, _type int, srcBetId int, srcUid int, INOUT srcUserName varchar(255))
begin
	
	declare p_parentId int;		-- 上级的上级
	declare p_fanDian float;	-- 上级返点
	declare p_username varchar(64);
	
	-- declare liqType int default 3;
	declare liqType int default 2;
	declare info varchar(255) character set utf8;
	
	declare done int default 0;
	declare cur cursor for
	select fanDian, parentId, username from ssc_members where `uid`=_parentId;
	declare continue HANDLER for not found set done = 1;

	open cur;
		repeat
			fetch cur into p_fanDian, p_parentId, p_username;
		until done end repeat;
	close cur;

	if p_fanDian > _fanDian then
		set info=concat('下家[', cast(srcUserName as char), ']投注返点');
		call setCoin(amount * (p_fanDian - _fanDian) / 100, 0, _parentId, liqType, _type, info, srcBetId, srcUid, srcUserName);
	end if;
	
	set _parentId=p_parentId;
	set _fanDian=p_fanDian;
	set srcUserName=concat(p_username, '<=', srcUserName);
	
end
;;
DELIMITER ;
