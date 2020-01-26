-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: studentboot
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('10002',5,'source',NULL,'{\"resourceId\":\"10001\",\"properties\":{\"process_id\":\"allowance\",\"name\":\"è¡¥è´´ç”³è¯·\",\"documentation\":\"è¡¥è´´ç”³è¯·\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-55156C4C-204D-4BEA-98C8-2BB5D3E05CBA\",\"properties\":{\"overrideid\":\"begin\",\"name\":\"å¼€å§‹\",\"documentation\":\"å¼€å§‹\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-E5B27D1C-A8A6-4478-AB20-FACA1AF45013\"}],\"bounds\":{\"lowerRight\":{\"x\":210,\"y\":45},\"upperLeft\":{\"x\":180,\"y\":15}},\"dockers\":[]},{\"resourceId\":\"sid-02C0979B-B51D-485A-84CF-F7300B02969D\",\"properties\":{\"overrideid\":\"selfVerify\",\"name\":\"ç”³è¯·äººåŠç†\",\"documentation\":\"ç”³è¯·äººåŠç†\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${username}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BDC573ED-1869-4DE6-A313-909751A3A1F2\"},{\"resourceId\":\"sid-3D7DBE33-1336-4330-B597-50670E22F9C8\"}],\"bounds\":{\"lowerRight\":{\"x\":245,\"y\":230},\"upperLeft\":{\"x\":145,\"y\":150}},\"dockers\":[]},{\"resourceId\":\"sid-17C99FB8-085C-4465-B4A3-F41B5A57E5D4\",\"properties\":{\"overrideid\":\"leaderVerify\",\"name\":\"é¢†å¯¼å®¡æ ¸\",\"documentation\":\"é¢†å¯¼å®¡æ ¸\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\",\"className\":\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\",\"expression\":\"\",\"delegateExpression\":\"\"}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C28D0100-D70E-4459-84DE-378A90FE47D3\"},{\"resourceId\":\"sid-D397F841-1048-4E86-A45B-5E6FD1CFB6A2\"}],\"bounds\":{\"lowerRight\":{\"x\":245,\"y\":380},\"upperLeft\":{\"x\":145,\"y\":300}},\"dockers\":[]},{\"resourceId\":\"sid-823E44D3-E191-496C-9115-96B327B135D6\",\"properties\":{\"overrideid\":\"end\",\"name\":\"ç»“æŸ\",\"documentation\":\"ç»“æŸ\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":209,\"y\":478},\"upperLeft\":{\"x\":181,\"y\":450}},\"dockers\":[]},{\"resourceId\":\"sid-E5B27D1C-A8A6-4478-AB20-FACA1AF45013\",\"properties\":{\"overrideid\":\"submit_apply\",\"name\":\"å‘èµ·æµç¨‹\",\"documentation\":\"å‘èµ·æµç¨‹\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-02C0979B-B51D-485A-84CF-F7300B02969D\"}],\"bounds\":{\"lowerRight\":{\"x\":195,\"y\":149.625},\"upperLeft\":{\"x\":195,\"y\":45.375}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-02C0979B-B51D-485A-84CF-F7300B02969D\"}},{\"resourceId\":\"sid-3D7DBE33-1336-4330-B597-50670E22F9C8\",\"properties\":{\"overrideid\":\"give_up\",\"name\":\"æ”¾å¼ƒ\",\"documentation\":\"æ”¾å¼ƒ\",\"conditionsequenceflow\":\"${outcome==\'æ’¤å›\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-823E44D3-E191-496C-9115-96B327B135D6\"}],\"bounds\":{\"lowerRight\":{\"x\":324.5,\"y\":464},\"upperLeft\":{\"x\":209.15234375,\"y\":190}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":324.5,\"y\":190},{\"x\":324.5,\"y\":464},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-823E44D3-E191-496C-9115-96B327B135D6\"}},{\"resourceId\":\"sid-C28D0100-D70E-4459-84DE-378A90FE47D3\",\"properties\":{\"overrideid\":\"leader_agree\",\"name\":\"åŒæ„\",\"documentation\":\"åŒæ„\",\"conditionsequenceflow\":\"${outcome==\'é€šè¿‡\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-823E44D3-E191-496C-9115-96B327B135D6\"}],\"bounds\":{\"lowerRight\":{\"x\":195,\"y\":449.4375},\"upperLeft\":{\"x\":195,\"y\":380.71875}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-823E44D3-E191-496C-9115-96B327B135D6\"}},{\"resourceId\":\"sid-D397F841-1048-4E86-A45B-5E6FD1CFB6A2\",\"properties\":{\"overrideid\":\"leader_not_agree\",\"name\":\"ä¸åŒæ„\",\"documentation\":\"ä¸åŒæ„\",\"conditionsequenceflow\":\"${outcome==\'é©³å›\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-02C0979B-B51D-485A-84CF-F7300B02969D\"}],\"bounds\":{\"lowerRight\":{\"x\":145,\"y\":340},\"upperLeft\":{\"x\":57.5,\"y\":190}},\"dockers\":[{\"x\":1,\"y\":40},{\"x\":57.5,\"y\":340},{\"x\":57.5,\"y\":190},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-02C0979B-B51D-485A-84CF-F7300B02969D\"}},{\"resourceId\":\"sid-BDC573ED-1869-4DE6-A313-909751A3A1F2\",\"properties\":{\"overrideid\":\"self_agree\",\"name\":\"åŒæ„\",\"documentation\":\"åŒæ„\",\"conditionsequenceflow\":\"${outcome==\'æäº¤\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-17C99FB8-085C-4465-B4A3-F41B5A57E5D4\"}],\"bounds\":{\"lowerRight\":{\"x\":195,\"y\":299.15625},\"upperLeft\":{\"x\":195,\"y\":230.84375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-17C99FB8-085C-4465-B4A3-F41B5A57E5D4\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('10003',2,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0w\0\0\0\0\0z\Ù.\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®\Î\é\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\0 \0IDATx\Ú\í\İ	xT\åù÷ñg²öÙ¥ˆ\ì.({)›\Ô*­¡h]ú·\î—ö­oÑª_­+¶b\ëŠVDmBŠŠˆ€\Zø#ûA@!	’!I€d\æ½\ï3g\Â0$M&™“|?\×u{fÎœ™‰\Ï¿y\æ9\Ï9c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¨.š\0õ\Ç\ã‰Ù¶mÛ›6múmFFÆ€ôôôØ¼¼¼ˆ\â\âb\áiÜ¸ñ‰-Z\ìoÒ¤\Éj\Ùü±iÓ¦\í¤\Õ@¸!\ê\ï½÷\ŞkÛ·oŸrøğ\áˆó\Ï?\ßô\ï\ß\ßt\ê\Ô\ÉH˜›˜˜£ŸŸŸoö\í\Ûg’““\ÍÆ=aaaiG}üµ\×^{V\á„5k\ÖÜ²|ùò—rss£\ã\â\â¬P?«ûnÙ²\Å$$$”9rdwvvö¯¿£E\ê\Âi\Ôñ\ŞzÄ Aƒ–ÏŸ?ÿ\Ş\áÃ‡G\Ü~û\í¦C‡Fz\ãgı\íÚµ3cÆŒ	‹ŒŒlõ\İw\ß\İzñ\ÅØ°a\ÃFZ„;PKÁ¾bÅŠ\Õüñ\Ğû\î»\Ï\\v\Ùe?*\Ôu\ï\Ş\İ0 rÕªUce™³q\ã\Æu´2w †i]ƒı‘G±\ÆÕ«C³f\Í\Ì\àÁƒ#¿ø\â‹=zôØ—œœ¼•–\á\Ôc×¡\í±WW°û4l\Ø\Ğô\ë\×/\ê\Ë/¿İ»w\ï$\à³hq„š0š\0uÎŠYºt\éË¿ü\å/\Íy\ç”\ç\èÒ¥‹™<yrtXXØ›´8w ,\\¸ğüüü¨ñ\ã\Çõy&NœØ iÓ¦\çN™2\åzZ„;\ä^{rròu:\İ1222\è\Ïw\Ûm·5—\Şû]´<w ˆô\ÈÓƒF\è<öš c\ï\Ñ\Ñ\Ñ\çÊ‡IWZ„;$zJs€Ru\èÛ·o¦,®¡õA¸A¢\çŠ\éÓ§O>\ç\àÁƒ›\Éb$­\Â=	˜\Îd©Iİºu‹•\Å\0Z¡$‚&@]¢gw\ÔjRÓ¦M[Ë¢˜\Ö=w Hô¬zvÇšd?_­\Â’\è\èh|M***:@\Ï„;DMš49‘““S£\Ï)Ï—+NA\0\Â–fÍš¥¥¦¦\Ö\èsnÛ¶\í{Yl¦õA¸Áë¹¯\Ğ_PªI«W¯ö\Èb­\Â’\Ü\Ü\Ü\'7o\Ş\ì.--­©§,Ş½{w/YÎ§õA¸Aòø\ãµW\Z¯&,]ºt\Û\íNOHHH¡õA¸Á\í½?øŸÿü§¤z\ï9o½õVo—\Ëõ*­\Â²7\Şx#±  `\Ç\'Ÿ|\Ô\ç™9s¦öÚfdd$\Ğ\ê Üš\é½_ùşû\ï\íŞ½;(¿mÛ¶7l\ØğK\éµßš””TB‹#\Ôğ3{¨“’““s.¸\à‚”õ\ë\×O\Ğ\ß<ÕŸÆ«.û÷\ï_5}úôrñøøø\Ïim\î@\rÚºu\ë¶^½ze®\\¹ò²ŒjÙ²eµô\Ø5\ØKKK_NHHx‰V\á\Ô	\ãMİ»w\ß+?.<<¼\ä¼óÎ‹\nûI£‘9ÿû\ß\æÍ›7\Ò\ãñ<,\ËÑºe.š\0õşR’„ú7¾\à¶\Ûnk2p\àÀgy\×\âeË–-œ;wn÷’’’bcÿ–\á„V\È_#!GTTT\ß^½z\Z6lX£s\Ï=7\Ê\ív·[³f¹\ä’K²\"##³·oß¾[zû\á»w\ï\Ö!˜ır\×7233\ßa\ç)w „M:µ£ú5g¨\\½H–¥W!\ËY\ê\Ï\æ\é¹bô”ó9@	„;\à\ÜıYL—zT\Â|-§c;\0\î\0\0\Â}=¤†¬»Oª—\ßõÁö:À1øl\ÔÃ¥\ZK–:\"µ\Éxóô)=)?`ûşR\Ïû]¿\Ò\Ş Üò•½\ÔCT3¤–K5²\Ã~±}\Û/ô?YYYÚ“o-5Qª«T¼}9Áşpøš&E¨cX0&\Êw!&&&[z–\Ç$©\ÎR\ÏH}g‡½ş{yÓœ:d\Ğsjø½­õ–\ê&å–ºH\ê \æ1v\Ï\\Cûª\â\â\â|	v“——§\Ûş\Í\îÕ¯¶\ï{Lj•\Ôq©\Ãv„;d:Ü²HªØ¾şœ\Ô,©ŸI]+õ¨T¬\Ô8©Rzú\0ÿa™\Å\ì3ô%%%º\Ã\\&õ´\Ô©¶Rc\ì\Ç\Öñx†e@¸5@{Ò·I\í1Ş¡\r\ç•öms\ìe¡T;;\Ø+\är¹ôÇ®uöL©<\ãM“bN\Ûÿš\æ\áÔœ»ò\Í\É\Ù/Œwè¥¹T\ã’©T§Nô”\êE©‹iV\î@\è\Ñ!•öò\Z©3ş\Ö\é±c\ÇtXF\Ç\Ø\'I\İm\ßwˆñN¥\ä\ßw †\r°{\ç:,£\Ã/:³E‡gt¼\\w¤>.\Õ\Şo{ıi¦]’——§=ö?\ÛWg\Z\ï÷u\æ\äpN7š\Z„;Ps6\Ø\Ë#ö²\Ğ^\ê4\Æ\ÍöeÂ¸Ç¯WÿB\àƒ´n\İzgÀª®ó#pæ¹£.x\Ğx§:¦Jı\Éx8J7\Ş\nü¶K¡©@\Ïp×ŒwŒ\\{\ïzô\é@»¯S\ØÛ„Ó™\á8‹N…ü•\ÔR\ãK\×ù\ëw\Z\ïi^\ã›*wÀ¹I\í³/Ï²{\í:ò1\ã=eÀš„;\à<·ú…¼\ïHUš\Ñ\éŒM\Ì\É\Ó\0õ_SQ\×—³N4¡i@¸\Î\ã?E±uÀmŒw\îûi&î€³¼n/õœ\ëÛ÷\Ä`\çØ¥\Ó$\Z\ïğP/0æº\âˆ\İY\Ñó\Ê,²{\ê\Í¶™@3;\à\Z\âO\ï\é}õ¼\ë:ò ]™~Õ…¦=wÀ9\î7\Şs¶ë‘ª?ïŒÎŒi%U\ê·]¤ñ\Å\n\î€<d÷\Êo¼C/z„\ê`\ã=¸©\Ğ\îµ\ĞL¨O–A]¢¿È¤¿¬t…ñ L]Roš\Ô\Û4wÀyR\í÷³²÷F\ãw×€×™3H\İ u;Í„ú‚a\Ôznv=\ZU\Ï/£\ã\ï:õQ\Ç\âo‘ú·”ş\Â\Ò\Zš	„;\à,=\ì¥ş’\Òg\Æ{6È™v¨\ëĞŒ\ÈTL3pœ©¹9yš_µ&A}Ä˜;\êšı\å¬\ëN³€pœi¤]\ï4H¥;WûImµ¯ï¢™@¸Î¢\çr\×\ÄÖƒ˜\îô[§Áşµ}½Í„ú‚1w\ÔzN™\"SùÁJœ\Ï„;\à@\Ñ~\á~™\ßzß˜»›&\á8‹şS[û²ò[¿\ÛÎµ—Gi&\ÔŒ¹£®\Ğs\ËÌ·/ë˜»Xw®\ê9\ÜK\ì\Ì6š	ô\Ü\ç\èm÷\Üõtú+LiRC¥vJuµ·9_\ê/4\è¹Î¡.u³/û\Â\\\Ï©³c\ØK\í\Ísº_î€ƒ\èt|m¿Ÿ}G¤\ê˜ûŒw\'\ê8©+i&\î€3-¶—¾ùì³¤b¤:J}hNÿ\ál \Îb\ÌuI¼½ü¿ö\Ò7óg{Ù–&=wÀ™º™Š\Ç\Ö\éÌ€p¨—\Ô•Ü\Ê{„;\à,:ä¢§H³¯†¼¥šh8J„;\à(wú£Os»§>Ô¾®?\àq#Í„ú‚1H\ÔSŒ÷—–ü\é‰\Äô¨\Õÿc¼?ı€\Ôqš\nô\Üçˆ¯\ä¶6RIRMi&î€³<c¼?­\×!\à[\éCvı\ïv¸óMõov\Ôÿj,5J\êwR¥ZJ\İ\ï·\Í\Ó\Æ;<ó4\Í\Âp†»ôgôôTº\ãT\Ïy½\Ôd©_I\åIm¢©@¸Î¡§\Ğ\Ù2Kü\Öi˜¿d\×#\Æ{º\ß\íıašuc\î¨ôt¿úc\ØzJ\ßÊ¹ı1©\ïŒ÷×™v\ĞsòUp[²ñ\Õ\0ôÜ:&&\0\á\0 \Ü\0„;\0€p\0\î\0@¸\0w\0\0\á\0 \Ü\0„;\0€p\0\Â\0@¸\0w\0\0\á\0 \Ü€p\0\î\0\0\Â\0@¸\0w\0\0\á\0„;\0€p\0\î\0\0\Â\0@¸\0\á\0 \Ü\0„;\0€p\0\î\0€Ó¹h\Ô7“\'O~À\år=y¶\Û\'$$ğ\ïôÜÓ‡…m¦@¸uL||üYœ\å\æ?\Ğb \Ü‡ğx<\ïa·½\İZ„;\àœpû·ŸĞ¥\Ë\åz—\Ö\á8Dll\ìJ	îœŠn—Û¢e‘•™™¹’\Ö\á8Äœ9sŠ¥w¾ø½÷…III%´wÀYfW\êV ‡……- ‰@¸£C.ä…\ë].W„,~\È\È\ÈXN+pF‡\\$\È\ß\nX]6K†!\î€C»\Ëu·}ñ3Z„;\àP\Ğy\ì‡}\×\í!™,·Û½ˆ\Ö\á8”=4³,`õ’\Ä\Ä\ÄZ„;\à`\çUÿ\ëöÌ’\á8]LL\Ì\Zÿ\ë\Ñ\Ñ\ÑI´\nwÀ\á\ìšvÙ½ö=r=‡V\Óqj…„e\ÌŞ½{\ï.((¸¾°°°\çÑ£Gc\Ünw\Èş½YYYf\íÚµ\æ\Â/4mÛ¶\r\İ°.—G¾YŠŠZ{\âÄ‰™Ã†\rû‚ww\Ô	õ\Û%,Ÿ+..m×®iÚ´©iÜ¸±ñI\ãT‘~@\Ê¦\É\Ë\ËÓƒ°—––\î(**º~üøñÉ´wMZZ\Ú\Â={ö\\Õ¹sgÓ¾}{\íi\Ò(A”nRRRŠ\ä›Ò”Ñ£G@‹À\'œ&@u»\ÔU\çŸ¾iİº5Á^ôQ‹-\"<ø\Ëë¯¿~\ÛÜ¹sw\Ñ* \ÜQmt(Fz\Ò`oÒ¤\Éi·+8`2·¿o2w|`²ö~a\n\ì5\Ñ\rÛ˜ˆ\è&4^EEEiÀGgffNœ:u\ê\Ç\ï¼ó\ÎAZ‚¢\Êtç©±\ëPLEÁ¾o\ã¿MA\ÖN\ã.=n<\îS˜ı½I\Ûğ†)\Î\ÛOVƒ†\rš®]»º\Ã\Ã\Ã_ 5@¸£ºz\íw\ë\ÎSc/Ov\êW¦\äø\Ñ\Ó\Ök\Ğg\íM¢«IÇ[DDDœ·lÙ²Ki\r\î¨2î¨³b*\Zc/ª¤w®½zTŸ6m\Úd\Ê\âjZ„;ªL\ç±\ëtÇŠxJOT|g›¬F­Zµ\ê ‹Q´\"hT• ¤³6Pû\äu8G­i	\ĞsG•\é5 \"ÿ ½¯6\î¾\È\Í+ş\êM \Ü\áH-:1Q\rO[\ÙÀ´\è2Œw8Q£\Öç›†­z–»¾q›h €p‡S•(:m]É±|\Z \Ü\áDÇ²D-8´\ã´Û\Şm\Ò\ÖÏ¶¶@¸\Ã!r\Ó7J°¿nG¦\"…9©&e\í\Ë\æH\Új\ãa\Î;Pm˜2… ô\Ö\ìZlõ\ÌÏ††@·Ï—\Ş}›MŒ5U\0=w„í‰Ÿm°ŸÒ‹—~\êºWi@€pG(ÒøO¥gŒPuË \Úõ\Zó8\0\Ğs\0\î\0ªKo©À½\×÷Iu:‹\Üx\Èp‚2\Â@H\Ú.5[*\Êo\İ/¥ö•³m”_\ép\î7Rıı\ÖM”\ZC“†\ÆÜú§­Ô…ö\å¥v(–z[ª\È/¤.õ˜T±\ÔeR\ÑRz0B?©_K=*5\Â\Şö¸}_\ĞsPKôç¯–H\İ ¥¿¹ºXjº\à÷K})u³Ô“vh«öA–T¤\Ô/¤–K¥\Ø«¥VÑ´„;€\Ú\å;¸¥Tw»\ç®\ç_±]/øm§\î–z\Î\îù\ß.5Iª‡\İc&%\Ü„cRw\ç\êGRú\ã\Ú:\\›[Î¶H\İd\0¼\"µ\Ğx‡e´\çÿ/š2´0\æ\Ô_‡\í\Şy©ñ\Õ\èT=£\ã\éï—³½oGkssr¸FgÌ¤I}\'5\Ô04C\Ï@­ÿ\Ûo`_\Ö¥¾Cƒ5œ\ï³{\å>:fœT»\Âı.k/¾«\Ô\0©^R±4-=w\0µGw‚.±/ko}ƒ}¹”h¿ƒ_O]{\éK\í\Ë:Sf‹Tª}½\Ğxwª\ê6›iVz\î\0j\×h\ã£;Fun»«üAj“ñÎ¢™k÷\Öı5’º\Ëxwªú÷\êA\Ï@\Ğ.‰\Æ;Î¾R*]j‚\Ô\ã‡W\×H=(õƒñ\ìt±İ«¿\×x\ç½û\èp\'\â\'\Ü„€]~—“\íğh\rùû\íË±v~]9u+\áN¸#D\Å\Å\Å=\ìr¹’322%%%q\Î\İú\çL\á\\X…û¢–0\æõ˜\Ç\ãy¿mÛ¶¹ôó¦L™2\á\Úk¯mJ\àš5k\ÌÂ…+¼=33\Óœ¶~Ú´igõøñññ&--í¬¶-,,4/¾øb•ÿŸ?\Î;ô\Ü|\Ò{×¯\ß\×I\Ğ_^ !¿H®¿4gÎœ\â\Úü\ÛrrrÌ‰\'*¼½U«VfÒ¤IfÑ¢Ef\åÊ•eA¿a\Ã³d\ÉSRRbV­Ze|ò\Ér\ïÿ\î»\ïš.]º˜Î;ŸñoÙ¾}»INN®ğöÃ‡›-[¶”}\èõ7š\Ë/¿\Ü\ìŞ½\Ûzüü|³o\ß>óÀğ\Æ\á\Z\ÕHB>N–q\Å\Å\ÅÇ¤G¿@\Â?±&‡nn¼ñF#0\Ö\åõ\ë×›¢¢\"Ó¸qc\ëú?şñóö\Ûo›6m\Úx\ß\ÈV¸«‹.º\È\Ä\ÄÄ”…ö„	¬À\ì±\Ç*|®]»vY g#;;\Ûü\ìg?+»¾m\Û6s\î¹\çšF¼_vZ¶lizõ\êe}\Ğ\\}õ\Õ\Öß¬\ß<ô\ïĞ :t¨µ~\è\0„;j“\äò[	ûß¶m\Û6_÷3¹şj°{ôn·\Û\nD\í\íú®khû‚\İG>€\Ê./X°À4l\Ø\ĞÈ‡QYˆfee™v\íÚ•û\\Ú³?r\äH…‹\ÙlŞ¼\ÙDEE™µk\×Z4¾\Ç\Õ\ZıF0hĞ ²\íÛ·oo\"##´‘u‚\Ñ\í·n\İj]÷*’ğ]÷|¨¡›\Æò\ÚE$=zm\ß=‡\n\Ês<x°,@{\î:\Æ\îóı÷ß›;wš\éÓ§›>ú\È,[¶Ì´n\íı‰şıû—m÷ô\ÓO›‡~\Ø\êYû\Ó\à\Õ\Ş~^^^…‹\×4h\ĞÀz\\\í}\ëcø>h\æÎ{J°ë‡’~X\è0’~¸\ìİ»\×\nt_\Ï}ô\è\ÑA\ë¹\ë˜\É\ë2ƒw\ëO6\'!!!…p}\Z\ì\Óy¿M7\í\É\êğCuÓye=w\"\ÑÒ¢\Ú3¿\á†\Ì+¯¼bºv\íjÆkm£=\æ¿şõ¯¦yó\æ§=\Ï\çŸnz÷\îm²~ ~#ğ™?¾¹\ã;\Ì\êÕ«Í³\Ï>{\Êm\Ï<óŒõ\ÍA?\Â\Â\Â\ÌÒ¥K­;šfÍš\ÕX\Ïı«¯¾2›6\é¬E\ŞóU\äø\Çú6,ó(\ï\ÙrM¸¥\Çî–{D@O~ôz»…\Úÿ\Ğ\×_mn¹å–²\ëó\æ\Í+7\Ø\ÕgŸ}f\í\ëƒ~(\è‡@ +V˜;vX—ugmlì©§P¹ó\Î;­\íÅŸw\Şy\æŠ+®0úfÄˆ\ÖX¼\çû÷\Üõˆ~T·\áÃ‡›\Ô\ÔT\rx\Ş\ëÁùw@¸‡b°\ËW-¾ª–Czœ¾©%\ĞK\ì@“e˜\\Ï‘\år©w£££—è˜»„¨\'—ÿxy\à°LEÁ¨C\"ºƒS{ùúÂ§¢ñt]¯\Ã&¾a\r_Ñ¢í¯´´\Ô\ZöÑ7\îÔ£ò\Ã\ÃÃ­\0ğÁUş=ú·3\Æ\ê½û†kt¦Œ>—öì«“\Î\Z\Òÿ—iÓ¦ñ^ÿñÿ\êTÀ³C\åõ\ĞOHxG\Û=s}\è¼BM\Ùy\r\Z4X.Sˆö‚u\Çdy\Ã2«=jx\â	kz¡†¨ÿ¼w½^ƒ×±xŸ‡z\È\\u\ÕU\æƒ>8exF{\Û\Z\Ô\ï¼ó™={v\Ùz}\ßÌœ+¯¼\ÒZú†`t†\Ñ\è·\rx©³rô„~\èp\r@¸£¦„\ÙÁ®\É8_\êc	¯Eµ1\Ï\İ?\ØOû#\ÃN?şNwª>ÿüóÖ´Hÿ*11ñ´\íüqk|\ŞZ£ºN™¼ô\ÒK\Í#<b®½öÚ²)3g\Î4>\ê\í\Ğo}ûöµW{\åşôCHC\\?|\ç!C¬\å¬©ú÷\éc\0„;‚N‡\\d‘$\ä;p)\'Tş6\í5kUfİºu§…\ëğÍ¬Y³ŒÿŒ]§;Eu\çh\à\Ì¥aı\æ›oZ\ãö¾§tj\åM7\İTÖ›oÚ´©µ\É\èú˜÷\ß\Ù0\Ï\âÅ‹\Ëf\ïè°’ş*77\×zœ³9p\n \ÜñS<\"½õ\é¡Ï¯\í#Q+¢Az¦Y&şÁşê«¯–õ\Äÿö·¿²®óğT‘‘#GZ¥t8%p6²Îˆ)\ïD`\Ğ\ë·€pGKHHx<\Ôÿ\Æ;}P‡fªK\à·Ÿ3;P›xw\0\á\0 \Ü\0„;\0€p\0\î\0@¸\0w\0\0\á\0 \Ü\0„;\0\î4\0\î\0\0\Â\0@¸\0w\0\0\á\0„;\0€p\0\î\0\0\Â\0@¸\0\á\0 Ü\Ó\ŞDaa·\ÛMC„\0yReQBK€pG•\Å\Ä\Ä\Ì\ÏÏ§!BÀ‘#G’e±™–\0\á*‹ŒŒ\\™››KC„€\Ì\Ì\Ì<Y$\Ñ \ÜQe\Å\Å\Å\Ïdddœğx<4F\íJ\É\Î\Î\î/\Ë4wTÙˆ#\ÖJ°oMOO§1jQrrò2y\ÒÇ»†\Ö\0\á\ê\ê½_Ÿ’’R˜——GcÔ‚œœœ¤\×ş+·\ÛıGZ„;ª\Íøñã¿•`¹\ê›o¾\É%\àk>Ø·m\Û\Ö\×\år\İ*¯C2-\Â\ÕjÌ˜1\ËKJJ®Ù²eK^ZZZ6cğA—’œœ<{\ëÖ­ƒ\åò½\Òş‹h\îZÀ—––NIIYÿ¿ÿû¿‡v\ïŞ½\éÈ‘#™¡>>++Ë¼ÿşû\Ö2”\é<öÃ‡,ß\â¿ú\ê«\Â\ì\ì\ìse\İX‚\"hT7¢\Ñ\ÅÒ¥Kddd\\-5J®7“Š	Õ¿y\ãÆfÓ¦M&55\Õ\Z4(”›·ƒ\Ô!©R/°ó„;jÜ¸q\ãô`\ZGP7C\Ó%\à6m\Ú^=8\Ã2\0@¸\0w\0\0\á\0 \Ü\0„;\0\î€S­¯`½\Î\r\ïAó€pœe¤½œe¼\ÇohEI\ÅJ=/\ÕVjÍ„ú‚ƒ˜PW\Ü$µBj•\ÔR—\Ù\ë3¤®“\Z.5Z\êQš\nô\Ü\çxÖœ<\Zö©+\ízÀ^÷•\Ôš	„;\à,-¥Hu+\ç¶7¥:Iñ+\Ş \Ü™iN1\î	¸­»\Ô\ëRûh&î€³\Ü/•j¼\ãí¾“\Ò_\ïnn¼;Xzª¨K†\Zï°ŒÎii¯\ë\à\î“h\"î€³4\n¸~\Ôx\ÇØµ\ç/\Õ@\ê\0\Í\Âp–­~!¿µœÛµ\×\ŞW*‘¦\á87\ä-¤iPŸ°C\0\è¹!\é©ÿ\Åv·J}KspœAO1p‡TJ%\Û4•\Úm¼còÌ„:a\Ô:#fˆT;©‚€÷¸^/–úÁ\Âp¥vx\ë\"GH\r”ú§}\Ûa»‡\ÔË .\Ú.Ud÷\Øÿ‡\æ\0=w\0\0=w D\é©–I•\ï™\"H}H³€pœ«‰ñ\×}\0M\Âp¾vİœ!\Ø7\ÓT \Ü\ç\Ğ\Ó”a›hš	„;\à,{h\à$f\Ë\0\0\á\0 \Ü\0„;\0€p\0\î\0@¸\0w\0\0\á\0 \Ü\0„;\0\î4\0\î\0\0\Â\0@¸\0w\0\0\á\0„;\0€p\0\î\0\0\Â\0@¸\0\á\0¨s\"h\Ô7“\'O~À\år=YÁ\Í\Ó\ã\â\â¦û¯HHHp\Ñj \ç„ú›>,l3­\0\Â¨c\â\ã\ã—x<œ³\ÜüZ„;\àó\Ïp{şG>–\ĞT \Ü‡Ğw†M¬qv—\Ëõ.­\Âpˆ\Ø\ØØ•²Èªd“†z{ff\æJZ„;\às\æ\Ì)–Å¢\nn.²{÷“’’Jh-î€³¼U\ŞJ	u\ë\ßEXX\Øš„;\à0:\ä\"A¸\Ş\årE\Ëâ‡ŒŒŒ\å´wÀat\ÈE‚<°÷~\Ü\î½/aH„;\àP\âŸVp\Óg´wÀ¡8 ó\Øú­Š’\Êr»İ‹h\î€C\ÙC/‹V/ILL, u@¸\ÎvÊ¸»\Ë\åb–wÀ\ébbb\Öø_N¢U@¸g\Ğô­\İk\ß#\×sh8\çsGPx<˜½{÷\Ş]PPp}aaaÏ£GÆ¸\İ\îı{³²²\ÌÚµkÍ…^\Ø\í–[nñ„\ê\ß)>ùfq8**j\í‰\'f6\ì\Şm \ÜQ#$\Ôo_¿~ıs\Å\ÅÅ±\íÚµ3Z7\Ö#>Cú\ïş\Ío~òm+.ùÀl•——7133sÌ—_~¹£¨¨\èúñ\ã\Ç\'óÎƒ?†eP­\Ò\Ò\Ò¦¦¦¾Ü²e\ËØ‹/¾\Øt\î\Ü\Ù4m\Ú4\äƒ\İ1ÿ`¥›4ib:v\ìh.ºè¢¨N:õ\×^ü\çŸ~­\ÂAv©«.¸\àÓ¡CB Q‚¬}ûö¦ÿş\r$ô\ß^¾|ù´wT+ŠÙ³g\ÏU={ö´z–0?l~\Û\ìú\âÿ™Ÿ\Ï0i\ß4\Åyûi¸jĞ°aCÓ¯_¿\Æòaúö§Ÿ~Ú‡\áj¡;O³²²\Ó!˜Š‚}\ß\Æ›‚¬\Æ]z\Üx\Ü%¦0û{“¶\á\r¾\Z¾k×®\îğğğh\rî¨®^ûİºóT‡Ê“ú•)9~ô´õ\ZôY{“hÀjÒ±c\Ç\ç-[¶\ìRZ„;ªL§;êŒ˜Š\ÆØ‹*\ék¯Õ§M›6™²¸š–\0\á*\Óy\ì:#¦\"\Ò\ß\Ù\ã¦«Q«V­:\Èb-æ¹£\Êô\0%Ç\Ú\'¯\Ã9²hMK€;ªL<e{ˆüƒö¾t\Ú@¸#ø\"4¯ø«c4=~€p‡#µ\è<\ÄDD5<m}xdÓ¢\Ë0\Z \Ü\áDZŸo\Z¶\êY\îú\Æm. \0\ÂNUz¢\è´u%\Çòi€p‡?z\È:µ\àĞ\Ón;zx·I[?\Û\Ú\0\á‡\ÈM\ß(Áşº)<²·\Âm\nsRM\ÊÚ—Í‘´\Õ\ÆÃœw \Ú0e\nA\é­Øµ\Øê™Ÿ\r=\rnŸ/½û6=&škª6\0z\î)\Ú?\Û`?¥/=ü\Ôu¯Ò€\0\áP¤=ñŸJ\Ï	 \ê–Aµ\ë5\æq\Z \ç\0 \Üø\Ík’\ßu=#`\Ì\î3 ’Û®•bo&PG\Â¡ICú\×R¹~\ë:J\İ õ¤\ß\ë-+U(\Õ_j„Ô—•<¦ø¿uÃ¥\ZÛ\ÕÃ®-R¿’J”Z\ÎK\î¨>\ÅRñ\ë“zVjq%÷\ÛT\Îí¤.µCtÀm_\ÙË¿KıÙ¾ü†Ô~\ïör„;‚D‡K\î•ú\íYl;\ÒîŸé¨ +\í^º±?:Kõ¶?@ºH\'5\Î/ô\î¨f3\í\Ğ\Õ\×L\Ç\Íõ4‹«*\Øv…\ÔeR»\ì\ëJ}S\Îv¥ñ¡j\0\0\áIDATJ\r¶C]ä´—ı\ĞÙ¾\Ïk†aÀ‘Ø¡\ê÷K\Íó\ë\Ív\Ïü©J^Ã»¥\ÙÕ§’^¼~#(5\Ş!ÿ\ê&\Åœ„;‚d²\Ô»—\ío‰\Ô6©E\ÜO\Ç\É\ì\Òñû\ÊNÁi¼;fı+Œ÷\à\\Ë„¶Iv°¯«\àöwwvLy\ÚKM´/÷®\ä9\n\ímuxF‡b6\Ø\ë\Ø\á\ÎÙ¼\0\Â\ÕH\äx©¾•¹­‚õ\ÏÙ½{õ­” ªœ\íÒŒw\Øf—\ä:V?\İxg\İüñN‡<\Ì\Ë8_»C×¡r‚ıÇ¼^Kü.g\Ù¶\Ñ!İ‰šk¸\Ş\çmû¶QR\ïK%ğR\0ô\ÜQ3¡_=H\éh9\ëó¤ôw\îfK\İ\Zğ\í\à%©~RJ¥\Ø\ëõ@§#\Æ;4ó;š \Ü\\ñg¸ı½Jn\ÓqûÀSü\Ë^n¶«<4;\à<\Ë\0\0\áÔ¾’’“˜˜h]...6§\Ô\Ë/¿l9R¶ı;ÌŠ+\ÌÊ•+O©7\ß|\ÓdffVú\\¯¿şº9~¼òóÓ¿õ\Ö[f\ãÆ§ü}¯¼ò\n/w\à\ÇX°`Y»v­uyÿşı&//\Ï|ù\å—\æ\É\'½\çS»\á†L\ãÆË¶ßºu«\É\Ï\Ï7—\\r\É)µf\Í\Z~\Êcÿğ\Ã§\\oØ°¡Y¿~}¥Û¸\İnSXxr\ßwDD„\É\ÎÎ¶>x\ÔŞ½{y\ÑP\ãs‡\ã,Y²\Äüõ¯5Ó¦M3<òˆ\É\ÈÈ°ö¾û\î3\Z5²\Âø¢‹.:Ùƒ	3\É\É\É&66ö”\Ç\Ñûixk/¿yó\æÖº„„Ó»wo\ë>\ê\àÁƒ¦iÓ¦\Ös*ıĞ²eKsÿı÷Ÿöw\éNƒ\r¬\ç\Ñ\Ç\Õû8q\Âú\à\éÔ©“ú\0\á”C‡SF\Ze\Î=÷\\3v\ìXó\ĞCY=\ã;\ï¼\Ól\Ø\à=ş\ê_ÿú—Y´\è\Ôwûô\éc†\rv\Ê:>\Ñ_·n7n\\\Ùú‰\'\ÒK\×`\îÛ·¯u½gÏ\Ös+JJJ²¾I\è\ßÔ¯_?\ë\é6­Zµ2›7o67\ß|3/÷ š\Ç+:Ş¬½]\r³`\Òa\rò)S¦˜o¼\Ñ\Z\ënÑ¢…yñ\ÅÍ„	Ì­·\ŞjfÏ]6\ïiõ\æ{\îÚ“\ÖmSSS\Ë\Â]{\äO<ñ„4hu]\Ç\ëõÿK‡RRR¬! ?ÿ\Ù{’Lı–p\ÅW˜§z\Êú\æ0f\Ì“n=ß•W^i=N›6mÌ!Cx“€pvÀó’W¿M›6™.]º˜_ÿú\×A}7\×ñt5t\èPkœ\ÛÂª¢Ÿ“&M²‚\\{\Ú>Ë—/7\çŸ¾\Õ+÷ï©«\ï¿ÿ\Şü\å/)º\Ñ\Ğ\Ö \×o\rúA\àOw\È\êğ‹~\Èüñ4\Ç\\x\á…\æ\Ã?´†{~÷»\ßYMš4\áÂ½š\Í\áe®N>|xĞŸ§u\ë\Ö\Ö0‰†¯ö\Ôu¼]‡fü{\â|®\Ã&ş¶o\ßn\r\Ó\è\ÏşóŸfÆŒ§\×ø\Æ\Øu¬^\Ç\ãcbb¬\Ë\çœs\ê¯.\\¸\Ğü\á0½zõ²>$Ú·oo:dfÎœi}öY«¯ûF\Í„{uJHHH‘\Å^\ê\àùı\ï?=\ØC2>\Z;v´zÅ;w¶B^‡V´×®;1•‘ø‡¸ï§Ÿ~j¼\îğTº\Ô¥:6®=\íÀ\á\Z}\ÜÀ»–\Ï]ŸGÿÃ‡—ımÚ‹Ÿ7oyúé§­\á\Zı¦A°ƒp\Î@C\\wX\ê0È½÷\Şk­\Óqrİ©©\ß´W?kÖ¬²\íu§\êÑ£‡5\ÃFï«¢££­\r\ì@:\\S^\Ï]\Çûu‡ªOVV–\Õ3\×ùòj\çÎ\æÀ\æ{\î±ö\è\ÃM7\İÄ‹\Â8\rYù¦`…\ê\Ïşs«÷®Su.»\Îs×±n\í\É?ÿüó\ÖzŸşıû›ñ\ã\Ç[;Huÿ@e/ùOsô\ï¹Ò¥\êØ±c¦´´\Ô\n~}\ìgy\Æ\Zò¹ë®»¬\éš#G<m\\6b‚\ã\è\ÎI\í…\ç\æ\æZ;FW¯^]v\0“†¾Î¦\ÑõtÇª\î@}\á…¬)Œ¾¹\í•\Ñy\ê:S¦2Ú£\×oúœ}ô‘5\Æ\î›!£\×_|Á‹z\îÀ\Ù\Ğqlóö\Í?÷§½dÿqw\Ú\à¬::¬U\é6=öX…\Û\è<zİ±\n\Ğs\Îö\Íö“nû1\Î\ìg»\r@¸\0w\0\0\á\0„;\0€p\0\î\0\0\Â\0@¸\0\á\0 \Ü\0„;\0€p\0\î\0\0\Â\0w\0\0\á\0 \Ü\0„;\0€p\0\Â\0@¸\0w\0\0\á\0 \ÜQ\ëo¢°0\Û\í¦!B€¼©²(¡%@¸£\Êbbb\æ\ç\ç\Ó!\àÈ‘#É²\ØLK€pG•EFF®\Ì\ÍÍ¥!B@fff,’h	î¨²\â\â\âg222Nx<\Z£v¥dgg÷—\åš„;ªlÄˆk%Ø·¦§§\Óµ(99y™¼\écÇ]Ck€pGuõŞ¯OII)\Ì\ËË£1jANN\Î\Òkÿ•\Û\íş#­\Â\Õfüøñ\ßJ°\\õ\Í7\ß\äğ5\ìÛ¶m\ë\ër¹n•\×!™\áj5fÌ˜\å%%%\×lÙ²%/---›1ø KINN½u\ë\ÖÁrù^iÿE4	|\ÂiT§¹s\ç\î™:u\ê\Â\Ü\Ü\Üş\é\é\éMŠ‹‹w………¹¢££I\Ï2dÿî¬¬,óé§ŸšÖ­[›\Ø\ØØı;u{vvöª½{÷nØ¹sgË¢¢¢Y7uÜ¸q+y÷UMŸ>}F\ÉBk…|h&9ıÿ\'‚—\ÕM‡ht±t\é\ÒWK\é?˜fR1¡ú7oÜ¸\ÑlÚ´É¤¦¦šAƒ…róv:$µC\êv‚pG“Ş¤L\ãˆj\â\â\âf\Èbºü£Ó¦M›Á«§c\Ì\0w\0\0\á\0 \Ü\0„;\0€p\0\Âpªõ¬×¹\á=hî€³Œ´—³Œ÷ø\r­()=\Üôy©¶R»h&\ÔÄ„º\â&©R«¤º\Ì^Ÿ!u\Ôp©\ÑR\ÒT \ç8Ç³\æ\äÑ°¯H]i\×öº¯¤\Æ\ĞL \Ügi)5@ª[9·½)\ÕIŠ_ñ\á8\ÈLsrˆqOÀmİ¥^—\ÚG3pœ\å~©T\ãoô”şzws\ã\İÁ\n\Ô\ìPE]2\Ôx‡et†LK{]¿pŸDpœ¥QÀõ£\Æ;Æ®=÷|©Rh&î€³lõù­\åÜ®½ö¾R‰4wÀ¹!h!Mƒú„ª\0@\ÏI\çHı÷,¶»U\ê[š„;\àzŠ;¤R*Ù¦©\Ôn\ã“\ç`&\ÔyË ®\Ğ1C¤\ÚI¼\Çõz±\Ô\Ïv\î€ó,µ\Ã[\Ï9Bj \Ô?\í\Û\Û=| ^`Xu\Ñv©\"»\Çş?4\è¹\0\è¹!JO5°Lª\Äx\Ï¹@\êCš„;\à\\MŒ÷¼\îh\n\î€ó\r´{\ì\æÁ¾™¦\á8‡v ô\ÛD\ÓL \Üg\ÙC\0\'1[\0w\0\0\á\0 \Ü\0„;\0€p\0\Â\0@¸\0w\0\0\á\0 \Ü€p§	\0€p\0\î\0\0\Â\0@¸\0w\0 \Ü\0„;\0€p\0\î\0\0\Â\0w\0@A ¾™<yò.—\ë\É\nn7\İEBB‚‹V=w \Ô\ßôaa›i\î@¿\Ä\ãñ\äŸ\å\æ?\Ğb \Ü\ç˜†\ÛKõ?ò!°„¦\á8„„öÎ°\É	ı\Ë\åz—\Ö\á8Dll\ìJY©d“©¬\Ì\ÌÌ•´wÀ!\æÌ™S,½ò\Å\Ü\ì¶{÷“’’Jh-î€ƒHx¿^ÁM\Öx{XX\ØZ	„;\à0:\ä\"_X\ÎM‘R?ddd,§•@¸£C.\Ò;Ÿ°\Ú7$³„!\î€C¹\İ\îOü¯K¨»í‹Ÿ\Ñ: \Ü‡:p\à€\Îc\Ïò]w¹\\zJ,	ıE´wÀ¡t\èEıÓ€\ÕKhî€ƒÎš‘°g–wÀ\ébbb\Öø_N¢U\àtœòõ\ÒÔ©S;–””L’^ú\È\â\â\â\Æ;KF;;¹¾iò\äÉ›\å¶U\á\á\á	\ï¾û.\'\á„²)S¦L’\Å]n·{„„wT9›\è¹Û»\Êm]e9©´´ôÙ¸¸¸$¹şF||ü;´ w „H@k`¿\âñx\Æÿ„»’û’Ç¸M\Âş\æ\Ä\Ä\Ä\ïhQ\î@-›<yr\\XX\ØK\Ò[o\î[núô\éclºw\ïnš5kf\Z7nl\nMNNIII1k×®57n4\'Nœğ\İm˜\Üo“ôş\ï \Â¨\İ`¿B‚ı	öp_¨_~ù\åfÜ¸q¦u\ëÖ§mkUûö\íÍ!C¬ ÿø\ã\Í\'Ÿ|b¤×®›4’^ü\Ûğ1ğ¯\Ó\ÂU\á4\êxı¿\Æ\Öû\\û\á‡6Ã†\r3\r6<«Çˆ‰‰1ıúõ3_|±ùö\ÛoM^^\ï¦+ûö\íû}rròVZºnor£d¡µB^\×$§ÿÿ0u’±K/ı%_°÷\ì\Ù\ÓÌ˜1\Ãt\ê\Ô\é\'=\ŞO\ï/^¶Nûe\éÁ÷¢µA¸5õ\Æ{\İ7Æ®=ö?ı\éOÖ˜zU\èp\Í}÷\İ\çÿ¡C4³im\î@\r\Ğ\é\ì¿\Ğ\Ë:Æ®\\\Õ`÷ø{\î¹\Çz\\\Û0y¾\ëiu\î@ğ\İå» ;O\êPLEôñ®¸âŠ²\ë\Ò{¿\í§<\Îu\×]7&..\îa^.³eP§è‘§\Òkÿ¹¯×®\á&L0‹/öM“¦cü			)•\İgÔ¨QmÚ´6U®^#\ÕÈ¾\éq^9\î@%\ìS\nXc&ıû÷7-Z´\Êó\è¼øAƒ™¯¿şÚ·J\Ãzfy~\Î9\ç\\*½û{¥\Æ\È\ßÖŒW	„;ğ#\é¹b|—/¹ä’ >—>¾_¸ô÷)S¦Lozªƒ\ßI¨7°ÿ6^ \îÀO4Àw¡[·nA}¢®]»ú_7\Êx\Çû!Şœ0\áTŸv¾:tL\ßAê‹Ÿò8ò¡0ƒ—-$L\'Ü\Ğ\å\ÛIYm\Ó+¢\Ó\"	\î@\Í(ğ|~~~P^O2V	=?¼Ë®3y”—-¤\Ì!ÜĞ“)\Õ]/\èI¿‚\îúø~ö{<\Û].—RXw¤vô»M\Ï8V\áyœfğ²p*·\Ù\î{ö\ì©ö˜ü\éiılš7o\Ş\"Y.\Z5j\ÔÛµk7I\Ï/a?! \èO\Øÿ\î\Ø\Û\n\Â8[¨+$PuÎ¹u>ö‘#G\í¹ôñı¬ğ]HJJ*‘\Å|»Œ=‹\æj©	¾€p~\Ì:\"baii\é?ô\â–-[LvvvPd\Ò!™\r6xüz\àó+\Ú6!!!I3_/O<ùRYü¾œ=P­øjˆ:gÊ”)\ËôhP½¬ç€™:ujµ?‡¶ù\àƒ|WW\Êõ\á´<B	\'C]ô¢\ï‚ş‚Ò¾}ûªõÁõñ>ú\è#OY\É\åz•&\áY||üBcƒ\èO\ã=ÿüóÖ´\È\ê \ÓgÍšU\êv»}\ßzWfdd$\Ğ\ê Üšq³T–^HOO7\Ï=÷\\•^ƒ]>(<û÷\ï÷Mk,^û­öT ¤ğª¨“’““s.¸\à‚}¾:\ç<\ìğ\áÃº\Ôô\î\İ\Û4m\ÚôG?\Å<õ\ÔS¥\ß}÷]Y‡Hû÷ò-\ásZ„;Pƒ¾ù\æ›\ä>}úè€»ş²F˜ö\Ü?ÿüsSTTd:w\îlıøõ™è¬˜…š—^zÉ“——W\ì\çÁ„„„—he„*fË Î›<yrœ,^ö?—ºş‡\ï]OÛ«gÔ“€\éÑ¬:ô¢®(iO_\Ê}\ì\Ø1ÿ\áK=½Á=\ìshY\î@-\Ó_J’pŸ\í›\"ù­\Ô1öøøøoiQ\î@h…ü5Ğ·IÈ2g\ßJ©7233\ßa\ç)w „Ù¿µz„üP¹z‘ñ^á‹w–£FO)0ÿL¿\n\0\0\0\0\0€\ÊL–\ê\âw]\ÇÛŸ9‹û-1\ì\âM‹úBO\ì•\êw]wŒú~\'/\Ê^\ê˜û…ö‡€¯Kuò»ş7©\æ4\'B§üE}0@\êM©v)ı¼®R¥.–\Ò’Im°C\ß÷zGı>\ÚJ=Ds\Â	8Buö\Ê\ÇI-—ú‹\Ô<©MR»¥†H\Í2\ŞY1ş?ˆªC1:c\æ<©Ë¥Ú—õş¤<4+\è¹µK‡Z\ÚK=hóa\ãÏ·]\Ï=£?´ú¶\ß}4\ÌÛ—oğ»\Ü\×\îñ„;P\Ëò¤ş-\Õ_\ê+»\'ÿ‰½\ŞÚ­\î\Ó\Æx‡kô>÷“¤.£9\áË >øÀ\î\ëJ)RÓ¤\Z\ïP‹ö\Æõ\Äb+ü¶\×!™uR¿5\Şs\É\ìzO\êS\ã=\È	\0B\ßPu\ÙG\êN¿\Û\Z\ïĞ‹?\Ê\Ñ_Wj)o÷ìŸ²\×ôÜ ­;BuFL´\Ô\Z)ıqj\é&\Õ\İ\î\Åoµ·\× ¿\Ëól©k¤\æJ\í‘ú¯ñ\Ó\ì¶{ô\0€Z\Ô/\àú\Í=÷Ÿû}ş\Ğõ[~—uŠ$\ã\î\0Pp \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ş?8\r“«,9\î\0\0\0\0IEND®B`‚',NULL),('10005',1,'è¡¥è´´ç”³è¯·.bpmn20.xml','10004','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"allowance\" name=\"è¡¥è´´ç”³è¯·\" isExecutable=\"true\">\n    <documentation>è¡¥è´´ç”³è¯·</documentation>\n    <startEvent id=\"begin\" name=\"å¼€å§‹\">\n      <documentation>å¼€å§‹</documentation>\n    </startEvent>\n    <userTask id=\"selfVerify\" name=\"ç”³è¯·äººåŠç†\" activiti:assignee=\"${username}\">\n      <documentation>ç”³è¯·äººåŠç†</documentation>\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"leaderVerify\" name=\"é¢†å¯¼å®¡æ ¸\">\n      <documentation>é¢†å¯¼å®¡æ ¸</documentation>\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"end\" name=\"ç»“æŸ\">\n      <documentation>ç»“æŸ</documentation>\n    </endEvent>\n    <sequenceFlow id=\"submit_apply\" name=\"å‘èµ·æµç¨‹\" sourceRef=\"begin\" targetRef=\"selfVerify\">\n      <documentation>å‘èµ·æµç¨‹</documentation>\n    </sequenceFlow>\n    <sequenceFlow id=\"self_agree\" name=\"åŒæ„\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\n      <documentation>åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[{$outcome == \'æäº¤\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"leader_not_agree\" name=\"ä¸åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\n      <documentation>ä¸åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome == \'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"leader_agree\" name=\"åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"end\">\n      <documentation>åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome == \'é€šè¿‡\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"give_up\" name=\"æ”¾å¼ƒ\" sourceRef=\"selfVerify\" targetRef=\"end\">\n      <documentation>æ”¾å¼ƒ</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome == \'æ’¤å›\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_allowance\">\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\" id=\"BPMNPlane_allowance\">\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"BPMNShape_begin\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"BPMNShape_selfVerify\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"145.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"BPMNShape_leaderVerify\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"145.0\" y=\"300.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"181.0\" y=\"450.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"self_agree\" id=\"BPMNEdge_self_agree\">\n        <omgdi:waypoint x=\"195.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"300.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"give_up\" id=\"BPMNEdge_give_up\">\n        <omgdi:waypoint x=\"245.0\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.5\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.5\" y=\"464.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"209.0\" y=\"464.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"leader_not_agree\" id=\"BPMNEdge_leader_not_agree\">\n        <omgdi:waypoint x=\"145.0\" y=\"340.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"57.5\" y=\"340.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"57.5\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"145.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"leader_agree\" id=\"BPMNEdge_leader_agree\">\n        <omgdi:waypoint x=\"195.0\" y=\"380.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"450.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"submit_apply\" id=\"BPMNEdge_submit_apply\">\n        <omgdi:waypoint x=\"195.0\" y=\"45.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"150.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('10006',1,'è¡¥è´´ç”³è¯·.allowance.png','10004','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0N\0\0\è\0\0\0&š\0\0\ZIDATx\Ú\í\İMl\Ô\çÀñ9r\ë1·=\æ\Ö[^\å²\ê¥R3\ÆV¬˜:	mcÄªªCÁ4\Ô	I7’[-²”l7Q$Ò•ÀiP+§\Ø\Ä\nµS\Ñ6\Z\Ú.°†\ÚøE\Ø&\ãfl\ì™gÿ²\Óağø°™ñ|>Ò£D;i<ÿoyõc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\Â\Öó\çÏ¿÷\î»\ïN½ú\ê«ù\ï|\ç;¡±±1lß¾=\Ô\××‡]»v…\Ö\ÖÖ¹\×^{mğğ\á\Ãÿfb@UóØ±cÿ÷£ı(|\ï{\ß\áw¿û]H§\Ó!›Í†(şull,üñ\ï¼óNø\îw¿^zé¥¹\æ\æ\æÿ6A ª$üù+¯¼ö\î\İ{\'ŠóóóaµÎ=¾ÿı\ï‡\ç{nvÛ¶mO™&°\ÙO™[~ù\Ë_N>ÿüó\áÄ‰k\nf±\î\î\î\Ğ\Ô\Ôœ>MÍ?şxz÷\î\İ\á\âÅ‹\áa¸zõjˆŞ¹s\ç/L\Øt\âI3F3>fù0\ÅŞ·¿ı\í|]]\İS6ø˜f<>¬“\æR\'Ï†††\Ïo˜6°\î¢o=xğ\à\Ç4\×Ó¯ı\ëü;2&T¼\ãÇ_‰Ïß¾};¬·]»v\å\Üe*ş´_§_r´Î;œ:Š\ßŸz—­Õ³\Ï>›K¥ROš>P‘\â\Û(\ßzë­°‘\Ş|ó\Í/·o\ß~\ÂôŠ\ß{\ßF¹‘\æ’p˜>P‘\âvÜ¸qcC\Ã922’K\Â9oú@EŠŸr´ø%şû\â\'+™>P‘bÀ\á*\Ö3\Ï<³\á\'\Î/¿ü2\'œ@\Åzñ\Å7ü1\Î\ë×¯\ÏzŒ¨Xûöí»½\ÑÏªô\ÑGcU*\Öë¯¿ş¿ı:\ÎŒy\'P±~ø\Ãşk¼»¾‘\ïª««»\íC@E{é¥—no\Ô{Õ“»\éW’\Ó\æ-S*ZSS\Ó\ìÙ³g#Nñó8¿ô\éHÀ¦ğ\Üs\Ïe\×ûó8\ã\ã©ñ´YSS³\ÅÄŠs|ö\Ùg\×\í\àÏŸ?#ùw\ä|<°©\Ô\×\×ÿgrò|\è¿shxxøV\Í9wÑ\Í\Z\ÏÿŠ¿X\ía<Nšsµµµİ¦lZI\ä:’€\æ?ø\àƒü<a”ÿ\ÉO~r)\Ş=ß¾}û[¦\nlzñ1\Ï\ä®õ\Äó\Ï?ŸûÓŸş´¦b<yò\ïIx§\ãA\ÓªñôùFhccc\î\ÕW_ù\ío;\íÚµù\Å‰\Ø\ß{\Ş\Ó\Ó3z\àÀñ\ä{\ã‡ßŠ§LÏUmÇ_ON¡]I‡“\ã\n\Ö||\ïy|¥w,\ÃG\Ã\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0E‘‰¡\\aM›À?\ÃÙ°R8kkk\ÛL\n\à\îx/\ÎLMM\ÍSX\å©3•Jµ›À\Òñ\\\ê±\Îi§M€5œ:=¶	°r<¯;m¬Ar\Â\ÜYÎ—M`u§\Î;u:m¬>œ\r\Ş9l˜Â–ÁÁÁ\áO?ı4ôöö†“\'OZ¼zzz\Â\'Ÿ|’O\Ö;*@Œ\æ\éÓ§\Ã\Ø\ØX˜µ\Ñ\Z}}}ù$¢oØ•P\æ\âIS4\Ë\'\É	tÖ®„2ï‹Vù¬x\×İ®„2/TÁN`\Â9=u#şş\ç\áB\ÏÁ;+ş}üš\Ø	\'\ç+3™Ÿ´/œû\ÕŞ»VüZ¼Mğ„„³h\r_øğh.®kNp‚p¯¿~üZ\Ép\Æ\ÛO8A8‹\Ö\ç\'”g¼Mğ„„S8…x°p\Æg\ÑK…3\Ş&x\Â	\ÂY´.õÿ¬d8\ãm‚\'œ œE\ëfú|øü7ûï½›|-\Ş&x\Â	Â¹Äºò‡w\ï	güš\Ø	\'\çRkf&\\\Z8r\ï\İô\äkñ6ÁNÎ¢w\r]\ìÿi\É\Ç8\ãm\Ş=$œ œ§\Ì—N…?wÿ d4Wüø½NŸ\Â	UÎ•N™NŸ\Â	\ÂYtñ®æ”¹\Ü\éS\0…ª.œ÷\Í\Å%€\Â	\Õù§%œ€p\n\' œ\Â	§%œ œ–p‚pZ\Â	\Â)œ\Â	§p\Â)œ€pZ\Â	\Âi	\'§%œ€p\n\' œ\ÕÎššš-v-¬“\íÛ·\ßL¥R»„ss„3„ğD:\Îô÷÷‡}ûö}( °>\á\ëfmm\íN\á¬\Üp÷f³Ù°hff&=zôö/¼ğM;\Ö\'œ‹k|©¨p–o83™\Ì\Ócccs¡„ÁÁÁ\Ğ\Ş\Şş—\Æ\ÆÆ­v<¬O8¿:T8\Ë/œ‰­CCCƒ¹\\.¬$ŸÏ‡\î\î\î|KK\ËA»\Ö/œ_@\ã]x\á,¯u\æÌ™055•k41192‘ü™ş‹\İ\Ïj`=\à¬òX\ét:ttt„\É\ÉÉµvó\Î\ÏÄŸ­ö½¬˜\á4…‡úœ\é\äTÒ¶ø¬¬gy­>ø 477\äV\Í\ä„z5ù™\É\ä\Ïöz*•zR+0Œ‡Î»‚Y.q&ÿ–\\\årû£zr(	`{[[\Û|r’\Ì-óø\æLgg\çß’\ï½¿ß\×\n\Ãxx\á\ÌÄ‹ª\Ô\ëş\Ê!œ\Ë}\íQ\ßş(ŸUOşÜ¾V__öØ±c¹\â\'Š._¾|¡®®n&ù\ágMMM\ÛñZagnK0…³r\ÂYğg\Ù\Ğ\ÒÒ’œ\Ïf³S­­­Cñ?ˆñ\ëvºV\Æ# œ\å\Î(ş09v\Å\ë!ş\Õ;‡´\Â0„S8½W]+C8…Ó§#i…a§p\n§V\å\ÎÇ¼I8µ\Â0„\ÓN­0á´„S+\áN­0„S8µ\Â\ìC8…­0á´„S+C8-\á\Ô\n\ÃNK8µ\Â0N\á\Ô\n\Ã@8…­0á´„S+C8-\á\Ô\n\ÃNK8µ\Â0N\á\Ô\n\Ã@8…S+´\Â0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+\áN­0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+\áN­0„S8µB+C8…­0Œ2\Õ\Û\Û+XÂ©†ÁZœ>}:766&Ze°®]»ö÷$œ³v¥VF™;u\êÔûúúò£££t:]ñ\Ñ\ì\é\é™K\Öv¥VFH.Ö¶\ä¤3\ï&V\â:s\æL\è\è\è]]]¡Rÿ?Ä“¦hj…a°!B[\'&&ò“““¡¹¹y\ÔD´\Ã`CCCƒaÁÀÀÀ|*•j7­0Ã „L&ót.—…:4\ß\Ô\Ôô¸\éh…aÀFFF\æB‘©©©\\}}ıY\Ó\Ñ\nÃ€\"\Ã\ÃÃ½¡„\ãÇ\ç’}\Ó`JZa° i\ã\Ùl¶T7C>Ÿ---Ùššš-¦¥†‰t:	+¸r\åJ|¢¨Ë´´\Â0 \Ñ\ßß¿R7\Ã\Ì\Ì\Ìd\Ü;[ML+ƒª·ÿş_$a\\6œ­­­CNœZaP\àı÷ßŸ-\ÍË—/_HöM\ÆcœZaP`Û¶mO%\\ê‰¡™ºººÏªk…aÀ>|.>ƒ^\è\í·ß¾X[[û™\éh…aÀ\â]ñ\î\î\î\\Á‹ß¯¦R©\Û\Ş9¤†a,c÷\î\İ{&&&\ÂÂ‡|\Üô^u­À0X…\Î\Î\Îñø±r\É^¹n\ZZa°\nñ®y\Ü\'ñ	#\Ó\Ğ\nû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0ªjOŒ\Ä}±Âš6)­0ø\çhX)œµµµm&¥†w\ï‹ñeÂ™©©©\ÙbJZa°\ÊSg*•j7!­0Xzo,õX\ç´Ó¦V†a°†S§\Ç6µ\Ã`\åıq\İi­0\Ö 9a\î,\ç\Ë&¢«\Û#w\ët\Ú\Ô\nS0V¿G\Z\ì\ì\Ã\Ø0!„-ƒƒƒÃŸ~úi\è\í\í\r\'O´6xõôô„O>ù$Ÿ¬#v¤VFˆ\Ñ<}út³³³\Ö#Z\ã\ãã¡¯¯/ŸDô\r»R+£\ÌÅ“¦h–O<“\è¬]©†Q\æ\â\İs\Ñ*Ÿ\ïºÛ•Zae.^¨‚%œZa¬C8§§n„Á\ßÿ<\\\è9xgÅ¿_;\á\Ô\n\Ã\Î%Vf2>ÿh_8÷«½w­øµx›\à	§V†p­\á\Ş\Í\Åu\í\Â	ÁN­0\á,^ıøµ’áŒ·	pj…ag\Ñúüä’áŒ·	pj…a§p\n§V\Îø,z©p\Æ\ÛO8µ\Â0„³h]\êÿY\Ép\Æ\ÛO8µ\Â0„³h\İLŸŸÿfÿ½wÓ“¯\Å\ÛO8µ\Â0„s‰u\å\ï\Ş\Îø5±N­0\á\\j\ÍÌ„KGî½›|-\Ş&xÂ©†!œE\ï\Zº\ØÿÓ’q\ÆÛ¼{H8µ\Â0„s\á”y\ãÒ©ğ\ç\î”Œ\æ\âŠ\ß¿\×\éS8µ\Â0ª6œ+2>…S+C8‹.\ŞÕœ2—;}\n pj…aT]8\ï7š‹K\0…S+£:ã´„S+\áN­0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+C8…S8µ\Â0N\á\Ô\n\Ã0\áN´\Â0„\ÓN­0á´„S+C8-\á\Ô\n\Ã@8…S+ƒÕ©©©\Ù\"œÂ©†Á*„H§Ó™şşş°oß¾KT8…S+ƒ\Äğğpo6›\r‹fff\ÂÑ£Go¿ğ\Â\ßN\á\Ô\nÃ @&“yzlll.”088\Ú\Û\Ûÿ\Ò\ØØ¸U8…S+£\Ú\ï–o\Z\Z\Z\Ì\åra%ù|>tww\ç[ZZ\n§pj…aT¥\Ñ\Ñ\Ñ×§¦¦òa&&&Â‘#G&Nœ8!XÂ©›qV\é\Õ\Ñ\Ñ&\'\'\×\Ú\Í;?6ş3\Òi¿™R8…“*²cÇ¯777\äV\Í\ä„z5ù™\Éd£]\ï\ê\ê,\áNªS*•jokk›ON’¹eßœ\é\ì\ìü[ò½·\ã÷—\ãcœñ!Û¥\ÖF\İ.œ\ÂIõ\Åókõõõg;–+~¢\èò\å\Ë\ê\ê\êfjkk?kjjz|ñg\Ê1œ\Ë}m½oN\á¤z7PCKKKvppp>›\ÍNµ¶¶%_\ËÄ¯¯p\n§pÂ‚øN¡\ä\Ú7Sük¥¼sH8…S8)‹€.w»p\n§p\Â\Z	§p\n\'§p\n\'T_8ór$„á´„S8NK8…á´„S8A8…S8A8…\áD8-\áN„\ÓN\áD8-\áNN\áNN\áD8N\áD8NK8…á´„S8NK8…„S8…„S8N„\ÓN\áD8-\áN„\ÓN\á\áN\á\áN„\áN„á´„S8NK8…\á,\áNN\áNN\áD8)½½½‚%œ\Â	kqúô\é\Ü\ØØ˜h•Áºv\í\Úß“p\ÎÚ•\ÂI™;u\êÔûúúò£££t:]ñ\Ñ\ì\é\é™K\Öv¥pR’‹µ-9\éLÇ»‰•¸Îœ9:::BWWW¨\Ôÿñ¤)š\Â	\"„°ubb\"?99š››GMD8\r\r\r†ó©Tª\İT„(!“\É<\Ë\åB¡C‡\Í755=n:\Â	,addd.™šš\Ê\Õ\××Ÿ5\áŠ÷†?K.¢SN`A\Ò\Æ\'²\Ùl©n†|>ZZZ²555[LK8D:Î„\\¹r%>Q\ÔeZ\Â	$úûûW\êf˜™™™ŒRcc\ãVN¨zû÷\ïÿE\Æe\Ã\Ù\Ú\Ú:\ä\Ä)œ@÷\ß¶T4/_¾|!¹ˆ2\ãN À¶mÛJ¹\ÔC3uuu3UN`	‡>ŸA/ôö\Ûo_¬­­ı\Ìt„XB¼+\Ş\İİ+xñû\ÕT*u\Û;‡„X\Æ\îİ»÷LLL„…ù¸\é½\ê\Â	¬Bgg\çxüX¹\äÂ¹n\Z\Â	¬B¼k/šø„‘i\'\à¢Á\0\rö\0¸h°ÀEƒ=\0.\Z\ìÀEƒ=\0.\Z\ìp\Ñ`€‹{\0\\4\Ø\à¢Á\0\\4\Ø\à¢Á\0\rö\0¸h°ÀEƒ=\0¸h°ÀEƒ=\0.\Z\ìp\Ñ`€‹{\0\\4\Ø€‹{\0\\4\Ø\à¢Á\0\rö\0¸h°\0\rö\0¸h°ÀEƒ=\0.\Z\ìp\Ñ`€‹{\0p\Ñ`€‹{\0\\4\Ø\à¢Á\0\rö\0\à¢Á\0\rö\0¸h°ÀEƒ=\0.\Z\ì¨ªd$^$+¬i“N\àŸH\ÃJá¬­­m3)\á\î¾HÆ—	g¦¦¦f‹)	\'°\ÊSg*•j7!\á–¾P–z¬s\ÚiS85œ:=¶)œÀ\Ê\Ëu§M„\Ö 9a\î,\ç\Ë&\"œÀ\ê.˜;u:m\n§)@	;v\ìøzr\ÒüŸ\äBN¥R·‹\çœ[¸û~\"~Ÿi	\'Tµø2£\äâ¸™ü5¬\âC‹/Mš¬««;bz\Â	\Õ\Ì\'“5¾\ÚX–X·¶m\Ûö”i\n\'lz\É]ò\äÄ˜/Œ`r<´··‡S§N…¡¡¡ğ\Å_„\èÿøGH§Ó¡¿¿?¼ùæ›¡¡¡¡8y§O\á„\ÍÍ¶Â»\å1˜\ï½÷^«199y\çû\ã\Ï\İ}\Çt…6\åI³0š---wN—÷#ş\ÜŞ½{ïŠ§“§pÂ¦\Ó,¼{¾ÿş¯\îß¯x7şĞ¡C\ÅwÛ¿a\Ú\Â	›%œ7Oš\Z\Í\Âx<o™¶p\Âfˆf{\ácš÷{÷|¹»í…yº\Ë.œ°6ÿW§\Íø\Ä\Îz8zô¨S§p\Â\æ\ß\é³ø„P<Ş¼ys]\ÂŸm/|©R|Lu™‹1~\Óu:\Â	ei\ám”wbvøğá°\â\ë<N\'Jó«\Ïûô§#œP®x1T}}}\ë\Z\Îø\"ù‚p”\n¦p\n\'”µ\Â\ìx\ØO\n‹\ï0*\ãü\Â\Ç\Ó]/õ–M:\Â	\åºñ¿z\í\æ\Ãz	\Òr/MZ\Ë{\İı\é\'”\í\Æ_\\\á?4\Ä*\Ã\å*Â‰sOœ\ßúÖ·ş=şZa$PQ\åcœñ~9¾¶S8J9q>òg\Õ-œ@o	\'P\Ö\Ê\éuœE\'ĞŒ? ,\Åw¾O}=\ß9T__¿ªwT\Â\İu\ïUXŸpñœ\\¯\Ï\ãÜ³g\Ï]§M¿‹\Ø,\á|2‰Z\îaü+¯¼\â\à\Í+şÎ¡\Â\×Q>\è\ï*:iº‹lNI\à\Ş*şµÀñ	£ø¬øjŸ=Oÿ–\Ë$\Êİ¦l\ê“g²\îù½\êñuñEò¥~¯zGGGx\æ™g\îù½\ê1Æ¦\nlzy\Ş|À€¸\å1M \ZOŸo\ÜG@\ã\Û&\ßò\ì9P\Õ~7Q\×\Â{\Û\çŠB9¿ğ	\î\'¼#\0\0\0\0\0\0\0\0\0\0\Ê\Çÿ»ã¬‚\Z\å¿v\0\0\0\0IEND®B`‚',1),('10019',1,'è¡¥è´´ç”³è¯·.bpmn20.xml','10018','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"allowance\" name=\"è¡¥è´´ç”³è¯·\" isExecutable=\"true\">\n    <documentation>è¡¥è´´ç”³è¯·</documentation>\n    <startEvent id=\"begin\" name=\"å¼€å§‹\">\n      <documentation>å¼€å§‹</documentation>\n    </startEvent>\n    <userTask id=\"selfVerify\" name=\"ç”³è¯·äººåŠç†\" activiti:assignee=\"${username}\">\n      <documentation>ç”³è¯·äººåŠç†</documentation>\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"leaderVerify\" name=\"é¢†å¯¼å®¡æ ¸\">\n      <documentation>é¢†å¯¼å®¡æ ¸</documentation>\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"end\" name=\"ç»“æŸ\">\n      <documentation>ç»“æŸ</documentation>\n    </endEvent>\n    <sequenceFlow id=\"submit_apply\" name=\"å‘èµ·æµç¨‹\" sourceRef=\"begin\" targetRef=\"selfVerify\">\n      <documentation>å‘èµ·æµç¨‹</documentation>\n    </sequenceFlow>\n    <sequenceFlow id=\"give_up\" name=\"æ”¾å¼ƒ\" sourceRef=\"selfVerify\" targetRef=\"end\">\n      <documentation>æ”¾å¼ƒ</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ’¤å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"self_agree\" name=\"åŒæ„\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\n      <documentation>åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[{$outcome==\'æäº¤\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"leader_agree\" name=\"åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"end\">\n      <documentation>åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é€šè¿‡\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"leader_not_agree\" name=\"ä¸åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\n      <documentation>ä¸åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_allowance\">\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\" id=\"BPMNPlane_allowance\">\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"BPMNShape_begin\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"BPMNShape_selfVerify\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"145.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"BPMNShape_leaderVerify\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"145.0\" y=\"300.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"181.0\" y=\"450.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"self_agree\" id=\"BPMNEdge_self_agree\">\n        <omgdi:waypoint x=\"195.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"300.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"give_up\" id=\"BPMNEdge_give_up\">\n        <omgdi:waypoint x=\"245.0\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.5\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.5\" y=\"464.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"209.0\" y=\"464.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"leader_not_agree\" id=\"BPMNEdge_leader_not_agree\">\n        <omgdi:waypoint x=\"145.0\" y=\"340.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"57.5\" y=\"340.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"57.5\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"145.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"leader_agree\" id=\"BPMNEdge_leader_agree\">\n        <omgdi:waypoint x=\"195.0\" y=\"380.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"450.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"submit_apply\" id=\"BPMNEdge_submit_apply\">\n        <omgdi:waypoint x=\"195.0\" y=\"45.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"150.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('10020',1,'è¡¥è´´ç”³è¯·.allowance.png','10018','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0N\0\0\è\0\0\0&š\0\0\ZIDATx\Ú\í\İMl\Ô\çÀñ9r\ë1·=\æ\Ö[^\å²\ê¥R3\ÆV¬˜:	mcÄªªCÁ4\Ô	I7’[-²”l7Q$Ò•ÀiP+§\Ø\Ä\nµS\Ñ6\Z\Ú.°†\ÚøE\Ø&\ãfl\ì™gÿ²\Óağø°™ñ|>Ò£D;i<ÿoyõc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\Â\Öó\çÏ¿÷\î»\ïN½ú\ê«ù\ï|\ç;¡±±1lß¾=\Ô\××‡]»v…\Ö\ÖÖ¹\×^{mğğ\á\Ãÿfb@UóØ±cÿ÷£ı(|\ï{\ß\áw¿û]H§\Ó!›Í†(şull,üñ\ï¼óNø\îw¿^zé¥¹\æ\æ\æÿ6A ª$üù+¯¼ö\î\İ{\'ŠóóóaµÎ=¾ÿı\ï‡\ç{nvÛ¶mO™&°\ÙO™[~ù\Ë_N>ÿüó\áÄ‰k\nf±\î\î\î\Ğ\Ô\Ôœ>MÍ?şxz÷\î\İ\á\âÅ‹\áa¸zõjˆŞ¹s\ç/L\Øt\âI3F3>fù0\ÅŞ·¿ı\í|]]\İS6ø˜f<>¬“\æR\'Ï†††\Ïo˜6°\î¢o=xğ\à\Ç4\×Ó¯ı\ëü;2&T¼\ãÇ_‰Ïß¾};¬·]»v\å\Üe*ş´_§_r´Î;œ:Š\ßŸz—­Õ³\Ï>›K¥ROš>P‘\â\Û(\ßzë­°‘\Ş|ó\Í/·o\ß~\ÂôŠ\ß{\ßF¹‘\æ’p˜>P‘\âvÜ¸qcC\Ã922’K\Â9oú@EŠŸr´ø%şû\â\'+™>P‘bÀ\á*\Ö3\Ï<³\á\'\Î/¿ü2\'œ@\Åzñ\Å7ü1\Î\ë×¯\ÏzŒ¨Xûöí»½\ÑÏªô\ÑGcU*\Öë¯¿ş¿ı:\ÎŒy\'P±~ø\Ãşk¼»¾‘\ïª««»\íC@E{é¥—no\Ô{Õ“»\éW’\Ó\æ-S*ZSS\Ó\ìÙ³g#Nñó8¿ô\éHÀ¦ğ\Üs\Ïe\×ûó8\ã\ã©ñ´YSS³\ÅÄŠs|ö\Ùg\×\í\àÏŸ?#ùw\ä|<°©\Ô\×\×ÿgrò|\è¿shxxøV\Í9wÑ\Í\Z\ÏÿŠ¿X\ía<Nšsµµµİ¦lZI\ä:’€\æ?ø\àƒü<a”ÿ\ÉO~r)\Ş=ß¾}û[¦\nlzñ1\Ï\ä®õ\Äó\Ï?ŸûÓŸş´¦b<yò\ïIx§\ãA\ÓªñôùFhccc\î\ÕW_ù\ío;\íÚµù\Å‰\Ø\ß{\Ş\Ó\Ó3z\àÀñ\ä{\ã‡ßŠ§LÏUmÇ_ON¡]I‡“\ã\n\Ö||\ïy|¥w,\ÃG\Ã\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0E‘‰¡\\aM›À?\ÃÙ°R8kkk\ÛL\n\à\îx/\ÎLMM\ÍSX\å©3•Jµ›À\Òñ\\\ê±\Îi§M€5œ:=¶	°r<¯;m¬Ar\Â\ÜYÎ—M`u§\Î;u:m¬>œ\r\Ş9l˜Â–ÁÁÁ\áO?ı4ôöö†“\'OZ¼zzz\Â\'Ÿ|’O\Ö;*@Œ\æ\éÓ§\Ã\Ø\ØX˜µ\Ñ\Z}}}ù$¢oØ•P\æ\âIS4\Ë\'\É	tÖ®„2ï‹Vù¬x\×İ®„2/TÁN`\Â9=u#şş\ç\áB\ÏÁ;+ş}üš\Ø	\'\ç+3™Ÿ´/œû\ÕŞ»VüZ¼Mğ„„³h\r_øğh.®kNp‚p¯¿~üZ\Ép\Æ\ÛO8A8‹\Ö\ç\'”g¼Mğ„„S8…x°p\Æg\ÑK…3\Ş&x\Â	\ÂY´.õÿ¬d8\ãm‚\'œ œE\ëfú|øü7ûï½›|-\Ş&x\Â	Â¹Äºò‡w\ï	güš\Ø	\'\çRkf&\\\Z8r\ï\İô\äkñ6ÁNÎ¢w\r]\ìÿi\É\Ç8\ãm\Ş=$œ œ§\Ì—N…?wÿ d4Wüø½NŸ\Â	UÎ•N™NŸ\Â	\ÂYtñ®æ”¹\Ü\éS\0…ª.œ÷\Í\Å%€\Â	\Õù§%œ€p\n\' œ\Â	§%œ œ–p‚pZ\Â	\Â)œ\Â	§p\Â)œ€pZ\Â	\Âi	\'§%œ€p\n\' œ\ÕÎššš-v-¬“\íÛ·\ßL¥R»„ss„3„ğD:\Îô÷÷‡}ûö}( °>\á\ëfmm\íN\á¬\Üp÷f³Ù°hff&=zôö/¼ğM;\Ö\'œ‹k|©¨p–o83™\Ì\Ócccs¡„ÁÁÁ\Ğ\Ş\Şş—\Æ\ÆÆ­v<¬O8¿:T8\Ë/œ‰­CCCƒ¹\\.¬$ŸÏ‡\î\î\î|KK\ËA»\Ö/œ_@\ã]x\á,¯u\æÌ™055•k41192‘ü™ş‹\İ\Ïj`=\à¬òX\ét:ttt„\É\ÉÉµvó\Î\ÏÄŸ­ö½¬˜\á4…‡úœ\é\äTÒ¶ø¬¬gy­>ø 477\äV\Í\ä„z5ù™\É\ä\Ïöz*•zR+0Œ‡Î»‚Y.q&ÿ–\\\årû£zr(	`{[[\Û|r’\Ì-óø\æLgg\çß’\ï½¿ß\×\n\Ãxx\á\ÌÄ‹ª\Ô\ëş\Ê!œ\Ë}\íQ\ßş(ŸUOşÜ¾V__öØ±c¹\â\'Š._¾|¡®®n&ù\ágMMM\ÛñZagnK0…³r\ÂYğg\Ù\Ğ\ÒÒ’œ\Ïf³S­­­Cñ?ˆñ\ëvºV\Æ# œ\å\Î(ş09v\Å\ë!ş\Õ;‡´\Â0„S8½W]+C8…Ó§#i…a§p\n§V\å\ÎÇ¼I8µ\Â0„\ÓN­0á´„S+\áN­0„S8µ\Â\ìC8…­0á´„S+C8-\á\Ô\n\ÃNK8µ\Â0N\á\Ô\n\Ã@8…­0á´„S+C8-\á\Ô\n\ÃNK8µ\Â0N\á\Ô\n\Ã@8…S+´\Â0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+\áN­0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+\áN­0„S8µB+C8…­0Œ2\Õ\Û\Û+XÂ©†ÁZœ>}:766&Ze°®]»ö÷$œ³v¥VF™;u\êÔûúúò£££t:]ñ\Ñ\ì\é\é™K\Öv¥VFH.Ö¶\ä¤3\ï&V\â:s\æL\è\è\è]]]¡Rÿ?Ä“¦hj…a°!B[\'&&ò“““¡¹¹y\ÔD´\Ã`CCCƒaÁÀÀÀ|*•j7­0Ã „L&ót.—…:4\ß\Ô\Ôô¸\éh…aÀFFF\æB‘©©©\\}}ıY\Ó\Ñ\nÃ€\"\Ã\ÃÃ½¡„\ãÇ\ç’}\Ó`JZa° i\ã\Ùl¶T7C>Ÿ---Ùššš-¦¥†‰t:	+¸r\åJ|¢¨Ë´´\Â0 \Ñ\ßß¿R7\Ã\Ì\Ì\Ìd\Ü;[ML+ƒª·ÿş_$a\\6œ­­­CNœZaP\àı÷ßŸ-\ÍË—/_HöM\ÆcœZaP`Û¶mO%\\ê‰¡™ºººÏªk…aÀ>|.>ƒ^\è\í·ß¾X[[û™\éh…aÀ\â]ñ\î\î\î\\Á‹ß¯¦R©\Û\Ş9¤†a,c÷\î\İ{&&&\ÂÂ‡|\Üô^u­À0X…\Î\Î\Îñø±r\É^¹n\ZZa°\nñ®y\Ü\'ñ	#\Ó\Ğ\nû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0ªjOŒ\Ä}±Âš6)­0ø\çhX)œµµµm&¥†w\ï‹ñeÂ™©©©\ÙbJZa°\ÊSg*•j7!­0Xzo,õX\ç´Ó¦V†a°†S§\Ç6µ\Ã`\åıq\İi­0\Ö 9a\î,\ç\Ë&¢«\Û#w\ët\Ú\Ô\nS0V¿G\Z\ì\ì\Ã\Ø0!„-ƒƒƒÃŸ~úi\è\í\í\r\'O´6xõôô„O>ù$Ÿ¬#v¤VFˆ\Ñ<}út³³³\Ö#Z\ã\ãã¡¯¯/ŸDô\r»R+£\ÌÅ“¦h–O<“\è¬]©†Q\æ\â\İs\Ñ*Ÿ\ïºÛ•Zae.^¨‚%œZa¬C8§§n„Á\ßÿ<\\\è9xgÅ¿_;\á\Ô\n\Ã\Î%Vf2>ÿh_8÷«½w­øµx›\à	§V†p­\á\Ş\Í\Åu\í\Â	ÁN­0\á,^ıøµ’áŒ·	pj…ag\Ñúüä’áŒ·	pj…a§p\n§V\Îø,z©p\Æ\ÛO8µ\Â0„³h]\êÿY\Ép\Æ\ÛO8µ\Â0„³h\İLŸŸÿfÿ½wÓ“¯\Å\ÛO8µ\Â0„s‰u\å\ï\Ş\Îø5±N­0\á\\j\ÍÌ„KGî½›|-\Ş&xÂ©†!œE\ï\Zº\ØÿÓ’q\ÆÛ¼{H8µ\Â0„s\á”y\ãÒ©ğ\ç\î”Œ\æ\âŠ\ß¿\×\éS8µ\Â0ª6œ+2>…S+C8‹.\ŞÕœ2—;}\n pj…aT]8\ï7š‹K\0…S+£:ã´„S+\áN­0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+C8…S8µ\Â0N\á\Ô\n\Ã0\áN´\Â0„\ÓN­0á´„S+C8-\á\Ô\n\Ã@8…S+ƒÕ©©©\Ù\"œÂ©†Á*„H§Ó™şşş°oß¾KT8…S+ƒ\Äğğpo6›\r‹fff\ÂÑ£Go¿ğ\Â\ßN\á\Ô\nÃ @&“yzlll.”088\Ú\Û\Ûÿ\Ò\ØØ¸U8…S+£\Ú\ï–o\Z\Z\Z\Ì\åra%ù|>tww\ç[ZZ\n§pj…aT¥\Ñ\Ñ\Ñ×§¦¦òa&&&Â‘#G&Nœ8!XÂ©›qV\é\Õ\Ñ\Ñ&\'\'\×\Ú\Í;?6ş3\Òi¿™R8…“*²cÇ¯777\äV\Í\ä„z5ù™\Éd£]\ï\ê\ê,\áNªS*•jokk›ON’¹eßœ\é\ì\ìü[ò½·\ã÷—\ãcœñ!Û¥\ÖF\İ.œ\ÂIõ\Åókõõõg;–+~¢\èò\å\Ë\ê\ê\êfjkk?kjjz|ñg\Ê1œ\Ë}m½oN\á¤z7PCKKKvppp>›\ÍNµ¶¶%_\ËÄ¯¯p\n§pÂ‚øN¡\ä\Ú7Sük¥¼sH8…S8)‹€.w»p\n§p\Â\Z	§p\n\'§p\n\'T_8ór$„á´„S8NK8…á´„S8A8…S8A8…\áD8-\áN„\ÓN\áD8-\áNN\áNN\áD8N\áD8NK8…á´„S8NK8…„S8…„S8N„\ÓN\áD8-\áN„\ÓN\á\áN\á\áN„\áN„á´„S8NK8…\á,\áNN\áNN\áD8)½½½‚%œ\Â	kqúô\é\Ü\ØØ˜h•Áºv\í\Úß“p\ÎÚ•\ÂI™;u\êÔûúúò£££t:]ñ\Ñ\ì\é\é™K\Öv¥pR’‹µ-9\éLÇ»‰•¸Îœ9:::BWWW¨\Ôÿñ¤)š\Â	\"„°ubb\"?99š››GMD8\r\r\r†ó©Tª\İT„(!“\É<\Ë\åB¡C‡\Í755=n:\Â	,addd.™šš\Ê\Õ\××Ÿ5\áŠ÷†?K.¢SN`A\Ò\Æ\'²\Ùl©n†|>ZZZ²555[LK8D:Î„\\¹r%>Q\ÔeZ\Â	$úûûW\êf˜™™™ŒRcc\ãVN¨zû÷\ïÿE\Æe\Ã\Ù\Ú\Ú:\ä\Ä)œ@÷\ß¶T4/_¾|!¹ˆ2\ãN À¶mÛJ¹\ÔC3uuu3UN`	‡>ŸA/ôö\Ûo_¬­­ı\Ìt„XB¼+\Ş\İİ+xñû\ÕT*u\Û;‡„X\Æ\îİ»÷LLL„…ù¸\é½\ê\Â	¬Bgg\çxüX¹\äÂ¹n\Z\Â	¬B¼k/šø„‘i\'\à¢Á\0\rö\0¸h°ÀEƒ=\0.\Z\ìÀEƒ=\0.\Z\ìp\Ñ`€‹{\0\\4\Ø\à¢Á\0\\4\Ø\à¢Á\0\rö\0¸h°ÀEƒ=\0¸h°ÀEƒ=\0.\Z\ìp\Ñ`€‹{\0\\4\Ø€‹{\0\\4\Ø\à¢Á\0\rö\0¸h°\0\rö\0¸h°ÀEƒ=\0.\Z\ìp\Ñ`€‹{\0p\Ñ`€‹{\0\\4\Ø\à¢Á\0\rö\0\à¢Á\0\rö\0¸h°ÀEƒ=\0.\Z\ì¨ªd$^$+¬i“N\àŸH\ÃJá¬­­m3)\á\î¾HÆ—	g¦¦¦f‹)	\'°\ÊSg*•j7!\á–¾P–z¬s\ÚiS85œ:=¶)œÀ\Ê\Ëu§M„\Ö 9a\î,\ç\Ë&\"œÀ\ê.˜;u:m\n§)@	;v\ìøzr\ÒüŸ\äBN¥R·‹\çœ[¸û~\"~Ÿi	\'Tµø2£\äâ¸™ü5¬\âC‹/Mš¬««;bz\Â	\Õ\Ì\'“5¾\ÚX–X·¶m\Ûö”i\n\'lz\É]ò\äÄ˜/Œ`r<´··‡S§N…¡¡¡ğ\Å_„\èÿøGH§Ó¡¿¿?¼ùæ›¡¡¡¡8y§O\á„\ÍÍ¶Â»\å1˜\ï½÷^«199y\çû\ã\Ï\İ}\Çt…6\åI³0š---wN—÷#ş\ÜŞ½{ïŠ§“§pÂ¦\Ó,¼{¾ÿş¯\îß¯x7şĞ¡C\ÅwÛ¿a\Ú\Â	›%œ7Oš\Z\Í\Âx<o™¶p\Âfˆf{\ácš÷{÷|¹»í…yº\Ë.œ°6ÿW§\Íø\Ä\Îz8zô¨S§p\Â\æ\ß\é³ø„P<Ş¼ys]\ÂŸm/|©R|Lu™‹1~\Óu:\Â	ei\ám”wbvøğá°\â\ë<N\'Jó«\Ïûô§#œP®x1T}}}\ë\Z\Îø\"ù‚p”\n¦p\n\'”µ\Â\ìx\ØO\n‹\ï0*\ãü\Â\Ç\Ó]/õ–M:\Â	\åºñ¿z\í\æ\Ãz	\Òr/MZ\Ë{\İı\é\'”\í\Æ_\\\á?4\Ä*\Ã\å*Â‰sOœ\ßúÖ·ş=şZa$PQ\åcœñ~9¾¶S8J9q>òg\Õ-œ@o	\'P\Ö\Ê\éuœE\'ĞŒ? ,\Åw¾O}=\ß9T__¿ªwT\Â\İu\ïUXŸpñœ\\¯\Ï\ãÜ³g\Ï]§M¿‹\Ø,\á|2‰Z\îaü+¯¼\â\à\Í+şÎ¡\Â\×Q>\è\ï*:iº‹lNI\à\Ş*şµÀñ	£ø¬øjŸ=Oÿ–\Ë$\Êİ¦l\ê“g²\îù½\êñuñEò¥~¯zGGGx\æ™g\îù½\ê1Æ¦\nlzy\Ş|À€¸\å1M \ZOŸo\ÜG@\ã\Û&\ßò\ì9P\Õ~7Q\×\Â{\Û\çŠB9¿ğ	\î\'¼#\0\0\0\0\0\0\0\0\0\0\Ê\Çÿ»ã¬‚\Z\å¿v\0\0\0\0IEND®B`‚',1),('10033',1,'è¡¥è´´ç”³è¯·.bpmn20.xml','10032','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"allowance\" name=\"è¡¥è´´ç”³è¯·\" isExecutable=\"true\">\n    <documentation>è¡¥è´´ç”³è¯·</documentation>\n    <startEvent id=\"begin\" name=\"å¼€å§‹\">\n      <documentation>å¼€å§‹</documentation>\n    </startEvent>\n    <userTask id=\"selfVerify\" name=\"ç”³è¯·äººåŠç†\" activiti:assignee=\"${username}\">\n      <documentation>ç”³è¯·äººåŠç†</documentation>\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"leaderVerify\" name=\"é¢†å¯¼å®¡æ ¸\">\n      <documentation>é¢†å¯¼å®¡æ ¸</documentation>\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"end\" name=\"ç»“æŸ\">\n      <documentation>ç»“æŸ</documentation>\n    </endEvent>\n    <sequenceFlow id=\"submit_apply\" name=\"å‘èµ·æµç¨‹\" sourceRef=\"begin\" targetRef=\"selfVerify\">\n      <documentation>å‘èµ·æµç¨‹</documentation>\n    </sequenceFlow>\n    <sequenceFlow id=\"give_up\" name=\"æ”¾å¼ƒ\" sourceRef=\"selfVerify\" targetRef=\"end\">\n      <documentation>æ”¾å¼ƒ</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ’¤å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"leader_agree\" name=\"åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"end\">\n      <documentation>åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é€šè¿‡\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"leader_not_agree\" name=\"ä¸åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\n      <documentation>ä¸åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"self_agree\" name=\"åŒæ„\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\n      <documentation>åŒæ„</documentation>\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æäº¤\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_allowance\">\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\" id=\"BPMNPlane_allowance\">\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"BPMNShape_begin\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"BPMNShape_selfVerify\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"145.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"BPMNShape_leaderVerify\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"145.0\" y=\"300.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"181.0\" y=\"450.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"self_agree\" id=\"BPMNEdge_self_agree\">\n        <omgdi:waypoint x=\"195.0\" y=\"230.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"300.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"give_up\" id=\"BPMNEdge_give_up\">\n        <omgdi:waypoint x=\"245.0\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.5\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.5\" y=\"464.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"209.0\" y=\"464.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"leader_not_agree\" id=\"BPMNEdge_leader_not_agree\">\n        <omgdi:waypoint x=\"145.0\" y=\"340.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"57.5\" y=\"340.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"57.5\" y=\"190.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"145.0\" y=\"190.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"leader_agree\" id=\"BPMNEdge_leader_agree\">\n        <omgdi:waypoint x=\"195.0\" y=\"380.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"450.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"submit_apply\" id=\"BPMNEdge_submit_apply\">\n        <omgdi:waypoint x=\"195.0\" y=\"45.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"195.0\" y=\"150.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('10034',1,'è¡¥è´´ç”³è¯·.allowance.png','10032','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0N\0\0\è\0\0\0&š\0\0\ZIDATx\Ú\í\İMl\Ô\çÀñ9r\ë1·=\æ\Ö[^\å²\ê¥R3\ÆV¬˜:	mcÄªªCÁ4\Ô	I7’[-²”l7Q$Ò•ÀiP+§\Ø\Ä\nµS\Ñ6\Z\Ú.°†\ÚøE\Ø&\ãfl\ì™gÿ²\Óağø°™ñ|>Ò£D;i<ÿoyõc\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0T\Â\Öó\çÏ¿÷\î»\ïN½ú\ê«ù\ï|\ç;¡±±1lß¾=\Ô\××‡]»v…\Ö\ÖÖ¹\×^{mğğ\á\Ãÿfb@UóØ±cÿ÷£ı(|\ï{\ß\áw¿û]H§\Ó!›Í†(şull,üñ\ï¼óNø\îw¿^zé¥¹\æ\æ\æÿ6A ª$üù+¯¼ö\î\İ{\'ŠóóóaµÎ=¾ÿı\ï‡\ç{nvÛ¶mO™&°\ÙO™[~ù\Ë_N>ÿüó\áÄ‰k\nf±\î\î\î\Ğ\Ô\Ôœ>MÍ?şxz÷\î\İ\á\âÅ‹\áa¸zõjˆŞ¹s\ç/L\Øt\âI3F3>fù0\ÅŞ·¿ı\í|]]\İS6ø˜f<>¬“\æR\'Ï†††\Ïo˜6°\î¢o=xğ\à\Ç4\×Ó¯ı\ëü;2&T¼\ãÇ_‰Ïß¾};¬·]»v\å\Üe*ş´_§_r´Î;œ:Š\ßŸz—­Õ³\Ï>›K¥ROš>P‘\â\Û(\ßzë­°‘\Ş|ó\Í/·o\ß~\ÂôŠ\ß{\ßF¹‘\æ’p˜>P‘\âvÜ¸qcC\Ã922’K\Â9oú@EŠŸr´ø%şû\â\'+™>P‘bÀ\á*\Ö3\Ï<³\á\'\Î/¿ü2\'œ@\Åzñ\Å7ü1\Î\ë×¯\ÏzŒ¨Xûöí»½\ÑÏªô\ÑGcU*\Öë¯¿ş¿ı:\ÎŒy\'P±~ø\Ãşk¼»¾‘\ïª««»\íC@E{é¥—no\Ô{Õ“»\éW’\Ó\æ-S*ZSS\Ó\ìÙ³g#Nñó8¿ô\éHÀ¦ğ\Üs\Ïe\×ûó8\ã\ã©ñ´YSS³\ÅÄŠs|ö\Ùg\×\í\àÏŸ?#ùw\ä|<°©\Ô\×\×ÿgrò|\è¿shxxøV\Í9wÑ\Í\Z\ÏÿŠ¿X\ía<Nšsµµµİ¦lZI\ä:’€\æ?ø\àƒü<a”ÿ\ÉO~r)\Ş=ß¾}û[¦\nlzñ1\Ï\ä®õ\Äó\Ï?ŸûÓŸş´¦b<yò\ïIx§\ãA\ÓªñôùFhccc\î\ÕW_ù\ío;\íÚµù\Å‰\Ø\ß{\Ş\Ó\Ó3z\àÀñ\ä{\ã‡ßŠ§LÏUmÇ_ON¡]I‡“\ã\n\Ö||\ïy|¥w,\ÃG\Ã\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0\Â	 œ\0\Â	 œ\0\Â	€p\'€p\'€p\'\0E‘‰¡\\aM›À?\ÃÙ°R8kkk\ÛL\n\à\îx/\ÎLMM\ÍSX\å©3•Jµ›À\Òñ\\\ê±\Îi§M€5œ:=¶	°r<¯;m¬Ar\Â\ÜYÎ—M`u§\Î;u:m¬>œ\r\Ş9l˜Â–ÁÁÁ\áO?ı4ôöö†“\'OZ¼zzz\Â\'Ÿ|’O\Ö;*@Œ\æ\éÓ§\Ã\Ø\ØX˜µ\Ñ\Z}}}ù$¢oØ•P\æ\âIS4\Ë\'\É	tÖ®„2ï‹Vù¬x\×İ®„2/TÁN`\Â9=u#şş\ç\áB\ÏÁ;+ş}üš\Ø	\'\ç+3™Ÿ´/œû\ÕŞ»VüZ¼Mğ„„³h\r_øğh.®kNp‚p¯¿~üZ\Ép\Æ\ÛO8A8‹\Ö\ç\'”g¼Mğ„„S8…x°p\Æg\ÑK…3\Ş&x\Â	\ÂY´.õÿ¬d8\ãm‚\'œ œE\ëfú|øü7ûï½›|-\Ş&x\Â	Â¹Äºò‡w\ï	güš\Ø	\'\çRkf&\\\Z8r\ï\İô\äkñ6ÁNÎ¢w\r]\ìÿi\É\Ç8\ãm\Ş=$œ œ§\Ì—N…?wÿ d4Wüø½NŸ\Â	UÎ•N™NŸ\Â	\ÂYtñ®æ”¹\Ü\éS\0…ª.œ÷\Í\Å%€\Â	\Õù§%œ€p\n\' œ\Â	§%œ œ–p‚pZ\Â	\Â)œ\Â	§p\Â)œ€pZ\Â	\Âi	\'§%œ€p\n\' œ\ÕÎššš-v-¬“\íÛ·\ßL¥R»„ss„3„ğD:\Îô÷÷‡}ûö}( °>\á\ëfmm\íN\á¬\Üp÷f³Ù°hff&=zôö/¼ğM;\Ö\'œ‹k|©¨p–o83™\Ì\Ócccs¡„ÁÁÁ\Ğ\Ş\Şş—\Æ\ÆÆ­v<¬O8¿:T8\Ë/œ‰­CCCƒ¹\\.¬$ŸÏ‡\î\î\î|KK\ËA»\Ö/œ_@\ã]x\á,¯u\æÌ™055•k41192‘ü™ş‹\İ\Ïj`=\à¬òX\ét:ttt„\É\ÉÉµvó\Î\ÏÄŸ­ö½¬˜\á4…‡úœ\é\äTÒ¶ø¬¬gy­>ø 477\äV\Í\ä„z5ù™\É\ä\Ïöz*•zR+0Œ‡Î»‚Y.q&ÿ–\\\årû£zr(	`{[[\Û|r’\Ì-óø\æLgg\çß’\ï½¿ß\×\n\Ãxx\á\ÌÄ‹ª\Ô\ëş\Ê!œ\Ë}\íQ\ßş(ŸUOşÜ¾V__öØ±c¹\â\'Š._¾|¡®®n&ù\ágMMM\ÛñZagnK0…³r\ÂYğg\Ù\Ğ\ÒÒ’œ\Ïf³S­­­Cñ?ˆñ\ëvºV\Æ# œ\å\Î(ş09v\Å\ë!ş\Õ;‡´\Â0„S8½W]+C8…Ó§#i…a§p\n§V\å\ÎÇ¼I8µ\Â0„\ÓN­0á´„S+\áN­0„S8µ\Â\ìC8…­0á´„S+C8-\á\Ô\n\ÃNK8µ\Â0N\á\Ô\n\Ã@8…­0á´„S+C8-\á\Ô\n\ÃNK8µ\Â0N\á\Ô\n\Ã@8…S+´\Â0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+\áN­0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+\áN­0„S8µB+C8…­0Œ2\Õ\Û\Û+XÂ©†ÁZœ>}:766&Ze°®]»ö÷$œ³v¥VF™;u\êÔûúúò£££t:]ñ\Ñ\ì\é\é™K\Öv¥VFH.Ö¶\ä¤3\ï&V\â:s\æL\è\è\è]]]¡Rÿ?Ä“¦hj…a°!B[\'&&ò“““¡¹¹y\ÔD´\Ã`CCCƒaÁÀÀÀ|*•j7­0Ã „L&ót.—…:4\ß\Ô\Ôô¸\éh…aÀFFF\æB‘©©©\\}}ıY\Ó\Ñ\nÃ€\"\Ã\ÃÃ½¡„\ãÇ\ç’}\Ó`JZa° i\ã\Ùl¶T7C>Ÿ---Ùššš-¦¥†‰t:	+¸r\åJ|¢¨Ë´´\Â0 \Ñ\ßß¿R7\Ã\Ì\Ì\Ìd\Ü;[ML+ƒª·ÿş_$a\\6œ­­­CNœZaP\àı÷ßŸ-\ÍË—/_HöM\ÆcœZaP`Û¶mO%\\ê‰¡™ºººÏªk…aÀ>|.>ƒ^\è\í·ß¾X[[û™\éh…aÀ\â]ñ\î\î\î\\Á‹ß¯¦R©\Û\Ş9¤†a,c÷\î\İ{&&&\ÂÂ‡|\Üô^u­À0X…\Î\Î\Îñø±r\É^¹n\ZZa°\nñ®y\Ü\'ñ	#\Ó\Ğ\nû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0\ì\ìû{À0°O°û{À0°O°û{À0À>Á0\ì\ì\ÃÀ>Á0\ì\ì\ÃÀ>Á0ªjOŒ\Ä}±Âš6)­0ø\çhX)œµµµm&¥†w\ï‹ñeÂ™©©©\ÙbJZa°\ÊSg*•j7!­0Xzo,õX\ç´Ó¦V†a°†S§\Ç6µ\Ã`\åıq\İi­0\Ö 9a\î,\ç\Ë&¢«\Û#w\ët\Ú\Ô\nS0V¿G\Z\ì\ì\Ã\Ø0!„-ƒƒƒÃŸ~úi\è\í\í\r\'O´6xõôô„O>ù$Ÿ¬#v¤VFˆ\Ñ<}út³³³\Ö#Z\ã\ãã¡¯¯/ŸDô\r»R+£\ÌÅ“¦h–O<“\è¬]©†Q\æ\â\İs\Ñ*Ÿ\ïºÛ•Zae.^¨‚%œZa¬C8§§n„Á\ßÿ<\\\è9xgÅ¿_;\á\Ô\n\Ã\Î%Vf2>ÿh_8÷«½w­øµx›\à	§V†p­\á\Ş\Í\Åu\í\Â	ÁN­0\á,^ıøµ’áŒ·	pj…ag\Ñúüä’áŒ·	pj…a§p\n§V\Îø,z©p\Æ\ÛO8µ\Â0„³h]\êÿY\Ép\Æ\ÛO8µ\Â0„³h\İLŸŸÿfÿ½wÓ“¯\Å\ÛO8µ\Â0„s‰u\å\ï\Ş\Îø5±N­0\á\\j\ÍÌ„KGî½›|-\Ş&xÂ©†!œE\ï\Zº\ØÿÓ’q\ÆÛ¼{H8µ\Â0„s\á”y\ãÒ©ğ\ç\î”Œ\æ\âŠ\ß¿\×\éS8µ\Â0ª6œ+2>…S+C8‹.\ŞÕœ2—;}\n pj…aT]8\ï7š‹K\0…S+£:ã´„S+\áN­0„S8\Ñ\n\ÃNK8µ\Â0„\ÓN­0á´„S+C8…S8µ\Â0N\á\Ô\n\Ã0\áN´\Â0„\ÓN­0á´„S+C8-\á\Ô\n\Ã@8…S+ƒÕ©©©\Ù\"œÂ©†Á*„H§Ó™şşş°oß¾KT8…S+ƒ\Äğğpo6›\r‹fff\ÂÑ£Go¿ğ\Â\ßN\á\Ô\nÃ @&“yzlll.”088\Ú\Û\Ûÿ\Ò\ØØ¸U8…S+£\Ú\ï–o\Z\Z\Z\Ì\åra%ù|>tww\ç[ZZ\n§pj…aT¥\Ñ\Ñ\Ñ×§¦¦òa&&&Â‘#G&Nœ8!XÂ©›qV\é\Õ\Ñ\Ñ&\'\'\×\Ú\Í;?6ş3\Òi¿™R8…“*²cÇ¯777\äV\Í\ä„z5ù™\Éd£]\ï\ê\ê,\áNªS*•jokk›ON’¹eßœ\é\ì\ìü[ò½·\ã÷—\ãcœñ!Û¥\ÖF\İ.œ\ÂIõ\Åókõõõg;–+~¢\èò\å\Ë\ê\ê\êfjkk?kjjz|ñg\Ê1œ\Ë}m½oN\á¤z7PCKKKvppp>›\ÍNµ¶¶%_\ËÄ¯¯p\n§pÂ‚øN¡\ä\Ú7Sük¥¼sH8…S8)‹€.w»p\n§p\Â\Z	§p\n\'§p\n\'T_8ór$„á´„S8NK8…á´„S8A8…S8A8…\áD8-\áN„\ÓN\áD8-\áNN\áNN\áD8N\áD8NK8…á´„S8NK8…„S8…„S8N„\ÓN\áD8-\áN„\ÓN\á\áN\á\áN„\áN„á´„S8NK8…\á,\áNN\áNN\áD8)½½½‚%œ\Â	kqúô\é\Ü\ØØ˜h•Áºv\í\Úß“p\ÎÚ•\ÂI™;u\êÔûúúò£££t:]ñ\Ñ\ì\é\é™K\Öv¥pR’‹µ-9\éLÇ»‰•¸Îœ9:::BWWW¨\Ôÿñ¤)š\Â	\"„°ubb\"?99š››GMD8\r\r\r†ó©Tª\İT„(!“\É<\Ë\åB¡C‡\Í755=n:\Â	,addd.™šš\Ê\Õ\××Ÿ5\áŠ÷†?K.¢SN`A\Ò\Æ\'²\Ùl©n†|>ZZZ²555[LK8D:Î„\\¹r%>Q\ÔeZ\Â	$úûûW\êf˜™™™ŒRcc\ãVN¨zû÷\ïÿE\Æe\Ã\Ù\Ú\Ú:\ä\Ä)œ@÷\ß¶T4/_¾|!¹ˆ2\ãN À¶mÛJ¹\ÔC3uuu3UN`	‡>ŸA/ôö\Ûo_¬­­ı\Ìt„XB¼+\Ş\İİ+xñû\ÕT*u\Û;‡„X\Æ\îİ»÷LLL„…ù¸\é½\ê\Â	¬Bgg\çxüX¹\äÂ¹n\Z\Â	¬B¼k/šø„‘i\'\à¢Á\0\rö\0¸h°ÀEƒ=\0.\Z\ìÀEƒ=\0.\Z\ìp\Ñ`€‹{\0\\4\Ø\à¢Á\0\\4\Ø\à¢Á\0\rö\0¸h°ÀEƒ=\0¸h°ÀEƒ=\0.\Z\ìp\Ñ`€‹{\0\\4\Ø€‹{\0\\4\Ø\à¢Á\0\rö\0¸h°\0\rö\0¸h°ÀEƒ=\0.\Z\ìp\Ñ`€‹{\0p\Ñ`€‹{\0\\4\Ø\à¢Á\0\rö\0\à¢Á\0\rö\0¸h°ÀEƒ=\0.\Z\ì¨ªd$^$+¬i“N\àŸH\ÃJá¬­­m3)\á\î¾HÆ—	g¦¦¦f‹)	\'°\ÊSg*•j7!\á–¾P–z¬s\ÚiS85œ:=¶)œÀ\Ê\Ëu§M„\Ö 9a\î,\ç\Ë&\"œÀ\ê.˜;u:m\n§)@	;v\ìøzr\ÒüŸ\äBN¥R·‹\çœ[¸û~\"~Ÿi	\'Tµø2£\äâ¸™ü5¬\âC‹/Mš¬««;bz\Â	\Õ\Ì\'“5¾\ÚX–X·¶m\Ûö”i\n\'lz\É]ò\äÄ˜/Œ`r<´··‡S§N…¡¡¡ğ\Å_„\èÿøGH§Ó¡¿¿?¼ùæ›¡¡¡¡8y§O\á„\ÍÍ¶Â»\å1˜\ï½÷^«199y\çû\ã\Ï\İ}\Çt…6\åI³0š---wN—÷#ş\ÜŞ½{ïŠ§“§pÂ¦\Ó,¼{¾ÿş¯\îß¯x7şĞ¡C\ÅwÛ¿a\Ú\Â	›%œ7Oš\Z\Í\Âx<o™¶p\Âfˆf{\ácš÷{÷|¹»í…yº\Ë.œ°6ÿW§\Íø\Ä\Îz8zô¨S§p\Â\æ\ß\é³ø„P<Ş¼ys]\ÂŸm/|©R|Lu™‹1~\Óu:\Â	ei\ám”wbvøğá°\â\ë<N\'Jó«\Ïûô§#œP®x1T}}}\ë\Z\Îø\"ù‚p”\n¦p\n\'”µ\Â\ìx\ØO\n‹\ï0*\ãü\Â\Ç\Ó]/õ–M:\Â	\åºñ¿z\í\æ\Ãz	\Òr/MZ\Ë{\İı\é\'”\í\Æ_\\\á?4\Ä*\Ã\å*Â‰sOœ\ßúÖ·ş=şZa$PQ\åcœñ~9¾¶S8J9q>òg\Õ-œ@o	\'P\Ö\Ê\éuœE\'ĞŒ? ,\Åw¾O}=\ß9T__¿ªwT\Â\İu\ïUXŸpñœ\\¯\Ï\ãÜ³g\Ï]§M¿‹\Ø,\á|2‰Z\îaü+¯¼\â\à\Í+şÎ¡\Â\×Q>\è\ï*:iº‹lNI\à\Ş*şµÀñ	£ø¬øjŸ=Oÿ–\Ë$\Êİ¦l\ê“g²\îù½\êñuñEò¥~¯zGGGx\æ™g\îù½\ê1Æ¦\nlzy\Ş|À€¸\å1M \ZOŸo\ÜG@\ã\Û&\ßò\ì9P\Õ~7Q\×\Â{\Û\çŠB9¿ğ	\î\'¼#\0\0\0\0\0\0\0\0\0\0\Ê\Çÿ»ã¬‚\Z\å¿v\0\0\0\0IEND®B`‚',1),('2',1,'d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.activiti.org/test\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" expressionLanguage=\"http://www.w3.org/1999/XPath\" id=\"m1578711271300\" name=\"\" targetNamespace=\"http://www.activiti.org/test\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\">\r\n  <process id=\"allowance\" isClosed=\"false\" isExecutable=\"true\" name=\"è¡¥è´´ç”³è¯·\" processType=\"None\">\r\n    <startEvent id=\"begin\" name=\"å¼€å§‹\"></startEvent>\r\n    <userTask activiti:assignee=\"#{username}\" activiti:exclusive=\"true\" id=\"selfVerify\" name=\"ç”³è¯·äººåŠç†\">\r\n    </userTask>\r\n    <endEvent id=\"end\" name=\"ç»“æŸ\"/>\r\n    <sequenceFlow id=\"_5\" name=\"å‘èµ·ç”³è¯·\" sourceRef=\"begin\" targetRef=\"selfVerify\"/>\r\n    <userTask activiti:exclusive=\"true\" id=\"leaderVerify\" name=\"ä¸»ç®¡å®¡æ ¸\">\r\n      <extensionElements>\r\n        <activiti:taskListener event=\"create\" class=\"com.ruoyi.process.allowance.listener.MyTaskListener\">\r\n		</activiti:taskListener>\r\n      </extensionElements>\r\n    </userTask>\r\n    <sequenceFlow id=\"_8\" name=\"æäº¤\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æäº¤\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_9\" name=\"åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é€šè¿‡\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_6\" name=\"æ”¾å¼ƒ\" sourceRef=\"selfVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ’¤å›\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_10\" name=\"ä¸åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram documentation=\"background=#3C3F41;count=1;horizontalcount=1;orientation=0;width=842.4;height=1195.2;imageableWidth=832.4;imageableHeight=1185.2;imageableX=5.0;imageableY=5.0\" id=\"Diagram-_1\" name=\"New Diagram\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\">\r\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"Shape-begin\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"30.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"Shape-selfVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"Shape-end\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"Shape-leaderVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5\" id=\"BPMNEdge__5\" sourceElement=\"_2\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"62.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6\" id=\"BPMNEdge__6\" sourceElement=\"_3\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"190.0\" y=\"182.5\"/>\r\n        <omgdi:waypoint x=\"125.0\" y=\"305.0\"/>\r\n        <omgdi:waypoint x=\"215.0\" y=\"431.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8\" id=\"BPMNEdge__8\" sourceElement=\"_3\" targetElement=\"_7\">\r\n        <omgdi:waypoint x=\"232.5\" y=\"210.0\"/>\r\n        <omgdi:waypoint x=\"232.5\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9\" id=\"BPMNEdge__9\" sourceElement=\"_7\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"345.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10\" id=\"BPMNEdge__10\" sourceElement=\"_7\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"275.0\" y=\"317.5\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"250.0\"/>\r\n        <omgdi:waypoint x=\"275.0\" y=\"182.5\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0),('2502',1,'d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.activiti.org/test\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" expressionLanguage=\"http://www.w3.org/1999/XPath\" id=\"m1578711271300\" name=\"\" targetNamespace=\"http://www.activiti.org/test\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\">\r\n  <process id=\"allowance\" isClosed=\"false\" isExecutable=\"true\" name=\"è¡¥è´´ç”³è¯·\" processType=\"None\">\r\n    <startEvent id=\"begin\" name=\"å¼€å§‹\"></startEvent>\r\n    <userTask activiti:assignee=\"#{username}\" activiti:exclusive=\"true\" id=\"selfVerify\" name=\"ç”³è¯·äººåŠç†\">\r\n    </userTask>\r\n    <endEvent id=\"end\" name=\"ç»“æŸ\"/>\r\n    <sequenceFlow id=\"_5\" name=\"å‘èµ·ç”³è¯·\" sourceRef=\"begin\" targetRef=\"selfVerify\"/>\r\n    <userTask activiti:exclusive=\"true\" id=\"leaderVerify\" name=\"ä¸»ç®¡å®¡æ ¸\">\r\n      <extensionElements>\r\n        <activiti:taskListener event=\"create\" class=\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\">\r\n		</activiti:taskListener>\r\n      </extensionElements>\r\n    </userTask>\r\n    <sequenceFlow id=\"_8\" name=\"æäº¤\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æäº¤\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_9\" name=\"åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é€šè¿‡\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_6\" name=\"æ”¾å¼ƒ\" sourceRef=\"selfVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ’¤å›\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_10\" name=\"ä¸åŒæ„\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram documentation=\"background=#3C3F41;count=1;horizontalcount=1;orientation=0;width=842.4;height=1195.2;imageableWidth=832.4;imageableHeight=1185.2;imageableX=5.0;imageableY=5.0\" id=\"Diagram-_1\" name=\"New Diagram\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\">\r\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"Shape-begin\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"30.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"Shape-selfVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"Shape-end\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"Shape-leaderVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5\" id=\"BPMNEdge__5\" sourceElement=\"_2\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"62.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6\" id=\"BPMNEdge__6\" sourceElement=\"_3\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"190.0\" y=\"182.5\"/>\r\n        <omgdi:waypoint x=\"125.0\" y=\"305.0\"/>\r\n        <omgdi:waypoint x=\"215.0\" y=\"431.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8\" id=\"BPMNEdge__8\" sourceElement=\"_3\" targetElement=\"_7\">\r\n        <omgdi:waypoint x=\"232.5\" y=\"210.0\"/>\r\n        <omgdi:waypoint x=\"232.5\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9\" id=\"BPMNEdge__9\" sourceElement=\"_7\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"345.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10\" id=\"BPMNEdge__10\" sourceElement=\"_7\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"275.0\" y=\"317.5\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"250.0\"/>\r\n        <omgdi:waypoint x=\"275.0\" y=\"182.5\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0),('2503',1,'d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.allowance.png','2501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0c\0\0\É\0\0\0PEXi\0\0\×IDATx\Ú\í\İlT×\ÇqTUUT­V¨Š\ZUQ\íJªªŠ¶Šª­VQ—**jÚ¢FØñÁ\à`b\â„%Q\ÜXæ‘†È‹ ZRòRmH²\ĞnLlŒƒ&dy9@yŒ\Í#`ğ{\Îşÿdœ=¶g\æ\Ü\Ç÷#‘xÀ3ó¿3?ÿ\ç\Ü{ÆŒ\0\0\0W²¼\Æ4²u;\0 –ƒ}-Ó·\0c\0 Œ\0„1\0\ÆT\0ú#«)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸Ÿ1f\ì†\r\Ş]±bÅ¥eË–\Å\æÎk\nM~~¾)((0÷\ß¿)++\ëZ°`A\ãœ9s b\0F\'OŒ¾ò\Ê+\ï»\ï>3s\æL³f\Í\Z³m\Û6s\ê\Ô)\Ó\Ş\ŞnTWW—inn6;v\ì0¯¾úª™1c†™5kV¬´´t³\ã87PE\0ùLø†ššš3³g\Ï626»w\ï¾\Zº©jhh02‹6Ó¦M32‹^@E`³\ágŸ}6VRRbv\î\ÜiFcÿşıfÎœ9\æ{\î9]XX8–\ê@\nZ[[ç”••™\åË—›‹/št\Ğv†~¿{\ï½÷K\Ú\0ÂŒXƒxÉ’%¦»»Û¤[EE…ÎÏ7\î:ª\r\0\Ğ±¶&t›‰ \îõ\Ì3Ï˜I“&¥\â\00\0ı°N{\Ä\éjMÖ²˜1cF\Ìqœª\0ı\ÚºjBWLdƒ~¨F{\è@]G¬\Ë×²\é\ÑG\í\Ê\Ï\Ï_Oõ`\ÌWg\Ö\é	Ùš÷Ú·oŸ‘™ñ>\Ì\0QUUõ7=³.“\Ú%SXX\Ø‡§q\0^kBOq¶\áé§Ÿn\Ë\ÏÏ¯\ã(\0<½\è^kÂ†­[·vK\ç(\0<½úš^ôÇ†3g\Î\Ä$Œ;9\n\0O/\Ù{õµl\Ó\é%89\n\0O\Ã\Ğ&\Â\0Ä”)SlÎŒc„1\0ˆxÀZÏ¸¹¹¹‹1\0ˆòòòN[«)6l\Ø\Ğ\Ìj\n\0‹-:jkqYYY\ëŒ@Ì™3\ç.İ³\Î\Æxz:4g\àÀÿrO¶¯MQ__¯-\n®M\0½y\ä‘MK—.\Íj7q\Õ6\0H …\Ş}÷\İ1\İ\Ñ9>ú\è£3:+\æz\Æ\0\ĞÏ¬Y³\Êôó™\Şé£­­­\'‰t±\Ó\0$1cÆŒSO?ıt&?Ì‹\É}4‡\Ã\áCT\0’\Ğ\Ód†|fÅŠ™\äXii\é1]W¬mª\r\0Crqqqó“O>i._¾œ¶\ÖÄ½÷Ş«\Ø§O\0\Ãä‚‚‚CÓ§O\íÚµk\Ô\ÖiX[Ìˆ`ôC¶I“&u———_\ÑPN\ë\â\ã?n\Ñt|\Õ\ÖÀh\èlVfµ\Ñ\Ù\í\äÉ“cË–-kû\àƒº›ššzôzÄ½W_Ó‹ş¼ÿşûgôg=³NCX\×Ó–\0€4“p-Q-\ã¨´\î_gF§ö„e\Ô\ë)ÎœY\0\Ù\rh3şüoR	\0°\Æ\Å\Å\Åß¦\0`9ŒY%\0.\ã	&\\O%\0Àn\Ç&Nœø=*\0…\Ã\áXQQ\ÑMT\0,‡qaa\á¨\0X\ä8NONN\Î©\0\Ø\ã[¨\0X”ŸŸß——w+•\0\0»a¬;<ÿŒJ\0€\å0v\ç6*\0vÃ¸+\nı‚J\0€\İ0\î‡\Ã\ã©\0\Ø\r\ã¿¡\0`‘ÌŠ;\"‘\È\ï¨\0Ø·\ËÈ¥\0`7Œ\ÛA%\0Àn_\Òí˜¨\0Xc™\ßE%\0À¢p8|Qùn*\0vg\Ædf<“J\0€İ™ñy	\ä9T\0,’Yñ¹P(t?•\0\0‹dV|V\ÂøA*\0…\Ã\á–H$RJ%\0Àn7K—S	\0°(??¿Iy•\0\0»a|J\ÆcT\0\ì†q£ÌŒ—P	\0°\Èqœ\ã¡P\è)*\0vg\ÆG%Ÿ¡\0`7Œ\ËXA%\0Ànÿ#¯¤\0`7Œ\ÈXM%\0Àn\î8ÎŸ©\0\Ø\r\ã}2^¦\0`Q8n0~J\0€\İ0\Ş-aü&•\0\0»a¼\Óqœ¿R	\0°ÆŸJ¿C%\0Àn\ï0^G%\0Àno“0ş;•\0\0‹òóó\ë%+©\0\Ø\r\ã%Œ«¨\0X\ä8\Î\Æ5T\0,\Ò \Ö@¦\0`Q~~~µŒ:*\0v\ÃxƒŒ­T\0,\Òemº¼J\0€\İ0^§\'~P	\0°(??ÿ]ŸP	\0°\Æke\ì¤\0`7Œ\ß\Ô\ËhR	\0°Æ¯\é\æ©\0\Ø\r\ãWd|F%\0Àn¿¨›’R	\0°Æ«e \0`Q8^)aü*\0v\Ãøy\ÇqS	\0°\Æ\Ëef|”J\0€E¡P\è)™§\0`wf¼DfÆT\0,’Yñb	\ã“T\0,ŠD\"‹dv\ÜD%\0Àn—K7S	\0°Æ¥\Æ-T\0,\Ê\Ï\ÏH\Æ*\093W\Âø•\0\0»3\ã9\ápø<•\0\0»3\ã™\È¨\0\Ø\r\ã\é2.R	\0°Hf\ÅSe´R	\0°\Æ2.Q	\0°\È\ÆmT\0,\n‡\Ãy„1\0X\n…\î”0n§\0`‘ñodtP	\0°(—0\î¤\0`Qnn\î\í\ãtQ	\0°(\nı\\f\ÆW¨\0X‡F@–\é\Ê	fˆÁ¥\0Iñ=\ï\rc]\îF¥\0À\î\ìø(€,‡\ÃË’…q4\Z\rS!\0\È\Ş\ì¸u€0f—h\0\Èr?\Ò?ŒõBóT\0²\È\Âø,\0d&\\’0+.¡\"\0`yvL%\0À¢P(ô0aÀ×Œ1\×:t\èx}}½Ù¸q£©ªªbŒ`TWW›Í›7\ÇdTğª0l\Z\Äuuu¦¹¹\Ùtvv2F1ZZZLmmmL‚y¯,\0Ã¢3b‚8½,3e®½`x´5Aˆ¦whÛ‚W€a\Ñ\à @	c\0	\ãK_2‡v¬1\r\Õ¯ıoı\Z\áK\ÈR·o4{7”™]Ÿ\×g\è\×ô6˜0…0>Ş°\îš \î\'\Z\ÖÀ„1€l„ñ¾MO$\rc½\0&Œd!Œ÷V\ÍO\Z\ÆzL Œ	c\0Ác]=‘,Œõ6˜0…0>°eE\Ò0\Ö\Û`\Â@\Âøl\ãn³÷ıòk[ò5½\0&Œd!Œuşø\åk\ÂX¿Fø\Æ\0²\Æ\æÀÖŠk[ò5½\0&Œd8Œõ»/¶<—´g¬·qa Sa,3\ŞSjÌ\ÊÒ¤A\Ü;ô\ï\è\ße–LHc5f–L\ÈB§2l–L\Æ\0\Ò\Æ#\r\â\ŞA\Æ\0\Ò\Æ\Â\0aL Œ„1\0Â˜0@3c\0„1a€0f\Æ\0c\Â\0aœ\ép’»p¸\åv\Â@`\Âx°¯Ù¾0@\Æ\0@\Æ\0c\Â\0c\Â\0aL@ö\ÃxK\Û\0Àns\Ò\0Æ„1\0Â˜0\0Â˜0@\Æ\0@\Æ\0c\Â\0c\Â\0aL\Æ\0c\Â\0a\Ì ŒÆ„1\0Â˜A Œ	c\0„1ƒ00\n7n$@\Ó<\Ş{\ï=\ÂÀğ\Ô\Õ\Õõ477¢i\Z<FM8\Éh\Ë\Ï\Ï?+ã€Œzµòµ¿\ÈX\î8NInn\î\í\ãÆ»W!€1555\Õ\Ö\Ö\ÆNŸ>=ª:{ölÆƒ®±±\Ñ\ÕA|\âÄ‰£\Õ\Õ\ÕWV¬X±^‚×¤0\Î\Æ\0¾&² ªª\ê’ö:S•••\æõ\×_7¯½öš‘ 7¸\Z.\ëÖ­3©~\á\íÛ·›\åË—›w\Şy\'c÷‘†\Ñ)µ\\¦5•z¬*ŒC¡Ğ¼ú\0¤¤°°p¬GüZı\Ò]wİµ\ï\ÙgŸ\íÜ´i“9ş¼\éuô\èQ\r—L=¹‹±\çÎ‹\é}ŸöJ\í¤f\ç	\ãí¼º\0¤Lƒ\ãücÏ¾}ûºõWñÈ¬õJ8n\È\Ôc8v\ìØ¡\ŞûÚºuk·„\Üb/\Ô.‰ü:IÇ¢\Ñ\èOyuHIQQ\ÑM3gÎŒ™!lØ°¡C-\Ï\Ächmm\Í\ë\é\é\ésø\Ãºõ±y\ä‡\Ù@ı\ã“&Mú^e\0Rš\Ù=ú\è£W†\n\ã+V\Äô\ïf\â1455]sÿ_~ùe\ÙN/\ÔP? “\àmO\â\ãÇÿ®ü&Q¥¡¬\Şq\ÇÿÌ«\r@Rºüj\íÚµ]C…qIII,«?¾1\Ù}¾ıö\Û:»,ğB£\Ñh¸7Œh\é\ÌXg\È2ºd<\Â+@²™qÅ¶m\Û:bm!L™2\åLº\ï[¾õ-\í\í\íI\ï7‹™x \İ+K\Ãô;»’\ÜöH<i]\0¸–ü\n]\Ù\Ô\Ô\Ô=X·´´\èµ6\İ÷\İ\Ø\Ø\Ø:ÔŒüğ\á\Ãúa\Ş;^¨¥®J¬Ï­­\nZ\0’…ñ§mmmƒ~€·gÏX(z0\İ÷½eË–¡²\Øttt\\]:¦Aç—šÓº\0p3f4j;` \İ\İ\İz\êowyy¹\É\Ä\Êù¾oJ\Ø\ZÆ¿ÿı\ïyef<‚¶­\0_y\â‰\'\ÚÃ¯³³3¦=ä§z\ÊD£\Ñz…L®—}\ã7’ö«\åAƒU«ŸO\'¦u\àªU«V\Å>ûì³«+JJJ´7|Ag¢999·d\ãşõB:º}x\×‰D:¼²š‚\Ö€»õ\Ö[¿­ıX½ú˜üù®„ğm6Ç’%Kvõo•¼ğ\Â_h?;hÇ„\Ö@v\Û\äM\Éö‡cÚ†¨¬¬\ìI8\á\ãˆü`\èò\Êx´.\0Œfö²\ÎÀ$ˆ\à†\Ç3{ö\ì¹\çÎ3ñõÊµ)h]\0M—\é¬+\nı\ÂMkÕªU-z	Myl\'9J}­Àoœ¯è¯¿\Ó\ÜöØ´-¡=lıP#\Õ­ÀG\äMü3y3w\Ëx\ÜÅ³@ö–­Àû¿\ê~_Â¸#\n½\íò\ÇI§V\'Z€\×\ä\å\åı“\ã8ç¼°TŒ0N­À{³¨\èjşüù\ß$Œı‡\Ö\à ®\ÓSŠevü<^\Âxäµ£u¸ô\Íù¢<!¿\Â\Ş\ì¡\ÇL­Àe\"‘H©.a“ñKı\0!ŒÓ€\Ö\à2#\ÊÓ™‘ñt\Î\æ	\ãôÖ“\Ö`ƒ^\îR\×\Ë\Ìx©GÃƒ0N3Z@–M<ùFİ¥8\nı·‡gr„q†Ğº\0² ¸¸X/‡yVf>;½ü<\ã¬Ô˜\ÖÁ7\ØA§¼°–˜0¶\Ö™\0«\Õ\ëO˜0\áz<\Â8‹h]\0\é¯\ÕúFŠF£?ò\Éó!Œ\íÔ\Ö0Š7\ĞCñ_3\Çû\è9Æ–Ğº\0FZ¹ñµ\Ä3}ö¼c\Ëh]\0)\Ê\ËË»U\×K?\í\Ã2„±{­ ™‰\'~O\×\ËX\ï\Ó\0 Œ]„\Ö0\0\İEYf\Ãg\äM±\ÇÇ³1\ÂØ…h]\0}ƒ\ês	â¦¼¼¼oÆ°t|h] ğo‚~YKL{­–¼\àW\ÉÿŠüù\ã\0ü\Ğ!Œ=‚\Ö‚6#ş/D\"‘_\äù\Æ\Ş;f_·.d\Âp\ï„B¡;\ã¿\n\Î\Ğ›0ö \ßşö·7\Ê\ëô¬?™8ü+ŸB\é\'ò\â\Ö\Ö\Äò€=o\ÂØƒ3c\İ\ŞKg\Æòç¯¨|C^\Ğ7H·É‹ûø\Æ&Œ=\"\Ş3>I\Ï¾¤k‰\å…\İ\"a\Ü\ĞYa\ìrºzBS5«)\àkò\â\Ş//ò\Ó~^KL{úø|İ’`1ü\ÄU2.|7Àov\ÂØ…hI HAü¼®%\Î\ÉÉ¹%\à3/\Â\ØEhI P\ä×¾}±‡B¡	ü\ZL»\èXĞ’@ph\0Ç¯K\\B5c7 %À‰D\"ÿ?\ÍùyªA\ÛFK¤k‰\åEY\ÆûTƒ0vA\İiI xtÙš\Ì<šå…¿j\Æ6Ñ’@ \é	ò\Âo\Ö<¨al-	\Ä\áp¥¼Ú´MA5cK5¦%À¿	Ó‹ÿ\èwTƒ0\Î6ZÀW3\â\Ùñ\ëÿj\Æ\ÙDKˆ\Ó\Ã\Ç\×Ï¥\Z„q–\ëIKˆÏˆ_K¼’j\Æ\ÙBKH ü\ÑMDu3QªAg-	 ]K,oˆ&ŸS\r\Â8Kµ£%ğ\Æ\Ø+oŒ3¬%&Œ3–D(ú›®%8q\â÷¨aœ)´$€A\ÈløıÀ.//\ïVªAg°N´$€A‚xf|-ñDªAg-	`2şUüñR\r\Â8\İhI\0)ˆF£?Ò™ŠÌŒÿD5\ãÔ„–0”	&\\_K¼‰j\Æ\éDKH\Ñüùó¿)o’S2P\r\Â8]hI\0\Ã]2\Î›j\Æizş´$€\á7\Ì:yÃ´O<ùFªA-	`\äW\Çeò†\éF£?¥\Z£\n^=]\Ü1.Ñ’\00ĞŒxzü“G5F\ÆC…±\Ôy-	\0ıƒø—2t-ñ\ÃT#m\Ô2H·úñ\Ú´$€Q\È\É\Éùa|-ñŸ©Fvf\ÇR\ë\Å^xÚ®Z¶l™©¨¨øz,_¾\Ü,\\¸°Ï˜7o>¯m´$€\Ê\Ë\Ëû\Î\Òdl¦\Z	\äzÇ—¼2+~üñ\Ç÷÷ôô˜¡¬\\¹\ÒĞ’\0F(¾–¸Qfi©Föf\Ç^\é\ë.ß›7o2ˆ;f¦L™òGù›\í%Î±–8\ã|Ò‹³\â_|qG*³âŠŠŠ.20ò ~G\×\Ëø>\Õ\È,™	OKc\Ï|¨\Õ\Ğ\Ğ0d766ê¬˜\ë–\0#‡%º–XÆ¿S¬Í¯ö½2+^³fÍ»©ÌŠ—.]\Zc\Ç`„³4]\ÂF\ÃT#«a\\\à¥3ğö\ì\Ù3d:t(&¯§J.0L¹¹¹·kûiı§d\Âu\n\Ç\ë\ë\ë\ÍÆMUUc£ºº\ÚlŞ¼9&£B\Æ©ÌŠ-ZdŠŠŠn\âoF|s|!ş\Ë~z^\Z\Äuuu¦¹¹\Ùtvv2F1ZZZLmmm\ìğ\áÃ±¡‚ø\àÁƒ\İòšj\àCaa\áXy\ã\\” \Ş\â·\ç¦3b‚8}cß¾}×œ 2u\êT3{ö\ì>C¿¦¿iñ\îR¤k‰%ˆO8sXş÷~{~Úš D\Ó;\Ş{\ï=.‚¤›\Ìl>‘ >Ÿ——÷O~|~\Ú\ï$@\Ó;´¦¼s€4’ş«„q‡Ÿ?dI5Œ/}y\ÊÚ±\Æ4T/¼:ô¿õk„/ad:ˆ\ëZb¿_+ •0n=\ßhön(3»ş>¯\ÏĞ¯\ém0adª515¾„-\â÷\çšJoXwM÷\r\ë	`\Â\ÈÈŒø?õ2†‘H¤<\Ï7•0Ş·é‰¤a¬·À„1V………? \î”@~5(\Ï9•0\Ş[5?i\ëm0a¤3ˆ\ÇJ_0®\Òó&Œ	cÀM¾!A|\\‚ø\È®%m\ë\ê‰da¬·À„1\Â\Ûe|Ä­nR	\ã[V$\rc½\0&Œtñ›\Ú\'.((ø— >ÿT\Âøl\ãn³÷ıòk[ò5½\0&ŒQ	‡\ÃO\êZb\Çqnj\rR=\é\ãğ\Ç/_\Æú5Â—0FEø‡ñ¹<\ä:¤\Æ\æÀÖŠk[ò5½\0&Œ\ÑÎŒ—\Çw\ìø	aœü\ì»/¶<—´g¬·qa¤#+e\\0a\Âõ„q\ß\Ùğ©5fOei\Ò \îúwô\ï2K&ŒQ‘™ñA½Læ˜€-kK\ÆCÍ†™%\Æ@F\è\å1ui›/?’0Ne6<\Ø,™0&ŒÑ´+®n«$®z4ˆ{aL£mWüF/\n…\î	r3cÀ:	\â‡\ãüsÂ˜AE\"‘7t‡É“\'\ßH3cÀn\Ëb—Œ–¼¼¼o\Æ\Â°DCX\ÃXC™0fÆ€EÚ¦\Ğv…¶-caX¤\ä\Å?\Ğ{˜0fÆ€\İ@¾GY—¾\Æ\Â°HO‰Ÿr3a<º!w;\à\È\Ö\í„1\àqzº´6­§OÆ£\ãÁ¾–\é\Û	cÀû¾¡\ÒÆ„1aX¤—\Ú\ÔKn\ê¥7	cÂ˜0\ì¶+~¿(ı\ã„1aLv9\â8®°ˆÆ„1a\Ø\r\äÇ½¾maL¾\àõm›X\ÚF~š!{v\Û&Nú Œ\ßğò¶M„1aø­]\á\Ém›c\Âğc»\Âs\Û6Æ„1\àK^Û¶‰0&Œ\ßòÒ¶M„1aø½e\á‰m›c\Âğ5¯l\ÛDÆ€\ïya\Û&Â˜0Á\í\Û6Æ„1¤@v\í¶M„1aŠ[·m\"Œ	c pÜ¸maLA\äºm›c\Â$·m\ÛD\Æ@\Û®Ù¶i\ãÆ(a:]±mS]]]Oss3!š¦q\âÄ‰£Æ¼\Âo²õm›jjj«­­>}\Ú\Õ!\×\Ô\Ô\ä‰ ®®®¾\"c¯nÀcÜ°m“„\Ç™\Í]\Ò_¯\İ8>üğC³xñb³v\íZ\ã\Ö\Ç1\à\í²g·mÊ´\ç{.\çÂ…F[)EEE‡©€Œñò¶M™\ä8\Î\r›7o™¸u\ëÖ™\Ü\Ü\ÜÛ©€L¶+<¹mS¦Œ7\îºÅ‹·öôôôf±\Ñÿ.//?Iu\0d”·mÊ”\éÓ§\Ô\ÖDŸ~ú)³c\0™\çµm›2ô[Beb{¢¿•+W\á• ã¼´mS‚xÙ¢E‹z\Ì t™[yyy.¯\0\ç•m›2ğ¼Í…®˜!\Ô\ÕÕµó*q^Ù¶)¿T9r¤g¨0®©©1………cy¥\0\È8/lÛ”	¥¥¥­\İ\İ\İIƒøò\å\Ëf\áÂ…oñ\n5nß¶)tµÄºu\ë’~€÷\æ›o^\ä•ÀF »vÛ¦L™:ujmkk\ë5¼ÿş\Øc=v3¯\n\0V¸uÛ¦LÑ“>Ö¬YÓ§W¡§E¿ğ\Â\Ïòj\0`•·m\Ê$\Çqf:t\è\ë0^»v\í	^\0\ÜÀu\Û6e\ÚÂ…O\èiĞ»w\ïfõ\0÷pÛ¶M™VTTt\Ó[o½e\æÎ\ÛÁ\Ñ\à*nÚ¶)KÏ·\ÌqVP\0pe@¹bÛ¦l\ßfk¯œ£À­l}Û¦l:s\å9\ãˆpó¬\Ñú¶MYø¡ó®\ÔÀõa\å\ëm›´g,£™#\rÀ\Õü¾mS$Y$?lš8\Ò\0\\\Ï\Ï\Û69³X\Û-ğÌ¯ó¾Ü¶I/8/\Ï\ë8G€gøq\Û&	\ã\åòœrtxŠß¶m’0~\Şqœ\ÃY\0\ã§m›$ˆÿ¤\ëq\0ğ?m\Û$\Ï\áEŸsTx’_¶m’\çğŠŒ\Ï8¢\0<\Ë\Û6\é“p8¼‡£	À\ë\ì\ém›\Çù«„ñN$\0\Ïóò¶Mò¸ß•ñ	G€/xu\Û&™\ÙÿMf\Çqø…\'·m\Ò+\Ó\Éc®\çğğ\r/n\Û$A\\-££ÀW¼¶m“<\ÎZ›8r\0üÈÙ¶Ig\Å:;\æ¨ğk {b\Û&\íe7l\0\å…m›$Œ·\ËX\Ï\Ñ\à÷²«·m\Ò5ÆºÖ˜#À\×Ü¾m“}§g\áq¤\0ø›·m’ÇµW\×\ë%\0\à\Öm›ôŠmz\å6€Àp\ã¶Mz-c\Çqş\Ì\Ñ(nÛ¶I‚X?`\\Å‘8nÚ¶I÷¿\Ó}ğ8*\0\ÇM\Û6\é\Î\Ğ\È\ÏpT\0’[¶m\Ò5\Ğò–rD\0–¶m’û?)3\ã\Å\r\0Ad«\Û6\Éı6\É\ìxG@\à\ÙÜ¶)Ş»~„£\0\0c\ìm\Û$÷yF\ÆC\0øŠ•m›\Ç9\n…\î§ü\0gcÛ¦øEŒ\î¥ú\0\Ğ7³ºm“ÌŒ/Ê˜N\å\à\Ú@\ÎÚ¶Mr—\ä¾\î¢\ê\00pHfe\Û&ùş—½°W\0X“m›$ˆ\Û\ä>ò¨6\0–İ¶I¾·’ı;*\r\0ƒH\ç¶M999·8s›Œz¿&ÿ\İ)÷ñ+*\r\0C\Ï^Ó²m“üûù>&\É\Ğ¯È¸PXX8–ªÀ\0Ò±mS4\Zı\é a|uH`ÿ…jÀ Ò±mSü\Âö±.§cV\0)H¶m“\Ìz\Ãr[\Åhf\ÇÌŠ`ø³Û¯·m’m‰Î˜\å\Ïó©ü{	\İı„q7³b\0†\Äm›d¼–0³7îº¡ş}(ºs€0^Me`˜´M!3\á\Ø\0}ß™)Î®O&ü»¶TB\0@\×	\ëF¢Iz¿\ëSlULKø7QU\0†¢¢¢›$<\ÛYÖ”\ê÷Ò¿«ÿfüøñß¥²\0\"m%\è‡tC¬°o¬_\Ó\í•d\Ô\ÅûÍı?À“qVF½®\Ê\à\Ã<\0:_\ÒK_²^ø¶Ş¿¯§@\Ë\×j%`»†:\á£ÿšc=c/ñ{\0 k‹Å¡\Ökh\ëU\ß$„\ÍpB8É¨g¦\0C\ĞÙ«\Î~\å\Ï\Ş\Ùo»ü÷5}\å™3gšU«V™mÛ¶™\Æ\ÆF\Ó\Ş\Şn”ş\Ù\Ü\Ül>ù\äó\ÒK/™’’’\Úmº$j@\n$4\ëe\Æ\Ü\'H\çÍ›w5h»»»Mªv\î\ÜiJKKû‡rL¾ÿª\0ƒñ´Ä¶„†òúõ\ë‡\ÂıUVVš\Â\Â\Âş³d\0’››{»q,±%ñ\Å_˜t8räˆ™={vŸ2-\0\è\'¾Â¢=1ˆµœNúıY{\È|¨\0}\Û•‰­‰tÍˆš!÷kYl§ú\00\æ«uÄ‰}b\íg’öû\Ç\Ú\á(\0<]Ò–¸j¢««\Ëd\ÚC=”Ø®h\à(\04\í\'Y§\Ë×²a÷\î\İ}\Î\ÔK\Ü\à\0G—˜%~h7š%lÃ•xbH*;Œ\0€Ÿ[u½¸zõj“M¯¾újŸÓ¥9\Z\0‚\Æ-½¨§8g“¶DZ\ç9\Z\0+\áZ\æÔ©SY\rc]wœxùM€ ÏŒ¿\ÄŞ‹şd‹\Ş_\âıs4\0\Æ2l Œ€™1\0¸=c\0p\ÇÌ˜\Õ\0\à‚0f1\0¸ M±\Ø\Öx÷\İwg\à€\ÒkSh¿–kS\0€ıV\ÅöÄ«¶ecvœ¸7Wm€1_]\ÏX·A\âz\Æ\0`v\\—­>¦L™\ÂN\00İ‹N÷¤\Ëôx³f\Íb<\0Œ\îÖœØ®H÷\îĞ‰A\Ì\î\Ğ\00x ?˜\ÈÚ²\Ğòh>\Ô\Óq¿Ö„ÎŠPm\0F ÷®²Ø¹sç°—¯•••õ	aı¾1\0£e‘\ØCNl]\è™z;v\ì¸z-‹Ş‹\éŸ\Ú\ÖÀ\Ö3\ëO\èH\ìÓš\0€a\Ò\×WYŒrl\ç\Ã:\0]‡,³\ÚO\Ï\ÔKe\è™uzBG$ù5U€4\ÑS§\ã×²\Ğ\ÙrK\â\å7Nk>¯ı\ÑkMpŠ3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ãÿ\à\à\İ	\ÍcÀ‚\0\0\0\0IEND®B`‚',1),('3',1,'d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.allowance.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0c\0\0\É\0\0\0PEXi\0\0\×IDATx\Ú\í\İlT×\ÇqTUUT­V¨Š\ZUQ\íJªªŠ¶Šª­VQ—**jÚ¢FØñÁ\à`b\â„%Q\ÜXæ‘†È‹ ZRòRmH²\ĞnLlŒƒ&dy9@yŒ\Í#`ğ{\Îşÿdœ=¶g\æ\Ü\Ç÷#‘xÀ3ó¿3?ÿ\ç\Ü{ÆŒ\0\0\0W²¼\Æ4²u;\0 –ƒ}-Ó·\0c\0 Œ\0„1\0\ÆT\0ú#«)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¸Ÿ1f\ì†\r\Ş]±bÅ¥eË–\Å\æÎk\nM~~¾)((0÷\ß¿)++\ëZ°`A\ãœ9s b\0F\'OŒ¾ò\Ê+\ï»\ï>3s\æL³f\Í\Z³m\Û6s\ê\Ô)\Ó\Ş\ŞnTWW—inn6;v\ì0¯¾úª™1c†™5kV¬´´t³\ã87PE\0ùLø†ššš3³g\Ï626»w\ï¾\Zº©jhh02‹6Ó¦M32‹^@E`³\ágŸ}6VRRbv\î\ÜiFcÿşıfÎœ9\æ{\î9]XX8–\ê@\nZ[[ç”••™\åË—›‹/št\Ğv†~¿{\ï½÷K\Ú\0ÂŒXƒxÉ’%¦»»Û¤[EE…ÎÏ7\î:ª\r\0\Ğ±¶&t›‰ \îõ\Ì3Ï˜I“&¥\â\00\0ı°N{\Ä\éjMÖ²˜1cF\Ìqœª\0ı\ÚºjBWLdƒ~¨F{\è@]G¬\Ë×²\é\ÑG\í\Ê\Ï\Ï_Oõ`\ÌWg\Ö\é	Ùš÷Ú·oŸ‘™ñ>\Ì\0QUUõ7=³.“\Ú%SXX\Ø‡§q\0^kBOq¶\áé§Ÿn\Ë\ÏÏ¯\ã(\0<½\è^kÂ†­[·vK\ç(\0<½úš^ôÇ†3g\Î\Ä$Œ;9\n\0O/\Ù{õµl\Ó\é%89\n\0O\Ã\Ğ&\Â\0Ä”)SlÎŒc„1\0ˆxÀZÏ¸¹¹¹‹1\0ˆòòòN[«)6l\Ø\Ğ\Ìj\n\0‹-:jkqYYY\ëŒ@Ì™3\ç.İ³\Î\Æxz:4g\àÀÿrO¶¯MQ__¯-\n®M\0½y\ä‘MK—.\Íj7q\Õ6\0H …\Ş}÷\İ1\İ\Ñ9>ú\è£3:+\æz\Æ\0\ĞÏ¬Y³\Êôó™\Şé£­­­\'‰t±\Ó\0$1cÆŒSO?ıt&?Ì‹\É}4‡\Ã\áCT\0’\Ğ\Ód†|fÅŠ™\äXii\é1]W¬mª\r\0Crqqqó“O>i._¾œ¶\ÖÄ½÷Ş«\Ø§O\0\Ãä‚‚‚CÓ§O\íÚµk\Ô\ÖiX[Ìˆ`ôC¶I“&u———_\ÑPN\ë\â\ã?n\Ñt|\Õ\ÖÀh\èlVfµ\Ñ\Ù\í\äÉ“cË–-kû\àƒº›ššzôzÄ½W_Ó‹ş¼ÿşûgôg=³NCX\×Ó–\0€4“p-Q-\ã¨´\î_gF§ö„e\Ô\ë)ÎœY\0\Ù\rh3şüoR	\0°\Æ\Å\Å\Åß¦\0`9ŒY%\0.\ã	&\\O%\0Àn\Ç&Nœø=*\0…\Ã\áXQQ\ÑMT\0,‡qaa\á¨\0X\ä8NONN\Î©\0\Ø\ã[¨\0X”ŸŸß——w+•\0\0»a¬;<ÿŒJ\0€\å0v\ç6*\0vÃ¸+\nı‚J\0€\İ0\î‡\Ã\ã©\0\Ø\r\ã¿¡\0`‘ÌŠ;\"‘\È\ï¨\0Ø·\ËÈ¥\0`7Œ\ÛA%\0Àn_\Òí˜¨\0Xc™\ßE%\0À¢p8|Qùn*\0vg\Ædf<“J\0€İ™ñy	\ä9T\0,’Yñ¹P(t?•\0\0‹dV|V\ÂøA*\0…\Ã\á–H$RJ%\0Àn7K—S	\0°(??¿Iy•\0\0»a|J\ÆcT\0\ì†q£ÌŒ—P	\0°\Èqœ\ã¡P\è)*\0vg\ÆG%Ÿ¡\0`7Œ\ËXA%\0Ànÿ#¯¤\0`7Œ\ÈXM%\0Àn\î8ÎŸ©\0\Ø\r\ã}2^¦\0`Q8n0~J\0€\İ0\Ş-aü&•\0\0»a¼\Óqœ¿R	\0°ÆŸJ¿C%\0Àn\ï0^G%\0Àno“0ş;•\0\0‹òóó\ë%+©\0\Ø\r\ã%Œ«¨\0X\ä8\Î\Æ5T\0,\Ò \Ö@¦\0`Q~~~µŒ:*\0v\ÃxƒŒ­T\0,\Òemº¼J\0€\İ0^§\'~P	\0°(??ÿ]ŸP	\0°\Æke\ì¤\0`7Œ\ß\Ô\ËhR	\0°Æ¯\é\æ©\0\Ø\r\ãWd|F%\0Àn¿¨›’R	\0°Æ«e \0`Q8^)aü*\0v\Ãøy\ÇqS	\0°\Æ\Ëef|”J\0€E¡P\è)™§\0`wf¼DfÆT\0,’Yñb	\ã“T\0,ŠD\"‹dv\ÜD%\0Àn—K7S	\0°Æ¥\Æ-T\0,\Ê\Ï\ÏH\Æ*\093W\Âø•\0\0»3\ã9\ápø<•\0\0»3\ã™\È¨\0\Ø\r\ã\é2.R	\0°Hf\ÅSe´R	\0°\Æ2.Q	\0°\È\ÆmT\0,\n‡\Ãy„1\0X\n…\î”0n§\0`‘ñodtP	\0°(—0\î¤\0`Qnn\î\í\ãtQ	\0°(\nı\\f\ÆW¨\0X‡F@–\é\Ê	fˆÁ¥\0Iñ=\ï\rc]\îF¥\0À\î\ìø(€,‡\ÃË’…q4\Z\rS!\0\È\Ş\ì¸u€0f—h\0\Èr?\Ò?ŒõBóT\0²\È\Âø,\0d&\\’0+.¡\"\0`yvL%\0À¢P(ô0aÀ×Œ1\×:t\èx}}½Ù¸q£©ªªbŒ`TWW›Í›7\ÇdTğª0l\Z\Äuuu¦¹¹\Ùtvv2F1ZZZLmmmL‚y¯,\0Ã¢3b‚8½,3e®½`x´5Aˆ¦whÛ‚W€a\Ñ\à @	c\0	\ãK_2‡v¬1\r\Õ¯ıoı\Z\áK\ÈR·o4{7”™]Ÿ\×g\è\×ô6˜0…0>Ş°\îš \î\'\Z\ÖÀ„1€l„ñ¾MO$\rc½\0&Œd!Œ÷V\ÍO\Z\ÆzL Œ	c\0Ác]=‘,Œõ6˜0…0>°eE\Ò0\Ö\Û`\Â@\Âøl\ãn³÷ıòk[ò5½\0&Œd!Œuşø\åk\ÂX¿Fø\Æ\0²\Æ\æÀÖŠk[ò5½\0&Œd8Œõ»/¶<—´g¬·qa Sa,3\ŞSjÌ\ÊÒ¤A\Ü;ô\ï\è\ße–LHc5f–L\ÈB§2l–L\Æ\0\Ò\Æ#\r\â\ŞA\Æ\0\Ò\Æ\Â\0aL Œ„1\0Â˜0@3c\0„1a€0f\Æ\0c\Â\0aœ\ép’»p¸\åv\Â@`\Âx°¯Ù¾0@\Æ\0@\Æ\0c\Â\0c\Â\0aL@ö\ÃxK\Û\0Àns\Ò\0Æ„1\0Â˜0\0Â˜0@\Æ\0@\Æ\0c\Â\0c\Â\0aL\Æ\0c\Â\0a\Ì ŒÆ„1\0Â˜A Œ	c\0„1ƒ00\n7n$@\Ó<\Ş{\ï=\ÂÀğ\Ô\Õ\Õõ477¢i\Z<FM8\Éh\Ë\Ï\Ï?+ã€Œzµòµ¿\ÈX\î8NInn\î\í\ãÆ»W!€1555\Õ\Ö\Ö\ÆNŸ>=ª:{ölÆƒ®±±\Ñ\ÕA|\âÄ‰£\Õ\Õ\ÕWV¬X±^‚×¤0\Î\Æ\0¾&² ªª\ê’ö:S•••\æõ\×_7¯½öš‘ 7¸\Z.\ëÖ­3©~\á\íÛ·›\åË—›w\Şy\'c÷‘†\Ñ)µ\\¦5•z¬*ŒC¡Ğ¼ú\0¤¤°°p¬GüZı\Ò]wİµ\ï\ÙgŸ\íÜ´i“9ş¼\éuô\èQ\r—L=¹‹±\çÎ‹\é}ŸöJ\í¤f\ç	\ãí¼º\0¤Lƒ\ãücÏ¾}ûºõWñÈ¬õJ8n\È\Ôc8v\ìØ¡\ŞûÚºuk·„\Üb/\Ô.‰ü:IÇ¢\Ñ\èOyuHIQQ\ÑM3gÎŒ™!lØ°¡C-\Ï\Ächmm\Í\ë\é\é\ésø\Ãºõ±y\ä‡\Ù@ı\ã“&Mú^e\0Rš\Ù=ú\è£W†\n\ã+V\Äô\ïf\â1455]sÿ_~ùe\ÙN/\ÔP? “\àmO\â\ãÇÿ®ü&Q¥¡¬\Şq\ÇÿÌ«\r@Rºüj\íÚµ]C…qIII,«?¾1\Ù}¾ıö\Û:»,ğB£\Ñh¸7Œh\é\ÌXg\È2ºd<\Â+@²™qÅ¶m\Û:bm!L™2\åLº\ï[¾õ-\í\í\íI\ï7‹™x \İ+K\Ãô;»’\ÜöH<i]\0¸–ü\n]\Ù\Ô\Ô\Ô=X·´´\èµ6\İ÷\İ\Ø\Ø\Ø:ÔŒüğ\á\Ãúa\Ş;^¨¥®J¬Ï­­\nZ\0’…ñ§mmmƒ~€·gÏX(z0\İ÷½eË–¡²\Øttt\\]:¦Aç—šÓº\0p3f4j;` \İ\İ\İz\êowyy¹\É\Ä\Êù¾oJ\Ø\ZÆ¿ÿı\ïyef<‚¶­\0_y\â‰\'\ÚÃ¯³³3¦=ä§z\ÊD£\Ñz…L®—}\ã7’ö«\åAƒU«ŸO\'¦u\àªU«V\Å>ûì³«+JJJ´7|Ag¢999·d\ãşõB:º}x\×‰D:¼²š‚\Ö€»õ\Ö[¿­ıX½ú˜üù®„ğm6Ç’%Kvõo•¼ğ\Â_h?;hÇ„\Ö@v\Û\äM\Éö‡cÚ†¨¬¬\ìI8\á\ãˆü`\èò\Êx´.\0Œfö²\ÎÀ$ˆ\à†\Ç3{ö\ì¹\çÎ3ñõÊµ)h]\0M—\é¬+\nı\ÂMkÕªU-z	Myl\'9J}­Àoœ¯è¯¿\Ó\ÜöØ´-¡=lıP#\Õ­ÀG\äMü3y3w\Ëx\ÜÅ³@ö–­Àû¿\ê~_Â¸#\n½\íò\ÇI§V\'Z€\×\ä\å\åı“\ã8ç¼°TŒ0N­À{³¨\èjşüù\ß$Œı‡\Ö\à ®\ÓSŠevü<^\Âxäµ£u¸ô\Íù¢<!¿\Â\Ş\ì¡\ÇL­Àe\"‘H©.a“ñKı\0!ŒÓ€\Ö\à2#\ÊÓ™‘ñt\Î\æ	\ãôÖ“\Ö`ƒ^\îR\×\Ë\Ìx©GÃƒ0N3Z@–M<ùFİ¥8\nı·‡gr„q†Ğº\0² ¸¸X/‡yVf>;½ü<\ã¬Ô˜\ÖÁ7\ØA§¼°–˜0¶\Ö™\0«\Õ\ëO˜0\áz<\Â8‹h]\0\é¯\ÕúFŠF£?ò\Éó!Œ\íÔ\Ö0Š7\ĞCñ_3\Çû\è9Æ–Ğº\0FZ¹ñµ\Ä3}ö¼c\Ëh]\0)\Ê\ËË»U\×K?\í\Ã2„±{­ ™‰\'~O\×\ËX\ï\Ó\0 Œ]„\Ö0\0\İEYf\Ãg\äM±\ÇÇ³1\ÂØ…h]\0}ƒ\ês	â¦¼¼¼oÆ°t|h] ğo‚~YKL{­–¼\àW\ÉÿŠüù\ã\0ü\Ğ!Œ=‚\Ö‚6#ş/D\"‘_\äù\Æ\Ş;f_·.d\Âp\ï„B¡;\ã¿\n\Î\Ğ›0ö \ßşö·7\Ê\ëô¬?™8ü+ŸB\é\'ò\â\Ö\Ö\Äò€=o\ÂØƒ3c\İ\ŞKg\Æòç¯¨|C^\Ğ7H·É‹ûø\Æ&Œ=\"\Ş3>I\Ï¾¤k‰\å…\İ\"a\Ü\ĞYa\ìrºzBS5«)\àkò\â\Ş//ò\Ó~^KL{úø|İ’`1ü\ÄU2.|7Àov\ÂØ…hI HAü¼®%\Î\ÉÉ¹%\à3/\Â\ØEhI P\ä×¾}±‡B¡	ü\ZL»\èXĞ’@ph\0Ç¯K\\B5c7 %À‰D\"ÿ?\ÍùyªA\ÛFK¤k‰\åEY\ÆûTƒ0vA\İiI xtÙš\Ì<šå…¿j\Æ6Ñ’@ \é	ò\Âo\Ö<¨al-	\Ä\áp¥¼Ú´MA5cK5¦%À¿	Ó‹ÿ\èwTƒ0\Î6ZÀW3\â\Ùñ\ëÿj\Æ\ÙDKˆ\Ó\Ã\Ç\×Ï¥\Z„q–\ëIKˆÏˆ_K¼’j\Æ\ÙBKH ü\ÑMDu3QªAg-	 ]K,oˆ&ŸS\r\Â8Kµ£%ğ\Æ\Ø+oŒ3¬%&Œ3–D(ú›®%8q\â÷¨aœ)´$€A\ÈløıÀ.//\ïVªAg°N´$€A‚xf|-ñDªAg-	`2şUüñR\r\Â8\İhI\0)ˆF£?Ò™ŠÌŒÿD5\ãÔ„–0”	&\\_K¼‰j\Æ\éDKH\Ñüùó¿)o’S2P\r\Â8]hI\0\Ã]2\Î›j\Æizş´$€\á7\Ì:yÃ´O<ùFªA-	`\äW\Çeò†\éF£?¥\Z£\n^=]\Ü1.Ñ’\00ĞŒxzü“G5F\ÆC…±\Ôy-	\0ıƒø—2t-ñ\ÃT#m\Ô2H·úñ\Ú´$€Q\È\É\Éùa|-ñŸ©Fvf\ÇR\ë\Å^xÚ®Z¶l™©¨¨øz,_¾\Ü,\\¸°Ï˜7o>¯m´$€\Ê\Ë\Ëû\Î\Òdl¦\Z	\äzÇ—¼2+~üñ\Ç÷÷ôô˜¡¬\\¹\ÒĞ’\0F(¾–¸Qfi©Föf\Ç^\é\ë.ß›7o2ˆ;f¦L™òGù›\í%Î±–8\ã|Ò‹³\â_|qG*³âŠŠŠ.20ò ~G\×\Ëø>\Õ\È,™	OKc\Ï|¨\Õ\Ğ\Ğ0d766ê¬˜\ë–\0#‡%º–XÆ¿S¬Í¯ö½2+^³fÍ»©ÌŠ—.]\Zc\Ç`„³4]\ÂF\ÃT#«a\\\à¥3ğö\ì\Ù3d:t(&¯§J.0L¹¹¹·kûiı§d\Âu\n\Ç\ë\ë\ë\ÍÆMUUc£ºº\ÚlŞ¼9&£B\Æ©ÌŠ-ZdŠŠŠn\âoF|s|!ş\Ë~z^\Z\Äuuu¦¹¹\Ùtvv2F1ZZZLmmm\ìğ\áÃ±¡‚ø\àÁƒ\İòšj\àCaa\áXy\ã\\” \Ş\â·\ç¦3b‚8}cß¾}×œ 2u\êT3{ö\ì>C¿¦¿iñ\îR¤k‰%ˆO8sXş÷~{~Úš D\Ó;\Ş{\ï=.‚¤›\Ìl>‘ >Ÿ——÷O~|~\Ú\ï$@\Ó;´¦¼s€4’ş«„q‡Ÿ?dI5Œ/}y\ÊÚ±\Æ4T/¼:ô¿õk„/ad:ˆ\ëZb¿_+ •0n=\ßhön(3»ş>¯\ÏĞ¯\ém0adª515¾„-\â÷\çšJoXwM÷\r\ë	`\Â\ÈÈŒø?õ2†‘H¤<\Ï7•0Ş·é‰¤a¬·À„1V………? \î”@~5(\Ï9•0\Ş[5?i\ëm0a¤3ˆ\ÇJ_0®\Òó&Œ	cÀM¾!A|\\‚ø\È®%m\ë\ê‰da¬·À„1\Â\Ûe|Ä­nR	\ã[V$\rc½\0&Œtñ›\Ú\'.((ø— >ÿT\Âøl\ãn³÷ıòk[ò5½\0&ŒQ	‡\ÃO\êZb\Çqnj\rR=\é\ãğ\Ç/_\Æú5Â—0FEø‡ñ¹<\ä:¤\Æ\æÀÖŠk[ò5½\0&Œ\ÑÎŒ—\Çw\ìø	aœü\ì»/¶<—´g¬·qa¤#+e\\0a\Âõ„q\ß\Ùğ©5fOei\Ò \îúwô\ï2K&ŒQ‘™ñA½Læ˜€-kK\ÆCÍ†™%\Æ@F\è\å1ui›/?’0Ne6<\Ø,™0&ŒÑ´+®n«$®z4ˆ{aL£mWüF/\n…\î	r3cÀ:	\â‡\ãüsÂ˜AE\"‘7t‡É“\'\ßH3cÀn\Ëb—Œ–¼¼¼o\Æ\Â°DCX\ÃXC™0fÆ€EÚ¦\Ğv…¶-caX¤\ä\Å?\Ğ{˜0fÆ€\İ@¾GY—¾\Æ\Â°HO‰Ÿr3a<º!w;\à\È\Ö\í„1\àqzº´6­§OÆ£\ãÁ¾–\é\Û	cÀû¾¡\ÒÆ„1aX¤—\Ú\ÔKn\ê¥7	cÂ˜0\ì¶+~¿(ı\ã„1aLv9\â8®°ˆÆ„1a\Ø\r\äÇ½¾maL¾\àõm›X\ÚF~š!{v\Û&Nú Œ\ßğò¶M„1aø­]\á\Ém›c\Âğc»\Âs\Û6Æ„1\àK^Û¶‰0&Œ\ßòÒ¶M„1aø½e\á‰m›c\Âğ5¯l\ÛDÆ€\ïya\Û&Â˜0Á\í\Û6Æ„1¤@v\í¶M„1aŠ[·m\"Œ	c pÜ¸maLA\äºm›c\Â$·m\ÛD\Æ@\Û®Ù¶i\ãÆ(a:]±mS]]]Oss3!š¦q\âÄ‰£Æ¼\Âo²õm›jjj«­­>}\Ú\Õ!\×\Ô\Ô\ä‰ ®®®¾\"c¯nÀcÜ°m“„\Ç™\Í]\Ò_¯\İ8>üğC³xñb³v\íZ\ã\Ö\Ç1\à\í²g·mÊ´\ç{.\çÂ…F[)EEE‡©€Œñò¶M™\ä8\Î\r›7o™¸u\ëÖ™\Ü\Ü\ÜÛ©€L¶+<¹mS¦Œ7\îºÅ‹·öôôôf±\Ñÿ.//?Iu\0d”·mÊ”\éÓ§\Ô\ÖDŸ~ú)³c\0™\çµm›2ô[Beb{¢¿•+W\á• ã¼´mS‚xÙ¢E‹z\Ì t™[yyy.¯\0\ç•m›2ğ¼Í…®˜!\Ô\ÕÕµó*q^Ù¶)¿T9r¤g¨0®©©1………cy¥\0\È8/lÛ”	¥¥¥­\İ\İ\İIƒøò\å\Ëf\áÂ…oñ\n5nß¶)tµÄºu\ë’~€÷\æ›o^\ä•ÀF »vÛ¦L™:ujmkk\ë5¼ÿş\Øc=v3¯\n\0V¸uÛ¦LÑ“>Ö¬YÓ§W¡§E¿ğ\Â\Ïòj\0`•·m\Ê$\Çqf:t\è\ë0^»v\í	^\0\ÜÀu\Û6e\ÚÂ…O\èiĞ»w\ïfõ\0÷pÛ¶M™VTTt\Ó[o½e\æÎ\ÛÁ\Ñ\à*nÚ¶)KÏ·\ÌqVP\0pe@¹bÛ¦l\ßfk¯œ£À­l}Û¦l:s\å9\ãˆpó¬\Ñú¶MYø¡ó®\ÔÀõa\å\ëm›´g,£™#\rÀ\Õü¾mS$Y$?lš8\Ò\0\\\Ï\Ï\Û69³X\Û-ğÌ¯ó¾Ü¶I/8/\Ï\ë8G€gøq\Û&	\ã\åòœrtxŠß¶m’0~\Şqœ\ÃY\0\ã§m›$ˆÿ¤\ëq\0ğ?m\Û$\Ï\áEŸsTx’_¶m’\çğŠŒ\Ï8¢\0<\Ë\Û6\é“p8¼‡£	À\ë\ì\ém›\Çù«„ñN$\0\Ïóò¶Mò¸ß•ñ	G€/xu\Û&™\ÙÿMf\Çqø…\'·m\Ò+\Ó\Éc®\çğğ\r/n\Û$A\\-££ÀW¼¶m“<\ÎZ›8r\0üÈÙ¶Ig\Å:;\æ¨ğk {b\Û&\íe7l\0\å…m›$Œ·\ËX\Ï\Ñ\à÷²«·m\Ò5ÆºÖ˜#À\×Ü¾m“}§g\áq¤\0ø›·m’ÇµW\×\ë%\0\à\Öm›ôŠmz\å6€Àp\ã¶Mz-c\Çqş\Ì\Ñ(nÛ¶I‚X?`\\Å‘8nÚ¶I÷¿\Ó}ğ8*\0\ÇM\Û6\é\Î\Ğ\È\ÏpT\0’[¶m\Ò5\Ğò–rD\0–¶m’û?)3\ã\Å\r\0Ad«\Û6\Éı6\É\ìxG@\à\ÙÜ¶)Ş»~„£\0\0c\ìm\Û$÷yF\ÆC\0øŠ•m›\Ç9\n…\î§ü\0gcÛ¦øEŒ\î¥ú\0\Ğ7³ºm“ÌŒ/Ê˜N\å\à\Ú@\ÎÚ¶Mr—\ä¾\î¢\ê\00pHfe\Û&ùş—½°W\0X“m›$ˆ\Û\ä>ò¨6\0–İ¶I¾·’ı;*\r\0ƒH\ç¶M999·8s›Œz¿&ÿ\İ)÷ñ+*\r\0C\Ï^Ó²m“üûù>&\É\Ğ¯È¸PXX8–ªÀ\0Ò±mS4\Zı\é a|uH`ÿ…jÀ Ò±mSü\Âö±.§cV\0)H¶m“\Ìz\Ãr[\Åhf\ÇÌŠ`ø³Û¯·m’m‰Î˜\å\Ïó©ü{	\İı„q7³b\0†\Äm›d¼–0³7îº¡ş}(ºs€0^Me`˜´M!3\á\Ø\0}ß™)Î®O&ü»¶TB\0@\×	\ëF¢Iz¿\ëSlULKø7QU\0†¢¢¢›$<\ÛYÖ”\ê÷Ò¿«ÿfüøñß¥²\0\"m%\è‡tC¬°o¬_\Ó\í•d\Ô\ÅûÍı?À“qVF½®\Ê\à\Ã<\0:_\ÒK_²^ø¶Ş¿¯§@\Ë\×j%`»†:\á£ÿšc=c/ñ{\0 k‹Å¡\Ökh\ëU\ß$„\ÍpB8É¨g¦\0C\ĞÙ«\Î~\å\Ï\Ş\Ùo»ü÷5}\å™3gšU«V™mÛ¶™\Æ\ÆF\Ó\Ş\Şn”ş\Ù\Ü\Ül>ù\äó\ÒK/™’’’\Úmº$j@\n$4\ëe\Æ\Ü\'H\çÍ›w5h»»»Mªv\î\ÜiJKKû‡rL¾ÿª\0ƒñ´Ä¶„†òúõ\ë‡\ÂıUVVš\Â\Â\Âş³d\0’››{»q,±%ñ\Å_˜t8räˆ™={vŸ2-\0\è\'¾Â¢=1ˆµœNúıY{\È|¨\0}\Û•‰­‰tÍˆš!÷kYl§ú\00\æ«uÄ‰}b\íg’öû\Ç\Ú\á(\0<]Ò–¸j¢««\Ëd\ÚC=”Ø®h\à(\04\í\'Y§\Ë×²a÷\î\İ}\Î\ÔK\Ü\à\0G—˜%~h7š%lÃ•xbH*;Œ\0€Ÿ[u½¸zõj“M¯¾újŸÓ¥9\Z\0‚\Æ-½¨§8g“¶DZ\ç9\Z\0+\áZ\æÔ©SY\rc]wœxùM€ ÏŒ¿\ÄŞ‹şd‹\Ş_\âıs4\0\Æ2l Œ€™1\0¸=c\0p\ÇÌ˜\Õ\0\à‚0f1\0¸ M±\Ø\Öx÷\İwg\à€\ÒkSh¿–kS\0€ıV\ÅöÄ«¶ecvœ¸7Wm€1_]\ÏX·A\âz\Æ\0`v\\—­>¦L™\ÂN\00İ‹N÷¤\Ëôx³f\Íb<\0Œ\îÖœØ®H÷\îĞ‰A\Ì\î\Ğ\00x ?˜\ÈÚ²\Ğòh>\Ô\Óq¿Ö„ÎŠPm\0F ÷®²Ø¹sç°—¯•••õ	aı¾1\0£e‘\ØCNl]\è™z;v\ì¸z-‹Ş‹\éŸ\Ú\ÖÀ\Ö3\ëO\èH\ìÓš\0€a\Ò\×WYŒrl\ç\Ã:\0]‡,³\ÚO\Ï\ÔKe\è™uzBG$ù5U€4\ÑS§\ã×²\Ğ\ÙrK\â\å7Nk>¯ı\ÑkMpŠ3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ãÿ\à\à\İ	\ÍcÀ‚\0\0\0\0IEND®B`‚',1);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('next.dbid','12501',6),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('10012','allowance:3:10007','10008','10011','begin',NULL,NULL,'å¼€å§‹','startEvent',NULL,'2020-01-22 20:44:08.255','2020-01-22 20:44:08.261',6,NULL,''),('10013','allowance:3:10007','10008','10011','selfVerify','10014',NULL,'ç”³è¯·äººåŠç†','userTask','lyf','2020-01-22 20:44:08.264',NULL,NULL,NULL,''),('10026','allowance:4:10021','10022','10025','begin',NULL,NULL,'å¼€å§‹','startEvent',NULL,'2020-01-22 20:53:40.368','2020-01-22 20:53:40.369',1,NULL,''),('10027','allowance:4:10021','10022','10025','selfVerify','10028',NULL,'ç”³è¯·äººåŠç†','userTask','lyf','2020-01-22 20:53:40.369',NULL,NULL,NULL,''),('10040','allowance:5:10035','10036','10039','begin',NULL,NULL,'å¼€å§‹','startEvent',NULL,'2020-01-22 20:57:23.404','2020-01-22 20:57:23.404',0,NULL,''),('10041','allowance:5:10035','10036','10039','selfVerify','10042',NULL,'ç”³è¯·äººåŠç†','userTask','lyf','2020-01-22 20:57:23.404','2020-01-22 20:57:42.866',19462,NULL,''),('10046','allowance:5:10035','10036','10039','leaderVerify','10047',NULL,'é¢†å¯¼å®¡æ ¸','userTask','yangzc','2020-01-22 20:57:42.866','2020-01-22 20:59:07.239',84373,NULL,''),('10051','allowance:5:10035','10036','10039','end',NULL,NULL,'ç»“æŸ','endEvent',NULL,'2020-01-22 20:59:07.239','2020-01-22 20:59:07.239',0,NULL,''),('5005','allowance:2:2504','5001','5004','begin',NULL,NULL,'å¼€å§‹','startEvent',NULL,'2020-01-12 21:04:18.709','2020-01-12 21:04:18.710',1,NULL,''),('5006','allowance:2:2504','5001','5004','selfVerify','5007',NULL,'ç”³è¯·äººåŠç†','userTask','lyf','2020-01-12 21:04:18.711','2020-01-12 21:55:16.660',3057949,NULL,''),('7504','allowance:2:2504','5001','5004','leaderVerify','7505',NULL,'ä¸»ç®¡å®¡æ ¸','userTask','yangzc','2020-01-12 21:55:16.681','2020-01-12 21:56:49.031',92350,NULL,''),('7509','allowance:2:2504','5001','5004','selfVerify','7510',NULL,'ç”³è¯·äººåŠç†','userTask','lyf','2020-01-12 21:56:49.031',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
INSERT INTO `act_hi_comment` VALUES ('10015','comment','2020-01-22 20:44:48.052','lyf','10014','10008','AddComment','æµ‹è¯•æ•°æ®ï¼Œè¯·é¢†å¯¼æ‰¹å‡†~~~','æµ‹è¯•æ•°æ®ï¼Œè¯·é¢†å¯¼æ‰¹å‡†~~~'),('10029','comment','2020-01-22 20:54:17.656','lyf','10028','10022','AddComment','44444ï¼Œæµ‹è¯•ï¼Œè¯·é¢†å¯¼æ‰¹å‡†~~~','44444ï¼Œæµ‹è¯•ï¼Œè¯·é¢†å¯¼æ‰¹å‡†~~~'),('10043','comment','2020-01-22 20:57:42.849','lyf','10042','10036','AddComment','55555ï¼Œæµ‹è¯•ï¼Œè¯·é¢†å¯¼æ‰¹å‡†~~~','55555ï¼Œæµ‹è¯•ï¼Œè¯·é¢†å¯¼æ‰¹å‡†~~~'),('10049','event','2020-01-22 20:57:42.875','lyf','10047',NULL,'AddUserLink','yangzc_|_assignee',NULL),('10050','comment','2020-01-22 20:59:07.217','yangzc','10047','10036','AddComment','æµ‹è¯•ï¼ŒåŒæ„~~~55555','æµ‹è¯•ï¼ŒåŒæ„~~~55555'),('7501','comment','2020-01-12 21:55:16.598','lyf','5007','5001','AddComment','è¯·é¢†å¯¼æ‰¹å‡†ï¼Œ1111111111111111111','è¯·é¢†å¯¼æ‰¹å‡†ï¼Œ1111111111111111111'),('7507','event','2020-01-12 21:55:16.685','lyf','7505',NULL,'AddUserLink','yangzc_|_assignee',NULL),('7508','comment','2020-01-12 21:56:49.014','yangzc','7505','5001','AddComment','ä¸åŒæ„ï¼Œ1111111111111111111111','ä¸åŒæ„ï¼Œ1111111111111111111111');
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('10009',NULL,'starter','lyf',NULL,'10008'),('10023',NULL,'starter','lyf',NULL,'10022'),('10037',NULL,'starter','lyf',NULL,'10036'),('10048',NULL,'participant','yangzc',NULL,'10036'),('5002',NULL,'starter','lyf',NULL,'5001'),('7506',NULL,'participant','yangzc',NULL,'5001');
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('10008','10008','3','allowance:3:10007','2020-01-22 20:44:08.241',NULL,NULL,'lyf','begin',NULL,NULL,NULL,'',NULL),('10022','10022','4','allowance:4:10021','2020-01-22 20:53:40.368',NULL,NULL,'lyf','begin',NULL,NULL,NULL,'',NULL),('10036','10036','5','allowance:5:10035','2020-01-22 20:57:23.403','2020-01-22 20:59:07.290',103887,'lyf','begin','end',NULL,NULL,'',NULL),('5001','5001','1','allowance:2:2504','2020-01-12 21:04:18.698',NULL,NULL,'lyf','begin',NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('10014','allowance:3:10007','selfVerify','10008','10011','ç”³è¯·äººåŠç†',NULL,'ç”³è¯·äººåŠç†',NULL,'lyf','2020-01-22 20:44:08.373',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('10028','allowance:4:10021','selfVerify','10022','10025','ç”³è¯·äººåŠç†',NULL,'ç”³è¯·äººåŠç†',NULL,'lyf','2020-01-22 20:53:40.369',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('10042','allowance:5:10035','selfVerify','10036','10039','ç”³è¯·äººåŠç†',NULL,'ç”³è¯·äººåŠç†',NULL,'lyf','2020-01-22 20:57:23.404','2020-01-22 20:57:42.853','2020-01-22 20:57:42.864',19460,NULL,50,NULL,NULL,NULL,''),('10047','allowance:5:10035','leaderVerify','10036','10039','é¢†å¯¼å®¡æ ¸',NULL,'é¢†å¯¼å®¡æ ¸',NULL,'yangzc','2020-01-22 20:57:42.866','2020-01-22 20:59:07.221','2020-01-22 20:59:07.237',84371,NULL,50,NULL,NULL,NULL,''),('5007','allowance:2:2504','selfVerify','5001','5004','ç”³è¯·äººåŠç†',NULL,NULL,NULL,'lyf','2020-01-12 21:04:18.739','2020-01-12 21:55:16.624','2020-01-12 21:55:16.652',3057913,NULL,50,NULL,NULL,NULL,''),('7505','allowance:2:2504','leaderVerify','5001','5004','ä¸»ç®¡å®¡æ ¸',NULL,NULL,NULL,'yangzc','2020-01-12 21:55:16.682','2020-01-12 21:56:49.019','2020-01-12 21:56:49.030',92348,NULL,50,NULL,NULL,NULL,''),('7510','allowance:2:2504','selfVerify','5001','5004','ç”³è¯·äººåŠç†',NULL,NULL,NULL,'lyf','2020-01-12 21:56:49.031',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
INSERT INTO `act_hi_varinst` VALUES ('10010','10008','10008',NULL,'username','string',0,NULL,NULL,NULL,'lyf',NULL,'2020-01-22 20:44:08.242','2020-01-22 20:44:08.242'),('10024','10022','10022',NULL,'username','string',0,NULL,NULL,NULL,'lyf',NULL,'2020-01-22 20:53:40.368','2020-01-22 20:53:40.368'),('10038','10036','10036',NULL,'username','string',0,NULL,NULL,NULL,'lyf',NULL,'2020-01-22 20:57:23.404','2020-01-22 20:57:23.404'),('10044','10036','10036',NULL,'comment','string',1,NULL,NULL,NULL,'æµ‹è¯•ï¼ŒåŒæ„~~~55555',NULL,'2020-01-22 20:57:42.860','2020-01-22 20:59:07.232'),('10045','10036','10036',NULL,'outcome','string',1,NULL,NULL,NULL,'é€šè¿‡',NULL,'2020-01-22 20:57:42.860','2020-01-22 20:59:07.234'),('5003','5001','5001',NULL,'username','string',0,NULL,NULL,NULL,'lyf',NULL,'2020-01-12 21:04:18.706','2020-01-12 21:04:18.706'),('7502','5001','5001',NULL,'comment','string',1,NULL,NULL,NULL,'ä¸åŒæ„ï¼Œ1111111111111111111111',NULL,'2020-01-12 21:55:16.645','2020-01-12 21:56:49.027'),('7503','5001','5001',NULL,'outcome','string',1,NULL,NULL,NULL,'é©³å›',NULL,'2020-01-12 21:55:16.646','2020-01-12 21:56:49.028');
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('1',NULL,NULL,NULL,'','2020-01-12 09:42:36.980',NULL),('10004','è¡¥è´´ç”³è¯·',NULL,NULL,'','2020-01-22 12:41:42.605',NULL),('10018','è¡¥è´´ç”³è¯·',NULL,NULL,'','2020-01-22 12:52:17.150',NULL),('10032','è¡¥è´´ç”³è¯·',NULL,NULL,'','2020-01-22 12:56:29.375',NULL),('2501',NULL,NULL,NULL,'','2020-01-12 11:20:54.118',NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
INSERT INTO `act_re_model` VALUES ('10001',7,'è¡¥è´´ç”³è¯·','allowance',NULL,'2020-01-22 12:13:21.929','2020-01-22 12:56:18.363',1,'{\"name\":\"è¡¥è´´ç”³è¯·\",\"revision\":1,\"description\":\"è¡¥è´´ç”³è¯·\"}',NULL,'10002','10003','');
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('allowance:1:4',1,'http://www.activiti.org/test','è¡¥è´´ç”³è¯·','allowance',1,'1','d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.bpmn','d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.allowance.png',NULL,0,1,1,'',NULL),('allowance:2:2504',1,'http://www.activiti.org/test','è¡¥è´´ç”³è¯·','allowance',2,'2501','d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.bpmn','d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.allowance.png',NULL,0,1,1,'',NULL),('allowance:3:10007',1,'http://www.activiti.org/processdef','è¡¥è´´ç”³è¯·','allowance',3,'10004','è¡¥è´´ç”³è¯·.bpmn20.xml','è¡¥è´´ç”³è¯·.allowance.png','è¡¥è´´ç”³è¯·',0,1,1,'',NULL),('allowance:4:10021',1,'http://www.activiti.org/processdef','è¡¥è´´ç”³è¯·','allowance',4,'10018','è¡¥è´´ç”³è¯·.bpmn20.xml','è¡¥è´´ç”³è¯·.allowance.png','è¡¥è´´ç”³è¯·',0,1,1,'',NULL),('allowance:5:10035',1,'http://www.activiti.org/processdef','è¡¥è´´ç”³è¯·','allowance',5,'10032','è¡¥è´´ç”³è¯·.bpmn20.xml','è¡¥è´´ç”³è¯·.allowance.png','è¡¥è´´ç”³è¯·',0,1,1,'',NULL);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
INSERT INTO `act_ru_execution` VALUES ('10008',1,'10008','3',NULL,'allowance:3:10007',NULL,'10008',NULL,1,0,1,0,0,1,NULL,'',NULL,'2020-01-22 20:44:08.241','lyf',NULL,0,0,0,0,0,0,0,0,0),('10011',1,'10008',NULL,'10008','allowance:3:10007',NULL,'10008','selfVerify',1,0,0,0,0,1,NULL,'',NULL,'2020-01-22 20:44:08.248',NULL,NULL,0,0,0,0,0,0,0,0,0),('10022',1,'10022','4',NULL,'allowance:4:10021',NULL,'10022',NULL,1,0,1,0,0,1,NULL,'',NULL,'2020-01-22 20:53:40.368','lyf',NULL,0,0,0,0,0,0,0,0,0),('10025',1,'10022',NULL,'10022','allowance:4:10021',NULL,'10022','selfVerify',1,0,0,0,0,1,NULL,'',NULL,'2020-01-22 20:53:40.368',NULL,NULL,0,0,0,0,0,0,0,0,0),('5001',1,'5001','1',NULL,'allowance:2:2504',NULL,'5001',NULL,1,0,1,0,0,1,NULL,'',NULL,'2020-01-12 21:04:18.698','lyf',NULL,0,0,0,0,0,0,0,0,0),('5004',3,'5001',NULL,'5001','allowance:2:2504',NULL,'5001','selfVerify',1,0,0,0,0,1,NULL,'',NULL,'2020-01-12 21:04:18.707',NULL,NULL,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
INSERT INTO `act_ru_identitylink` VALUES ('10009',1,NULL,'starter','lyf',NULL,'10008',NULL),('10023',1,NULL,'starter','lyf',NULL,'10022',NULL),('5002',1,NULL,'starter','lyf',NULL,'5001',NULL),('7506',1,NULL,'participant','yangzc',NULL,'5001',NULL);
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
INSERT INTO `act_ru_task` VALUES ('10014',1,'10011','10008','allowance:3:10007','ç”³è¯·äººåŠç†',NULL,'ç”³è¯·äººåŠç†','selfVerify',NULL,'lyf',NULL,50,'2020-01-22 12:44:08.264',NULL,NULL,1,'',NULL,NULL),('10028',1,'10025','10022','allowance:4:10021','ç”³è¯·äººåŠç†',NULL,'ç”³è¯·äººåŠç†','selfVerify',NULL,'lyf',NULL,50,'2020-01-22 12:53:40.369',NULL,NULL,1,'',NULL,NULL),('7510',1,'5004','5001','allowance:2:2504','ç”³è¯·äººåŠç†',NULL,NULL,'selfVerify',NULL,'lyf',NULL,50,'2020-01-12 13:56:49.031',NULL,NULL,1,'',NULL,NULL);
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
INSERT INTO `act_ru_variable` VALUES ('10010',1,'string','username','10008','10008',NULL,NULL,NULL,NULL,'lyf',NULL),('10024',1,'string','username','10022','10022',NULL,NULL,NULL,NULL,'lyf',NULL),('5003',1,'string','username','5001','5001',NULL,NULL,NULL,NULL,'lyf',NULL),('7502',2,'string','comment','5001','5001',NULL,NULL,NULL,NULL,'ä¸åŒæ„ï¼Œ1111111111111111111111',NULL),('7503',2,'string','outcome','5001','5001',NULL,NULL,NULL,NULL,'é©³å›',NULL);
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biz_allowance`
--

DROP TABLE IF EXISTS `biz_allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biz_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  `instance_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `apply_user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_allowance`
--

LOCK TABLES `biz_allowance` WRITE;
/*!40000 ALTER TABLE `biz_allowance` DISABLE KEYS */;
INSERT INTO `biz_allowance` VALUES (1,'ç”³è¯·å¥–å­¦é‡‘1111111111111','æµ‹è¯•æ•°æ®ï¼Œ1111111111111',2000,'5001','lyf','2020-01-12 20:35:50','lyf',NULL,'lyf','2020-01-12 21:04:18'),(2,'ç”³è¯·äº¤é€šè¡¥è´´2222222222','æµ‹è¯•æ•°æ®',300,NULL,'lyf','2020-01-12 20:54:45',NULL,NULL,NULL,NULL),(3,'ç”³è¯·æ´»åŠ¨ç»è´¹33333','æµ‹è¯•æ•°æ®ï¼Œ~~~',360,'10008','lyf','2020-01-22 20:43:59','lyf',NULL,'lyf','2020-01-22 20:44:08'),(4,'ç”³è¯·è¯è´¹è¡¥è´´44444','æµ‹è¯•ï¼Œ44444',120,'10022','lyf','2020-01-22 20:53:33','lyf',NULL,'lyf','2020-01-22 20:53:40'),(5,'ç”³è¯·ä½å®¿è¡¥è´´55555','æµ‹è¯•ï¼Œ55555',2300,'10036','lyf','2020-01-22 20:57:17','lyf',NULL,'lyf','2020-01-22 20:57:23');
/*!40000 ALTER TABLE `biz_allowance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_student`
--

DROP TABLE IF EXISTS `stu_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_student` (
  `sno` int(4) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo_url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_student`
--

LOCK TABLES `stu_student` WRITE;
/*!40000 ALTER TABLE `stu_student` DISABLE KEYS */;
INSERT INTO `stu_student` VALUES (1013,'åˆ˜äº¦è²','å¥³','1989-10-28','upload/a8e6c5830753402f81dbf69b990be323.jpg'),(1017,'èµµå…­','å¥³','1999-01-01','upload/11fe2afce22a46b5bf069f85b0cf52a9.jpg');
/*!40000 ALTER TABLE `stu_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT 'æ–‡ä»¶ç±»å‹',
  `url` varchar(200) DEFAULT NULL COMMENT 'URLåœ°å€',
  `create_on` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='æ–‡ä»¶ä¸Šä¼ ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ç”¨æˆ·id',
  `username` varchar(50) DEFAULT NULL COMMENT 'ç”¨æˆ·å',
  `operation` varchar(50) DEFAULT NULL COMMENT 'ç”¨æˆ·æ“ä½œ',
  `time` int(11) DEFAULT NULL COMMENT 'å“åº”æ—¶é—´',
  `method` varchar(200) DEFAULT NULL COMMENT 'è¯·æ±‚æ–¹æ³•',
  `params` varchar(5000) DEFAULT NULL COMMENT 'è¯·æ±‚å‚æ•°',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IPåœ°å€',
  `create_on` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿæ—¥å¿—';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (7,1,'admin','ç™»å½•',0,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:42:03'),(8,1,'admin','ç™»å½•',15,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:47:04'),(9,1,'admin','ç™»å½•',0,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:53:27'),(10,1,'admin','ç™»å½•',16,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:54:17'),(11,1,'admin','ç™»å½•',31,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:56:26'),(12,1,'admin','ç™»å½•',156,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8435\",null]','127.0.0.1','2020-01-05 22:03:41'),(13,1,'admin','ç™»å½•',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8951\",null]','127.0.0.1','2020-01-05 22:18:42'),(14,1,'admin','ç™»å½•',3388,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7836\",null]','127.0.0.1','2020-01-06 23:00:30'),(15,1,'admin','ç™»å½•',3012,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"6737\",null]','127.0.0.1','2020-01-06 23:06:57'),(16,1,'admin','ç™»å½•',413,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8331\",null]','127.0.0.1','2020-01-07 23:11:19'),(17,1,'admin','ç™»å½•',309,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5453\",null]','127.0.0.1','2020-01-08 23:42:23'),(18,1,'admin','ç™»å½•',174,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"9926\",null]','127.0.0.1','2020-01-12 12:35:00'),(19,1,'admin','ç™»å½•',2,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"9426\",null]','127.0.0.1','2020-01-12 12:35:51'),(20,1,'admin','ç™»å½•',72,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"9574\",null]','127.0.0.1','2020-01-12 16:32:23'),(21,1,'admin','ç™»å½•',18,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"2331\",null]','127.0.0.1','2020-01-12 17:02:57'),(22,1,'admin','æµç¨‹å®šä¹‰å¯¼å…¥',82,'com.yangzc.studentboot.workflow.definition.controller.ProcessDefinitionController.upload()','[null]','127.0.0.1','2020-01-12 17:37:16'),(23,1,'admin','æµç¨‹å®šä¹‰å¯¼å…¥',26940,'com.yangzc.studentboot.workflow.definition.controller.ProcessDefinitionController.upload()','[null]','127.0.0.1','2020-01-12 17:42:38'),(24,1,'admin','ç™»å½•',20,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"2179\",null]','127.0.0.1','2020-01-12 17:50:59'),(25,1,'admin','ç™»å½•',24,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8753\",null]','127.0.0.1','2020-01-12 19:20:43'),(26,1,'admin','æµç¨‹å®šä¹‰å¯¼å…¥',370,'com.yangzc.studentboot.workflow.definition.controller.ProcessDefinitionController.upload()','[null]','127.0.0.1','2020-01-12 19:20:54'),(27,1,'admin','ç™»å½•',61,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"1145\",null]','127.0.0.1','2020-01-12 20:16:54'),(28,1,'admin','ç™»å½•',28,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"1497\",null]','127.0.0.1','2020-01-12 20:22:12'),(29,1,'admin','ç™»å½•',14,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5926\",null]','127.0.0.1','2020-01-12 20:27:22'),(30,-1,'[\"admin\",\"111111\",\"5751\",null]','ç™»å½•',0,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5751\",null]','127.0.0.1','2020-01-12 20:27:31'),(31,-1,'[\"admin\",\"111111\",\"5751\",null]','ç™»å½•',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5751\",null]','127.0.0.1','2020-01-12 20:27:34'),(32,-1,'[\"admin\",\"111111\",\"7998\",null]','ç™»å½•',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7998\",null]','127.0.0.1','2020-01-12 20:27:43'),(33,1,'admin','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"0059\",null]','127.0.0.1','2020-01-12 20:28:06'),(34,-1,'[\"lyf\",\"123456\",\"2116\",null]','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"123456\",\"2116\",null]','127.0.0.1','2020-01-12 20:29:10'),(35,-1,'[\"lyf\",\"123456\",\"6720\",null]','ç™»å½•',11,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"123456\",\"6720\",null]','127.0.0.1','2020-01-12 20:29:17'),(36,2,'lyf','ç™»å½•',9,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"6720\",null]','127.0.0.1','2020-01-12 20:29:25'),(37,2,'lyf','è¡¥è´´ç”³è¯·',46,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"åˆ˜äº¦è²\",\"createTime\":1578832549913,\"id\":1,\"params\":{},\"reason\":\"æµ‹è¯•æ•°æ®ï¼Œ1111111111111\",\"title\":\"ç”³è¯·å¥–å­¦é‡‘1111111111111\",\"totalMoney\":2000}]','127.0.0.1','2020-01-12 20:35:50'),(38,-1,'[\"yangzc\",\"111111\",\"6997\",null]','ç™»å½•',30324,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"6997\",null]','127.0.0.1','2020-01-12 20:51:33'),(39,3,'yangzc','ç™»å½•',3910,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"6997\",null]','127.0.0.1','2020-01-12 20:52:14'),(40,-1,'[\"yangzc\",\"111111\",\"3444\",null]','ç™»å½•',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"3444\",null]','127.0.0.1','2020-01-12 20:52:57'),(41,3,'yangzc','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"2553\",null]','127.0.0.1','2020-01-12 20:53:02'),(42,-1,'[\"lyf\",\"111111\",\"6366\",null]','ç™»å½•',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"6366\",null]','127.0.0.1','2020-01-12 20:53:44'),(43,2,'lyf','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"8500\",null]','127.0.0.1','2020-01-12 20:53:49'),(44,2,'lyf','è¡¥è´´ç”³è¯·',7,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"lyf\",\"createTime\":1578833684729,\"id\":2,\"params\":{},\"reason\":\"æµ‹è¯•æ•°æ®\",\"title\":\"ç”³è¯·äº¤é€šè¡¥è´´2222222222\",\"totalMoney\":300}]','127.0.0.1','2020-01-12 20:54:45'),(45,2,'lyf','è¡¥è´´ç”³è¯·æäº¤',344,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.submitApply()','[1]','127.0.0.1','2020-01-12 21:04:19'),(46,1,'admin','ç™»å½•',61,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"6404\",null]','127.0.0.1','2020-01-12 21:17:13'),(47,2,'lyf','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"1741\",null]','127.0.0.1','2020-01-12 21:17:43'),(48,1,'admin','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8497\",null]','127.0.0.1','2020-01-12 21:20:17'),(49,1,'admin','ç™»å½•',12,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8151\",null]','127.0.0.1','2020-01-12 21:27:27'),(50,1,'admin','ç™»å½•',54,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"2025\",null]','127.0.0.1','2020-01-12 21:38:41'),(51,-1,'[\"lyf\",\"111111\",\"8697\",null]','ç™»å½•',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"8697\",null]','127.0.0.1','2020-01-12 21:39:10'),(52,2,'lyf','ç™»å½•',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"9780\",null]','127.0.0.1','2020-01-12 21:39:15'),(53,3,'yangzc','ç™»å½•',10,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"4334\",null]','127.0.0.1','2020-01-12 21:56:06'),(54,2,'lyf','ç™»å½•',5,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"1587\",null]','127.0.0.1','2020-01-12 21:57:32'),(55,1,'admin','ç™»å½•',5,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7940\",null]','127.0.0.1','2020-01-12 22:45:11'),(56,1,'admin','ç™»å½•',113,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7977\",null]','127.0.0.1','2020-01-22 19:25:00'),(57,1,'admin','ç™»å½•',10,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8090\",null]','127.0.0.1','2020-01-22 20:12:05'),(58,1,'admin','ç™»å½•',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8616\",null]','127.0.0.1','2020-01-22 20:12:11'),(59,2,'lyf','ç™»å½•',7,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"7988\",null]','127.0.0.1','2020-01-22 20:42:30'),(60,2,'lyf','è¡¥è´´ç”³è¯·',13,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"lyf\",\"createTime\":1579697038787,\"id\":3,\"params\":{},\"reason\":\"æµ‹è¯•æ•°æ®ï¼Œ~~~\",\"title\":\"ç”³è¯·æ´»åŠ¨ç»è´¹33333\",\"totalMoney\":360}]','127.0.0.1','2020-01-22 20:43:59'),(61,2,'lyf','è¡¥è´´ç”³è¯·æäº¤',277,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.submitApply()','[3]','127.0.0.1','2020-01-22 20:44:09'),(62,2,'lyf','è¡¥è´´ç”³è¯·',7,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"lyf\",\"createTime\":1579697613373,\"id\":4,\"params\":{},\"reason\":\"æµ‹è¯•ï¼Œ44444\",\"title\":\"ç”³è¯·è¯è´¹è¡¥è´´44444\",\"totalMoney\":120}]','127.0.0.1','2020-01-22 20:53:33'),(63,2,'lyf','è¡¥è´´ç”³è¯·æäº¤',47,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.submitApply()','[4]','127.0.0.1','2020-01-22 20:53:40'),(64,2,'lyf','è¡¥è´´ç”³è¯·',6,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"lyf\",\"createTime\":1579697836831,\"id\":5,\"params\":{},\"reason\":\"æµ‹è¯•ï¼Œ55555\",\"title\":\"ç”³è¯·ä½å®¿è¡¥è´´55555\",\"totalMoney\":2300}]','127.0.0.1','2020-01-22 20:57:17'),(65,2,'lyf','è¡¥è´´ç”³è¯·æäº¤',32,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.submitApply()','[5]','127.0.0.1','2020-01-22 20:57:23'),(66,3,'yangzc','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"9388\",null]','127.0.0.1','2020-01-22 20:58:16'),(67,2,'lyf','ç™»å½•',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"1194\",null]','127.0.0.1','2020-01-22 20:59:45');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'çˆ¶èœå•IDï¼Œä¸€çº§èœå•ä¸º0',
  `name` varchar(50) DEFAULT NULL COMMENT 'èœå•åç§°',
  `url` varchar(200) DEFAULT NULL COMMENT 'èœå•URL',
  `perms` varchar(500) DEFAULT NULL COMMENT 'æˆæƒ(å¤šä¸ªç”¨é€—å·åˆ†éš”ï¼Œå¦‚ï¼šuser:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT 'ç±»å‹   0ï¼šç›®å½•   1ï¼šèœå•   2ï¼šæŒ‰é’®',
  `icon` varchar(50) DEFAULT NULL COMMENT 'èœå•å›¾æ ‡',
  `order_num` int(11) DEFAULT NULL COMMENT 'æ’åº',
  `create_on` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_on` datetime DEFAULT NULL COMMENT 'ä¿®æ”¹æ—¶é—´',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='èœå•ç®¡ç†';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'æƒé™ç®¡ç†',NULL,NULL,0,'fa fa-gear',1,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(2,1,'ç³»ç»Ÿèœå•','sys/menu/','sys:menu:menu',1,'fa fa-th-list',12,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(3,1,'è§’è‰²ç®¡ç†','sys/role','sys:role:role',1,'fa fa-paw',11,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(4,1,'ç”¨æˆ·æƒé™','sys/user/','sys:user:user',1,'',10,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(5,0,'å­¦å‘˜ç®¡ç†','','',0,'fa fa-user',2,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(6,5,'å­¦å‘˜åˆ—è¡¨','stu/list/','stu:list',1,'',20,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(7,2,'æ–°å¢','','sys:menu:add',2,'',120,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(8,2,'ç¼–è¾‘','','sys:menu:edit',2,'',122,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(9,2,'åˆ é™¤','','sys:menu:remove',2,'',123,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(10,2,'æ‰¹é‡åˆ é™¤','','sys:menu:batchRemove',2,'',124,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(11,6,'æ·»åŠ ','','stu:create',2,'',200,NULL,NULL),(13,0,'è¡¥è´´åŠç†','','',0,'fa fa-tasks',3,NULL,'2020-01-12 12:46:21'),(16,0,'æ—¥å¿—ç®¡ç†','','',0,'fa fa-table',4,'2020-01-04 23:08:10',NULL),(17,16,'æ—¥å¿—æŸ¥çœ‹','/log/list','log:list',1,'',40,'2020-01-04 23:08:49','2020-01-04 23:09:02'),(18,0,'ç³»ç»Ÿç›‘æ§','','',0,'fa fa-video-camera',5,'2020-01-06 23:36:13','2020-01-06 23:37:17'),(19,18,'æ•°æ®ç›‘æ§','/druid/index.html','',1,'',50,'2020-01-06 23:39:33',NULL),(22,13,'è¡¥è´´ç”³è¯·','/workflow/allowance/apply/list','workflow:allowance:apply:list',1,'',30,'2020-01-12 12:47:21','2020-01-12 21:20:33'),(23,13,'æˆ‘çš„å¾…åŠ','/workflow/allowance/task/list','workflow:allowance:task:list',1,'',31,'2020-01-12 12:48:41','2020-01-12 12:51:02'),(24,13,'æˆ‘çš„å·²åŠ','/workflow/allowance/done/list','workflow:allowance:done:list',1,'',32,'2020-01-12 12:52:08',NULL),(25,0,'æµç¨‹è®¾è®¡','','',0,'fa fa-send',6,'2020-01-12 12:56:32','2020-01-12 12:57:12'),(26,25,'æµç¨‹æ¨¡å‹','/workflow/model/list','workflow:model:list',1,'60',60,'2020-01-12 12:59:10','2020-01-12 17:02:12'),(27,25,'æµç¨‹å®šä¹‰','/workflow/definition/list','workflow:definition:list',1,'',61,'2020-01-12 13:00:13','2020-01-12 16:59:17'),(28,22,'æŸ¥è¯¢','','workflow:allowance:apply:query',2,'',300,'2020-01-12 13:05:26','2020-01-12 13:05:48'),(29,22,'æ·»åŠ ','','workflow:allowance:apply:add',2,'',301,'2020-01-12 13:06:39',NULL),(30,23,'å®¡æ‰¹','','workflow:allowance:task:audit',2,'',310,'2020-01-12 13:08:35','2020-01-12 13:10:46');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT 'è§’è‰²åç§°',
  `role_sign` varchar(100) DEFAULT NULL COMMENT 'è§’è‰²æ ‡è¯†',
  `remark` varchar(100) DEFAULT NULL COMMENT 'å¤‡æ³¨',
  `create_by` bigint(255) DEFAULT NULL COMMENT 'åˆ›å»ºç”¨æˆ·id',
  `create_on` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_on` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='è§’è‰²';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'è¶…çº§ç”¨æˆ·è§’è‰²','admin','æ‹¥æœ‰æœ€é«˜æƒé™',NULL,'2019-12-21 00:00:00','2019-12-21 00:00:00');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT 'èœå•ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='è§’è‰²ä¸èœå•å¯¹åº”å…³ç³»';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,13),(15,1,16),(16,1,17),(17,1,18),(18,1,19),(19,1,22),(20,1,23),(21,1,24),(22,1,25),(23,1,26),(24,1,27),(25,1,28),(26,1,29),(27,1,30);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT 'ç”¨æˆ·å',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT 'å¯†ç ',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT 'é‚®ç®±',
  `mobile` varchar(100) DEFAULT NULL COMMENT 'æ‰‹æœºå·',
  `status` tinyint(255) DEFAULT NULL COMMENT 'çŠ¶æ€ 0:ç¦ç”¨ï¼Œ1:æ­£å¸¸',
  `create_by` bigint(255) DEFAULT NULL COMMENT 'åˆ›å»ºç”¨æˆ·id',
  `create_on` datetime DEFAULT NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `update_on` datetime DEFAULT NULL COMMENT 'ä¿®æ”¹æ—¶é—´',
  `gender` bigint(32) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `birth` datetime DEFAULT NULL COMMENT 'å‡ºèº«æ—¥æœŸ',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT 'ç°å±…ä½åœ°',
  `hobby` varchar(255) DEFAULT NULL COMMENT 'çˆ±å¥½',
  `province` varchar(255) DEFAULT NULL COMMENT 'çœä»½',
  `city` varchar(255) DEFAULT NULL COMMENT 'æ‰€åœ¨åŸå¸‚',
  `district` varchar(255) DEFAULT NULL COMMENT 'æ‰€åœ¨åœ°åŒº',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','è¶…çº§ç®¡ç†å‘˜','27bd386e70f280e24c2f4f2a549b82cf',NULL,'yangzc23@aliyun.com','17721038951',1,1,'2019-12-21 18:05:39','2019-12-21 18:05:39',NULL,'1999-10-15 00:00:00',NULL,NULL,NULL,'ä¸Šæµ·å¸‚','ä¸Šæµ·å¸‚å¸‚è¾–åŒº','å¾æ±‡åŒº'),(2,'lyf','åˆ˜äº¦è²','7fdb1d9008f45950c1620ba0864e5fbd',NULL,'lyf@aliyun.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'yangzc','æ¨æŒ¯æ˜¥','b926e2a0b1cc80a3020a4cdb44c901fa',NULL,'yangzc23@aliyun.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ç”¨æˆ·ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT 'è§’è‰²ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·ä¸è§’è‰²å¯¹åº”å…³ç³»';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-22 21:10:07
