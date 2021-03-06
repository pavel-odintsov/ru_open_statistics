DROP TABLE IF EXISTS `as_list`;
CREATE TABLE `as_list` (
  `id` int(11) NOT NULL,
  `descriptions` varchar(255) DEFAULT NULL COMMENT 'Full as descriptions',
  `country` varchar(45) DEFAULT NULL,
  `date_register` datetime DEFAULT NULL,
  `organization_register` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `domain`;
CREATE TABLE `domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(256) DEFAULT NULL,
  `registrant` varchar(64) DEFAULT NULL,
  `tld` varchar(32) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `register_date_end` datetime DEFAULT NULL,
  `free_date` datetime DEFAULT NULL,
  `delegated` enum('Y','N') DEFAULT NULL,
  `a1` varchar(16) DEFAULT NULL,
  `a2` varchar(16) DEFAULT NULL,
  `a3` varchar(16) DEFAULT NULL,
  `a4` varchar(16) DEFAULT NULL,
  `ns1` varchar(45) DEFAULT NULL,
  `ns2` varchar(45) DEFAULT NULL,
  `ns3` varchar(45) DEFAULT NULL,
  `ns4` varchar(45) DEFAULT NULL,
  `mx1` varchar(70) DEFAULT NULL,
  `mx2` varchar(70) DEFAULT NULL,
  `mx3` varchar(70) DEFAULT NULL,
  `mx4` varchar(70) DEFAULT NULL,
  `txt` varchar(255) DEFAULT NULL,
  `asn1` int(11) DEFAULT NULL,
  `asn2` int(11) DEFAULT NULL,
  `asn3` int(11) DEFAULT NULL,
  `asn4` int(11) DEFAULT NULL,
  `aaaa1` varchar(55) DEFAULT NULL,
  `aaaa2` varchar(55) DEFAULT NULL,
  `aaaa3` varchar(55) DEFAULT NULL,
  `aaaa4` varchar(55) DEFAULT NULL,
  `cname` varchar(55) DEFAULT NULL,
  `nserrors` varchar(100) DEFAULT NULL,
  `load_today` enum('Y','N') DEFAULT 'Y',
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain_name` (`domain_name`(100)),
  KEY `registrant` (`registrant`),
  KEY `deligated` (`delegated`),
  KEY `a_row` (`a1`,`a2`,`a3`,`a4`),
  KEY `ns_row` (`ns1`,`ns2`,`ns3`,`ns4`),
  KEY `mx_row` (`mx1`,`mx2`,`mx3`,`mx4`),
  KEY `asn_row` (`asn1`,`asn2`,`asn3`,`asn4`),
  KEY `load_today` (`load_today`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
