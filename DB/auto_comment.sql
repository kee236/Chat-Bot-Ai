
-- Table structure for table `auto_comment_reply_info`
--

DROP TABLE IF EXISTS `auto_comment_reply_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_comment_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `auto_comment_template_id` int(11) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `schedule_time` datetime NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `post_id` varchar(200) NOT NULL,
  `page_info_table_id` int(11) NOT NULL,
  `page_name` mediumtext NOT NULL,
  `post_created_at` varchar(255) NOT NULL,
  `last_reply_time` datetime NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `auto_comment_count` int(11) NOT NULL,
  `periodic_time` varchar(255) NOT NULL,
  `schedule_type` varchar(255) NOT NULL,
  `auto_comment_type` varchar(255) NOT NULL,
  `campaign_start_time` datetime NOT NULL,
  `campaign_end_time` datetime NOT NULL,
  `comment_start_time` time NOT NULL,
  `comment_end_time` time NOT NULL,
  `auto_private_reply_status` enum('0','1','2') NOT NULL DEFAULT '0',
  `auto_reply_done_info` longtext NOT NULL,
  `periodic_serial_reply_count` int(11) NOT NULL,
  `error_message` mediumtext NOT NULL,
  `post_description` longtext NOT NULL,
  `post_thumb` text NOT NULL,
  `deleted` enum('0','1') NOT NULL,
  `social_media_type` enum('Facebook','Instagram') NOT NULL DEFAULT 'Facebook',
  `insta_media_url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auto_comment_template_id` (`auto_comment_template_id`),
  KEY `auto_private_reply_status` (`auto_private_reply_status`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_comment_reply_info`
--

LOCK TABLES `auto_comment_reply_info` WRITE;
/*!40000 ALTER TABLE `auto_comment_reply_info` DISABLE KEYS */;
INSERT INTO `auto_comment_reply_info` VALUES
(1,1,5,'Africa/Cairo','0000-00-00 00:00:00','GAXA Demo','105940371572898_157928616374073',19,'Gaxa','2021-06-12 16:40:53.000000','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'1440','periodic','random','2021-06-15 19:23:16','2021-06-30 19:23:11','00:00:00','23:59:00','1','',0,'','\'الاعلان دا ليك انت..عشان توفر وقت و مجهود و كمان عماله وتكاليف.\\n\\nمع جاكسا صفحتك او صفحات العملاء الخاصين بك هتبقا مختلفه و إدارتها و الرد على عملاءها بقا 24 ساعه بكل سهوله و كمان توفير فالعموله\\n\\nو دا لأن الخدمات الى بيقدمها البرنامج كالاتى:\\n\\n 1️⃣ الFacebook Posting و دا بيتضمن \\n- النشر التلقائي لـ RSS\\n- جدولة / النشر الفوري على جميع صفحات Facebook الخاصة بك بنقرة واحدة.\\n- القدرة على إعادة النشر الدوري\\n- تفعيل حملة الرد التلقائي على التعليق بالبريد.\\n- التقرير الكامل للنشر\\n2️⃣ الFacebook Comment BOT Tools والى بيتضمن : \\n-رد خاص تلقائي لنشر التعليق.\\n- رد خاص تلقائي برسالة تحتوى(صورة ، فيديو ، أزرار ، رد سريع ، رد عام)\\n- الرد التلقائي على التعليق\\n-الرد التلقائي للتعليق على التعليق.\\n-الإعجاب التلقائي بالتعليق\\n- تخصيص الي للرد الخاص التلقائي ونص الرد على التعليق.\\n- تصفية خيار الرد الخاص التلقائي المستند إلى الكلمات والرد على التعليق.\\n- التقرير الكامل للرد الخاص التلقائي والرد على التعليقات.\\n3️⃣ال Auto Comment Tools ودا بقا بيحتوى على:\\n-تعليق تلقائي على مشاركة الصفحة كصفحة لمرة واحدة والتعليق الدوري\\n- التعليق الدوري التسلسلي والعشوائي\\n-تعليق الرموز التعبيرية و spintax\\n- اختر الوقت والتاريخ الفاصل الزمني للتعليق\\n- زيادة مشاركة الصفحة\\n4️⃣ال Social Media Posting عشان نوقر عليك الوقت و المجهود:\\n-الضغط لمشاركة مجمعة على 8 وسائل التواصل الاجتماعي\\nFacebook و Twitter و LinkedIn و Reddit و Blogger و WordPress و Medium\\n- جدولة الحملة\\n- مخطط النشر المجمع من ملف CSV\\n5️⃣ ال  Messenger BOT والى معاه صفحتك هتبقا شغاله 24 ساعه:\\n-الرد بنص ، ملف ، صورة ، صوت ، فيديو ، GIF ردعام ، ردود دائري ، رد وسائط\\n- الرد ب أزرار النشر ، وأزرار الرد السريع\\n-الرد بزر URL ورقم الهاتف وعرض الويب وتاريخ ميلاد المستخدم\\n-الرد بزر الرد السريع للبريد الإلكتروني للمستخدم ورقم الهاتف\\n-رد مخصص بالاسم الأول واسم العائلة\\n-مزامنة العملاء المتوقعين الحاليين وترحيلهم كمشتركين في BOT\\n-ملف تعريف المشترك مع الجنس والمنطقة الزمنية والإعدادات المحلية\\n-اضافه تأخير مخصص في كل رد\\n- جمع رقم الهاتف و الرد السريع\\n-تنزيل البريد الإلكتروني ورقم الهاتف تامسجل للعميل بتنسيق CSV\\n 6️⃣ اما بقا بالنسبه ل ال E-commerce Store inside/outside Messenger\\n-تطبيق جوال \\n-متاجر متعددة\\n-قائمة QR بدون تلامس\\n-ادارة المنتج\\n-فئة وإدارة السماتCategories \\n-التسليم ، الدفع اليدوي / المصرفي\\n-إدارة الطلبات (الشحن والتسليم والرفض وقبول الطلب)\\n-إيصال تأكيد الطلب في Messenger والبريد الإلكتروني والرسائل القصيرة\\n -طباعة الإيصالات باستخدام طابعة حرارية   \\n- تكامل سهل ومرن مع Messenger Bot\\n ✅✅ مش بس كدا دا لسه ف خصائص تانيه كتييييير ✅✅\\n- ال Instagram Posting Tools\\n-ال Instagram Comment Bot Tools\\n-ال SMS Marketing \\n-ال Email Marketing \\n-ال Comparison & Search Marketing\\n\\nكده الإعلان خلص بس خدمات جاكسا لسه مخلصتش ادخل على الرابط التالى و جرب بنفسك مجانا\\nhttps://gaxa-bot.com/\\n\\n#GAXA_BOT\\n#socialmediamarketingtools\'','','0','Facebook','');
/*!40000 ALTER TABLE `auto_comment_reply_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_comment_reply_tb`
--

DROP TABLE IF EXISTS `auto_comment_reply_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_comment_reply_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `auto_reply_comment_text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_comment_reply_tb`
--

LOCK TABLES `auto_comment_reply_tb` WRITE;
/*!40000 ALTER TABLE `auto_comment_reply_tb` DISABLE KEYS */;
INSERT INTO `auto_comment_reply_tb` VALUES
(1,1,'Our Delivered projects -Wesouria','[\"One Of Our Delivered Project \\r\\n\\r\\nhttps:\\/\\/www.wesouria.com\\/\"]'),
(2,1,'Our Delivered projects- Learn Accademy','[\"One Of Our Delivered Project \\r\\n\\r\\nhttps:\\/\\/www.onlinekitchenacademy.com\\/\"]'),
(3,1,'Our Delivered projects-Eventrix','[\"One Of Our Delivered Project \\r\\n\\r\\nhttps:\\/\\/eventrex.net\\/\"]'),
(4,1,'Our Delivered projects-GAXA','[\"One Of Our Delivered Project \\r\\n\\r\\nhttps:\\/\\/gaxa-bot.com\\/\\r\\n\"]'),
(5,1,'Try Fee GAXA Demo','[\"\\u0633\\u062c\\u0644 \\u0627\\u0644\\u0627\\u0646 | \\u0644\\u0644\\u0646\\u0633\\u062e\\u0647 \\u0627\\u0644\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0647\\r\\nhttps:\\/\\/gaxa-bot.com\\/home\\/sign_up\\r\\n\"]'),
(6,39,'moh','[\"ls\"]');
/*!40000 ALTER TABLE `auto_comment_reply_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoposting`
--

DROP TABLE IF EXISTS `autoposting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoposting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `feed_name` varchar(100) NOT NULL,
  `feed_type` enum('rss','youtube','twitter','wordpress') NOT NULL DEFAULT 'rss',
  `feed_url` text NOT NULL,
  `youtube_channel_id` varchar(50) NOT NULL,
  `youtube_api_called_at` datetime DEFAULT NULL,
  `wordpress_blog_url` text DEFAULT NULL,
  `page_ids` text NOT NULL COMMENT 'auto ids',
  `page_names` text NOT NULL COMMENT 'page names',
  `facebook_rx_fb_user_info_ids` text NOT NULL COMMENT 'page id => fb rx user id json',
  `twitter_accounts` text NOT NULL,
  `linkedin_accounts` text NOT NULL,
  `reddit_accounts` text NOT NULL,
  `subreddits` text NOT NULL,
  `posting_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `posting_start_time` varchar(25) NOT NULL,
  `posting_end_time` varchar(25) NOT NULL,
  `posting_timezone` varchar(75) NOT NULL,
  `page_id` int(11) NOT NULL COMMENT 'broadcast',
  `fb_page_id` varchar(75) NOT NULL COMMENT 'broadcast',
  `page_name` text NOT NULL COMMENT 'broadcast',
  `label_ids` text NOT NULL COMMENT 'broadcast',
  `excluded_label_ids` text NOT NULL COMMENT 'broadcast',
  `broadcast_start_time` varchar(50) NOT NULL,
  `broadcast_end_time` varchar(50) NOT NULL,
  `broadcast_timezone` varchar(50) NOT NULL,
  `broadcast_notification_type` varchar(100) NOT NULL DEFAULT 'REGULAR',
  `broadcast_display_unsubscribe` enum('0','1') NOT NULL DEFAULT '0',
  `last_pub_date` datetime NOT NULL,
  `last_pub_title` text NOT NULL,
  `last_pub_url` text NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT 'pending, processing, abandoned',
  `last_updated_at` datetime NOT NULL,
  `cron_status` enum('0','1') NOT NULL DEFAULT '0',
  `error_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`,`cron_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--