CREATE DATABASE IF NOT EXISTS `eseap`;
CREATE TABLE IF NOT EXISTS `eseap`.`t_user` (
  `id` int(11) NOT NULL,
  `name` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT IGNORE INTO `eseap`.`t_user` VALUES(1, 0xEDDD0000323035313230303030313841);
