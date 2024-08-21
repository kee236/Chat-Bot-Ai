CREATE TABLE IF NOT EXISTS `add_ons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_on_name` varchar(255) NOT NULL,
  `unique_name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `installed_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `module_folder_name` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`unique_name`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `add_ons` VALUES
(1,'Facebook Poster','ultrapost','1.0','0000-00-00 00:00:00','0000-00-00 00:00:00','','ultrapost',19),
(2,'Affiliate Manager','affiliate_system','1.1','2021-03-22 19:54:10','0000-00-00 00:00:00','r0306211058160156058d','affiliate_system',57),
(3,'Facebook Group Poster','facebook_group_poster','1.0','2021-03-23 01:05:53','0000-00-00 00:00:00','r03062185445456605922','facebook_group_poster',32),
(4,'Whatsapp Order Send','whatsapp_order_send','1.1','2021-07-27 01:19:13','0000-00-00 00:00:00','r0306292628833360ff42','whatsapp_order_send',58),
(5,'E-commerce Related Products','ecommerce_related_products','1.0','2021-07-27 01:23:04','0000-00-00 00:00:00','r03062123194079260ff4','ecommerce_related_products',61);

/*!40000 ALTER TABLE `add_ons` ENABLE KEYS */;
UNLOCK TABLES;