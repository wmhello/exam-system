/*
 Navicat MySQL Data Transfer

 Source Server         : exam
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 14.205.92.160:3306
 Source Schema         : exam_wmhello_cn

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 28/07/2023 13:51:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户标识',
  `permission_id` bigint(20) UNSIGNED NOT NULL COMMENT '权限标识',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_admin_id_permission_id_unique`(`admin_id`, `permission_id`) USING BTREE,
  INDEX `admin_permissions_permission_id_foreign`(`permission_id`) USING BTREE,
  CONSTRAINT `admin_permissions_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `admin_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户标识',
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '角色标识',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_admin_id_role_id_unique`(`admin_id`, `role_id`) USING BTREE,
  INDEX `admin_roles_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `admin_roles_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `admin_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 1, 1, '2023-07-28 11:27:24', NULL);

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登陆名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '用户状态',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admins_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `admins_phone_unique`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'admin', NULL, NULL, '$2y$10$0OFAxVkyINAHcYZzaQbozOALLR2Ru.40Qfb8b/kHEjivgB/2HaLbS', 1, NULL, NULL, '2023-07-28 11:27:24', NULL);

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) UNSIGNED NOT NULL COMMENT '管理员标识',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登陆者--使用者',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址--IP',
  `event` enum('login','system') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作类型--登陆操作、系统操作',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作描述',
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作结果',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作内容',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_04_20_000139_create_admins_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_04_28_083406_create_roles_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_04_28_083415_create_modules_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_04_28_083423_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_04_28_083458_create_admin_roles_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_04_28_083513_create_role_permissions_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_04_28_083525_create_admin_permissions_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_04_28_094350_create_logs_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_05_10_153023_create_question_types_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_05_10_153111_create_question_levels_table', 1);
INSERT INTO `migrations` VALUES (14, '2020_05_10_153152_create_questions_table', 1);
INSERT INTO `migrations` VALUES (15, '2020_05_10_153216_create_tests_table', 1);
INSERT INTO `migrations` VALUES (16, '2020_05_10_153220_create_test_shows_table', 1);
INSERT INTO `migrations` VALUES (17, '2020_05_10_153240_create_test_papers_table', 1);
INSERT INTO `migrations` VALUES (18, '2020_05_19_072636_create_articles_table', 1);

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '中文说明',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `modules_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modules
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '中文说明',
  `module_id` bigint(20) UNSIGNED NOT NULL COMMENT '模块标识',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissions_module_id_foreign`(`module_id`) USING BTREE,
  CONSTRAINT `permissions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for question_levels
-- ----------------------------
DROP TABLE IF EXISTS `question_levels`;
CREATE TABLE `question_levels`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '题目难易程度',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '说明',
  `total_num` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_levels
-- ----------------------------
INSERT INTO `question_levels` VALUES (1, '容易', '简单知识点，背诵即可以', 0, '2023-07-28 11:27:24', NULL);
INSERT INTO `question_levels` VALUES (2, '适中', '通过经过几次练习，才能掌握解答步骤和方法', 0, '2023-07-28 11:27:24', NULL);
INSERT INTO `question_levels` VALUES (3, '困难', '需要结合实际上下文来选择，理论练习实际', 0, '2023-07-28 11:27:24', NULL);

-- ----------------------------
-- Table structure for question_types
-- ----------------------------
DROP TABLE IF EXISTS `question_types`;
CREATE TABLE `question_types`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '题目类型 选择 判断',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '说明',
  `total_num` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_types
-- ----------------------------
INSERT INTO `question_types` VALUES (1, '单选题', '单选,四选一', 0, '2023-07-28 11:27:24', NULL);
INSERT INTO `question_types` VALUES (2, '多选题', '多选，四选多', 0, '2023-07-28 11:27:24', NULL);
INSERT INTO `question_types` VALUES (3, '判断题', '判断题,正误', 0, '2023-07-28 11:27:24', NULL);

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '问题',
  `type_id` bigint(20) UNSIGNED NOT NULL COMMENT '问题类型',
  `level_id` bigint(20) UNSIGNED NOT NULL COMMENT '问题层次',
  `a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案A',
  `b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案B',
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案C',
  `d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案D',
  `correct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '正确答案',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `questions_type_id_foreign`(`type_id`) USING BTREE,
  INDEX `questions_level_id_foreign`(`level_id`) USING BTREE,
  CONSTRAINT `questions_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `question_levels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `questions_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `question_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (1, '19世纪，英国数学家（　　　）提出了通用数字计算机的基本设计思想。', 1, 1, '图灵', '布尔', '冯.诺依曼', '巴贝奇', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (2, '世界上第一台真正意义上的电子计算机ENIAC是（　　）年在美国宾夕法尼亚大学诞生的。', 1, 1, '1943', '1946', '1950', '1953', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (3, '计算机运算速度单位MIPS代表（　　　）。', 1, 1, '千万条指令/秒', '十万条指令/秒', '百万条指令/秒', '万亿条指令/秒', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (4, '内存容量是以（　　）为单位的。', 1, 1, '比特', '字节', '字', '双字', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (5, '计算机辅助教育是（　　）。', 1, 1, 'CAI', 'CBE', 'CAT', 'CAD', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (6, '八进制数175代表的十进制数是（　　）。', 1, 1, '170', '168', '130', '125', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (7, '在一种进位计数制中，3×3＝10，说明是（　　　）进制。', 1, 1, '七', '八', '九', '十', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (8, '已被国际标准化组织（ISO）采纳的字符编码是( )。', 1, 1, 'ASCII码', '内码', '交换码', 'BCD码', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (9, '存储程序和程序控制的原理是（　　　）提出的。', 1, 1, '图灵', '布尔', '冯.诺依曼', '巴贝奇', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (10, '软件系统是运行、管理和维护计算机的各类程序和（　　）的总称。', 1, 1, '图形', '文档', '字符', '算法', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (11, '在现代信息处理技术中，最关键的是（　　）。', 1, 1, '计算机技术', '通信技术', '传感技术', '网络技术', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (12, '计算机辅助设计的缩写是（　　）。', 1, 1, 'CAI', 'CAM', 'CEO', 'CAD', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (13, 'CPU通过数据总线一次存取、加工和传送的数据称为（　　）。', 1, 1, '字节', '字长', '位', '字', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (14, '从键盘上输入汉字的编码称为（　　）。', 1, 1, '字型码', '区位码', '国村码', '输入码', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (15, '五笔字型属于（　　）。', 1, 1, '流水码', '音码', '形码', '音形码', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (16, 'R进制数最大的数码是（   )。', 1, 1, 'R-1', 'R', 'R＋1', 'R+R', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (17, 'CPU与（　　）组成了计算机的主机。', 1, 1, '内存储器', '运算器', '控制器', '控制器和运算器', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (18, '以下不属于CPU名称的是（　　）。', 1, 1, '主机', '微处理器', '中央处理器', '控制器和运算器', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (19, '用高级语言编写的程序称为（　　）。', 1, 1, '汇编程序', '目标程序', '源程序', '二进制代码程序', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (20, '通常用MIPS描述计算机的（　　）。', 1, 1, '运算速度', '可靠性', '可运行性', '可扩充性', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (21, '为了避免混淆，二进制数在书写时在后面加上字母（　　）。', 1, 1, 'H', 'D', 'B', 'O', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (22, '（　　）是人机接口，用户通过它与计算机交换信息。', 1, 1, '运算器', '控制器', '存储器', '输入输出设备', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (23, '下列程序设计语言中，属于低级语言的是(　 )。', 1, 1, 'C语言', '汇编语言', 'Fortran', 'E. Delphi', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (24, '简称CIMS是指( )。', 1, 1, '计算机辅助测试', '计算机集成制造系统', '计算机辅助制造', '计算机辅助教育', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (25, '已知大写字母\"A\"的ASCII码为八进制数101，ASCII码为十六进制数44的字母是( )。', 1, 3, 'B', 'C', 'D', 'E', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (26, '优盘置为写保护状态后，则（ ）', 1, 3, '不能防病毒入侵', '能防止病毒入侵', '若有病毒也不至于扩散', '用杀毒软件对它进行杀毒', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (27, '在以下人为的恶意攻击行为中，属于主动攻击的是（ ）', 1, 3, '数据篡改及破坏 ', '数据窃听 ', '数据流分析 ', '非法访问  ', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (28, '有关网络拓扑结构的说法，不正确的是（ ）', 1, 3, '在星形拓扑结构中，中央节点不需要有很高的可靠性', '在总线型拓扑结构中，容易扩充网络', '在环形拓扑结构中，任何一台计算机的故障都会影响整个网络的正常工作', '在总线型拓扑结构中，故障检测和隔离较困难', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (29, '国际标准化组织ISO对（ ）系统参考模型与网络协议的研究与发展起了重要的作用。', 1, 3, 'OSI', 'TCP/IP', 'DSA', 'DNA', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (30, '在OSI七层结构模型中，处于数据链路层与传输层之间的是（ ）', 1, 3, '物理层', '网络层', '会话层', '表示层', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (31, '万维网的网址以http为前导，表示遵从（ ）协议', 1, 3, '纯文本', '超文本传输', 'TCP/IP', 'POP', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (32, '要实现网络通信必须具备三个条件，以下各项中（ ）不是必须具备的条件', 1, 2, '视频采集卡', '网络接口卡', '网络协议', '网络服务器/客户机程序', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (33, '下面（ ）是ftp服务器的地址。', 1, 2, 'http://192.133.111.23 ', 'c:\\windows', 'ww. 163. com. Cn', 'ftp://192. 153. 11. 23', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (34, '在Internet中能够提供任意两台计算机之间传输文件的协议是（   ）', 1, 2, 'WWW', 'FTP', 'TELNET', 'SMTP', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (35, '网络协议主要要素为（ ）', 1, 2, '数据格式、编码、信号电平', '数据格式、控制信息、速度匹配', '语法、语义、同步', '编码、控制信息、同步', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (36, '不属于有线介质的是（ ）', 1, 2, '双绞线', '红外线', '光缆', '同轴电缆', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (37, '匿名FTP服务的含义是 （ ）    ', 1, 2, '在Internet上没有地址的FTP服务', '允许没有帐号的用户登录到FTP服务器', '发送一封匿名信', '可以不爱限制地使用FTP服务器上的资源', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (38, '关于WWW服务，下列哪种说法是错误的（ ）', 1, 2, '用户访问Web服务器不需要知道服务器的URL地址', '用户访问Web服务器可以不使用图形用户界面', 'WWW服务采用的主要传输协议是HTTP', '服务以超文本方式组织网络多媒体信息', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (39, '从网址www.sdu.edu.cn可以看出它是中国的一个（ ） 站点', 1, 2, '商业部门      ', '政府部门      ', '教育部门       ', '科技部门', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (40, '子网掩码是一个（ ）位的2进制数，它的作用是识别子网和差别主机属于哪一个网络', 1, 2, '16', '32', '24', '64', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (41, 'Internet的核心内容是（ ）     ', 1, 2, '全球程序共享', '全球数据共享', '全球信息共享', '全球指令共享', 'C', NULL, NULL);
INSERT INTO `questions` VALUES (42, '域是用来标识（ ）', 1, 2, '不同的地域  ', 'Internet特定的主机', '不同风格的网站', '盈利与非盈利网站', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (43, '计算机网络最基本的功能是数据通信和（ ）', 1, 2, '资源共享', '文件调用', '降低成本', '打印文件', 'A', NULL, NULL);
INSERT INTO `questions` VALUES (44, '哪个不是物理传感器（ ）', 1, 2, '视觉传感器', '嗅觉传感器', '听觉传感器', '触觉传感器', 'B', NULL, NULL);
INSERT INTO `questions` VALUES (45, '云计算是对（ ）技术的发展与运用 ', 1, 2, '并行计算  ', '网格计算  ', '分布式计算   ', '三个选项都是', 'D', NULL, NULL);
INSERT INTO `questions` VALUES (46, '人类社会物质文明的三大要素是（　　）', 2, 2, '信息', '工具', '物质', '能源', 'ACD', NULL, NULL);
INSERT INTO `questions` VALUES (47, '从ENIAC开始到今天，可以将电子计算机的发展分为(   )等几个阶段。', 2, 2, '集成电路计算机', '电子管计算机', '超大规模集成电路计算机', '晶体管计算机', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (48, '二进制中的数码是（　　）。', 2, 2, '2', '1', '0', '以上都是', 'BC', NULL, NULL);
INSERT INTO `questions` VALUES (49, '汉字处理涉及的汉字编码有（　　　）。', 2, 3, '输入码', '交换码', '机内码', '字型码', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (50, '计算机中的数据单位有（　　　）。', 2, 3, 'BIPS', 'bit', 'Byte', 'Word', 'BCD', NULL, NULL);
INSERT INTO `questions` VALUES (51, 'CPU由（　　　　）组成。', 2, 3, '运算器', '控制器', '存储器', '输入输出设备', 'AB', NULL, NULL);
INSERT INTO `questions` VALUES (52, '常用的数据库软件有（　　　）等。', 2, 3, 'Access', 'ORACLE', 'MS SQL Server', 'mysql', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (53, '衡量CPU的主要指标有（　　）等。', 2, 3, '重量', '主频', '字长', '带宽', 'BCD', NULL, NULL);
INSERT INTO `questions` VALUES (54, '以下属于应用软件的是（　　）。', 2, 3, 'QQ', 'Photoshop', '迅雷', 'WinRAR', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (55, '系统软件通常包括（　　　）等各种程序。', 2, 2, '操作系统', '网络服务', '数据库系统', '程序设计语言和语言处理程序', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (56, '根据工作原理，打印机可分为（　　）。', 2, 2, '点阵打印机', '喷墨打印机', '激光打印机', '行页打印机', 'ABC', NULL, NULL);
INSERT INTO `questions` VALUES (57, '以下（　　）是微机的主要性能指标。', 2, 2, '主频', '字长', '字节', '内存容量', 'ABD', NULL, NULL);
INSERT INTO `questions` VALUES (58, '显示器的重要指标是（　　）。', 2, 2, '尺寸', '象素', '点距', '分辨率', 'BCD', NULL, NULL);
INSERT INTO `questions` VALUES (59, '从管理上预防病毒，可以（    ）', 2, 1, '对系统中的数据和文件要不定期进行备份', '定期检测计算机上的磁盘和文件并及时清除病毒', '谨慎地使用公用软件或硬件', '对所有系统盘和文件等关键数据要进行写保护', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (60, '计算机病毒的特点有（     ）', 2, 1, '传染性', '破坏性', '潜伏性', '隐蔽性', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (61, '以下（    ）是良好的安全习惯', 2, 1, '经常把机器的硬盘卸下来存放', '定期更换密码', '为计算机安装防病毒软件和防火墙', '査看发给自己的所有电子邮件，并回复', 'BC', NULL, NULL);
INSERT INTO `questions` VALUES (62, '下列关于IPv4地址的描述中哪些是正确的', 2, 1, 'A类地址拥有最多的网络数 ', '每一个IP地址都包括类别号、网络号和主机号。', 'D类地址属于组播地址', '一个C类地址拥有8位主机地址', 'BCD', NULL, NULL);
INSERT INTO `questions` VALUES (63, '连接Internet时，在添加协议后，通常还需要设置本机的（   ） ', 2, 1, 'IP地址', '子网掩码      ', '网关IP地址', '域名服务器IP地址', 'ABCD', NULL, NULL);
INSERT INTO `questions` VALUES (64, '利用电子邮件可以传送（    ）', 2, 1, '文字、图形 ', '动画    ', '具体的实物    ', '程序', 'ABD', NULL, NULL);
INSERT INTO `questions` VALUES (65, '物联网体系架构分为哪几层（    ）', 2, 1, '感知层', '网络层', '应用层', '物理层', 'ABC', NULL, NULL);
INSERT INTO `questions` VALUES (66, '世界上第一台真正意义上的电子计算机ENIAC是1946年在美国宾夕法尼亚大学诞生的。', 3, 1, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (67, 'R进制中具有R个数码。', 3, 1, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (68, '218有可能是八进制数。', 3, 1, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (69, '一个完整的计算机系统由硬件系统和软件系统两部分组成。', 3, 1, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (70, 'QQ是应用软件', 3, 1, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (71, '世界上第一台按存储程序功能设计的计算机叫EDVAC', 3, 1, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (72, '计算机的处理速度只由内存容量决定。', 3, 1, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (73, '形码比音码容易上手。', 3, 1, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (74, '计算机只能从RAM中读出事先存储的数据，而不能改写。', 3, 3, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (75, 'ROM中保存的数据断电后不丢失', 3, 3, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (76, 'RAM数据断电后丢失。', 3, 3, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (77, '计算机运行速度由CPU的主频决定，与其它因素无关。', 3, 3, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (78, '用汇编语言编写的程序便于阅读和理解，不依赖于具体的机器。', 3, 3, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (79, '计算机病毒的破坏性仅仅是占用系统资源，影响系统正常运行', 3, 3, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (80, '“活动天窗”是程序设计者故意为实施犯罪而留下的软件系统入口。', 3, 3, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (81, '现在的计算机病毒已经不单单是计算机学术问题，而成为一个严重的社会问题了。', 3, 3, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (82, '行为人以计算机作为工具或以计算机资产作为攻击对象的实施的严重危害社会的行为都称为计算机犯罪。', 3, 2, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (83, '双绞线、同轴电缆和光缆都属于有限传输介质。', 3, 2, 'T', 'F', NULL, NULL, 'T', NULL, NULL);
INSERT INTO `questions` VALUES (84, '广域网：用户在基于家庭环境的背景下使用的网络。', 3, 2, 'T', 'F', NULL, NULL, 'F', NULL, NULL);
INSERT INTO `questions` VALUES (85, '感知延伸层技术是保证物联网络感知和获取物理世界信息的首要环节，并将现有网络接入能力向物进行延伸。', 3, 2, 'T', 'F', NULL, NULL, 'T', NULL, NULL);

-- ----------------------------
-- Table structure for role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE `role_permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '角色标识',
  `permission_id` bigint(20) UNSIGNED NOT NULL COMMENT '权限标识',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `role_permissions_role_id_permission_id_unique`(`role_id`, `permission_id`) USING BTREE,
  INDEX `role_permissions_permission_id_foreign`(`permission_id`) USING BTREE,
  CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '英文名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '中文说明',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', '超级管理员', '2023-07-28 11:27:24', NULL);
INSERT INTO `roles` VALUES (2, 'user', '普通用户', '2023-07-28 11:27:24', NULL);

-- ----------------------------
-- Table structure for test_papers
-- ----------------------------
DROP TABLE IF EXISTS `test_papers`;
CREATE TABLE `test_papers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `show_id` bigint(20) UNSIGNED NOT NULL COMMENT '试卷标识',
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '问题',
  `type_id` bigint(20) UNSIGNED NOT NULL COMMENT '问题类型',
  `level_id` bigint(20) UNSIGNED NOT NULL COMMENT '问题层次',
  `a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案A',
  `b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案B',
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案C',
  `d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备选答案D',
  `correct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '正确答案',
  `choose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '我的选择',
  `score` double NOT NULL DEFAULT 0 COMMENT '我的分值',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `test_papers_type_id_foreign`(`type_id`) USING BTREE,
  INDEX `test_papers_level_id_foreign`(`level_id`) USING BTREE,
  INDEX `test_papers_show_id_foreign`(`show_id`) USING BTREE,
  CONSTRAINT `test_papers_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `question_levels` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `test_papers_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `test_shows` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `test_papers_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `question_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_papers
-- ----------------------------

-- ----------------------------
-- Table structure for test_shows
-- ----------------------------
DROP TABLE IF EXISTS `test_shows`;
CREATE TABLE `test_shows`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '会员标识',
  `start_time` timestamp(0) NULL DEFAULT NULL COMMENT '个人测试开始时间',
  `end_time` timestamp(0) NULL DEFAULT NULL COMMENT '个人测试开始时间',
  `test_id` int(11) NOT NULL COMMENT '测试标识',
  `correct_num` int(11) NOT NULL DEFAULT 0 COMMENT '正确的题目数量',
  `correct_score` double NOT NULL DEFAULT 0 COMMENT '正确的分值',
  `incorrect_num` int(11) NOT NULL DEFAULT 0 COMMENT '错误的题目数量',
  `incorrect_score` double NOT NULL DEFAULT 0 COMMENT '错误的分值',
  `final_score` double NOT NULL DEFAULT 0 COMMENT '最终得分',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `test_shows_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `test_shows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_shows
-- ----------------------------

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '测试名称',
  `start_time` timestamp(0) NOT NULL COMMENT '测试开始时间',
  `end_time` timestamp(0) NOT NULL COMMENT '测试结束时间',
  `score` double NOT NULL COMMENT '测试分值',
  `time` int(11) NOT NULL COMMENT '测试时长',
  `test_rules` json NOT NULL COMMENT '测试规则',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '测试状态',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES (1, '2023年一年级信息技术期末考', '2023-07-25 00:00:00', '2025-07-30 00:00:00', 100, 60, '[{\"num\": \"20\", \"score\": \"2\", \"total\": 40, \"type_id\": 1}, {\"num\": \"10\", \"score\": \"4\", \"total\": 40, \"type_id\": 2}, {\"num\": \"10\", \"score\": \"2\", \"total\": 20, \"type_id\": 3}]', 1, '2023-07-28 13:47:02', '2023-07-28 13:48:20');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登陆名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信端用户ID',
  `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信端用户联合ID',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '用户状态',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_phone_unique`(`phone`) USING BTREE,
  UNIQUE INDEX `users_open_id_unique`(`open_id`) USING BTREE,
  UNIQUE INDEX `users_union_id_unique`(`union_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'test', 'test', '$2y$10$l3CKQYhIJZdUXQRzJCxq6uqFhhuVk6w.xkfxB6cJ9RuKCaSjGLL4S', NULL, NULL, NULL, NULL, '1', NULL, NULL, '2023-07-28 13:14:06', '2023-07-28 13:14:06');

SET FOREIGN_KEY_CHECKS = 1;
