-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: studentboot
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
INSERT INTO `act_ge_bytearray` VALUES ('2',1,'d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.bpmn','1',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.activiti.org/test\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" expressionLanguage=\"http://www.w3.org/1999/XPath\" id=\"m1578711271300\" name=\"\" targetNamespace=\"http://www.activiti.org/test\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\">\r\n  <process id=\"allowance\" isClosed=\"false\" isExecutable=\"true\" name=\"Ë°•Ë¥¥Áî≥ËØ∑\" processType=\"None\">\r\n    <startEvent id=\"begin\" name=\"ÂºÄÂßã\"></startEvent>\r\n    <userTask activiti:assignee=\"#{username}\" activiti:exclusive=\"true\" id=\"selfVerify\" name=\"Áî≥ËØ∑‰∫∫ÂäûÁêÜ\">\r\n    </userTask>\r\n    <endEvent id=\"end\" name=\"ÁªìÊùü\"/>\r\n    <sequenceFlow id=\"_5\" name=\"ÂèëËµ∑Áî≥ËØ∑\" sourceRef=\"begin\" targetRef=\"selfVerify\"/>\r\n    <userTask activiti:exclusive=\"true\" id=\"leaderVerify\" name=\"‰∏ªÁÆ°ÂÆ°Ê†∏\">\r\n      <extensionElements>\r\n        <activiti:taskListener event=\"create\" class=\"com.ruoyi.process.allowance.listener.MyTaskListener\">\r\n		</activiti:taskListener>\r\n      </extensionElements>\r\n    </userTask>\r\n    <sequenceFlow id=\"_8\" name=\"Êèê‰∫§\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'Êèê‰∫§\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_9\" name=\"ÂêåÊÑè\" sourceRef=\"leaderVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'ÈÄöËøá\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_6\" name=\"ÊîæÂºÉ\" sourceRef=\"selfVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'Êí§Âõû\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_10\" name=\"‰∏çÂêåÊÑè\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'È©≥Âõû\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram documentation=\"background=#3C3F41;count=1;horizontalcount=1;orientation=0;width=842.4;height=1195.2;imageableWidth=832.4;imageableHeight=1185.2;imageableX=5.0;imageableY=5.0\" id=\"Diagram-_1\" name=\"New Diagram\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\">\r\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"Shape-begin\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"30.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"Shape-selfVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"Shape-end\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"Shape-leaderVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5\" id=\"BPMNEdge__5\" sourceElement=\"_2\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"62.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6\" id=\"BPMNEdge__6\" sourceElement=\"_3\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"190.0\" y=\"182.5\"/>\r\n        <omgdi:waypoint x=\"125.0\" y=\"305.0\"/>\r\n        <omgdi:waypoint x=\"215.0\" y=\"431.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8\" id=\"BPMNEdge__8\" sourceElement=\"_3\" targetElement=\"_7\">\r\n        <omgdi:waypoint x=\"232.5\" y=\"210.0\"/>\r\n        <omgdi:waypoint x=\"232.5\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9\" id=\"BPMNEdge__9\" sourceElement=\"_7\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"345.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10\" id=\"BPMNEdge__10\" sourceElement=\"_7\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"275.0\" y=\"317.5\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"250.0\"/>\r\n        <omgdi:waypoint x=\"275.0\" y=\"182.5\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0),('2502',1,'d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.bpmn','2501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.activiti.org/test\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" expressionLanguage=\"http://www.w3.org/1999/XPath\" id=\"m1578711271300\" name=\"\" targetNamespace=\"http://www.activiti.org/test\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\">\r\n  <process id=\"allowance\" isClosed=\"false\" isExecutable=\"true\" name=\"Ë°•Ë¥¥Áî≥ËØ∑\" processType=\"None\">\r\n    <startEvent id=\"begin\" name=\"ÂºÄÂßã\"></startEvent>\r\n    <userTask activiti:assignee=\"#{username}\" activiti:exclusive=\"true\" id=\"selfVerify\" name=\"Áî≥ËØ∑‰∫∫ÂäûÁêÜ\">\r\n    </userTask>\r\n    <endEvent id=\"end\" name=\"ÁªìÊùü\"/>\r\n    <sequenceFlow id=\"_5\" name=\"ÂèëËµ∑Áî≥ËØ∑\" sourceRef=\"begin\" targetRef=\"selfVerify\"/>\r\n    <userTask activiti:exclusive=\"true\" id=\"leaderVerify\" name=\"‰∏ªÁÆ°ÂÆ°Ê†∏\">\r\n      <extensionElements>\r\n        <activiti:taskListener event=\"create\" class=\"com.yangzc.studentboot.workflow.allowance.listener.MyTaskListener\">\r\n		</activiti:taskListener>\r\n      </extensionElements>\r\n    </userTask>\r\n    <sequenceFlow id=\"_8\" name=\"Êèê‰∫§\" sourceRef=\"selfVerify\" targetRef=\"leaderVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'Êèê‰∫§\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_9\" name=\"ÂêåÊÑè\" sourceRef=\"leaderVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'ÈÄöËøá\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_6\" name=\"ÊîæÂºÉ\" sourceRef=\"selfVerify\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'Êí§Âõû\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"_10\" name=\"‰∏çÂêåÊÑè\" sourceRef=\"leaderVerify\" targetRef=\"selfVerify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'È©≥Âõû\'}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram documentation=\"background=#3C3F41;count=1;horizontalcount=1;orientation=0;width=842.4;height=1195.2;imageableWidth=832.4;imageableHeight=1185.2;imageableX=5.0;imageableY=5.0\" id=\"Diagram-_1\" name=\"New Diagram\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"allowance\">\r\n      <bpmndi:BPMNShape bpmnElement=\"begin\" id=\"Shape-begin\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"30.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"selfVerify\" id=\"Shape-selfVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"Shape-end\">\r\n        <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"215.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"32.0\" width=\"32.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"leaderVerify\" id=\"Shape-leaderVerify\">\r\n        <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"190.0\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"55.0\" width=\"85.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_5\" id=\"BPMNEdge__5\" sourceElement=\"_2\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"62.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"155.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_6\" id=\"BPMNEdge__6\" sourceElement=\"_3\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"190.0\" y=\"182.5\"/>\r\n        <omgdi:waypoint x=\"125.0\" y=\"305.0\"/>\r\n        <omgdi:waypoint x=\"215.0\" y=\"431.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_8\" id=\"BPMNEdge__8\" sourceElement=\"_3\" targetElement=\"_7\">\r\n        <omgdi:waypoint x=\"232.5\" y=\"210.0\"/>\r\n        <omgdi:waypoint x=\"232.5\" y=\"290.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_9\" id=\"BPMNEdge__9\" sourceElement=\"_7\" targetElement=\"_4\">\r\n        <omgdi:waypoint x=\"231.0\" y=\"345.0\"/>\r\n        <omgdi:waypoint x=\"231.0\" y=\"415.0\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_10\" id=\"BPMNEdge__10\" sourceElement=\"_7\" targetElement=\"_3\">\r\n        <omgdi:waypoint x=\"275.0\" y=\"317.5\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"250.0\"/>\r\n        <omgdi:waypoint x=\"275.0\" y=\"182.5\"/>\r\n        <bpmndi:BPMNLabel>\r\n          <omgdc:Bounds height=\"0.0\" width=\"0.0\" x=\"0.0\" y=\"0.0\"/>\r\n        </bpmndi:BPMNLabel>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0),('2503',1,'d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.allowance.png','2501',_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0c\0\0\…\0\0\0PEXi\0\0\◊IDATx\⁄\Ì\›lT◊ù\«qTUUT≠V®ä\ZUQ\ÌJç™™ä∂ä™≠VQó**j⁄¢FÿûÒù¡\‡`b\‚Ñ%Q\‹XÊëÜ»ã†ZRÚRmH≤\–nLlåÉ&êdy9ê@yå\Õ#`{\Œ˛ˇdúè=∂g\Ê\‹\«˜#ëx¿3Ûø3?ˇ\Á\‹{∆å\0\0\0W≤º\∆4≤u;\0 ñÉ}-”∑\0c\0 å\0Ñ1\0\∆T\0˙#´)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0∏ü1f\ÏÜ\r\ﬁ]±b≈•eÀñ\≈\ÊŒùk\nM~~æ)((0˜\ﬂø)++\ÎZ∞`A\„ú9s†b\0êF\'OûåæÚ\ +\Ôª\Ô>3s\ÊL≥f\Õ\Z≥m\€6s\Í\‘)\”\ﬁ\ﬁnTWWóinn6;v\Ï0Øæ˙™ô1cÜô5kV¨¥¥t≥\„87PE\0˘L¯Üööö3≥g\œ626ªw\Ôæ\Z∫©jhh02ã6”¶M32ã^@E`≥\·gü}6VRRbv\Ó\‹iFcˇ˛˝fŒú9\Êû{\Ó9]XX8ñ\Í@\nZ[[Áîïïô\ÂÀóõã/öt\–vÜ~ø{\ÔΩ˜K\⁄\0ê¬åXÉx…í%¶ªª€§[EEÖŒêœç7\Ó:™\r\0\–±∂&tõâ \Óı\Ã3œòIì&•\‚\00\0˝∞N{\ƒ\ÈjM÷≤ò1cF\Ãqú™\0˝\⁄∫jBWLdÉ~®çF{\Ë@]G¨\À◊≤\È\—G\Ì\ \œ\œ_Oı`\ÃWg\÷\È	Ÿö˜⁄∑oüëôÒ>\Ã\0QUUı7=≥.ì\⁄%SXX\ÿáßq\0û^kBOq∂\·Èßün\À\œœØ\„(\0<Ω\Ëè^k¬Ü≠[∑vK\Á(\0<Ω˙ö^Ù«Ü3g\Œ\ƒ$å;9\n\0O/\Ÿ{ıµl\”\È%89\n\0O\√\–&\¬\0ƒî)SlŒåcÑ1\0àx¿Zœ∏πππãû1\0àÚÚÚN[´)6l\ÿ\–\Ãj\n\0ã-:jkùqYYY\Îå@Ãô3\Á.›≥\Œ\∆xz:4g\‡¿ˇrO∂ØMQ__Ø-\nÆM\0Ωy\‰ëMKó.\Õj7q\’6\0H†Ö\ﬁ}˜\›1\›\—9>˙\Ë£3:+\Êz\∆\0\–œ¨Y≥\ ÙÛô\ﬁÈ£≠≠≠\'ât±\”\0$1c∆åSO?˝t&?Ãã\…}4á\√\·CT\0í\–\”dÜ|f≈äô\‰Xii\È1]W¨m™\r\0CrqqqÛìO>i._æú∂\÷ƒΩ˜ﬁ´\ÿßO\0\√‰ÇÇÇC”ßOè\Ì⁄µk\‘\÷ièX[Ãà`ÙC∂Iì&uóóó_\—PN\Î\‚\„è?n\—t|\’\÷¿h\ËlVfµ\—\Ÿ\Ì\‰…ìcÀñ-k˚\‡É∫õöözÙzƒΩW_”ã˛ºˇ˛˚gÙg=≥NCX\◊”ñ\0Ä4ìp-êQ-\„®¥\Ó_gFßˆÑe\‘\Î)ŒúY\0\Ÿ\rh3˛¸oR	\0∞\∆\≈\≈\≈ﬂ¶\0`9åY%\0.\„	&\\O%\0¿n\«&Nú¯=*\0Ö\√\·XQQ\—MT\0,áqaa\·®\0X\‰8NONN\Œ©\0\ÿ\„[®\0Xîüüﬂùóów+ï\0\0ªa¨;<ˇåJ\0Ä\Â0v\Á6*\0v√∏+\n˝ÇJ\0Ä\›0\Óá\√\„©\0\ÿ\r\„ø°\0`ëÃä;\"ë\»\Ô®\0ÿù∑\À»•\0`7å\€A%\0¿n_\“Ìò®\0Xcô\ﬂE%\0¿¢p8|Q˘n*\0vg\∆df<ìJ\0Ä›ôÒy	\‰9T\0,íYÒπP(t?ï\0\0ãdV|V\¬¯A*\0Ö\√\·ñH$RJ%\0¿n7KóS	\0∞(??øIyï\0\0ªa|J\∆cT\0\ÏÜq£ÃåóP	\0∞\»qú\„°P\Ë)*\0vg\∆G%êü°\0`7å\ÀXA%\0¿nˇ#Ø§\0`7å\»XM%\0¿n\Ó8Œü©\0\ÿ\r\„}2^¶\0`Q8nê0~çJ\0Ä\›0\ﬁ-a¸&ï\0\0ªaº\”qúøR	\0∞∆üJøC%\0¿n\Ôê0^G%\0¿noì0˛;ï\0\0ãÚÛÛ\Î%ê+©\0\ÿ\r\„%å´®\0X\‰8\Œ\∆5T\0,\“ \÷@¶\0`Q~~~µå:*\0v\√xÉå≠T\0,\“em∫ºçJ\0Ä\›0^ß\'~P	\0∞(??ˇ]üP	\0∞\∆ke\Ï§\0`7å\ﬂ\‘\ÀhR	\0∞∆Ø\È\Ê©\0\ÿ\r\„Wd|F%\0¿nø®õíR	\0∞∆´e†\0`Q8^)a¸*\0v\√¯y\«qS	\0∞\∆\Àef|îJ\0ÄE°P\Ë)ôß\0`wfºDf∆çT\0,íYÒb	\„ìT\0,äD\"ãdv\‹D%\0¿nóK7S	\0∞∆•\∆-T\0,\ \œ\œH\∆*\09é3W\¬¯ï\0\0ª3\„9\·p¯<ï\0\0ª3\„ô\»®\0\ÿ\r\„\È2.R	\0∞Hf\≈Se¥R	\0∞\∆2.Q	\0∞\»\∆mT\0,\ná\√yÑ1\0X\nÖ\Óî0nß\0`ëÒodtP	\0∞(èó0\Ó§\0`Qnn\Ó\Ìé\„tQ	\0∞(\n˝\\f\∆W®\0XáF@ñ\È\ 	fà¡•\0êIÒ=\Ô\rc]\ÓF•\0¿\Ó\Ï¯(Ä,á\√ÀíÖq4\Z\rS!\0\»\ﬁ\Ï∏uÄ0fóh\0\»r?\“?åıBÛT\0≤\»\¬¯,\0d&\\í0+.°\"\0`yvL%\0¿¢P(Ù0a¿◊å1\◊:t\Ëx}}ΩŸ∏q£©™™bå`TWWõÕõ7\«dT™0l\Z\ƒuuu¶ππ\Ÿtvv2F1ZZZLmmmLÇyØ,\0√¢3bÇ8ΩÅ,3eÆΩ`x¥5Aà¶wh€ÇWÄa\—\‡ @	c\0	\„K_û2áv¨1\r\’Ø˝o˝\Z\·K\»R∑ûo4{7îô]ü\◊g\Ë\◊Ù6ò0êÖ0>ﬁ∞\Óö \Ó\'\Z\÷¿Ñ1ÄlÑÒæMO$\rcΩç\0&åd!å˜V\ÕO\Z\∆zL å	c\0¡c]=ë,åı6ò0êÖ0>∞eE\“0\÷\€`\¬@\¬¯l\„n≥˜˝Úk[Ú5Ωç\0&åd!åu˛¯\Âk\¬XøF¯\∆\0≤\∆\Ê¿÷äk[Ú5Ωç\0&åd8åıª/∂<ó¥g¨∑qa Sa,3\ﬁSjÃû\ “§A\‹;Ù\Ô\Ë\ﬂeñLHc5fñL\»Bß2lñL\∆\0\“\∆#\r\‚\ﬁA\∆\0\“\∆\¬\0aL åÑ1\0¬ò0@3c\0Ñ1aÄ0f\∆\0c\¬\0aú\Èpíªp∏\Âv\¬@`\¬x∞ØŸæù0@\∆\0@\∆\0c\¬\0c\¬\0aL@ˆ\√xK\€\0¿ns\“\0∆Ñ1\0¬ò0\0¬ò0@\∆\0@\∆\0c\¬\0c\¬\0aL\∆\0c\¬\0a\Ã å∆Ñ1\0¬òA å	c\0Ñ1É00\n7n$@\”<\ﬁ{\Ô=\¬¿\‘\’\’ı477¢i\Z<çFM8é\…h\À\œ\œ?+„ÄåzµÚµø\»X\Ó8NInn\Ó\Ì\„∆çªéW!Ä1555è\’\÷\÷\∆Nü>=™:{ˆl∆ÉÆ±±\—\’A|\‚ƒâ£\’\’\’WV¨X±^Ç◊§0\Œ\∆\0æ&≤†™™\Ííˆ:Sïïï\Êı\◊_7ØΩˆöë 7∏\Z.\Î÷≠3©~è\·é\Ì€∑õ\ÂÀóõw\ﬁy\'c˜ëÜ\—)µ\\¶5ïz¨*åC°–ùº˙\0§§∞∞p¨GÅ¸Z˝\“]w›µ\Ô\Ÿgü\Ì‹¥iì9˛º\ÈuÙ\ËQ\róûL=πã±\ÁŒùã\È}üˆJ\Ì§f\Á	\„Ìº∫\0§LÉ\„è¸cœæ}˚∫ıWÒÅ»¨ıJ8n\»\‘c8v\Ïÿ°\ﬁ˚⁄∫uk∑Ñ\‹b/\‘.â¸:I«¢\—\ËOyuHIQQ\—M3gŒåô!lÿ∞°C-\œ\ƒchmm\Õ\Î\È\È\Ès¯\√∫ı±y\‰á\Ÿ@˝\„çì&M˙^e\0Rö\Ÿ=˙\Ë£WÜ\n\„+V\ƒÙ\Ôf\‚1455]sˇ_~˘eè\ŸN/\‘P?†ì\‡mO\‚\„«èˇÆ¸&Q•°¨\ﬁq\«ˇÃ´\r@R∫¸j\Ì⁄µ]CÖqIII,´é?æ1\Ÿ}æ˝ˆ\€:ª,B£\—h∏7åh\È\ÃXg\»2∫d<\¬+@≤ôq≈∂m\€:bm!Lô2\ÂL∫\Ô[æı-\Ì\Ì\ÌI\Ô7ãôx†\›+K\√Ù;ªí\‹ˆH<êi]\0∏ñ¸\n]\Ÿ\‘\‘\‘=X∑¥¥\Ëµ6\›˜\›\ÿ\ÿ\ÿ:‘å¸\·\√˙a\ﬁ;^®•ÆJ¨œ≠≠\nZ\0íÖÒßmmmÉ~Ä∑gœûX(z0\›˜ΩeÀñ°≤\ÿttt\\]:¶AÁóö”∫\0pç3f4j;` \›\›\›z\Íowyyπ\…\ƒ\ ˘æoJ\ÿ\Z∆øˇ˝\Ôèyef<Ç∂≠\0_y\‚â\'\⁄√Ø≥≥3¶=‰ßûz\ D£\—zùÖLÆó}\„ç7íˆ´\ÂAÉU´üO\'¶u\‡™U´V\≈>˚Ï≥´+JJJ¥7|Ag¢999∑d\„˛ıB:∫}x\◊âD:º≤öÇ\÷Äªı\÷[ø≠˝XΩ˙ò¸˘ÆÑm6«í%Kvıoïº\¬_h?;h«Ñ\÷@v\€\‰M\…ˆác⁄Ü®¨¨\ÏI8\·\„à¸`\ËÚ\ x¥.\0åfˆ≤\Œ¿$à\‡Ü\«3{ˆ\Ïπ\ÁŒù3Òùı µ)h]\0Mó\È¨+\n˝\¬Mèk’™U-z	Myl\'9J}é≠¿oúØËØø\”\‹ˆÿ¥-°=l˝Pè#\’≠¿G\‰M¸3y3w\Àx\‹≈≥@ˆñ≠¿˚ø\Í~_¬∏#\nΩ\ÌÚ\«IßV\'ZÄ\◊\‰\Â\Â˝ì\„8Áº∞Tå0N≠¿{≥®\Ëj˛¸˘\ﬂ$å˝á\÷\‡ç Æ\”Säev¸è<^\¬x‰µ£u∏Ù\Õ˘¢û<!ø\¬\ﬁ\Ï°\«Lè≠¿e\"ëH©.aìÒKè˝\0!å”Ä\÷\‡2#\ ”ôëÒt\Œ\Ê	\„Ù÷ì\÷`É^\ÓR\◊\À\Ãx©G√É0N3Z@ñMû<˘F›•8\n˝∑ágrÑqÜ–∫\0≤†∏∏X/áyVf>;Ω¸<\„¨‘ò\÷ê¡7\ÿAßº∞ñò0∂è\÷êô\0´\’\ÎOò0\·z<\¬8ãh]\0\ÈØ\’˙FäF£?Ú\…Û!å\Ì‘ù\÷0ä7\–CÒ_3\«˚\Ë9∆ñ–∫\0FZπÒµ\ƒ3}ˆºc\Àh]\0)\ \ÀÀªU\◊K?\Ì\√2Ñ±{é≠ ôâ\'~O\◊\ÀX\Ô\”\0 å]Ñ\÷0\0\›EYf\√g\‰M±\««≥1\¬ÿÖh]\0}É\Ís	‚¶ºººo∆∞t|h] oÇç~YKL{≠ñº\‡W\…ˇä¸˘\„\0¸\–!å=Ç\÷Ç6#˛/ùÅD\"ë_\‰˘\∆\ﬁ;f_∑.d\¬pÅ\ÔÑB°;\„ø\n\Œ\–õ0ˆ†\ﬂ˛ˆ∑7\ \ÎÙ¨?ô8¸+ÅüB\È\'Ú\‚\÷\÷\ƒÚÄ=o\¬ÿÉ3c\›\ﬁKg\∆ÚÁØ®|C^\–7H∑…ã˚¯\∆&å=\"\ﬁ3>I\œæ§kâ\ÂÖ\›\"a\‹\–Ya\Ïr∫zBéS5´)\‡kÚ\‚\ﬁ//Ú\”~^KL{˙¯|›í`ù1¸\ƒU2.|7¿ov\¬ÿÖhI HA¸ºÆ%\Œ\……π%\‡3/\¬\ÿEhI P\‰◊æ}±áB°	¸\ZLª\ËX–í@ph\0«ØK\\B5c7†%Å¿âD\"ˇ?\Õ˘y™A\€FKÅ§kâ\ÂEY\∆˚TÉ0vA\›iI xtŸö\Ã<öÂÖøèj\∆6—í@†\È	Ú\¬o\÷<®al-	\ƒ\·p•º⁄¥MA5cK5¶%Å¿ø	û”ãˇ\ËwTÉ0\Œ6Z¿W3\‚\ŸÒ\Îˇéj\∆\ŸDKà\”\√\«\◊œ•\ZÑqñ\ÎIKàœà_Kºíj\∆\ŸBKH†¸\—MDu3Q™Ag-	†]K,oà&üS\r\¬8Kµ£%\∆\ÿ+oå3¨%&å3çñêD(˙õÆ%û8q\‚˜®aú)¥$ÄA\»l¯˝¿.//\ÔV™Ag∞N¥$ÄAÇxf|-ÒD™Ag-	`2˛U¸ÒR\r\¬8\›hI\0)àF£?“ôäÃåˇD5\„‘Ññ0î	&\\_Kºâj\∆\ÈDKH\—¸˘Ûø)oíS2P\r\¬8]hI\0\√é]2\Œõj\∆iz˛¥$Ä\·ê7\Ã:y√¥Oû<˘F™Aè-	`\‰W\«eÚÜ\ÈéF£?•\Z£\n^=]\‹1.—í\00–åxz¸çìG5F\∆CÖ±\‘y-	\0˝É¯ó2t-Ò\√T#mÅ\‘2H∑˙Ò\⁄¥$ÄQ\»\…\…˘a|-Òü©Fvf\«R\Î\≈^x⁄ÆZ∂lô©®®¯z,_æ\‹,\\∏∞œò7oû>Øm¥$Ä\ \À\À˚é\Œ\“dl¶\Z	\‰Åz«óº2+~¸Ò\«˜˜ÙÙò°¨\\π\“–í\0F(æñ∏Qfi©Fˆf\«^\È\Î.ﬂõ7o2àè;f¶LôÚG˘õ\Ì%Œ±ñ8\„Å|“ã≥\‚_|qG*≥‚äää.é20Ú ~G\◊\À¯>\’\»,ô	OKc\œ|®\’\–\–0d766Í¨ò\Îñ\0#á%∫ñX∆øSç¨ÕéØˆéΩ2+^≥fÕª©Ãäó.]\Zc\«`Ñ≥4]\¬çF\√T#´a\\\‡•3ˆ\Ï\Ÿ3d:t(&ØßJé.0Lπππ∑k˚i˝ßd\¬u\n\«\Î\Î\Î\Õ∆çMUUc£∫∫\⁄lﬁº9&£B\∆©Ãä-Zdäään\‚ùoF|s|!˛\À~z^\Z\ƒuuu¶ππ\Ÿtvv2F1ZZZLmmm\Ï\·√±°Ç¯\‡¡É\›Úöj\‡ùCaa\·Xy\„\\î \ﬁ\‚∑\Á¶3bÇ8}cﬂæ}◊ú†2u\ÍT3{ˆ\Ï>Cø¶øiÒ\ÓR§kâ%àO8ésX˛˜~{~⁄ö D\”;\ﬁ{\Ô=.Ç§õ\Ãl>ë >üóó˜O~|~\⁄\Ô$@\”;¥¶ºsÄ4í˛´Ñqáü?dI5å/}y\ ⁄±\∆4T/º:ÙøıkÑ/ad:à\ÎZbø_+ ï0n=\ﬂhˆn(3ª˛>Ø\œ–Ø\Èm0ad™515æÑ-\‚˜\ÁöJoXwM˜é\r\Î	`\¬\»»å¯?ı2ÜëH§<\œ7ï0ﬁ∑Èâ§a¨∑¿Ñ1êVÖÖÖ?ê \Óî@~5(\œ9ï0\ﬁ[5?i\Îm0a§3à\«J_ê0Æ\“Û&å	c¿Mæ!A|\\Ç¯\»Æ%m\Î\Íâda¨∑¿Ñ1ê\¬\€e|ƒ≠nR	\„[V$\rcΩç\0&åÅtÒõ\⁄\'.((¯ó >ˇT\¬¯l\„n≥˜˝Úk[Ú5Ωç\0&åÅQ	á\√O\ÍZb\«qnj\rR=\È\„\«/_\∆˙5¬ó0FE¯áÒπ<\‰:§\∆\Ê¿÷äk[Ú5Ωç\0&åÅ\—Œåó\«w\Ï¯	aú¸\Ïª/∂<ó¥g¨∑qa§#ê+e\\û0a\¬ıÑq\ﬂ\Ÿ©5fOei\“ \Ó˙wÙ\Ô2K&åÅQëôÒAΩLÊòÄ-kK\∆CÕÜô%\∆@F\Ë\Â1uiõ/?í0Ne6<\ÿ,ô0&åÅ—¥+Æn´$Æzè4à{aL£mW¸F/\nÖ\Ó	r3c¿:	\‚á\„Å¸s¬òAE\"ë7táè…ì\'\ﬂH3c¿n\Àbóåñºººo\∆\¬∞DCX\√XCô0f∆ÄE⁄¶\–vÖ∂-caX§\‰\≈?\–{ò0f∆Ä\›@æGYóæ\∆\¬∞HOâür3a<∫!w;\‡\»\÷\ÌÑ1\‡qz∫¥û6≠ßO∆£\„¡æñ\È\€	c¿˚æ°\“∆Ñ1aX§ó\⁄\‘Kn\Í•7	c¬ò0\Ï∂+~ø(˝\„Ñ1aLv9\‚8éÆ∞à∆Ñ1a\ÿ\r\‰«ΩæmaLæ\‡ımõX\⁄F~ö!{v\€&N˙ å\ﬂÚ∂MÑ1a¯≠]\·\…mõc\¬cª\¬s\€6∆Ñ1\‡K^€∂â0&å\ﬂÚ“∂MÑ1a¯Ωe\·âmõc\¬5Øl\€D∆Ä\Ôya\€&¬ò0¡\Ì\€6∆Ñ1§@v\Ì∂MÑ1aä[∑m\"å	c p‹∏maLA\‰∫mõc\¬$∑m\€D\∆@ê\€ÆŸ∂i\„∆ç(a:ê]±mS]]]Oss3!ö¶q\‚ƒâ£∆ùº\¬o≤ımõjjj´≠≠çù>}\⁄\’!\◊\‘\‘\‰â ÆÆÆæ\"cØn¿c‹∞mìÑ\«ô\Õ]\“_Ø\›8>¸C≥xÒb≥v\ÌZ\„\÷\«ù1\‡\Ì≤g∑m ¥\Áû{.\Á¬ÖF[)EEEá©ÄåÒÚ∂Mô\‰8\Œ\rõ7oéô∏u\Î÷ô\‹\‹\‹€©ÄL∂+<πmS¶å7\Ó∫≈ã∑ˆÙÙÙf±\—ˇ.//?Iu\0dî∑m î\È”ß\‘\÷Dü~˙)≥c\0ô\Áµmõ2Ù[Beb{¢øï+Wû\·ï „º¥mSÇxŸ¢Eãz\Ã tô[yyy.Ø\0\Áïmõ2ºÕÖÆò!\‘\’’µÛ*êq^Ÿ∂)øT9r§g®0Æ©©1ÖÖÖcy•\0\»8/l€î	•••≠\›\›\›IÉ¯Ú\Â\Àf\·¬ÖoÒ\nê5nﬂ∂)tµƒ∫u\Îí~Ä˜\Êõo^\‰ï¿F ªv€¶Lô:ujmkk\Î5Åºˇ˛\ÿcè=v3Ø\n\0V∏u€¶L—ì>÷¨Y”ßW°ßEø\¬\œÚj\0`ï∑m\ $\«qf:t\Ë\Î0^ªv\Ì	^\0\‹¿u\€6e\⁄¬ÖO\Ëi–ªw\Ôfı\0˜p€∂MôVTTt\”[oΩe\ÊŒù\€¡\—\‡*n⁄∂)Kœ∑\ÃqVP\0pe@πb€¶lê\ﬂfkØú£¿≠Ål}€¶lê:s\Â9û\„àpÛ¨\—˙∂MY¯°ÛêÆ\‘¿ıa\Â\Îmõ¥g,£ô#\r¿\’¸æmS$Y$?lö8\“\0\\\œ\œ\€69é≥Xû\€-ÃØÛæ‹∂I/8/\œ\Î8GÄg¯q\€&	\„\ÂÚúértxäﬂ∂mí0~\ﬁqú\√Y\0û\„ßmõ$àˇ§\Îq\0?m\€$\œ\·EüsTxí_∂mí\Áäå\œ8¢\0<\À\€6\Èìp8ºá£	¿\ÎÅ\Ï\Èmõ\«˘´ÑÒNé$\0\œÛÚ∂MÚ∏ﬂïÒ	GÄ/xu\€&ô\ŸˇMf\«q¯Ö\'∑m\“+\”\…cÆ\Á\r/n\€$A\\-£é£¿Wº∂mì<\ŒZõ8r\0¸»ûŸ∂Ig\≈:;\Ê®k {b\€&\Ìe7l\0\ÂÖmõ$å∑\ÀX\œ\—\‡˜≤´∑m\“5∆∫÷ò#¿\◊‹æmìû}ßg\·q§\0¯ûõ∑mí«µW\◊\Î%\0Å\‡\÷mõÙämz\Â6éÄ¿p\„∂Mz-c\«q˛\Ã\—(n€∂IÇX?`\\≈ë8n⁄∂I˜ø\”}8*\0\«M\€6\È\Œ\–\»\œpT\0í[∂m\“5\–ÚñrD\0ñ∂mí˚?)3\„\≈\r\0Ad´\€6\…˝6\…\ÏxG@\‡\Ÿ‹∂)ﬁª~Ñ£\0\0c\Ïm\€$˜yF\∆C\0¯äïmõ\«9\nÖ\Óß¸\0gc€¶¯Eå\Ó•˙\0\–7≥∫mìÃå/ òN\Â\‡\⁄@\Œ⁄∂Mró\‰æ\Ó¢\Í\00pHfe\€&˘˛óΩ∞W\0Xìçmõ$à\€\‰>Ú®6\0ñ›∂Iæ∑ûí˝;*\r\0ÉH\Á∂M999∑8ésõåzø&ˇ\›)˜Ò+*\r\0C\œ^”≤mì¸˚˘>&\…\–Ø»∏PXX8ñ™¿\0“±mS4\Z˝\È a|uH`ˇÖj¿ “±mS¸\¬ˆ±.ßcV\0)H∂mì\Ãz\√r[\≈hf\«Ãä`¯≥€Ø∑mímâŒò\Â\œÛ©¸{	\›˝Ñq7≥b\0Ü\ƒmõdºñ0≥çç7Ó∫°˛}(∫sÄ0^Me`ò¥M!3\·\ÿ\0}ﬂô)ŒÆO&¸ª∂TB\0ê@\◊	\ÎF¢Izø\ÎSlULK¯7èQU\0Ü¢¢¢õ$<\€Yû÷î\Í˜“ø´ˇf¸¯Òﬂ•≤\0ê\"m%\ËátC¨∞o¨_\”\Ìïd\‘\≈˚Õù˝?¿ìqVFΩÆ\ \‡\√<\0:ê_\“K_≤^¯∂ﬁøØß@\À\◊j%`ªÜ:\·£ˇöc=c/Ò{\0†kã≈°Å\÷kh\ÎU\ﬂ$Ñ\ÕpB8…®g¶\0C\–Ÿ´\Œ~\Â\œ\ﬁ\Ÿoª¸˜5}\Âô3göU´Vôm€∂ô\∆\∆F\”\ﬁ\ﬁnî˛\Ÿ\‹\‹l>˘\‰Û\“K/ôíííÅ\⁄m∫$éj@\n$4\Îe\∆\‹\'H\ÁÕõw5hªªªM™v\Ó\‹iJKK˚árLæˇ™\0ÉÒ¥ƒ∂ÑÜÚ˙ı\Îá\¬˝UVVö\¬\¬\¬˛≥d\0íõõ{ªq,±%Ò\≈_òt8r‰àô={vü2-\0\Ë\'æ¬¢=1àµúN˙˝Y{\»|®\0}\€ïâ≠âtÕàö!˜kYlß˙\00\Ê´uƒâ}b\Ìgíˆê˚\«\⁄\·(\0<]“ñ∏j¢´´\Àd\⁄C=îÿÆh\‡(\04\Ì\'ûYß\À◊≤a˜\Ó\›}\Œ\‘K\‹\‡\0Góò%~h7ö%l√ïxbH*;å\0Äü[uΩÅ∏zıjìMØæ˙jü”•9\Z\0Ç\∆-ΩÅ®ß8gì∂DZ\Á9\Z\0+\·Z\Ê‘©SY\rc]wúx˘MéÄ œåø\ƒﬁã˛dã\ﬁ_\‚˝s4\0\∆2l åÄô1\0∏=c\0p\«Ãò\’\0\‡Ç0fù1\0∏†M±\ÿ\÷x˜\›wg\‡Ä\“kShøñkS\0Ä˝V\≈ˆƒ´∂ecvú∏7WmÄ1_]\œX∑A\‚z\∆\0`v\\ó≠ù>¶Lô\¬N\00›ãN˜§\ÀÙx≥f\Õb<\0å\Ó÷úÿÆH˜\Ó–âA\Ã\Ó\–\00x ?ò\»⁄≤\–Úh>\‘\”qø÷ÑŒäPm\0F ˜Æ≤ÿπsÁ∞óØïïïı	a˝æ1\0£eë\ÿCNl]\Ëôz;v\Ï∏z-ãﬁã\Èü\⁄\÷¿\÷3\ÎO\ËH\Ï”ö\0Äa\“\◊WYårl\Á\√:\0]á,≥\⁄O\œ\‘Ke\ËôuzBG$˘5UÄ4\—Sß\„◊≤\–\ŸrK\‚\Â7Nk>Ø˝\—kMpä3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\√ˇ\‡\‡\›	\Õc¿Ç\0\0\0\0IENDÆB`Ç',1),('3',1,'d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.allowance.png','1',_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0c\0\0\…\0\0\0PEXi\0\0\◊IDATx\⁄\Ì\›lT◊ù\«qTUUT≠V®ä\ZUQ\ÌJç™™ä∂ä™≠VQó**j⁄¢FÿûÒù¡\‡`b\‚Ñ%Q\‹XÊëÜ»ã†ZRÚRmH≤\–nLlåÉ&êdy9ê@yå\Õ#`{\Œ˛ˇdúè=∂g\Ê\‹\«˜#ëx¿3Ûø3?ˇ\Á\‹{∆å\0\0\0W≤º\∆4≤u;\0 ñÉ}-”∑\0c\0 å\0Ñ1\0\∆T\0˙#´)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0∏ü1f\ÏÜ\r\ﬁ]±b≈•eÀñ\≈\ÊŒùk\nM~~æ)((0˜\ﬂø)++\ÎZ∞`A\„ú9s†b\0êF\'OûåæÚ\ +\Ôª\Ô>3s\ÊL≥f\Õ\Z≥m\€6s\Í\‘)\”\ﬁ\ﬁnTWWóinn6;v\Ï0Øæ˙™ô1cÜô5kV¨¥¥t≥\„87PE\0˘L¯Üööö3≥g\œ626ªw\Ôæ\Z∫©jhh02ã6”¶M32ã^@E`≥\·gü}6VRRbv\Ó\‹iFcˇ˛˝fŒú9\Êû{\Ó9]XX8ñ\Í@\nZ[[Áîïïô\ÂÀóõã/öt\–vÜ~ø{\ÔΩ˜K\⁄\0ê¬åXÉx…í%¶ªª€§[EEÖŒêœç7\Ó:™\r\0\–±∂&tõâ \Óı\Ã3œòIì&•\‚\00\0˝∞N{\ƒ\ÈjM÷≤ò1cF\Ãqú™\0˝\⁄∫jBWLdÉ~®çF{\Ë@]G¨\À◊≤\È\—G\Ì\ \œ\œ_Oı`\ÃWg\÷\È	Ÿö˜⁄∑oüëôÒ>\Ã\0QUUı7=≥.ì\⁄%SXX\ÿáßq\0û^kBOq∂\·Èßün\À\œœØ\„(\0<Ω\Ëè^k¬Ü≠[∑vK\Á(\0<Ω˙ö^Ù«Ü3g\Œ\ƒ$å;9\n\0O/\Ÿ{ıµl\”\È%89\n\0O\√\–&\¬\0ƒî)SlŒåcÑ1\0àx¿Zœ∏πππãû1\0àÚÚÚN[´)6l\ÿ\–\Ãj\n\0ã-:jkùqYYY\Îå@Ãô3\Á.›≥\Œ\∆xz:4g\‡¿ˇrO∂ØMQ__Ø-\nÆM\0Ωy\‰ëMKó.\Õj7q\’6\0H†Ö\ﬁ}˜\›1\›\—9>˙\Ë£3:+\Êz\∆\0\–œ¨Y≥\ ÙÛô\ﬁÈ£≠≠≠\'ât±\”\0$1c∆åSO?˝t&?Ãã\…}4á\√\·CT\0í\–\”dÜ|f≈äô\‰Xii\È1]W¨m™\r\0CrqqqÛìO>i._æú∂\÷ƒΩ˜ﬁ´\ÿßO\0\√‰ÇÇÇC”ßOè\Ì⁄µk\‘\÷ièX[Ãà`ÙC∂Iì&uóóó_\—PN\Î\‚\„è?n\—t|\’\÷¿h\ËlVfµ\—\Ÿ\Ì\‰…ìcÀñ-k˚\‡É∫õöözÙzƒΩW_”ã˛ºˇ˛˚gÙg=≥NCX\◊”ñ\0Ä4ìp-êQ-\„®¥\Ó_gFßˆÑe\‘\Î)ŒúY\0\Ÿ\rh3˛¸oR	\0∞\∆\≈\≈\≈ﬂ¶\0`9åY%\0.\„	&\\O%\0¿n\«&Nú¯=*\0Ö\√\·XQQ\—MT\0,áqaa\·®\0X\‰8NONN\Œ©\0\ÿ\„[®\0Xîüüﬂùóów+ï\0\0ªa¨;<ˇåJ\0Ä\Â0v\Á6*\0v√∏+\n˝ÇJ\0Ä\›0\Óá\√\„©\0\ÿ\r\„ø°\0`ëÃä;\"ë\»\Ô®\0ÿù∑\À»•\0`7å\€A%\0¿n_\“Ìò®\0Xcô\ﬂE%\0¿¢p8|Q˘n*\0vg\∆df<ìJ\0Ä›ôÒy	\‰9T\0,íYÒπP(t?ï\0\0ãdV|V\¬¯A*\0Ö\√\·ñH$RJ%\0¿n7KóS	\0∞(??øIyï\0\0ªa|J\∆cT\0\ÏÜq£ÃåóP	\0∞\»qú\„°P\Ë)*\0vg\∆G%êü°\0`7å\ÀXA%\0¿nˇ#Ø§\0`7å\»XM%\0¿n\Ó8Œü©\0\ÿ\r\„}2^¶\0`Q8nê0~çJ\0Ä\›0\ﬁ-a¸&ï\0\0ªaº\”qúøR	\0∞∆üJøC%\0¿n\Ôê0^G%\0¿noì0˛;ï\0\0ãÚÛÛ\Î%ê+©\0\ÿ\r\„%å´®\0X\‰8\Œ\∆5T\0,\“ \÷@¶\0`Q~~~µå:*\0v\√xÉå≠T\0,\“em∫ºçJ\0Ä\›0^ß\'~P	\0∞(??ˇ]üP	\0∞\∆ke\Ï§\0`7å\ﬂ\‘\ÀhR	\0∞∆Ø\È\Ê©\0\ÿ\r\„Wd|F%\0¿nø®õíR	\0∞∆´e†\0`Q8^)a¸*\0v\√¯y\«qS	\0∞\∆\Àef|îJ\0ÄE°P\Ë)ôß\0`wfºDf∆çT\0,íYÒb	\„ìT\0,äD\"ãdv\‹D%\0¿nóK7S	\0∞∆•\∆-T\0,\ \œ\œH\∆*\09é3W\¬¯ï\0\0ª3\„9\·p¯<ï\0\0ª3\„ô\»®\0\ÿ\r\„\È2.R	\0∞Hf\≈Se¥R	\0∞\∆2.Q	\0∞\»\∆mT\0,\ná\√yÑ1\0X\nÖ\Óî0nß\0`ëÒodtP	\0∞(èó0\Ó§\0`Qnn\Ó\Ìé\„tQ	\0∞(\n˝\\f\∆W®\0XáF@ñ\È\ 	fà¡•\0êIÒ=\Ô\rc]\ÓF•\0¿\Ó\Ï¯(Ä,á\√ÀíÖq4\Z\rS!\0\»\ﬁ\Ï∏uÄ0fóh\0\»r?\“?åıBÛT\0≤\»\¬¯,\0d&\\í0+.°\"\0`yvL%\0¿¢P(Ù0a¿◊å1\◊:t\Ëx}}ΩŸ∏q£©™™bå`TWWõÕõ7\«dT™0l\Z\ƒuuu¶ππ\Ÿtvv2F1ZZZLmmmLÇyØ,\0√¢3bÇ8ΩÅ,3eÆΩ`x¥5Aà¶wh€ÇWÄa\—\‡ @	c\0	\„K_û2áv¨1\r\’Ø˝o˝\Z\·K\»R∑ûo4{7îô]ü\◊g\Ë\◊Ù6ò0êÖ0>ﬁ∞\Óö \Ó\'\Z\÷¿Ñ1ÄlÑÒæMO$\rcΩç\0&åd!å˜V\ÕO\Z\∆zL å	c\0¡c]=ë,åı6ò0êÖ0>∞eE\“0\÷\€`\¬@\¬¯l\„n≥˜˝Úk[Ú5Ωç\0&åd!åu˛¯\Âk\¬XøF¯\∆\0≤\∆\Ê¿÷äk[Ú5Ωç\0&åd8åıª/∂<ó¥g¨∑qa Sa,3\ﬁSjÃû\ “§A\‹;Ù\Ô\Ë\ﬂeñLHc5fñL\»Bß2lñL\∆\0\“\∆#\r\‚\ﬁA\∆\0\“\∆\¬\0aL åÑ1\0¬ò0@3c\0Ñ1aÄ0f\∆\0c\¬\0aú\Èpíªp∏\Âv\¬@`\¬x∞ØŸæù0@\∆\0@\∆\0c\¬\0c\¬\0aL@ˆ\√xK\€\0¿ns\“\0∆Ñ1\0¬ò0\0¬ò0@\∆\0@\∆\0c\¬\0c\¬\0aL\∆\0c\¬\0a\Ã å∆Ñ1\0¬òA å	c\0Ñ1É00\n7n$@\”<\ﬁ{\Ô=\¬¿\‘\’\’ı477¢i\Z<çFM8é\…h\À\œ\œ?+„ÄåzµÚµø\»X\Ó8NInn\Ó\Ì\„∆çªéW!Ä1555è\’\÷\÷\∆Nü>=™:{ˆl∆ÉÆ±±\—\’A|\‚ƒâ£\’\’\’WV¨X±^Ç◊§0\Œ\∆\0æ&≤†™™\Ííˆ:Sïïï\Êı\◊_7ØΩˆöë 7∏\Z.\Î÷≠3©~è\·é\Ì€∑õ\ÂÀóõw\ﬁy\'c˜ëÜ\—)µ\\¶5ïz¨*åC°–ùº˙\0§§∞∞p¨GÅ¸Z˝\“]w›µ\Ô\Ÿgü\Ì‹¥iì9˛º\ÈuÙ\ËQ\róûL=πã±\ÁŒùã\È}üˆJ\Ì§f\Á	\„Ìº∫\0§LÉ\„è¸cœæ}˚∫ıWÒÅ»¨ıJ8n\»\‘c8v\Ïÿ°\ﬁ˚⁄∫uk∑Ñ\‹b/\‘.â¸:I«¢\—\ËOyuHIQQ\—M3gŒåô!lÿ∞°C-\œ\ƒchmm\Õ\Î\È\È\Ès¯\√∫ı±y\‰á\Ÿ@˝\„çì&M˙^e\0Rö\Ÿ=˙\Ë£WÜ\n\„+V\ƒÙ\Ôf\‚1455]sˇ_~˘eè\ŸN/\‘P?†ì\‡mO\‚\„«èˇÆ¸&Q•°¨\ﬁq\«ˇÃ´\r@R∫¸j\Ì⁄µ]CÖqIII,´é?æ1\Ÿ}æ˝ˆ\€:ª,B£\—h∏7åh\È\ÃXg\»2∫d<\¬+@≤ôq≈∂m\€:bm!Lô2\ÂL∫\Ô[æı-\Ì\Ì\ÌI\Ô7ãôx†\›+K\√Ù;ªí\‹ˆH<êi]\0∏ñ¸\n]\Ÿ\‘\‘\‘=X∑¥¥\Ëµ6\›˜\›\ÿ\ÿ\ÿ:‘å¸\·\√˙a\ﬁ;^®•ÆJ¨œ≠≠\nZ\0íÖÒßmmmÉ~Ä∑gœûX(z0\›˜ΩeÀñ°≤\ÿttt\\]:¶AÁóö”∫\0pç3f4j;` \›\›\›z\Íowyyπ\…\ƒ\ ˘æoJ\ÿ\Z∆øˇ˝\Ôèyef<Ç∂≠\0_y\‚â\'\⁄√Ø≥≥3¶=‰ßûz\ D£\—zùÖLÆó}\„ç7íˆ´\ÂAÉU´üO\'¶u\‡™U´V\≈>˚Ï≥´+JJJ¥7|Ag¢999∑d\„˛ıB:∫}x\◊âD:º≤öÇ\÷Äªı\÷[ø≠˝XΩ˙ò¸˘ÆÑm6«í%Kvıoïº\¬_h?;h«Ñ\÷@v\€\‰M\…ˆác⁄Ü®¨¨\ÏI8\·\„à¸`\ËÚ\ x¥.\0åfˆ≤\Œ¿$à\‡Ü\«3{ˆ\Ïπ\ÁŒù3Òùı µ)h]\0Mó\È¨+\n˝\¬Mèk’™U-z	Myl\'9J}é≠¿oúØËØø\”\‹ˆÿ¥-°=l˝Pè#\’≠¿G\‰M¸3y3w\Àx\‹≈≥@ˆñ≠¿˚ø\Í~_¬∏#\nΩ\ÌÚ\«IßV\'ZÄ\◊\‰\Â\Â˝ì\„8Áº∞Tå0N≠¿{≥®\Ëj˛¸˘\ﬂ$å˝á\÷\‡ç Æ\”Säev¸è<^\¬x‰µ£u∏Ù\Õ˘¢û<!ø\¬\ﬁ\Ï°\«Lè≠¿e\"ëH©.aìÒKè˝\0!å”Ä\÷\‡2#\ ”ôëÒt\Œ\Ê	\„Ù÷ì\÷`É^\ÓR\◊\À\Ãx©G√É0N3Z@ñMû<˘F›•8\n˝∑ágrÑqÜ–∫\0≤†∏∏X/áyVf>;Ω¸<\„¨‘ò\÷ê¡7\ÿAßº∞ñò0∂è\÷êô\0´\’\ÎOò0\·z<\¬8ãh]\0\ÈØ\’˙FäF£?Ú\…Û!å\Ì‘ù\÷0ä7\–CÒ_3\«˚\Ë9∆ñ–∫\0FZπÒµ\ƒ3}ˆºc\Àh]\0)\ \ÀÀªU\◊K?\Ì\√2Ñ±{é≠ ôâ\'~O\◊\ÀX\Ô\”\0 å]Ñ\÷0\0\›EYf\√g\‰M±\««≥1\¬ÿÖh]\0}É\Ís	‚¶ºººo∆∞t|h] oÇç~YKL{≠ñº\‡W\…ˇä¸˘\„\0¸\–!å=Ç\÷Ç6#˛/ùÅD\"ë_\‰˘\∆\ﬁ;f_∑.d\¬pÅ\ÔÑB°;\„ø\n\Œ\–õ0ˆ†\ﬂ˛ˆ∑7\ \ÎÙ¨?ô8¸+ÅüB\È\'Ú\‚\÷\÷\ƒÚÄ=o\¬ÿÉ3c\›\ﬁKg\∆ÚÁØ®|C^\–7H∑…ã˚¯\∆&å=\"\ﬁ3>I\œæ§kâ\ÂÖ\›\"a\‹\–Ya\Ïr∫zBéS5´)\‡kÚ\‚\ﬁ//Ú\”~^KL{˙¯|›í`ù1¸\ƒU2.|7¿ov\¬ÿÖhI HA¸ºÆ%\Œ\……π%\‡3/\¬\ÿEhI P\‰◊æ}±áB°	¸\ZLª\ËX–í@ph\0«ØK\\B5c7†%Å¿âD\"ˇ?\Õ˘y™A\€FKÅ§kâ\ÂEY\∆˚TÉ0vA\›iI xtŸö\Ã<öÂÖøèj\∆6—í@†\È	Ú\¬o\÷<®al-	\ƒ\·p•º⁄¥MA5cK5¶%Å¿ø	û”ãˇ\ËwTÉ0\Œ6Z¿W3\‚\ŸÒ\Îˇéj\∆\ŸDKà\”\√\«\◊œ•\ZÑqñ\ÎIKàœà_Kºíj\∆\ŸBKH†¸\—MDu3Q™Ag-	†]K,oà&üS\r\¬8Kµ£%\∆\ÿ+oå3¨%&å3çñêD(˙õÆ%û8q\‚˜®aú)¥$ÄA\»l¯˝¿.//\ÔV™Ag∞N¥$ÄAÇxf|-ÒD™Ag-	`2˛U¸ÒR\r\¬8\›hI\0)àF£?“ôäÃåˇD5\„‘Ññ0î	&\\_Kºâj\∆\ÈDKH\—¸˘Ûø)oíS2P\r\¬8]hI\0\√é]2\Œõj\∆iz˛¥$Ä\·ê7\Ã:y√¥Oû<˘F™Aè-	`\‰W\«eÚÜ\ÈéF£?•\Z£\n^=]\‹1.—í\00–åxz¸çìG5F\∆CÖ±\‘y-	\0˝É¯ó2t-Ò\√T#mÅ\‘2H∑˙Ò\⁄¥$ÄQ\»\…\…˘a|-Òü©Fvf\«R\Î\≈^x⁄ÆZ∂lô©®®¯z,_æ\‹,\\∏∞œò7oû>Øm¥$Ä\ \À\À˚é\Œ\“dl¶\Z	\‰Åz«óº2+~¸Ò\«˜˜ÙÙò°¨\\π\“–í\0F(æñ∏Qfi©Fˆf\«^\È\Î.ﬂõ7o2àè;f¶LôÚG˘õ\Ì%Œ±ñ8\„Å|“ã≥\‚_|qG*≥‚äää.é20Ú ~G\◊\À¯>\’\»,ô	OKc\œ|®\’\–\–0d766Í¨ò\Îñ\0#á%∫ñX∆øSç¨ÕéØˆéΩ2+^≥fÕª©Ãäó.]\Zc\«`Ñ≥4]\¬çF\√T#´a\\\‡•3ˆ\Ï\Ÿ3d:t(&ØßJé.0Lπππ∑k˚i˝ßd\¬u\n\«\Î\Î\Î\Õ∆çMUUc£∫∫\⁄lﬁº9&£B\∆©Ãä-Zdäään\‚ùoF|s|!˛\À~z^\Z\ƒuuu¶ππ\Ÿtvv2F1ZZZLmmm\Ï\·√±°Ç¯\‡¡É\›Úöj\‡ùCaa\·Xy\„\\î \ﬁ\‚∑\Á¶3bÇ8}cﬂæ}◊ú†2u\ÍT3{ˆ\Ï>Cø¶øiÒ\ÓR§kâ%àO8ésX˛˜~{~⁄ö D\”;\ﬁ{\Ô=.Ç§õ\Ãl>ë >üóó˜O~|~\⁄\Ô$@\”;¥¶ºsÄ4í˛´Ñqáü?dI5å/}y\ ⁄±\∆4T/º:ÙøıkÑ/ad:à\ÎZbø_+ ï0n=\ﬂhˆn(3ª˛>Ø\œ–Ø\Èm0ad™515æÑ-\‚˜\ÁöJoXwM˜é\r\Î	`\¬\»»å¯?ı2ÜëH§<\œ7ï0ﬁ∑Èâ§a¨∑¿Ñ1êVÖÖÖ?ê \Óî@~5(\œ9ï0\ﬁ[5?i\Îm0a§3à\«J_ê0Æ\“Û&å	c¿Mæ!A|\\Ç¯\»Æ%m\Î\Íâda¨∑¿Ñ1ê\¬\€e|ƒ≠nR	\„[V$\rcΩç\0&åÅtÒõ\⁄\'.((¯ó >ˇT\¬¯l\„n≥˜˝Úk[Ú5Ωç\0&åÅQ	á\√O\ÍZb\«qnj\rR=\È\„\«/_\∆˙5¬ó0FE¯áÒπ<\‰:§\∆\Ê¿÷äk[Ú5Ωç\0&åÅ\—Œåó\«w\Ï¯	aú¸\Ïª/∂<ó¥g¨∑qa§#ê+e\\û0a\¬ıÑq\ﬂ\Ÿ©5fOei\“ \Ó˙wÙ\Ô2K&åÅQëôÒAΩLÊòÄ-kK\∆CÕÜô%\∆@F\Ë\Â1uiõ/?í0Ne6<\ÿ,ô0&åÅ—¥+Æn´$Æzè4à{aL£mW¸F/\nÖ\Ó	r3c¿:	\‚á\„Å¸s¬òAE\"ë7táè…ì\'\ﬂH3c¿n\Àbóåñºººo\∆\¬∞DCX\√XCô0f∆ÄE⁄¶\–vÖ∂-caX§\‰\≈?\–{ò0f∆Ä\›@æGYóæ\∆\¬∞HOâür3a<∫!w;\‡\»\÷\ÌÑ1\‡qz∫¥û6≠ßO∆£\„¡æñ\È\€	c¿˚æ°\“∆Ñ1aX§ó\⁄\‘Kn\Í•7	c¬ò0\Ï∂+~ø(˝\„Ñ1aLv9\‚8éÆ∞à∆Ñ1a\ÿ\r\‰«ΩæmaLæ\‡ımõX\⁄F~ö!{v\€&N˙ å\ﬂÚ∂MÑ1a¯≠]\·\…mõc\¬cª\¬s\€6∆Ñ1\‡K^€∂â0&å\ﬂÚ“∂MÑ1a¯Ωe\·âmõc\¬5Øl\€D∆Ä\Ôya\€&¬ò0¡\Ì\€6∆Ñ1§@v\Ì∂MÑ1aä[∑m\"å	c p‹∏maLA\‰∫mõc\¬$∑m\€D\∆@ê\€ÆŸ∂i\„∆ç(a:ê]±mS]]]Oss3!ö¶q\‚ƒâ£∆ùº\¬o≤ımõjjj´≠≠çù>}\⁄\’!\◊\‘\‘\‰â ÆÆÆæ\"cØn¿c‹∞mìÑ\«ô\Õ]\“_Ø\›8>¸C≥xÒb≥v\ÌZ\„\÷\«ù1\‡\Ì≤g∑m ¥\Áû{.\Á¬ÖF[)EEEá©ÄåÒÚ∂Mô\‰8\Œ\rõ7oéô∏u\Î÷ô\‹\‹\‹€©ÄL∂+<πmS¶å7\Ó∫≈ã∑ˆÙÙÙf±\—ˇ.//?Iu\0dî∑m î\È”ß\‘\÷Dü~˙)≥c\0ô\Áµmõ2Ù[Beb{¢øï+Wû\·ï „º¥mSÇxŸ¢Eãz\Ã tô[yyy.Ø\0\Áïmõ2ºÕÖÆò!\‘\’’µÛ*êq^Ÿ∂)øT9r§g®0Æ©©1ÖÖÖcy•\0\»8/l€î	•••≠\›\›\›IÉ¯Ú\Â\Àf\·¬ÖoÒ\nê5nﬂ∂)tµƒ∫u\Îí~Ä˜\Êõo^\‰ï¿F ªv€¶Lô:ujmkk\Î5Åºˇ˛\ÿcè=v3Ø\n\0V∏u€¶L—ì>÷¨Y”ßW°ßEø\¬\œÚj\0`ï∑m\ $\«qf:t\Ë\Î0^ªv\Ì	^\0\‹¿u\€6e\⁄¬ÖO\Ëi–ªw\Ôfı\0˜p€∂MôVTTt\”[oΩe\ÊŒù\€¡\—\‡*n⁄∂)Kœ∑\ÃqVP\0pe@πb€¶lê\ﬂfkØú£¿≠Ål}€¶lê:s\Â9û\„àpÛ¨\—˙∂MY¯°ÛêÆ\‘¿ıa\Â\Îmõ¥g,£ô#\r¿\’¸æmS$Y$?lö8\“\0\\\œ\œ\€69é≥Xû\€-ÃØÛæ‹∂I/8/\œ\Î8GÄg¯q\€&	\„\ÂÚúértxäﬂ∂mí0~\ﬁqú\√Y\0û\„ßmõ$àˇ§\Îq\0?m\€$\œ\·EüsTxí_∂mí\Áäå\œ8¢\0<\À\€6\Èìp8ºá£	¿\ÎÅ\Ï\Èmõ\«˘´ÑÒNé$\0\œÛÚ∂MÚ∏ﬂïÒ	GÄ/xu\€&ô\ŸˇMf\«q¯Ö\'∑m\“+\”\…cÆ\Á\r/n\€$A\\-£é£¿Wº∂mì<\ŒZõ8r\0¸»ûŸ∂Ig\≈:;\Ê®k {b\€&\Ìe7l\0\ÂÖmõ$å∑\ÀX\œ\—\‡˜≤´∑m\“5∆∫÷ò#¿\◊‹æmìû}ßg\·q§\0¯ûõ∑mí«µW\◊\Î%\0Å\‡\÷mõÙämz\Â6éÄ¿p\„∂Mz-c\«q˛\Ã\—(n€∂IÇX?`\\≈ë8n⁄∂I˜ø\”}8*\0\«M\€6\È\Œ\–\»\œpT\0í[∂m\“5\–ÚñrD\0ñ∂mí˚?)3\„\≈\r\0Ad´\€6\…˝6\…\ÏxG@\‡\Ÿ‹∂)ﬁª~Ñ£\0\0c\Ïm\€$˜yF\∆C\0¯äïmõ\«9\nÖ\Óß¸\0gc€¶¯Eå\Ó•˙\0\–7≥∫mìÃå/ òN\Â\‡\⁄@\Œ⁄∂Mró\‰æ\Ó¢\Í\00pHfe\€&˘˛óΩ∞W\0Xìçmõ$à\€\‰>Ú®6\0ñ›∂Iæ∑ûí˝;*\r\0ÉH\Á∂M999∑8ésõåzø&ˇ\›)˜Ò+*\r\0C\œ^”≤mì¸˚˘>&\…\–Ø»∏PXX8ñ™¿\0“±mS4\Z˝\È a|uH`ˇÖj¿ “±mS¸\¬ˆ±.ßcV\0)H∂mì\Ãz\√r[\≈hf\«Ãä`¯≥€Ø∑mímâŒò\Â\œÛ©¸{	\›˝Ñq7≥b\0Ü\ƒmõdºñ0≥çç7Ó∫°˛}(∫sÄ0^Me`ò¥M!3\·\ÿ\0}ﬂô)ŒÆO&¸ª∂TB\0ê@\◊	\ÎF¢Izø\ÎSlULK¯7èQU\0Ü¢¢¢õ$<\€Yû÷î\Í˜“ø´ˇf¸¯Òﬂ•≤\0ê\"m%\ËátC¨∞o¨_\”\Ìïd\‘\≈˚Õù˝?¿ìqVFΩÆ\ \‡\√<\0:ê_\“K_≤^¯∂ﬁøØß@\À\◊j%`ªÜ:\·£ˇöc=c/Ò{\0†kã≈°Å\÷kh\ÎU\ﬂ$Ñ\ÕpB8…®g¶\0C\–Ÿ´\Œ~\Â\œ\ﬁ\Ÿoª¸˜5}\Âô3göU´Vôm€∂ô\∆\∆F\”\ﬁ\ﬁnî˛\Ÿ\‹\‹l>˘\‰Û\“K/ôíííÅ\⁄m∫$éj@\n$4\Îe\∆\‹\'H\ÁÕõw5hªªªM™v\Ó\‹iJKK˚árLæˇ™\0ÉÒ¥ƒ∂ÑÜÚ˙ı\Îá\¬˝UVVö\¬\¬\¬˛≥d\0íõõ{ªq,±%Ò\≈_òt8r‰àô={vü2-\0\Ë\'æ¬¢=1àµúN˙˝Y{\»|®\0}\€ïâ≠âtÕàö!˜kYlß˙\00\Ê´uƒâ}b\Ìgíˆê˚\«\⁄\·(\0<]“ñ∏j¢´´\Àd\⁄C=îÿÆh\‡(\04\Ì\'ûYß\À◊≤a˜\Ó\›}\Œ\‘K\‹\‡\0Góò%~h7ö%l√ïxbH*;å\0Äü[uΩÅ∏zıjìMØæ˙jü”•9\Z\0Ç\∆-ΩÅ®ß8gì∂DZ\Á9\Z\0+\·Z\Ê‘©SY\rc]wúx˘MéÄ œåø\ƒﬁã˛dã\ﬁ_\‚˝s4\0\∆2l åÄô1\0∏=c\0p\«Ãò\’\0\‡Ç0fù1\0∏†M±\ÿ\÷x˜\›wg\‡Ä\“kShøñkS\0Ä˝V\≈ˆƒ´∂ecvú∏7WmÄ1_]\œX∑A\‚z\∆\0`v\\ó≠ù>¶Lô\¬N\00›ãN˜§\ÀÙx≥f\Õb<\0å\Ó÷úÿÆH˜\Ó–âA\Ã\Ó\–\00x ?ò\»⁄≤\–Úh>\‘\”qø÷ÑŒäPm\0F ˜Æ≤ÿπsÁ∞óØïïïı	a˝æ1\0£eë\ÿCNl]\Ëôz;v\Ï∏z-ãﬁã\Èü\⁄\÷¿\÷3\ÎO\ËH\Ï”ö\0Äa\“\◊WYårl\Á\√:\0]á,≥\⁄O\œ\‘Ke\ËôuzBG$˘5UÄ4\—Sß\„◊≤\–\ŸrK\‚\Â7Nk>Ø˝\—kMpä3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\√ˇ\‡\‡\›	\Õc¿Ç\0\0\0\0IENDÆB`Ç',1);
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
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('next.dbid','10001',5),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);
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
INSERT INTO `act_hi_actinst` VALUES ('5005','allowance:2:2504','5001','5004','begin',NULL,NULL,'ÂºÄÂßã','startEvent',NULL,'2020-01-12 21:04:18.709','2020-01-12 21:04:18.710',1,NULL,''),('5006','allowance:2:2504','5001','5004','selfVerify','5007',NULL,'Áî≥ËØ∑‰∫∫ÂäûÁêÜ','userTask','lyf','2020-01-12 21:04:18.711','2020-01-12 21:55:16.660',3057949,NULL,''),('7504','allowance:2:2504','5001','5004','leaderVerify','7505',NULL,'‰∏ªÁÆ°ÂÆ°Ê†∏','userTask','yangzc','2020-01-12 21:55:16.681','2020-01-12 21:56:49.031',92350,NULL,''),('7509','allowance:2:2504','5001','5004','selfVerify','7510',NULL,'Áî≥ËØ∑‰∫∫ÂäûÁêÜ','userTask','lyf','2020-01-12 21:56:49.031',NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_comment` VALUES ('7501','comment','2020-01-12 21:55:16.598','lyf','5007','5001','AddComment','ËØ∑È¢ÜÂØºÊâπÂáÜÔºå1111111111111111111',_binary 'ËØ∑È¢ÜÂØºÊâπÂáÜÔºå1111111111111111111'),('7507','event','2020-01-12 21:55:16.685','lyf','7505',NULL,'AddUserLink','yangzc_|_assignee',NULL),('7508','comment','2020-01-12 21:56:49.014','yangzc','7505','5001','AddComment','‰∏çÂêåÊÑèÔºå1111111111111111111111',_binary '‰∏çÂêåÊÑèÔºå1111111111111111111111');
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
INSERT INTO `act_hi_identitylink` VALUES ('5002',NULL,'starter','lyf',NULL,'5001'),('7506',NULL,'participant','yangzc',NULL,'5001');
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
INSERT INTO `act_hi_procinst` VALUES ('5001','5001','1','allowance:2:2504','2020-01-12 21:04:18.698',NULL,NULL,'lyf','begin',NULL,NULL,NULL,'',NULL);
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
INSERT INTO `act_hi_taskinst` VALUES ('5007','allowance:2:2504','selfVerify','5001','5004','Áî≥ËØ∑‰∫∫ÂäûÁêÜ',NULL,NULL,NULL,'lyf','2020-01-12 21:04:18.739','2020-01-12 21:55:16.624','2020-01-12 21:55:16.652',3057913,NULL,50,NULL,NULL,NULL,''),('7505','allowance:2:2504','leaderVerify','5001','5004','‰∏ªÁÆ°ÂÆ°Ê†∏',NULL,NULL,NULL,'yangzc','2020-01-12 21:55:16.682','2020-01-12 21:56:49.019','2020-01-12 21:56:49.030',92348,NULL,50,NULL,NULL,NULL,''),('7510','allowance:2:2504','selfVerify','5001','5004','Áî≥ËØ∑‰∫∫ÂäûÁêÜ',NULL,NULL,NULL,'lyf','2020-01-12 21:56:49.031',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_varinst` VALUES ('5003','5001','5001',NULL,'username','string',0,NULL,NULL,NULL,'lyf',NULL,'2020-01-12 21:04:18.706','2020-01-12 21:04:18.706'),('7502','5001','5001',NULL,'comment','string',1,NULL,NULL,NULL,'‰∏çÂêåÊÑèÔºå1111111111111111111111',NULL,'2020-01-12 21:55:16.645','2020-01-12 21:56:49.027'),('7503','5001','5001',NULL,'outcome','string',1,NULL,NULL,NULL,'È©≥Âõû',NULL,'2020-01-12 21:55:16.646','2020-01-12 21:56:49.028');
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
INSERT INTO `act_re_deployment` VALUES ('1',NULL,NULL,NULL,'','2020-01-12 09:42:36.980',NULL),('2501',NULL,NULL,NULL,'','2020-01-12 11:20:54.118',NULL);
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
INSERT INTO `act_re_procdef` VALUES ('allowance:1:4',1,'http://www.activiti.org/test','Ë°•Ë¥¥Áî≥ËØ∑','allowance',1,'1','d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.bpmn','d:/upload//processDefiniton/2020/01/12/a933937eab428d5c21c7f14bb6ce0ef6.allowance.png',NULL,0,1,1,'',NULL),('allowance:2:2504',1,'http://www.activiti.org/test','Ë°•Ë¥¥Áî≥ËØ∑','allowance',2,'2501','d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.bpmn','d:/upload//processDefiniton/2020/01/12/f889091233f599a141f845b41642e9fc.allowance.png',NULL,0,1,1,'',NULL);
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
INSERT INTO `act_ru_execution` VALUES ('5001',1,'5001','1',NULL,'allowance:2:2504',NULL,'5001',NULL,1,0,1,0,0,1,NULL,'',NULL,'2020-01-12 21:04:18.698','lyf',NULL,0,0,0,0,0,0,0,0,0),('5004',3,'5001',NULL,'5001','allowance:2:2504',NULL,'5001','selfVerify',1,0,0,0,0,1,NULL,'',NULL,'2020-01-12 21:04:18.707',NULL,NULL,0,0,0,0,0,0,0,0,0);
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
INSERT INTO `act_ru_identitylink` VALUES ('5002',1,NULL,'starter','lyf',NULL,'5001',NULL),('7506',1,NULL,'participant','yangzc',NULL,'5001',NULL);
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
INSERT INTO `act_ru_task` VALUES ('7510',1,'5004','5001','allowance:2:2504','Áî≥ËØ∑‰∫∫ÂäûÁêÜ',NULL,NULL,'selfVerify',NULL,'lyf',NULL,50,'2020-01-12 13:56:49.031',NULL,NULL,1,'',NULL,NULL);
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
INSERT INTO `act_ru_variable` VALUES ('5003',1,'string','username','5001','5001',NULL,NULL,NULL,NULL,'lyf',NULL),('7502',2,'string','comment','5001','5001',NULL,NULL,NULL,NULL,'‰∏çÂêåÊÑèÔºå1111111111111111111111',NULL),('7503',2,'string','outcome','5001','5001',NULL,NULL,NULL,NULL,'È©≥Âõû',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_allowance`
--

LOCK TABLES `biz_allowance` WRITE;
/*!40000 ALTER TABLE `biz_allowance` DISABLE KEYS */;
INSERT INTO `biz_allowance` VALUES (1,'Áî≥ËØ∑Â•ñÂ≠¶Èáë1111111111111','ÊµãËØïÊï∞ÊçÆÔºå1111111111111',2000,'5001','lyf','2020-01-12 20:35:50','lyf',NULL,'lyf','2020-01-12 21:04:18'),(2,'Áî≥ËØ∑‰∫§ÈÄöË°•Ë¥¥2222222222','ÊµãËØïÊï∞ÊçÆ',300,NULL,'lyf','2020-01-12 20:54:45',NULL,NULL,NULL,NULL);
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
INSERT INTO `stu_student` VALUES (1013,'Âàò‰∫¶Ëè≤','Â•≥','1989-10-28','upload/a8e6c5830753402f81dbf69b990be323.jpg'),(1017,'ËµµÂÖ≠','Â•≥','1999-01-01','upload/11fe2afce22a46b5bf069f85b0cf52a9.jpg');
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
  `type` int(11) DEFAULT NULL COMMENT 'Êñá‰ª∂Á±ªÂûã',
  `url` varchar(200) DEFAULT NULL COMMENT 'URLÂú∞ÂùÄ',
  `create_on` datetime DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Êñá‰ª∂‰∏ä‰º†';
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
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Áî®Êà∑id',
  `username` varchar(50) DEFAULT NULL COMMENT 'Áî®Êà∑Âêç',
  `operation` varchar(50) DEFAULT NULL COMMENT 'Áî®Êà∑Êìç‰Ωú',
  `time` int(11) DEFAULT NULL COMMENT 'ÂìçÂ∫îÊó∂Èó¥',
  `method` varchar(200) DEFAULT NULL COMMENT 'ËØ∑Ê±ÇÊñπÊ≥ï',
  `params` varchar(5000) DEFAULT NULL COMMENT 'ËØ∑Ê±ÇÂèÇÊï∞',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IPÂú∞ÂùÄ',
  `create_on` datetime DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='Á≥ªÁªüÊó•Âøó';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (7,1,'admin','ÁôªÂΩï',0,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:42:03'),(8,1,'admin','ÁôªÂΩï',15,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:47:04'),(9,1,'admin','ÁôªÂΩï',0,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:53:27'),(10,1,'admin','ÁôªÂΩï',16,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:54:17'),(11,1,'admin','ÁôªÂΩï',31,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2020-01-05 21:56:26'),(12,1,'admin','ÁôªÂΩï',156,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8435\",null]','127.0.0.1','2020-01-05 22:03:41'),(13,1,'admin','ÁôªÂΩï',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8951\",null]','127.0.0.1','2020-01-05 22:18:42'),(14,1,'admin','ÁôªÂΩï',3388,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7836\",null]','127.0.0.1','2020-01-06 23:00:30'),(15,1,'admin','ÁôªÂΩï',3012,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"6737\",null]','127.0.0.1','2020-01-06 23:06:57'),(16,1,'admin','ÁôªÂΩï',413,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8331\",null]','127.0.0.1','2020-01-07 23:11:19'),(17,1,'admin','ÁôªÂΩï',309,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5453\",null]','127.0.0.1','2020-01-08 23:42:23'),(18,1,'admin','ÁôªÂΩï',174,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"9926\",null]','127.0.0.1','2020-01-12 12:35:00'),(19,1,'admin','ÁôªÂΩï',2,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"9426\",null]','127.0.0.1','2020-01-12 12:35:51'),(20,1,'admin','ÁôªÂΩï',72,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"9574\",null]','127.0.0.1','2020-01-12 16:32:23'),(21,1,'admin','ÁôªÂΩï',18,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"2331\",null]','127.0.0.1','2020-01-12 17:02:57'),(22,1,'admin','ÊµÅÁ®ãÂÆö‰πâÂØºÂÖ•',82,'com.yangzc.studentboot.workflow.definition.controller.ProcessDefinitionController.upload()','[null]','127.0.0.1','2020-01-12 17:37:16'),(23,1,'admin','ÊµÅÁ®ãÂÆö‰πâÂØºÂÖ•',26940,'com.yangzc.studentboot.workflow.definition.controller.ProcessDefinitionController.upload()','[null]','127.0.0.1','2020-01-12 17:42:38'),(24,1,'admin','ÁôªÂΩï',20,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"2179\",null]','127.0.0.1','2020-01-12 17:50:59'),(25,1,'admin','ÁôªÂΩï',24,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8753\",null]','127.0.0.1','2020-01-12 19:20:43'),(26,1,'admin','ÊµÅÁ®ãÂÆö‰πâÂØºÂÖ•',370,'com.yangzc.studentboot.workflow.definition.controller.ProcessDefinitionController.upload()','[null]','127.0.0.1','2020-01-12 19:20:54'),(27,1,'admin','ÁôªÂΩï',61,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"1145\",null]','127.0.0.1','2020-01-12 20:16:54'),(28,1,'admin','ÁôªÂΩï',28,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"1497\",null]','127.0.0.1','2020-01-12 20:22:12'),(29,1,'admin','ÁôªÂΩï',14,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5926\",null]','127.0.0.1','2020-01-12 20:27:22'),(30,-1,'[\"admin\",\"111111\",\"5751\",null]','ÁôªÂΩï',0,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5751\",null]','127.0.0.1','2020-01-12 20:27:31'),(31,-1,'[\"admin\",\"111111\",\"5751\",null]','ÁôªÂΩï',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"5751\",null]','127.0.0.1','2020-01-12 20:27:34'),(32,-1,'[\"admin\",\"111111\",\"7998\",null]','ÁôªÂΩï',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7998\",null]','127.0.0.1','2020-01-12 20:27:43'),(33,1,'admin','ÁôªÂΩï',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"0059\",null]','127.0.0.1','2020-01-12 20:28:06'),(34,-1,'[\"lyf\",\"123456\",\"2116\",null]','ÁôªÂΩï',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"123456\",\"2116\",null]','127.0.0.1','2020-01-12 20:29:10'),(35,-1,'[\"lyf\",\"123456\",\"6720\",null]','ÁôªÂΩï',11,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"123456\",\"6720\",null]','127.0.0.1','2020-01-12 20:29:17'),(36,2,'lyf','ÁôªÂΩï',9,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"6720\",null]','127.0.0.1','2020-01-12 20:29:25'),(37,2,'lyf','Ë°•Ë¥¥Áî≥ËØ∑',46,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"Âàò‰∫¶Ëè≤\",\"createTime\":1578832549913,\"id\":1,\"params\":{},\"reason\":\"ÊµãËØïÊï∞ÊçÆÔºå1111111111111\",\"title\":\"Áî≥ËØ∑Â•ñÂ≠¶Èáë1111111111111\",\"totalMoney\":2000}]','127.0.0.1','2020-01-12 20:35:50'),(38,-1,'[\"yangzc\",\"111111\",\"6997\",null]','ÁôªÂΩï',30324,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"6997\",null]','127.0.0.1','2020-01-12 20:51:33'),(39,3,'yangzc','ÁôªÂΩï',3910,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"6997\",null]','127.0.0.1','2020-01-12 20:52:14'),(40,-1,'[\"yangzc\",\"111111\",\"3444\",null]','ÁôªÂΩï',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"3444\",null]','127.0.0.1','2020-01-12 20:52:57'),(41,3,'yangzc','ÁôªÂΩï',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"2553\",null]','127.0.0.1','2020-01-12 20:53:02'),(42,-1,'[\"lyf\",\"111111\",\"6366\",null]','ÁôªÂΩï',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"6366\",null]','127.0.0.1','2020-01-12 20:53:44'),(43,2,'lyf','ÁôªÂΩï',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"8500\",null]','127.0.0.1','2020-01-12 20:53:49'),(44,2,'lyf','Ë°•Ë¥¥Áî≥ËØ∑',7,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.addSave()','[{\"createBy\":\"lyf\",\"createTime\":1578833684729,\"id\":2,\"params\":{},\"reason\":\"ÊµãËØïÊï∞ÊçÆ\",\"title\":\"Áî≥ËØ∑‰∫§ÈÄöË°•Ë¥¥2222222222\",\"totalMoney\":300}]','127.0.0.1','2020-01-12 20:54:45'),(45,2,'lyf','Ë°•Ë¥¥Áî≥ËØ∑Êèê‰∫§',344,'com.yangzc.studentboot.workflow.allowance.controller.BizAllowanceController.submitApply()','[1]','127.0.0.1','2020-01-12 21:04:19'),(46,1,'admin','ÁôªÂΩï',61,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"6404\",null]','127.0.0.1','2020-01-12 21:17:13'),(47,2,'lyf','ÁôªÂΩï',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"1741\",null]','127.0.0.1','2020-01-12 21:17:43'),(48,1,'admin','ÁôªÂΩï',3,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8497\",null]','127.0.0.1','2020-01-12 21:20:17'),(49,1,'admin','ÁôªÂΩï',12,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"8151\",null]','127.0.0.1','2020-01-12 21:27:27'),(50,1,'admin','ÁôªÂΩï',54,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"2025\",null]','127.0.0.1','2020-01-12 21:38:41'),(51,-1,'[\"lyf\",\"111111\",\"8697\",null]','ÁôªÂΩï',1,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"8697\",null]','127.0.0.1','2020-01-12 21:39:10'),(52,2,'lyf','ÁôªÂΩï',4,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"9780\",null]','127.0.0.1','2020-01-12 21:39:15'),(53,3,'yangzc','ÁôªÂΩï',10,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"yangzc\",\"111111\",\"4334\",null]','127.0.0.1','2020-01-12 21:56:06'),(54,2,'lyf','ÁôªÂΩï',5,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"lyf\",\"111111\",\"1587\",null]','127.0.0.1','2020-01-12 21:57:32'),(55,1,'admin','ÁôªÂΩï',5,'com.yangzc.studentboot.login.controller.LoginController.ajaxLogin()','[\"admin\",\"111111\",\"7940\",null]','127.0.0.1','2020-01-12 22:45:11');
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
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Áà∂ËèúÂçïIDÔºå‰∏ÄÁ∫ßËèúÂçï‰∏∫0',
  `name` varchar(50) DEFAULT NULL COMMENT 'ËèúÂçïÂêçÁß∞',
  `url` varchar(200) DEFAULT NULL COMMENT 'ËèúÂçïURL',
  `perms` varchar(500) DEFAULT NULL COMMENT 'ÊéàÊùÉ(Â§ö‰∏™Áî®ÈÄóÂè∑ÂàÜÈöîÔºåÂ¶ÇÔºöuser:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT 'Á±ªÂûã   0ÔºöÁõÆÂΩï   1ÔºöËèúÂçï   2ÔºöÊåâÈíÆ',
  `icon` varchar(50) DEFAULT NULL COMMENT 'ËèúÂçïÂõæÊ†á',
  `order_num` int(11) DEFAULT NULL COMMENT 'ÊéíÂ∫è',
  `create_on` datetime DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_on` datetime DEFAULT NULL COMMENT '‰øÆÊîπÊó∂Èó¥',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='ËèúÂçïÁÆ°ÁêÜ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'ÊùÉÈôêÁÆ°ÁêÜ',NULL,NULL,0,'fa fa-gear',1,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(2,1,'Á≥ªÁªüËèúÂçï','sys/menu/','sys:menu:menu',1,'fa fa-th-list',12,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(3,1,'ËßíËâ≤ÁÆ°ÁêÜ','sys/role','sys:role:role',1,'fa fa-paw',11,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(4,1,'Áî®Êà∑ÊùÉÈôê','sys/user/','sys:user:user',1,'',10,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(5,0,'Â≠¶ÂëòÁÆ°ÁêÜ','','',0,'fa fa-user',2,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(6,5,'Â≠¶ÂëòÂàóË°®','stu/list/','stu:list',1,'',20,'2019-12-21 00:00:00','2019-12-21 00:00:00'),(7,2,'Êñ∞Â¢û','','sys:menu:add',2,'',120,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(8,2,'ÁºñËæë','','sys:menu:edit',2,'',122,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(9,2,'Âà†Èô§','','sys:menu:remove',2,'',123,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(10,2,'ÊâπÈáèÂà†Èô§','','sys:menu:batchRemove',2,'',124,'2019-12-29 00:00:00','2019-12-29 00:00:00'),(11,6,'Ê∑ªÂä†','','stu:create',2,'',200,NULL,NULL),(13,0,'Ë°•Ë¥¥ÂäûÁêÜ','','',0,'fa fa-tasks',3,NULL,'2020-01-12 12:46:21'),(16,0,'Êó•ÂøóÁÆ°ÁêÜ','','',0,'fa fa-table',4,'2020-01-04 23:08:10',NULL),(17,16,'Êó•ÂøóÊü•Áúã','/log/list','log:list',1,'',40,'2020-01-04 23:08:49','2020-01-04 23:09:02'),(18,0,'Á≥ªÁªüÁõëÊéß','','',0,'fa fa-video-camera',5,'2020-01-06 23:36:13','2020-01-06 23:37:17'),(19,18,'Êï∞ÊçÆÁõëÊéß','/druid/index.html','',1,'',50,'2020-01-06 23:39:33',NULL),(22,13,'Ë°•Ë¥¥Áî≥ËØ∑','/workflow/allowance/apply/list','workflow:allowance:apply:list',1,'',30,'2020-01-12 12:47:21','2020-01-12 21:20:33'),(23,13,'ÊàëÁöÑÂæÖÂäû','/workflow/allowance/task/list','workflow:allowance:task:list',1,'',31,'2020-01-12 12:48:41','2020-01-12 12:51:02'),(24,13,'ÊàëÁöÑÂ∑≤Âäû','/workflow/allowance/done/list','workflow:allowance:done:list',1,'',32,'2020-01-12 12:52:08',NULL),(25,0,'ÊµÅÁ®ãËÆæËÆ°','','',0,'fa fa-send',6,'2020-01-12 12:56:32','2020-01-12 12:57:12'),(26,25,'ÊµÅÁ®ãÊ®°Âûã','/workflow/model/list','workflow:model:list',1,'60',60,'2020-01-12 12:59:10','2020-01-12 17:02:12'),(27,25,'ÊµÅÁ®ãÂÆö‰πâ','/workflow/definition/list','workflow:definition:list',1,'',61,'2020-01-12 13:00:13','2020-01-12 16:59:17'),(28,22,'Êü•ËØ¢','','workflow:allowance:apply:query',2,'',300,'2020-01-12 13:05:26','2020-01-12 13:05:48'),(29,22,'Ê∑ªÂä†','','workflow:allowance:apply:add',2,'',301,'2020-01-12 13:06:39',NULL),(30,23,'ÂÆ°Êâπ','','workflow:allowance:task:audit',2,'',310,'2020-01-12 13:08:35','2020-01-12 13:10:46');
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
  `role_name` varchar(100) DEFAULT NULL COMMENT 'ËßíËâ≤ÂêçÁß∞',
  `role_sign` varchar(100) DEFAULT NULL COMMENT 'ËßíËâ≤Ê†áËØÜ',
  `remark` varchar(100) DEFAULT NULL COMMENT 'Â§áÊ≥®',
  `create_by` bigint(255) DEFAULT NULL COMMENT 'ÂàõÂª∫Áî®Êà∑id',
  `create_on` datetime DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_on` datetime DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='ËßíËâ≤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'Ë∂ÖÁ∫ßÁî®Êà∑ËßíËâ≤','admin','Êã•ÊúâÊúÄÈ´òÊùÉÈôê',NULL,'2019-12-21 00:00:00','2019-12-21 00:00:00');
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
  `role_id` bigint(20) DEFAULT NULL COMMENT 'ËßíËâ≤ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT 'ËèúÂçïID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='ËßíËâ≤‰∏éËèúÂçïÂØπÂ∫îÂÖ≥Á≥ª';
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
  `username` varchar(50) DEFAULT NULL COMMENT 'Áî®Êà∑Âêç',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT 'ÂØÜÁ†Å',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT 'ÈÇÆÁÆ±',
  `mobile` varchar(100) DEFAULT NULL COMMENT 'ÊâãÊú∫Âè∑',
  `status` tinyint(255) DEFAULT NULL COMMENT 'Áä∂ÊÄÅ 0:Á¶ÅÁî®Ôºå1:Ê≠£Â∏∏',
  `create_by` bigint(255) DEFAULT NULL COMMENT 'ÂàõÂª∫Áî®Êà∑id',
  `create_on` datetime DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `update_on` datetime DEFAULT NULL COMMENT '‰øÆÊîπÊó∂Èó¥',
  `gender` bigint(32) DEFAULT NULL COMMENT 'ÊÄßÂà´',
  `birth` datetime DEFAULT NULL COMMENT 'Âá∫Ë∫´Êó•Êúü',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT 'Áé∞Â±Ö‰ΩèÂú∞',
  `hobby` varchar(255) DEFAULT NULL COMMENT 'Áà±Â•Ω',
  `province` varchar(255) DEFAULT NULL COMMENT 'ÁúÅ‰ªΩ',
  `city` varchar(255) DEFAULT NULL COMMENT 'ÊâÄÂú®ÂüéÂ∏Ç',
  `district` varchar(255) DEFAULT NULL COMMENT 'ÊâÄÂú®Âú∞Âå∫',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','Ë∂ÖÁ∫ßÁÆ°ÁêÜÂëò','27bd386e70f280e24c2f4f2a549b82cf',NULL,'yangzc23@aliyun.com','17721038951',1,1,'2019-12-21 18:05:39','2019-12-21 18:05:39',NULL,'1999-10-15 00:00:00',NULL,NULL,NULL,'‰∏äÊµ∑Â∏Ç','‰∏äÊµ∑Â∏ÇÂ∏ÇËæñÂå∫','ÂæêÊ±áÂå∫'),(2,'lyf','Âàò‰∫¶Ëè≤','7fdb1d9008f45950c1620ba0864e5fbd',NULL,'lyf@aliyun.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'yangzc','Êù®ÊåØÊò•','b926e2a0b1cc80a3020a4cdb44c901fa',NULL,'yangzc23@aliyun.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `user_id` bigint(20) DEFAULT NULL COMMENT 'Áî®Êà∑ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT 'ËßíËâ≤ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Áî®Êà∑‰∏éËßíËâ≤ÂØπÂ∫îÂÖ≥Á≥ª';
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

-- Dump completed on 2020-01-12 23:41:31
