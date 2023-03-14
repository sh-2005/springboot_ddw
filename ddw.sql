/*
Navicat MySQL Data Transfer

Source Server         : wenkexia
Source Server Version : 50562
Source Host           : 39.103.130.139:3306
Source Database       : ddw

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2023-03-14 13:26:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for d_address
-- ----------------------------
DROP TABLE IF EXISTS `d_address`;
CREATE TABLE `d_address` (
  `id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `zip_Code` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `user_Id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_address
-- ----------------------------
INSERT INTO `d_address` VALUES ('022df405-4047-41f2-a73c-7d898d3aa9c2', '1', '1', '1', '1', '1', '5b1680a8-0dd7-4227-9ce6-e54444eb6ff5');
INSERT INTO `d_address` VALUES ('4b08ff02-d551-4b1a-b587-2a35aa621ebe', '1', '1', '1', '1', '1', '698cc958-d00f-4d36-a875-3236fea36478');
INSERT INTO `d_address` VALUES ('0839a031-bb17-4edb-b30d-f0cd2cf9f4ee', '周小梦', '山西省大同市阳高县', '', '167362883921', '', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('791c7870-41e3-4f51-a860-fdf571909400', '周小梦', '山西省晋中市太谷县晋中信息学院', '', '19923567649', '', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('1127dd4e-e0df-4a6e-9d14-6db86ea502c7', '周晓单', '山西省晋中市太谷县晋中信息学院', '098331', '18835236739', '15536278493', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('de16850c-8941-4ec4-913d-7f4d77f48554', '周晓梦', '山西省晋中市太谷县晋中信息学院', '', '19935273462', '', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('87cbf79c-0931-4ea4-9a39-5a5015b76d85', '周写么', '山西省大同市阳高县', '038100', '15635277820', '18835263781', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('5706d03d-ef91-4fb1-a218-f901f3d4cf50', '周晓明', '山西省大同市阳高县', '038100', '16535277830', '18835436539', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('cb88232a-07ce-4780-87d4-8cf292259a51', '周小梦', '山西省大同市阳高县', '038100', '16753277839', '17634217339', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('f5b1fab3-e760-49f6-a628-d79e8dfa9280', '周兄', '山西省大同市阳高县', '038100', '19935436527', '15635277839', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('0d028ace-89f2-4311-a481-b87c3a176b30', '周董', '山西省大同市阳高县', '038100', '19935436527', '18835277830', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('4fa2ea30-9834-4f4d-918e-59df10c32a4b', '张小清', '山西省大同市阳高县', '038100', '18835243657', '16535277839', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('e085c583-a0d1-4aec-8b79-ce15d7dc821f', '王晓民', '山西省大同市阳高县', '038100', '17735268739', '15635277820', 'f76314b0-8d96-49b1-8534-2a6854010f4b');
INSERT INTO `d_address` VALUES ('0ce8c12e-3e28-4cee-b9e4-bbceaa137a17', '1', '1', '1', '1', '1', '69b68d6d-8ecb-417f-9e28-b6e915b04511');
INSERT INTO `d_address` VALUES ('afac17f6-e366-404e-9507-921ed5c7893f', '1', '1', '1', '13037088601', '1', 'f6b233c7-667c-4dfd-a54d-5db0f63dc4d5');
INSERT INTO `d_address` VALUES ('10400fe9-16c3-43c6-a8a7-4a6f8fc0c8a3', '张三', '山西省运城市', '044600', '18295742407', '18295742407', '57ad4479-46e3-41f6-870c-a3df1b256fcc');

-- ----------------------------
-- Table structure for d_admin
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin` (
  `id` varchar(40) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_admin
-- ----------------------------
INSERT INTO `d_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for d_book
-- ----------------------------
DROP TABLE IF EXISTS `d_book`;
CREATE TABLE `d_book` (
  `id` varchar(50) DEFAULT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `src` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `print_time` datetime DEFAULT NULL,
  `impression` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `public_count` int(50) DEFAULT NULL,
  `page_num` int(50) DEFAULT NULL,
  `sizes` varchar(50) DEFAULT NULL,
  `paper` varchar(50) DEFAULT NULL,
  `pack` varchar(30) DEFAULT NULL,
  `price` double(30,1) DEFAULT NULL,
  `dd_price` double(30,0) DEFAULT NULL,
  `recommend` varchar(3000) DEFAULT NULL,
  `content_abstract` varchar(3000) DEFAULT NULL,
  `author_abstract` varchar(3000) DEFAULT NULL,
  `director` varchar(3000) DEFAULT NULL,
  `media_commentary` varchar(3000) DEFAULT NULL,
  `cate_id` varchar(50) DEFAULT NULL,
  `sale_count` int(50) DEFAULT NULL,
  `stock` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_book
-- ----------------------------
INSERT INTO `d_book` VALUES ('1', '儒林外史', '吴敬梓', 'imgs/rlws.jpg', '花山文艺出版社', '2022-05-05 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '34', '16开', '胶版纸', '精装', '15.0', '12', '《儒林外史》，是一部描绘知识分子群像的长篇讽刺小说。作品描写了深受八股毒害的儒生的种种荒诞与虚伪行为。', '《儒林外史》，是一部描绘知识分子群像的长篇讽刺小说。作品描写了深受八股毒害的儒生的种种荒诞与虚伪行为。', '吴敬梓（1701-1754），汉族，安徽全椒人，清代最伟大的小说家之一。生活于“康乾盛世”时期，自幼聪慧好学。23岁时，考取秀才，当年其父吴霖起失官、病故。此后，他科场不顺，并经历了近亲掠夺祖产的事情，目睹了官场斗争的残酷。他开始挥金如土、纵情享乐，终致家财散尽。33岁时移居南京，生活清贫，喜交高雅之士，对热衷功名者嗤之以鼻。35岁时，决定放弃科考，并开始创作《儒林外史》。历13年书成，后坚持修改，直至54岁病逝。', '第　一　回 说楔子敷陈大义 借名流隐括全文 001\r\n第　二　回 王孝廉村学识同科 周蒙师暮年登上第 007\r\n第　三　回 周学道校士拔真才 胡屠户行凶闹捷报 012\r\n第　四　回 荐亡斋和尚吃官司 打秋风乡绅遭横事 019\r\n第　五　回 秀才议立偏房 严监生疾终正寝 024\r\n第　六　回 乡绅发病闹船家 寡妇含冤控大伯 030\r\n第　七　回 范学道视学报师恩 王员外立朝敦友谊 036\r\n第　八　回 王观察穷途逢世好 娄公子故里遇贫交 041\r\n第　九　回 娄公子捐金赎朋友 刘守备冒姓打船家 046\r\n第　十　回 鲁翰林怜才择婿 蘧公孙富室招亲 052\r\n第 十 一 回 鲁小姐制义难新郎 杨司训相府荐贤士 057\r\n第 十 二 回 名士大宴莺脰湖 侠客虚设人头会 062\r\n第 十 三 回 蘧夫求贤问业 马纯上仗义疏财 067\r\n第 十 四 回 蘧公孙书坊送良友 马秀才山洞遇神仙 073\r\n第 十 五 回 葬神仙马秀才送丧 思父母匡童生尽孝 078\r\n第 十 六 回 大柳庄孝子事亲 乐清县贤宰爱士 083\r\n第 十 七 回 匡秀才重游旧地 赵医生高踞诗坛 088\r\n第 十 八 回 约诗会名士携匡二 访朋友书店会潘三 093\r\n第 十 九 回 匡超人幸得良朋 潘自业横遭祸事 098\r\n第 二 十 回 匡超人高兴长安道 牛布衣客死芜湖关 103\r\n第二十一回 冒姓字小子求名 念亲戚老夫卧病 108\r\n第二十二回 认祖孙玉圃联宗 爱交游雪斋留客 113\r\n第二十三回 发阴私诗人被打 叹老景寡妇寻夫 119\r\n第二十四回 牛浦郎牵连多讼事 鲍文卿整理旧生涯 125\r\n第二十五回 鲍文卿南京遇旧 倪廷玺安庆招亲 130\r\n第二十六回 向观察升官哭友 鲍廷玺丧父娶妻 135\r\n第二十七回 王太太夫妻反目 倪廷珠兄弟相逢 140\r\n第二十八回 季苇萧扬州入赘 萧金铉白下选书 145\r\n第二十九回 诸葛佑僧寮遇友 杜慎卿江郡纳姬 150\r\n第 三 十 回 爱少俊访友神乐观 逞风流高会莫愁湖 155\r\n第三十一回 天长县同访豪杰 赐书楼大醉高朋 160\r\n第三十二回 杜少卿平居豪举 娄焕文临去遗言 166\r\n第三十三回 杜少卿夫妇游山 迟衡山朋友议礼 171\r\n第三十四回 议礼乐名流访友 备弓旌天子招贤 176\r\n第三十五回 圣天子求贤问道 庄征君辞爵还家 182\r\n第三十六回 常熟县真儒降生 泰伯祠名贤主祭 187\r\n第三十七回 祭先圣南京修礼 送孝子西蜀寻亲 192\r\n第三十八回 郭孝子深山遇虎 甘露僧狭路逢仇 198\r\n第三十九回 萧云仙救难明月岭 平少保奏凯青枫城 203\r\n第 四 十 回 萧云仙广武山赏雪 沈琼枝利涉桥卖文 208\r\n第四十一回 庄濯江话旧秦淮河 沈琼枝押解江都县 214\r\n第四十二回 公子妓院说科场 家人苗疆报信息 219\r\n第四十三回 野羊塘将军大战 歌舞地酋长劫营 224\r\n第四十四回 汤总镇成功归故乡 余明经把酒问葬事 229\r\n第四十五回 敦友谊代兄受过 讲堪舆回家葬亲 234\r\n第四十六回 三山门贤人饯别 五河县势利熏心 239\r\n第四十七回 虞秀才重修元武阁 方盐商大闹节孝祠 244\r\n第四十八回 徽州府烈妇殉夫 泰伯祠遗贤感旧 249\r\n第四十九回 翰林高谈龙虎榜 中书冒占凤凰池 254\r\n第 五 十 回 假官员当街出丑 真义气代友求名 259\r\n第五十一回 少妇骗人折风月 壮士高兴试官刑 263\r\n第五十二回 比武艺公子伤身 毁厅堂英雄讨债 267\r\n第五十三回 国公府雪夜留宾 来宾楼灯花惊梦 272\r\n第五十四回 病佳人青楼算命 呆名士妓馆献诗 277\r\n第五十五回 添四客述往思来 弹一曲高山流水 283\r\n第五十六回 神宗帝下诏旌贤 刘尚书奉旨承祭 288', '秉持公心，指摘时弊。机锋所向，尤在士林；其文又戚而能谐，婉而多讽。\r\n——鲁迅\r\n《儒林外史》是一部主角不断变换的长篇小说，其艺术特色堪称“精工提炼”。\r\n——胡适\r\n《儒林外史》里虽然没有一个*人称在那里穿线，但似乎有一个“我”在。这个“我”，把自己所历种种，老老实实地写了出来。\r\n——张天翼', 'f0dbdcb6-1857-4063-8759-090265c217c6', '4', '996');
INSERT INTO `d_book` VALUES ('4', '聊斋志异', '蒲松龄', 'imgs/lzzy.jpg', '民主与建设出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '15.0', '14', '中国古代灵异与志怪小说的集大成者，收录近500篇知名小说', '清代小说家蒲松龄代表作，中国古代灵异、志怪小说的集大成者。', '作者很低调，没有做简介', '高序\r\n唐序\r\n聊斋自志\r\n卷一\r\n考城隍\r\n耳中人\r\n尸变\r\n喷水\r\n瞳人语\r\n画壁\r\n山魈\r\n咬鬼\r\n捉狐\r\n收中怪', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '4', '996');
INSERT INTO `d_book` VALUES ('5', '金瓶梅', '兰陵笑笑生', 'imgs/jpm.jpg', '吉林大学出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '125.0', '120', '中国伟大的写实小说，有明一代的百科全书，古代小说史上里程碑性质的作品，开拓了中国小说史的新阶段。没有《金瓶梅》，就产生不了《红楼梦》，《金瓶梅》与《红楼梦》是中华民族的骄傲，可以与世界*伟大的小说相媲美。 ', '中国伟大的写实小说 有明一代的百科全书 开拓了中国小说史上的新阶段', '作者很低调，没有做简介', '第一回\r\n西门庆热结十兄弟 武二郎冷遇亲哥嫂\r\n第二回\r\n俏潘娘帘下勾情 老王婆茶坊说技\r\n第三回\r\n定挨光王婆受贿 设圈套浪子私挑\r\n第四回\r\n赴巫山潘氏幽欢 闹茶坊郓哥义愤\r\n第五回\r\n捉奸情郓哥定计 饮酰药武大遭殃\r\n第六回\r\n何九受贿瞒天 王婆帮闲遇雨\r\n第七回\r\n薛媒婆说娶孟三儿 杨姑娘气骂张四舅\r\n第八回\r\n盼情郎佳人占鬼卦 烧夫灵和尚听淫声\r\n第九回\r\n西门庆偷娶潘金莲 武都头误打李皂隶\r\n第十回\r\n义士充配孟州道 妻妾玩赏芙蓉亭', '媒体也说很好看的一本书', '8204dcff-1425-47f6-b1a9-a1f4440527f1', '3', '997');
INSERT INTO `d_book` VALUES ('6', '东周列国志', '冯梦龙', 'imgs/dzlgz.jpg', '民主与建设出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '20.0', '19', '当当网此版本销售火爆！写尽东周五百年群雄争霸颠覆历史格局的传奇巨著！', '古典小说精品系列： 《芈月传》小说原著及编剧蒋胜男读的首本书《 东周列国志 》 ', '作者很低调，没有做简介', '买了就知道目录了，我就不多介绍了', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '3', '997');
INSERT INTO `d_book` VALUES ('2', '镜花缘', '李汝珍', 'imgs/jhy.jpg', '民主与建设出版社', '2022-05-03 00:00:00', '第四版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '20.0', '18', '中国古典文学巨著，鲁迅称之为能“与万宝全书相邻比”的奇书）', '内容很好，买了就知道了', '李汝珍（约1763—约1830），字松石，号松石道人，直隶大兴（今属北京市）人。李汝珍自幼聪敏好学、多才多艺，精通音韵、博弈、书画、星卜等，著有音韵学著作《李氏音鉴》、围棋谱《受子谱》等。\r\n\r\n李汝珍凭借自己丰富的想象、幽默的笔调，运用夸张、隐喻、反衬等手法，创造出了结构独特、思想新颖的长篇小说《镜花缘》，书中写了君子国、女儿国、无肠国等国家，表现出作者无与伦比的想象力，而在其所描写的浪漫虚幻的世相下，却展现出对生命的热爱、对死亡的敬畏、对人类生存境遇的追问。', '第一回 女魁星北斗垂景象　老王母西池赐芳筵 001\r\n\r\n第二回 发正言花仙顺时令　定罚约月姊助风狂 004\r\n\r\n第三回 徐英公传檄起义兵　骆主簿修书寄良友 006\r\n\r\n第四回 吟雪诗暖阁赌酒　挥醉笔上苑催花 008\r\n\r\n第五回 俏宫娥戏夸金盏草　武太后怒贬牡丹花 011\r\n\r\n第六回 众宰承宣游上苑　百花获谴降红尘 014\r\n\r\n第七回 小才女月下论文科　老书生梦中闻善果 018\r\n\r\n第八回 弃嚣尘结伴游寰海　觅胜迹穷踪越远山 021\r\n\r\n第九回 服肉芝延年益寿　食朱草入圣超凡 024\r\n\r\n第十回 诛大虫佳人施药箭　搏奇鸟壮士奋空拳 028\r\n\r\n第十一回 观雅化闲游君子邦　慕仁风误入良臣府 032\r\n\r\n第十二回 双宰辅畅谈俗弊　两书生敬服良箴 035\r\n\r\n第十三回 美人入海遭罗网　儒士登山失路途 040\r\n\r\n第十四回 谈寿夭道经聂耳　论穷通路出无肠 043\r\n\r\n第十五回 喜相逢师生谈故旧　巧遇合宾主结新亲 046\r\n\r\n第十六回 紫衣女殷勤问字　白发翁傲慢谈文 050\r\n\r\n第十七回 因字声粗谈切韵　闻雁唳细问来宾 054\r\n\r\n第十八回 辟清谈幼女讲易经　发至论书生尊孟子 058\r\n\r\n第十九回 受女辱潜逃黑齿邦　观民风联步小人国 062\r\n\r\n第二十回 丹桂岩山鸡舞镜　碧梧岭孔雀开屏 066\r\n\r\n第二十一回 逢恶兽唐生被难　施神枪魏女解围 070\r\n\r\n第二十二回 遇白民儒士听奇文　观药兽武夫发妙论 074\r\n\r\n第二十三回 说酸话酒保咬文　讲迂谈腐儒嚼字 078\r\n\r\n第二十四回 唐探花酒楼闻善政　徐公子茶肆叙衷情 082\r\n\r\n第二十五回 越危垣潜出淑士关　登曲岸闲游两面国 085\r\n\r\n第二十六回 遇强梁义女怀德　遭大厄灵鱼报恩 088\r\n\r\n第二十七回 观奇形路过翼民郡　谈异相道出豕喙乡 092\r\n\r\n第二十八回 老书生仗义舞龙泉　小美女衔恩脱虎穴 096\r\n\r\n第二十九回 服妙药幼子回春　传奇方老翁济世 100\r\n\r\n第三十回 觅蝇头林郎货禽鸟　因恙体枝女作螟蛉 104\r\n\r\n第三十一回 谈字母妙语指谜团　看花灯戏言猜哑谜 107\r\n\r\n第三十二回 访筹算畅游智佳国　观艳妆闲步女儿乡 113\r\n\r\n第三十三回 粉面郎缠足受困　长须女玩股垂情 117\r\n\r\n第三十四回 观丽人女主定吉期　访良友老翁得凶信 120\r\n\r\n第三十五回 现红鸾林贵妃应课　揭黄榜唐义士治河 123\r\n\r\n第三十六回 佳人喜做东床婿　壮士愁为举案妻 127\r\n\r\n第三十七回 新贵妃返本为男　旧储子还原作女 130\r\n\r\n第三十八回 步玉桥茂林观凤舞　穿金户宝殿听鸾歌 133\r\n\r\n第三十九回 轩辕国诸王祝寿　蓬莱岛二老游山 136\r\n\r\n第四十回 入仙山撒手弃凡尘　走瀚海牵肠归故土 140\r\n\r\n第四十一回 观奇图喜遇佳文　述御旨欣逢盛典 144\r\n\r\n第四十二回 开女试太后颁恩诏　笃亲情佳人盼好音 152\r\n\r\n第四十三回 因游戏仙猿露意　念劬劳孝女伤怀 155\r\n\r\n第四十四回 小孝女岭上访红蕖　老道姑舟中献瑞草 159\r\n\r\n第四十五回 君子国海中逢水怪　丈夫邦岭下遇山精 162\r\n\r\n第四十六回 施慈悲仙子降妖　发慷慨储君结伴 166\r\n\r\n第四十七回 水月村樵夫寄信　镜花岭孝女寻亲 170\r\n\r\n第四十八回 睹碑记默喻仙机　观图章微明妙旨 173\r\n\r\n第四十九回 泣红亭书叶传佳话　流翠浦搴裳觅旧踪 178\r\n\r\n第五十回 遇难成祥马能伏虎　逢凶化吉妇可降夫 181\r\n\r\n第五十一回 走穷途孝女绝粮　得生路仙姑献稻 185\r\n\r\n第五十二回 谈春秋胸罗锦绣　讲礼制口吐珠玑 188\r\n\r\n第五十三回 论前朝数语分南北　书旧史挥毫贯古今 192\r\n\r\n第五十四回 通智慧白猿窃书　显奇能红女传信 196\r\n\r\n第五十五回 田氏女细谈妙剂　洛家娃默祷灵签 200', '好，很好', 'f0dbdcb6-1857-4063-8759-090265c217c6', '0', '1000');
INSERT INTO `d_book` VALUES ('7', '搜神记', '马银琴', 'imgs/ssj.jpg', '中华书局出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '20.0', '19', '中华经典名著全书全注全译丛书', '中华经典名著全书全注全译丛书', '作者很低调，没有做简介', '买了就知道目录了，我就不多介绍了', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '0', '1000');
INSERT INTO `d_book` VALUES ('9', '世说新语', '刘义庆', 'imgs/ssxy.jpg', '上海古籍出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '600', '16开', '胶版纸', '平装-胶订', '30.0', '28', '世说新语详解(套装共2册)》包括《世说新语》原文、今译、刘孝标注、今注、评析五个部分。《世说新语》原文和刘孝标注以涵芬楼影印嘉趣堂本为底本，同时参考了余嘉锡《世说新语笺疏》等著作的校勘成果，力求保持原著的本来面貌；评析部分则注重历史事件、社会背景和人物关系的交代，以期钩深致远，充分阐发其本旨。', '刘义庆的《世说新语》是一部专记前代遗闻轶事 的笔记小说。《世说新语详解》是朱碧莲教授的*后一部著作', '刘义庆，南朝宋人，官至兖州刺史。为人“性简素，寡嗜欲”，喜与文学之士交游，在他的周围，聚集着一大批名儒硕学。他的著作丰富，其中最有名的是《世说新语》。这是一部记载汉末至魏晋时期士族阶层的言行风貌和逸事趣闻的笔记体小说。书中保留了大量反映当时社会生活的珍贵史料，语言简炼，文字生动鲜活，是一部文学价值极高的古典名著。刘义庆也因此书而名垂千古。', '序言\r\n前言\r\n德行第一\r\n言语第二\r\n政事第三\r\n文学第四\r\n方正第五\r\n雅量第六\r\n识鉴第七\r\n赏誉第八\r\n品藻第九\r\n规箴第十\r\n捷悟第十一\r\n夙惠第十二', '媒体也说很好看的一本书', '90a11717-49c7-4b10-a95f-1d0e8926b761', '6', '994');
INSERT INTO `d_book` VALUES ('8', '官场现形记', '李伯元', 'imgs/gcxxj.jpg', '上海古籍出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '600', '16开', '胶版纸', '平装-胶订', '22.0', '20', '中国官场有着说不尽道不明的故事。一个人不论身居什么环境，只要耳濡目染，久而久之，必然会潜移默化。因此，李伯元编著的《官场现形记》正是一面审视自己*好的借镜。', '中国官场有着说不尽道不明的故事。一个人不论身居什么环境，只要耳濡目染，久而久之，必然会潜移默化。', '作者很低调，没有做简介', '买了就知道目录了，我就不多介绍了', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '0', '1000');
INSERT INTO `d_book` VALUES ('13', '三国演义', '罗贯中', 'imgs/sgyy.jpg', '人民文学出版社', '2022-05-03 00:00:00', '第四版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '102.0', '88', '编辑没有推荐', '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说*著名最杰出的长篇章回体历史小说。', '作者很低调，没有做简介', '第001回　宴桃园豪杰三结义　斩黄巾英雄首立功\r\n第002回　张翼德怒鞭督邮　何国舅谋诛宦竖\r\n第003回　议温明董卓叱丁原　馈金珠李肃说吕布\r\n第004回　废汉帝陈留践位　谋董贼孟德献刀\r\n第005回　发矫诏诸镇应曹公　破关兵三英战吕布\r\n第006回　焚金阙董卓行凶　匿玉玺孙坚背约\r\n第007回　袁绍磐河战公孙　孙坚跨江击刘表\r\n第008回　王司徒巧使连环计　董太师大闹凤仪亭\r\n第009回　除暴凶吕布助司徒　犯长安李傕听贾诩\r\n第010回　勤王室马腾举义　报父仇曹操兴师\r\n第011回　刘皇叔北海救孔融　吕温侯濮阳破曹操\r\n第012回　陶恭祖三让徐州　曹孟穗大战吕布\r\n第013回　李傕郭汜大交兵　杨奉董承双救驾\r\n第014回　曹孟德移驾幸许都　吕奉先乘夜袭徐郡', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '12', '988');
INSERT INTO `d_book` VALUES ('11', '西游记', '吴承恩', 'imgs/xyj.jpg', '人民文学出版社', '2022-05-03 00:00:00', '第四版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100.0', '88', '编辑没有推荐', '《西游记》主要描写的是孙悟空保唐僧西天取经，历经九九八十一难的故事。', '吴承恩（1500年-1582年），字汝忠，号淮海浪士，又号射阳山人。淮安府山阳县（今江苏省淮安市淮安区）人。中国明代杰出的小说家，著有中国古典四大名著之一《西游记》，被翻译成世界语。吴承恩一生创作丰富，但是由于家贫，又没有子女，作品多散失。据记载还著有志怪小说集《禹鼎记》，已失传。', '第一回 灵根育孕源流出 心性修持大道生\r\n第二回 悟彻菩提真妙理 断魔归本合元神\r\n第三回 四海千山皆拱伏 九幽十类尽除名\r\n第四回 官封弼马心何足 名注齐天意未宁\r\n第五回 乱蟠桃大圣偷丹 反天宫诸神捉怪\r\n第六回 观音赴会问原因 小圣施威降大圣\r\n第七回 八封炉中逃大圣 五行山下定心猿\r\n第八回 我佛造经传极乐 观音奉旨上长安\r\n第九回 袁守诚妙算无私曲 老龙王拙计犯天条\r\n第十回 二将军宫门镇鬼 唐太宗地府还魂\r\n第十一回 还受生唐王遵善果 度孤魂瑀萧正空门\r\n第十二回 玄奘秉诚建大会 观音显相化金蝉\r\n第十三回 陷虎穴金星解厄 双叉岭伯钦留僧\r\n第十四回 心猿归正 六贼无踪', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '1', '999');
INSERT INTO `d_book` VALUES ('12', '水浒传', '施耐庵', 'imgs/shz.jpg', '人民文学出版社', '2022-05-03 00:00:00', '第四版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100.0', '88', '编辑没有推荐', '《水浒传》是我国第一部以农民起义为题材的长篇章回小说，是我国文学史上一座巍然屹立的丰碑。', '作者很低调，没有做简介', '第一回 张天师祈禳瘟疫 \r\n洪太尉误走妖魔\r\n第二回 王教头私走延安府\r\n九纹龙大闹史家村\r\n第三回 史大郎夜走华阴县\r\n鲁提辖拳打镇关西\r\n第四回 赵员外重修文殊院\r\n鲁智深大闹五台山\r\n第五回 小霸王醉入销金帐\r\n花和尚大闹桃花村\r\n第六回 九纹龙剪径赤松林\r\n鲁智深火烧瓦罐寺\r\n第七回 花和尚倒拔垂杨柳', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '1', '999');
INSERT INTO `d_book` VALUES ('14', '红楼梦', '曹雪芹', 'imgs/hlm.jpg', '人民文学出版社', '2022-05-03 00:00:00', '第四版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '80000', '600', '16开', '胶版纸', '平装-胶订', '100.0', '88', '编辑没有推荐', '中国四大名著之一，本书是一部具有高度思想性和高度艺术性的伟大作品', '作者很低调，没有做简介', '第一回 甄士隐梦幻识通灵\r\n贾雨村风尘怀闺秀\r\n第二回 贾夫人仙逝扬州城\r\n冷子兴演说荣国府\r\n第三回 贾雨村夤缘复旧职\r\n林黛玉抛父进京都\r\n第四回 薄命女偏逢薄命郎\r\n戎芦僧乱判葫芦案\r\n第五回 游幻境指迷十二钗\r\n饮仙醪曲演红楼梦\r\n第六回 贾宝玉初试云雨情\r\n刘姥姥一进荣国府', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c3', '1007', '96');
INSERT INTO `d_book` VALUES ('10', '风神演义', '许仲琳', 'imgs/fsyy.jpg', '中华书局出版社', '2022-05-03 00:00:00', '第三版', '2022-05-03 00:00:00', '第五次印刷', '9787551123426', '50000', '600', '16开', '胶版纸', '平装-胶订', '50.0', '49', '封神演义》(作者许仲琳)是中国古代优秀的神话文学作品之一。它以周武王起兵伐纣的复杂曲折的斗争为主线，描写了许多仙道斗法的故事，塑造了凶残暴虐的纣王、神机妙算的姜子牙、三头六臂的哪吒等一大批栩栩如生的艺术形象。作品充分发挥神话传说的想象特长，幻想奇特，情节引人入胜，创造了一个色彩斑斓的奇妙世界。几百年来，一直在读者中广为流传。', ' 又名《商周列国全传》、《武王伐纣外史》、《封神 传》，中国神魔小说，为明代陈仲琳(一说是许仲琳) 所作，约成书于隆庆、万历年间。', '作者很低调，没有做简介', '第一回 纣王女娲宫进香\r\n第二回 冀州侯苏护反商\r\n第三回 姬昌解围进妲己\r\n第四回 恩州驿狐狸死妲己\r\n第五回 云中子进剑除妖\r\n第六回 纣王无道造炮烙\r\n第七回 费仲计废姜皇后\r\n第八回 方弼方相反朝歌\r\n第九回 商容九间殿死节\r\n第十回 姬伯燕山收雷震\r\n第十一回 里城囚西伯侯\r\n第十二回 陈塘关哪吒出世\r\n第十三回 太乙真人收石矶\r\n第十四回 哪吒现莲花化身', '媒体也说很好看的一本书', 'f0dbdcb6-1857-4063-8759-090265c217c6', '1', '999');
INSERT INTO `d_book` VALUES ('453acc12-f62a-4a37-a7b5-f95bd9faf248', '计算机原理', '薛莹莹', 'imgs/1652148525107-22.jpg', '薛莹莹有限公司出版社', '2022-05-06 00:00:00', '第三版', '2022-05-06 00:00:00', '第五次印刷', '9787551123426', '132440', '300', '16开', '胶版纸', '精装', '58.0', '39', '编辑没有推荐', '现代计算机，大部分都是基于冯诺依曼体系结构，而我们这里谈论的也是此问前提。冯诺依曼的核心是：存储程序，顺序执行。所以不管计算机如何发展，基本原理是相同的。计算机程序实际上是告诉计算机做什么。\r\n', '作者很低调，没有做简介', '无', '媒体也说很好看的一本书', 'c4b646de-8dd0-4f3a-a06f-73cb97ab8574', '0', '1000');
INSERT INTO `d_book` VALUES ('15fb5718-08c0-420d-b42e-19b4175dd034', '童年', '马克西姆·高尔基', 'imgs/1652148811277-15.jpg', '马克西姆·高尔基出版社', '2022-05-04 00:00:00', '第三版', '2022-05-04 00:00:00', '第五次印刷', '9787551123426', '132440', '300', '16开', '胶版纸', '平装-胶订', '58.0', '39', '编辑没有推荐', '该作讲述了阿廖沙（高尔基的乳名）三岁到十岁这一时期的童年生活，生动地再现了19世纪七八十年代沙俄下层人民的生活状况，写出了高尔基对苦难的认识，对社会人生的独特见解，字里行间涌动着一股生生不息的热望与坚强。', '马克西姆·高尔基（Maxim Gorky，1868年3月28日—1936年6月18日），原名阿列克赛·马克西姆维奇·彼什科夫，是苏联无产阶级作家、诗人、评论家、政论家、学者', '这里是基本目录', '媒体也说很好看的一本书', '5e4ea8c8-97b8-4b8b-8da2-f8e881b4a463', '2', '998');
INSERT INTO `d_book` VALUES ('fbd730c3-7a3e-4f12-aed2-131877307f51', '孩子我们一路同行', '王晓春', 'imgs/1652149194487-13.jpg', '王晓春出版社', '2022-05-04 00:00:00', '第三版', '2022-05-04 00:00:00', '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '平装-胶订', '54.0', '37', '编辑没有推荐', '教育书有很多，但是多数都是感性的，冷静的分析几乎没有。写教育书的几乎都是语文老师，像王晓春这样的数学老师确实非常少。我是个数学发烧友，所以特别喜欢王老师的风格，并不是让孩子认错，就解决了问题，要找到根源，从根本上解决。', '作者很低调，没有做简介', '这里是基本目录', '媒体也说很好看的一本书', '4fe9388b-b672-4640-8078-d36d40772ad1', '6', '9994');
INSERT INTO `d_book` VALUES ('74597547-3ac7-47f4-a938-c7fbbbc43bac', '淘气包与马小跳', '杨红樱', 'imgs/1652149343409-20.jpg', '杨红樱出版社', '2022-05-04 00:00:00', '第三版', '2022-05-04 00:00:00', '第五次印刷', '9787551123426', '500000', '500', '16开', '胶版纸', '平装-胶订', '48.0', '30', '编辑没有推荐', '该小说主要讲述了马小跳等孩子的成长生活以及他们和家长、老师、朋友的故事，并由此映射当代儿童的生活现实与心理现实，呼唤张扬孩子的天性，舒展童心、童趣，探析成人世界与儿童世界之间的隔膜误区，倡导理解沟通。', '杨红樱，1962年5月12日出生于四川省成都市，中国当代作家，曾做过小学老师、童书编辑，现为民进中央文化艺术委员、四川省作家协会副主席、成都文联副主席、中国作家协会第十届全国委员会委员，享受国务院政府特殊津贴。', '这里是基本目录', '媒体也说很好看的一本书', '79a263c5-b609-473e-85c8-aa351c56cc53', '1', '999');
INSERT INTO `d_book` VALUES ('a007514d-6771-4f57-b142-98d115d4427b', 'java培训', '郭敬明', 'imgs/1652149499029-7.jpg', '最小说文化出版社', '2022-05-04 00:00:00', '第三版', '2022-05-04 00:00:00', '第五次印刷', '9787551123426', '500445', '500', '16开', '胶版纸', '平装-胶订', '57.0', '39', '编辑没有推荐', '是一本综合讲解Java核心技术的书籍，在书中使用大量的代码及案例进行知识点的分析与运用，并且给出一些比较成熟的开发步骤，帮助读者更好地进行Java的开发。', '郭敬明，1983年6月6日出生于四川省自贡市，中国作家、导演、上海最世文化发展有限公司董事长、《最小说》等杂志主编。高中时期以“第四维”为笔名在网站榕树下发表文章。2002年出版第一部作品《爱与痛的边缘》。2003年，因玄幻小说《幻城》而被人们熟知和关注。', '这里是基本目录', '媒体也说很好看的一本书', 'c4b646de-8dd0-4f3a-a06f-73cb97ab8574', '0', '1000');
INSERT INTO `d_book` VALUES ('8aaf2fbd-43b0-4d60-8037-cf8967566e00', '俞敏洪英语', '俞敏洪', 'imgs/1652149936641-3.jpg', '俞敏洪出版社', '2022-05-04 00:00:00', '第三版', '2022-05-04 00:00:00', '第五次印刷', '9787551123426', '50000', '500', '16开', '胶版纸', '精装', '45.0', '29', '3', '这里是内容介绍', '俞敏洪，1962年9月4日出生于江苏省江阴市夏港街道，新东方教育集团创始人，英语教学与管理专家。担任新东方教育集团董事长、洪泰基金联合创始人、中国青年企业家协会副会长、中华全国青年联合会委员等职。1980年考入北京大学西语系，本科毕业后留校任教', '这里是基本目录', '媒体也说很好看的一本书', '79a263c5-b609-473e-85c8-aa351c56cc56', '0', '1000');
INSERT INTO `d_book` VALUES ('0919dccb-1efe-49de-b1a1-84184ae1edf7', 'c语言程序设计', '张三', 'imgs/1665283603458-B8411742.jpg', '张三出版社', '2022-10-09 00:00:00', '1', '2022-10-09 00:00:00', '1', '1', '1', '1', '1', '11', '1', '32.0', '30', '3', '1', '1', '1', '1', '126b7d19-40fa-4ce7-ab6f-b3df0a07657b', '1', '1233');

-- ----------------------------
-- Table structure for d_category
-- ----------------------------
DROP TABLE IF EXISTS `d_category`;
CREATE TABLE `d_category` (
  `id` varchar(50) NOT NULL,
  `cate_name` varchar(50) DEFAULT NULL,
  `count` int(50) DEFAULT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  `levels` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_category
-- ----------------------------
INSERT INTO `d_category` VALUES ('126b7d19-40fa-4ce7-ab6f-b3df0a07657b', 'c语言', '0', '8fccb0c3-9ba2-4cdd-9f03-0fed8083dfb0', '2');
INSERT INTO `d_category` VALUES ('4fe9388b-b672-4640-8078-d36d40772ad1', '教材', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
INSERT INTO `d_category` VALUES ('4fe9388b-b672-4640-8078-d36d40772ad2', '外语', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
INSERT INTO `d_category` VALUES ('4fe9388b-b672-4640-8078-d36d40772ad3', '考试', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
INSERT INTO `d_category` VALUES ('4fe9388b-b672-4640-8078-d36d40772ad4', '中小学教辅', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
INSERT INTO `d_category` VALUES ('4fe9388b-b672-4640-8078-d36d40772ad5', '工具书', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a461', '两性', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a462', '孕期', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a463', '育儿', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a464', '亲自/家教', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a465', '保健', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a466', '运动', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('5e4ea8c8-97b8-4b8b-8da2-f8e881b4a467', '家居', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '2');
INSERT INTO `d_category` VALUES ('70587abf-392f-4781-b8d7-96e5a77766c6', '教材', '0', null, '1');
INSERT INTO `d_category` VALUES ('79a263c5-b609-473e-85c8-aa351c56cc51', '0-2', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
INSERT INTO `d_category` VALUES ('79a263c5-b609-473e-85c8-aa351c56cc52', '3-6', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
INSERT INTO `d_category` VALUES ('79a263c5-b609-473e-85c8-aa351c56cc53', '7-10', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
INSERT INTO `d_category` VALUES ('79a263c5-b609-473e-85c8-aa351c56cc54', '11-14', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
INSERT INTO `d_category` VALUES ('79a263c5-b609-473e-85c8-aa351c56cc55', '绘本', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
INSERT INTO `d_category` VALUES ('79a263c5-b609-473e-85c8-aa351c56cc56', '英语', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '2');
INSERT INTO `d_category` VALUES ('8204dcff-1425-47f6-b1a9-a1f4440527f1', '历史', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
INSERT INTO `d_category` VALUES ('8204dcff-1425-47f6-b1a9-a1f4440527f2', '古籍', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
INSERT INTO `d_category` VALUES ('8204dcff-1425-47f6-b1a9-a1f4440527f3', '哲学/宗教', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
INSERT INTO `d_category` VALUES ('8204dcff-1425-47f6-b1a9-a1f4440527f4', '文化', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
INSERT INTO `d_category` VALUES ('8204dcff-1425-47f6-b1a9-a1f4440527f5', '政治/军事', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
INSERT INTO `d_category` VALUES ('8204dcff-1425-47f6-b1a9-a1f4440527f6', '法律', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '2');
INSERT INTO `d_category` VALUES ('832756e5-60ba-4a49-b994-7c958a0fc86e', '文学社', '0', null, '1');
INSERT INTO `d_category` VALUES ('8fccb0c3-9ba2-4cdd-9f03-0fed8083dfb0', '程序语言', '0', null, '1');
INSERT INTO `d_category` VALUES ('90a11717-49c7-4b10-a95f-1d0e8926b761', '文学', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
INSERT INTO `d_category` VALUES ('90a11717-49c7-4b10-a95f-1d0e8926b762', '传记', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
INSERT INTO `d_category` VALUES ('90a11717-49c7-4b10-a95f-1d0e8926b763', '艺术', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
INSERT INTO `d_category` VALUES ('90a11717-49c7-4b10-a95f-1d0e8926b764', '摄影', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '2');
INSERT INTO `d_category` VALUES ('b3a36c99-82c2-4529-a605-2fcedb5db32d', '机械', '0', null, '1');
INSERT INTO `d_category` VALUES ('c4b646de-8dd0-4f3a-a06f-73cb97ab8571', '科普', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
INSERT INTO `d_category` VALUES ('c4b646de-8dd0-4f3a-a06f-73cb97ab8572', '建筑', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
INSERT INTO `d_category` VALUES ('c4b646de-8dd0-4f3a-a06f-73cb97ab8573', '医学', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
INSERT INTO `d_category` VALUES ('c4b646de-8dd0-4f3a-a06f-73cb97ab8574', '计算机', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
INSERT INTO `d_category` VALUES ('c4b646de-8dd0-4f3a-a06f-73cb97ab8575', '农林', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
INSERT INTO `d_category` VALUES ('c4b646de-8dd0-4f3a-a06f-73cb97ab8576', '自然科学', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '2');
INSERT INTO `d_category` VALUES ('cc439939-8843-4de5-9770-62a377c22b6c', '英语教材', '0', '70587abf-392f-4781-b8d7-96e5a77766c6', '2');
INSERT INTO `d_category` VALUES ('d0c1445e-1ffa-4424-951a-f89c79267574', '机械版', '0', null, '1');
INSERT INTO `d_category` VALUES ('d88fc1d5-c1a7-4d41-b67e-fc9070db05a3', '文学作品', '0', null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '小说', null, null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d2', '人文社科', null, null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d3', '文艺', null, null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d4', '科技', null, null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d5', '生活', null, null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d6', '童书', null, null, '1');
INSERT INTO `d_category` VALUES ('e3a61c36-ab29-4e92-aeeb-dd67a48d38d7', '教育', null, null, '1');
INSERT INTO `d_category` VALUES ('e9a81015-aa7f-45c2-a90f-c2213d1deeb1', '教材', '0', null, '1');
INSERT INTO `d_category` VALUES ('f0dbdcb6-1857-4063-8759-090265c217c1', '官场', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
INSERT INTO `d_category` VALUES ('f0dbdcb6-1857-4063-8759-090265c217c2', '情感', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
INSERT INTO `d_category` VALUES ('f0dbdcb6-1857-4063-8759-090265c217c3', '四大名著', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
INSERT INTO `d_category` VALUES ('f0dbdcb6-1857-4063-8759-090265c217c4', '科幻小说', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
INSERT INTO `d_category` VALUES ('f0dbdcb6-1857-4063-8759-090265c217c5', '近现代小说', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');
INSERT INTO `d_category` VALUES ('f0dbdcb6-1857-4063-8759-090265c217c6', '古典小说', null, 'e3a61c36-ab29-4e92-aeeb-dd67a48d38d1', '2');

-- ----------------------------
-- Table structure for d_item
-- ----------------------------
DROP TABLE IF EXISTS `d_item`;
CREATE TABLE `d_item` (
  `id` varchar(50) NOT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `book_src` varchar(50) DEFAULT NULL,
  `price` double(50,0) DEFAULT NULL,
  `count` int(50) DEFAULT NULL,
  `amount` double(50,0) DEFAULT NULL,
  `book_id` varchar(50) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_item
-- ----------------------------
INSERT INTO `d_item` VALUES ('119a5b24-a67d-4b38-b06d-81d2e9847980', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', '56ffad80-7f4c-4397-b18b-9352a040c2cd');
INSERT INTO `d_item` VALUES ('192b064e-f413-49d5-8753-4816d0e02b87', '世说新语', 'imgs/ssxy.jpg', '28', '1', '28', '9', 'f9619d7d-ea87-417e-82d1-05ede5e19564');
INSERT INTO `d_item` VALUES ('29598d8c-ac22-40ba-aa56-6238da90e1c0', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', '5fcd1565-f781-43fc-a661-959dc337c4bd');
INSERT INTO `d_item` VALUES ('2bf56065-10ab-4b1f-bb04-9bb1d9270ba9', '孩子我们一路同行', 'imgs/1652149194487-13.jpg', '37', '1', '37', 'fbd730c3-7a3e-4f12-aed2-131877307f51', 'c034db00-57ac-4804-bb59-822733a44002');
INSERT INTO `d_item` VALUES ('2de08e61-6e72-41dc-8ab8-053a065314ba', '三国演义', 'imgs/sgyy.jpg', '88', '2', '88', '13', '2bf36ef0-8a97-49d7-a167-59c9d6ebffa0');
INSERT INTO `d_item` VALUES ('31714d66-14a3-403a-ae77-58495b545af6', '孩子我们一路同行', 'imgs/1652149194487-13.jpg', '37', '2', '37', 'fbd730c3-7a3e-4f12-aed2-131877307f51', 'e7855050-22e3-4d1a-bc79-0738fb969b4e');
INSERT INTO `d_item` VALUES ('38ac11c7-ca70-45a9-9df6-6d6e7a9508a8', '世说新语', 'imgs/ssxy.jpg', '28', '2', '28', '9', '2907c3e0-66b8-4c3f-8e3c-6cd2cd7bdd6c');
INSERT INTO `d_item` VALUES ('4558d52b-3c27-478d-aa49-cb998ba24507', '孩子我们一路同行', 'imgs/1652149194487-13.jpg', '37', '1', '37', 'fbd730c3-7a3e-4f12-aed2-131877307f51', '24b28a92-2873-44f8-9011-9d5b6c97420c');
INSERT INTO `d_item` VALUES ('4dac3082-4ddf-4abe-afba-fe6c1b6f9a22', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', 'd4af50ac-d399-45a9-8e65-de24aa859101');
INSERT INTO `d_item` VALUES ('4e637860-2c48-4cfa-8123-4f1f50cd036c', 'c语言程序设计', 'imgs/1665283603458-B8411742.jpg', '30', '1', '30', '0919dccb-1efe-49de-b1a1-84184ae1edf7', 'b5879e9e-7de3-4698-af21-025cd70ae923');
INSERT INTO `d_item` VALUES ('4e962872-26db-4282-b1fd-bd5b550713ad', '淘气包与马小跳', 'imgs/1652149343409-20.jpg', '30', '1', '30', '74597547-3ac7-47f4-a938-c7fbbbc43bac', '26a001b1-e49b-4627-bd0b-c363b020ce82');
INSERT INTO `d_item` VALUES ('56b43a02-7f31-4141-b402-5a3a42ea30c3', '水浒传', 'imgs/shz.jpg', '88', '1', '88', '12', '219716fd-c66b-464e-a6d7-f619da390e2f');
INSERT INTO `d_item` VALUES ('6048301f-7a82-4950-955a-3e6b8fa2f7f7', '红楼梦', 'imgs/hlm.jpg', '88', '3', '88', '14', '463e51ee-ff53-4598-850c-7739231a14e3');
INSERT INTO `d_item` VALUES ('6411446c-dd24-462e-9d0a-2e994cb57d4a', '风神演义', 'imgs/fsyy.jpg', '49', '1', '49', '10', '1ea56eeb-4282-47bc-b43a-411d8115dd98');
INSERT INTO `d_item` VALUES ('688855a4-de13-425a-a20e-5607775f3973', '儒林外史', 'imgs/rlws.jpg', '10', '1', '10', '1', 'ddab9b81-1520-4be7-a793-ec0957958d3a');
INSERT INTO `d_item` VALUES ('6a7a564b-f255-40d0-abcc-84243b871673', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', '55fd2aa3-98ac-4fdd-920b-52138541ddf5');
INSERT INTO `d_item` VALUES ('6b876f0b-8cf4-4614-8a2d-92718f280de3', '儒林外史', 'imgs/rlws.jpg', '10', '1', '10', '1', 'a3a517fd-ed80-4040-b11f-1a344e45d975');
INSERT INTO `d_item` VALUES ('724f0dfa-b7da-4d82-91c3-80c260bf822e', '孩子我们一路同行', 'imgs/1652149194487-13.jpg', '37', '1', '37', 'fbd730c3-7a3e-4f12-aed2-131877307f51', '004c98f4-d05c-46c5-9863-9d2bc08dc3aa');
INSERT INTO `d_item` VALUES ('7be02b80-e853-4359-ad4d-b73969e04e8d', '聊斋志异', 'imgs/lzzy.jpg', '14', '1', '14', '4', '56ffad80-7f4c-4397-b18b-9352a040c2cd');
INSERT INTO `d_item` VALUES ('81e1de3b-6100-49e8-8d77-49e76e1d6733', '童年', 'imgs/1652148811277-15.jpg', '39', '2', '39', '15fb5718-08c0-420d-b42e-19b4175dd034', '463e51ee-ff53-4598-850c-7739231a14e3');
INSERT INTO `d_item` VALUES ('8ee0f9fa-96e7-4a45-9c3d-fefbcfb59631', '聊斋志异', 'imgs/lzzy.jpg', '14', '1', '14', '4', '966eabd1-28ab-402a-b972-1daed1aba7f1');
INSERT INTO `d_item` VALUES ('99c6bc77-4ab1-42f4-8af3-bf7bd3e56f53', '西游记', 'imgs/xyj.jpg', '88', '1', '88', '11', '966eabd1-28ab-402a-b972-1daed1aba7f1');
INSERT INTO `d_item` VALUES ('9e38e923-bd12-4519-9656-bec868bdda74', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', 'b5879e9e-7de3-4698-af21-025cd70ae923');
INSERT INTO `d_item` VALUES ('a6ccea0f-969b-49fa-9d9c-1e4735d9cbba', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', '004c98f4-d05c-46c5-9863-9d2bc08dc3aa');
INSERT INTO `d_item` VALUES ('b2c47bfa-beb4-4ea0-8245-815f91bc2938', '金瓶梅', 'imgs/jpm.jpg', '120', '1', '120', '5', '0fedbf92-4205-4bca-b602-b00d733e8efd');
INSERT INTO `d_item` VALUES ('c8af4adc-aac8-4324-bc2c-1502ee57db55', '东周列国志', 'imgs/dzlgz.jpg', '19', '2', '19', '6', '116e9cd8-bdc5-4e83-adb4-7926c44c2027');
INSERT INTO `d_item` VALUES ('d78763a3-5357-44c0-b0d7-be2333abfa06', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', 'c3ca73c4-792b-43be-8a2c-4561540a6db4');
INSERT INTO `d_item` VALUES ('ea9b51a7-0c31-4dad-81dd-9b4dd1ebf7db', '聊斋志异', 'imgs/lzzy.jpg', '14', '1', '14', '4', 'f96d2961-85e9-4e74-a60c-153232593777');
INSERT INTO `d_item` VALUES ('ec69dcac-5840-4d6c-ac20-a0ebcd347a20', '红楼梦', 'imgs/hlm.jpg', '88', '1', '88', '14', '219716fd-c66b-464e-a6d7-f619da390e2f');
INSERT INTO `d_item` VALUES ('f0f32bd7-c733-478d-bafb-e1f9104e1a48', '聊斋志异', 'imgs/lzzy.jpg', '14', '1', '14', '4', '88227bbe-1d6d-45eb-8b7b-c82193aeaa5b');
INSERT INTO `d_item` VALUES ('f2321f4e-e42b-46cc-bbbd-720ef426960c', '金瓶梅', 'imgs/jpm.jpg', '120', '1', '120', '5', '0f56ff5b-b5c9-40bf-bfb8-fd3bc2fb58fb');
INSERT INTO `d_item` VALUES ('f25fb22a-18a8-40e8-a0ef-1167736d778e', '三国演义', 'imgs/sgyy.jpg', '88', '2', '88', '13', '2620bd35-8f1e-4044-9df7-c1238ec59c0c');
INSERT INTO `d_item` VALUES ('f5017e70-0752-4b4f-94bd-270484cd5fd8', '孩子我们一路同行', 'imgs/1652149194487-13.jpg', '37', '1', '37', 'fbd730c3-7a3e-4f12-aed2-131877307f51', '0fedbf92-4205-4bca-b602-b00d733e8efd');
INSERT INTO `d_item` VALUES ('f99e2b60-1651-4674-8b18-4f94d28c07ed', '红楼梦', 'imgs/1652157825888-hlm.jpg', '40', '1', '40', 'f3cf2e9f-527c-4ec6-bdbe-3e217ac704e1', '05491f85-451f-4688-bda5-a9cf721c4858');
INSERT INTO `d_item` VALUES ('fa229642-bc33-4333-8293-759e24146846', '三国演义', 'imgs/sgyy.jpg', '88', '1', '88', '13', 'e3d9c5ce-25ec-434a-ac72-b7fabe67e696');
INSERT INTO `d_item` VALUES ('fa9ab712-96bf-4030-95c8-c5fae5eac89c', '世说新语', 'imgs/ssxy.jpg', '28', '1', '28', '9', '966eabd1-28ab-402a-b972-1daed1aba7f1');
INSERT INTO `d_item` VALUES ('fd4000ae-6140-41a5-a13e-b536e77d97ac', '金瓶梅', 'imgs/jpm.jpg', '120', '1', '120', '5', 'f96d2961-85e9-4e74-a60c-153232593777');

-- ----------------------------
-- Table structure for d_order
-- ----------------------------
DROP TABLE IF EXISTS `d_order`;
CREATE TABLE `d_order` (
  `id` varchar(50) NOT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `order_times` date DEFAULT NULL,
  `addr_user` varchar(50) DEFAULT NULL,
  `addr_name` varchar(50) DEFAULT NULL,
  `total_price` double(50,0) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `addr_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_order
-- ----------------------------
INSERT INTO `d_order` VALUES ('463e51ee-ff53-4598-850c-7739231a14e3', '2022-10-091028610322593742848', '1970-01-01', '1', '1', '342', '未支付', 'afac17f6-e366-404e-9507-921ed5c7893f', 'f6b233c7-667c-4dfd-a54d-5db0f63dc4d5');
INSERT INTO `d_order` VALUES ('b5879e9e-7de3-4698-af21-025cd70ae923', '2022-10-091028620079786360832', '1970-01-01', '张三', '山西省运城市', '118', '未支付', '10400fe9-16c3-43c6-a8a7-4a6f8fc0c8a3', '57ad4479-46e3-41f6-870c-a3df1b256fcc');

-- ----------------------------
-- Table structure for d_user
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` varchar(50) NOT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(50) DEFAULT NULL,
  `email_code` varchar(50) DEFAULT NULL,
  `regist_time` date DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('419319d4-088e-4a49-8d1a-9b2482c6163c', 'llll', '1@qq.com', '50848899e121e834b971b90c27643d6c', '1', null, '2022-11-13', 'jBxn9x');
INSERT INTO `d_user` VALUES ('57ad4479-46e3-41f6-870c-a3df1b256fcc', '111111', '986555910@qq.com', '5734cbdc479b55df2a3536487f727490', '1', null, '2022-10-09', 'eQCVpC');
INSERT INTO `d_user` VALUES ('7b142a48-e087-4346-b3e9-3758ac219e15', 'zhang', '1970226529@qq.com', '3320055e84ac49483521ea3b51f3ee4f', '1', null, '2022-11-13', 'vuvy3q');
INSERT INTO `d_user` VALUES ('95e3ce68-752a-4a87-b6c8-b074f51f70ce', '小小白菜', 'admin@qq.com', '40ca2943b96cee50b4181d030bae1b1d', '1', null, '2022-11-18', 'hDL7Eq');
