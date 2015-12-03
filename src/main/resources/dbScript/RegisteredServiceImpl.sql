CREATE TABLE `RegisteredServiceImpl` (
  `expression_type` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'ant',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_strategy` tinyblob,
  `attribute_release` tinyblob,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `evaluation_order` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `logout_type` int(11) DEFAULT NULL,
  `logout_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `proxy_policy` tinyblob,
  `required_handlers` tinyblob,
  `public_key` tinyblob,
  `serviceId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `theme` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `username_attr` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8