CREATE TABLE IF NOT EXISTS `user_input_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_type` varchar(20) NOT NULL,
  `media_type` enum('fb','ig') NOT NULL DEFAULT 'fb',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `custom field` (`user_id`,`reply_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `user_input_custom_fields_assaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` varchar(50) NOT NULL,
  `page_id` varchar(50) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value` text CHARACTER SET utf8mb4 NOT NULL,
  `assaign_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriber_id` (`subscriber_id`,`page_id`,`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `messenger_bot_subscriber_extra_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` varchar(50) NOT NULL,
  `page_id` varchar(50) NOT NULL,
  `input_flow_campaign_id` int(10) NOT NULL,
  `last_question_sent_id` int(10) NOT NULL,
  `last_question_sent_time` datetime NOT NULL,
  `email_quick_reply_button_id` varchar(30) NOT NULL,
  `phone_quick_reply_button_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriber_id` (`subscriber_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
