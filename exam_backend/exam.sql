/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2021-10-17 15:30:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `exam_paper_libs`
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_libs`;
CREATE TABLE `exam_paper_libs` (
  `exam_paper_libs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'exam_paper_id',
  `encoding_exam_paper_libs` varchar(255) DEFAULT NULL COMMENT '考卷编号',
  `name_exam_paper_libs` varchar(255) DEFAULT NULL COMMENT '考卷名称',
  `exam_questions_id` int(11) DEFAULT NULL COMMENT '题库编号-从题库表获取',
  `no_exam_questions` int(11) DEFAULT NULL COMMENT '题库顺序-默认999，从1开始',
  `createdatatime` datetime DEFAULT NULL COMMENT '组题时间',
  PRIMARY KEY (`exam_paper_libs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考卷库由老师来组卷，一张考卷包含了题库中选择出来的题目。\r\n考卷库组卷后，由老师分配学生考试。\r\n';

-- ----------------------------
-- Records of exam_paper_libs
-- ----------------------------

-- ----------------------------
-- Table structure for `exam_questions`
-- ----------------------------
DROP TABLE IF EXISTS `exam_questions`;
CREATE TABLE `exam_questions` (
  `exam_questions_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考题id，自增',
  `encoding_question` varchar(255) DEFAULT NULL COMMENT '题目编号',
  `subject` varchar(255) DEFAULT NULL COMMENT '从systemparameter表中取值：科目，语文、英语、数学，默认英语',
  `type_question` varchar(255) DEFAULT NULL COMMENT '从systemparameter表中取值：题型：单选题目（默认）、多选题目、听力题、口语题、填空题;',
  `time_answerquestion` int(11) DEFAULT NULL COMMENT '答题时间（s）',
  `level_question` varchar(255) DEFAULT NULL COMMENT '从systemparameter表中取值：题目难度：1、2、3、4、5，默认3',
  `title_question` varchar(255) DEFAULT NULL COMMENT '题目标题',
  `content_question` varchar(500) DEFAULT NULL COMMENT '题目内容',
  `a_select` varchar(255) DEFAULT NULL COMMENT '选择A',
  `b_select` varchar(255) DEFAULT NULL COMMENT '选择B',
  `c_select` varchar(255) DEFAULT NULL COMMENT '选择C',
  `d_select` varchar(255) DEFAULT NULL COMMENT '选择D',
  `a_answer` tinyint(1) DEFAULT NULL COMMENT '答案A',
  `b_answer` tinyint(1) DEFAULT NULL COMMENT '答案B',
  `c_answer` tinyint(1) DEFAULT NULL COMMENT '答案C',
  `d_answer` tinyint(1) DEFAULT NULL COMMENT '答案D',
  `listening_answer` varchar(500) DEFAULT NULL COMMENT '听力答案',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`exam_questions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='题库用来存储所有的题目。\r\n题目可以手动输入也可以批量上传；\r\n题目类型、科目需要和systempa';

-- ----------------------------
-- Records of exam_questions
-- ----------------------------
INSERT INTO `exam_questions` VALUES ('1', 'title1574', '英语', '单选题', '60', '5', 'qui', 'Natus quo corrupti animi quas quam quo.', 'Isin0reqECpjDMRxnZWN', 'sf0xB61B5aasI7oUvuXA', 'h816x8HmkiJHzR2Vbcq5', 'q2h0qiDX32BkGuORFLgX', '1', '0', '0', '0', 'Dr.', 'vqXomGvlHFgr11iJfKQl');
INSERT INTO `exam_questions` VALUES ('2', 'title456', '英语', '单选题', '60', '1', 'veniam', 'Consequuntur eligendi fuga velit maiores aut nihil rem odit.', 'stkJ4UZi8au7HkQ2dlWo', 'AGr5bP0EyUZHfVKANdBK', 'eD2zUnavjwECwest2cuR', 'vNoHN02PKqe87MUgvHxd', '0', '0', '1', '0', 'Prof.', 'yfXEL3bwitROKl9vlziD');
INSERT INTO `exam_questions` VALUES ('3', 'title4935', '英语', '单选题', '60', '1', 'ea', 'Rem hic quisquam vel cupiditate.', 'ssklR7CAt5OThRq93gw3', 'BrSgDQ630NaLzTIyukCf', 'oWsz1IW2PRwKOWoWNHmR', '2P06FviiKu0eJUWfJoQS', '0', '1', '0', '0', 'Mrs.', 'Qrt7qhpXh3AyCCWhoRZM');
INSERT INTO `exam_questions` VALUES ('4', 'title593', '英语', '单选题', '60', '1', 'ad', 'Id et commodi ut facilis molestias aspernatur corrupti id.', 'ESBlF7QLnJrWfhzEFRsN', 'S0vPrtyz9pfGAG1mEApu', 'bEfsOdmF3mgMzVIMe5b8', '2sQLHtabvfFuGVFRLfaa', '0', '1', '0', '0', 'Dr.', 'ji297Q2LeUuryGmPetQt');
INSERT INTO `exam_questions` VALUES ('5', 'title444', '英语', '单选题', '60', '4', 'repellat', 'Minus nobis quo voluptatibus nesciunt.', 'ctH6K2aMGZivaibhzOEW', 'OwC43GCO59jMM4UN1tgH', '9izSqTSQiv8OPfvtt59V', 'OgQFyLcG6L7R2Bf0gv1Z', '0', '0', '1', '0', 'Prof.', 'v9Budy8FVI2xpdjfki82');
INSERT INTO `exam_questions` VALUES ('6', 'title5561', '英语', '单选题', '60', '3', 'a', 'Error natus beatae et aliquam.', '2Z3yuc65uphEfYQVMArM', 'RW6kQyahOZzzOshal6gu', 'vEpzQxw8keyGqqIixVeo', 'Ypyn1hZnoTPTkgxgjDaI', '0', '0', '1', '0', 'Prof.', 'APKTYu11j7u8QQ9hNuLB');
INSERT INTO `exam_questions` VALUES ('7', 'title6523', '英语', '单选题', '60', '4', 'aut', 'Rerum illo voluptatem vel delectus nobis ad.', 'V3GuVEHp7BmqCOaMpQSl', 'uDTMcP8VAMvbDw9r9zXL', 'EkyJzVC63X5a16Y6vZKB', '2GhNjXW19PgYHn0jpjY7', '0', '1', '0', '0', 'Prof.', 'sKPd9lvtznfEZbinwAGP');
INSERT INTO `exam_questions` VALUES ('8', 'title5905', '英语', '单选题', '60', '1', 'dolor', 'Eveniet quaerat amet ea error consequatur quia at.', '4vaXVZoyDrAGxdjUJtNS', 'QSjfxeS9oyWKn0XTSrnQ', 'gKZawpImFsVA30s6Z0sF', 'VqpdKBKYKLL4MuJRyEl7', '0', '0', '0', '1', 'Prof.', 'NzniHbAOEjMhpotrqrms');
INSERT INTO `exam_questions` VALUES ('9', 'title7945', '英语', '单选题', '60', '5', 'modi', 'Quidem ut repudiandae ut suscipit aut at quo pariatur.', 'm9iyHCYKu8Yg11JA0yaE', 'W265WMahjoQ3WrO3lSdT', '90oNfNnGG4Dsl9Xyighx', '97Ikt4lLNM05UJaTpiNO', '0', '0', '0', '1', 'Ms.', 'RjQDSgYa0VAbMaM2ZKNH');
INSERT INTO `exam_questions` VALUES ('10', 'title5554', '英语', '单选题', '60', '4', 'ea', 'Sed eaque omnis ex sit id.', 'xR6dhVcuRb1Jm63YKgTG', 'k0gJG9fwM1z6c3QDd0f7', 'GYTlOXhq8kxP7VuvwgGh', '0MkSQgVoohl8zAOZaTrY', '0', '0', '0', '1', 'Dr.', 'dtn6Lfn58kM7F1TAvyMB');
INSERT INTO `exam_questions` VALUES ('11', 'title187', '英语', '单选题', '60', '2', 'itaque', 'Incidunt a sunt similique non sequi.', 'uxTvm5JB2nHJ4DMdSpjb', 'bhISb4qJ8eSQ7P82Yuqy', 'b8oj46elZfOAi9bSjX1x', 'VbclmA4FOKPMQIuY7MLx', '1', '0', '0', '0', 'Dr.', '0fSj2ZNOKuavPftdUbhW');
INSERT INTO `exam_questions` VALUES ('12', 'title9524', '英语', '单选题', '60', '5', 'hic', 'Nisi aut distinctio corporis natus ab et ex.', 'cPKAGpHyMvLU3DXPIZUg', 'KRSHfbHLU2rsX8dmvITo', '6Xk5ngzIIN2F74VdzPBH', 'Kud5JgVLKAHJtyYLJlIA', '0', '1', '0', '0', 'Ms.', 'CagqczmkPqBWh2TuYhvU');
INSERT INTO `exam_questions` VALUES ('13', 'title684', '英语', '单选题', '60', '3', 'asperiores', 'Hic necessitatibus aliquid sed quia aut est quia.', 'CZolKN9xSPRgPyqpNFOW', 'Q3pDxwPB7kzj2dbyLDja', 'Tw1yHXaic90SCggdHhzF', 'e2lsrnYg5Z2Gy4PI4jTq', '0', '0', '1', '0', 'Ms.', 'bCQEYyeJYU1goC4mzF9m');
INSERT INTO `exam_questions` VALUES ('14', 'title827', '英语', '单选题', '60', '4', 'natus', 'Blanditiis beatae in dolores voluptatem minus aut.', 'jgx8gwnrnvrHvPVuqg1A', 'CuzYHrbWsiv3IPNT4jbl', 'imWj8K6l3bANk14e0fbm', 'EnbsVNfnh3jQOJUaC9um', '1', '0', '0', '0', 'Miss', '6Q8yTwBkl6gsyk412AIz');
INSERT INTO `exam_questions` VALUES ('15', 'title6254', '英语', '单选题', '60', '4', 'magnam', 'Aliquid assumenda quo rerum corrupti in.', '3Rs4csmE9uY8uczcjN4s', 'gIDTe9wzl6lLlGalWvA3', 'g4IJKnNZdS35luObhdrd', 'sLMe62ZfmU7WVYZ0teuG', '0', '1', '0', '0', 'Mrs.', '4I0oLmDLE1ePUcVCCaxm');
INSERT INTO `exam_questions` VALUES ('16', 'title8066', '英语', '单选题', '60', '3', 'atque', 'Et architecto autem alias.', 'mrnk4DuX2eHPLZovcquK', 'Jgbz6m2kgouPL7nzKXPo', 'LOFovQgV9CRwzAou76E4', '0N44qPOgFDfQBcaKnZ3h', '0', '0', '1', '0', 'Prof.', 'qPOFe25MxPfVXxEGCFRn');
INSERT INTO `exam_questions` VALUES ('17', 'title7325', '英语', '单选题', '60', '3', 'et', 'Voluptatem enim molestiae tempore ea.', '3Ng0TmudFVBdWjo7wIwo', 'N8wsCgf4TtjQNC65EqRA', 'Fj1r1rYsAgpzJBAGkF0b', 'QHB5SPffa9DRPwZjlObJ', '0', '0', '1', '0', 'Prof.', 'tk2nxVWyaxYhY1RpvqVV');
INSERT INTO `exam_questions` VALUES ('18', 'title7212', '英语', '单选题', '60', '1', 'tempora', 'Optio beatae quo sit cupiditate animi.', '60udV51rxpCvqVEgf8rF', 'kpDWSmalcKtz2CASh58W', 'Ox3hYiWIEJ53EWuAeOtx', 'PwAtjCLo2942DAXRdp28', '0', '0', '1', '0', 'Prof.', 'HhGIrLH5m168gxBjCSA6');
INSERT INTO `exam_questions` VALUES ('19', 'title37', '英语', '单选题', '60', '5', 'vel', 'Quod rerum itaque voluptatem aliquid sit.', 'UofdlwI9FTJF6MIAvsCo', 'i8lDjk5AbmLvtc6OAhIv', 'qWSI9CTioeKwxI6rkMAo', 'lHGLmTh5CxFcdpTIO0BZ', '1', '0', '0', '0', 'Mr.', 'iOSpkXDer44z6bIJkn6P');
INSERT INTO `exam_questions` VALUES ('20', 'title7124', '英语', '单选题', '60', '3', 'omnis', 'Doloribus omnis praesentium quisquam non aut.', 'GVxBecuaq1fuOTXSY7EL', '3ChKls0U40o9tpwpGWCh', 'Jr0Sv3XI0PBfxjxEowCw', 'f08q9rKq8jFN18RxkQQ1', '0', '1', '0', '0', 'Mrs.', 'T5Z5grKdvVFlFjiS0DBy');
INSERT INTO `exam_questions` VALUES ('21', 'title2622', '英语', '单选题', '60', '2', 'est', 'Excepturi architecto sit modi.', '4MTCmPV6YZptDYd2AuMS', 'hltfbWaBcBA5QPTqVZIE', '55ltQzZwcy8ZIJexXluR', 'p5KHkQoYTffjuAPAYWqm', '0', '1', '0', '0', 'Mr.', 'HHNKpoFJU2HgQN4ndlys');
INSERT INTO `exam_questions` VALUES ('22', 'title5951', '英语', '单选题', '60', '1', 'deserunt', 'Ut similique facere cumque laudantium dolores.', 'P7WJWHXmgOdi1W35j2W9', 'GclvrCg4vkrv1NUNPls3', 'PO5at1ac4OEpx8xgCrVH', 'X0tVjxxSFLQoVK0IQWbQ', '0', '0', '0', '1', 'Mr.', 'UIvoilYb0UnzstZM9Txp');
INSERT INTO `exam_questions` VALUES ('23', 'title7862', '英语', '单选题', '60', '3', 'eos', 'Amet est nobis rem.', 'JlN89eFqOhnHBFaW8QL8', 'sBY8leGVDc5WOYhbZK3u', 'jMpcouynn7tKVjcYKqWR', 'C9VRMaAbpHB6aiIySjBw', '0', '0', '1', '0', 'Mrs.', '0ctPLUeSK5QDwJdPIWA8');
INSERT INTO `exam_questions` VALUES ('24', 'title9872', '英语', '单选题', '60', '1', 'rem', 'Optio consequatur vel totam totam aut.', 'vbqHlehn06aRqeGbcPmx', 'jX4l6gV9cMoZ7iBGFBM5', 'PZRZWabMFZAWbsqTZOVw', 'wQtjxYr01sTuMyS9IbPs', '0', '1', '0', '0', 'Miss', 'UC3yWYxAQB9kCEF4ojuP');
INSERT INTO `exam_questions` VALUES ('25', 'title6135', '英语', '单选题', '60', '5', 'incidunt', 'Consequuntur est ut sit a qui atque aperiam.', 'XYpPcaWxoUZAdszHTJoi', '2xRksaiWK5FeOSwZdydJ', 'nwMZEDMFk1Rmvs9XiyUq', 'lmcv7N5N8tP3IQFbXwoN', '0', '0', '0', '1', 'Miss', 'OakyYe9S0eiNVOiEunW0');
INSERT INTO `exam_questions` VALUES ('26', 'title4066', '英语', '单选题', '60', '2', 'eius', 'Aut nihil mollitia maxime.', 'HHkkQ3c41YyWy2fZVfPk', 'hGCctsnGvMGqIhiyCqWq', 'xPf9Q22J3bMdggmj63ia', 'mlYH2rc3JHmLFhafaN3f', '0', '0', '0', '1', 'Dr.', 'hM7Q3ZuFgqFShimKBXbi');
INSERT INTO `exam_questions` VALUES ('27', 'title3853', '英语', '单选题', '60', '3', 'reiciendis', 'Eligendi earum quia accusantium qui rerum officiis.', 'wU79K587PMum8AegOlND', 'zysD9orkwj1c9RSzd0ad', 'PhfFUyfM3LQNjSSEGg47', 'obD17UKcns1wQzKvzoaR', '0', '1', '0', '0', 'Miss', 'waPVRvK73mvAs3xOFKiH');
INSERT INTO `exam_questions` VALUES ('28', 'title1567', '英语', '单选题', '60', '1', 'rerum', 'Officiis ipsam voluptatem aliquid.', 'frEkwimNYkRLriFLrY5t', 'NIrApCbJi7gQPxrbmDAn', '6UabyUge3ZcBFeGAvbBi', 'IY8skuDQib5WvtjvJ2nn', '1', '0', '0', '0', 'Mr.', 'T5cTymi3cGcTHOcWSqiJ');
INSERT INTO `exam_questions` VALUES ('29', 'title4327', '英语', '单选题', '60', '5', 'eligendi', 'Dolorum tempore ex pariatur nesciunt iste quis.', 'bJCtrGBdnp1fgR9agxSX', 'jBnGX7hrE5Sy733hyoNW', 'sz5dINxSw3wUdoJuIv7S', 'fxFizI6BFqRENPtiDnXm', '0', '1', '0', '0', 'Mr.', 'NQUZELZmt1lF4MXX11eN');
INSERT INTO `exam_questions` VALUES ('30', 'title8204', '英语', '单选题', '60', '4', 'cum', 'Pariatur ut laboriosam atque ipsa.', '7or311lVLt2BInfxO2Ln', 'Pt3NXQmDczJVK2NeT6Ck', 'xppVwbgHjfqd8ApErxDz', '0gIZ5WouvPA20GAkIUSr', '0', '1', '0', '0', 'Mrs.', 'UkAjEegaK70Z5NARHWps');
INSERT INTO `exam_questions` VALUES ('31', 'title8504', '英语', '单选题', '60', '1', 'asperiores', 'Nisi omnis sed debitis dolor inventore.', 'UvM1Es6Sg1lsr5usobr0', '1wPIkqhVW9IBG3rOjvsj', 'Ki2phmeoiJff7Hl4ikKP', 'T7ERLyIbuoulhAYKfG6N', '0', '1', '0', '0', 'Mrs.', 'wgXdTfNaeMoK5MoU3PO6');
INSERT INTO `exam_questions` VALUES ('32', 'title4935', '英语', '单选题', '60', '2', 'dolorem', 'Et pariatur vero vel maiores et est.', 'TWEUZXOQuTUJpKtugzJw', 'gu6jlnkEuMQWmon3EghN', 'rm5vp8u51mYQO6fohIIn', 'h72SWHmbPeNrEK3Jupsx', '1', '0', '0', '0', 'Mr.', 'Iiggko97hyTTP3hnSNRZ');
INSERT INTO `exam_questions` VALUES ('33', 'title3289', '英语', '单选题', '60', '3', 'architecto', 'Omnis facere quia quibusdam libero qui consectetur veniam.', 'irRCSw1m1SDTWAgoulFA', 'bR0ldOjqdPuWse0VtAHX', 'arHBIwP45nGD3sIgC405', 'LHaiIjTuziTF3N0A7d2I', '1', '0', '0', '0', 'Mrs.', 'sEskSbEAxb3SZZ9j7dGU');
INSERT INTO `exam_questions` VALUES ('34', 'title4105', '英语', '单选题', '60', '1', 'quasi', 'Qui laudantium adipisci sed.', 'IVbrmSHb89EcwPdmJxFn', 'LpB6AP7y6tVBLNmBVyZW', 'lMXwQE2gKiBkkajZhoYE', '06aKZBeymxgjNFIoAU63', '0', '0', '0', '1', 'Miss', 'E3DgSUAsKWIWSKGqCF7M');
INSERT INTO `exam_questions` VALUES ('35', 'title8053', '英语', '单选题', '60', '3', 'et', 'Magnam error illum qui aliquam necessitatibus ut.', 'NNbepB5qtz1JRgZdDcJt', 'WuyuCGzRKSQvQoP3M1jP', 'REfK4gPWSXkOTp4hw7ku', '8Vjix5cXUCfExxC40nFJ', '0', '1', '0', '0', 'Dr.', 'Tg2GJEPBDVL2CiAS8Nd9');
INSERT INTO `exam_questions` VALUES ('36', 'title6510', '英语', '单选题', '60', '4', 'temporibus', 'Nihil mollitia qui iure.', 'MQocd37Ol0AjiX26sHI9', 'aRfKqX4dYYykvxRGwABn', 'BhJbVJy6qumXbu2N80IP', '6y79ACVYeEXZ6lJ7kPki', '0', '0', '0', '1', 'Prof.', 'gGmGzFRHKsfAsVBS4Vyh');
INSERT INTO `exam_questions` VALUES ('37', 'title4400', '英语', '单选题', '60', '5', 'dolorem', 'Neque aspernatur repellendus aut illum consequatur sed.', '3QGsOXqSiYpv2uEdAl0Q', 'EHHvvPVxdqCjR31v6WrL', '46VcYIG3SSVHJzxqKrJe', 'YSt4t0OF4ZYSWRjapzAM', '1', '0', '0', '0', 'Prof.', 'zxV1TqxjbSI7y30vaAXp');
INSERT INTO `exam_questions` VALUES ('38', 'title7664', '英语', '单选题', '60', '5', 'quos', 'Voluptas tenetur dolore vel vero perferendis doloribus veritatis.', '3to5WVSsYY15C9DIRMNb', 'RHPMapw7DQjOv5ME7wYX', 'zhjzD7JQyl3xCCF4qcAi', 'dzDr2dHjhF1r41wWpR0M', '0', '0', '0', '1', 'Prof.', 'TnqcvHxOc9ZjNmtXQsTo');
INSERT INTO `exam_questions` VALUES ('39', 'title6655', '英语', '单选题', '60', '1', 'et', 'Quae nesciunt quibusdam quo cupiditate.', 'oQKL0Be4ASsmjUuV1fU7', 'FwDxmqIdMukjiQECcnS8', '9WKCxcDAQqdlZBs27kWg', 'ylOLK9ThWqUMXQkGf5c9', '0', '0', '0', '1', 'Ms.', 'NiYya30XM9xGIYvXRqvA');
INSERT INTO `exam_questions` VALUES ('40', 'title3758', '英语', '单选题', '60', '2', 'ratione', 'Ipsum optio natus perspiciatis sequi.', '5b0w0PXhAv4sCHnL5lM8', 'rukkBhVMQydZDgifGPLk', 'JQtWJsU9gMUQ2ZYE6phq', '2yG1eZ6KImjFEx8drS9b', '0', '1', '0', '0', 'Mrs.', '1ZjRbbdjJ06KwdBGgqrv');
INSERT INTO `exam_questions` VALUES ('41', 'title8489', '英语', '单选题', '60', '4', 'veniam', 'Aspernatur qui numquam ut esse sed.', 'Y6gDMkYQgrUd6G0qzEpu', 'ghXi6tnoLTl7MsWz8RTO', 'IeBvz5KlDkh44SOhVukt', 'cUBvkPxZlOCnrdWL17Y0', '0', '1', '0', '0', 'Miss', 'nx51cFG6E7v1ZSmQC6Ey');
INSERT INTO `exam_questions` VALUES ('42', 'title5567', '英语', '单选题', '60', '4', 'voluptas', 'Dolore dignissimos aut molestiae dolores.', 'eGfl1ncE2tUOZqiDcZoA', 'ip8MbGdlaPFUhIRfgYPH', 'fxMSNlDwJ1tnAan1F9cM', 'rKI9IDCv4iE77HYfMfwv', '0', '0', '0', '1', 'Dr.', 'gpPEFuUCxDrSNP1blm9L');
INSERT INTO `exam_questions` VALUES ('43', 'title55', '英语', '单选题', '60', '5', 'et', 'Minus ad aperiam neque est aut quibusdam.', 'CKY1pKu90mtdeXRkaAD9', 'd6SsRcJD77AwI63N31tO', 'c5ULtVjHVxibUBhUVbgo', '3hjpWvQjb09huhdC8GiQ', '0', '0', '0', '1', 'Mr.', 'JdyeKPNN75jhIarRmJsU');
INSERT INTO `exam_questions` VALUES ('44', 'title8655', '英语', '单选题', '60', '3', 'rerum', 'Esse minima natus repudiandae quo.', 'syaLTQCP2arHKqeo59wP', 'kO9vSKgkWfanehmq5WYX', 'CzCLFCaVPDyD890c7rNa', 'mqeuBKOvJfOOXxtTU4Om', '0', '0', '1', '0', 'Mr.', 'XEiG065zZP4CfzZYiNe3');
INSERT INTO `exam_questions` VALUES ('45', 'title5952', '英语', '单选题', '60', '5', 'consequatur', 'Atque ab ratione quo praesentium in fugiat ipsa.', '62bPRE21pOYenCInFjh2', 'Jpnvs1tji1HfSK9ploWe', 'JNreQD8LyILoEhm4CFEz', 'AFg96iuO2HoNHL2USs39', '0', '0', '0', '1', 'Dr.', 'RO5enfhz7DiFltz0qExp');
INSERT INTO `exam_questions` VALUES ('46', 'title8279', '英语', '单选题', '60', '4', 'non', 'Ut quidem saepe dolores pariatur aut enim debitis totam.', 'yfBck0G0eDzdxs8LTRll', '1Oq4hbkiBVgW3KzMBZXL', '6eDiz0HuJC4UhwuYglsL', 'eGf4xMBPq7PUF2VnwJy0', '0', '0', '1', '0', 'Prof.', 'dVTBiQTYuh4SuCOnq9eQ');
INSERT INTO `exam_questions` VALUES ('47', 'title3840', '英语', '单选题', '60', '2', 'ipsam', 'Facilis dolores nemo ipsam mollitia.', 'DSx2Q0EezMdW2MHFwco7', 'dgCBpGv5bcgP031OVcsm', 'GS3GwbWdsRMSmrcPefsL', 'scjGuNAgcgHGRuN4odMN', '1', '0', '0', '0', 'Prof.', 'TTJ2fepHlzPGytkccsrB');
INSERT INTO `exam_questions` VALUES ('48', 'title2479', '英语', '单选题', '60', '3', 'itaque', 'Similique deleniti nihil cumque excepturi laboriosam tempore totam.', '6wrGI2bxHLAPjGTIXRKr', 'tcGgHfXC70y4On9KhwcT', 'Kb9y1ypLqMRDMDSVlbeS', 'l1tJMswazAw5Qvlwdjx3', '0', '1', '0', '0', 'Miss', 'IJvBA7cFy3zJ9kdTblYA');
INSERT INTO `exam_questions` VALUES ('49', 'title4901', '英语', '单选题', '60', '5', 'tempore', 'Unde et vel natus dolor fuga.', 'j8zEf2UrAB6CccHDVzjE', 'zupVBgvIMehjOTbTNfzF', 'QVpSMmTuKvgHSZJhdwRW', 'BvienyiTRbWs9LYsDGi2', '0', '1', '0', '0', 'Dr.', 'gIDxuq4AUrfSQdsJohBF');
INSERT INTO `exam_questions` VALUES ('50', 'title5483', '英语', '单选题', '60', '1', 'impedit', 'Delectus mollitia minus iste.', 'A10chIyXXLNs03HTc0q0', 'cdI39sFf291SvVoUXwLs', 'I92aSdUWgUyTERb1abId', 'JRkmOQF14vgPUMyVaPFr', '0', '1', '0', '0', 'Prof.', 'Np0Sllxf27IDXgWhvjeV');
INSERT INTO `exam_questions` VALUES ('51', 'title3399', '英语', '多选题', '60', '5', 'ipsa', 'Numquam qui in eligendi dolores dolorem iste.', '8Sh1DU45BuWcQalbwq5Z', 'qWVfDgxS5knDvjjPwnIl', 'VRXQQWzaeOt8CcganSGP', 'eWLTQsuR7UTiQYSU2vhJ', '1', '1', '1', '1', 'Prof.', 'taIZZiBWgAzWaEPEiPGd');
INSERT INTO `exam_questions` VALUES ('52', 'title6786', '英语', '多选题', '60', '2', 'sed', 'Tempore cumque vitae qui et rerum.', 'xwV4rIinjXnXjqEyDBKW', 'QGN2lNSCS3wa7fy0TjRD', '4xJhzVrMBX4P7hCoAVTi', 'l8vGGb5MObZN0HIgIzia', '0', '1', '0', '1', 'Mrs.', 'Yfm5LP8zdWIF0PNvc0BN');
INSERT INTO `exam_questions` VALUES ('53', 'title8048', '英语', '多选题', '60', '4', 'tempora', 'Odio quo blanditiis explicabo non veritatis itaque et molestiae.', 'k9hjmEYSFPJPHi8x3Gld', 'pGCnwey6gc0PbrruxtAq', 'RqLhLFedyyBoebi4FyZD', 'ZIkJNwsHv6wS7UywzzEp', '1', '1', '0', '0', 'Mr.', 'rDVT3NocI2RxYHWAaevZ');
INSERT INTO `exam_questions` VALUES ('54', 'title7925', '英语', '多选题', '60', '1', 'qui', 'Corporis id enim nulla nobis eum.', 'LCrb9nG5oXnJyKRLqe0I', 'FFnUVfoDEc2SbnN3uDYB', 'gv7Jg25DjdUrJO835Hyq', 'wtydcjvoVDi3wyVLJFfs', '0', '1', '0', '1', 'Mr.', 'dXgAl8RdtPQaSbSBMe33');
INSERT INTO `exam_questions` VALUES ('55', 'title6755', '英语', '多选题', '60', '1', 'velit', 'Voluptatem reiciendis aut ut repellendus.', 'FyfXg4m7EuZML4aSzK4I', '1Xhpg5AXFvPTZCs2tF8D', 'zlfjcmm7KC99kmlxm4u3', 'Rms1m2zHU93oR7nsCzgX', '1', '1', '1', '0', 'Miss', 'ScsepmzkPgPdzVb4q6YQ');
INSERT INTO `exam_questions` VALUES ('56', 'title5687', '英语', '多选题', '60', '3', 'quo', 'Et illum amet sint voluptatem perspiciatis iste.', 'vdRKu8lFXMKEqZiIOCvp', 'rL1kyu6WZWSiqJljZ73R', 'BMEASGgfXziqiYaFvoVE', '7m2lX5jVcDXPcQ9nQzuu', '1', '0', '0', '1', 'Mr.', 'q9yuioOaghQpvfnFom1L');
INSERT INTO `exam_questions` VALUES ('57', 'title7158', '英语', '多选题', '60', '2', 'ipsum', 'Modi qui amet qui voluptatem temporibus dolore.', 'XUmxaC9F3yjOko7U6tgo', 'lYLzzsvlhVtk6DHbDdy1', 'iyrEE11CTmnX1qLUHHuD', 'iWpGhFFfQPsPRtSRXwCQ', '0', '1', '1', '0', 'Mr.', 'vnGUeTqROaGue3AoqlSN');
INSERT INTO `exam_questions` VALUES ('58', 'title1596', '英语', '多选题', '60', '4', 'sequi', 'Veniam rerum minus nobis a et eius.', 'j0zPEXIvpXzcTJpjtesQ', 'V5LywNXT3R0Jdoq5kmQ7', 'Kc0Od6uBJind0aQRakxN', 'MvuNE1RvhmgKfQkiYEqT', '0', '0', '0', '0', 'Mrs.', 'oY2zwjk1OlK2cyepRRBv');
INSERT INTO `exam_questions` VALUES ('59', 'title3018', '英语', '多选题', '60', '2', 'aut', 'Eum voluptatem in ut veniam ducimus architecto dolor.', '88sF7EHUqFWO8IDa2EsJ', 'vhWQ7HoAok9jhZQg0xA4', 'hIZw7imRWirD9EOA3rXY', 'UdKjU1huTlGCVcdd0qOv', '0', '0', '0', '0', 'Prof.', 'GBonaRQcpaW8n9YbbeLp');
INSERT INTO `exam_questions` VALUES ('60', 'title7722', '英语', '多选题', '60', '2', 'nisi', 'Incidunt doloribus at tempore esse et dicta officiis.', '772PRZioEloznvYV0c8L', 'dpi9UUHqlEo8724EVoeE', 'Oc3vQNipSIqp265eI0mI', 'GQZqN58RCcSmCZq0pVTX', '0', '1', '1', '0', 'Dr.', '2tDEadl6kR2GWWOuEu9P');
INSERT INTO `exam_questions` VALUES ('61', 'title6614', '英语', '多选题', '60', '2', 'ut', 'Sunt rem ipsa numquam eius.', 'LqHQIOHal08Xb30Q99Ys', 'PNsNF1858fWlEUJiJq5c', '9trgW3sRDDHd9suvnfBo', 'j7gbmKwJAUu5oecPY9HM', '0', '0', '0', '1', 'Miss', 'Wv7i6Eg1Q8WQX2TgTyrH');
INSERT INTO `exam_questions` VALUES ('62', 'title3565', '英语', '多选题', '60', '5', 'odit', 'Aut tempora aliquam sed rerum est recusandae sunt suscipit.', 'Lj6nL9Gs21xkN0ZiXgix', 'SdSvJn0sagXMeW0HYZrY', 'VYRpzQAIUZXJhsO4z5m7', '27McGz3cXKqmNBVEO40G', '0', '0', '0', '1', 'Dr.', 'pkqpagBGKR2AJCFn6Fr5');
INSERT INTO `exam_questions` VALUES ('63', 'title388', '英语', '多选题', '60', '4', 'veniam', 'In vitae facilis consequatur nihil qui ipsum in.', 'OBwcnILlgj708FHCApzQ', '8axwZLXghQwnv9kuDEio', 'y0MXuXnuQWYrcUEkir4U', 'b71NuyvUw3RAk03vmUQ3', '0', '0', '1', '0', 'Miss', 'jli79FziVSxmUItGMHMQ');
INSERT INTO `exam_questions` VALUES ('64', 'title5320', '英语', '多选题', '60', '2', 'expedita', 'Reprehenderit id aliquam tempora.', '14qxk9u3cjC7u95AZRwu', 'jMIW5hsfwhh12pt8xg7J', 'LZAP0NovLE9ffCqAewHI', 'LZjfPJadHh6SQ1e7XSkK', '0', '1', '0', '0', 'Dr.', '8xknMFkrAlR0KrKxVrUk');
INSERT INTO `exam_questions` VALUES ('65', 'title2539', '英语', '多选题', '60', '4', 'beatae', 'Sunt quo sit est.', 'TAmZxKvLpWRxTFRn2UMe', 'wgReAXG4rFeWACd5V0Ba', '5FE2Frnm8CQP290biwPJ', 'LV4s0bUFJWvFOppLw9n8', '0', '0', '0', '1', 'Mr.', 'TbpkNeiTRPSuClCPS7kV');
INSERT INTO `exam_questions` VALUES ('66', 'title3044', '英语', '多选题', '60', '4', 'nihil', 'Velit nobis quos non consectetur asperiores voluptatem.', 'Nk6JDE4QEIXiQLxwXi4f', 'hSrxlVTjJb7MN0Vdu2jx', 'MW8MHwiSXdmtLnR2zVJ9', 'qVASDzVx1AGq07JsCkYZ', '0', '0', '1', '1', 'Dr.', 'aO1MpegLVzjYIL180fWQ');
INSERT INTO `exam_questions` VALUES ('67', 'title6054', '英语', '多选题', '60', '2', 'nisi', 'Ea odit asperiores vero nesciunt enim neque quaerat.', '2UBPN0mwpeiJ8PjDvJqh', 'ao7qyqC6zVOqPTCfkeSj', 'y0o2XyWsiHpYXoXR04UN', 'AMHMwefTJMzWAeweEMI5', '0', '1', '1', '0', 'Prof.', 'yyIeVayLNV20gvUe0Dvf');
INSERT INTO `exam_questions` VALUES ('68', 'title4191', '英语', '多选题', '60', '1', 'saepe', 'Provident corporis ab et ut ut est at.', 'RgWNIi9W0cc7xitW0jYM', 'uLBebuD0L4Ud3GuN8sFe', 'wSirs0agGh1iF3hNCAIr', 'qXTIo6F05czbrhAHGxe9', '1', '0', '1', '1', 'Prof.', '3TDxKHR7tKColGvzmOi6');
INSERT INTO `exam_questions` VALUES ('69', 'title3099', '英语', '多选题', '60', '1', 'id', 'Totam minima doloribus eum esse et quia.', 'QjL0oRbWVatRBHORn2Iz', 'qnWHkwDOnQFKJNcvKxQ5', 'YnDRz8pomlE3okPbB2TO', 'VfGyzRXYN8QaDVu7KdWO', '1', '1', '1', '0', 'Prof.', 'vBhLXPK6DjdvTFjBomxm');
INSERT INTO `exam_questions` VALUES ('70', 'title8641', '英语', '多选题', '60', '5', 'repellat', 'Explicabo culpa fugit mollitia minus velit qui iusto.', 'QOI2hWjhrSr3hu9SJe3V', 'ExNeWV18Hk4AfrTVl2jT', 'TqLvAgx4AhocIu5CxG9Q', 'Aea3t7ijm9UOyzSJTXkt', '0', '0', '0', '1', 'Mr.', 'XyU345bVPsNDvpUu9dZY');
INSERT INTO `exam_questions` VALUES ('71', 'title8596', '英语', '多选题', '60', '5', 'ex', 'Amet corrupti quaerat quia iste.', 'AjSw7s9xQ12EE9g3ADln', 'MCyZK0wZyifbevCIVJTa', 'lBwl9itnqLuZ2arI310B', 'KCb6bTPyhWbdi6ExeIuP', '1', '0', '0', '0', 'Dr.', 'GZyG2gBViWCTO2IEpO7a');
INSERT INTO `exam_questions` VALUES ('72', 'title7594', '英语', '多选题', '60', '3', 'dolores', 'Recusandae deserunt consectetur quis architecto fuga.', 'mPPvzxprICLdnoNycTgw', 'RRRhJgRrCuzoRD8tq6Vb', 'FW0x1F11yor3DQzjy44L', 'WxihiEej72l2kLxUc6PF', '0', '0', '0', '0', 'Dr.', 'm1VCHfykroX0Z6smbFY5');
INSERT INTO `exam_questions` VALUES ('73', 'title4631', '英语', '多选题', '60', '4', 'enim', 'Ut earum numquam sapiente sit reiciendis est repellendus.', 'kdwIASnmpCvbQekXpK7b', '2U77OLvOOhOmOFb2IsS6', 'JfCabRIuj9uYEYu5XCbK', 'hDfb9eMGNBeL04Ulc8kx', '1', '0', '1', '0', 'Prof.', 'DuJAVrz1GxGU6I9PzLSe');
INSERT INTO `exam_questions` VALUES ('74', 'title2577', '英语', '多选题', '60', '1', 'exercitationem', 'Eos doloribus totam architecto dolorum sed facere sunt.', 'nz8Jq1HD5QsOEGqVtqIM', 'CzcwxisJo1Hqko6m7cJK', 'CdquS9HxxNYr5GhmFKoz', 'iKdkpII8L6cuaOKGRRUs', '1', '0', '1', '0', 'Prof.', 'qeGe1iLkfPvmVv4MYllq');
INSERT INTO `exam_questions` VALUES ('75', 'title2552', '英语', '多选题', '60', '4', 'iure', 'Voluptatibus natus in eum laudantium vel a.', 'fv4WcqYTZVerkJCxXJHC', 'TLDLSf35eAYepH3SRvsp', '8VY1lmznvlxc5xcl3BGf', 'TX0kAgSdiTJGUOYZzK3P', '1', '0', '0', '0', 'Mr.', 'kpf0HVlVLvQc7NMdMtcq');
INSERT INTO `exam_questions` VALUES ('76', 'title2324', '英语', '多选题', '60', '4', 'aliquam', 'Et minima ad aut vitae qui.', 'Sp41LuMyQGxr9KHBPDDG', 'ykQZ0M2CEFgVj6YGDsMQ', 'CwvxjENkGp918kjGmIMi', 'tLsMOI6ZqNQAC9tNpx43', '0', '1', '0', '1', 'Miss', 'uQdMRLoy8A1xujOpv7u1');
INSERT INTO `exam_questions` VALUES ('77', 'title8285', '英语', '多选题', '60', '3', 'exercitationem', 'Quaerat modi debitis odio quam expedita repellat vitae pariatur.', 'vKrR6pUX4a2IEL287RDH', 'UUo06XeLQRSrJHXsxvOa', 'mmha5aU0YQXasva4j4lC', 'lQSbJUcwdROJhGtF9NSi', '0', '1', '0', '0', 'Dr.', 'FaXmHWVY1T1zZLKpWnKu');
INSERT INTO `exam_questions` VALUES ('78', 'title4705', '英语', '多选题', '60', '2', 'iste', 'Occaecati laudantium et perferendis rerum sunt.', 'D54Zie9KtYiM73D9hdus', 'cOAyLFbrYQILMVfhdcY9', 'ytNMq44cAAGSCnvkU9yd', 'GO0ynDmzpGkrcx7ZW00R', '0', '0', '0', '1', 'Miss', 'UderWlEGaRXeMxX0HZm5');
INSERT INTO `exam_questions` VALUES ('79', 'title9320', '英语', '多选题', '60', '1', 'sed', 'Rerum maiores neque et ex rerum unde.', 'GQSQ6I4EcW9FoPCiRzOI', '0DpDNGXfwe9qrMQ8EIIW', 'O9dZdrzYVpxnMWAWDUBJ', 'zB5GCrPGqnGmh0KqypiI', '0', '1', '0', '0', 'Prof.', 'QCISwvcFJGC3SQbOB1Rp');
INSERT INTO `exam_questions` VALUES ('80', 'title3783', '英语', '多选题', '60', '1', 'aperiam', 'Ad sint autem ipsa recusandae veniam.', 'RJnyWtnhFdas6VCEQsWJ', 'glD6QZ7CLWZPmSfmsv10', 'PeS8QIVijSh8fBBQkYqe', 'Sx05zjdsBW4xAUn6WZlD', '1', '1', '1', '1', 'Ms.', 'XFvPO9JnMp1zV6qOJo3B');
INSERT INTO `exam_questions` VALUES ('81', 'title5588', '英语', '多选题', '60', '1', 'quia', 'Vitae dolorum corporis ut occaecati.', 'Y6Cn423FvBn30DPpbhAk', 'hSHxDEhb5EbubbBfo0IH', 'oMhq0DWzys6n5HZTHIIX', 'twKsBHncezJlsABwXvqZ', '1', '1', '0', '0', 'Prof.', 'duHJLfRaORJPPZh7x203');
INSERT INTO `exam_questions` VALUES ('82', 'title8152', '英语', '多选题', '60', '1', 'dolores', 'Voluptatem autem cumque incidunt vel.', '2wOm1cPR4YatMYmQBblp', '6sQC6fYmowHj3eQ6AMpS', 'pICHbNSywENrbSO7wz9C', 'zqe5woTmCuJhVUb8UM3k', '0', '1', '0', '0', 'Ms.', 'Ku3SyDtM4OhDxvu5jxX8');
INSERT INTO `exam_questions` VALUES ('83', 'title5390', '英语', '多选题', '60', '2', 'nemo', 'Quaerat maiores beatae rerum harum sit.', 'BWDWHJhWd9zsl7QhfZTE', 'CdhQjyXzqS54KC21uRyB', 'XrK3jaOFU1RsmMt7LJyq', 'x87fn2bkuBv0XlI8CTD1', '0', '1', '0', '1', 'Mr.', 'gCdxH0RsBgMvFJkpK7j7');
INSERT INTO `exam_questions` VALUES ('84', 'title8185', '英语', '多选题', '60', '4', 'officia', 'Saepe id sunt voluptatum libero aut.', 'Ojc4WvDllhYVphZxOlz5', 'AUnD41GiXUTUY4bLoE2j', '43y533weS6WIgEjr7kwd', 'J3hWI9S7LNxwEDImIgp6', '1', '1', '1', '0', 'Ms.', '9iCkgAn6JwJQtpQXdmfO');
INSERT INTO `exam_questions` VALUES ('85', 'title1299', '英语', '多选题', '60', '2', 'velit', 'Sit id laborum cupiditate rem enim ut exercitationem.', 'zS6e3SuUnhx67XHgIbvd', 'i8cpHemLVqZViW6iFhao', 'fY1hZYGtG4mmchQCQY0a', 'j2B6GM8mxV6Vzy7LgbBt', '1', '0', '1', '0', 'Prof.', 'axI5FIpkcUE039Hol0Kk');
INSERT INTO `exam_questions` VALUES ('86', 'title1097', '英语', '多选题', '60', '2', 'reiciendis', 'Odit est totam repellendus quod.', 'Ci8NAu0D2RcX2FI0SVcu', 'OvMoW83JnTLMqGVVyOoL', 'n8hXNwdDOlcAV2Ug14HQ', 'Y2Z6iutxF0zRqpV1XSOE', '1', '0', '1', '0', 'Mr.', 'Fu8UPdcogWJGEFAD8Dl5');
INSERT INTO `exam_questions` VALUES ('87', 'title9451', '英语', '多选题', '60', '3', 'velit', 'Ex accusantium qui repellendus amet unde ducimus sint.', 'X8310tIwEzIg4tVHNxac', '2sAUWEb3EjlFCwckBcYU', 'tVPOdOK3vCFATnCE7AeX', '3FMmF3Ik7enOj2WggADn', '0', '0', '1', '0', 'Mrs.', 'IfJYbylQgcE0GA79PfUO');
INSERT INTO `exam_questions` VALUES ('88', 'title3297', '英语', '多选题', '60', '4', 'reiciendis', 'Iure et hic reprehenderit ut ullam.', 'PAHjXvWmX7ZbPrHAWnM1', 'r1HPR1y4oXVNCvPwFF0q', 'pgNnGWDmhWBZAiI7OSc7', 'mHbDbL2yoj5fKtQyUBsW', '1', '0', '0', '0', 'Miss', 'yTIwedvSTh34U1u0Ni16');
INSERT INTO `exam_questions` VALUES ('89', 'title1962', '英语', '多选题', '60', '2', 'vero', 'Impedit ipsa aut autem sit id inventore.', 'cqWPRcmIfz9hCRwCOpwF', 'hg3q4Y3U7nfiH3wCtuBS', 'U9a1saNUlkVdebjJgwpM', 'DTSB9dYRppwZ5OhD7Qfe', '1', '0', '1', '1', 'Mr.', '2Jphz7tpUEda7BK6aN9h');
INSERT INTO `exam_questions` VALUES ('90', 'title1316', '英语', '多选题', '60', '3', 'aut', 'Aliquid recusandae voluptatem consectetur ut veniam illo quasi fuga.', 'jiCRbJzXqpUwlANKEqt8', 'Co72Hn5cl92N2Za09hcc', 'W5bcLEtO4ZbKds0aUkQp', 'OIEvw5vRRpdSx677mJGm', '0', '1', '0', '1', 'Prof.', 'gRbHtcUbsQj4ovtUAmEV');
INSERT INTO `exam_questions` VALUES ('92', 'title1863', '英语', '多选题', '60', '2', 'harum', 'Provident velit cum molestiae placeat.', 'XLU3AsEqI0yCGwNu2BsG', 'eDOaBMfjSXeFq6L0DpuA', 'BB7EpmNss2TVaEtuaKnx', 'JEiUOg27schg6huUNawT', '0', '1', '1', '0', 'Mr.', '6FkN0MwZcEvqF8zHfyv9');
INSERT INTO `exam_questions` VALUES ('93', 'title9823', '英语', '多选题', '60', '5', 'in', 'Facere quas perspiciatis velit dicta beatae et.', 'hDtWau8EMcwna1zIIaej', 'Qs04f75RUycuQMEB52gY', 'R4s3Lng2dgrzfMoF3OuV', 'YVRvIw6yO9JHlnSMeAuO', '1', '0', '0', '1', 'Prof.', 'zabMENUpGv9aZqJTidjG');
INSERT INTO `exam_questions` VALUES ('94', 'title386', '英语', '多选题', '60', '2', 'earum', 'Labore qui ut est aut quis tempora eum cumque.', 'STqjQK5bYiRw364lVwhz', 'oBfALPZLnKxrHYxLL0SF', 'EpYgwb7DMZMrg7NfRboE', 'yBP7FfaipjxAmus9LPOj', '1', '0', '0', '1', 'Mr.', 'vrylViWY6Cpg2GbYCuRO');
INSERT INTO `exam_questions` VALUES ('95', 'title9603', '英语', '多选题', '60', '3', 'quasi', 'Quis nesciunt rem non omnis nobis.', 'nUgKGQtAw5ZsNfHxshVt', 'D00dgdoLPah5Xa5Onm9J', 'BsNb1lHOlAyI7ECDgOLG', '5S9ulVArul3K7PMhs6CF', '1', '0', '1', '1', 'Ms.', 'R1sbzYkOUTnJA9TIQt6U');
INSERT INTO `exam_questions` VALUES ('96', 'title5303', '英语', '多选题', '60', '3', 'perferendis', 'Corporis ducimus omnis qui excepturi in voluptatem facilis voluptatem.', 'ojnxbIQWb5THHDIEV2k7', '89LnHEtNBmu0uQCYEVJv', 'cPAwoZRTiqppZUzQSn4A', '9yEm1X1e4PRhwScXZDo0', '0', '0', '0', '1', 'Dr.', '36x8WVjbKT6kvsTXErC0');
INSERT INTO `exam_questions` VALUES ('97', 'title9155', '英语', '多选题', '60', '3', 'et', 'Esse ut et temporibus vitae.', 'JlkLF1NrIIxUQd2xEZ9g', '0ZGRzVWI6364CMgsZWaJ', 'x4TPSbTQoeYUQovpW6Gw', 'pTffKcRetBUwV456EdPk', '1', '1', '1', '0', 'Mr.', 'W0pudYGOXs9GkLA7H6L1');
INSERT INTO `exam_questions` VALUES ('98', 'title5350', '英语', '多选题', '60', '2', 'vero', 'Eos voluptatem adipisci esse tempore officia dolores aspernatur.', 'RnzfxxE7FFvJ0API8Rb1', 'n7Sn21tqxZ8sRslanZvg', '3lRNR70xkSproDfkCc93', 'bQoCgcjFkWpqT30NN4Px', '0', '0', '1', '1', 'Ms.', '0QIQKt7dMWIB7gosDHEv');
INSERT INTO `exam_questions` VALUES ('99', 'title6919', '英语', '多选题', '60', '2', 'tempore', 'Ex enim ut iure quaerat quia omnis eum maiores.', 'TgKMJAfKI9mPYQpVLSbN', '94twm5hiNZxGogqkazYW', '3Glg6WCXq7GGbR2c3SGq', 'Yyj85MEsaZG9oCBhoti9', '0', '0', '1', '0', 'Prof.', 'dx1ubXQfTeIvTp34Qh01');
INSERT INTO `exam_questions` VALUES ('100', 'title5348', '英语', '多选题', '60', '3', 'distinctio', 'Suscipit vel vel nemo laudantium eaque.', 'QYSjtMggiRhaLksLiKXf', 'LF6o8wqb5trUwM7zlaXr', 'tL75f6SAy8SVcF9TJTJ7', 'A455j9V1x0tPCjdB6QLp', '1', '0', '0', '1', 'Dr.', 'ckIGBR4rqh75GrlIOqCv');
INSERT INTO `exam_questions` VALUES ('102', 'yw0201', '语文', '单选', '60', '3', '《狂人日记》的作者', '《狂人日记》是中国第一部现代白话文小说，写于1918年4月', '鲁迅', '冰心', '胡适', '朱自清', '1', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `exam_question_libs`
-- ----------------------------
DROP TABLE IF EXISTS `exam_question_libs`;
CREATE TABLE `exam_question_libs` (
  `examination_questions_lib_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考题id，自增',
  `encoding_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '题目编号',
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '从systemparameter表中取值：科目，语文、英语、数学，默认英语',
  `type_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '从systemparameter表中取值：题型：单选题目（默认）、多选题目、听力题、口语题、填空题;',
  `time_answerquestion` int(11) DEFAULT NULL COMMENT '答题时间（s）',
  `level_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '从systemparameter表中取值：题目难度：1、2、3、4、5，默认3',
  `title_question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '题目标题',
  `content_question` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '题目内容',
  `a_select` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选择A',
  `b_select` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选择B',
  `c_select` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选择C',
  `d_select` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选择D',
  `a_answer` tinyint(1) DEFAULT NULL COMMENT '答案A',
  `b_answer` tinyint(1) DEFAULT NULL COMMENT '答案B',
  `c_answer` tinyint(1) DEFAULT NULL COMMENT '答案C',
  `d_answer` tinyint(1) DEFAULT NULL COMMENT '答案D',
  `listening_answer` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '听力答案',
  `remark` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`examination_questions_lib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of exam_question_libs
-- ----------------------------
INSERT INTO `exam_question_libs` VALUES ('1', 'title5038', '英语', '单选题', '60', '2', 'adipisci', 'Delectus at perspiciatis ut sint sint.', 'MgirQ9mj407AmrMBqTSL', 'DNGvo2f5Fz2QGjUDCqww', 'mBcajGyV6XkkYkVQvfiF', 'zFkzWn402VSJdcLWtLzk', '0', '0', '0', '1', 'Prof.', 'iV8Jf2TKm3h1epYn6M01');
INSERT INTO `exam_question_libs` VALUES ('2', 'title2151', '英语', '单选题', '60', '2', 'consequatur', 'Omnis dolor totam ea dolorem incidunt dolorem.', 'SbjdwxJJer5Zu9Flxh9z', 'NksQ5EFYvVRxGxFOWcaP', '2JcETeblyyuovg5jfzJF', 'fBnGzf0MHhWRNYbVuRAQ', '0', '0', '1', '0', 'Miss', 'gSnvke4JaKTGFQ4alu9J');
INSERT INTO `exam_question_libs` VALUES ('3', 'title5771', '英语', '单选题', '60', '4', 'vero', 'Aut quis nemo voluptas provident nostrum nulla ut mollitia.', 'c12JxU7ZFt6AqKNcuk9K', 'SSczlTTBnDGg9md5gAMo', 'tOGCtfzJe2cGHfumoKxH', 'rICnSnJ0zw7zcL39mNaP', '0', '0', '1', '0', 'Ms.', 'YrTNyBOG3e1CQjXxsNg8');
INSERT INTO `exam_question_libs` VALUES ('4', 'title9777', '英语', '单选题', '60', '4', 'sit', 'Unde amet doloribus voluptas rerum quas.', 'ZVuWyPDWl2JZKm1WYkUX', 'n49RXvZOUL8wXkvaZdbz', 'Kg8vgLEeXAunTrxeOeGX', 'c79H2S488n887nTd2GXQ', '0', '0', '1', '0', 'Miss', 'BJngw7y0J1gYL8EvHdbL');
INSERT INTO `exam_question_libs` VALUES ('5', 'title686', '英语', '单选题', '60', '5', 'et', 'Ab id aut eos provident.', 'RgUfqLU0prBitfmjyeBI', 'LA5bKlpwCFrGarhlqhUd', 'AUnlHami7h42hIz8gT58', 'AkzSBHdMcsEoKuc2F70m', '1', '0', '0', '0', 'Miss', 'yP5wXx0V5K8p9mE0QqT3');
INSERT INTO `exam_question_libs` VALUES ('6', 'title6230', '英语', '单选题', '60', '3', 'odit', 'Et odit natus similique nihil.', 'qBXc3BcxcNAApnj1SshW', 'MyIW8jX6V40ykAtnGAS4', 'QLauWyiSiGhVlFB18P1k', 'qDLTwUbKOKTdZXsJzJTf', '0', '0', '1', '0', 'Mrs.', 'OfDmpAFGHs7fNXjcOaSp');
INSERT INTO `exam_question_libs` VALUES ('7', 'title1525', '英语', '单选题', '60', '1', 'qui', 'Odit incidunt animi tempore esse optio voluptas.', 'gA61Z8S76JHNhl2QpYv6', 'AmKINzgJRfIOlKWrFeyP', 'Qd2RgdsU8PVs7x2Gqgql', 'o9zIC0UWpVk7UloVfdML', '1', '0', '0', '0', 'Prof.', 'k0qD5JLhzmzQczA7ciAD');
INSERT INTO `exam_question_libs` VALUES ('8', 'title9094', '英语', '单选题', '60', '2', 'fugiat', 'Rem velit distinctio corporis ipsum at rerum.', 'ZHBGpZ2ZK6a0Rz7u6vjE', 'OYFb8fODXfhn14RzJYjY', 'OY2zbx6YFR0IqOoERrS6', 'UMZqKEevLsWGb43uG9dk', '0', '0', '1', '0', 'Ms.', 'WjIlCMzmC71KYQv8YnFK');
INSERT INTO `exam_question_libs` VALUES ('9', 'title7184', '英语', '单选题', '60', '3', 'eum', 'Qui voluptates itaque quod deleniti error repudiandae.', 'B4Mq3ZdSTgQC0HFqWAGs', '1QJhUQVSxWjEOolL5gh0', 'VI8EJ1YZMnK0nJMKyLlr', 'LPSKWbd5ZJji7CaPiQQk', '1', '0', '0', '0', 'Mr.', 'VXBTlFV7456rjS05SCib');
INSERT INTO `exam_question_libs` VALUES ('10', 'title5529', '英语', '单选题', '60', '2', 'ea', 'Omnis voluptas libero quam amet.', '5sLWsMDT5UjoiXCW5Yrq', 'y245FG2xgQBmEwqHbEkr', 'xWk0e78LJpN7RbZqiyfC', '7Z3mEqWnQ5UKE2GvHnWF', '0', '1', '0', '0', 'Mr.', 'dc8S63v74fiv7eSmYCk6');
INSERT INTO `exam_question_libs` VALUES ('11', 'title7282', '英语', '单选题', '60', '3', 'ratione', 'Modi molestiae est ut qui corrupti dolor inventore sequi.', 'WQM2ObOaHW3MDzQBAmqZ', 'Y0pCYG1sgBtyu6sSj5uw', '8J5FC7VFBVSPeLwlkgC6', 'Bd3WFVnRVuCnHJ1gE8hn', '0', '0', '0', '1', 'Prof.', 'Y9BTB5HvBlgrCap3imSe');
INSERT INTO `exam_question_libs` VALUES ('12', 'title6245', '英语', '单选题', '60', '4', 'reiciendis', 'Ea deserunt nihil et voluptas temporibus non.', 'wxGjA5nfLDXZs2LhvcO5', 'YE19pOTiOpamCMN1ej0W', 'DjDF7T6CbBcQy8wUmPJ4', 'bKPTJZhHQuZIbBfSPks9', '1', '0', '0', '0', 'Mrs.', 'Cjgzl7FmBYZXItwRrFQV');
INSERT INTO `exam_question_libs` VALUES ('13', 'title1117', '英语', '单选题', '60', '4', 'aspernatur', 'Quidem ut vitae ducimus omnis neque.', 'Zl30X1SGKsB2b2XAuyhk', '0HZEgNC9HLBBpTjmcimN', 'jK09FcZiT200HT7DaTfB', 'YVQCbQwBIaBWshNBsqgA', '0', '0', '0', '1', 'Dr.', 'XkRDABZn5VcQmC3sF3Sz');
INSERT INTO `exam_question_libs` VALUES ('14', 'title6424', '英语', '单选题', '60', '5', 'quo', 'Veniam dignissimos consectetur adipisci dolor hic sed.', '6zWsZRotDnOzbwDcPNB3', 'auRcAt9puVfc1QmDW28X', 'ZGxfukndJlpVCvaStx2T', '06eYe76nzvz1pq184S8p', '1', '0', '0', '0', 'Dr.', 'UMnTRnaTRvkzijhNvymn');
INSERT INTO `exam_question_libs` VALUES ('15', 'title5846', '英语', '单选题', '60', '5', 'vero', 'Asperiores molestiae excepturi est ut.', 'EdHGssCVwghfqnoNqj3v', 'LfS7Qvejm7BkYtnTjFly', 'gVJ2vwpPv34Tte7ykTj6', 'GL6GOXW23LJxKmBlXAOd', '0', '0', '1', '0', 'Dr.', 't6QyQ9kgwS0yQcwlcuzm');
INSERT INTO `exam_question_libs` VALUES ('16', 'title1486', '英语', '单选题', '60', '3', 'est', 'Vel porro rerum et quos commodi eum.', 'NUvdfw0mhbjEF7YiXjVH', 'VDDRpjFpwrA9iveXUmUy', 'O4lPwM9WyI3PosgeED7v', 'q6qh1mWEJz2MP5ckL1Qr', '0', '1', '0', '0', 'Miss', 'pL5wmQxW39wS1DcqqLbi');
INSERT INTO `exam_question_libs` VALUES ('17', 'title9809', '英语', '单选题', '60', '4', 'aperiam', 'Amet voluptatum totam distinctio reprehenderit nesciunt omnis est.', 'VB6RDm8CFwbKPGjUohJz', 'n9v8P7UhRx0jvmJHaTHK', 'XZOBV3PMxnC2lXmN4Lvc', 'Ss7ycjptKuhcH6DV8nBU', '1', '0', '0', '0', 'Dr.', '4okfsnXkZpkpX7JyOqdM');
INSERT INTO `exam_question_libs` VALUES ('18', 'title5429', '英语', '单选题', '60', '3', 'magni', 'Provident minima doloremque quia autem veritatis consequatur et voluptates.', 't5OcvroKjpTv7SAQLXcx', 'V9ZJHWXJFHyWZ74nSjQH', 'yErs4POVKhID80WewEif', '3JhWpyXzRXEmJos8aTz6', '0', '1', '0', '0', 'Dr.', '9ieJRysHHG8qGlk8CSsV');
INSERT INTO `exam_question_libs` VALUES ('19', 'title4769', '英语', '单选题', '60', '4', 'non', 'Magnam molestiae ab aut dolorum atque ex perspiciatis.', 'TTmSOKz5QHwkyJuuolIr', 'YrGTGjtUKTe3vTjwz70v', '36bYurRaTRunmLrxJZZP', 'C5e6zXteVECD4cov6oIV', '1', '0', '0', '0', 'Prof.', 'XthTcpHhwT8DmG0BdkTs');
INSERT INTO `exam_question_libs` VALUES ('20', 'title4908', '英语', '单选题', '60', '3', 'beatae', 'Molestias voluptatem et culpa ut est voluptatibus et.', 'T1ZDHatg4Q2mQcYHnM0T', 'UJLL9p194xRBSPUymxYl', 'zWmxv6drfAqMV8WHOlG4', 'E6uCeHWXIgxlDp9zzW9q', '0', '0', '0', '1', 'Prof.', 'VoRDhNUYE3AECFkxuowi');
INSERT INTO `exam_question_libs` VALUES ('21', 'title8229', '英语', '单选题', '60', '2', 'in', 'Quam quibusdam quidem ratione laborum ut.', 'wFV25KdA02HpgCP5DDtR', 'KejNDFDzwNkU96PZ8iPZ', '8qZax9F7dt0kAx70LMsQ', 'WbDGPWW4tb4unahIUAlc', '0', '0', '0', '1', 'Mr.', 'g1YVwum2CxsMrMW8hyOg');
INSERT INTO `exam_question_libs` VALUES ('22', 'title2186', '英语', '单选题', '60', '3', 'quo', 'Odio vero sint atque et.', 'wefNZHgKHA0hD1d2zcaB', '4rB2n15WGMgs1yKENxJA', 'cQxX822Nt0tHqNbTQUzq', 'GVDoho0Q8yfJzW6RfwEn', '1', '0', '0', '0', 'Dr.', '8vglolJTGIYNjBhWDZzc');
INSERT INTO `exam_question_libs` VALUES ('23', 'title4283', '英语', '单选题', '60', '5', 'qui', 'Pariatur ut dolores optio delectus aliquam est.', 'JNi3fyOgBWKOvpfYGcK4', '29aIjpZOCIsgtA3inFxl', 'vPs00ROteLBJQdIg7izM', 'r70NQ3cWf1nz5tadsSz1', '1', '0', '0', '0', 'Mr.', 'cZ4qPmXVqCUDHIg5mB6V');
INSERT INTO `exam_question_libs` VALUES ('24', 'title3480', '英语', '单选题', '60', '1', 'ad', 'Vel tempora dolorum sint commodi tempora sed.', 'vV0eV33aLwmJjSAqgHDi', 'qOxmzeBT35WB7rJ6fc5N', 'XEcWMd9h836s6joUhmHm', 'CEB9PojEZtIouGxUX7Zs', '1', '0', '0', '0', 'Mr.', '8Fe0VDApsd2uqiM0H6Ju');
INSERT INTO `exam_question_libs` VALUES ('25', 'title2358', '英语', '单选题', '60', '5', 'nam', 'Deserunt sunt sint libero voluptatem sint iure.', 'vFwKWv7cXosZ8zN8mCvF', 'XS7lzAKY1G0A9Eeofgmo', 'sXnbYOm5gmdI5Q6O6yX3', 'P8O2Iqqn7smOnek2JXEX', '0', '0', '1', '0', 'Ms.', 'ao3ZF2xofSmNRVUKF499');
INSERT INTO `exam_question_libs` VALUES ('26', 'title1370', '英语', '单选题', '60', '3', 'aut', 'Voluptatem est iure dignissimos consequatur quos aut et.', '3RLmj6HGGItconIVXxHr', 'yI12W9ruqXU5C19rmtcD', 'wMIoYBIb35OPWM5PMAO5', 'pcFm1t1WonXYkxuU4PrG', '0', '0', '1', '0', 'Mr.', 'f6591aAhmdGCZ2NvNvGl');
INSERT INTO `exam_question_libs` VALUES ('27', 'title3774', '英语', '单选题', '60', '5', 'accusamus', 'Nihil ut modi aliquid qui minus minus.', '4oYeHkqWHonmwKiQQ2i9', 'nbN2FIEk5f1TCT3ZDHLw', 'V2T0ab8xvO1RTFAXqsHR', 'oftIPo5mCAOM3z7VceiP', '0', '1', '0', '0', 'Dr.', 'EjKtrWZREdfipznCIQpH');
INSERT INTO `exam_question_libs` VALUES ('28', 'title3010', '英语', '单选题', '60', '5', 'provident', 'Cum facere ut tenetur repudiandae doloribus quia.', 'Q8PpKqcPJKeDIdokXWyj', 'OUPSiygEJgksvhmY349y', 'Fe0zatNDo1bOFzzrbimv', 'Qy8uwzNpweSczgj4RhHL', '0', '0', '0', '1', 'Prof.', 'wm9qIzjdSPBfjD78VlfC');
INSERT INTO `exam_question_libs` VALUES ('29', 'title6382', '英语', '单选题', '60', '2', 'tempore', 'Aut ullam velit quos illum ut.', 'JsqA7wUW8rAcM8SHYCST', '2OIEVFPjnnW62cKKdCPR', 'oIXjS6Y38NSp7xwBHEG8', 'vijmom4oXv0ZyqvXzGOz', '0', '0', '0', '1', 'Ms.', '0Y8N1WAelYQ1DYh4VCPv');
INSERT INTO `exam_question_libs` VALUES ('30', 'title6287', '英语', '单选题', '60', '1', 'minima', 'A quos est consequatur doloremque.', 'o1SB5GGWhsx56SjJBnoe', 'pIbUVPMjJp9qI25CSeeL', 'RBezxfsGyqmYb7x8cO8q', 'ZYXGRFBn4Uh3AJg6EGSq', '1', '0', '0', '0', 'Prof.', 'hsxcI62ZYyNZGjyjrOSp');
INSERT INTO `exam_question_libs` VALUES ('31', 'title933', '英语', '单选题', '60', '3', 'dolorem', 'Voluptatibus consectetur a ut blanditiis quo nemo.', 'kvLlfdCBLfd9UcP7j3Q3', 'tix5bbb0VHQEk2OvM1tV', 'EbhWyJ1bYtaU3695GXj4', 'GOaHRvavJdaDluRxmh2d', '1', '0', '0', '0', 'Mr.', '5wqje80yeOsLoJJsYtwU');
INSERT INTO `exam_question_libs` VALUES ('32', 'title7282', '英语', '单选题', '60', '2', 'magnam', 'Veritatis dolore optio labore ad.', 'JjKbokeresKzY6rXUFJk', 'hdK0k9XJdLMuDSMw5e3o', 'AkUtx2dHPCUnv3NgpMAJ', 'E7zhOwDAxAp9Z9t2hh1e', '0', '0', '0', '1', 'Prof.', '4WNiZzJqROfxIhQejdJW');
INSERT INTO `exam_question_libs` VALUES ('33', 'title7208', '英语', '单选题', '60', '4', 'et', 'Expedita voluptatem deserunt quam velit ratione temporibus reprehenderit nam.', 'K0FSqgqFQRZIL5Zt1UdE', '68JMGViXoO4lJHZqYkMt', '1xxyaa9zWHau7qWHARKc', 'Wk9RzpFsqYUbCc0SCUM7', '0', '0', '0', '1', 'Ms.', 'xiHoplA9PxeRZKcZfZax');
INSERT INTO `exam_question_libs` VALUES ('34', 'title8322', '英语', '单选题', '60', '3', 'et', 'Ut beatae maxime maiores repudiandae quaerat cumque.', '3aaxpB9VHE25KRFn2mne', 'nKTkQIEpcYo2Gq0xSsZv', 'cawvqIr3Ga0DSfhBTF17', '3w5zKGXFXQXYZhm0IZsr', '1', '0', '0', '0', 'Mrs.', 'aqmB0SW9w6tIjFeHQH7e');
INSERT INTO `exam_question_libs` VALUES ('35', 'title9388', '英语', '单选题', '60', '5', 'sequi', 'Cumque eos dolores voluptatem ut nihil sunt aliquam.', 'm6cxnZKfOHdc5txVWMZ5', '4UiOws6Rst7F5WxqmLgs', 'UupxHfz08YP0Z3kzSIZj', '3ExmgXKPRfXFQBNHR08O', '1', '0', '0', '0', 'Prof.', 'iFLlPbMFmM9RFpAKympc');
INSERT INTO `exam_question_libs` VALUES ('36', 'title4445', '英语', '单选题', '60', '5', 'pariatur', 'Numquam ipsum optio libero harum blanditiis.', 'ki6vjYqTc4r97gwAlCzk', 'IPMTLn0tPQlSsU6BxQpq', 'uJgYu4RKrXmV487KrCOw', 'SaeW5SdUZ21VBzCGkrWZ', '1', '0', '0', '0', 'Mrs.', '5yJs6V6yxhmBP5QGJG62');
INSERT INTO `exam_question_libs` VALUES ('37', 'title7096', '英语', '单选题', '60', '3', 'consequatur', 'Consequatur est et occaecati qui.', 'aVmnXRY8KCOut1jeySvY', 'STQM22jtdKttSONrkkDh', 'VFZJVazwwonYJAIE2Xp9', 'rG2ocIdsXYDMWMOUoy8F', '1', '0', '0', '0', 'Mr.', 'OQG6LtcxbJfUXSzRBzub');
INSERT INTO `exam_question_libs` VALUES ('38', 'title834', '英语', '单选题', '60', '1', 'dolor', 'Aut quibusdam fugiat cupiditate commodi ea temporibus.', 'lmsIARPqEdXyuL63j4Zr', '49pqKdkmUv3x9vzxlxGH', 'gQ0x1w4NPlvK9nxwwvCs', 'i1s7hxa4Ojt8burnorfm', '0', '0', '1', '0', 'Prof.', 'mRdoptrMy8KdrohoENRB');
INSERT INTO `exam_question_libs` VALUES ('39', 'title8884', '英语', '单选题', '60', '3', 'non', 'Accusamus fuga molestiae possimus quia consequatur.', 'JjkBQEz9cjMIEP3fDsaj', 'W3oZQXB7FRLvPg6JUlZt', 'mtBxAlHsGkkTq8QcoTlH', 'NlYRTOWhZpWf46c8APpp', '0', '0', '1', '0', 'Prof.', '6Xbf5u1BsiV7mKbigV8q');
INSERT INTO `exam_question_libs` VALUES ('40', 'title6227', '英语', '单选题', '60', '4', 'cum', 'Voluptas harum error impedit aut et adipisci qui.', 'HXQ9SdAhtBWGkDfspojL', 'q5nnjvRQuWrQRwzic1zf', 'Ooa9yFH6SJ4BRuocgftL', 'DN2VGbsmgSjAlOvapE01', '0', '0', '1', '0', 'Prof.', 'CPLCcYj4u3FYAtufgmNz');
INSERT INTO `exam_question_libs` VALUES ('41', 'title9089', '英语', '单选题', '60', '2', 'alias', 'Rerum autem culpa molestiae maiores.', '0ScWmzeIf0awRRo39kLK', 'WGRiCiplpYQCqtZXoVUt', '5raOU1kyoZXKkBQsAjGJ', 'RNJjfHZmpzjVfdt2lP7R', '0', '0', '1', '0', 'Dr.', '82faDNZRVFxt6GpVFOcu');
INSERT INTO `exam_question_libs` VALUES ('42', 'title5403', '英语', '单选题', '60', '4', 'voluptatem', 'Officiis quia eveniet molestias consectetur.', 'f2o7QCuvAYI8mE2I8y9e', '8hm0Adw00FHllfRo0b0R', 'CwFSXzCydBPzplHXNKjl', 'qF4RtpT4kfDuFuloP6Cl', '0', '0', '0', '1', 'Dr.', 'RaI996AnNPvMiZLvvg0F');
INSERT INTO `exam_question_libs` VALUES ('43', 'title4275', '英语', '单选题', '60', '3', 'quo', 'Consequatur illum ratione unde nam voluptas aut.', 'FVXR5lYOfrrKVWtA2NVP', 'zAT1YNQ8xCVNZjdCjc2x', 'SplGsGsb1rWfZLfuFdcT', 'RrLf5xP75nFK5fsdXBLf', '1', '0', '0', '0', 'Dr.', 'qSbNftFrAJHdoTCw4G2B');
INSERT INTO `exam_question_libs` VALUES ('44', 'title1437', '英语', '单选题', '60', '4', 'culpa', 'Omnis omnis quia sapiente sit fugit nihil.', 'bJIK6F82ULsKocXBJfE7', '006437GsCfb1DTd3v6Gx', '83WamYvQxHVys1Y7sR0O', 'hKXlh3e3mXL72hyHPgxY', '0', '1', '0', '0', 'Mr.', 'HhgVdnQDL7I4T4TLKvoc');
INSERT INTO `exam_question_libs` VALUES ('45', 'title8965', '英语', '单选题', '60', '4', 'sint', 'Quaerat commodi repudiandae quae laboriosam dolor occaecati et qui.', 'KShPYmnTsaeG4yPHnKOG', 'DOQlofIgJZWiLC5HZGLE', 'ECraBO7nHh3SLWJjPHgA', 'uzLeE3qAONnYuQC2dDTC', '0', '0', '0', '1', 'Mr.', 'CUfpbGzyyfv1ZhCKgloX');
INSERT INTO `exam_question_libs` VALUES ('46', 'title8192', '英语', '单选题', '60', '4', 'et', 'Voluptate ipsum dolore nam sunt.', 'Jn9aRQz4qcnIfPEH5ket', 'FZ92gOWZUtactfawz1si', '9SXtpRYOlocI6iU7zz7H', 'CyTqKEuJx8H5FslwDiys', '0', '1', '0', '0', 'Ms.', 'ViFNDlPE2vrA3tG32YF4');
INSERT INTO `exam_question_libs` VALUES ('47', 'title5602', '英语', '单选题', '60', '2', 'mollitia', 'Adipisci consequuntur rem quo et qui odio accusantium veniam.', 'Bxg2ZfUrTHrsy5psD59v', 'NgV9QkwXkrEeaQgS8rGc', 'AI8QBeety4ggQYGG2GBO', 'htwAQM0EcTlg3LiDvCmI', '1', '0', '0', '0', 'Prof.', 'gjH4huVp6cGlurkEe1n8');
INSERT INTO `exam_question_libs` VALUES ('48', 'title3066', '英语', '单选题', '60', '1', 'nihil', 'Sed eum nisi facere nulla molestias ut.', '30S57uWtl5FNo7VTS5Vb', 'H3Bo8BSllsnKG8EUd02C', '8DhPOrFiYEqlYnMw5ZAZ', 'GjXmRViXI4DVsT0DDZvr', '0', '1', '0', '0', 'Mr.', 'klx1hnyLBZoQRJLfIrIK');
INSERT INTO `exam_question_libs` VALUES ('49', 'title7177', '英语', '单选题', '60', '4', 'ut', 'Ipsum illo et velit totam tempore at doloribus.', 'lUIUiIRlCCePfrXCQfEA', 'MF2Fifw7doMHYmHuZsiH', 'QVWMYpGQLIxIT8D6hesF', 'LQfRlRBqhmMziuVhNCQR', '0', '0', '1', '0', 'Prof.', 'gLj3miwyzly7sCMZC5Zc');
INSERT INTO `exam_question_libs` VALUES ('50', 'title1946', '英语', '单选题', '60', '5', 'ut', 'Et quae non saepe enim earum harum.', 'TIdr59v2YVlTTazg1T86', 'IBdWSt2wosI1R2xfnL4E', 'CqlmZm9Ws5BooXFVgSCF', 'tl7lnjV7RgkLU5qoX7Yc', '0', '0', '1', '0', 'Prof.', 'EtnifcZcxzDiQAyt1AsT');
INSERT INTO `exam_question_libs` VALUES ('51', 'title7865', '英语', '多选题', '60', '5', 'laudantium', 'Quos sit rem asperiores ut et.', '3mCNcpeKncLtdcp15eHD', 'wki9OVvPJaKSJ4VfA2xT', 'CJ4boHJRQ1CScUWiOypK', 'lqybRg0TaXIMiPzuFf2g', '0', '1', '1', '0', 'Dr.', '9a4vJgc3MYOvYqo1wGDn');
INSERT INTO `exam_question_libs` VALUES ('52', 'title8727', '英语', '多选题', '60', '4', 'ea', 'Repudiandae nihil nihil recusandae accusantium enim.', 'M9bTsEAf6ZiHwGhKCocx', 'cLWObpFNc8UjqkNMhLYR', 'p9VWBjO6qjHkPvzO9yEl', 'HCrBw0wzZ05RyjMknvsh', '1', '1', '1', '1', 'Mr.', 'OnnKHTAZrUA9fCQVNBdF');
INSERT INTO `exam_question_libs` VALUES ('53', 'title9326', '英语', '多选题', '60', '3', 'itaque', 'Delectus fugit aut eos sit est optio.', 'ibXNkLABPTEpTxLyP5Of', 'rqZ1ZA2QhbroF2q0OUHt', '6PBFS8ngqZFap99FVcwE', '70X3Xyv3h7N6SNKmyH5w', '0', '1', '1', '0', 'Prof.', 'SjDq7mJfvzU9GWBewDQL');
INSERT INTO `exam_question_libs` VALUES ('54', 'title4781', '英语', '多选题', '60', '1', 'totam', 'Et aliquid maiores sed illo incidunt cumque.', 'rtKFXRrmi9dj0v2fjw1x', 'LZO40rj2mMX2GO6g0uee', 'kws7RUEWgHX9VwLBz9XV', 'gWr4HLLPfqymHyduJ4HH', '1', '1', '0', '0', 'Prof.', 'bJQydK7OpICBVV7ClhuF');
INSERT INTO `exam_question_libs` VALUES ('55', 'title4938', '英语', '多选题', '60', '5', 'assumenda', 'Reiciendis et consequatur pariatur error consequatur et suscipit quam.', '8LKw738rJ7dYNhPq3Ffz', 'BdN5wIrsyCLd6mk2dnuM', 'iaPOAAEUBXycrmYWCN1P', 'vWDoCGvuGRq8128OCM1A', '1', '1', '0', '0', 'Mr.', 'FUodeYAqhvCcD1FzFsye');
INSERT INTO `exam_question_libs` VALUES ('56', 'title3003', '英语', '多选题', '60', '5', 'libero', 'Aut quis quas nostrum aliquid officiis nihil.', '8g7FOTYr4yZ47uAFYQfk', 'Ka7oUKViofDK1ZjmIHPA', '9msxcDfpPR3viICUqmqO', 'ONngJrtrL3CKqWLFwmT4', '0', '1', '0', '0', 'Dr.', 'Xrv1JeoDW0iaKsWMciJk');
INSERT INTO `exam_question_libs` VALUES ('57', 'title3395', '英语', '多选题', '60', '4', 'molestias', 'Hic delectus qui molestiae.', 'hZ7KpBofWRWeiP4mnkzy', 'zTBgtIRiIfO5CZfxJa1T', 'uMjejUCOvYFbpZxtcrEQ', '2hTgGk1ml3ZcsakBkSM9', '1', '0', '0', '0', 'Ms.', 'pXSUXoCZuyGCARIlIga7');
INSERT INTO `exam_question_libs` VALUES ('58', 'title7380', '英语', '多选题', '60', '5', 'asperiores', 'Porro autem distinctio fugit voluptatum rerum consectetur.', 'TjobuNuUizTa6bJf7vI1', 'IYwOp0bzhzaP1Xziyy2F', 'olf7amA3BOsiNbLbVGo3', 'kC2zINGTnStR5Hr29HsD', '0', '1', '0', '0', 'Prof.', '839Acous3pSwuT18lxv5');
INSERT INTO `exam_question_libs` VALUES ('59', 'title5324', '英语', '多选题', '60', '5', 'mollitia', 'Similique occaecati illum repudiandae accusamus omnis autem alias.', 'n27Wq0TAszyxoAVLgNn7', 'BSrojnGjt5yEgKGwqRb5', 'mOja7WzlZaG5g8Ahnxsm', 'hKL6PzQ8QBgJYErtYLen', '1', '1', '1', '1', 'Ms.', 'd5kdm94Uxmw3IcpYY1Id');
INSERT INTO `exam_question_libs` VALUES ('60', 'title9013', '英语', '多选题', '60', '5', 'eaque', 'Repudiandae aut ut sequi doloribus ad.', 'musDP8t65qTQSEKUxAgx', 'TVqGZxAUSS4GZZJmjCVX', 'YEofubH6E06OKjFduK0x', 'svHKHstDfVtvWbDMZd7q', '0', '0', '0', '0', 'Prof.', '1OHKjUWbY1QVRRVjPtde');
INSERT INTO `exam_question_libs` VALUES ('61', 'title980', '英语', '多选题', '60', '2', 'iste', 'Voluptas sequi debitis possimus qui.', 'cYcIvaa66jFuC6AxAxcx', 'HEpa76XgtXYkyqpkZCe3', 'FTHO9vUDYFiUAhcM368J', 'msU3ll1y4Ys70HqEqPXo', '1', '1', '0', '0', 'Prof.', 'fOEjmewFO3Pg5i9WZQgv');
INSERT INTO `exam_question_libs` VALUES ('62', 'title3593', '英语', '多选题', '60', '4', 'libero', 'Vitae et necessitatibus qui et incidunt sequi facilis consequuntur.', '7XqUEyJTuPjePHYP5XDc', 'cGefT5OsCd6M4Cy6Bs4k', '8AWoTLlOtV9YtGVDovoy', 'vExNtU0yAdaJCTBxhTWM', '1', '1', '1', '0', 'Ms.', 'qHRSaMvvypTpQoTOlbnV');
INSERT INTO `exam_question_libs` VALUES ('63', 'title362', '英语', '多选题', '60', '5', 'et', 'Corporis ad cumque occaecati ducimus.', 'Qyu3sJMTkFMKZCmdKLzj', 'UUotSZuKA9v1qgzk7a3H', '4yS1immPHSV6AT8qqopV', 'SOsxKQzTDe3ESDgQ6Cjy', '1', '1', '0', '0', 'Mr.', 'lZgZi8enbP0Sc318a7gK');
INSERT INTO `exam_question_libs` VALUES ('64', 'title1336', '英语', '多选题', '60', '3', 'non', 'Voluptatum velit occaecati quod.', 'O47tEFjNiHcbGThDyO6P', 'yQYsio51W7d7flq7bzEk', 'cWQPJPRCdfiOVhOonyHp', 'xGxpEyz5USj2GRkNyrEj', '1', '0', '0', '1', 'Dr.', 'r4pvCyPm2FqUx0D5WUOF');
INSERT INTO `exam_question_libs` VALUES ('65', 'title4971', '英语', '多选题', '60', '3', 'harum', 'Eos ab reprehenderit labore maxime et repellendus suscipit.', 'GMho32SpltD260nIODDT', '8eXAjGiZwoyaUQwrbhtX', 'SazRFhWnq2asR30mjYQV', 'AHBi0rb4nzrnxXArzUMe', '1', '1', '0', '0', 'Prof.', '5grEPeKQKuYkyFRP6Dkk');
INSERT INTO `exam_question_libs` VALUES ('66', 'title6684', '英语', '多选题', '60', '3', 'expedita', 'Voluptate non ab hic quos quasi.', 'FrMZThoSOINu8wpUHmSq', 'EzESpkqpAwKENXQcDEI8', '3XaZhHECKt30zkGYgZ8q', 'bI3prxxTjega5ivEsAjf', '1', '1', '1', '1', 'Mr.', 'TgwEizPE0lcxS6GDdGfF');
INSERT INTO `exam_question_libs` VALUES ('67', 'title8638', '英语', '多选题', '60', '2', 'nulla', 'Ea omnis voluptatem quaerat aliquid nisi veritatis quo.', 'M7J42M1JO3w56xuLsF1b', 'i6p6eptoHHClZ19c30Mh', 'fhRV6Qhhtz4YOntxAxyz', 'fS2WxqjvkIHSCqPNAEt4', '1', '0', '0', '0', 'Dr.', 'pxRpqjlcbqpoBPGG4K7R');
INSERT INTO `exam_question_libs` VALUES ('68', 'title9662', '英语', '多选题', '60', '5', 'quaerat', 'Rerum sunt autem et nisi.', 'l9dzJJVNzk4NmTbOxJHp', 'Xt3fKudJTHnFCeETOK5y', '4kBBO7PrXINIT5Vme7C1', 'Q7plmc1QliZaO1upAZVW', '1', '1', '0', '1', 'Dr.', 'e43NYSYUZuOyLy8HNzBi');
INSERT INTO `exam_question_libs` VALUES ('69', 'title9905', '英语', '多选题', '60', '1', 'ipsa', 'Tenetur vitae laborum tenetur laudantium.', 'RosdCtkcce16irGdmlDh', 'C2HP5urSnJG8FJx9a47D', 'UV6vfTUK0z1IkDvcgmyz', '4nzbpEjHy7vnYbELsXTe', '1', '1', '1', '0', 'Mr.', 'RsU27oBcERktIWTVpzPb');
INSERT INTO `exam_question_libs` VALUES ('70', 'title2743', '英语', '多选题', '60', '3', 'consequatur', 'Ipsam voluptate doloribus quibusdam alias rem ipsa.', 'aPsEwxdb4UTHjurcJnCX', 'i4Am4axsffvyVSd1zEUh', 'GoUbnVqcEaQm7Ga92iLt', 'wZFYGMhhUKtxJKTwCDTM', '1', '1', '0', '0', 'Dr.', 'ZZWiBCSRC629AYv4fQix');
INSERT INTO `exam_question_libs` VALUES ('71', 'title5177', '英语', '多选题', '60', '4', 'eveniet', 'Et voluptas libero voluptatem saepe adipisci.', 'h44woZ9XsSbtFgp59V4x', 'PfScMklKPVKblKyjX6Nf', 'yaj6dyufFzAarUmDAF2r', 'Cg6zaxrjYZG3RAA60AdH', '1', '1', '1', '1', 'Ms.', 'SNT639sNaXZwTxwaEhnT');
INSERT INTO `exam_question_libs` VALUES ('72', 'title3673', '英语', '多选题', '60', '4', 'temporibus', 'Esse nisi dolorem a debitis distinctio sit.', 'WcHgrPOTOD1LIVjBRzxN', 'urssiOrxqVGXNWTc6fUt', 'dxOSGXo0kQ7WwVdnRgm7', 'ACPO7EVMqnPA8gelzkSA', '1', '0', '1', '1', 'Dr.', 'bOUou2lrcoHDjkGvvtBF');
INSERT INTO `exam_question_libs` VALUES ('73', 'title7640', '英语', '多选题', '60', '2', 'dolores', 'Nesciunt accusamus odit alias et.', '56gks0tNQgKqCQu8IGAR', 'SfC1VWrU6ce84SIY9phS', 'CYI0ojT3434IWOh7oyjt', 'vFFcIV2jORbbMa6i2GLt', '0', '0', '0', '0', 'Prof.', 'Z3xWA8exx4jlPCfbh4Pk');
INSERT INTO `exam_question_libs` VALUES ('74', 'title2170', '英语', '多选题', '60', '5', 'voluptatibus', 'Ullam ut accusantium labore sed blanditiis.', 'GybX4UvzjxaLkQCwz9nH', 'MLmK37GCgzsd7nEktHT8', 'qIyj9IX6CqO3lovvSFVq', 'RHwxBm2KZp8BX8XxW9S8', '0', '0', '0', '1', 'Miss', 'UOzynMQH9ISRpnsN3X1i');
INSERT INTO `exam_question_libs` VALUES ('75', 'title2334', '英语', '多选题', '60', '4', 'magni', 'Aliquam vel magnam illo et officia.', 'bE4p8kHlWsDdYZCLjSJ5', 'XELPSr5GrvL6oNwOiGIo', 'rfrD5JFkTKACjHPP4B6s', 'lPpYx4sZtL1b6QiYWyPg', '1', '0', '1', '1', 'Prof.', 'Z6v9pweqUORKYQYy6PBZ');
INSERT INTO `exam_question_libs` VALUES ('76', 'title9699', '英语', '多选题', '60', '5', 'aliquam', 'Aliquam est sunt ea ratione exercitationem.', 'FozUy2qJI8PC0OnZFMGS', 'HGm29N3hW3zweIuQ6DMs', 'zlxfautExDlNo06LlEoC', 'YgcFD6YgGsuAc6FhdCcE', '0', '0', '0', '0', 'Prof.', 'xoQJErVZXc7vhBe14x74');
INSERT INTO `exam_question_libs` VALUES ('77', 'title5524', '英语', '多选题', '60', '4', 'autem', 'Autem voluptas exercitationem aliquam consequuntur.', 'mXkHnm4FSBoBNiCcuXsQ', '52vuaWbI9pb3un7qU2FN', 'nxAoGx4BuZmwXKRYE12Y', 'w05GY7v62LxH3FnO5NYq', '1', '0', '0', '0', 'Prof.', 'MiEETDkF6andQDKoMEvs');
INSERT INTO `exam_question_libs` VALUES ('78', 'title3367', '英语', '多选题', '60', '2', 'ut', 'Sapiente reiciendis sed magnam est itaque earum eveniet.', 'Rou2uNO4CQVE8LdF6kFA', 'TuRGqc5hzneVfqBkgJcv', 'LVDsBKpySc8ZpEDCrLA4', '3mtSUtSCRaHezHWrjU9h', '0', '1', '0', '1', 'Prof.', 'wc98NO53zbVn5kzVNRRH');
INSERT INTO `exam_question_libs` VALUES ('79', 'title5597', '英语', '多选题', '60', '2', 'dolor', 'Eaque minima nisi impedit optio molestiae.', 'S7vNHFwU92VZ7bqkYIJs', '2HQ27myyitvuvSrpu7yy', 'aUS8h6E8IAWlsfvE80xA', 'V8SnoXwHaSBwKWYrbOOM', '0', '1', '0', '0', 'Dr.', 'fLz3I8NY5hLEtA3qYcp2');
INSERT INTO `exam_question_libs` VALUES ('80', 'title2003', '英语', '多选题', '60', '2', 'amet', 'Repellat doloremque modi unde et sunt.', 'g2xq5c7IZ71XNrUAyVjh', '8BisB3USofO0dOhLFZcR', 'd3dO12DfDHw0ESBaEO01', 'qO6HC7Spl9yOjybypo8t', '0', '1', '1', '1', 'Prof.', 'nlokkRLmWvIWyXTNRZQH');
INSERT INTO `exam_question_libs` VALUES ('81', 'title6526', '英语', '多选题', '60', '2', 'nobis', 'Quo id sit excepturi necessitatibus.', 'jKx1Nz2oFruPWrcBUO3H', 'wrkjtinSDZNLyTJejkN3', 'jLLViuqgoIs9INECgdC3', 'aZmMJCpGjxDPFCxRna95', '1', '0', '1', '0', 'Dr.', 'gbrL5zxN0TajqKhwbQdA');
INSERT INTO `exam_question_libs` VALUES ('82', 'title4852', '英语', '多选题', '60', '2', 'cumque', 'Vel aut id nulla officiis.', 'HeNxm6SNV5ypByqGWCDH', '6IbncxAfOTioegvOVZ08', 'EXSVdI8SAY3LYWgEMjzl', 'IaE8yvgn93S32VlPOGPL', '0', '0', '0', '1', 'Dr.', 'YGB8SPGXt5da7JE1GMNb');
INSERT INTO `exam_question_libs` VALUES ('83', 'title5516', '英语', '多选题', '60', '5', 'aut', 'Ad quam autem corrupti nihil.', '47pSkxax3T6CaMRdaXT2', 'IhpyJXCKbJGTYHV6pEAi', 'bM8WPw86mH9gcj3D46ev', 'gXjX4YdNacby2fezWgrJ', '0', '0', '0', '1', 'Mr.', '3t2Zkj6GwdVNI8qd6oEI');
INSERT INTO `exam_question_libs` VALUES ('84', 'title8581', '英语', '多选题', '60', '3', 'et', 'Recusandae sed quisquam aut qui corrupti.', 'nGr9iRtYfLMkAfPHJRvm', '0QsZxm70A7x3QLM4e2wG', 'tw08TW0Iwe7YFazmdvL3', '7pPOZZfCsP2ZpWTdPMB8', '0', '1', '0', '0', 'Dr.', 'dD3NCw4JajKxrPvtpuYW');
INSERT INTO `exam_question_libs` VALUES ('85', 'title8558', '英语', '多选题', '60', '2', 'quo', 'Sit nulla dolorem sit et reiciendis iure ea.', 'cWgUEiCYuP7KMGbCTDvG', 'ty37zTwjN04e7fO3qeGY', 'BqyN9GQf4S1u5vZjjz4T', 'pn2hbOUgzlnFB8VSYuvr', '1', '0', '1', '1', 'Mr.', 'IP1KYnzYybsWl4xRd9Pc');
INSERT INTO `exam_question_libs` VALUES ('86', 'title8383', '英语', '多选题', '60', '3', 'commodi', 'Consequuntur ut laborum quam architecto occaecati magni.', '0eCBlBxtdLk5sXieWGI3', 'QApr6pPXrrJXUTYam0oC', 'fZBp25FsBKyrOod4niQr', '4UvYZcAMeyMDCoBxhmLq', '0', '1', '1', '1', 'Mrs.', 'QJhOUnRzQ5I1TztY0bMF');
INSERT INTO `exam_question_libs` VALUES ('87', 'title6626', '英语', '多选题', '60', '5', 'et', 'Similique beatae minus aut et mollitia quo.', 'OlpSXrryu7kjAHB7IqDn', 'NTfS5YnnblNANwLAT0qC', 'RgFyqOc4r9PzgsV0cPtY', 'elxvS5ZK15Udlqg20rLJ', '0', '0', '1', '1', 'Prof.', '6tLSQo78rnb4CRQGy2xY');
INSERT INTO `exam_question_libs` VALUES ('88', 'title9779', '英语', '多选题', '60', '4', 'voluptatibus', 'Voluptate animi velit quam exercitationem.', 'GBZ06buqaz90q3cafGjh', 'YtwjVd3a5nAiICcsazxp', '9Y0t9AGzYATeHNHDag02', 'jii9MgY5SLDx0CzqlGW2', '0', '0', '1', '0', 'Miss', '4sFd6w8tE3abv0nMJEY5');
INSERT INTO `exam_question_libs` VALUES ('89', 'title5113', '英语', '多选题', '60', '1', 'aliquam', 'Maiores odio et neque vel.', 'XNt3oCkSg3lJWpnSPOwI', 'H7tByjjzm274xltkxGMc', '4AO7eXuVz2a5GtjlYz4f', 'mIRjCdOtEHK7sbLnExHt', '0', '1', '1', '0', 'Dr.', 'Sfd9kMrAXYzZn4gKVTf0');
INSERT INTO `exam_question_libs` VALUES ('90', 'title1793', '英语', '多选题', '60', '5', 'ipsa', 'Et explicabo et architecto deleniti nobis iste eligendi.', 'CQoaQWw1ixQljCrkCsPs', 'Ye1KZzzeMcPIIdHlDNtc', 'M9c00ioKnKv1Kzivzptx', 'GpCBAAIN357boRVOCRRL', '1', '1', '0', '1', 'Dr.', 'JuosSSQjuJWFGyAEwSFh');
INSERT INTO `exam_question_libs` VALUES ('91', 'title4718', '英语', '多选题', '60', '5', 'molestiae', 'Debitis incidunt nobis quidem est eum et.', 'ylyQoyKoiEzwX91HDJQ1', 'vUIc7bfiwgzB4CirtyOl', 'hbDaHVhk0kJHeTwwv1Og', '0Lw2Y3HvvaH2nO5kc0HI', '1', '0', '1', '1', 'Mrs.', 'm0lpYbhKHmtgnrnZNRiV');
INSERT INTO `exam_question_libs` VALUES ('92', 'title8390', '英语', '多选题', '60', '3', 'itaque', 'Rerum exercitationem natus ratione esse possimus.', 'kTDst8nMikcBOq0UDyqA', 'uas4BNZnioO54Wcu5y7d', 'oRs8RNtUanBQbNRDrrKg', 'VRQClwJQwkMn732hYgVp', '0', '1', '0', '0', 'Miss', 'bWKnUsynl4Yjdm0Y6Csf');
INSERT INTO `exam_question_libs` VALUES ('93', 'title4388', '英语', '多选题', '60', '1', 'minus', 'Est hic aspernatur iusto quo nulla et.', 'ZteFv7AIydILc25drWVp', 'YRFVaAfTYz96171WC6Rd', 'JbKYYGku9NU2jh3i60Xi', '7pt5ENG40hHfudgwzOK6', '1', '0', '0', '0', 'Dr.', 'DSJjxztIAI5tZHTV2r0f');
INSERT INTO `exam_question_libs` VALUES ('94', 'title1417', '英语', '多选题', '60', '1', 'harum', 'Omnis nulla sed aliquid fugiat omnis.', 'a9jBcSJNJanwaEdlbECy', 'kDDC5GtPh0YRA6qNyJqo', 'MUS3ZDaHWnQg3T5hVvPY', 'eDtLSxYDrFzLwAEtaT3y', '1', '1', '0', '1', 'Miss', 'RSXICGubP70yPzyw3Jhf');
INSERT INTO `exam_question_libs` VALUES ('95', 'title1134', '英语', '多选题', '60', '2', 'dignissimos', 'Dolores quae delectus aut corrupti temporibus aut qui.', 'sIryPeOAHmvMHluwRwPV', 'vpflKcX73grVx9ONvMuV', 'm2loiVFdsd1d9BZRZeIE', 'XYxwSZVYLYrFY1RHzc78', '1', '0', '0', '1', 'Mr.', 'O3KDGzj55LkEp1efGVLl');
INSERT INTO `exam_question_libs` VALUES ('96', 'title9773', '英语', '多选题', '60', '5', 'ea', 'Voluptas occaecati veritatis nobis iste tenetur.', 'L7jGRt4Q2fLOeQmo736V', 'tjQHwOaD8bMB0cWT30B5', 'cxf9nV3mMsmhkZLMmeA5', '9qR1W0yhWo7hRRSakPwN', '1', '1', '0', '0', 'Dr.', 'T4fVUaCvI91OuDkAGi2I');
INSERT INTO `exam_question_libs` VALUES ('97', 'title1738', '英语', '多选题', '60', '4', 'cumque', 'Quaerat dolorum et consequatur et blanditiis.', 'F7wxkHfLLLq1XgEnof2H', 'SuQL4EWn7KzRjZaiTVAt', 'QNPbX54YSHZhOkXrfdkN', 'uzPABClYHuenCJIKR2ie', '1', '0', '1', '0', 'Prof.', 'WVUqy4KyQv1CZW9LygeN');
INSERT INTO `exam_question_libs` VALUES ('98', 'title886', '英语', '多选题', '60', '4', 'iure', 'Molestias rem harum possimus autem commodi.', 'fEf7GgBpIUXAL8dZyt0x', 'WXwCSzN7W9GUkFaH2Mwg', 'mCE9WiyymnSC2fjHyhHV', 'k9DGsndPkRaGzYtMdnWL', '1', '1', '1', '1', 'Dr.', 'oG2IxASY9PklOxoGVnmE');
INSERT INTO `exam_question_libs` VALUES ('99', 'title8010', '英语', '多选题', '60', '4', 'qui', 'Sed doloribus et hic et quibusdam atque.', 'P1D1KMy7xaNTpP1cT4SO', 'aWKFqvwtJEls3dp2TEKf', 'kxoXZbCF6lmVgoebIDOQ', '8QxOSBw1pS57yLIBeDhB', '1', '1', '0', '0', 'Miss', 'cqewUncoPOSbS2IXef20');
INSERT INTO `exam_question_libs` VALUES ('100', 'title1606', '英语', '多选题', '60', '5', 'maxime', 'Expedita perferendis hic pariatur nesciunt.', 'bSLpiKrIuZR7gEOJrRM6', 'KFGeW3IQyCSiBy8mockF', 'jH7MW1ZKGF8dEswwBvX0', '5NpaTV8ciXW13jJi8t58', '0', '1', '0', '1', 'Prof.', 'HwlFPnaoiid5idD2kQzu');

-- ----------------------------
-- Table structure for `exam_results`
-- ----------------------------
DROP TABLE IF EXISTS `exam_results`;
CREATE TABLE `exam_results` (
  `exam_results_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'exam_results_lib_id',
  `exam_paper_lib_id` int(11) DEFAULT NULL COMMENT '考卷_id=题库表：exam_questions_lib_id',
  `student_id` int(11) DEFAULT NULL COMMENT '考生_id=考生表：student_id',
  `exam_datetime` datetime DEFAULT NULL COMMENT '考试时间',
  `exam_result` decimal(8,2) DEFAULT NULL COMMENT '考试成绩',
  PRIMARY KEY (`exam_results_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考生考试成绩库。\r\n老师组卷（题库、考卷库）后，选择考生（学生表）后，则在成绩库中预留一个考生的考试空白信息。';

-- ----------------------------
-- Records of exam_results
-- ----------------------------

-- ----------------------------
-- Table structure for `exam_results_detail`
-- ----------------------------
DROP TABLE IF EXISTS `exam_results_detail`;
CREATE TABLE `exam_results_detail` (
  `exam_results_detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'exam_result_lib_id',
  `exam_results_id` bigint(20) DEFAULT NULL COMMENT '考试成绩库id=成绩库exam_results:exam_results_id',
  `student_id` int(11) DEFAULT NULL COMMENT '考生id=考生表student：student_id',
  `exam_questions_id` int(11) DEFAULT NULL COMMENT '考题id=题库exam_questions_id：exam_questions_id',
  `answerresult` varchar(255) DEFAULT NULL COMMENT '答题结果',
  `ansertime` int(11) DEFAULT NULL COMMENT '答题时间(秒)',
  `score` decimal(8,2) DEFAULT NULL COMMENT '得分',
  PRIMARY KEY (`exam_results_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩详细记录表，记录考生的每次考试的每个考题的考试情况。\r\n如答题结果、答题时间、答题分数。\r\n';

-- ----------------------------
-- Records of exam_results_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `migrations` VALUES ('9', '2018_02_13_112400_create_permissions_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_12_21_013300_create_sessions_table', '2');
INSERT INTO `migrations` VALUES ('16', '2018_03_15_145336_create_exam_question_libs_table', '2');
INSERT INTO `migrations` VALUES ('18', '2018_03_15_145336_create_systemparameters_table', '2');
INSERT INTO `migrations` VALUES ('19', '2017_12_25_102529_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('21', '2018_03_15_114806_create_teachers_table', '3');
INSERT INTO `migrations` VALUES ('22', '2018_03_15_145336_create_students_table', '3');
INSERT INTO `migrations` VALUES ('23', '2018_03_22_153533_create_exam_paper_libs_table', '4');
INSERT INTO `migrations` VALUES ('24', '2018_03_22_153556_create_exam_questions_table', '5');
INSERT INTO `migrations` VALUES ('25', '2018_03_22_153610_create_exam_results_table', '6');
INSERT INTO `migrations` VALUES ('26', '2018_03_22_153630_create_exam_results_detail_table', '7');

-- ----------------------------
-- Table structure for `oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('08c00d029e663ec27348795041cf8a1fd0c442f47560e7c178f4a72246d0d1724d0b6338a77c57f4', '1', '2', null, '[]', '0', '2018-03-12 11:17:57', '2018-03-12 11:17:57', '2018-03-12 12:57:57');
INSERT INTO `oauth_access_tokens` VALUES ('09c98488234bf7fb5b1121d1b3bb1ae4e5e792fadfed86ad1c278ba3ee0fc164d9078262d7eaea1a', '1', '2', null, '[]', '1', '2018-03-14 19:15:07', '2018-03-14 19:15:07', '2018-03-14 20:55:07');
INSERT INTO `oauth_access_tokens` VALUES ('0b554f1a5cd359aa2eeee5c812a57ce33b4688408850bf6f0de0c611c249ef2e6b1c437ee188decb', '1', '2', null, '[]', '0', '2018-03-22 22:48:02', '2018-03-22 22:48:02', '2018-03-23 00:28:02');
INSERT INTO `oauth_access_tokens` VALUES ('12052ca28037b32bb190bb2dbf4318921c6ebf63397bcc62e15d91676653b50ade6aa5bd279b5684', '1', '2', null, '[]', '1', '2018-03-14 19:11:32', '2018-03-14 19:11:32', '2018-03-14 20:51:32');
INSERT INTO `oauth_access_tokens` VALUES ('1237e103fdd5545adddc341178991a5608d1ab8ead4bf0bfcb68938ca746b0373fd1b0e5209afc47', '1', '2', null, '[]', '0', '2018-03-11 22:41:59', '2018-03-11 22:41:59', '2018-03-12 00:21:59');
INSERT INTO `oauth_access_tokens` VALUES ('13907bd80ed7ac2fba73c605da8e65204a90ca8e721831b4c8b2a0dd500960bc869b9c5a7aec8013', '1', '2', null, '[]', '0', '2018-03-16 22:14:09', '2018-03-16 22:14:09', '2018-03-16 23:54:09');
INSERT INTO `oauth_access_tokens` VALUES ('2128e027e87b3edc404f8ea8388c374ab42403b9bcfcafe3cd41fb38cbd3a5d44d87994be58da7af', '1', '2', null, '[]', '1', '2018-03-16 16:34:00', '2018-03-16 16:34:00', '2018-03-16 18:14:00');
INSERT INTO `oauth_access_tokens` VALUES ('2a369f17f56d23054543a81e0655fd06c63530b5e3b452b749839d2325eb22454c67689b1c944eb6', '1', '2', null, '[]', '1', '2018-03-11 22:15:56', '2018-03-11 22:15:56', '2018-03-11 23:55:56');
INSERT INTO `oauth_access_tokens` VALUES ('39ff0547a77c0e08cf17fd8b1843aeb4594a6c48bc9acfe544a0f6003fb7ae83c1326e6d3ade5c14', '1', '2', null, '[]', '0', '2018-03-11 22:12:05', '2018-03-11 22:12:05', '2018-03-11 23:52:05');
INSERT INTO `oauth_access_tokens` VALUES ('3c6f01fa436102c23a833397d1f891ba8617f70faa400277c7775e33ca9159daee0be9ce4da2e4de', '1', '2', null, '[]', '0', '2018-03-16 16:48:04', '2018-03-16 16:48:04', '2018-03-16 18:28:04');
INSERT INTO `oauth_access_tokens` VALUES ('409180e12fc969c02777862a87f962d629b67d53f06de4fad932066156adf0b3699192eff6abd640', '1', '2', null, '[]', '1', '2018-03-12 20:22:03', '2018-03-12 20:22:03', '2018-03-12 22:02:03');
INSERT INTO `oauth_access_tokens` VALUES ('4214132f6225ad24079321798e374e19b5009872a0c19243bd70c4d3da076ac00217cae229c8f712', '1', '2', null, '[]', '1', '2018-03-16 19:27:27', '2018-03-16 19:27:27', '2018-03-16 21:07:27');
INSERT INTO `oauth_access_tokens` VALUES ('4831e9ccff7383b4a1eff151b4255fbf0457230025626f75ac4fa5b480fdccba185c22d7683128c6', '1', '2', null, '[]', '0', '2018-03-12 11:56:14', '2018-03-12 11:56:14', '2018-03-12 13:36:14');
INSERT INTO `oauth_access_tokens` VALUES ('4f5f6c86897301111028a8ddca6e0fa63c8df85002a331a9e3dbd88b7713932256cd133054819784', '319', '2', null, '[]', '1', '2018-03-16 22:06:36', '2018-03-16 22:06:36', '2018-03-16 23:46:36');
INSERT INTO `oauth_access_tokens` VALUES ('5223f683b8e0ceac774cb2702f58429f3731cc61624ba655284cf72f159bc9bd2ae5691a5b74874b', '1', '2', null, '[]', '1', '2018-03-16 15:28:17', '2018-03-16 15:28:17', '2018-03-16 17:08:17');
INSERT INTO `oauth_access_tokens` VALUES ('5365fd84b75ef9a6155f7753ac3047e7b3459f8bec03c22f5d2d776cd613af1a362d2f297d5fa9b9', '1', '2', null, '[]', '0', '2018-03-16 15:46:03', '2018-03-16 15:46:03', '2018-03-16 17:26:03');
INSERT INTO `oauth_access_tokens` VALUES ('62e58eb3c1dfbc16ef43d9448c2c2e22ddc9bb77dc203dd0ffd9eb865db7b774d1810e7c56283c8d', '1', '2', null, '[]', '1', '2018-03-11 21:09:14', '2018-03-11 21:09:14', '2018-03-11 22:49:14');
INSERT INTO `oauth_access_tokens` VALUES ('6a2d886d2f7e4cbf9c30d6e33e8b8039dde20a70f9f660c326abe78451fc44fd39d8627c15aec70c', '1', '2', null, '[]', '1', '2018-03-14 19:35:13', '2018-03-14 19:35:13', '2018-03-14 21:15:13');
INSERT INTO `oauth_access_tokens` VALUES ('6bd2269b64448e5d704e1ceb03f8bdcaa9cc2ec6e44d9e469e8aecbddb8aab22929e14510c1586bb', '1', '2', null, '[]', '1', '2018-03-11 17:10:53', '2018-03-11 17:10:53', '2018-03-11 18:50:53');
INSERT INTO `oauth_access_tokens` VALUES ('7f48d43d7f786b8701b53453483a96b5c151160c01b154e7fd17d0e2209c7884835adc601a4b60ce', '1', '2', null, '[]', '1', '2018-03-14 19:05:29', '2018-03-14 19:05:29', '2018-03-14 20:45:29');
INSERT INTO `oauth_access_tokens` VALUES ('88cf926b843645dda8bcf6ee8d942eeb9a85fe3c3172709797d6fa40d75d466b59b6d025d9e8a68c', '1', '2', null, '[]', '1', '2018-03-12 21:42:25', '2018-03-12 21:42:25', '2018-03-12 23:22:25');
INSERT INTO `oauth_access_tokens` VALUES ('8e2a5ff267c251f11496faa1c8f14c19de035d3e4af527007a4be843d57a50e0a157c657b5ee2c32', '1', '2', null, '[]', '1', '2018-03-12 13:22:55', '2018-03-12 13:22:55', '2018-03-12 15:02:55');
INSERT INTO `oauth_access_tokens` VALUES ('959dd1e3f7bed42c0236c36c4ff057434bec5caacd008f8837bfe603328f40c18303c24cdacbd9c6', '168', '2', null, '[]', '1', '2018-03-16 16:46:54', '2018-03-16 16:46:54', '2018-03-16 18:26:54');
INSERT INTO `oauth_access_tokens` VALUES ('9825588065631b540e06f4f9009efb517d41a872b5516e96cfc807cda0d74ba20b45046bbd7ef998', '1', '2', null, '[]', '0', '2018-03-12 11:47:37', '2018-03-12 11:47:37', '2018-03-12 13:27:37');
INSERT INTO `oauth_access_tokens` VALUES ('a37f73585262d788475705df99c89dd726a374cc79fafe893e73bf137350c11507a15edaeb05dfce', '1', '2', null, '[]', '1', '2018-03-14 18:41:30', '2018-03-14 18:41:30', '2018-03-14 20:21:30');
INSERT INTO `oauth_access_tokens` VALUES ('b14f808d092c9e00183d3fe7bc2ade0ad55217245ce630d48197533ae68b4051ed0fb3f50f02f93a', '320', '2', null, '[]', '1', '2018-03-16 22:09:06', '2018-03-16 22:09:06', '2018-03-16 23:49:06');
INSERT INTO `oauth_access_tokens` VALUES ('bf4b0fdabea9b0cf2c8cadddc4d637949ece4dd704e690cb52423ce28b74b2556368bb1b442c1f9b', '1', '2', null, '[]', '0', '2018-03-14 19:35:53', '2018-03-14 19:35:53', '2018-03-14 21:15:53');
INSERT INTO `oauth_access_tokens` VALUES ('bfa37d0ad8caee75dc6d49d559c56dc2bf06b8287711dccd0fb9a2d225521892afedc69e47324b5b', '1', '2', null, '[]', '0', '2018-03-11 21:11:29', '2018-03-11 21:11:29', '2018-03-11 22:51:29');
INSERT INTO `oauth_access_tokens` VALUES ('ce1608c54e2ec1f9cb89f81b328f3c6613169fd4d39acb573664c0b60564c0f6b4e82d3bad20d671', '168', '2', null, '[]', '1', '2018-03-16 16:33:07', '2018-03-16 16:33:07', '2018-03-16 18:13:07');
INSERT INTO `oauth_access_tokens` VALUES ('d050867ab894729e237011236e056646cda0a191ac66a3114f52763b731597bdb0e07ee5e1024b45', '1', '2', null, '[]', '1', '2018-03-12 18:20:52', '2018-03-12 18:20:52', '2018-03-12 20:00:52');
INSERT INTO `oauth_access_tokens` VALUES ('d3afdd84b13ee6604c9c94651c28598dcd0be202234c09b42061bacfb97ba200c6c5d8dbca28c3f3', '1', '2', null, '[]', '0', '2018-03-11 18:10:22', '2018-03-11 18:10:22', '2018-03-11 19:50:22');
INSERT INTO `oauth_access_tokens` VALUES ('d6c8a3251d918c7dad87baa702b16933f576d2f36ff260d411253d1a98c3992bec0fdd0a5dd18197', '16', '2', null, '[]', '1', '2018-03-14 18:49:09', '2018-03-14 18:49:09', '2018-03-14 20:29:09');
INSERT INTO `oauth_access_tokens` VALUES ('d7d696f97610ec0254dac16433cab039067514c1bdd6c879b25a85f9604a1d797105634ce3b2e25f', '1', '2', null, '[]', '1', '2018-03-16 21:24:04', '2018-03-16 21:24:04', '2018-03-16 23:04:04');
INSERT INTO `oauth_access_tokens` VALUES ('db2e681a13f1642814804438fd39578d1617079b92cb9f219b4873071fc83b96d6686ca487c49065', '1', '2', null, '[]', '1', '2018-03-16 15:27:40', '2018-03-16 15:27:40', '2018-03-16 17:07:40');
INSERT INTO `oauth_access_tokens` VALUES ('e4611ab97f653721b88f77a8d0b1e372500f110e9b4f1af61ff9d451f3664dc65ddf1e59c25b2200', '1', '2', null, '[]', '0', '2018-03-11 20:49:46', '2018-03-11 20:49:46', '2018-03-11 22:29:46');
INSERT INTO `oauth_access_tokens` VALUES ('e88de4f4f4100e34cbd336e5fb2664a77040b9e39f6712df64e40777c4ec74d803f76127a48f3717', '1', '2', null, '[]', '1', '2018-03-16 15:47:00', '2018-03-16 15:47:00', '2018-03-16 17:27:00');
INSERT INTO `oauth_access_tokens` VALUES ('f16a51108201615e674b72324a8d2e20cd4d5bbd54aeb183751dbce6d4d809a0390a2f2a531cf024', '1', '2', null, '[]', '1', '2018-04-01 21:07:27', '2018-04-01 21:07:27', '2018-04-01 22:47:27');
INSERT INTO `oauth_access_tokens` VALUES ('f515ee5e520bd5d97d64fb10dc03e2edbaf292ec2833d542489746a539e008adbc15e8c6915b9ebf', '320', '2', null, '[]', '0', '2018-03-16 22:08:48', '2018-03-16 22:08:48', '2018-03-16 23:48:48');
INSERT INTO `oauth_access_tokens` VALUES ('f6eeffc0de71ede4cfe13a60cfe52f4edcc01729ab858b7e73a86e92ddb61b0065201e8ceb429e9a', '1', '2', null, '[]', '1', '2018-03-11 17:11:18', '2018-03-11 17:11:18', '2018-03-11 18:51:18');
INSERT INTO `oauth_access_tokens` VALUES ('fbdac487e46745b418b9a42a64432a13a911316d50dd3f6e73cc9bf3f12a590c01d4b0860a811eeb', '1', '2', null, '[]', '1', '2018-03-12 20:03:15', '2018-03-12 20:03:15', '2018-03-12 21:43:15');
INSERT INTO `oauth_access_tokens` VALUES ('fbf518619dda05df00f855e59f8ea16a7a32b67008ca4508752372c3bc98487e1231b1208012307b', '1', '2', null, '[]', '1', '2018-03-14 18:49:32', '2018-03-14 18:49:32', '2018-03-14 20:29:32');

-- ----------------------------
-- Table structure for `oauth_auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', 'f3nQz3TZ4qRwz115YOp3OxsDzm3gFDJSbWQiFXJj', 'http://localhost', '1', '0', '0', '2018-03-11 16:54:46', '2018-03-11 16:54:46');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'Mf3rFX5YjJoMNX5asJzgdrBKQBZqSlavecj083vD', 'http://localhost', '0', '1', '0', '2018-03-11 16:54:46', '2018-03-11 16:54:46');

-- ----------------------------
-- Table structure for `oauth_personal_access_clients`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2018-03-11 16:54:46', '2018-03-11 16:54:46');

-- ----------------------------
-- Table structure for `oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('09953e23a6980b4480861b34b1b71b9e3b3b7b6a8a58771b8cecf6b3f5e6e09bbb897821d1a3914e', 'fbf518619dda05df00f855e59f8ea16a7a32b67008ca4508752372c3bc98487e1231b1208012307b', '1', '2018-04-13 18:49:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('0c3ea20667549ae8449a2f3ed0a859493af2f51f40d691311ede87e3f030a55137a5b502fe5bdf13', 'd6c8a3251d918c7dad87baa702b16933f576d2f36ff260d411253d1a98c3992bec0fdd0a5dd18197', '1', '2018-04-13 18:49:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('124246a251da813298ac760f3e818b28d70e2dda03f37192f98d8fc03b2170b6bd730306e93aaef2', 'bf4b0fdabea9b0cf2c8cadddc4d637949ece4dd704e690cb52423ce28b74b2556368bb1b442c1f9b', '0', '2018-04-13 19:35:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('153e6f153506b92a3a10ad38a6a0e10a28742dd7b374e9697da99286717470658fb55db9254b2442', '4214132f6225ad24079321798e374e19b5009872a0c19243bd70c4d3da076ac00217cae229c8f712', '1', '2018-04-15 19:27:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('1dc225ad636ec1ba2419bdc9708de4b9657a4ddde648c49f4b0476d5f572b51e5a4de2bd796a73db', '5223f683b8e0ceac774cb2702f58429f3731cc61624ba655284cf72f159bc9bd2ae5691a5b74874b', '1', '2018-04-15 15:28:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('210e3cb20214ff186b3a213e71aec7dbbb8c83815ab2c4697d93653b740de7ce976dc47188e76816', '12052ca28037b32bb190bb2dbf4318921c6ebf63397bcc62e15d91676653b50ade6aa5bd279b5684', '1', '2018-04-13 19:11:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('242c3cdd1c44506731ed1ff7b61df6ae7c607ed9cb7d1bf464e39ab816ce1395b5370d8bab4bc28d', 'e88de4f4f4100e34cbd336e5fb2664a77040b9e39f6712df64e40777c4ec74d803f76127a48f3717', '1', '2018-04-15 15:47:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('35ba016c2da93602f0906c63c59c02124280bb8ed2f75472a99da68ad7ec2726b8c941034c24c1d2', 'e4611ab97f653721b88f77a8d0b1e372500f110e9b4f1af61ff9d451f3664dc65ddf1e59c25b2200', '0', '2018-04-10 20:49:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('37a97275c462a25ab7491a148d57ea1e4c7266a2b8e832bf7fd5bbe5fc1c57971b388bac8e1c6177', '39ff0547a77c0e08cf17fd8b1843aeb4594a6c48bc9acfe544a0f6003fb7ae83c1326e6d3ade5c14', '0', '2018-04-10 22:12:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('482c95068a9f90ab571202f9ed2c690d20ea6b4c051b3d773e3cd3288a03661d5e573a4d9eb920d1', '62e58eb3c1dfbc16ef43d9448c2c2e22ddc9bb77dc203dd0ffd9eb865db7b774d1810e7c56283c8d', '1', '2018-04-10 21:09:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('5672a1ee36ff7f94c5fe20b45b16c1ad8c70a1a83b0cd1bb07651b6431a1117c52f22c2751c46d6c', '409180e12fc969c02777862a87f962d629b67d53f06de4fad932066156adf0b3699192eff6abd640', '1', '2018-04-11 20:22:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('5817c2c5b393bb20ddb232efe9e396b9fda51613207b80c42f90c51356393314ab1cbfdc0e5b86da', 'f515ee5e520bd5d97d64fb10dc03e2edbaf292ec2833d542489746a539e008adbc15e8c6915b9ebf', '0', '2018-04-15 22:08:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('68a946cf21dad3c89d281099fa865c985635eb3c680a218ac0e3aa2f5020ad0be8520a61a19fe1a1', 'bfa37d0ad8caee75dc6d49d559c56dc2bf06b8287711dccd0fb9a2d225521892afedc69e47324b5b', '0', '2018-04-10 21:11:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('6c6cf2ba3dfb08e5facb9ec1d24b7ecc0675d891f3dad66d5984244d1567e0bfd03f56d06a7b8263', 'd7d696f97610ec0254dac16433cab039067514c1bdd6c879b25a85f9604a1d797105634ce3b2e25f', '1', '2018-04-15 21:24:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('70d779ed2b28a3b95759c7d0c437d16cd96d54accf89df97903673cc01c6b18e89432d0bb8b73217', '8e2a5ff267c251f11496faa1c8f14c19de035d3e4af527007a4be843d57a50e0a157c657b5ee2c32', '1', '2018-04-11 13:22:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('8405279ec403ddfb5ee206977dabb47c1fc10600ab6443fd76e1e6e12bf88c9778abb8431bdccb08', 'a37f73585262d788475705df99c89dd726a374cc79fafe893e73bf137350c11507a15edaeb05dfce', '1', '2018-04-13 18:41:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('85309de16536def0fbea3d06778eef470f37640f4bccf9d4e9a3a16f6f458dc00f05667353d0407b', '0b554f1a5cd359aa2eeee5c812a57ce33b4688408850bf6f0de0c611c249ef2e6b1c437ee188decb', '0', '2018-04-21 22:48:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('858a076117df44235c6c0b4fc3bc42b38e36e58160f38ce3c4f4d4c15f03c93202692d03b19c5288', 'ce1608c54e2ec1f9cb89f81b328f3c6613169fd4d39acb573664c0b60564c0f6b4e82d3bad20d671', '1', '2018-04-15 16:33:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('88b5688de49ae6585204f5fa69c4d6fe53fe0f31d878d322a999259ba0919d8428556ad7468f02aa', 'fbdac487e46745b418b9a42a64432a13a911316d50dd3f6e73cc9bf3f12a590c01d4b0860a811eeb', '1', '2018-04-11 20:03:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('8de73c5cef0cf91f6ff7586d52b841ba3d4628dca710b5f0df605301a1da1515a498f121a3b2cccb', 'd050867ab894729e237011236e056646cda0a191ac66a3114f52763b731597bdb0e07ee5e1024b45', '1', '2018-04-11 18:20:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('967b492847101f253a704bba9fc39afbc24e8665a33fb9f7b4140aa1b7b42b7be5990da9f9d7f4ab', '09c98488234bf7fb5b1121d1b3bb1ae4e5e792fadfed86ad1c278ba3ee0fc164d9078262d7eaea1a', '1', '2018-04-13 19:15:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('978577b683456d4150fde303c204f3c403459aaa11decf89aae9c167cf674f45c4167dd1991769ca', '88cf926b843645dda8bcf6ee8d942eeb9a85fe3c3172709797d6fa40d75d466b59b6d025d9e8a68c', '1', '2018-04-11 21:42:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('9aecf9bd62a349fd1854d5a75601a716b09f4b171d3bac99f64ecfdcf9c81f212fa6e77cc6301eab', '13907bd80ed7ac2fba73c605da8e65204a90ca8e721831b4c8b2a0dd500960bc869b9c5a7aec8013', '0', '2018-04-15 22:14:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('a2408e7265313ee7d28a2e2b64718c261afe7aeef29deaee87561e36c3a4a74c9d06d00b2a71c55c', '4f5f6c86897301111028a8ddca6e0fa63c8df85002a331a9e3dbd88b7713932256cd133054819784', '1', '2018-04-15 22:06:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('ad9bb5f58048ffa317b89d6d7be5b41360d5fcd651ad9c462e9c17633391525938278d6705d0dffe', '08c00d029e663ec27348795041cf8a1fd0c442f47560e7c178f4a72246d0d1724d0b6338a77c57f4', '0', '2018-04-11 11:17:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('af84e7548a762fe4afaf3caef7eb9e7b340d355ad01e33834871150cc6434406ccde6867b1d7a17a', 'f6eeffc0de71ede4cfe13a60cfe52f4edcc01729ab858b7e73a86e92ddb61b0065201e8ceb429e9a', '1', '2018-04-10 17:11:18');
INSERT INTO `oauth_refresh_tokens` VALUES ('b76a6a09e3c888d324f19f8c29bdfe200b0d1cc2ef4234c3d3a2a35d5a599af90a3f2a28d956ff9b', '2a369f17f56d23054543a81e0655fd06c63530b5e3b452b749839d2325eb22454c67689b1c944eb6', '1', '2018-04-10 22:15:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('b81fcf70ded7ee69a3e42d4b5039b789feffb9f5456e347cb8f8630e8be047d28fc580d3fb138ef0', '2128e027e87b3edc404f8ea8388c374ab42403b9bcfcafe3cd41fb38cbd3a5d44d87994be58da7af', '1', '2018-04-15 16:34:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('baeb0fed205ad38b59b74f69b40fd45b373a56645ba1d82ec99f0a5a61a4324dbde8e2a2a524b0a7', '6a2d886d2f7e4cbf9c30d6e33e8b8039dde20a70f9f660c326abe78451fc44fd39d8627c15aec70c', '1', '2018-04-13 19:35:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('c022231c52f3a010fd9dd043b9ebca1c8071bcb2cfb30efad5d3a20c6f7b101aab61dd4aa01ab62e', 'd3afdd84b13ee6604c9c94651c28598dcd0be202234c09b42061bacfb97ba200c6c5d8dbca28c3f3', '0', '2018-04-10 18:10:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('c9ffb87b8c32362eabf91c94cc08f7a9af78e9f19f7da24cb24fcf48a7eca53d0abdcdee70de447d', '1237e103fdd5545adddc341178991a5608d1ab8ead4bf0bfcb68938ca746b0373fd1b0e5209afc47', '0', '2018-04-10 22:41:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd6f014c4ef4c17d43c9d81146cf8ed4f97e284f9fb7243172f122e7cd6f973bab823c0bf21bc3da', 'db2e681a13f1642814804438fd39578d1617079b92cb9f219b4873071fc83b96d6686ca487c49065', '1', '2018-04-15 15:27:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('ce0471a2bcebb3c799d5a19dff6543c2d05130547e6e0b2bac1ce9340514729a89166908975a50d6', '7f48d43d7f786b8701b53453483a96b5c151160c01b154e7fd17d0e2209c7884835adc601a4b60ce', '1', '2018-04-13 19:05:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('de89a35fde178a2a2b991350faf64fd3f445354398095d255336fc9d0501204faae07473c93a68f4', '959dd1e3f7bed42c0236c36c4ff057434bec5caacd008f8837bfe603328f40c18303c24cdacbd9c6', '1', '2018-04-15 16:46:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('df23a63446b8766c5eeceb3883c0ad250efd07fc8d988609ad73b18dd3b4837cd8c8062c12e2a9e1', '4831e9ccff7383b4a1eff151b4255fbf0457230025626f75ac4fa5b480fdccba185c22d7683128c6', '0', '2018-04-11 11:56:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('e16fe6960f41b93d01fbd411fd0906b6d427f05a982a0560c4a9f3ff9195af36d55f8495ea195e75', '9825588065631b540e06f4f9009efb517d41a872b5516e96cfc807cda0d74ba20b45046bbd7ef998', '0', '2018-04-11 11:47:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('e1dc9f041b854832199a49d93f5ec30d32dcac342a9576e483c7a47549582709af62bfc1de7875ab', 'f16a51108201615e674b72324a8d2e20cd4d5bbd54aeb183751dbce6d4d809a0390a2f2a531cf024', '1', '2018-05-01 21:07:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('e8fb270f9eb67d3e054dfe72109dee9cf167a9ac5c2382399d6309062520205ad4ea3d7a7626877b', 'b14f808d092c9e00183d3fe7bc2ade0ad55217245ce630d48197533ae68b4051ed0fb3f50f02f93a', '1', '2018-04-15 22:09:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('ec085ee098bdce28921109e3006cbaeae711a3845fee50c39f11a59c4e4449019a93d829d0f5eb6a', '3c6f01fa436102c23a833397d1f891ba8617f70faa400277c7775e33ca9159daee0be9ce4da2e4de', '0', '2018-04-15 16:48:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('faaaa5b71697185b72eab425b7f21eab5908473b1ec75edcd88d49e9abd36dbf5af2b096fd1f762f', '5365fd84b75ef9a6155f7753ac3047e7b3459f8bec03c22f5d2d776cd613af1a362d2f297d5fa9b9', '0', '2018-04-15 15:46:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('fbf96658ba0565d6bd3f05af38e71565349cf4425f3126feb68beac8f91fc6ba9f9ceec2979ae4a0', '6bd2269b64448e5d704e1ceb03f8bdcaa9cc2ec6e44d9e469e8aecbddb8aab22929e14510c1586bb', '1', '2018-04-10 17:10:53');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '功能名称',
  `pid` int(10) unsigned NOT NULL COMMENT '父节点',
  `type` tinyint(3) unsigned NOT NULL COMMENT '节点类型(1->分组 2->节点)',
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '方法',
  `route_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路由名称',
  `route_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路由模式',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '功能备注',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', '学期管理', '0', '1', '', '', '', '管理学期信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');
INSERT INTO `permissions` VALUES ('2', '获取学期列表', '1', '2', 'GET', 'session.index', '/^\\/api\\/session$/', '获取学期列表信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');
INSERT INTO `permissions` VALUES ('3', '获取指定的学期信息', '1', '2', 'GET', 'session.show', '/^\\/api\\/session\\/\\d+$/', '获取指定的学期信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');
INSERT INTO `permissions` VALUES ('4', '创建新的学期信息', '1', '2', 'POST', 'session.store', '/^\\/api\\/session$/', '创建新的学期信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');
INSERT INTO `permissions` VALUES ('5', '更新指定的学期信息', '1', '2', 'PATCH', 'session.update', '/^\\/api\\/session\\/\\d+$/', '更新指定的学期信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');
INSERT INTO `permissions` VALUES ('6', '删除指定的学期信息', '1', '2', 'DELETE', 'session.destroy', '/^\\/api\\/session\\/\\d+$/', '删除指定的学期信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');
INSERT INTO `permissions` VALUES ('7', '行政管理', '0', '1', '', '', '', '管理行政信息', null, '2018-03-11 16:56:58', '2018-03-11 16:56:58');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `explain` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '说明',
  `permission` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源列表',
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', '管理员', null, '管理所有的一切，无法修改其功能权限', null, '2018-03-15 22:32:54', '2018-03-15 22:32:54');
INSERT INTO `roles` VALUES ('2', 'user', '用户', null, '普通用户，权限可以自定义', null, '2018-03-15 22:32:54', '2018-03-15 22:32:54');
INSERT INTO `roles` VALUES ('3', 'teacher', '教师用户', null, '教师用户，权限可以自定义', null, '2018-03-15 22:32:54', '2018-03-15 22:32:54');
INSERT INTO `roles` VALUES ('4', 'student', '学生用户', null, '学生用户，权限可以自定义', null, '2018-03-15 22:32:54', '2018-03-15 22:32:54');

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` smallint(5) unsigned NOT NULL COMMENT '学年',
  `team` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '学期 1 上学期 2 下学期',
  `one` tinyint(3) unsigned NOT NULL COMMENT '高一班级数',
  `two` tinyint(3) unsigned NOT NULL COMMENT '高二班级数',
  `three` tinyint(3) unsigned NOT NULL COMMENT '高三班级数',
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账号：用来登录',
  `pwd_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `name_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名，可以用来登录',
  `idnumber_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号：可以用来登录',
  `sex_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `phone_student` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话，可以用来登录',
  `status_student` int(11) DEFAULT NULL COMMENT '状态，-1：删除 0：停用 1：启用',
  `remark_teacher` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `createdatatime` datetime DEFAULT NULL COMMENT '新建时间',
  `lastdatetime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `lastip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录ip',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'keJpRegx', '$2y$10$Uro3AP0D0rfpIxZsPdCvRurMEAChuIz96/NX3RhEx2pIqEKN5DYyu', '唐伯虎', '445322195102157353', '女', '18641632355', '0', '8xVkmadR8kshaWWKoOvG', '2004-03-20 02:17:32', '2001-10-12 10:42:33', '249.180.155.56');
INSERT INTO `students` VALUES ('2', 'rCM15Wk0', '$2y$10$NIikk4nglUzbTmsFMfZeOuj9.APS5jhED5CXnGFFdnNoVbxjEINki', '闵博', '632122196603260566', '男', '15310145127', '1', 'GGk9ICTpCU7zs23s9OZw', '1989-05-07 12:04:26', '2007-01-23 06:52:54', '17.137.241.216');
INSERT INTO `students` VALUES ('3', 'sDVZEZvw', '$2y$10$p1q7f0fA3pHprP5aiiLQCeFYIoPKaH1dmJSrc/9zSthPwVkPi6fOS', '党凤兰', '210904198202196882', '女', '15945283827', '-1', 'u9AtiSCT4u9pH17vZ2rW', '1994-02-14 04:18:51', '2005-04-28 20:56:05', '5.200.128.242');
INSERT INTO `students` VALUES ('4', 'w42quPcG', '$2y$10$l7lxoAFdFIGz1fLj8FuTKeSjwI7BPN7XmWby503VQfbvjvBhX5Z6q', '保爱华', '341002196202258675', '男', '13138901231', '-1', 'LgIcXcIOVAeUwsU3w0du', '1970-08-10 17:08:10', '1972-07-20 21:23:57', '124.214.219.254');
INSERT INTO `students` VALUES ('5', 'GULX1lyo', '$2y$10$E8sSNA1j3Ry0DOo0OLlmuuIYMQFDl847kAqj8FYj.ZXQSnq9C8ZkO', '阮淑华', '331123195607148344', '男', '15914327098', '-1', '1iLrxFIF1NxP7bmu4NpV', '1995-04-30 12:34:41', '2010-06-25 23:19:16', '9.225.34.164');
INSERT INTO `students` VALUES ('6', 'cuk7o4iE', '$2y$10$z0yzRTlJBAS.PuKTuIacnOGxgoGpPk1vd2s4aqNg8ojePns/ssO3.', '郝楠', '341024195009270887', '男', '13971303729', '1', '735nnajSdlMTSuZWtska', '2016-09-16 11:10:04', '1995-06-08 16:44:58', '122.209.237.84');
INSERT INTO `students` VALUES ('7', 'icaqC6iy', '$2y$10$LyivH1nd33MXF7.3GwKcCe2tVyeiZY5MK0XDtaOTjVbeE1YMtJnqO', '耿玉珍', '511528197909053961', '男', '17777175838', '1', 'i6VMcx9T8C3eOHVh0lwi', '1978-12-18 19:09:10', '1998-07-27 02:24:56', '13.10.147.123');
INSERT INTO `students` VALUES ('8', 'h2VYqNZc', '$2y$10$8Mr2NOCt3gLI3vq0AQmPe.CgVvWCaYB/oTpmE5IlNUCvNfgTnUjby', '车国庆', '330723197502142887', '女', '15718512530', '1', 'gRyJvXfXenGh1A8sO4eU', '2016-03-30 17:06:36', '1989-09-09 14:04:08', '103.231.237.8');
INSERT INTO `students` VALUES ('9', 'AO1Twv6r', '$2y$10$2sdKFkeM0d0U.yksJBW3mu5UkC1rln9cM9qKCtNxAL1Qo1u5FgFsG', '项丹丹', '620503197612294083', '男', '18732953837', '1', 'AZB0v5KHOyTChd6McPa2', '1987-06-23 10:25:21', '2010-08-13 03:42:57', '29.167.182.114');
INSERT INTO `students` VALUES ('10', 'wuuibYGE', '$2y$10$AUhET/iGiPbEHMJXOUG1COCyxL2H52uLnMe3feYwPsM16yFpiCzFW', '窦利', '652828196512047938', '女', '15193932215', '1', 'cKDZnP5FWHdWmoaecOW6', '2005-01-28 02:30:09', '1990-01-17 14:12:15', '82.225.239.173');
INSERT INTO `students` VALUES ('11', 'y5uJsltn', '$2y$10$NsECyhRTK7YsrBxrBSdB1OoZ.66ptys2sHMJ2QDdy5q9XA.XPc1Ja', '刘丹', '340122196407049121', '男', '13251335900', '0', 'yVUF9f95HJHPELzWXLIs', '1998-05-12 05:25:26', '2009-05-18 22:02:54', '61.38.3.97');
INSERT INTO `students` VALUES ('12', 'KGn0oitX', '$2y$10$d.9oIF9Mhk4KDJfTeKS1/O78cG7yHUX/QgLfskE9QpQWNVHZBh4Zq', '稽刚', '331102198212208228', '女', '15776663063', '1', 'm0pekk6PF4v29uMcPVNW', '1973-11-23 19:02:16', '1994-09-02 10:34:09', '6.76.238.151');
INSERT INTO `students` VALUES ('13', '4JrIcgYV', '$2y$10$Xdp9dqOG3fv1YWTx0G2WUulIZBoTFj0obv7lal6wwFsW3R.ybQ5la', '赵杰', '510603197310131529', '女', '13999298222', '-1', 'K73p9pdUKupzkdKhm9ZN', '2014-08-30 17:54:58', '1996-04-30 17:31:54', '135.231.169.33');
INSERT INTO `students` VALUES ('14', '9cZ1OoLW', '$2y$10$Z2bvVoUsDdyD32xkzxB7GuJy5/rRRcpN0Ytxpi6bqq82iUhVCNuD2', '朱凤英', '532627196809118958', '男', '18640213822', '1', 'aA7B1xzne0eY4RMcw5tv', '1992-11-05 16:24:46', '1993-10-10 10:59:47', '161.188.169.98');
INSERT INTO `students` VALUES ('15', 'AL9I14uu', '$2y$10$aFo/pb4l.VQNHezNrDjacOujsYmxnxYEGD6IXPA8QKaKAt9DPF486', '傅琳', '371427198512129290', '女', '15831357545', '0', 'BlLdbC08QFb4CCcE4tCV', '1972-04-03 23:56:23', '1981-12-31 11:20:53', '172.8.95.123');
INSERT INTO `students` VALUES ('16', 'LWLn8ZbZ', '$2y$10$Tr/e9aDZHEMxWPVsoTi3K.LcWMRC4yQeFG5WNfr3x5J8CEi6IEVre', '荆秀云', '620111196705127077', '女', '17761207168', '1', '5GiQInKBdzQwJJgUhbQO', '1977-11-01 19:53:52', '1977-07-31 04:00:04', '1.105.178.189');
INSERT INTO `students` VALUES ('17', '4cJ2jMOU', '$2y$10$GcWGilnwD4YPotSL85eBBOB9OnqOuWUlcQssQjX6Xlo3DFIMUSwL.', '聂桂兰', '210802195406130808', '男', '18628719013', '-1', 'IU1LItu2jj06cIHICjkF', '2011-07-26 03:59:44', '2011-09-17 17:57:06', '143.91.32.65');
INSERT INTO `students` VALUES ('18', 'oQ3NbpfZ', '$2y$10$N7deck63bcbG6YS7boFfI.iTZMUWFxJEEPVC1YLimYthN/81783Vy', '郑欢', '320583196411271906', '女', '18648992772', '0', 'ufSSliCczU3yM2ktBvUo', '1988-06-17 21:12:17', '1992-04-03 11:41:24', '68.235.226.104');
INSERT INTO `students` VALUES ('19', 'RPCoI90s', '$2y$10$ykSDxA6dTmn5XtQx2wXpz.S2qkmB.NTdFEZXpYJgW2KDMQ2KRtfBy', '解志新', '654024197602070717', '女', '18844369543', '1', 'KF1Pz7BXgvEEZ29A5QoD', '1981-06-22 17:57:51', '2000-01-15 12:23:13', '120.245.92.182');
INSERT INTO `students` VALUES ('20', 'nA8fHCa2', '$2y$10$Kh7p9dTjl22W7KK58iqu/OzF6Ti9miV/gxK.tmPkODKrYP9YP7QEG', '石琴', '430511195201245311', '女', '17884588666', '1', 'MGyR48YUsc127IJNeO72', '1981-08-22 22:32:53', '2017-11-15 20:22:16', '88.177.178.231');
INSERT INTO `students` VALUES ('21', 'Ix3UYFG2', '$2y$10$SWzXOi.cx2M.3NsnudnyZ.8YG/QJxyGV30pjR5yAtyFCIpaFYPztm', '卜红霞', '341324196908167198', '女', '13235494220', '1', 'O6oFD6i8q2VWaydc0UxG', '1999-05-07 10:08:47', '2016-09-10 05:11:03', '245.10.175.147');
INSERT INTO `students` VALUES ('22', 'pzDoGVNO', '$2y$10$aoGT4zsL68dbOnm2vMnmr.XA7UwnGHA7pwD06zJQA/.taDi/De4zm', '谭玉英', '130981198502288634', '女', '13275486713', '0', 'dU1IzymFcw7D6Xz5JHyE', '1978-02-24 10:35:17', '1972-04-24 23:53:55', '44.10.135.184');
INSERT INTO `students` VALUES ('23', 'Cazb5Zo8', '$2y$10$oPGHFieA4XfPg83UoQpBweh.z.fKUtrC5e8dqMO9z4Q3KIxvkXWsy', '边桂珍', '654321196112195675', '女', '14737292944', '-1', 'po9qei6Gr73QVTuTEjNJ', '1992-07-22 09:59:20', '1970-03-05 02:37:08', '249.200.109.136');
INSERT INTO `students` VALUES ('24', 'Kzcr3jon', '$2y$10$gvi0kw5/UMzNojLEnpRN8e7855glmm21zohKroAjiNktZGxKINCCy', '石振国', '621228195512213015', '男', '14758465327', '-1', 'Jb7t6n8DsfcdauHOkZtu', '1975-05-30 21:44:57', '1982-11-21 16:34:23', '62.70.120.67');
INSERT INTO `students` VALUES ('25', '12ChgyZm', '$2y$10$jsIljR9O/mznI76tbgDGMeQzDk3FdxugpLh5STXVk6rG5tAS0R3Ny', '胥丹', '371329198010121835', '男', '13960519876', '-1', 'GNUQ5g7DLv7fLLJQpNFO', '1984-03-16 05:52:56', '1996-06-05 05:49:15', '30.59.121.110');
INSERT INTO `students` VALUES ('26', 'VixnoTcK', '$2y$10$5HEStL7f1YzF6khouFrOOerqF1SGmthC5jetH4lwsTdL8CSfLDvu.', '费华', '360721197203187009', '女', '18064111239', '1', '1Mx28Dfim02EnaPQZho0', '1993-08-17 10:32:05', '1987-02-09 04:13:19', '88.177.211.192');
INSERT INTO `students` VALUES ('27', 'hisjO3f0', '$2y$10$wUaqW0x2LFUG6L9wpIKlKuEexy.gWfo7ABIwCUnkJwRKzVyZjUtCm', '薄文娟', '440781196502163113', '女', '15116571971', '-1', 'Kh8J7IcIMbRQe5hdDAGr', '2007-02-21 07:45:37', '1979-11-07 02:46:49', '114.187.73.245');
INSERT INTO `students` VALUES ('28', 'Oo83Vlon', '$2y$10$sqskZOwAQ0PCpLUjNFsVOuyPpMDbv9p/ybPr82ntCVCA4HZCwA9wG', '解正业', '513228199003022020', '女', '13931417410', '-1', '0R9ThZoZMAEGcgcUqpvl', '2010-05-02 23:27:26', '1978-08-26 19:58:00', '211.1.188.14');
INSERT INTO `students` VALUES ('29', 'bMkNnU7P', '$2y$10$GuQ5dmm4xtbdLj4cgjUIYOCvGJDDxehe36wSZatsPqlNa3TCn.Q.a', '康丽丽', '540101195510034340', '男', '13791355111', '-1', 'no8eiNQ1X8aYSEuu9kkR', '1989-08-18 19:18:47', '1986-11-02 06:39:13', '1.32.242.85');
INSERT INTO `students` VALUES ('30', 'mmmFf6SU', '$2y$10$Cck2B0nTNYTxF7raHqHPD.ufW8iqipk6OC5HQzrbHD.QZGTZxwqDq', '符建明', '610822197602037669', '男', '13977833253', '1', 'j3gwRwyDQRUFLDE2wXNM', '1993-06-06 12:16:25', '1977-08-09 20:01:34', '76.140.86.200');
INSERT INTO `students` VALUES ('31', '8E36mtrz', '$2y$10$wPNgcSLqG5p//1xgBtl5r.VH3ic909ezrmr0qEq3Q/0PtDXONp/me', '白正诚', '320722195107144121', '女', '18254369972', '0', '7uMD0eXq2GYn21iASAVz', '1971-05-28 15:32:35', '2009-05-03 09:21:11', '41.50.76.55');
INSERT INTO `students` VALUES ('32', 'Y0zwrHE5', '$2y$10$E61vAM/Z/IEbovMCkPwA/uJjMVr8ICOjMTe92LcXJLAC7felmJvYa', '冉鹏', '511302196604263408', '男', '13530251137', '0', 'wIwN1KkEZuNUd6v6yNBJ', '1998-08-03 18:52:00', '2002-07-09 00:02:21', '21.83.207.40');
INSERT INTO `students` VALUES ('33', 'TJGsxwEq', '$2y$10$iI8Hd62yHklU10Jl.oeT9eJPJiBSWcXbTKRcTTJAjf73dpOAUieIC', '凌瑜', '632324199009103194', '女', '13339031411', '0', 'qC6cjDfD3c1LFrikCcmM', '1977-04-14 03:37:59', '1989-03-07 22:59:48', '150.8.70.242');
INSERT INTO `students` VALUES ('34', 'COUy23Ri', '$2y$10$RS/KA2LfWK8vvQD621uPMuDYbyHiZnk/FnnXRcX0EQ5M5WWpeDrMO', '盛帅', '52032119920423410x', '女', '18423431778', '-1', 'hnlXeCi3twwnOiYJ3YPG', '1984-12-04 14:31:11', '1977-09-10 21:04:25', '235.35.112.30');
INSERT INTO `students` VALUES ('35', 'N1dgIirt', '$2y$10$8sqTqtfiCV6J6HLDNNOCLOcWutagA31.G6M4zUF8JMhGEqOCu6iNW', '荆宁', '330203197107195580', '男', '15872933308', '0', '21QIJMt1DkT3cYyY1ygP', '1987-08-02 06:48:10', '1982-12-26 15:09:33', '163.130.0.134');
INSERT INTO `students` VALUES ('36', 'Eo1YULbT', '$2y$10$ikq8dmSBvkgVFMJAX9f9mOwdDc1VnMjejxepX3/ijSEc.gm4v654y', '鲍伦', '130481196104162626', '女', '13738017492', '1', '5DjC8cSJiL1fskPeYQJG', '1971-07-26 01:02:46', '1987-04-12 02:33:28', '121.33.10.69');
INSERT INTO `students` VALUES ('37', 'VR7avioU', '$2y$10$T8RsiODtpCfFXkz3U6xia.RUAU83mTWAf/TcMYU3jyuqLVSftbjs.', '谌兵', '210682197806075326', '男', '14715931521', '-1', 'XhKN6TJBL9mJvYOViIxv', '2001-07-09 20:34:58', '1975-03-23 23:02:29', '77.141.153.254');
INSERT INTO `students` VALUES ('38', 'CWcYw1OS', '$2y$10$9.TAJM0W/xX.OjUR.NM.u.mTr2C7kXDPFZLvKCGH3YBE0fzHEsLnK', '洪荣', '360401196906135460', '男', '15546105456', '0', 'gLtdHi19ZYaSgoIGtwin', '1971-10-28 14:48:27', '1982-05-01 11:55:44', '70.181.140.24');
INSERT INTO `students` VALUES ('39', 'sTpC76tA', '$2y$10$eU6wTIMwwcQYPn3ApsYbCOuNeOmMVbJLetKp5B6E679vg7.VayXme', '商超', '140603198502258204', '女', '18528368850', '0', 'cXlH9bWWc9o2HDUJDUuf', '1983-04-22 14:26:49', '1982-05-18 00:07:20', '18.141.33.98');
INSERT INTO `students` VALUES ('40', 'Ne6UTuVl', '$2y$10$OUIsxaUg1/xgUZdhaiK1YOvrereeSRgcYcJI75MjMWhTvWGvoZDX2', '潘楠', '520325198807264739', '女', '17841084568', '1', 'GApSrhVOaEheIMvcl7dw', '2008-12-03 16:30:38', '1971-04-27 19:04:42', '174.65.171.77');
INSERT INTO `students` VALUES ('41', 'K5koyUK5', '$2y$10$7tlUDefyMMK7IH3S0vRq8uWpnYFr9aqhz4CIeqqs9ZayI3h93A.hS', '练军', '370102196610237726', '男', '13587497422', '1', '6rrDETHFHwp4dfLXQSAU', '2005-07-29 21:31:38', '1979-12-17 02:50:21', '251.85.24.178');
INSERT INTO `students` VALUES ('42', '5jbW4Mbk', '$2y$10$Dmhr7HFGPJ5T3Y3a8t.cO.tu7nqiovfBRCGRDoceNXuNM8mDX5heS', '银涛', '331022198002054611', '女', '13298929399', '1', 'apvGquXEUUbmmYHXmv1C', '2004-05-08 08:01:10', '1985-08-19 01:53:51', '51.250.217.6');
INSERT INTO `students` VALUES ('43', 'aore7l4v', '$2y$10$qwn4ARaUr0Aw/SLXUsMgSeXOotaAP89uCum4iPFlKcBlkmoL5iEEC', '叶瑜', '530425195811150674', '男', '18640605986', '0', 'kU6chWygOBVWuNc1Nmq5', '1973-05-30 18:27:21', '1982-11-25 13:49:52', '13.178.236.62');
INSERT INTO `students` VALUES ('44', 'DmlU0U23', '$2y$10$BESyNAkF81XXPBORF/1Abu1jev1/Kj23nTQSvLNMYc8k2IFgnMn9y', '洪志强', '654201195901295331', '男', '13290431875', '0', '0nP4axCk2mxSmSRma1kk', '1974-03-21 08:08:40', '2014-04-04 10:55:17', '91.192.63.112');
INSERT INTO `students` VALUES ('45', 'eydDjTb1', '$2y$10$F9Ehh8uvhaXXrJlCj.virOHCJriY2PaKOnndKBcbVLkCL7Dxh0BOq', '蔺秀兰', '41030119580430204x', '女', '17644842353', '-1', '8Fb6Hz4nmJ4ohi6BCcsY', '1994-01-08 05:04:04', '1977-02-23 11:54:07', '239.66.236.159');
INSERT INTO `students` VALUES ('46', 'NEqLdTwY', '$2y$10$oVJF4zFAgSI/f20DMuhMyO/Mbs8kIv2AS7LA5wERn4wqMFqC0jeBy', '谈正平', '469006196910137006', '女', '18870817772', '-1', 'HKmWInj2C18YFvWi5t7f', '1988-04-19 01:03:56', '2010-06-04 22:13:46', '149.57.123.31');
INSERT INTO `students` VALUES ('47', 'CslwdXnY', '$2y$10$SZ56hFAqAyWuJ9ThbTFUYOnWvjrrbSo71JeprUxS8gQ75yiU.JVVO', '翁林', '440308198402259994', '男', '13943866180', '-1', 'VB01AJOkgceekZmZYlZT', '1976-08-22 15:56:45', '2006-06-27 00:15:06', '172.158.80.253');
INSERT INTO `students` VALUES ('48', 'c30SP6od', '$2y$10$MKHnEJzQSfUAl5Bvj.gFMuH9GRY6C9QTkPBx.35m4sQkv8wTt6FRy', '扬秀荣', '450701197805223886', '男', '15550727249', '1', 'yBKR1FNL2bCQXX5uegg5', '2002-05-27 04:45:20', '1984-02-18 02:50:19', '145.132.13.55');
INSERT INTO `students` VALUES ('49', 'gInPCmhD', '$2y$10$2ZI4hPYLlB6yjrTBV/EuvO7ckoEWaDQKShlr9weoEEzgKkSAQJPpS', '毛娟', '469023196001072723', '女', '18366885923', '-1', 'gMJEYuhxUTUljtolQ1Ky', '1979-10-21 05:47:50', '1996-02-05 18:22:56', '46.107.236.47');
INSERT INTO `students` VALUES ('50', 'DERoe8fx', '$2y$10$L4BKAgPfogaZzVvfJplLUO9fg4mdfzLTFXD6drHFIck8VsKOIzmHG', '余翔', '211204198608063484', '男', '13327164720', '-1', 'URm3U7tWwvuI029f1HJg', '2012-10-12 00:56:16', '2002-12-27 12:51:36', '62.140.255.249');

-- ----------------------------
-- Table structure for `systemparameters`
-- ----------------------------
DROP TABLE IF EXISTS `systemparameters`;
CREATE TABLE `systemparameters` (
  `systemparameter_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参数名称，如‘科目’',
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参数值，如语文 数学 英语',
  `remark1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注1',
  `remark2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注2',
  `remark3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (`systemparameter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of systemparameters
-- ----------------------------
INSERT INTO `systemparameters` VALUES ('1', '科目', '英语', '英语科目', null, null);
INSERT INTO `systemparameters` VALUES ('2', '科目', '语文', '语文科目', null, null);
INSERT INTO `systemparameters` VALUES ('3', '科目', '数学', '数学科目', null, null);
INSERT INTO `systemparameters` VALUES ('4', '题型', '单选题', '题型', null, null);
INSERT INTO `systemparameters` VALUES ('5', '题型', '多选题', '数学题型', null, null);
INSERT INTO `systemparameters` VALUES ('6', '题型', '听力题', '题型', null, null);
INSERT INTO `systemparameters` VALUES ('7', '题型', '口语题', '题型', null, null);
INSERT INTO `systemparameters` VALUES ('8', '题型', '填空题', '题型', null, null);
INSERT INTO `systemparameters` VALUES ('9', '题目难度', '1', '题目难度', null, null);
INSERT INTO `systemparameters` VALUES ('10', '题目难度', '2', '题目难度', null, null);
INSERT INTO `systemparameters` VALUES ('11', '题目难度', '3', '题目难度', null, null);
INSERT INTO `systemparameters` VALUES ('12', '题目难度', '4', '题目难度', null, null);
INSERT INTO `systemparameters` VALUES ('13', '题目难度', '5', '题目难度', null, null);

-- ----------------------------
-- Table structure for `teachers`
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_teacher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账号：用来登录',
  `pwd_teacher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `name_teacher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名，可以用来登录',
  `sex_teacher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `phone_teacher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话，可以用来登录',
  `status_teacher` int(11) DEFAULT NULL COMMENT '状态，-1：删除 0：停用 1：启用',
  `remark_teacher` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `createdatatime` datetime DEFAULT NULL COMMENT '新建时间',
  `lastdatetime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `lastip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '最后一次登录ip',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('1', 'Q1fpsM9d', '$2y$10$fXb4XQOkMDmrNH5I4SCSd.YP3Fy4FV0Va3qnyDoVYH.5SLO5zAgRq', '卞燕', '男', '13332376223', '1', 'Ms.', '2003-04-10 15:11:36', '2018-03-16 22:09:06', '127.0.0.1');
INSERT INTO `teachers` VALUES ('2', 'W5rIps3V', '$2y$10$8C.PTiVOXnaGezdxXFm99.aqDwaHbxu.U2hkkqpZqDZFv2WmnkGUK', '井淑兰', '女', '18310012620', '0', 'Dr.', '2011-07-19 08:49:25', '1972-01-06 06:38:48', '19.226.192.79');
INSERT INTO `teachers` VALUES ('3', 'Te2esSBJ', '$2y$10$Rw6l5irO0EGo8CfCfnzrEOT/eQKCEqeEKRmsd5hKH8TU5DxnWtqz2', '燕秀梅', '男', '15850723591', '-1', 'Prof.', '1970-10-15 04:50:37', '2011-03-24 00:58:31', '48.208.247.209');
INSERT INTO `teachers` VALUES ('4', 'TSHEk8M2', '$2y$10$yLJkSNubLfNsFPxFHsbsxea7X50nB/9.1tOTcufhJZ3./p43EwmvS', '邱霞', '女', '15211388564', '1', 'Prof.', '1986-08-13 13:12:27', '2017-03-18 23:22:27', '171.213.133.142');
INSERT INTO `teachers` VALUES ('5', 'MhWXaLR4', '$2y$10$.6R8cyv8basIuEL2zpGgb.1ZXG3hDDnM6GzP31sZNUP8l7rDgrwYC', '都桂芳', '男', '13779232928', '0', 'Prof.', '1973-12-27 06:27:23', '2011-04-05 19:18:45', '33.160.117.57');
INSERT INTO `teachers` VALUES ('6', 'cPTQpOTV', '$2y$10$jHeHjzZLv6jT2x.qPmxSEefqIemNfE0Z3ldAn9xOM.gXSODNx1PH2', '彭志强', '女', '17634152181', '-1', 'Mr.', '1989-08-13 09:22:44', '2005-02-27 05:35:53', '25.251.27.251');
INSERT INTO `teachers` VALUES ('7', 'yMe17SAb', '$2y$10$E3mqmuMzQ5XPC2kbZ1q6Eu85egZTjX9rb/K193vZV2CenrVOU1EU.', '莫龙', '女', '13210395891', '0', 'Ms.', '2008-08-23 14:39:52', '1995-05-05 14:20:00', '75.191.134.231');
INSERT INTO `teachers` VALUES ('8', 'nGrwLxmL', '$2y$10$j3pHj20XAyVypJx20xn7NODgSteYzAI9B2/GcC8V5FQA3LyIlkKhC', '钟宁', '男', '13458768365', '0', 'Prof.', '1987-06-24 12:08:53', '2008-07-13 10:32:03', '96.162.78.134');
INSERT INTO `teachers` VALUES ('9', 'i7tf5vR6', '$2y$10$MgAgOnCsVrCYD6/Gyh5kK.ENL46UVwUdPr23PNZAYHlnnb2lmXf7C', '童林', '女', '18712989871', '-1', 'Mr.', '1997-06-04 02:32:09', '1977-06-17 03:35:20', '249.164.213.162');
INSERT INTO `teachers` VALUES ('10', 'NVAJGD8i', '$2y$10$rMD2YKhzuOs2EJwC4H.AruSYjCbktL1S8cPl/nGtSfOovO5H93aY.', '史文君', '女', '13256668365', '0', 'Dr.', '1985-08-11 02:21:56', '1987-01-09 09:57:49', '2.30.186.108');
INSERT INTO `teachers` VALUES ('11', 'yP0bvBPB', '$2y$10$yh/Ntali//MxRX0rojwKp.7waai3ZmIW/m2/v.N0PL17S8Cl2e3MO', '岑志文', '男', '13554846546', '-1', 'Miss', '1996-12-12 21:01:52', '1999-07-16 05:51:35', '238.100.162.133');
INSERT INTO `teachers` VALUES ('12', 'FKKdYcb2', '$2y$10$W5kSTgoX3/97uoBO.AH01.IlXyYYcfL7YzGLwcs8HRkPsEHDZrxYe', '王丽', '女', '17637597351', '-1', 'Ms.', '2002-05-29 11:35:19', '2008-11-22 09:03:50', '178.5.194.158');
INSERT INTO `teachers` VALUES ('13', '3NO4R6Ex', '$2y$10$4UE8TZIo.DUKac2nAaL/oO2ZLvkJaZ.DB3kC4XI2uXIR4SDnWHvky', '李玉兰', '女', '17753758934', '0', 'Dr.', '1991-01-15 05:59:28', '2005-09-14 08:39:08', '96.96.84.66');
INSERT INTO `teachers` VALUES ('14', 'n3RJZeBr', '$2y$10$Zj09rYcbh2AdS2Ckj5Ar3eDYqrnRSgKzTFP8eQdvI7m0anGKK2QGO', '房桂英', '女', '18859937079', '1', 'Dr.', '1976-01-25 06:59:47', '1983-02-01 19:30:49', '88.106.49.50');
INSERT INTO `teachers` VALUES ('15', 'ejydEYFB', '$2y$10$gKxzKutXQug.UX3xooL8HO6xxW3ND.GgdHUXiki/.X7PGSp7ogHKG', '袁斌', '男', '18655481756', '-1', 'Dr.', '2003-05-22 21:35:09', '1977-02-02 08:19:59', '202.86.185.63');
INSERT INTO `teachers` VALUES ('16', 'a79Cb6ns', '$2y$10$FU/JLcpeAh0nr7AO7M9A3uKbzrmzRD7VVLI6ro96kj9qWCsDBQHOe', '郎帆', '男', '14431738831', '0', 'Mr.', '1987-08-29 13:21:49', '1981-12-17 21:25:27', '60.60.7.130');
INSERT INTO `teachers` VALUES ('17', 'SQEr7A1X', '$2y$10$Qo8kza5uGdDGxDlNwLK8guvXU9K9pcoujjH.dC0KNsKH3ikVD10hO', '岑杨', '女', '18388394022', '0', 'Dr.', '1978-10-11 04:44:34', '1986-02-28 15:07:07', '255.4.127.195');
INSERT INTO `teachers` VALUES ('18', '43Y6A5Yx', '$2y$10$fqt6jJ4ei7JWvJeTwigqIudG6knedE1TMM/hpdOYj.FfdpyTIdOnW', '常秀云', '男', '18791061609', '-1', 'Ms.', '2007-07-29 12:48:03', '2004-10-29 10:37:11', '58.253.155.81');
INSERT INTO `teachers` VALUES ('19', 'fyqbQ44E', '$2y$10$CUUtND09Y8Hv1bZ2vFf2fOtIqxSwC4lBT2yjnyALkYl8Hn8MCMAf.', '宋峰', '女', '17867303906', '0', 'Miss', '2013-05-14 16:02:18', '1981-01-11 16:10:43', '45.171.113.242');
INSERT INTO `teachers` VALUES ('20', 'A5MfObZs', '$2y$10$ARGoKwX5Iy1n6xxUPLA5qup5M7RITNzXYOuJDzKwUq2Ap6d.azQ/K', '商建军', '男', '18213064538', '1', 'Dr.', '2004-02-29 15:45:48', '1993-06-24 10:43:30', '118.180.253.120');
INSERT INTO `teachers` VALUES ('21', 'YB8ohAuZ', '$2y$10$NlF0uObSXcCWwdDv7qjdF.RarV3o4GcHV55sh1qQ5dAPZCxS43STa', '凌捷', '女', '18858341808', '1', 'Dr.', '1984-11-29 11:10:48', '1993-06-15 14:57:32', '50.77.187.115');
INSERT INTO `teachers` VALUES ('22', 'V0vMV4uE', '$2y$10$WYYu3fqm4KTehoOr9uT8KOGQbpR0BjP9RD89b4.HfTMCmmEeZzVh2', '奚丽丽', '女', '18239866300', '1', 'Ms.', '1996-05-01 09:00:35', '1977-04-20 18:58:31', '15.101.105.139');
INSERT INTO `teachers` VALUES ('23', 'B0xuOwgW', '$2y$10$f7E/Tnov2xD/x3LlziVKOe6rN5U2iDUkuKNp4tbAl5hMN2mKnGr6i', '佟娟', '女', '13851014724', '-1', 'Dr.', '2006-10-24 17:36:34', '2011-06-04 10:03:09', '169.175.108.146');
INSERT INTO `teachers` VALUES ('24', 'MitN9BL5', '$2y$10$4bEmp7/4DpEiLtwoBTqKdeX7mJPMaRGsagC21BRjQmQPZ1ggBw49q', '郑佳', '女', '13929593034', '-1', 'Mr.', '2002-02-18 04:56:42', '1987-10-07 22:31:06', '49.120.208.194');
INSERT INTO `teachers` VALUES ('25', 'bpY1jyG9', '$2y$10$MFL2qClm/qmu5jvaHb4i8.pEPOK6NRhpSZAk8WfTHWVm2ydnNzM32', '伍秀梅', '女', '18215117431', '-1', 'Mr.', '1997-06-06 02:56:34', '1986-01-19 01:48:39', '212.252.42.44');
INSERT INTO `teachers` VALUES ('26', 'AxaPS3tW', '$2y$10$nAk3G8DrK.WPlo.at7roCebL4zg6N2Mqp56aKQfYc5FmMOC2muDtq', '左晶', '男', '13261027222', '0', 'Ms.', '1999-01-02 23:42:37', '1971-09-02 04:36:17', '48.179.32.207');
INSERT INTO `teachers` VALUES ('27', 'r3c9j9Nh', '$2y$10$1MV2rhLr7fiTpNY6eGuwwuX/a/U6.CFkm.gYzG07MzbbiE6Roj90W', '宇哲彦', '男', '18454638386', '1', 'Miss', '1981-02-11 17:35:09', '1999-08-22 10:32:16', '87.10.208.207');
INSERT INTO `teachers` VALUES ('28', 'CJWSfQDL', '$2y$10$SxNadLiHk7ks5bZdFXiDpuyxy.Vh1saYkVCTEpV1NCEy9HFrtxWy2', '祝金凤', '男', '13777613435', '1', 'Mrs.', '1986-10-28 15:01:43', '1996-09-22 11:22:47', '131.118.61.143');
INSERT INTO `teachers` VALUES ('29', 'd7zpY9fh', '$2y$10$lJ5c2qKzKODzO3LMtO0rf.wFVGU4n74HR2UpEPCgYiCxUMPZoahx2', '陶子安', '男', '15928811921', '1', 'Dr.', '2010-10-24 16:47:31', '2005-02-17 09:28:53', '5.27.81.190');
INSERT INTO `teachers` VALUES ('30', 'FubwaaPi', '$2y$10$b3MTr6WwR2vgo7jfyYaggO8ZqoL6imEVy292Vtx2jIfmmipIWR29y', '冯学明', '男', '13635149777', '-1', 'Dr.', '2007-04-20 10:09:33', '1973-03-03 13:52:31', '17.49.254.217');
INSERT INTO `teachers` VALUES ('31', 'CzwC3hR8', '$2y$10$KM3Q1mzjCg6K6VNJsZd02.XFhbL43KJhFOAJ94fQiuZR1empQ9Vam', '席建军', '男', '15649093760', '0', 'Dr.', '1995-02-09 10:47:50', '2017-01-23 20:25:15', '9.154.129.70');
INSERT INTO `teachers` VALUES ('32', 'N4TE1IZ7', '$2y$10$o87UoPN9EVky41e88K7rN.GR0vEL3syqGAm3I4XiWgV1/4DYLVcii', '曹钟', '男', '13423236198', '1', 'Prof.', '1992-10-29 17:58:13', '1978-02-24 15:53:48', '193.215.93.253');
INSERT INTO `teachers` VALUES ('33', '5AYS8Qby', '$2y$10$NAsz597Cl9r7uzu4Q/sjn.87lqxHzE7zuEsv1q65zVRRl2vjVhGKC', '叶志明', '男', '18418048227', '1', 'Prof.', '1973-03-13 07:08:35', '1995-06-19 21:17:50', '117.190.82.71');
INSERT INTO `teachers` VALUES ('34', 'AIE2wPQu', '$2y$10$eu4IDTh14wPMRF3Y2DXjbePaRN7ns3qOmiWYJoEdDzThxsBTkLmcS', '戚桂兰', '女', '15665159808', '1', 'Dr.', '1971-07-20 09:42:54', '1978-01-30 18:57:33', '158.66.198.32');
INSERT INTO `teachers` VALUES ('35', 'yFcWm204', '$2y$10$uCbKWxWpPxfYf7rc6.zyaONjk8PoRl9QOrtc2cUbr.RUjowjUYGTq', '扬鹏', '女', '18999389279', '-1', 'Prof.', '2017-03-05 14:45:39', '1974-11-25 17:20:58', '136.46.123.59');
INSERT INTO `teachers` VALUES ('36', 'enxLz4po', '$2y$10$XpWzU/GFwQid7k37q7jBkefS95mItbltm1jAKKjeeHTlHUZbVQgsW', '钱新华', '女', '14492288903', '1', 'Dr.', '1988-11-21 08:08:01', '2000-06-09 04:44:57', '239.177.157.30');
INSERT INTO `teachers` VALUES ('37', 'dWEAILXN', '$2y$10$h2mRRd85slHQLQgKcpLGqeGDGx/cRNteszyjqhi8aLMKNbjy2D8Rq', '屠瑜', '女', '15279708785', '1', 'Mr.', '1987-12-18 13:40:02', '2009-01-08 02:31:12', '253.174.1.145');
INSERT INTO `teachers` VALUES ('38', 'cG0cDm4r', '$2y$10$dDrrlY/eJxVjhB1XXzf7I.AhiaBAhJ.AGSA1syGyIjkpgOIboSloG', '马畅', '男', '14787294705', '-1', 'Prof.', '1987-10-02 11:49:56', '2003-05-20 22:49:10', '53.42.35.156');
INSERT INTO `teachers` VALUES ('39', 'GHvdznTl', '$2y$10$dhKYI5V1KVKbDtuoLibAmOzEbunhX2zE.KmKSJTI6xfRtwhFG9YJq', '柳红', '男', '13647496996', '0', 'Dr.', '1978-09-22 10:21:51', '1972-02-16 17:13:30', '129.60.180.126');
INSERT INTO `teachers` VALUES ('40', 'PyJUbz1l', '$2y$10$OaYI8AgPHgACZ11G66qIAuVpdHONCi1MrUYmc5wFD7VMpEK/VGQ8e', '吉军', '女', '17710092516', '1', 'Mr.', '2001-01-31 10:00:25', '1981-04-30 15:42:32', '177.84.40.244');
INSERT INTO `teachers` VALUES ('41', '5F9JDsid', '$2y$10$2GJDCsyLOzJSilCrUoZchOlUsfI0nFPqgElpoysCF7Adf7zMxDjVK', '植春梅', '男', '13148425295', '-1', 'Prof.', '1993-06-29 22:57:39', '1984-05-05 08:08:20', '252.94.112.105');
INSERT INTO `teachers` VALUES ('42', 'itqgW54s', '$2y$10$icrdPg/Q6w1f5IS.voW7A.NrBipKG68vih6UTCbyxn.TnteADfooC', '冉雷', '女', '13872246074', '-1', 'Mrs.', '1973-10-15 15:39:04', '1991-09-27 20:41:23', '165.50.92.89');
INSERT INTO `teachers` VALUES ('43', 'UFi9AtG0', '$2y$10$yRLDrIGRyM3gf/S8pzE5lukeLzASssbDTyEE4KGSIVtE2Phcz0Jh2', '韩建华', '女', '15224874969', '-1', 'Dr.', '2004-06-28 21:04:03', '1987-04-02 20:53:50', '8.21.73.222');
INSERT INTO `teachers` VALUES ('44', 'Bvif5Rk1', '$2y$10$h8BEwI29TvKAvuS9UPc1Ae50D.NkakuxDQJRXaAH3DZRzc0NWoN06', '扬宁', '女', '13591682420', '-1', 'Prof.', '1988-08-17 06:33:44', '1992-03-28 23:04:48', '172.194.19.122');
INSERT INTO `teachers` VALUES ('45', 'zHNou4hO', '$2y$10$IF8es9sqnpMnjP.ypVjyB.LZ/8mf8go5O0AMzDvuzPckDB9SWnLeC', '植玉', '男', '18013374619', '-1', 'Prof.', '1986-01-01 22:03:50', '2006-12-10 20:08:36', '46.179.213.149');
INSERT INTO `teachers` VALUES ('46', 'mXRqDUbG', '$2y$10$FrKRztbLSut4O4f5OEq2iuXDXNhEGTYpFJAa09c9/uuc5VvgW6Zfa', '江彬', '女', '13289883748', '1', 'Ms.', '1994-10-25 01:49:15', '1977-07-06 08:54:47', '215.175.85.131');
INSERT INTO `teachers` VALUES ('47', 'i0m3rZ1E', '$2y$10$hrklgAu3GxakKODeU5cE2eXoEDe8nARil4UPWypHgV/R8hgbCUf8W', '刁淑兰', '男', '18487721034', '1', 'Dr.', '1985-04-17 19:49:42', '1991-01-04 11:15:32', '14.105.93.200');
INSERT INTO `teachers` VALUES ('48', 'gILQYstO', '$2y$10$./GP529QP9msLL2wLeAt6eEZ/5YXU1CkOIF.UioAja1VkOsqXe9Ti', '官智明', '男', '15155502934', '1', 'Mrs.', '2007-03-15 06:30:32', '1988-02-28 03:23:35', '161.37.120.157');
INSERT INTO `teachers` VALUES ('49', '17TeJTyi', '$2y$10$z1GjnDOYWN8oG6ofdXJSiuifylgugiKt/iwkl/OU0o/V7lqWNQoVu', '邵志诚', '女', '13115117991', '1', 'Mr.', '2010-06-28 11:28:43', '2009-08-11 10:33:13', '56.26.230.171');
INSERT INTO `teachers` VALUES ('50', 'veKJPksr', '$2y$10$sYziM5ZSBvT.DhKh75J8duKE0QWFhVfBQOkc6rphRDMMLyyz/fbWa', '柏洋', '女', '18199017956', '1', 'Dr.', '2001-11-26 19:42:27', '1975-09-21 01:39:49', '14.57.72.178');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'editor' COMMENT '权限组',
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'wmhello', '871228582@qq.com', '$2y$10$1SGcMKBbvfvsCj.hPur5gOMUf/H/wPqiK7ziwT0HoJq78pyT4NRua', 'admin', 'uploads/201711251441th5a19812148058.jpg', 'FljRnRkJ91', null, null, '2018-03-16 15:27:59');
INSERT INTO `users` VALUES ('2', 'dongdong', '786270744@qq.com', '$2y$10$xFq.r0MPwAL483NXQrtTe.8ZZMPycumrU9NQ84i6ad3TMB0xfTgGO', 'user', 'uploads/201711251509th5a19879c71868.jpg', 'lbEHZO2I7w', null, null, null);
INSERT INTO `users` VALUES ('16', 'wmhello', 'wmhello@qq.com', '$2y$10$DWy1li3bGQUUKGsm6fSsF.N16LcI/qRKmt.zE4259O9NhD4RzNt2G', 'user', null, null, null, '2018-03-14 18:45:06', '2018-03-14 18:47:35');
INSERT INTO `users` VALUES ('17', 'xpyzwm', 'xpyzwm@qq.com', '$2y$10$AxYSQO4dPPK1Pw7qq9IG7O2ryFScfiJ2QuuZuQk0xQsIx93A9CYIu', 'user', null, null, null, '2018-03-14 18:45:07', '2018-03-14 18:45:07');
INSERT INTO `users` VALUES ('169', '唐伯虎', 'keJpRegx', '$2y$10$Uro3AP0D0rfpIxZsPdCvRurMEAChuIz96/NX3RhEx2pIqEKN5DYyu', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:59:30');
INSERT INTO `users` VALUES ('170', '唐伯虎', '445322195102157353', '$2y$10$Uro3AP0D0rfpIxZsPdCvRurMEAChuIz96/NX3RhEx2pIqEKN5DYyu', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:59:30');
INSERT INTO `users` VALUES ('171', '唐伯虎', '18641632355', '$2y$10$Uro3AP0D0rfpIxZsPdCvRurMEAChuIz96/NX3RhEx2pIqEKN5DYyu', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:59:30');
INSERT INTO `users` VALUES ('172', '闵博', 'rCM15Wk0', '$2y$10$NIikk4nglUzbTmsFMfZeOuj9.APS5jhED5CXnGFFdnNoVbxjEINki', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('173', '闵博', '632122196603260566', '$2y$10$NIikk4nglUzbTmsFMfZeOuj9.APS5jhED5CXnGFFdnNoVbxjEINki', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('174', '闵博', '15310145127', '$2y$10$NIikk4nglUzbTmsFMfZeOuj9.APS5jhED5CXnGFFdnNoVbxjEINki', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('175', '党凤兰', 'sDVZEZvw', '$2y$10$p1q7f0fA3pHprP5aiiLQCeFYIoPKaH1dmJSrc/9zSthPwVkPi6fOS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('176', '党凤兰', '210904198202196882', '$2y$10$p1q7f0fA3pHprP5aiiLQCeFYIoPKaH1dmJSrc/9zSthPwVkPi6fOS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('177', '党凤兰', '15945283827', '$2y$10$p1q7f0fA3pHprP5aiiLQCeFYIoPKaH1dmJSrc/9zSthPwVkPi6fOS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('178', '保爱华', 'w42quPcG', '$2y$10$l7lxoAFdFIGz1fLj8FuTKeSjwI7BPN7XmWby503VQfbvjvBhX5Z6q', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('179', '保爱华', '341002196202258675', '$2y$10$l7lxoAFdFIGz1fLj8FuTKeSjwI7BPN7XmWby503VQfbvjvBhX5Z6q', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('180', '保爱华', '13138901231', '$2y$10$l7lxoAFdFIGz1fLj8FuTKeSjwI7BPN7XmWby503VQfbvjvBhX5Z6q', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('181', '阮淑华', 'GULX1lyo', '$2y$10$E8sSNA1j3Ry0DOo0OLlmuuIYMQFDl847kAqj8FYj.ZXQSnq9C8ZkO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('182', '阮淑华', '331123195607148344', '$2y$10$E8sSNA1j3Ry0DOo0OLlmuuIYMQFDl847kAqj8FYj.ZXQSnq9C8ZkO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('183', '阮淑华', '15914327098', '$2y$10$E8sSNA1j3Ry0DOo0OLlmuuIYMQFDl847kAqj8FYj.ZXQSnq9C8ZkO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('184', '郝楠', 'cuk7o4iE', '$2y$10$z0yzRTlJBAS.PuKTuIacnOGxgoGpPk1vd2s4aqNg8ojePns/ssO3.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('185', '郝楠', '341024195009270887', '$2y$10$z0yzRTlJBAS.PuKTuIacnOGxgoGpPk1vd2s4aqNg8ojePns/ssO3.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('186', '郝楠', '13971303729', '$2y$10$z0yzRTlJBAS.PuKTuIacnOGxgoGpPk1vd2s4aqNg8ojePns/ssO3.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('187', '耿玉珍', 'icaqC6iy', '$2y$10$LyivH1nd33MXF7.3GwKcCe2tVyeiZY5MK0XDtaOTjVbeE1YMtJnqO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('188', '耿玉珍', '511528197909053961', '$2y$10$LyivH1nd33MXF7.3GwKcCe2tVyeiZY5MK0XDtaOTjVbeE1YMtJnqO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('189', '耿玉珍', '17777175838', '$2y$10$LyivH1nd33MXF7.3GwKcCe2tVyeiZY5MK0XDtaOTjVbeE1YMtJnqO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('190', '车国庆', 'h2VYqNZc', '$2y$10$8Mr2NOCt3gLI3vq0AQmPe.CgVvWCaYB/oTpmE5IlNUCvNfgTnUjby', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('191', '车国庆', '330723197502142887', '$2y$10$8Mr2NOCt3gLI3vq0AQmPe.CgVvWCaYB/oTpmE5IlNUCvNfgTnUjby', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('192', '车国庆', '15718512530', '$2y$10$8Mr2NOCt3gLI3vq0AQmPe.CgVvWCaYB/oTpmE5IlNUCvNfgTnUjby', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('193', '项丹丹', 'AO1Twv6r', '$2y$10$2sdKFkeM0d0U.yksJBW3mu5UkC1rln9cM9qKCtNxAL1Qo1u5FgFsG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('194', '项丹丹', '620503197612294083', '$2y$10$2sdKFkeM0d0U.yksJBW3mu5UkC1rln9cM9qKCtNxAL1Qo1u5FgFsG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('195', '项丹丹', '18732953837', '$2y$10$2sdKFkeM0d0U.yksJBW3mu5UkC1rln9cM9qKCtNxAL1Qo1u5FgFsG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('196', '窦利', 'wuuibYGE', '$2y$10$AUhET/iGiPbEHMJXOUG1COCyxL2H52uLnMe3feYwPsM16yFpiCzFW', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('197', '窦利', '652828196512047938', '$2y$10$AUhET/iGiPbEHMJXOUG1COCyxL2H52uLnMe3feYwPsM16yFpiCzFW', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('198', '窦利', '15193932215', '$2y$10$AUhET/iGiPbEHMJXOUG1COCyxL2H52uLnMe3feYwPsM16yFpiCzFW', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('199', '刘丹', 'y5uJsltn', '$2y$10$NsECyhRTK7YsrBxrBSdB1OoZ.66ptys2sHMJ2QDdy5q9XA.XPc1Ja', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('200', '刘丹', '340122196407049121', '$2y$10$NsECyhRTK7YsrBxrBSdB1OoZ.66ptys2sHMJ2QDdy5q9XA.XPc1Ja', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('201', '刘丹', '13251335900', '$2y$10$NsECyhRTK7YsrBxrBSdB1OoZ.66ptys2sHMJ2QDdy5q9XA.XPc1Ja', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('202', '稽刚', 'KGn0oitX', '$2y$10$d.9oIF9Mhk4KDJfTeKS1/O78cG7yHUX/QgLfskE9QpQWNVHZBh4Zq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('203', '稽刚', '331102198212208228', '$2y$10$d.9oIF9Mhk4KDJfTeKS1/O78cG7yHUX/QgLfskE9QpQWNVHZBh4Zq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('204', '稽刚', '15776663063', '$2y$10$d.9oIF9Mhk4KDJfTeKS1/O78cG7yHUX/QgLfskE9QpQWNVHZBh4Zq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('205', '赵杰', '4JrIcgYV', '$2y$10$Xdp9dqOG3fv1YWTx0G2WUulIZBoTFj0obv7lal6wwFsW3R.ybQ5la', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('206', '赵杰', '510603197310131529', '$2y$10$Xdp9dqOG3fv1YWTx0G2WUulIZBoTFj0obv7lal6wwFsW3R.ybQ5la', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('207', '赵杰', '13999298222', '$2y$10$Xdp9dqOG3fv1YWTx0G2WUulIZBoTFj0obv7lal6wwFsW3R.ybQ5la', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('208', '朱凤英', '9cZ1OoLW', '$2y$10$Z2bvVoUsDdyD32xkzxB7GuJy5/rRRcpN0Ytxpi6bqq82iUhVCNuD2', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('209', '朱凤英', '532627196809118958', '$2y$10$Z2bvVoUsDdyD32xkzxB7GuJy5/rRRcpN0Ytxpi6bqq82iUhVCNuD2', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('210', '朱凤英', '18640213822', '$2y$10$Z2bvVoUsDdyD32xkzxB7GuJy5/rRRcpN0Ytxpi6bqq82iUhVCNuD2', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('211', '傅琳', 'AL9I14uu', '$2y$10$aFo/pb4l.VQNHezNrDjacOujsYmxnxYEGD6IXPA8QKaKAt9DPF486', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('212', '傅琳', '371427198512129290', '$2y$10$aFo/pb4l.VQNHezNrDjacOujsYmxnxYEGD6IXPA8QKaKAt9DPF486', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('213', '傅琳', '15831357545', '$2y$10$aFo/pb4l.VQNHezNrDjacOujsYmxnxYEGD6IXPA8QKaKAt9DPF486', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('214', '荆秀云', 'LWLn8ZbZ', '$2y$10$Tr/e9aDZHEMxWPVsoTi3K.LcWMRC4yQeFG5WNfr3x5J8CEi6IEVre', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('215', '荆秀云', '620111196705127077', '$2y$10$Tr/e9aDZHEMxWPVsoTi3K.LcWMRC4yQeFG5WNfr3x5J8CEi6IEVre', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('216', '荆秀云', '17761207168', '$2y$10$Tr/e9aDZHEMxWPVsoTi3K.LcWMRC4yQeFG5WNfr3x5J8CEi6IEVre', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('217', '聂桂兰', '4cJ2jMOU', '$2y$10$GcWGilnwD4YPotSL85eBBOB9OnqOuWUlcQssQjX6Xlo3DFIMUSwL.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('218', '聂桂兰', '210802195406130808', '$2y$10$GcWGilnwD4YPotSL85eBBOB9OnqOuWUlcQssQjX6Xlo3DFIMUSwL.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('219', '聂桂兰', '18628719013', '$2y$10$GcWGilnwD4YPotSL85eBBOB9OnqOuWUlcQssQjX6Xlo3DFIMUSwL.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('220', '郑欢', 'oQ3NbpfZ', '$2y$10$N7deck63bcbG6YS7boFfI.iTZMUWFxJEEPVC1YLimYthN/81783Vy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('221', '郑欢', '320583196411271906', '$2y$10$N7deck63bcbG6YS7boFfI.iTZMUWFxJEEPVC1YLimYthN/81783Vy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('222', '郑欢', '18648992772', '$2y$10$N7deck63bcbG6YS7boFfI.iTZMUWFxJEEPVC1YLimYthN/81783Vy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('223', '解志新', 'RPCoI90s', '$2y$10$ykSDxA6dTmn5XtQx2wXpz.S2qkmB.NTdFEZXpYJgW2KDMQ2KRtfBy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('224', '解志新', '654024197602070717', '$2y$10$ykSDxA6dTmn5XtQx2wXpz.S2qkmB.NTdFEZXpYJgW2KDMQ2KRtfBy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('225', '解志新', '18844369543', '$2y$10$ykSDxA6dTmn5XtQx2wXpz.S2qkmB.NTdFEZXpYJgW2KDMQ2KRtfBy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('226', '石琴', 'nA8fHCa2', '$2y$10$Kh7p9dTjl22W7KK58iqu/OzF6Ti9miV/gxK.tmPkODKrYP9YP7QEG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('227', '石琴', '430511195201245311', '$2y$10$Kh7p9dTjl22W7KK58iqu/OzF6Ti9miV/gxK.tmPkODKrYP9YP7QEG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('228', '石琴', '17884588666', '$2y$10$Kh7p9dTjl22W7KK58iqu/OzF6Ti9miV/gxK.tmPkODKrYP9YP7QEG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('229', '卜红霞', 'Ix3UYFG2', '$2y$10$SWzXOi.cx2M.3NsnudnyZ.8YG/QJxyGV30pjR5yAtyFCIpaFYPztm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('230', '卜红霞', '341324196908167198', '$2y$10$SWzXOi.cx2M.3NsnudnyZ.8YG/QJxyGV30pjR5yAtyFCIpaFYPztm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('231', '卜红霞', '13235494220', '$2y$10$SWzXOi.cx2M.3NsnudnyZ.8YG/QJxyGV30pjR5yAtyFCIpaFYPztm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('232', '谭玉英', 'pzDoGVNO', '$2y$10$aoGT4zsL68dbOnm2vMnmr.XA7UwnGHA7pwD06zJQA/.taDi/De4zm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('233', '谭玉英', '130981198502288634', '$2y$10$aoGT4zsL68dbOnm2vMnmr.XA7UwnGHA7pwD06zJQA/.taDi/De4zm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('234', '谭玉英', '13275486713', '$2y$10$aoGT4zsL68dbOnm2vMnmr.XA7UwnGHA7pwD06zJQA/.taDi/De4zm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('235', '边桂珍', 'Cazb5Zo8', '$2y$10$oPGHFieA4XfPg83UoQpBweh.z.fKUtrC5e8dqMO9z4Q3KIxvkXWsy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('236', '边桂珍', '654321196112195675', '$2y$10$oPGHFieA4XfPg83UoQpBweh.z.fKUtrC5e8dqMO9z4Q3KIxvkXWsy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('237', '边桂珍', '14737292944', '$2y$10$oPGHFieA4XfPg83UoQpBweh.z.fKUtrC5e8dqMO9z4Q3KIxvkXWsy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('238', '石振国', 'Kzcr3jon', '$2y$10$gvi0kw5/UMzNojLEnpRN8e7855glmm21zohKroAjiNktZGxKINCCy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('239', '石振国', '621228195512213015', '$2y$10$gvi0kw5/UMzNojLEnpRN8e7855glmm21zohKroAjiNktZGxKINCCy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('240', '石振国', '14758465327', '$2y$10$gvi0kw5/UMzNojLEnpRN8e7855glmm21zohKroAjiNktZGxKINCCy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('241', '胥丹', '12ChgyZm', '$2y$10$jsIljR9O/mznI76tbgDGMeQzDk3FdxugpLh5STXVk6rG5tAS0R3Ny', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('242', '胥丹', '371329198010121835', '$2y$10$jsIljR9O/mznI76tbgDGMeQzDk3FdxugpLh5STXVk6rG5tAS0R3Ny', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('243', '胥丹', '13960519876', '$2y$10$jsIljR9O/mznI76tbgDGMeQzDk3FdxugpLh5STXVk6rG5tAS0R3Ny', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('244', '费华', 'VixnoTcK', '$2y$10$5HEStL7f1YzF6khouFrOOerqF1SGmthC5jetH4lwsTdL8CSfLDvu.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('245', '费华', '360721197203187009', '$2y$10$5HEStL7f1YzF6khouFrOOerqF1SGmthC5jetH4lwsTdL8CSfLDvu.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('246', '费华', '18064111239', '$2y$10$5HEStL7f1YzF6khouFrOOerqF1SGmthC5jetH4lwsTdL8CSfLDvu.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('247', '薄文娟', 'hisjO3f0', '$2y$10$wUaqW0x2LFUG6L9wpIKlKuEexy.gWfo7ABIwCUnkJwRKzVyZjUtCm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('248', '薄文娟', '440781196502163113', '$2y$10$wUaqW0x2LFUG6L9wpIKlKuEexy.gWfo7ABIwCUnkJwRKzVyZjUtCm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('249', '薄文娟', '15116571971', '$2y$10$wUaqW0x2LFUG6L9wpIKlKuEexy.gWfo7ABIwCUnkJwRKzVyZjUtCm', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('250', '解正业', 'Oo83Vlon', '$2y$10$sqskZOwAQ0PCpLUjNFsVOuyPpMDbv9p/ybPr82ntCVCA4HZCwA9wG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('251', '解正业', '513228199003022020', '$2y$10$sqskZOwAQ0PCpLUjNFsVOuyPpMDbv9p/ybPr82ntCVCA4HZCwA9wG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('252', '解正业', '13931417410', '$2y$10$sqskZOwAQ0PCpLUjNFsVOuyPpMDbv9p/ybPr82ntCVCA4HZCwA9wG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('253', '康丽丽', 'bMkNnU7P', '$2y$10$GuQ5dmm4xtbdLj4cgjUIYOCvGJDDxehe36wSZatsPqlNa3TCn.Q.a', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('254', '康丽丽', '540101195510034340', '$2y$10$GuQ5dmm4xtbdLj4cgjUIYOCvGJDDxehe36wSZatsPqlNa3TCn.Q.a', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('255', '康丽丽', '13791355111', '$2y$10$GuQ5dmm4xtbdLj4cgjUIYOCvGJDDxehe36wSZatsPqlNa3TCn.Q.a', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('256', '符建明', 'mmmFf6SU', '$2y$10$Cck2B0nTNYTxF7raHqHPD.ufW8iqipk6OC5HQzrbHD.QZGTZxwqDq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('257', '符建明', '610822197602037669', '$2y$10$Cck2B0nTNYTxF7raHqHPD.ufW8iqipk6OC5HQzrbHD.QZGTZxwqDq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('258', '符建明', '13977833253', '$2y$10$Cck2B0nTNYTxF7raHqHPD.ufW8iqipk6OC5HQzrbHD.QZGTZxwqDq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('259', '白正诚', '8E36mtrz', '$2y$10$wPNgcSLqG5p//1xgBtl5r.VH3ic909ezrmr0qEq3Q/0PtDXONp/me', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('260', '白正诚', '320722195107144121', '$2y$10$wPNgcSLqG5p//1xgBtl5r.VH3ic909ezrmr0qEq3Q/0PtDXONp/me', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('261', '白正诚', '18254369972', '$2y$10$wPNgcSLqG5p//1xgBtl5r.VH3ic909ezrmr0qEq3Q/0PtDXONp/me', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('262', '冉鹏', 'Y0zwrHE5', '$2y$10$E61vAM/Z/IEbovMCkPwA/uJjMVr8ICOjMTe92LcXJLAC7felmJvYa', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('263', '冉鹏', '511302196604263408', '$2y$10$E61vAM/Z/IEbovMCkPwA/uJjMVr8ICOjMTe92LcXJLAC7felmJvYa', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('264', '冉鹏', '13530251137', '$2y$10$E61vAM/Z/IEbovMCkPwA/uJjMVr8ICOjMTe92LcXJLAC7felmJvYa', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('265', '凌瑜', 'TJGsxwEq', '$2y$10$iI8Hd62yHklU10Jl.oeT9eJPJiBSWcXbTKRcTTJAjf73dpOAUieIC', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('266', '凌瑜', '632324199009103194', '$2y$10$iI8Hd62yHklU10Jl.oeT9eJPJiBSWcXbTKRcTTJAjf73dpOAUieIC', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('267', '凌瑜', '13339031411', '$2y$10$iI8Hd62yHklU10Jl.oeT9eJPJiBSWcXbTKRcTTJAjf73dpOAUieIC', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('268', '盛帅', 'COUy23Ri', '$2y$10$RS/KA2LfWK8vvQD621uPMuDYbyHiZnk/FnnXRcX0EQ5M5WWpeDrMO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('269', '盛帅', '52032119920423410x', '$2y$10$RS/KA2LfWK8vvQD621uPMuDYbyHiZnk/FnnXRcX0EQ5M5WWpeDrMO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('270', '盛帅', '18423431778', '$2y$10$RS/KA2LfWK8vvQD621uPMuDYbyHiZnk/FnnXRcX0EQ5M5WWpeDrMO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('271', '荆宁', 'N1dgIirt', '$2y$10$8sqTqtfiCV6J6HLDNNOCLOcWutagA31.G6M4zUF8JMhGEqOCu6iNW', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('272', '荆宁', '330203197107195580', '$2y$10$8sqTqtfiCV6J6HLDNNOCLOcWutagA31.G6M4zUF8JMhGEqOCu6iNW', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('273', '荆宁', '15872933308', '$2y$10$8sqTqtfiCV6J6HLDNNOCLOcWutagA31.G6M4zUF8JMhGEqOCu6iNW', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('274', '鲍伦', 'Eo1YULbT', '$2y$10$ikq8dmSBvkgVFMJAX9f9mOwdDc1VnMjejxepX3/ijSEc.gm4v654y', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('275', '鲍伦', '130481196104162626', '$2y$10$ikq8dmSBvkgVFMJAX9f9mOwdDc1VnMjejxepX3/ijSEc.gm4v654y', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('276', '鲍伦', '13738017492', '$2y$10$ikq8dmSBvkgVFMJAX9f9mOwdDc1VnMjejxepX3/ijSEc.gm4v654y', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('277', '谌兵', 'VR7avioU', '$2y$10$T8RsiODtpCfFXkz3U6xia.RUAU83mTWAf/TcMYU3jyuqLVSftbjs.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('278', '谌兵', '210682197806075326', '$2y$10$T8RsiODtpCfFXkz3U6xia.RUAU83mTWAf/TcMYU3jyuqLVSftbjs.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('279', '谌兵', '14715931521', '$2y$10$T8RsiODtpCfFXkz3U6xia.RUAU83mTWAf/TcMYU3jyuqLVSftbjs.', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('280', '洪荣', 'CWcYw1OS', '$2y$10$9.TAJM0W/xX.OjUR.NM.u.mTr2C7kXDPFZLvKCGH3YBE0fzHEsLnK', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('281', '洪荣', '360401196906135460', '$2y$10$9.TAJM0W/xX.OjUR.NM.u.mTr2C7kXDPFZLvKCGH3YBE0fzHEsLnK', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('282', '洪荣', '15546105456', '$2y$10$9.TAJM0W/xX.OjUR.NM.u.mTr2C7kXDPFZLvKCGH3YBE0fzHEsLnK', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('283', '商超', 'sTpC76tA', '$2y$10$eU6wTIMwwcQYPn3ApsYbCOuNeOmMVbJLetKp5B6E679vg7.VayXme', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('284', '商超', '140603198502258204', '$2y$10$eU6wTIMwwcQYPn3ApsYbCOuNeOmMVbJLetKp5B6E679vg7.VayXme', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('285', '商超', '18528368850', '$2y$10$eU6wTIMwwcQYPn3ApsYbCOuNeOmMVbJLetKp5B6E679vg7.VayXme', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('286', '潘楠', 'Ne6UTuVl', '$2y$10$OUIsxaUg1/xgUZdhaiK1YOvrereeSRgcYcJI75MjMWhTvWGvoZDX2', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('287', '潘楠', '520325198807264739', '$2y$10$OUIsxaUg1/xgUZdhaiK1YOvrereeSRgcYcJI75MjMWhTvWGvoZDX2', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('288', '潘楠', '17841084568', '$2y$10$OUIsxaUg1/xgUZdhaiK1YOvrereeSRgcYcJI75MjMWhTvWGvoZDX2', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('289', '练军', 'K5koyUK5', '$2y$10$7tlUDefyMMK7IH3S0vRq8uWpnYFr9aqhz4CIeqqs9ZayI3h93A.hS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('290', '练军', '370102196610237726', '$2y$10$7tlUDefyMMK7IH3S0vRq8uWpnYFr9aqhz4CIeqqs9ZayI3h93A.hS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('291', '练军', '13587497422', '$2y$10$7tlUDefyMMK7IH3S0vRq8uWpnYFr9aqhz4CIeqqs9ZayI3h93A.hS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('292', '银涛', '5jbW4Mbk', '$2y$10$Dmhr7HFGPJ5T3Y3a8t.cO.tu7nqiovfBRCGRDoceNXuNM8mDX5heS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('293', '银涛', '331022198002054611', '$2y$10$Dmhr7HFGPJ5T3Y3a8t.cO.tu7nqiovfBRCGRDoceNXuNM8mDX5heS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('294', '银涛', '13298929399', '$2y$10$Dmhr7HFGPJ5T3Y3a8t.cO.tu7nqiovfBRCGRDoceNXuNM8mDX5heS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('295', '叶瑜', 'aore7l4v', '$2y$10$qwn4ARaUr0Aw/SLXUsMgSeXOotaAP89uCum4iPFlKcBlkmoL5iEEC', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('296', '叶瑜', '530425195811150674', '$2y$10$qwn4ARaUr0Aw/SLXUsMgSeXOotaAP89uCum4iPFlKcBlkmoL5iEEC', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('297', '叶瑜', '18640605986', '$2y$10$qwn4ARaUr0Aw/SLXUsMgSeXOotaAP89uCum4iPFlKcBlkmoL5iEEC', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('298', '洪志强', 'DmlU0U23', '$2y$10$BESyNAkF81XXPBORF/1Abu1jev1/Kj23nTQSvLNMYc8k2IFgnMn9y', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('299', '洪志强', '654201195901295331', '$2y$10$BESyNAkF81XXPBORF/1Abu1jev1/Kj23nTQSvLNMYc8k2IFgnMn9y', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('300', '洪志强', '13290431875', '$2y$10$BESyNAkF81XXPBORF/1Abu1jev1/Kj23nTQSvLNMYc8k2IFgnMn9y', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('301', '蔺秀兰', 'eydDjTb1', '$2y$10$F9Ehh8uvhaXXrJlCj.virOHCJriY2PaKOnndKBcbVLkCL7Dxh0BOq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('302', '蔺秀兰', '41030119580430204x', '$2y$10$F9Ehh8uvhaXXrJlCj.virOHCJriY2PaKOnndKBcbVLkCL7Dxh0BOq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('303', '蔺秀兰', '17644842353', '$2y$10$F9Ehh8uvhaXXrJlCj.virOHCJriY2PaKOnndKBcbVLkCL7Dxh0BOq', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('304', '谈正平', 'NEqLdTwY', '$2y$10$oVJF4zFAgSI/f20DMuhMyO/Mbs8kIv2AS7LA5wERn4wqMFqC0jeBy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('305', '谈正平', '469006196910137006', '$2y$10$oVJF4zFAgSI/f20DMuhMyO/Mbs8kIv2AS7LA5wERn4wqMFqC0jeBy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('306', '谈正平', '18870817772', '$2y$10$oVJF4zFAgSI/f20DMuhMyO/Mbs8kIv2AS7LA5wERn4wqMFqC0jeBy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('307', '翁林', 'CslwdXnY', '$2y$10$SZ56hFAqAyWuJ9ThbTFUYOnWvjrrbSo71JeprUxS8gQ75yiU.JVVO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('308', '翁林', '440308198402259994', '$2y$10$SZ56hFAqAyWuJ9ThbTFUYOnWvjrrbSo71JeprUxS8gQ75yiU.JVVO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('309', '翁林', '13943866180', '$2y$10$SZ56hFAqAyWuJ9ThbTFUYOnWvjrrbSo71JeprUxS8gQ75yiU.JVVO', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('310', '扬秀荣', 'c30SP6od', '$2y$10$MKHnEJzQSfUAl5Bvj.gFMuH9GRY6C9QTkPBx.35m4sQkv8wTt6FRy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('311', '扬秀荣', '450701197805223886', '$2y$10$MKHnEJzQSfUAl5Bvj.gFMuH9GRY6C9QTkPBx.35m4sQkv8wTt6FRy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('312', '扬秀荣', '15550727249', '$2y$10$MKHnEJzQSfUAl5Bvj.gFMuH9GRY6C9QTkPBx.35m4sQkv8wTt6FRy', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('313', '毛娟', 'gInPCmhD', '$2y$10$2ZI4hPYLlB6yjrTBV/EuvO7ckoEWaDQKShlr9weoEEzgKkSAQJPpS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('314', '毛娟', '469023196001072723', '$2y$10$2ZI4hPYLlB6yjrTBV/EuvO7ckoEWaDQKShlr9weoEEzgKkSAQJPpS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('315', '毛娟', '18366885923', '$2y$10$2ZI4hPYLlB6yjrTBV/EuvO7ckoEWaDQKShlr9weoEEzgKkSAQJPpS', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('316', '余翔', 'DERoe8fx', '$2y$10$L4BKAgPfogaZzVvfJplLUO9fg4mdfzLTFXD6drHFIck8VsKOIzmHG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('317', '余翔', '211204198608063484', '$2y$10$L4BKAgPfogaZzVvfJplLUO9fg4mdfzLTFXD6drHFIck8VsKOIzmHG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('318', '余翔', '13327164720', '$2y$10$L4BKAgPfogaZzVvfJplLUO9fg4mdfzLTFXD6drHFIck8VsKOIzmHG', 'student', null, null, null, '2018-03-16 21:57:01', '2018-03-16 21:57:01');
INSERT INTO `users` VALUES ('319', '卞燕', 'Q1fpsM9d', '$2y$10$fXb4XQOkMDmrNH5I4SCSd.YP3Fy4FV0Va3qnyDoVYH.5SLO5zAgRq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:09:06');
INSERT INTO `users` VALUES ('320', '卞燕', '13332376223', '$2y$10$fXb4XQOkMDmrNH5I4SCSd.YP3Fy4FV0Va3qnyDoVYH.5SLO5zAgRq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:09:06');
INSERT INTO `users` VALUES ('321', '井淑兰', 'W5rIps3V', '$2y$10$8C.PTiVOXnaGezdxXFm99.aqDwaHbxu.U2hkkqpZqDZFv2WmnkGUK', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('322', '井淑兰', '18310012620', '$2y$10$8C.PTiVOXnaGezdxXFm99.aqDwaHbxu.U2hkkqpZqDZFv2WmnkGUK', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('323', '燕秀梅', 'Te2esSBJ', '$2y$10$Rw6l5irO0EGo8CfCfnzrEOT/eQKCEqeEKRmsd5hKH8TU5DxnWtqz2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('324', '燕秀梅', '15850723591', '$2y$10$Rw6l5irO0EGo8CfCfnzrEOT/eQKCEqeEKRmsd5hKH8TU5DxnWtqz2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('325', '邱霞', 'TSHEk8M2', '$2y$10$yLJkSNubLfNsFPxFHsbsxea7X50nB/9.1tOTcufhJZ3./p43EwmvS', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('326', '邱霞', '15211388564', '$2y$10$yLJkSNubLfNsFPxFHsbsxea7X50nB/9.1tOTcufhJZ3./p43EwmvS', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('327', '都桂芳', 'MhWXaLR4', '$2y$10$.6R8cyv8basIuEL2zpGgb.1ZXG3hDDnM6GzP31sZNUP8l7rDgrwYC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('328', '都桂芳', '13779232928', '$2y$10$.6R8cyv8basIuEL2zpGgb.1ZXG3hDDnM6GzP31sZNUP8l7rDgrwYC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('329', '彭志强', 'cPTQpOTV', '$2y$10$jHeHjzZLv6jT2x.qPmxSEefqIemNfE0Z3ldAn9xOM.gXSODNx1PH2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('330', '彭志强', '17634152181', '$2y$10$jHeHjzZLv6jT2x.qPmxSEefqIemNfE0Z3ldAn9xOM.gXSODNx1PH2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('331', '莫龙', 'yMe17SAb', '$2y$10$E3mqmuMzQ5XPC2kbZ1q6Eu85egZTjX9rb/K193vZV2CenrVOU1EU.', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('332', '莫龙', '13210395891', '$2y$10$E3mqmuMzQ5XPC2kbZ1q6Eu85egZTjX9rb/K193vZV2CenrVOU1EU.', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('333', '钟宁', 'nGrwLxmL', '$2y$10$j3pHj20XAyVypJx20xn7NODgSteYzAI9B2/GcC8V5FQA3LyIlkKhC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('334', '钟宁', '13458768365', '$2y$10$j3pHj20XAyVypJx20xn7NODgSteYzAI9B2/GcC8V5FQA3LyIlkKhC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('335', '童林', 'i7tf5vR6', '$2y$10$MgAgOnCsVrCYD6/Gyh5kK.ENL46UVwUdPr23PNZAYHlnnb2lmXf7C', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('336', '童林', '18712989871', '$2y$10$MgAgOnCsVrCYD6/Gyh5kK.ENL46UVwUdPr23PNZAYHlnnb2lmXf7C', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('337', '史文君', 'NVAJGD8i', '$2y$10$rMD2YKhzuOs2EJwC4H.AruSYjCbktL1S8cPl/nGtSfOovO5H93aY.', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('338', '史文君', '13256668365', '$2y$10$rMD2YKhzuOs2EJwC4H.AruSYjCbktL1S8cPl/nGtSfOovO5H93aY.', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('339', '岑志文', 'yP0bvBPB', '$2y$10$yh/Ntali//MxRX0rojwKp.7waai3ZmIW/m2/v.N0PL17S8Cl2e3MO', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('340', '岑志文', '13554846546', '$2y$10$yh/Ntali//MxRX0rojwKp.7waai3ZmIW/m2/v.N0PL17S8Cl2e3MO', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('341', '王丽', 'FKKdYcb2', '$2y$10$W5kSTgoX3/97uoBO.AH01.IlXyYYcfL7YzGLwcs8HRkPsEHDZrxYe', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('342', '王丽', '17637597351', '$2y$10$W5kSTgoX3/97uoBO.AH01.IlXyYYcfL7YzGLwcs8HRkPsEHDZrxYe', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('343', '李玉兰', '3NO4R6Ex', '$2y$10$4UE8TZIo.DUKac2nAaL/oO2ZLvkJaZ.DB3kC4XI2uXIR4SDnWHvky', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('344', '李玉兰', '17753758934', '$2y$10$4UE8TZIo.DUKac2nAaL/oO2ZLvkJaZ.DB3kC4XI2uXIR4SDnWHvky', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('345', '房桂英', 'n3RJZeBr', '$2y$10$Zj09rYcbh2AdS2Ckj5Ar3eDYqrnRSgKzTFP8eQdvI7m0anGKK2QGO', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('346', '房桂英', '18859937079', '$2y$10$Zj09rYcbh2AdS2Ckj5Ar3eDYqrnRSgKzTFP8eQdvI7m0anGKK2QGO', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('347', '袁斌', 'ejydEYFB', '$2y$10$gKxzKutXQug.UX3xooL8HO6xxW3ND.GgdHUXiki/.X7PGSp7ogHKG', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('348', '袁斌', '18655481756', '$2y$10$gKxzKutXQug.UX3xooL8HO6xxW3ND.GgdHUXiki/.X7PGSp7ogHKG', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('349', '郎帆', 'a79Cb6ns', '$2y$10$FU/JLcpeAh0nr7AO7M9A3uKbzrmzRD7VVLI6ro96kj9qWCsDBQHOe', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('350', '郎帆', '14431738831', '$2y$10$FU/JLcpeAh0nr7AO7M9A3uKbzrmzRD7VVLI6ro96kj9qWCsDBQHOe', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('351', '岑杨', 'SQEr7A1X', '$2y$10$Qo8kza5uGdDGxDlNwLK8guvXU9K9pcoujjH.dC0KNsKH3ikVD10hO', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('352', '岑杨', '18388394022', '$2y$10$Qo8kza5uGdDGxDlNwLK8guvXU9K9pcoujjH.dC0KNsKH3ikVD10hO', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('353', '常秀云', '43Y6A5Yx', '$2y$10$fqt6jJ4ei7JWvJeTwigqIudG6knedE1TMM/hpdOYj.FfdpyTIdOnW', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('354', '常秀云', '18791061609', '$2y$10$fqt6jJ4ei7JWvJeTwigqIudG6knedE1TMM/hpdOYj.FfdpyTIdOnW', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('355', '宋峰', 'fyqbQ44E', '$2y$10$CUUtND09Y8Hv1bZ2vFf2fOtIqxSwC4lBT2yjnyALkYl8Hn8MCMAf.', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('356', '宋峰', '17867303906', '$2y$10$CUUtND09Y8Hv1bZ2vFf2fOtIqxSwC4lBT2yjnyALkYl8Hn8MCMAf.', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('357', '商建军', 'A5MfObZs', '$2y$10$ARGoKwX5Iy1n6xxUPLA5qup5M7RITNzXYOuJDzKwUq2Ap6d.azQ/K', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('358', '商建军', '18213064538', '$2y$10$ARGoKwX5Iy1n6xxUPLA5qup5M7RITNzXYOuJDzKwUq2Ap6d.azQ/K', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('359', '凌捷', 'YB8ohAuZ', '$2y$10$NlF0uObSXcCWwdDv7qjdF.RarV3o4GcHV55sh1qQ5dAPZCxS43STa', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('360', '凌捷', '18858341808', '$2y$10$NlF0uObSXcCWwdDv7qjdF.RarV3o4GcHV55sh1qQ5dAPZCxS43STa', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('361', '奚丽丽', 'V0vMV4uE', '$2y$10$WYYu3fqm4KTehoOr9uT8KOGQbpR0BjP9RD89b4.HfTMCmmEeZzVh2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('362', '奚丽丽', '18239866300', '$2y$10$WYYu3fqm4KTehoOr9uT8KOGQbpR0BjP9RD89b4.HfTMCmmEeZzVh2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('363', '佟娟', 'B0xuOwgW', '$2y$10$f7E/Tnov2xD/x3LlziVKOe6rN5U2iDUkuKNp4tbAl5hMN2mKnGr6i', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('364', '佟娟', '13851014724', '$2y$10$f7E/Tnov2xD/x3LlziVKOe6rN5U2iDUkuKNp4tbAl5hMN2mKnGr6i', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('365', '郑佳', 'MitN9BL5', '$2y$10$4bEmp7/4DpEiLtwoBTqKdeX7mJPMaRGsagC21BRjQmQPZ1ggBw49q', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('366', '郑佳', '13929593034', '$2y$10$4bEmp7/4DpEiLtwoBTqKdeX7mJPMaRGsagC21BRjQmQPZ1ggBw49q', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('367', '伍秀梅', 'bpY1jyG9', '$2y$10$MFL2qClm/qmu5jvaHb4i8.pEPOK6NRhpSZAk8WfTHWVm2ydnNzM32', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('368', '伍秀梅', '18215117431', '$2y$10$MFL2qClm/qmu5jvaHb4i8.pEPOK6NRhpSZAk8WfTHWVm2ydnNzM32', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('369', '左晶', 'AxaPS3tW', '$2y$10$nAk3G8DrK.WPlo.at7roCebL4zg6N2Mqp56aKQfYc5FmMOC2muDtq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('370', '左晶', '13261027222', '$2y$10$nAk3G8DrK.WPlo.at7roCebL4zg6N2Mqp56aKQfYc5FmMOC2muDtq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('371', '宇哲彦', 'r3c9j9Nh', '$2y$10$1MV2rhLr7fiTpNY6eGuwwuX/a/U6.CFkm.gYzG07MzbbiE6Roj90W', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('372', '宇哲彦', '18454638386', '$2y$10$1MV2rhLr7fiTpNY6eGuwwuX/a/U6.CFkm.gYzG07MzbbiE6Roj90W', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('373', '祝金凤', 'CJWSfQDL', '$2y$10$SxNadLiHk7ks5bZdFXiDpuyxy.Vh1saYkVCTEpV1NCEy9HFrtxWy2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('374', '祝金凤', '13777613435', '$2y$10$SxNadLiHk7ks5bZdFXiDpuyxy.Vh1saYkVCTEpV1NCEy9HFrtxWy2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('375', '陶子安', 'd7zpY9fh', '$2y$10$lJ5c2qKzKODzO3LMtO0rf.wFVGU4n74HR2UpEPCgYiCxUMPZoahx2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('376', '陶子安', '15928811921', '$2y$10$lJ5c2qKzKODzO3LMtO0rf.wFVGU4n74HR2UpEPCgYiCxUMPZoahx2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('377', '冯学明', 'FubwaaPi', '$2y$10$b3MTr6WwR2vgo7jfyYaggO8ZqoL6imEVy292Vtx2jIfmmipIWR29y', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('378', '冯学明', '13635149777', '$2y$10$b3MTr6WwR2vgo7jfyYaggO8ZqoL6imEVy292Vtx2jIfmmipIWR29y', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('379', '席建军', 'CzwC3hR8', '$2y$10$KM3Q1mzjCg6K6VNJsZd02.XFhbL43KJhFOAJ94fQiuZR1empQ9Vam', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('380', '席建军', '15649093760', '$2y$10$KM3Q1mzjCg6K6VNJsZd02.XFhbL43KJhFOAJ94fQiuZR1empQ9Vam', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('381', '曹钟', 'N4TE1IZ7', '$2y$10$o87UoPN9EVky41e88K7rN.GR0vEL3syqGAm3I4XiWgV1/4DYLVcii', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('382', '曹钟', '13423236198', '$2y$10$o87UoPN9EVky41e88K7rN.GR0vEL3syqGAm3I4XiWgV1/4DYLVcii', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('383', '叶志明', '5AYS8Qby', '$2y$10$NAsz597Cl9r7uzu4Q/sjn.87lqxHzE7zuEsv1q65zVRRl2vjVhGKC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('384', '叶志明', '18418048227', '$2y$10$NAsz597Cl9r7uzu4Q/sjn.87lqxHzE7zuEsv1q65zVRRl2vjVhGKC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('385', '戚桂兰', 'AIE2wPQu', '$2y$10$eu4IDTh14wPMRF3Y2DXjbePaRN7ns3qOmiWYJoEdDzThxsBTkLmcS', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('386', '戚桂兰', '15665159808', '$2y$10$eu4IDTh14wPMRF3Y2DXjbePaRN7ns3qOmiWYJoEdDzThxsBTkLmcS', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('387', '扬鹏', 'yFcWm204', '$2y$10$uCbKWxWpPxfYf7rc6.zyaONjk8PoRl9QOrtc2cUbr.RUjowjUYGTq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('388', '扬鹏', '18999389279', '$2y$10$uCbKWxWpPxfYf7rc6.zyaONjk8PoRl9QOrtc2cUbr.RUjowjUYGTq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('389', '钱新华', 'enxLz4po', '$2y$10$XpWzU/GFwQid7k37q7jBkefS95mItbltm1jAKKjeeHTlHUZbVQgsW', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('390', '钱新华', '14492288903', '$2y$10$XpWzU/GFwQid7k37q7jBkefS95mItbltm1jAKKjeeHTlHUZbVQgsW', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('391', '屠瑜', 'dWEAILXN', '$2y$10$h2mRRd85slHQLQgKcpLGqeGDGx/cRNteszyjqhi8aLMKNbjy2D8Rq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('392', '屠瑜', '15279708785', '$2y$10$h2mRRd85slHQLQgKcpLGqeGDGx/cRNteszyjqhi8aLMKNbjy2D8Rq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('393', '马畅', 'cG0cDm4r', '$2y$10$dDrrlY/eJxVjhB1XXzf7I.AhiaBAhJ.AGSA1syGyIjkpgOIboSloG', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('394', '马畅', '14787294705', '$2y$10$dDrrlY/eJxVjhB1XXzf7I.AhiaBAhJ.AGSA1syGyIjkpgOIboSloG', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('395', '柳红', 'GHvdznTl', '$2y$10$dhKYI5V1KVKbDtuoLibAmOzEbunhX2zE.KmKSJTI6xfRtwhFG9YJq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('396', '柳红', '13647496996', '$2y$10$dhKYI5V1KVKbDtuoLibAmOzEbunhX2zE.KmKSJTI6xfRtwhFG9YJq', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('397', '吉军', 'PyJUbz1l', '$2y$10$OaYI8AgPHgACZ11G66qIAuVpdHONCi1MrUYmc5wFD7VMpEK/VGQ8e', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('398', '吉军', '17710092516', '$2y$10$OaYI8AgPHgACZ11G66qIAuVpdHONCi1MrUYmc5wFD7VMpEK/VGQ8e', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('399', '植春梅', '5F9JDsid', '$2y$10$2GJDCsyLOzJSilCrUoZchOlUsfI0nFPqgElpoysCF7Adf7zMxDjVK', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('400', '植春梅', '13148425295', '$2y$10$2GJDCsyLOzJSilCrUoZchOlUsfI0nFPqgElpoysCF7Adf7zMxDjVK', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('401', '冉雷', 'itqgW54s', '$2y$10$icrdPg/Q6w1f5IS.voW7A.NrBipKG68vih6UTCbyxn.TnteADfooC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('402', '冉雷', '13872246074', '$2y$10$icrdPg/Q6w1f5IS.voW7A.NrBipKG68vih6UTCbyxn.TnteADfooC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('403', '韩建华', 'UFi9AtG0', '$2y$10$yRLDrIGRyM3gf/S8pzE5lukeLzASssbDTyEE4KGSIVtE2Phcz0Jh2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('404', '韩建华', '15224874969', '$2y$10$yRLDrIGRyM3gf/S8pzE5lukeLzASssbDTyEE4KGSIVtE2Phcz0Jh2', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('405', '扬宁', 'Bvif5Rk1', '$2y$10$h8BEwI29TvKAvuS9UPc1Ae50D.NkakuxDQJRXaAH3DZRzc0NWoN06', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('406', '扬宁', '13591682420', '$2y$10$h8BEwI29TvKAvuS9UPc1Ae50D.NkakuxDQJRXaAH3DZRzc0NWoN06', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('407', '植玉', 'zHNou4hO', '$2y$10$IF8es9sqnpMnjP.ypVjyB.LZ/8mf8go5O0AMzDvuzPckDB9SWnLeC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('408', '植玉', '18013374619', '$2y$10$IF8es9sqnpMnjP.ypVjyB.LZ/8mf8go5O0AMzDvuzPckDB9SWnLeC', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('409', '江彬', 'mXRqDUbG', '$2y$10$FrKRztbLSut4O4f5OEq2iuXDXNhEGTYpFJAa09c9/uuc5VvgW6Zfa', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('410', '江彬', '13289883748', '$2y$10$FrKRztbLSut4O4f5OEq2iuXDXNhEGTYpFJAa09c9/uuc5VvgW6Zfa', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('411', '刁淑兰', 'i0m3rZ1E', '$2y$10$hrklgAu3GxakKODeU5cE2eXoEDe8nARil4UPWypHgV/R8hgbCUf8W', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('412', '刁淑兰', '18487721034', '$2y$10$hrklgAu3GxakKODeU5cE2eXoEDe8nARil4UPWypHgV/R8hgbCUf8W', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('413', '官智明', 'gILQYstO', '$2y$10$./GP529QP9msLL2wLeAt6eEZ/5YXU1CkOIF.UioAja1VkOsqXe9Ti', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('414', '官智明', '15155502934', '$2y$10$./GP529QP9msLL2wLeAt6eEZ/5YXU1CkOIF.UioAja1VkOsqXe9Ti', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('415', '邵志诚', '17TeJTyi', '$2y$10$z1GjnDOYWN8oG6ofdXJSiuifylgugiKt/iwkl/OU0o/V7lqWNQoVu', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('416', '邵志诚', '13115117991', '$2y$10$z1GjnDOYWN8oG6ofdXJSiuifylgugiKt/iwkl/OU0o/V7lqWNQoVu', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('417', '柏洋', 'veKJPksr', '$2y$10$sYziM5ZSBvT.DhKh75J8duKE0QWFhVfBQOkc6rphRDMMLyyz/fbWa', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
INSERT INTO `users` VALUES ('418', '柏洋', '18199017956', '$2y$10$sYziM5ZSBvT.DhKh75J8duKE0QWFhVfBQOkc6rphRDMMLyyz/fbWa', 'teacher', null, null, null, '2018-03-16 22:04:08', '2018-03-16 22:04:08');
DROP TRIGGER IF EXISTS `students_after_insert`;
DELIMITER ;;
CREATE TRIGGER `students_after_insert` AFTER INSERT ON `students` FOR EACH ROW BEGIN
    INSERT INTO users (name, email, password, role, created_at, updated_at) VALUES(new.name_student, new.account_student, new.pwd_student, 'student', now(), now());
    INSERT INTO users (name, email, password, role, created_at, updated_at) VALUES(new.name_student, new.idnumber_student, new.pwd_student, 'student', now(), now());
    INSERT INTO users (name, email, password, role, created_at, updated_at) VALUES(new.name_student, new.phone_student, new.pwd_student, 'student', now(), now());
  END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `students_after_update`;
DELIMITER ;;
CREATE TRIGGER `students_after_update` AFTER UPDATE ON `students` FOR EACH ROW BEGIN
    update users set name = new.name_student, updated_at = now() where email = new.account_student;
    update users set name = new.name_student, email = new.idnumber_student, updated_at = now() where email = old.idnumber_student;
    update users set name = new.name_student, email = new.phone_student, updated_at = now() where email = old.phone_student;
  END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `students_after_delete`;
DELIMITER ;;
CREATE TRIGGER `students_after_delete` AFTER DELETE ON `students` FOR EACH ROW BEGIN
    delete from users where email = old.account_student;
    delete from users where email = old.idnumber_student;
    delete from users where email = old.phone_student;
  END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `teachers_after_insert`;
DELIMITER ;;
CREATE TRIGGER `teachers_after_insert` AFTER INSERT ON `teachers` FOR EACH ROW BEGIN
    INSERT INTO users (name, email, password, role, created_at, updated_at) VALUES(new.name_teacher, new.account_teacher, new.pwd_teacher, 'teacher', now(), now());
    INSERT INTO users (name, email, password, role, created_at, updated_at) VALUES(new.name_teacher, new.phone_teacher, new.pwd_teacher, 'teacher', now(), now());
  END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `teachers_after_update`;
DELIMITER ;;
CREATE TRIGGER `teachers_after_update` AFTER UPDATE ON `teachers` FOR EACH ROW BEGIN
    update users set name = new.name_teacher, updated_at = now() where email = new.account_teacher;
    update users set name = new.name_teacher, email = new.phone_teacher, updated_at = now() where email = old.phone_teacher;
  END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `teachers_after_delete`;
DELIMITER ;;
CREATE TRIGGER `teachers_after_delete` AFTER DELETE ON `teachers` FOR EACH ROW BEGIN
    delete from users where email = old.account_teacher;
    delete from users where email = old.phone_teacher;
  END
;;
DELIMITER ;
