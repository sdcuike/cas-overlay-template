CREATE TABLE `RegisteredServiceImpl` (
  `expression_type` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'ant',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_strategy` blob,
  `attribute_release` blob,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `evaluation_order` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `logout_type` int(11) DEFAULT NULL,
  `logout_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `proxy_policy` blob,
  `required_handlers` blob,
  `public_key` blob,
  `serviceId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `theme` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `username_attr` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8