CREATE TABLE `cas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `passwd` varchar(100) CHARACTER SET latin1 NOT NULL,
  `active` bit(1) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8