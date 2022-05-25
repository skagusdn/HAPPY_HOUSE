-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: happyhouse
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `articleno` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(16) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `hit` int DEFAULT '0',
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleno`),
  KEY `board_to_member_fk` (`userid`),
  CONSTRAINT `board_to_member_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'admin','[공지사항] 허위매물 신고 프로세스 개편','안녕하세요. Happy House 입니다.\n\n항상 Happy House를 이용해주시는 회원님들 감사합니다.\n\n허위매물 근절 및 신속 정확한 허위매물 신고 처리를 위해, 오는 5월 24일부로  허위매물 신고 서비스가 개편됩니다.\n\n이에 따라 사전에 안내드리오니 이용에 참고 부탁드립니다.\n\n[허위매물 신고 변경 내용]\n\n① 신고방법\n\n● 기존 ) PC WEB, 고객센터, 이메일, 1:1문의 접수\n\n● 변경 )  PC WEB 접수\n\n② 신고정보\n\n● 기존 ) 신고사유 입력\n\n● 변경 ) 신고사유 입력, 증빙자료 첨부 필수\n\n③ 신고건수\n\n● 기존 ) 일 최대 10건\n\n● 변경 ) 일 최대 5건 (동일 중개업소 일 최대 2건)\n\n④ 신고이력\n\n● 기존 ) 미제공\n\n● 변경 ) PC WEB 허위매물신고 페이지 확인\n\n＊접수된 신고 내용은 국토교통부 부동산광고시장감시센터로 전송됩니다. 공인중개사 법 제33조 제2항에 따라 정당한 사유 없이 시세에 부당한 영향을 줄 목적으로 개업 공인중개사 등의 중개대상물에 대한 정당한 표기&광고 행위를 방해 한 자는 3년 이하의 징역 또는 3,000만 원 이하의 벌금에 처해질 수 있으니, 명확한 사실을 기반으로 신고해 주시기 바랍니다.\n\n[적용일]\n\n2022년 5월 24일\n\n회원님께서는 위 내용을 참고하여 허위매물 신고 이용해주시기 바랍니다. 깨끗하고 정확한 부동산 시장을 위해 노력하는 Happy House가 되겠습니다.\n\n관련한 문의사항은 고객센터(1899-6840)로 부탁 드립니다. 감사합니다.',2,'2022-05-22 08:25:39'),(2,'admin','[공지사항] 회원 가입 방법','Register 메뉴를 클릭하고 회원 정보를 입력합니다. 카카오 계정과 같은 이메일로 가입할 경우 카카오 로그인 이용이 가능합니다.',2,'2022-05-22 09:36:40'),(3,'admin','[공지사항] LH 마이홈포털 공공임대주택 정보 제공 안내','안녕하세요. HappyHouse 입니다.\n\nHappyHouse에서 LH 마이홈포털의 공공임대주택 정보를 확인하실 수 있게 됐습니다.\n\nHappyHouse에서 매물검색 시 사용하시는 [맞춤필터]를 통해 \'공공임대주택\'을 클릭하시면,\n공공임대주택 정보가 포함된 매물리스트와 지도가 제공됩니다.\n\n주택 정보를 자세히 보기를 원하시면 클릭 시\n소재지, 모집호수 등 상세 정보가 담긴 안내페이지가 뜨며\n입주자모집공고로 바로 연결되는 마이홈포털 URL도 제공됩니다.\n\n앞으로도 고객님들의 주거 정보를 보다 다양하게 제공할 수 있도록 노력하겠습니다.\n\n감사합니다.',2,'2022-05-22 15:36:40'),(4,'admin','[공지사항] 서비스 이용약관 신설 안내','안녕하세요. HappyHouse 입니다.\n\nHappyHouse 서비스 이용약관에 신설된 내용이 있어 회원님들께 사전에 안내드립니다.\n\n\n※ 변경 적용일 : 2020년 8월 10일(월)\n[ 주요 사항 ]\n\n\n1. HappyHouse 서비스 약관 신설\n제17조 (이용자의 의무)\n1항\n11호  회사 업무를 방해하는 행위\n\n\n(1) 회사의 임직원, 피용자, 상담원, 업무수탁자(이하‘임직원등’)에게 폭력적, 명예훼손적, 모욕적,  또는 성적 굴욕감이나 혐오감을 유발할 수 있는 발언이나 행동을 하는 행위\n(2) 통념상 비합리적인 요구 또는 요청을 임직원등에게 지속적으로 또는 반복적으로 하는 행위\n\n(3) 임직원등에게 서비스 이용과 무관한 연락을 하는 행위\n\n(4) 그 밖에 위 각 호의 행위에 준하는 일체의 업무 방해 행위\n\n\n4항 이용자가 제 1항 11호 회사 업무를 방해하는 행위의 경우, 회원자격의 제한(이용제한, 상담제한)을 할 수 있습니다.\n\n변경된 약관에 동의하지 않는 경우 \'서비스 이용 계약 해지\' 또는 고객센터를 통해 문의하실 수 있으며\n공지기간 동안 별도의 이의를 제기하지 않으시는 경우\n\n본 내용에 동의한 것으로 판단돼 해당 이용약관이 정상적으로 서비스에 적용됩니다.\n\n다른 궁금하신 점은 고객센터를 통해 문의해 주시기 바랍니다.\n\n\n감사합니다.',1,'2022-05-22 15:36:40'),(5,'admin','[공지사항] 시스템 오류 관련 (5/24)','안녕하세요.\n\nHappyHouse 입니다.\n\n금일(5/24) 오전에 네트워크 장애가 발생하여 시스템 오류가 발생하였습니다.\n\n현재 정상화가 완료되어 정상 이용이 가능합니다.\n\n발생시간대 : 5월 24일 13시 50분 ~ 14시 20분\n\n회원 여러분들의 넓은 양해를 부탁 드립니다.\n\n감사합니다.',3,'2022-05-23 15:36:40'),(6,'admin','[공지사항] 시스템 정기점검 안내 (5/25)','안녕하세요.\n\nHappyHouse 입니다.\n\n안정적인 서비스 제공을 위해 시스템 정기점검을 아래와 같이 진행합니다.\n\n※ 일시\n\n- 2022.03.24(목) 22:00 ~ 24:00 (2시간)\n\n\n\n※ 목적\n\n- 서비스 보안강화 및 안정성 향상 (보안패치, 시스템 재기동 등)\n\n\n\n※ 서비스 영향\n\n- 작업 시간 동안 간헐적 접속 불가\n\n\n점검 시간을 확인하시어 이용에 불편 없으시길 바라며,\n\n보다 안정적인 서비스 제공을 위한 조치이니 회원분들의 너른 양해 부탁드리겠습니다.\n\n\n예정된 시간 안에 작업을 마칠 수 있도록 최선을 다하겠습니다.\n\n\n\n\n\n감사합니다.',3,'2022-05-23 15:36:40'),(7,'admin','[공지사항] 전국 공공데이터(실거래자료) 갱신 안내 (4월 기준)','안녕하세요.\n\n\n\nHappyHouse 입니다.\n\n\n\n전국 공공데이터(실거래자료) 업데이트 및 데이터 갱신과 관련하여 안내드립니다.\n\n\n\n\n\n\n\n1) 갱신데이터 \n\n\n\n   a. 2022년 4월전국 매매 실거래자료 \n\n\n\n2) 갱신일 : 2022년 5월 22일\n\n\n\n3) 적용서비스 : 매물 실거래데이터 서비스\n\n\n\n',2,'2022-05-25 10:28:05'),(8,'admin','[공지사항] QnA 게시판 이용 관련','QnA 게시판은 회원가입을 진행하셔야 글쓰기가 가능합니다.',2,'2022-05-25 10:41:55'),(9,'admin','[공지사항] 개인정보 처리방침 주요 개정사항에 대한 안내','happyhouse는 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 정보통신서비스 관련 법규상의 개인정보 보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 사용자의 권익 보호를 위해 노력하고 있습니다.\n \n이에 개인정보 처리방침 주요 개정사항을 아래와 같이 안내 드립니다.\n개정된 개인정보 처리방침은 5월 31일(화)부터 적용될 예정입니다.',2,'2022-05-25 13:21:27'),(10,'admin','[공지사항] 사이트 이용방법 안내','House 탭에서 아파트 실거래가에 대한 정보를 얻을 수 있습니다.\nNews 탭에서 부동산과 관련된 뉴스를 얻을 수 있습니다.\nNoitce는 공지 탭이고 QnA 탭에서 질문을 할 수 있습니다.',1,'2022-05-25 13:22:57'),(11,'admin','[공지사항] 게시판 이용 규칙 안내','1. 욕설 및 비방은 금지합니다.\n2. 목적에 맞는 제목을 사용합니다.\n3. 도배하는 행위는 회원 탈퇴가 될 수 있습니다.',3,'2022-05-25 13:24:10'),(12,'admin','[공지사항] Internet Exploer 11 지원 종료 안내','Microsoft의 Internet Explorer 11 지원 종료 발표에 따라, 2022년 6월 첫째 주부터 Internet Explorer 11로 HappyHouse 웹사이트 접근 시 Microsoft Edge로 자동 전환될 예정입니다.',2,'2022-05-25 13:29:59'),(13,'admin','[공지사항] 카카오 로그인 관련 안내','카카오 로그인은 회원가입 시 등록된 이메일이 카카오 계정과 같아야 합니다.',0,'2022-05-25 13:36:58'),(14,'admin','[공지사항] 회원가입시 주의사항 안내','아이디는 이미 회원가입 된 아이디가 중복으로 존재할 시 회원가입이 진행되지 않습니다.',0,'2022-05-25 13:37:53'),(15,'admin','[공지사항] 추후 지원 서비스 안내','추후 다양한 서비스를 제공할 예정입니다.',1,'2022-05-25 13:38:28');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `articleno` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `hit` int DEFAULT '0',
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleno`),
  KEY `qna_to_member_fk` (`userid`),
  CONSTRAINT `qna_to_member_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'kain1234','회원탈퇴 문의합니다.','회원탈퇴는 어떻게 하나요?',4,'2022-05-25 10:30:35'),(2,'finger15','회원가입 문의','회원가입을 하면 어떤 점이 좋나요?',5,'2022-05-25 10:32:00'),(3,'syc12','House 서비스 관련 문의','House에 보여지는 매물은 믿을 수 있나요?',5,'2022-05-25 10:33:43'),(4,'ssafy01','휴대폰에서도 회원 가입 및 수정이 가능한가요?','휴대폰에서도 회원 가입 및 수정이 가능한가요?',6,'2022-05-25 10:40:23'),(5,'syc12','회원 정보 수정 문의','회원 정보 수정은 어디서 하나요?',4,'2022-05-25 10:41:08'),(6,'kain1234','사이트 이용 문의','사이트 이용 방법이 궁금합니다.',4,'2022-05-25 10:48:22'),(7,'ssafy01','404 에러가 발생합니다.','House 탭 이용시 간헐적으로 404 에러가 발생합니다.',4,'2022-05-25 10:50:51'),(8,'ssafy02','뉴스 서비스 관련 문의','뉴스의 출처는 어디인가요? 신뢰할 만한 정보인가요?',10,'2022-05-25 10:55:41'),(9,'mococo12','제공하는 서비스에 대해','추후 지원예정인 서비스에는 어떤 것이 있나요?',0,'2022-05-25 13:45:05'),(10,'IloveLoA','비밀번호를 잊어 버렸습니다.','비밀번호를 찾고 싶습니다.',0,'2022-05-25 13:46:08'),(11,'mococo12','카카오 로그인 관련 문의','카카오 로그인을 눌렀지만 실행되지 않습니다.',2,'2022-05-25 13:47:21');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `replyno` int NOT NULL AUTO_INCREMENT,
  `parentno` int NOT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`replyno`),
  KEY `reply_to_member_fk` (`userid`),
  KEY `parent_article_no` (`parentno`),
  CONSTRAINT `parent_article_no` FOREIGN KEY (`parentno`) REFERENCES `qna` (`articleno`),
  CONSTRAINT `reply_to_member_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (7,4,'admin','네 가능합니다.','2022-05-25 10:51:40'),(8,1,'admin','우측 상단 MyInfo 탭으로 이동하시면 탈퇴버튼이 있습니다. 해당 버튼 클릭시 탈퇴가능합니다.','2022-05-25 10:56:23'),(9,2,'admin','회원가입을 하시면 관심동네를 추가하여 house 서비스 이용시 사용할 수 있습니다.','2022-05-25 10:56:50'),(10,3,'admin','저희는 사용자 분들에게 믿을 수 있는 정보를 제공하는 것을 최우선으로 합니다.\n매물의 정확한 위치를 지도 위에 표시하고, 매물 근처의 편의시설 등을 한 눈에 볼 수 있도록 하여 발품을 팔지 않고도 주변 환경까지 확인하실 수 있도록 했습니다.\n또한 지속적인 허위매물 관리를 통해 사용자 분들이 허위정보로 인한 불편함을 느끼지 않도록 노력하고 있습니다.','2022-05-25 10:57:29'),(11,5,'admin','회원정보 수정은 우측 상단 MyInfo 탭에서 가능합니다.','2022-05-25 10:57:54'),(12,6,'admin','공지사항 사이트 이용방법을 참고 해주세요.','2022-05-25 10:58:16'),(13,7,'admin','최대한 빠르게 원인 파악 후 오류 수정하도록 하겠습니다.','2022-05-25 10:58:43'),(14,8,'admin','뉴스는 부동산과 관련된 네이버의 뉴스를 받아와 서비스하는 것입니다. ','2022-05-25 10:59:10'),(15,11,'admin','버튼을 눌렀을 때 실행되지 않을 경우 될 때까지 눌러봅시다.','2022-05-25 13:47:45');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 22:56:28
