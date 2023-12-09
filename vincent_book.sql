/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : vincent_book

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 09/12/2023 02:01:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `book_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `book_price` double(10, 2) NULL DEFAULT NULL,
  `book_num` int NULL DEFAULT NULL,
  `book_sale` int NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '悲剧的诞生', '哲学', '本书是尼采一鸣惊人的巨作，也是读者理解尼采美学和哲学的入门书。', '/pic/cover/悲剧的诞生.jpg', 32.19, 100, 18);
INSERT INTO `book` VALUES (2, '查泰莱夫人的情人', '小说', '劳伦斯轰动世界的杰作，文坛史令人震惊，备受争议的情爱经典', '/pic/cover/查泰莱夫人的情人.jpg', 32.17, 100, 16);
INSERT INTO `book` VALUES (3, '大地球', '童书', '攀登“世界屋脊”，揭秘雪人传说，从高山到大海，体验急速漂流，在会下雨的沙漠里畅饮甘霖，穿越地下迷宫，开启岩石变身游戏…… 还有好多微生物朋友和“地球精灵”等你认识！', '/pic/cover/大地球.jpg', 19.58, 100, 26);
INSERT INTO `book` VALUES (4, '父与子', '童书', '“陪伴”之爱无可替代，一代幽默大师的爆笑漫画，唤醒亲情唤醒爱', '/pic/cover/父与子.jpg', 19.01, 100, 22);
INSERT INTO `book` VALUES (5, '海浪', '小说', '意识流文学代表作家之一的代表作之一。', '/pic/cover/海浪.jpg', 23.45, 100, 39);
INSERT INTO `book` VALUES (6, '怀孕呵护指南', '工具书', '女性健康科普大V、第十一诊室创始人六层楼先生，继《女生呵护指南》后的全新作品；孕前准备、孕期健康、分娩指导、产后恢复；关注孕产健康，缓解孕期焦虑，做足怀孕的功课，一起迎接新生命的到来', '/pic/cover/怀孕呵护指南.jpg', 23.10, 100, 27);
INSERT INTO `book` VALUES (7, '空间站全景立体书', '童书', '空间站全景立体书', '/pic/cover/空间站全景立体书.jpg', 35.10, 100, 13);
INSERT INTO `book` VALUES (8, '名人传', '传记', '诺贝尔文学奖得主罗曼·罗兰为“三大天才”立传，翻译家傅雷的代表译作。', '/pic/cover/名人传.jpg', 22.93, 100, 13);
INSERT INTO `book` VALUES (9, '南明史', '历史', '内斗就要亡国，亡国也要内斗！从南明的灭亡，看透人性的荒唐！荣获中国国家图书奖，北京市哲学社会科学优秀成果一等奖。明史大家顾诚代表作，豆瓣9.3分，不可不读的史学经典，读客熊猫君出品', '/pic/cover/南明史.jpg', 30.70, 100, 21);
INSERT INTO `book` VALUES (10, '中国哲学史', '哲学', '2017年精校升级版。胡适关于中国古代哲学思想史的一部著作，开启中国哲学史研究的新时代', '/pic/cover/中国哲学史.jpg', 22.35, 100, 34);
INSERT INTO `book` VALUES (11, '北大哲学课', '哲学', '一书在手，如身临百年名校讲堂！凝结了中国出世、入世哲学的精髓，展现了西方哲学流派的思想变迁！', '/pic/cover/北大哲学课.jpg', 38.59, 100, 22);
INSERT INTO `book` VALUES (12, '哲学与人生', '哲学', '新增50%内容！傅佩荣教授经典代表作，全新修订，新增十余万字，心得与新见远超旧版。周国平、朱大可、阎崇年、王潇等众多名家名人一致推荐。', '/pic/cover/哲学与人生.jpg', 29.29, 100, 38);
INSERT INTO `book` VALUES (13, '哲学家们都干了什么', '哲学', '严谨却不严肃的哲学史，在穷凶极恶的吐槽和喜闻乐见的段子中，读懂神烦的苏格拉底、宅男康德、疯子尼采、高富帅维特根斯坦……了解哲学家们穷其一生苦思的问题及终答案。读客熊猫君出品。', '/pic/cover/哲学家们都干了什么.jpg', 20.15, 100, 29);
INSERT INTO `book` VALUES (14, '百年孤独', '小说', '新版典藏内封。加西亚·马尔克斯代表作，惟一正式中文版，未作任何删节，发行量超800万册！', '/pic/cover/百年孤独.jpg', 21.57, 100, 19);
INSERT INTO `book` VALUES (15, '心', '小说', '稻盛和夫2020年新作，中国销量超过400万册《活法》的续篇，曹岫云力荐，稻盛哲学的集大成之作，回顾八十余载人生，复盘半个世纪经营，划下一生实践的重点。', '/pic/cover/心.jpg', 32.62, 100, 29);
INSERT INTO `book` VALUES (16, '三国争霸', '历史', '14场大战，376个问题，串联起东汉末年与三国的历史，破案式写法，抽丝剥茧寻找三国真相。130多幅地图从地理的角度搞清楚历史的真相。', '/pic/cover/三国争霸.jpg', 33.86, 100, 32);
INSERT INTO `book` VALUES (17, '沙丘', '小说', '每个“不可不读”的书单上都有《沙丘》！伟大的《沙丘》六部曲中文版初次完整出版！雨果奖、星云奖双奖作品！摘得轨迹杂志“20世纪科幻小说”桂冠!新老版随机发', '/pic/cover/沙丘.jpg', 11.15, 100, 20);
INSERT INTO `book` VALUES (18, '山海经里的故事', '童书', '跟着小药童探秘《山海经》里的药物传说！兼具知识性与文学性，帮孩子叩开《山海经》的大门。赠送山海经图鉴和山海经探险之旅桌游。', '/pic/cover/山海经里的故事.jpg', 36.76, 100, 21);
INSERT INTO `book` VALUES (19, '红与黑', '小说', '影响路遥《人生》的法国文学经典，震撼人心的“灵魂的哲学诗”。奋斗的人生和博弈的爱情，让每个年轻人都能在主人公身上找到自己的人生脚注', '/pic/cover/红与黑.jpg', 38.92, 100, 16);
INSERT INTO `book` VALUES (20, '朱元璋传', '传记', '著名历史学家吴晗先生耗费30年心血，四易其稿， 将大明开国皇帝朱元璋的形象栩栩如生地勾勒出来，展现了一个立体、有温度的帝王形象', '/pic/cover/朱元璋传.jpg', 23.45, 100, 18);
INSERT INTO `book` VALUES (21, '司马懿传', '传记', '他究竟是野心家还是忠君者？ ? 曹氏三代君主为何对他评价迥异？ ? 他的背后，还有谁在暗中主导？', '/pic/cover/司马懿传.jpg', 19.73, 100, 38);
INSERT INTO `book` VALUES (22, '富兰克林传', '传记', '改变无数人命运的精神读本，美国开国元勋富兰克林的传奇一生——平凡人可以有不平凡的成功人生', '/pic/cover/富兰克林传.jpg', 32.80, 100, 31);
INSERT INTO `book` VALUES (23, '曾国藩传', '传记', '知名历史学者张宏杰代表作，新增万字“曾国藩的遗产”，俞敏洪、马伯庸、李尚龙推荐。一个持续奋斗者的升级之道。从笨人到圣人，经历五次耻辱，如何步步升级，脱胎换骨？附赠曾国藩家书典藏本', '/pic/cover/曾国藩传.jpg', 26.18, 100, 37);
INSERT INTO `book` VALUES (24, '李嘉诚传', '传记', '一个著名财经作家从专业视角为你揭秘李嘉诚是如何赚钱的，如何从身无分文的青年李嘉诚从零做到华人首富。', '/pic/cover/李嘉诚传.jpg', 29.79, 100, 35);
INSERT INTO `book` VALUES (25, '王阳明传', '传记', '一本有料有趣有谱的王阳明传记。融合历史作品的厚重、悬疑小说的张力、戏剧的节奏感，深刻剖析知行合一的神奇威力，生动呈现心学圣人的传奇一生。全新修订第二版。', '/pic/cover/王阳明传.jpg', 28.62, 100, 23);
INSERT INTO `book` VALUES (26, '科比金传', '传记', '缅怀科比，致敬传奇；科比惟一官方认证传记。书写自强自律、永不放弃的“曼巴精神”真义，科比送给年轻一代的励志经典。科比是一生偶像，“曼巴精神”是一生信仰。特赠科比大幅手绘纪念海报。', '/pic/cover/科比金传.jpg', 33.78, 100, 27);
INSERT INTO `book` VALUES (27, '稻盛和夫自传', '传记', '季羡林、马云、樊登推崇的代表作《活法》作者经营之圣稻盛和夫亲笔撰写的传记。2020年重磅推出全新译本，再现稻盛和夫利他哲学、思维方式、阿米巴的生成路径，也让京瓷、日航家喻户晓。', '/pic/cover/稻盛和夫自传.jpg', 26.07, 100, 36);
INSERT INTO `book` VALUES (28, '十二生肖故事', '童书', '全国名校班主任隆重推荐，专为孩子量身订做的阅读书目。畅销10年，经久不衰，适合低年级儿童阅读的彩图注音版课外书，中国小学生喜爱的图书之一。', '/pic/cover/十二生肖故事.jpg', 14.41, 100, 26);
INSERT INTO `book` VALUES (29, '拼音真好玩', '童书', '根据小学拼音课程设置编写，包含400个常用音节，按照韵母、声母、复韵母、整体认读音节的学习顺序，带孩子进入拼音的趣味世界。全国50余所重点小学师生的使用心得，基础教育学科指导专家袁晓峰推荐 ！', '/pic/cover/拼音真好玩.jpg', 38.98, 100, 10);
INSERT INTO `book` VALUES (30, '疯狂动物城', '童书', ' 迪士尼国际金奖动画电影故事 疯狂动物城，教会孩子笑对偏见 乐于助人 承认错误等优良品格', '/pic/cover/疯狂动物城.jpg', 11.42, 100, 21);
INSERT INTO `book` VALUES (31, '疯狂滑雪记', '童书', '跌宕起伏的故事情节，让小读者开怀大笑；具有3D效果的水粉画，细节丰富；迷人而有趣的冬季读物；紧张又刺激的冒险故事；让孩子爱上滑雪，爱上户外运动；培养孩子乐观向上、从容面对逆境的心态', '/pic/cover/疯狂滑雪记.jpg', 16.55, 100, 25);
INSERT INTO `book` VALUES (32, '美味水果', '童书', '以可爱的形象引领孩子打开认知世界的大门！英国兄弟儿童出版公司精心出品。', '/pic/cover/美味水果.jpg', 20.57, 100, 26);
INSERT INTO `book` VALUES (33, '金色童书', '童书', '童书领域常青树斯凯瑞的知名代表作，一套让世界各地孩子深深痴迷的现象级童书，开创了场景式认知图画书的先河。忙忙碌碌镇/轱辘轱辘转/忙啊忙啊忙什么/呼啦呼啦飞起来（蒲公英童书馆出品）', '/pic/cover/金色童书.jpg', 27.05, 100, 34);
INSERT INTO `book` VALUES (34, '中国历史', '历史', '第十届文津奖获奖图书。历史启蒙四十载，贯通上下五千年。儿童视角讲述、历史现场还原、百篇精彩故事、千幅写实插画及珍贵照片，让孩子历史胃口从此大开，进而了解自己，评价世界！ 步印童书馆出品', '/pic/cover/中国历史.jpg', 21.48, 100, 39);
INSERT INTO `book` VALUES (35, '中国历史常识', '历史', '(一本华人世界公认的国史巨著，民国以来畅销至今的国史读本。通古通今通天下，知兴知衰知未来。一本书让你读懂五千年中国史。)', '/pic/cover/中国历史常识.jpg', 29.28, 100, 25);
INSERT INTO `book` VALUES (36, '中国大历史', '历史', '中国五千年历史的白话文读本，系统梳理从一个民族的诞生到国家的形成，动态定义“中国”的概念', '/pic/cover/中国大历史.jpg', 15.87, 100, 26);
INSERT INTO `book` VALUES (37, '历史微小的声音', '历史', '“受欢迎的历史学家”精心臻选，一本书读上史上至美至恶的演讲；向历史人物学习演讲技能和语言的力量！', '/pic/cover/历史微小的声音.jpg', 25.82, 100, 39);
INSERT INTO `book` VALUES (38, '历史的镜子', '历史', '吴晗先生的历史类文章集结，分为政治、军事、人物和文化四篇，既有对历史的思考，也有历史文化常识的普及，更有对现实的关照，在当今仍有启迪意义。', '/pic/cover/历史的镜子.jpg', 15.25, 100, 34);
INSERT INTO `book` VALUES (39, '大秦风云', '历史', '喜马拉雅历史榜NO.1的长期霸榜者！一本容易上头的历史书。千古一帝的生前身后，到底发生了什么事？以一人治天下，必将因一人亡天下？轻松地抓住历史的主要脉络，愉悦地体验历史故事。', '/pic/cover/大秦风云.jpg', 15.20, 100, 13);
INSERT INTO `book` VALUES (40, '食在宋朝', '历史', '市井高墙，珍馐家常，在宋朝，舌尖说话。畅销作家李开周全力开讲。上溯宋朝这个文化鼎盛的古代，从饮食入手，如何应付享用？还原宋朝饮食生活的真实图景，兼顾严谨与通俗。', '/pic/cover/食在宋朝.jpg', 26.47, 100, 26);
INSERT INTO `book` VALUES (41, '历史地理', '历史', '畅销20万册。一本书读懂中国历史和地理。', '/pic/cover/历史地理.jpg', 19.92, 100, 32);
INSERT INTO `book` VALUES (42, '中学生工具书套装', '工具书', '中学生工具书套装（新编学生字典+成语速查词典+错别字辨析小词典+文言文学习字典）共4册', '/pic/cover/中学生工具书套装.jpg', 21.20, 100, 31);
INSERT INTO `book` VALUES (43, '小学生绕口令', '工具书', '帮助孩子成为伶牙俐齿的口才达人、谜语竞猜大师、课外知识小专家', '/pic/cover/小学生绕口令.jpg', 30.02, 100, 31);
INSERT INTO `book` VALUES (44, '成语词典', '工具书', '一部适合广大师生和普通读者使用的中型成语词典，条目齐备，功能丰富，图文并茂。共收成语10000余条，酌情收列少量熟语，配有500余幅诠释成语内涵的彩色精美插图，具有一定的欣赏价值。', '/pic/cover/成语词典.jpg', 31.59, 100, 17);
INSERT INTO `book` VALUES (45, '汉语词典', '工具书', '现代汉语词典(第7版) 商务印书馆 中学生小学生教辅工具书实用工具书汉语词典辞典字典', '/pic/cover/汉语词典.jpg', 39.04, 100, 21);
INSERT INTO `book` VALUES (46, '现代汉语词典', '工具书', '收录小学语文教材中的生字、生词和成语，收词32000多条，收成语5000多条。 具有注音、笔画、部首、结构、字级、释义、例证、组词、搭配、造句、同义、近义、反义、辨析、注意、成语接龙、典故、插图等1', '/pic/cover/现代汉语词典.jpg', 18.84, 100, 22);
INSERT INTO `book` VALUES (47, '绘本手作游戏', '工具书', '林美琴老师《绘本的读写游戏》后的又一力作，带动绘本创作热潮，激发读者的想象力和创造力，培养读者动手能力！', '/pic/cover/绘本手作游戏.jpg', 18.76, 100, 33);
INSERT INTO `book` VALUES (48, '英汉双解大词典', '工具书', '收录单词短语40000余条，其中单词180000余条，含3000课标词和大学四六级常用词汇。17大功能，一书多用。', '/pic/cover/英汉双解大词典.jpg', 24.35, 100, 38);
INSERT INTO `book` VALUES (49, '英语词典', '工具书', '大字更护眼，彩图版本词典依照《义务教育英语课程标准》共收录词条近4500条，既包含了现行小学英语教材中的词汇，也适当延伸到7~9年级英语教材中的词汇，充分满足小学生课内学习和课外阅读的需求！', '/pic/cover/英语词典.jpg', 32.80, 100, 11);
INSERT INTO `book` VALUES (50, '学生成语大词典', '工具书', '学生成语大词典（双色本）1.2万条成语词典 成语故事成语接龙精装 超大开本 工具书小学初中高中提分考试专用词典', '/pic/cover/学生成语大词典.jpg', 34.83, 100, 28);
INSERT INTO `book` VALUES (51, '变色龙', '小说', '在人类文学史上，世界短篇小说巨匠契诃夫，用简洁有力的写作方式深入观察普通人的日常生活，创造了一种新的文学形式。全新版本，结合考点，阅读拓展！提高写作能力，就读契诃夫。读客熊猫君出品', '/pic/cover/变色龙.jpg', 16.12, 100, 36);
INSERT INTO `book` VALUES (52, '边城', '小说', '沈从文代表作之一，重现湘西世界的诗意与纯净，书写人情美、人事美、人性美', '/pic/cover/边城.jpg', 22.30, 100, 36);
INSERT INTO `book` VALUES (53, '狂人日记', '小说', '品味中国现代白话小说开山之作的精妙，领略中国现代文学创作的巅峰。《呐喊》《彷徨》《故事新编》全收录，鲁迅小说全了，买这本足矣', '/pic/cover/狂人日记.jpg', 17.56, 100, 27);
INSERT INTO `book` VALUES (54, '报童的夏天', '小说', '荣获美国2014年纽伯瑞文学奖银奖，2017年“百班千人读写计划”阅读图书。献给男孩的勇气和成长之书。驱赶恐惧、肯定自我、重新定位与父母的关系、思索自己的抱负（蒲公英童书馆出品）', '/pic/cover/报童的夏天.jpg', 38.40, 100, 39);
INSERT INTO `book` VALUES (55, '哲学简史', '哲学', '（听诺奖得主罗素聊哲学大师们的智慧精髓，从苏格拉底到维特根斯坦，近百位哲学家的思想精华解读，一部读懂西方文化发展的智慧之书）', '/pic/cover/哲学简史.jpg', 26.68, 100, 30);
INSERT INTO `book` VALUES (56, '让孩子像哲学家思考', '哲学', '让孩子像苏格拉底一样会提问，像亚里士多德一样会质疑，像德谟克利特一样会假设，像哲学家一样会思考。历史的温度作者＋上海交大附中语文老师＋复旦哲学博士，逻辑推理、辩证思考读客熊猫君出品', '/pic/cover/让孩子像哲学家思考.jpg', 29.06, 100, 34);
INSERT INTO `book` VALUES (57, '理想国', '哲学', '（爱默生说“烧掉所有的图书馆吧，因为所有的价值都在这本书里了。”《理想国》将读者引入一个朴素美好的思想殿堂，成为培养读者心灵与智慧的沃土。梁文道、朱光潜盛赞推崇！）', '/pic/cover/理想国.jpg', 33.02, 100, 37);
INSERT INTO `book` VALUES (58, '我的哲学提纲', '哲学', '哲学和美学大师李泽厚代表作，四十年首度重回大陆。一部引领思想潮流的哲学经典，浓缩李泽厚哲学思想之精华。冯友兰、朱光潜、宗白华等学界泰斗赞赏有加，钱理群、陈平原、易中天等百名学者一致推崇的大师', '/pic/cover/我的哲学提纲.jpg', 31.09, 100, 25);
INSERT INTO `book` VALUES (59, '哲学的故事', '哲学', '杜威、季羡林、周国平推崇的哲学大师代表作！《哲学的故事》不会使我们富有，却能使我们自由', '/pic/cover/哲学的故事.jpg', 26.80, 100, 25);
INSERT INTO `book` VALUES (60, '莎士比亚', '传记', '“一个天才来看另一位伟大的天才，一眼就看见了。”英国当代著名作家、《发条橙》作者安东尼伯吉斯为“诗圣”莎士比亚精彩立传。', '/pic/cover/莎士比亚.jpg', 15.23, 100, 17);

-- ----------------------------
-- Table structure for book_pic
-- ----------------------------
DROP TABLE IF EXISTS `book_pic`;
CREATE TABLE `book_pic`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `book_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 320 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_pic
-- ----------------------------
INSERT INTO `book_pic` VALUES (81, 1, '/pic/content/悲剧的诞生_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (82, 1, '/pic/content/悲剧的诞生_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (83, 1, '/pic/content/悲剧的诞生_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (84, 1, '/pic/content/悲剧的诞生_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (85, 2, '/pic/content/查泰莱夫人的情人_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (86, 2, '/pic/content/查泰莱夫人的情人_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (87, 2, '/pic/content/查泰莱夫人的情人_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (88, 2, '/pic/content/查泰莱夫人的情人_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (89, 3, '/pic/content/大地球_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (90, 3, '/pic/content/大地球_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (91, 3, '/pic/content/大地球_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (92, 3, '/pic/content/大地球_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (93, 4, '/pic/content/父与子_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (94, 4, '/pic/content/父与子_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (95, 4, '/pic/content/父与子_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (96, 4, '/pic/content/父与子_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (97, 5, '/pic/content/海浪_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (98, 5, '/pic/content/海浪_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (99, 5, '/pic/content/海浪_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (100, 5, '/pic/content/海浪_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (101, 6, '/pic/content/怀孕呵护指南_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (102, 6, '/pic/content/怀孕呵护指南_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (103, 6, '/pic/content/怀孕呵护指南_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (104, 6, '/pic/content/怀孕呵护指南_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (105, 7, '/pic/content/空间站全景立体书_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (106, 7, '/pic/content/空间站全景立体书_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (107, 7, '/pic/content/空间站全景立体书_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (108, 7, '/pic/content/空间站全景立体书_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (109, 8, '/pic/content/名人传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (110, 8, '/pic/content/名人传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (111, 8, '/pic/content/名人传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (112, 8, '/pic/content/名人传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (113, 9, '/pic/content/南明史_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (114, 9, '/pic/content/南明史_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (115, 9, '/pic/content/南明史_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (116, 9, '/pic/content/南明史_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (117, 10, '/pic/content/中国哲学史_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (118, 10, '/pic/content/中国哲学史_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (119, 10, '/pic/content/中国哲学史_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (120, 10, '/pic/content/中国哲学史_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (121, 11, '/pic/content/北大哲学课_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (122, 11, '/pic/content/北大哲学课_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (123, 11, '/pic/content/北大哲学课_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (124, 11, '/pic/content/北大哲学课_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (125, 12, '/pic/content/哲学与人生_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (126, 12, '/pic/content/哲学与人生_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (127, 12, '/pic/content/哲学与人生_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (128, 12, '/pic/content/哲学与人生_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (129, 13, '/pic/content/哲学家们都干了什么_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (130, 13, '/pic/content/哲学家们都干了什么_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (131, 13, '/pic/content/哲学家们都干了什么_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (132, 13, '/pic/content/哲学家们都干了什么_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (133, 14, '/pic/content/百年孤独_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (134, 14, '/pic/content/百年孤独_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (135, 14, '/pic/content/百年孤独_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (136, 14, '/pic/content/百年孤独_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (137, 15, '/pic/content/心_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (138, 15, '/pic/content/心_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (139, 15, '/pic/content/心_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (140, 15, '/pic/content/心_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (141, 16, '/pic/content/三国争霸_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (142, 16, '/pic/content/三国争霸_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (143, 16, '/pic/content/三国争霸_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (144, 16, '/pic/content/三国争霸_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (145, 17, '/pic/content/沙丘_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (146, 17, '/pic/content/沙丘_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (147, 17, '/pic/content/沙丘_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (148, 17, '/pic/content/沙丘_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (149, 18, '/pic/content/山海经里的故事_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (150, 18, '/pic/content/山海经里的故事_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (151, 18, '/pic/content/山海经里的故事_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (152, 18, '/pic/content/山海经里的故事_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (153, 19, '/pic/content/红与黑_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (154, 19, '/pic/content/红与黑_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (155, 19, '/pic/content/红与黑_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (156, 19, '/pic/content/红与黑_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (157, 20, '/pic/content/朱元璋传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (158, 20, '/pic/content/朱元璋传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (159, 20, '/pic/content/朱元璋传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (160, 20, '/pic/content/朱元璋传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (161, 21, '/pic/content/司马懿传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (162, 21, '/pic/content/司马懿传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (163, 21, '/pic/content/司马懿传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (164, 21, '/pic/content/司马懿传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (165, 22, '/pic/content/富兰克林传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (166, 22, '/pic/content/富兰克林传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (167, 22, '/pic/content/富兰克林传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (168, 22, '/pic/content/富兰克林传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (169, 23, '/pic/content/曾国藩传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (170, 23, '/pic/content/曾国藩传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (171, 23, '/pic/content/曾国藩传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (172, 23, '/pic/content/曾国藩传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (173, 24, '/pic/content/李嘉诚传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (174, 24, '/pic/content/李嘉诚传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (175, 24, '/pic/content/李嘉诚传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (176, 24, '/pic/content/李嘉诚传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (177, 25, '/pic/content/王阳明传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (178, 25, '/pic/content/王阳明传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (179, 25, '/pic/content/王阳明传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (180, 25, '/pic/content/王阳明传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (181, 26, '/pic/content/科比金传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (182, 26, '/pic/content/科比金传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (183, 26, '/pic/content/科比金传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (184, 26, '/pic/content/科比金传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (185, 27, '/pic/content/稻盛和夫自传_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (186, 27, '/pic/content/稻盛和夫自传_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (187, 27, '/pic/content/稻盛和夫自传_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (188, 27, '/pic/content/稻盛和夫自传_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (189, 28, '/pic/content/十二生肖故事_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (190, 28, '/pic/content/十二生肖故事_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (191, 28, '/pic/content/十二生肖故事_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (192, 28, '/pic/content/十二生肖故事_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (193, 29, '/pic/content/拼音真好玩_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (194, 29, '/pic/content/拼音真好玩_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (195, 29, '/pic/content/拼音真好玩_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (196, 29, '/pic/content/拼音真好玩_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (197, 30, '/pic/content/疯狂动物城_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (198, 30, '/pic/content/疯狂动物城_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (199, 30, '/pic/content/疯狂动物城_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (200, 30, '/pic/content/疯狂动物城_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (201, 31, '/pic/content/疯狂滑雪记_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (202, 31, '/pic/content/疯狂滑雪记_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (203, 31, '/pic/content/疯狂滑雪记_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (204, 31, '/pic/content/疯狂滑雪记_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (205, 32, '/pic/content/美味水果_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (206, 32, '/pic/content/美味水果_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (207, 32, '/pic/content/美味水果_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (208, 32, '/pic/content/美味水果_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (209, 33, '/pic/content/金色童书_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (210, 33, '/pic/content/金色童书_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (211, 33, '/pic/content/金色童书_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (212, 33, '/pic/content/金色童书_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (213, 34, '/pic/content/中国历史_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (214, 34, '/pic/content/中国历史_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (215, 34, '/pic/content/中国历史_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (216, 34, '/pic/content/中国历史_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (217, 35, '/pic/content/中国历史常识_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (218, 35, '/pic/content/中国历史常识_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (219, 35, '/pic/content/中国历史常识_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (220, 35, '/pic/content/中国历史常识_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (221, 36, '/pic/content/中国大历史_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (222, 36, '/pic/content/中国大历史_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (223, 36, '/pic/content/中国大历史_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (224, 36, '/pic/content/中国大历史_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (225, 37, '/pic/content/历史微小的声音_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (226, 37, '/pic/content/历史微小的声音_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (227, 37, '/pic/content/历史微小的声音_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (228, 37, '/pic/content/历史微小的声音_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (229, 38, '/pic/content/历史的镜子_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (230, 38, '/pic/content/历史的镜子_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (231, 38, '/pic/content/历史的镜子_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (232, 38, '/pic/content/历史的镜子_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (233, 39, '/pic/content/大秦风云_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (234, 39, '/pic/content/大秦风云_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (235, 39, '/pic/content/大秦风云_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (236, 39, '/pic/content/大秦风云_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (237, 40, '/pic/content/食在宋朝_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (238, 40, '/pic/content/食在宋朝_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (239, 40, '/pic/content/食在宋朝_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (240, 40, '/pic/content/食在宋朝_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (241, 41, '/pic/content/历史地理_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (242, 41, '/pic/content/历史地理_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (243, 41, '/pic/content/历史地理_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (244, 41, '/pic/content/历史地理_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (245, 42, '/pic/content/中学生工具书套装_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (246, 42, '/pic/content/中学生工具书套装_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (247, 42, '/pic/content/中学生工具书套装_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (248, 42, '/pic/content/中学生工具书套装_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (249, 43, '/pic/content/小学生绕口令_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (250, 43, '/pic/content/小学生绕口令_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (251, 43, '/pic/content/小学生绕口令_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (252, 43, '/pic/content/小学生绕口令_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (253, 44, '/pic/content/成语词典_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (254, 44, '/pic/content/成语词典_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (255, 44, '/pic/content/成语词典_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (256, 44, '/pic/content/成语词典_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (257, 45, '/pic/content/汉语词典_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (258, 45, '/pic/content/汉语词典_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (259, 45, '/pic/content/汉语词典_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (260, 45, '/pic/content/汉语词典_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (261, 46, '/pic/content/现代汉语词典_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (262, 46, '/pic/content/现代汉语词典_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (263, 46, '/pic/content/现代汉语词典_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (264, 46, '/pic/content/现代汉语词典_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (265, 47, '/pic/content/绘本手作游戏_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (266, 47, '/pic/content/绘本手作游戏_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (267, 47, '/pic/content/绘本手作游戏_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (268, 47, '/pic/content/绘本手作游戏_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (269, 48, '/pic/content/英汉双解大词典_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (270, 48, '/pic/content/英汉双解大词典_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (271, 48, '/pic/content/英汉双解大词典_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (272, 48, '/pic/content/英汉双解大词典_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (273, 49, '/pic/content/英语词典_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (274, 49, '/pic/content/英语词典_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (275, 49, '/pic/content/英语词典_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (276, 49, '/pic/content/英语词典_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (277, 50, '/pic/content/学生成语大词典_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (278, 50, '/pic/content/学生成语大词典_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (279, 50, '/pic/content/学生成语大词典_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (280, 50, '/pic/content/学生成语大词典_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (281, 51, '/pic/content/变色龙_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (282, 51, '/pic/content/变色龙_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (283, 51, '/pic/content/变色龙_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (284, 51, '/pic/content/变色龙_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (285, 52, '/pic/content/边城_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (286, 52, '/pic/content/边城_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (287, 52, '/pic/content/边城_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (288, 52, '/pic/content/边城_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (289, 53, '/pic/content/狂人日记_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (290, 53, '/pic/content/狂人日记_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (291, 53, '/pic/content/狂人日记_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (292, 53, '/pic/content/狂人日记_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (293, 54, '/pic/content/报童的夏天_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (294, 54, '/pic/content/报童的夏天_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (295, 54, '/pic/content/报童的夏天_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (296, 54, '/pic/content/报童的夏天_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (297, 55, '/pic/content/哲学简史_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (298, 55, '/pic/content/哲学简史_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (299, 55, '/pic/content/哲学简史_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (300, 55, '/pic/content/哲学简史_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (301, 56, '/pic/content/让孩子像哲学家思考_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (302, 56, '/pic/content/让孩子像哲学家思考_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (303, 56, '/pic/content/让孩子像哲学家思考_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (304, 56, '/pic/content/让孩子像哲学家思考_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (305, 57, '/pic/content/理想国_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (306, 57, '/pic/content/理想国_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (307, 57, '/pic/content/理想国_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (308, 57, '/pic/content/理想国_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (309, 58, '/pic/content/我的哲学提纲_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (310, 58, '/pic/content/我的哲学提纲_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (311, 58, '/pic/content/我的哲学提纲_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (312, 58, '/pic/content/我的哲学提纲_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (313, 59, '/pic/content/哲学的故事_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (314, 59, '/pic/content/哲学的故事_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (315, 59, '/pic/content/哲学的故事_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (316, 59, '/pic/content/哲学的故事_4.jpg', NULL);
INSERT INTO `book_pic` VALUES (317, 60, '/pic/content/莎士比亚_1.jpg', NULL);
INSERT INTO `book_pic` VALUES (318, 60, '/pic/content/莎士比亚_2.jpg', NULL);
INSERT INTO `book_pic` VALUES (319, 60, '/pic/content/莎士比亚_3.jpg', NULL);
INSERT INTO `book_pic` VALUES (320, 60, '/pic/content/莎士比亚_4.jpg', NULL);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `book_id` int NOT NULL,
  `num` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES (64, 15, 4, 4);
INSERT INTO `shoppingcart` VALUES (65, 15, 18, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_del` int NULL DEFAULT 0 COMMENT '1表示删除 0表示存在',
  `is_admin` int NULL DEFAULT 0 COMMENT '0表示普通用户1表示管理员',
  `head_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'default',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uniqueUser`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (15, 'admin', 'admin', '96110', 0, 1, 'default');
INSERT INTO `user` VALUES (17, 'test', 'test', '96111', 1, 0, 'default');
INSERT INTO `user` VALUES (19, 'uname', 'pwd', '95510', 0, 0, 'default');

SET FOREIGN_KEY_CHECKS = 1;
