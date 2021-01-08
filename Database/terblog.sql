/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云-数据库
 Source Server Type    : MySQL
 Source Server Version : 50559
 Source Host           : 140.143.187.23:3306
 Source Schema         : terblog

 Target Server Type    : MySQL
 Target Server Version : 50559
 File Encoding         : 65001

 Date: 04/01/2019 16:33:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `time` time NULL DEFAULT NULL,
  `bz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (25, '你好，世界！', '<ul><li>我们所行走的时空为三维时空，三维时空即，点，线，面，体所构成的一个三维立体时空，三维立体时空中我们的所行所想，我们未来接来下的象，为什么说<b>象</b>呢，因为在命理中我们的未来都是可以看到的，比如说有人问我要考什麽学校啊我未来会怎样啊，之所以说未来是可以预测是因为未来是固定的，至少说未来的<b>象</b>是固定的，而未来的象固定的原因在于我们在这四维时空中只是一条虫子罢了</li><li><span>而就因为我们是在四维时空中呈现一条虫子的这种概念性质而导致我们以为我们可以改变其实未来我们不可以改变，人固然有自由但是自由也是有一定的限度，在此限度的<b>域</b>中，是有一定的域的，怎么说呢是这样子的，比如说前几天有一个学艺术的漂亮妹子她想问我考研方面她考宁大或者陕师大哪个好，就是说未来发展的各方面的，假设宁大的能量为一而陕师大能量为二而他的上限则是2的话那问题来了，也就是说我们看她</span><span>看她的象容易成功，但是他成功的限度，是有一定的限度的，就像马云可以统治世界吗？<br>不可以，因为成功是存在一定能量的限度的，他该一千亿就该一千亿，五千亿就五千亿，但是问题来了，在能量限度内，比如说，赚个五千五百亿可以吗？可以，因为他在这个限度之内，但是呢，如果说统治世界就不切实际了，之所以不切实际原因是因为能量不够，能量是有限度的，能量限度究竟是讲的是什么呢？是包含了我们整个的整体，如果说简单说的话就是我之前讲的的<b>域，</b>我们的域与自身的节奏与于整个世界环境体系系统中的一种节奏相对比的话我们的能量大一点，成就就会大一点，我们的能量小点，我们成就就小一点，那究其原因就在于这个能量是与世界脉动相联的，这方面我不深的涉及，因为比如精气神，你好好想想有没有道理，比如风水，换言之，你喜欢一阳光的屋子还是阴暗潮湿的屋子，这方面与世界的“线”有所关联，就像风水讲的5大主龙脉啊等等，所以涉及太多，后面可能会有所提到。</span></li><li><span>不可以，因为成功是存在一定能量的限度的，他该一千亿就该一千亿，五千亿就五千亿，但是问题来了，在能量限度内，比如说，赚个五千五百亿可以吗？可以，因为他在这个限度之内，但是呢，如果说统治世界就不切实际了，之所以不切实际原因是因为能量不够，能量是有限度的，能量限度究竟是讲的是什么呢？是包含了我们整个的整体，如果说简单说的话就是我之前讲的的<b>域，</b>我们的域与自身的节奏与于整个世界环境体系系统中的一种节奏相对比的话我们的能量大一点，成就就会大一点，我们的能量小点，我们成就就小一点，那究其原因就在于这个能量是与世界脉动相联的，这方面我不深的涉及，因为比如精气神，你好好想想有没有道理，比如风水，换言之，你喜欢一阳光的屋子还是阴暗潮湿的屋子，这方面与世界的“线”有所关联，就像风水讲的5大主龙脉啊等等，所以涉及太多，后面可能会有所提到。</span></li><li><span>不可以，因为成功是存在一定能量的限度的，他该一千亿就该一千亿，五千亿就五千亿，但是问题来了，在能量限度内，比如说，赚个五千五百亿可以吗？可以，因为他在这个限度之内，但是呢，如果说统治世界就不切实际了，之所以不切实际原因是因为能量不够，能量是有限度的，能量限度究竟是讲的是什么呢？是包含了我们整个的整体，如果说简单说的话就是我之前讲的的<b>域，</b>我们的域与自身的节奏与于整个世界环境体系系统中的一种节奏相对比的话我们的能量大一点，成就就会大一点，我们的能量小点，我们成就就小一点，那究其原因就在于这个能量是与世界脉动相联的，这方面我不深的涉及，因为比如精气神，你好好想想有没有道理，比如风水，换言之，你喜欢一阳光的屋子还是阴暗潮湿的屋子，这方面与世界的“线”有所关联，就像风水讲的5大主龙脉啊等等，所以涉及太多，后面可能会有所提到。</span></li><li><span>不可以，因为成功是存在一定能量的限度的，他该一千亿就该一千亿，五千亿就五千亿，但是问题来了，在能量限度内，比如说，赚个五千五百亿可以吗？可以，因为他在这个限度之内，但是呢，如果说统治世界就不切实际了，之所以不切实际原因是因为能量不够，能量是有限度的，能量限度究竟是讲的是什么呢？是包含了我们整个的整体，如果说简单说的话就是我之前讲的的<b>域，</b>我们的域与自身的节奏与于整个世界环境体系系统中的一种节奏相对比的话我们的能量大一点，成就就会大一点，我们的能量小点，我们成就就小一点，那究其原因就在于这个能量是与世界脉动相联的，这方面我不深的涉及，因为比如精气神，你好好想想有没有道理，比如风水，换言之，你喜欢一阳光的屋子还是阴暗潮湿的屋子，这方面与世界的“线”有所关联，就像风水讲的5大主龙脉啊等等，所以涉及太多，后面可能会有所提到。</span></li><li><span>不可以，因为成功是存在一定能量的限度的，他该一千亿就该一千亿，五千亿就五千亿，但是问题来了，在能量限度内，比如说，赚个五千五百亿可以吗？可以，因为他在这个限度之内，但是呢，如果说统治世界就不切实际了，之所以不切实际原因是因为能量不够，能量是有限度的，能量限度究竟是讲的是什么呢？是包含了我们整个的整体，如果说简单说的话就是我之前讲的的<b>域，</b>我们的域与自身的节奏与于整个世界环境体系系统中的一种节奏相对比的话我们的能量大一点，成就就会大一点，我们的能量小点，我们成就就小一点，那究其原因就在于这个能量是与世界脉动相联的，这方面我不深的涉及，因为比如精气神，你好好想想有没有道理，比如风水，换言之，你喜欢一阳光的屋子还是阴暗潮湿的屋子，这方面与世界的“线”有所关联，就像风水讲的5大主龙脉啊等等，所以涉及太多，后面可能会有所提到。</span></li><li><span>不可以，因为成功是存在一定能量的限度的，他该一千亿就该一千亿，五千亿就五千亿，但是问题来了，在能量限度内，比如说，赚个五千五百亿可以吗？可以，因为他在这个限度之内，但是呢，如果说统治世界就不切实际了，之所以不切实际原因是因为能量不够，能量是有限度的，能量限度究竟是讲的是什么呢？是包含了我们整个的整体，如果说简单说的话就是我之前讲的的<b>域，</b>我们的域与自身的节奏与于整个世界环境体系系统中的一种节奏相对比的话我们的能量大一点，成就就会大一点，我们的能量小点，我们成就就小一点，那究其原因就在于这个能量是与世界脉动相联的，这方面我不深的涉及，因为比如精气神，你好好想想有没有道理，比如风水，换言之，你喜欢一阳光的屋子还是阴暗潮湿的屋子，这方面与世界的“线”有所关联，就像风水讲的5大主龙脉啊等等，所以涉及太多，后面可能会有所提到。</span>我现在只讲【时序】，那么真实时序呢就是说，“象”首先我们先定义它是不会变的，或者说，象，存在着万千的可能，但是象就是这个象，然后一个人，他的每一个象中，它都有一定的阈值，这个阈值决定了他以后的成就上限，这么说吧，假设一个人的能量为一级，在一级中他总共分为九层，如果他选择最上层的第九层那么他的能量就很大，当然了，在这其中，依旧存在能量的大小区别，这里讲两个例子，第一个是阈值，你的意志力，你会不会拖延，能不能承受诱惑，这就是不同人表现分明的阈值，同样，我说你下个月有财运，你觉得可能是10亿吗？</li><li>这就是你，所存在的阈值，而本文主旨就是想让你自己看清你自己，全方位的。第二个是关于能量方面来说，都是一个老师教的，就是存在第一与第二的区别，不同的人，他就有不同的界限所在，另外，再说另外一个，比如说水象，水象代表的太多了，【流动】，车辆的流动冷冻，或者说是雨水，各方面的，甚至于女性，这都是水象，假设一个人他未来的象，他由不同的象所指引，必然发展就会有优劣，当老师，就很难超过阿里巴巴。</li></ul>', '2018-08-13', '18:09:48', '默认文章', '1');
INSERT INTO `article` VALUES (27, '11111111111', '11111111111111111111111111111111111111111111', '2018-08-13', '15:30:19', '11111111111111', '0');
INSERT INTO `article` VALUES (28, '222222222222', '2222222222222222222222', '2018-08-13', '15:30:26', '2222222222222222', '0');
INSERT INTO `article` VALUES (29, '333333333333333333333', '33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333', '2018-08-13', '15:30:37', '333333333333333', '1');
INSERT INTO `article` VALUES (30, 'h哈哈哈', 'h哈哈哈h哈哈哈h哈哈哈h哈哈哈h哈哈哈h哈哈哈h哈哈哈', '2018-10-17', '10:15:44', 'h哈哈哈', '0');

-- ----------------------------
-- Table structure for inform
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `time` time NULL DEFAULT NULL,
  `type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inform
-- ----------------------------
INSERT INTO `inform` VALUES (1, '通知', '欢迎进入后台，当前后台正在开发中请返回首页', '2018-08-09', '00:00:00', '0');
INSERT INTO `inform` VALUES (2, '初见成效', '当前开发阶段为初见成效，欢迎测试使用！', '2018-08-10', '16:50:08', '0');
INSERT INTO `inform` VALUES (4, '初见成效', '测试通知', '2018-08-14', '10:42:51', '0');
INSERT INTO `inform` VALUES (5, '初见成效', '基本功能实现，未实现 评论', '2018-08-14', '10:45:00', '1');
INSERT INTO `inform` VALUES (6, '66666', '66666', '2018-12-25', '20:31:10', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headportrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registrationdate` datetime NULL DEFAULT NULL,
  `administrator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phonenumber` int(11) NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(1) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '1', '1', '1', '2018-08-06 16:00:21', 'admin', '1', '1', 1, '1', 0);
INSERT INTO `user` VALUES (2, '2', '2', '2', '2', '2018-08-15 13:22:31', 'user', '2', '2', 2, '2', 0);
INSERT INTO `user` VALUES (7, 'mxnter', 'mxnter', 'YeMxnter', 'mxnter', '2018-08-10 18:08:12', 'admin', '男', 'mxnter@qq.com', 1, 'mxnter', 0);
INSERT INTO `user` VALUES (16, '阿斯弗', '阿方索', '1', '暂无', '2018-08-14 09:07:34', 'user', '男', '21@qqw.com', 12, 'dfgdf东莞市东莞市', 1);

SET FOREIGN_KEY_CHECKS = 1;
