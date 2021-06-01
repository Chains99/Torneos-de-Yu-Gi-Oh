/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80024
Source Host           : localhost:3306
Source Database       : yugioh_database

Target Server Type    : MYSQL
Target Server Version : 80024
File Encoding         : 65001

Date: 2021-06-01 00:08:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins_partidas_adminpartidas
-- ----------------------------
DROP TABLE IF EXISTS `admins_partidas_adminpartidas`;
CREATE TABLE `admins_partidas_adminpartidas` (
  `user_ptr_id` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `admins_partidas_admi_user_ptr_id_0ca26482_fk_auth_user` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admins_partidas_adminpartidas
-- ----------------------------
INSERT INTO `admins_partidas_adminpartidas` VALUES ('14');
INSERT INTO `admins_partidas_adminpartidas` VALUES ('15');

-- ----------------------------
-- Table structure for admins_partida_adminpartidas
-- ----------------------------
DROP TABLE IF EXISTS `admins_partida_adminpartidas`;
CREATE TABLE `admins_partida_adminpartidas` (
  `user_ptr_id` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `admins_partida_admin_user_ptr_id_5fd43975_fk_auth_user` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admins_partida_adminpartidas
-- ----------------------------

-- ----------------------------
-- Table structure for admins_torneos_admintorneos
-- ----------------------------
DROP TABLE IF EXISTS `admins_torneos_admintorneos`;
CREATE TABLE `admins_torneos_admintorneos` (
  `user_ptr_id` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `admins_torneos_admintorneos_user_ptr_id_4a4c7c9e_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admins_torneos_admintorneos
-- ----------------------------
INSERT INTO `admins_torneos_admintorneos` VALUES ('8');
INSERT INTO `admins_torneos_admintorneos` VALUES ('9');
INSERT INTO `admins_torneos_admintorneos` VALUES ('10');
INSERT INTO `admins_torneos_admintorneos` VALUES ('11');
INSERT INTO `admins_torneos_admintorneos` VALUES ('12');
INSERT INTO `admins_torneos_admintorneos` VALUES ('13');

-- ----------------------------
-- Table structure for arquetipo
-- ----------------------------
DROP TABLE IF EXISTS `arquetipo`;
CREATE TABLE `arquetipo` (
  `IDA` int NOT NULL,
  `NombreA` char(100) NOT NULL,
  `Tier` char(3) DEFAULT NULL,
  PRIMARY KEY (`IDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arquetipo
-- ----------------------------
INSERT INTO `arquetipo` VALUES ('0', 'Mixto', null);
INSERT INTO `arquetipo` VALUES ('1', 'Bujin', '0-1');
INSERT INTO `arquetipo` VALUES ('2', 'Madolche', '0-1');
INSERT INTO `arquetipo` VALUES ('3', 'Geargia', '0-1');
INSERT INTO `arquetipo` VALUES ('4', 'Plants', '0-1');
INSERT INTO `arquetipo` VALUES ('5', 'Spellbook', '0-1');
INSERT INTO `arquetipo` VALUES ('6', 'Fire Fist', '0-1');
INSERT INTO `arquetipo` VALUES ('7', 'Chronomaly', '0-1');
INSERT INTO `arquetipo` VALUES ('8', 'Ligthsworn', '0-1');
INSERT INTO `arquetipo` VALUES ('9', 'Memail', '0-1');
INSERT INTO `arquetipo` VALUES ('10', 'Harpie', '0-1');
INSERT INTO `arquetipo` VALUES ('11', 'Dragon Variants', '0-1');
INSERT INTO `arquetipo` VALUES ('12', 'Chaos Dragon', '0-1');
INSERT INTO `arquetipo` VALUES ('13', 'Noble Knigth', '1');
INSERT INTO `arquetipo` VALUES ('14', 'Cyber Dragon', '1');
INSERT INTO `arquetipo` VALUES ('15', 'Gravekeepers\'s', '1');
INSERT INTO `arquetipo` VALUES ('16', 'Photon', '1');
INSERT INTO `arquetipo` VALUES ('17', 'Ghostrick', '1');
INSERT INTO `arquetipo` VALUES ('18', 'Karakuri', '1');
INSERT INTO `arquetipo` VALUES ('19', 'Hieratic', '1');
INSERT INTO `arquetipo` VALUES ('20', 'Artifact', '1');
INSERT INTO `arquetipo` VALUES ('21', 'Mecha Phantom Beast', '1');
INSERT INTO `arquetipo` VALUES ('22', 'Monarch', '1');
INSERT INTO `arquetipo` VALUES ('23', 'Battlin\'Boxer', '1');
INSERT INTO `arquetipo` VALUES ('24', 'Spirit Deck', '1');
INSERT INTO `arquetipo` VALUES ('25', 'Fire King', '1-2');
INSERT INTO `arquetipo` VALUES ('26', 'Dark World', '1-2');
INSERT INTO `arquetipo` VALUES ('27', 'T.G.', '1-2');
INSERT INTO `arquetipo` VALUES ('28', 'Scrap', '1-2');
INSERT INTO `arquetipo` VALUES ('29', 'Anti-Meta', '1-2');
INSERT INTO `arquetipo` VALUES ('30', 'Infernity', '1-2');
INSERT INTO `arquetipo` VALUES ('31', 'Gladiator Beast', '1-2');
INSERT INTO `arquetipo` VALUES ('32', 'Blackwing', '1-2');
INSERT INTO `arquetipo` VALUES ('33', 'Gadget', '1-2');
INSERT INTO `arquetipo` VALUES ('34', 'Constellar', '1-2');
INSERT INTO `arquetipo` VALUES ('35', 'Agents', '1-2');
INSERT INTO `arquetipo` VALUES ('36', 'Evilswarm', '1-2');
INSERT INTO `arquetipo` VALUES ('37', 'Galaxy', '2');
INSERT INTO `arquetipo` VALUES ('38', 'Zombie', '2');
INSERT INTO `arquetipo` VALUES ('39', 'Hunder', '2');
INSERT INTO `arquetipo` VALUES ('40', 'Six Samurai', '2');
INSERT INTO `arquetipo` VALUES ('41', 'Watt', '2');
INSERT INTO `arquetipo` VALUES ('42', 'Inzektor', '2');
INSERT INTO `arquetipo` VALUES ('43', 'Ancient Gear', '2');
INSERT INTO `arquetipo` VALUES ('44', 'Tanuki', '2');
INSERT INTO `arquetipo` VALUES ('45', 'Heraldic', '2');
INSERT INTO `arquetipo` VALUES ('46', 'Koa\'ki Meiru', '2');
INSERT INTO `arquetipo` VALUES ('47', 'Evolsaur', '2');
INSERT INTO `arquetipo` VALUES ('48', 'Shark', '2');
INSERT INTO `arquetipo` VALUES ('49', 'Laval', '2-3');
INSERT INTO `arquetipo` VALUES ('50', 'Chain Beast', '2-3');
INSERT INTO `arquetipo` VALUES ('51', 'Umbral Horror', '2-3');
INSERT INTO `arquetipo` VALUES ('52', 'Malefic', '2-3');
INSERT INTO `arquetipo` VALUES ('53', 'Archfiend', '2-3');
INSERT INTO `arquetipo` VALUES ('54', 'Frog', '2-3');
INSERT INTO `arquetipo` VALUES ('55', 'HERO Variants', '2-3');
INSERT INTO `arquetipo` VALUES ('56', 'Psychis', '2-3');
INSERT INTO `arquetipo` VALUES ('57', 'Chain Burn', '2-3');
INSERT INTO `arquetipo` VALUES ('58', 'Wind-Up', '2-3');
INSERT INTO `arquetipo` VALUES ('59', 'Gogogo', '2-3');
INSERT INTO `arquetipo` VALUES ('60', 'Gusto', '2-3');
INSERT INTO `arquetipo` VALUES ('61', 'Dragunity', '3');
INSERT INTO `arquetipo` VALUES ('62', 'X-Saber', '3');
INSERT INTO `arquetipo` VALUES ('63', 'Synchron', '3');
INSERT INTO `arquetipo` VALUES ('64', 'Rank Up Magic', '3');
INSERT INTO `arquetipo` VALUES ('65', 'Rock stun', '3');
INSERT INTO `arquetipo` VALUES ('66', 'Hazy Flame', '3');
INSERT INTO `arquetipo` VALUES ('67', 'Traptrix', '3');
INSERT INTO `arquetipo` VALUES ('68', 'Flamvell', '3');
INSERT INTO `arquetipo` VALUES ('69', 'Penguins', '3');
INSERT INTO `arquetipo` VALUES ('70', 'Cyber Dark', '3');
INSERT INTO `arquetipo` VALUES ('71', 'Duston', '3');
INSERT INTO `arquetipo` VALUES ('72', 'Dark Magician', '3');
INSERT INTO `arquetipo` VALUES ('73', 'Thunder', '3-4');
INSERT INTO `arquetipo` VALUES ('74', 'Number C', '3-4');
INSERT INTO `arquetipo` VALUES ('75', 'Junk Doppel', '3-4');
INSERT INTO `arquetipo` VALUES ('76', 'Naturia', '3-4');
INSERT INTO `arquetipo` VALUES ('77', 'Wom', '3-4');
INSERT INTO `arquetipo` VALUES ('78', 'Vampire', '3-4');
INSERT INTO `arquetipo` VALUES ('79', 'Number', '3-4');
INSERT INTO `arquetipo` VALUES ('80', 'Ice Barrier', '3-4');
INSERT INTO `arquetipo` VALUES ('81', 'Gimmick Puppet', '3-4');
INSERT INTO `arquetipo` VALUES ('82', 'Crystal Beast', '3-4');
INSERT INTO `arquetipo` VALUES ('83', 'Ninja', '3-4');
INSERT INTO `arquetipo` VALUES ('84', 'Gagaga', '3-4');
INSERT INTO `arquetipo` VALUES ('85', 'Utopia', '4');
INSERT INTO `arquetipo` VALUES ('86', 'Shinra', '4');
INSERT INTO `arquetipo` VALUES ('87', 'Dododo', '4');
INSERT INTO `arquetipo` VALUES ('88', 'Nordic', '4');
INSERT INTO `arquetipo` VALUES ('89', 'Jurrac', '4');
INSERT INTO `arquetipo` VALUES ('90', 'Fabled', '4');
INSERT INTO `arquetipo` VALUES ('91', 'Volcanic', '4');
INSERT INTO `arquetipo` VALUES ('92', 'Mist Valley', '4');
INSERT INTO `arquetipo` VALUES ('93', 'Morphotronic', '4');
INSERT INTO `arquetipo` VALUES ('94', 'Alien', '4');
INSERT INTO `arquetipo` VALUES ('95', 'Fortune Lady', '4');
INSERT INTO `arquetipo` VALUES ('96', 'Gem-Knight', '4');
INSERT INTO `arquetipo` VALUES ('97', 'Exodia', '4-5');
INSERT INTO `arquetipo` VALUES ('98', 'Battery man', '4-5');
INSERT INTO `arquetipo` VALUES ('99', 'Spider', '4-5');
INSERT INTO `arquetipo` VALUES ('100', 'Roid', '4-5');
INSERT INTO `arquetipo` VALUES ('101', 'Nimble', '4-5');
INSERT INTO `arquetipo` VALUES ('102', 'Cloudian', '4-5');
INSERT INTO `arquetipo` VALUES ('103', 'Dark Scorpion', '4-5');
INSERT INTO `arquetipo` VALUES ('104', 'ZW-', '4-5');
INSERT INTO `arquetipo` VALUES ('105', 'Iron Chain', '4-5');
INSERT INTO `arquetipo` VALUES ('106', 'Bounzer', '4-5');
INSERT INTO `arquetipo` VALUES ('107', 'Guardian', '4-5');
INSERT INTO `arquetipo` VALUES ('108', 'Inmato', '4-5');
INSERT INTO `arquetipo` VALUES ('109', 'Vylon', '5');
INSERT INTO `arquetipo` VALUES ('110', 'Fortune Fairy', '5');
INSERT INTO `arquetipo` VALUES ('111', 'Majestic', '5');
INSERT INTO `arquetipo` VALUES ('112', 'Resonator', '5');
INSERT INTO `arquetipo` VALUES ('113', 'Neos', '5');
INSERT INTO `arquetipo` VALUES ('114', 'Earthbound Immortal', '5');
INSERT INTO `arquetipo` VALUES ('115', 'Gishki', '5');
INSERT INTO `arquetipo` VALUES ('116', 'Ojama', '5');
INSERT INTO `arquetipo` VALUES ('117', 'Yubel', '5');
INSERT INTO `arquetipo` VALUES ('118', 'Ally of Justice', '5');
INSERT INTO `arquetipo` VALUES ('119', 'Reptilianne', '5');
INSERT INTO `arquetipo` VALUES ('120', 'Vehicroid', '5');
INSERT INTO `arquetipo` VALUES ('121', 'Venom', '5-6');
INSERT INTO `arquetipo` VALUES ('122', 'Amazoness', '5-6');
INSERT INTO `arquetipo` VALUES ('123', 'Malicevorous', '5-6');
INSERT INTO `arquetipo` VALUES ('124', 'Horus the Black Flame', '5-6');
INSERT INTO `arquetipo` VALUES ('125', 'Arcana Force', '5-6');
INSERT INTO `arquetipo` VALUES ('126', 'Nitro', '5-6');
INSERT INTO `arquetipo` VALUES ('127', 'Slime', '5-6');
INSERT INTO `arquetipo` VALUES ('128', 'Toon', '5-6');
INSERT INTO `arquetipo` VALUES ('129', 'Genex', '5-6');
INSERT INTO `arquetipo` VALUES ('130', 'Djin', '5-6');
INSERT INTO `arquetipo` VALUES ('131', 'Fossil', '5-6');
INSERT INTO `arquetipo` VALUES ('132', 'Granel', '5-6');
INSERT INTO `arquetipo` VALUES ('133', 'Koala', '6');
INSERT INTO `arquetipo` VALUES ('134', 'Meklord', '6');
INSERT INTO `arquetipo` VALUES ('135', 'Symphonic Warrior', '6');
INSERT INTO `arquetipo` VALUES ('136', 'Toy', '6');
INSERT INTO `arquetipo` VALUES ('137', 'Wisel', '6');
INSERT INTO `arquetipo` VALUES ('138', 'Yomi', '6');
INSERT INTO `arquetipo` VALUES ('139', 'Satelaknights', '6');
INSERT INTO `arquetipo` VALUES ('140', 'Ryuusei', '6');
INSERT INTO `arquetipo` VALUES ('141', 'Allure Queen', '6');
INSERT INTO `arquetipo` VALUES ('142', 'Assassin', '6');
INSERT INTO `arquetipo` VALUES ('143', 'B.E.S', '6');
INSERT INTO `arquetipo` VALUES ('144', 'Bamboo Sword', '6');
INSERT INTO `arquetipo` VALUES ('145', 'Butterfly', '6-7');
INSERT INTO `arquetipo` VALUES ('146', 'Butterspy', '6-7');
INSERT INTO `arquetipo` VALUES ('147', 'Cat', '6-7');
INSERT INTO `arquetipo` VALUES ('148', 'Chrysalis', '6-7');
INSERT INTO `arquetipo` VALUES ('149', 'Clear', '6-7');
INSERT INTO `arquetipo` VALUES ('150', 'Comics Hero', '6-7');
INSERT INTO `arquetipo` VALUES ('151', 'Cyber Angel', '6-7');
INSERT INTO `arquetipo` VALUES ('152', 'Elf', '6-7');
INSERT INTO `arquetipo` VALUES ('153', 'Ivy', '6-7');
INSERT INTO `arquetipo` VALUES ('154', 'Jester', '6-7');
INSERT INTO `arquetipo` VALUES ('155', 'Junk Robot', '6-7');
INSERT INTO `arquetipo` VALUES ('156', 'Landstar', '6-7');
INSERT INTO `arquetipo` VALUES ('157', 'Magnet', '7');
INSERT INTO `arquetipo` VALUES ('158', 'Motor', '7');
INSERT INTO `arquetipo` VALUES ('159', 'Reactor', '7');
INSERT INTO `arquetipo` VALUES ('160', 'R-Genex', '7');
INSERT INTO `arquetipo` VALUES ('161', 'Skiel', '7');
INSERT INTO `arquetipo` VALUES ('162', 'Sphere', '7');
INSERT INTO `arquetipo` VALUES ('163', 'Sphinx', '7');
INSERT INTO `arquetipo` VALUES ('164', 'Spirit Message', '7');
INSERT INTO `arquetipo` VALUES ('165', 'Star Seraph', '7');
INSERT INTO `arquetipo` VALUES ('166', 'Timelord', '7');
INSERT INTO `arquetipo` VALUES ('167', 'Valkyrie', '7');
INSERT INTO `arquetipo` VALUES ('168', 'Clown Control', '7');
INSERT INTO `arquetipo` VALUES ('169', '2', null);
INSERT INTO `arquetipo` VALUES ('170', '3', null);
INSERT INTO `arquetipo` VALUES ('171', '20', null);
INSERT INTO `arquetipo` VALUES ('172', '', null);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add torneo', '7', 'add_torneo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change torneo', '7', 'change_torneo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete torneo', '7', 'delete_torneo');
INSERT INTO `auth_permission` VALUES ('28', 'Can view torneo', '7', 'view_torneo');
INSERT INTO `auth_permission` VALUES ('29', 'Can add jugador', '8', 'add_jugador');
INSERT INTO `auth_permission` VALUES ('30', 'Can change jugador', '8', 'change_jugador');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete jugador', '8', 'delete_jugador');
INSERT INTO `auth_permission` VALUES ('32', 'Can view jugador', '8', 'view_jugador');
INSERT INTO `auth_permission` VALUES ('33', 'Can add municipio', '9', 'add_municipio');
INSERT INTO `auth_permission` VALUES ('34', 'Can change municipio', '9', 'change_municipio');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete municipio', '9', 'delete_municipio');
INSERT INTO `auth_permission` VALUES ('36', 'Can view municipio', '9', 'view_municipio');
INSERT INTO `auth_permission` VALUES ('37', 'Can add provincia', '10', 'add_provincia');
INSERT INTO `auth_permission` VALUES ('38', 'Can change provincia', '10', 'change_provincia');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete provincia', '10', 'delete_provincia');
INSERT INTO `auth_permission` VALUES ('40', 'Can view provincia', '10', 'view_provincia');
INSERT INTO `auth_permission` VALUES ('41', 'Can add user', '11', 'add_jugadoruser');
INSERT INTO `auth_permission` VALUES ('42', 'Can change user', '11', 'change_jugadoruser');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete user', '11', 'delete_jugadoruser');
INSERT INTO `auth_permission` VALUES ('44', 'Can view user', '11', 'view_jugadoruser');
INSERT INTO `auth_permission` VALUES ('45', 'Can add auth user', '12', 'add_authuser');
INSERT INTO `auth_permission` VALUES ('46', 'Can change auth user', '12', 'change_authuser');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete auth user', '12', 'delete_authuser');
INSERT INTO `auth_permission` VALUES ('48', 'Can view auth user', '12', 'view_authuser');
INSERT INTO `auth_permission` VALUES ('49', 'Can add user', '13', 'add_admintorneos');
INSERT INTO `auth_permission` VALUES ('50', 'Can change user', '13', 'change_admintorneos');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete user', '13', 'delete_admintorneos');
INSERT INTO `auth_permission` VALUES ('52', 'Can view user', '13', 'view_admintorneos');
INSERT INTO `auth_permission` VALUES ('53', 'Can add user', '14', 'add_adminpartidas');
INSERT INTO `auth_permission` VALUES ('54', 'Can change user', '14', 'change_adminpartidas');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete user', '14', 'delete_adminpartidas');
INSERT INTO `auth_permission` VALUES ('56', 'Can view user', '14', 'view_adminpartidas');
INSERT INTO `auth_permission` VALUES ('57', 'Can add arquetipo', '15', 'add_arquetipo');
INSERT INTO `auth_permission` VALUES ('58', 'Can change arquetipo', '15', 'change_arquetipo');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete arquetipo', '15', 'delete_arquetipo');
INSERT INTO `auth_permission` VALUES ('60', 'Can view arquetipo', '15', 'view_arquetipo');
INSERT INTO `auth_permission` VALUES ('61', 'Can add deck', '16', 'add_deck');
INSERT INTO `auth_permission` VALUES ('62', 'Can change deck', '16', 'change_deck');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete deck', '16', 'delete_deck');
INSERT INTO `auth_permission` VALUES ('64', 'Can view deck', '16', 'view_deck');
INSERT INTO `auth_permission` VALUES ('65', 'Can add participa', '17', 'add_participa');
INSERT INTO `auth_permission` VALUES ('66', 'Can change participa', '17', 'change_participa');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete participa', '17', 'delete_participa');
INSERT INTO `auth_permission` VALUES ('68', 'Can view participa', '17', 'view_participa');
INSERT INTO `auth_permission` VALUES ('69', 'Can add participante', '18', 'add_participante');
INSERT INTO `auth_permission` VALUES ('70', 'Can change participante', '18', 'change_participante');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete participante', '18', 'delete_participante');
INSERT INTO `auth_permission` VALUES ('72', 'Can view participante', '18', 'view_participante');
INSERT INTO `auth_permission` VALUES ('73', 'Can add partida', '19', 'add_partida');
INSERT INTO `auth_permission` VALUES ('74', 'Can change partida', '19', 'change_partida');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete partida', '19', 'delete_partida');
INSERT INTO `auth_permission` VALUES ('76', 'Can view partida', '19', 'view_partida');
INSERT INTO `auth_permission` VALUES ('77', 'Can add user', '20', 'add_adminpartidas');
INSERT INTO `auth_permission` VALUES ('78', 'Can change user', '20', 'change_adminpartidas');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete user', '20', 'delete_adminpartidas');
INSERT INTO `auth_permission` VALUES ('80', 'Can view user', '20', 'view_adminpartidas');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$260000$Hf8aM4fueCI6vRrnCzmpyQ$FJwLY7RgRE41/eIluaw2qjVQ+tS5TZuDkzwV8wkpjl8=', '2021-06-01 02:24:58.441752', '1', 'cts-crypto', '', '', 'carlos.toledo@estudiantes.matcom.uh.cu', '1', '1', '2021-05-27 09:47:01.583589');
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$260000$gP15MtyuMXPZFMudBdxcNU$i9xpwQZk8rvCWC6rxvoCP6+B5mMJfoASoejFmCJBkS4=', '2021-05-27 21:24:33.793464', '0', 'luna', '', '', 'luna@gmail.com', '0', '1', '2021-05-27 20:26:09.507385');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$260000$k5MAnFxVYLLKn5wJabdcou$qsxPRFvIzW+QUe8G6KjSMHU2ehI55dGe7ErlxrgTauY=', '2021-05-31 12:14:34.639707', '0', 'alacran', '', '', 'alacran@gmail.com', '0', '1', '2021-05-27 21:11:41.567570');
INSERT INTO `auth_user` VALUES ('5', 'pbkdf2_sha256$260000$KOhs5AWyO3fd25iuZw9JzF$wBmoVkFu9caxE2QWgTY9BiupHxMusrarCH1RPeAWxG0=', null, '0', 'Ariel', '', '', 'usich37@gmail.com', '0', '1', '2021-05-28 04:58:00.750529');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$260000$Vvqkz2aJGeFFDtYaPSMgHj$99UvgCgTP2tIwF8ZqdTFuH11BIcJzocdUGEXpm+bGJs=', '2021-06-01 03:27:20.100117', '0', 'Susy', '', '', 'susy@gmail.com', '0', '1', '2021-05-28 04:58:38.020298');
INSERT INTO `auth_user` VALUES ('7', 'pbkdf2_sha256$260000$3nppNeg5pevDkQobIkzWQA$R1bDouPlPPBnXh0hQTbahbFyTFqb/IuD9+mCs+T2KRA=', '2021-05-28 05:04:37.563863', '0', 'Arielito', '', '', 'usich37@gmail.com', '0', '1', '2021-05-28 05:04:29.090512');
INSERT INTO `auth_user` VALUES ('8', 'pbkdf2_sha256$260000$7UXaDmw3NRZMjgEOtp1oy4$OPpSIgCmmsj2P3YzhzO2RONTEEU51p1J1LiPSwv3ziw=', '2021-05-28 05:21:52.053214', '0', 'mayi', '', '', 'usih37@gmail.com', '0', '1', '2021-05-28 05:21:39.915877');
INSERT INTO `auth_user` VALUES ('9', 'pbkdf2_sha256$260000$x8afQdo5qK5OTI8M43RKZn$EeY1ylvBT2ZwG5KXnwT85igBgD1jw4gD958P6MTag/4=', '2021-05-31 14:37:56.845215', '0', 'juan', '', '', 'mayi@gmail.com', '0', '1', '2021-05-31 14:35:21.278994');
INSERT INTO `auth_user` VALUES ('10', 'pbkdf2_sha256$260000$RGZ0lUeujaOCRZtiYkDbAL$guC8SwyLkzisrEWjDwciReMXfWhAve0hqTomNb4ZylY=', null, '0', 'jose', '', '', 'jose@gmail.com', '0', '1', '2021-05-31 14:48:15.169683');
INSERT INTO `auth_user` VALUES ('11', 'pbkdf2_sha256$260000$xcHB63aSBs8Xhlb9Mxc7VN$vUuTKigb4NbYwAqIDSp+wKAJj+oF4yOtrczB03ukx7E=', '2021-06-01 02:45:40.045658', '0', 'jsoe', '', '', 'jsoe@gmail.com', '0', '1', '2021-05-31 15:01:21.477046');
INSERT INTO `auth_user` VALUES ('12', 'pbkdf2_sha256$260000$XUWcjYb1DjMqke3LfSBtac$xqTfD2QCxT8DfgzcIZoF/3P6mRmRGb6VRJQykWafruw=', '2021-05-31 22:21:47.381752', '0', 'ariam', '', '', 'ariam@vega.com', '0', '1', '2021-05-31 22:21:30.978828');
INSERT INTO `auth_user` VALUES ('13', 'pbkdf2_sha256$260000$1hxi5AoaHdYHm1TUklwpDJ$5oq3eaNZRmvS6err8IQ25QHj6G/kF8agkgmdXM+V8LQ=', '2021-05-31 22:23:48.941507', '0', 'ariel.triana', '', '', 'mayi@gmail.com', '0', '1', '2021-05-31 22:23:34.549052');
INSERT INTO `auth_user` VALUES ('14', 'pbkdf2_sha256$260000$zIp4lzTNDnykrIzMjCXNBQ$8V9mS/T98ASSs6KDryV6d60bTdDRRR3s4f5+T06oPx8=', '2021-05-31 23:46:05.428779', '0', 'pedro', '', '', 'pqr@gmail.com', '0', '1', '2021-05-31 23:45:49.325150');
INSERT INTO `auth_user` VALUES ('15', 'pbkdf2_sha256$260000$4a7CwKjkuKCdDCe4mburer$DZ+x/5wLzNQsijHsLfu/yP9iCFocKAp6T+fAr3kkXVs=', '2021-06-01 03:02:11.267930', '0', 'ariamVega', '', '', 'ariam@vega.com', '0', '1', '2021-06-01 02:32:06.528323');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
INSERT INTO `auth_user_user_permissions` VALUES ('8', '3', '30');
INSERT INTO `auth_user_user_permissions` VALUES ('9', '3', '33');
INSERT INTO `auth_user_user_permissions` VALUES ('10', '3', '37');
INSERT INTO `auth_user_user_permissions` VALUES ('11', '3', '61');
INSERT INTO `auth_user_user_permissions` VALUES ('13', '3', '62');
INSERT INTO `auth_user_user_permissions` VALUES ('14', '3', '63');
INSERT INTO `auth_user_user_permissions` VALUES ('12', '3', '64');
INSERT INTO `auth_user_user_permissions` VALUES ('15', '4', '30');
INSERT INTO `auth_user_user_permissions` VALUES ('16', '4', '33');
INSERT INTO `auth_user_user_permissions` VALUES ('17', '4', '37');
INSERT INTO `auth_user_user_permissions` VALUES ('18', '4', '61');
INSERT INTO `auth_user_user_permissions` VALUES ('20', '4', '62');
INSERT INTO `auth_user_user_permissions` VALUES ('21', '4', '63');
INSERT INTO `auth_user_user_permissions` VALUES ('19', '4', '64');
INSERT INTO `auth_user_user_permissions` VALUES ('22', '5', '30');
INSERT INTO `auth_user_user_permissions` VALUES ('23', '5', '33');
INSERT INTO `auth_user_user_permissions` VALUES ('24', '5', '37');
INSERT INTO `auth_user_user_permissions` VALUES ('25', '5', '61');
INSERT INTO `auth_user_user_permissions` VALUES ('27', '5', '62');
INSERT INTO `auth_user_user_permissions` VALUES ('28', '5', '63');
INSERT INTO `auth_user_user_permissions` VALUES ('26', '5', '64');
INSERT INTO `auth_user_user_permissions` VALUES ('29', '6', '30');
INSERT INTO `auth_user_user_permissions` VALUES ('30', '6', '33');
INSERT INTO `auth_user_user_permissions` VALUES ('31', '6', '37');
INSERT INTO `auth_user_user_permissions` VALUES ('32', '6', '61');
INSERT INTO `auth_user_user_permissions` VALUES ('34', '6', '62');
INSERT INTO `auth_user_user_permissions` VALUES ('35', '6', '63');
INSERT INTO `auth_user_user_permissions` VALUES ('33', '6', '64');
INSERT INTO `auth_user_user_permissions` VALUES ('36', '7', '30');
INSERT INTO `auth_user_user_permissions` VALUES ('37', '7', '33');
INSERT INTO `auth_user_user_permissions` VALUES ('38', '7', '37');
INSERT INTO `auth_user_user_permissions` VALUES ('39', '7', '61');
INSERT INTO `auth_user_user_permissions` VALUES ('41', '7', '62');
INSERT INTO `auth_user_user_permissions` VALUES ('42', '7', '63');
INSERT INTO `auth_user_user_permissions` VALUES ('40', '7', '64');
INSERT INTO `auth_user_user_permissions` VALUES ('43', '8', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('45', '8', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('46', '8', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('44', '8', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('47', '8', '49');
INSERT INTO `auth_user_user_permissions` VALUES ('49', '8', '50');
INSERT INTO `auth_user_user_permissions` VALUES ('50', '8', '51');
INSERT INTO `auth_user_user_permissions` VALUES ('48', '8', '52');
INSERT INTO `auth_user_user_permissions` VALUES ('51', '8', '53');
INSERT INTO `auth_user_user_permissions` VALUES ('53', '8', '54');
INSERT INTO `auth_user_user_permissions` VALUES ('54', '8', '55');
INSERT INTO `auth_user_user_permissions` VALUES ('52', '8', '56');
INSERT INTO `auth_user_user_permissions` VALUES ('55', '9', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('57', '9', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('58', '9', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('56', '9', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('59', '9', '49');
INSERT INTO `auth_user_user_permissions` VALUES ('61', '9', '50');
INSERT INTO `auth_user_user_permissions` VALUES ('62', '9', '51');
INSERT INTO `auth_user_user_permissions` VALUES ('60', '9', '52');
INSERT INTO `auth_user_user_permissions` VALUES ('71', '9', '65');
INSERT INTO `auth_user_user_permissions` VALUES ('73', '9', '66');
INSERT INTO `auth_user_user_permissions` VALUES ('74', '9', '67');
INSERT INTO `auth_user_user_permissions` VALUES ('72', '9', '68');
INSERT INTO `auth_user_user_permissions` VALUES ('67', '9', '69');
INSERT INTO `auth_user_user_permissions` VALUES ('69', '9', '70');
INSERT INTO `auth_user_user_permissions` VALUES ('70', '9', '71');
INSERT INTO `auth_user_user_permissions` VALUES ('68', '9', '72');
INSERT INTO `auth_user_user_permissions` VALUES ('63', '9', '77');
INSERT INTO `auth_user_user_permissions` VALUES ('65', '9', '78');
INSERT INTO `auth_user_user_permissions` VALUES ('66', '9', '79');
INSERT INTO `auth_user_user_permissions` VALUES ('64', '9', '80');
INSERT INTO `auth_user_user_permissions` VALUES ('76', '10', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('78', '10', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('79', '10', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('77', '10', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('80', '10', '49');
INSERT INTO `auth_user_user_permissions` VALUES ('82', '10', '50');
INSERT INTO `auth_user_user_permissions` VALUES ('83', '10', '51');
INSERT INTO `auth_user_user_permissions` VALUES ('81', '10', '52');
INSERT INTO `auth_user_user_permissions` VALUES ('92', '10', '65');
INSERT INTO `auth_user_user_permissions` VALUES ('94', '10', '66');
INSERT INTO `auth_user_user_permissions` VALUES ('95', '10', '67');
INSERT INTO `auth_user_user_permissions` VALUES ('93', '10', '68');
INSERT INTO `auth_user_user_permissions` VALUES ('88', '10', '69');
INSERT INTO `auth_user_user_permissions` VALUES ('90', '10', '70');
INSERT INTO `auth_user_user_permissions` VALUES ('91', '10', '71');
INSERT INTO `auth_user_user_permissions` VALUES ('89', '10', '72');
INSERT INTO `auth_user_user_permissions` VALUES ('84', '10', '77');
INSERT INTO `auth_user_user_permissions` VALUES ('86', '10', '78');
INSERT INTO `auth_user_user_permissions` VALUES ('87', '10', '79');
INSERT INTO `auth_user_user_permissions` VALUES ('85', '10', '80');
INSERT INTO `auth_user_user_permissions` VALUES ('97', '11', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('99', '11', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('100', '11', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('98', '11', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('101', '11', '49');
INSERT INTO `auth_user_user_permissions` VALUES ('103', '11', '50');
INSERT INTO `auth_user_user_permissions` VALUES ('104', '11', '51');
INSERT INTO `auth_user_user_permissions` VALUES ('102', '11', '52');
INSERT INTO `auth_user_user_permissions` VALUES ('113', '11', '65');
INSERT INTO `auth_user_user_permissions` VALUES ('115', '11', '66');
INSERT INTO `auth_user_user_permissions` VALUES ('116', '11', '67');
INSERT INTO `auth_user_user_permissions` VALUES ('114', '11', '68');
INSERT INTO `auth_user_user_permissions` VALUES ('109', '11', '69');
INSERT INTO `auth_user_user_permissions` VALUES ('111', '11', '70');
INSERT INTO `auth_user_user_permissions` VALUES ('112', '11', '71');
INSERT INTO `auth_user_user_permissions` VALUES ('110', '11', '72');
INSERT INTO `auth_user_user_permissions` VALUES ('105', '11', '77');
INSERT INTO `auth_user_user_permissions` VALUES ('107', '11', '78');
INSERT INTO `auth_user_user_permissions` VALUES ('108', '11', '79');
INSERT INTO `auth_user_user_permissions` VALUES ('106', '11', '80');
INSERT INTO `auth_user_user_permissions` VALUES ('118', '12', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('120', '12', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('121', '12', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('119', '12', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('122', '12', '49');
INSERT INTO `auth_user_user_permissions` VALUES ('124', '12', '50');
INSERT INTO `auth_user_user_permissions` VALUES ('125', '12', '51');
INSERT INTO `auth_user_user_permissions` VALUES ('123', '12', '52');
INSERT INTO `auth_user_user_permissions` VALUES ('134', '12', '65');
INSERT INTO `auth_user_user_permissions` VALUES ('136', '12', '66');
INSERT INTO `auth_user_user_permissions` VALUES ('137', '12', '67');
INSERT INTO `auth_user_user_permissions` VALUES ('135', '12', '68');
INSERT INTO `auth_user_user_permissions` VALUES ('130', '12', '69');
INSERT INTO `auth_user_user_permissions` VALUES ('132', '12', '70');
INSERT INTO `auth_user_user_permissions` VALUES ('133', '12', '71');
INSERT INTO `auth_user_user_permissions` VALUES ('131', '12', '72');
INSERT INTO `auth_user_user_permissions` VALUES ('126', '12', '77');
INSERT INTO `auth_user_user_permissions` VALUES ('128', '12', '78');
INSERT INTO `auth_user_user_permissions` VALUES ('129', '12', '79');
INSERT INTO `auth_user_user_permissions` VALUES ('127', '12', '80');
INSERT INTO `auth_user_user_permissions` VALUES ('139', '13', '25');
INSERT INTO `auth_user_user_permissions` VALUES ('141', '13', '26');
INSERT INTO `auth_user_user_permissions` VALUES ('142', '13', '27');
INSERT INTO `auth_user_user_permissions` VALUES ('140', '13', '28');
INSERT INTO `auth_user_user_permissions` VALUES ('143', '13', '49');
INSERT INTO `auth_user_user_permissions` VALUES ('145', '13', '50');
INSERT INTO `auth_user_user_permissions` VALUES ('146', '13', '51');
INSERT INTO `auth_user_user_permissions` VALUES ('144', '13', '52');
INSERT INTO `auth_user_user_permissions` VALUES ('155', '13', '65');
INSERT INTO `auth_user_user_permissions` VALUES ('157', '13', '66');
INSERT INTO `auth_user_user_permissions` VALUES ('158', '13', '67');
INSERT INTO `auth_user_user_permissions` VALUES ('156', '13', '68');
INSERT INTO `auth_user_user_permissions` VALUES ('151', '13', '69');
INSERT INTO `auth_user_user_permissions` VALUES ('153', '13', '70');
INSERT INTO `auth_user_user_permissions` VALUES ('154', '13', '71');
INSERT INTO `auth_user_user_permissions` VALUES ('152', '13', '72');
INSERT INTO `auth_user_user_permissions` VALUES ('147', '13', '77');
INSERT INTO `auth_user_user_permissions` VALUES ('149', '13', '78');
INSERT INTO `auth_user_user_permissions` VALUES ('150', '13', '79');
INSERT INTO `auth_user_user_permissions` VALUES ('148', '13', '80');
INSERT INTO `auth_user_user_permissions` VALUES ('160', '14', '73');
INSERT INTO `auth_user_user_permissions` VALUES ('162', '14', '74');
INSERT INTO `auth_user_user_permissions` VALUES ('163', '14', '75');
INSERT INTO `auth_user_user_permissions` VALUES ('161', '14', '76');
INSERT INTO `auth_user_user_permissions` VALUES ('164', '15', '73');
INSERT INTO `auth_user_user_permissions` VALUES ('166', '15', '74');
INSERT INTO `auth_user_user_permissions` VALUES ('167', '15', '75');
INSERT INTO `auth_user_user_permissions` VALUES ('165', '15', '76');

-- ----------------------------
-- Table structure for deck
-- ----------------------------
DROP TABLE IF EXISTS `deck`;
CREATE TABLE `deck` (
  `IDD` int NOT NULL,
  `NombreD` char(100) NOT NULL,
  `Cantidad_Cartas_Mazo` tinyint NOT NULL,
  `Cantidad_Cartas_Mazo_Alternativo` tinyint NOT NULL,
  `Cantidad_Cartas_Mazo_Extra` tinyint NOT NULL,
  `IDA_Principal` int NOT NULL,
  `IDA_Adicional` int DEFAULT NULL,
  `IDJ` char(150) NOT NULL,
  PRIMARY KEY (`IDD`),
  KEY `deck_ap` (`IDA_Principal`),
  KEY `deck_aa` (`IDA_Adicional`),
  KEY `deck_j` (`IDJ`),
  CONSTRAINT `deck_ibfk_1` FOREIGN KEY (`IDA_Principal`) REFERENCES `arquetipo` (`IDA`),
  CONSTRAINT `deck_ibfk_2` FOREIGN KEY (`IDA_Adicional`) REFERENCES `arquetipo` (`IDA`),
  CONSTRAINT `deck_ibfk_3` FOREIGN KEY (`IDJ`) REFERENCES `jugador` (`IDJ`),
  CONSTRAINT `deck_chk_1` CHECK (((`Cantidad_Cartas_Mazo` >= 40) and (`Cantidad_Cartas_Mazo` <= 60))),
  CONSTRAINT `deck_chk_2` CHECK (((`Cantidad_Cartas_Mazo_Alternativo` >= 0) and (`Cantidad_Cartas_Mazo_Alternativo` <= 15))),
  CONSTRAINT `deck_chk_3` CHECK ((`Cantidad_Cartas_Mazo_Extra` between 0 and 15))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of deck
-- ----------------------------
INSERT INTO `deck` VALUES ('1', 'ASD', '45', '12', '12', '1', '10', 'alacran');
INSERT INTO `deck` VALUES ('2', 'Fatal', '43', '12', '13', '1', '10', 'alacran');
INSERT INTO `deck` VALUES ('3', 'Letal', '60', '12', '13', '1', '10', 'luna');
INSERT INTO `deck` VALUES ('4', 'D-1', '42', '12', '12', '169', '170', 'Susy');
INSERT INTO `deck` VALUES ('5', 'D-2', '50', '12', '12', '171', '170', 'Susy');
INSERT INTO `deck` VALUES ('6', 'Buj', '40', '12', '12', '1', '169', 'Susy');
INSERT INTO `deck` VALUES ('8', 'Solo Mio', '40', '14', '12', '97', '172', 'alacran');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2021-05-27 20:25:33.555304', '2', 'luna', '3', '', '4', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('14', 'admins_partida', 'adminpartidas');
INSERT INTO `django_content_type` VALUES ('20', 'admins_partidas', 'adminpartidas');
INSERT INTO `django_content_type` VALUES ('13', 'admins_torneos', 'admintorneos');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'decks', 'arquetipo');
INSERT INTO `django_content_type` VALUES ('16', 'decks', 'deck');
INSERT INTO `django_content_type` VALUES ('17', 'eventos', 'participa');
INSERT INTO `django_content_type` VALUES ('18', 'eventos', 'participante');
INSERT INTO `django_content_type` VALUES ('19', 'eventos', 'partida');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'torneos', 'torneo');
INSERT INTO `django_content_type` VALUES ('12', 'users', 'authuser');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'jugador');
INSERT INTO `django_content_type` VALUES ('11', 'users', 'jugadoruser');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'municipio');
INSERT INTO `django_content_type` VALUES ('10', 'users', 'provincia');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2021-05-27 09:44:17.851181');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2021-05-27 09:44:48.242814');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2021-05-27 09:45:02.753511');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2021-05-27 09:45:03.222262');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2021-05-27 09:45:03.624030');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2021-05-27 09:45:09.465691');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2021-05-27 09:45:12.784771');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2021-05-27 09:45:13.852176');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2021-05-27 09:45:14.226947');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2021-05-27 09:45:21.537765');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2021-05-27 09:45:21.773628');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2021-05-27 09:45:21.954529');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2021-05-27 09:45:26.245079');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2021-05-27 09:45:29.725081');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2021-05-27 09:45:30.630567');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2021-05-27 09:45:30.855433');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0012_alter_user_first_name_max_length', '2021-05-27 09:45:35.009059');
INSERT INTO `django_migrations` VALUES ('18', 'admins_partida', '0001_initial', '2021-05-27 09:45:43.868991');
INSERT INTO `django_migrations` VALUES ('19', 'admins_torneos', '0001_initial', '2021-05-27 09:45:49.107991');
INSERT INTO `django_migrations` VALUES ('20', 'decks', '0001_initial', '2021-05-27 09:45:49.300882');
INSERT INTO `django_migrations` VALUES ('21', 'users', '0001_initial', '2021-05-27 09:45:54.951650');
INSERT INTO `django_migrations` VALUES ('22', 'users', '0002_auto_20210521_2108', '2021-05-27 09:45:59.728917');
INSERT INTO `django_migrations` VALUES ('23', 'users', '0003_alter_jugador_table', '2021-05-27 09:46:00.038738');
INSERT INTO `django_migrations` VALUES ('24', 'users', '0004_authuser', '2021-05-27 09:46:00.769338');
INSERT INTO `django_migrations` VALUES ('25', 'eventos', '0001_initial', '2021-05-27 09:46:01.034170');
INSERT INTO `django_migrations` VALUES ('26', 'sessions', '0001_initial', '2021-05-27 09:46:05.578791');
INSERT INTO `django_migrations` VALUES ('27', 'torneos', '0001_initial', '2021-05-27 09:46:06.075506');
INSERT INTO `django_migrations` VALUES ('28', 'admins_partidas', '0001_initial', '2021-05-30 20:08:35.305593');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2xlac5mch5jm1hoczfrihxlw0ucqkd9a', '.eJxVjMEOwiAQBf-FsyEsFCgevfcbyAKLVA0kpT0Z_9026UGvb2bem3nc1uK3ToufE7sywy6_W8D4pHqA9MB6bzy2ui5z4IfCT9r51BK9bqf7d1Cwl73WdhSYIDktM5gIKojgBiI9imwi7igi5GAMaSFhUEJHqZ1FAksglGKfL-PyN4g:1lnv3o:RAdHTlgkEcRkAb08PpUeIRknBfyx81sXat7kXzuvQu0', '2021-06-15 03:27:20.105104');
INSERT INTO `django_session` VALUES ('ut40yocern2y0v4odiy1aaa294wgi0o9', '.eJxVjDsOwjAQBe_iGln-xR9Kes5g7dprHEC2FCcV4u4QKQW0b2bei0XY1hq3QUucMzszyU6_G0J6UNtBvkO7dZ56W5cZ-a7wgw5-7Zmel8P9O6gw6rdG1EmJkEuw3gmVQINNxmdTiNAjgk5WGI9KkJGTsEq6jErq4iZJEIC9P_V7OBo:1lnffr:ifOC0YNrRq7I1Ar1ejSCJTPHeSeJt4N08Vr-LwwiG7E', '2021-06-14 11:01:35.098256');
INSERT INTO `django_session` VALUES ('w3rqhnaw7eq0fno2hcg11qnltcz6c3se', '.eJxVjMsOwiAQRf-FtSFDHxRcuvcbyDAzSNVAUtqV8d-1SRe6veec-1IBtzWHrckSZlZn1avT7xaRHlJ2wHcst6qplnWZo94VfdCmr5XleTncv4OMLX9rQzgm6zo2YATFG3RjHIABUvLE1rE1A9je-SSTdILE4CZLvY-RkaJ6fwDwnDi9:1lmNUX:Wk0xDYyB8CVdwfm9q2imX_lSD98mqrtpGX0D1CVKJ7w', '2021-06-10 21:24:33.934386');

-- ----------------------------
-- Table structure for jugador
-- ----------------------------
DROP TABLE IF EXISTS `jugador`;
CREATE TABLE `jugador` (
  `IDJ` char(150) NOT NULL,
  `NombreJ` char(100) NOT NULL,
  `Telefono` char(20) DEFAULT NULL,
  `DireccionJ` char(100) NOT NULL,
  `IDM` int NOT NULL,
  `IDP` int NOT NULL,
  PRIMARY KEY (`IDJ`),
  KEY `jugador_m` (`IDP`,`IDM`),
  CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`IDP`, `IDM`) REFERENCES `municipio` (`IDP`, `IDM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jugador
-- ----------------------------
INSERT INTO `jugador` VALUES ('alacran', 'Aron Diaz', '72341226', 'Tamal #2', '2', '3');
INSERT INTO `jugador` VALUES ('Ariel', 'Ariel Triana', '54289607', 'Conception177', '1', '4');
INSERT INTO `jugador` VALUES ('Arielito', 'Ariel Triana Perez', '54289607', 'Concepcion 177', '1', '4');
INSERT INTO `jugador` VALUES ('luna', 'Luna Rodriguez', '72341226', 'Fomento #2', '1', '3');
INSERT INTO `jugador` VALUES ('Susy', 'Susanny', '55109955', 'Conception177', '1', '4');

-- ----------------------------
-- Table structure for municipio
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `IDP` int NOT NULL,
  `IDM` int NOT NULL,
  `NombreM` char(100) NOT NULL,
  PRIMARY KEY (`IDP`,`IDM`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`IDP`) REFERENCES `provincia` (`IDP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES ('1', '1', 'Bahia Honda');
INSERT INTO `municipio` VALUES ('1', '2', 'Juli');
INSERT INTO `municipio` VALUES ('3', '1', 'Raps');
INSERT INTO `municipio` VALUES ('3', '2', 'polo');
INSERT INTO `municipio` VALUES ('4', '1', '10 10');

-- ----------------------------
-- Table structure for participa
-- ----------------------------
DROP TABLE IF EXISTS `participa`;
CREATE TABLE `participa` (
  `IDT` char(10) NOT NULL,
  `IDR` char(10) NOT NULL,
  `IDJ` char(150) NOT NULL,
  `Triunfa` char(1) NOT NULL,
  PRIMARY KEY (`IDT`,`IDR`,`IDJ`),
  KEY `participa_tj` (`IDT`,`IDJ`),
  CONSTRAINT `participa_ibfk_1` FOREIGN KEY (`IDT`, `IDJ`) REFERENCES `participante` (`IDT`, `IDJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of participa
-- ----------------------------
INSERT INTO `participa` VALUES ('TOR-01', '1', 'alacran', '');
INSERT INTO `participa` VALUES ('TOR-01', '1', 'Susy', '');
INSERT INTO `participa` VALUES ('TOR-01', '2', 'Susy', '');

-- ----------------------------
-- Table structure for participante
-- ----------------------------
DROP TABLE IF EXISTS `participante`;
CREATE TABLE `participante` (
  `IDT` char(10) NOT NULL,
  `IDJ` char(150) NOT NULL,
  `IDD` int NOT NULL,
  `Lugar_Alcanzado` char(25) DEFAULT NULL,
  PRIMARY KEY (`IDT`,`IDJ`),
  KEY `participante_j` (`IDJ`),
  KEY `participante_d` (`IDD`),
  CONSTRAINT `participante_ibfk_1` FOREIGN KEY (`IDJ`) REFERENCES `jugador` (`IDJ`),
  CONSTRAINT `participante_ibfk_2` FOREIGN KEY (`IDT`) REFERENCES `torneo` (`IDT`),
  CONSTRAINT `participante_ibfk_3` FOREIGN KEY (`IDD`) REFERENCES `deck` (`IDD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of participante
-- ----------------------------
INSERT INTO `participante` VALUES ('TOR-01', 'alacran', '2', 'Campeon');
INSERT INTO `participante` VALUES ('TOR-01', 'Susy', '5', '2');
INSERT INTO `participante` VALUES ('TOR-02', 'alacran', '1', null);
INSERT INTO `participante` VALUES ('TOR-03', 'alacran', '1', null);
INSERT INTO `participante` VALUES ('TOR-03', 'Susy', '6', null);

-- ----------------------------
-- Table structure for partida
-- ----------------------------
DROP TABLE IF EXISTS `partida`;
CREATE TABLE `partida` (
  `IDT` char(10) NOT NULL,
  `IDR` char(10) NOT NULL,
  `IDP` char(10) NOT NULL,
  `IDJ1` char(150) NOT NULL,
  `IDJ2` char(150) NOT NULL,
  `Resultado` char(3) DEFAULT NULL,
  `Fecha_Hora_de_InicioP` datetime DEFAULT NULL,
  `Fecha_Hora_de_FinalizacionP` datetime DEFAULT NULL,
  PRIMARY KEY (`IDT`,`IDR`,`IDP`),
  KEY `partida_trj1` (`IDT`,`IDR`,`IDJ1`),
  KEY `partida_trj2` (`IDT`,`IDR`,`IDJ2`),
  CONSTRAINT `partida_ibfk_1` FOREIGN KEY (`IDT`, `IDR`, `IDJ1`) REFERENCES `participa` (`IDT`, `IDR`, `IDJ`),
  CONSTRAINT `partida_ibfk_2` FOREIGN KEY (`IDT`, `IDR`, `IDJ2`) REFERENCES `participa` (`IDT`, `IDR`, `IDJ`),
  CONSTRAINT `partida_chk_1` CHECK ((`Fecha_Hora_de_FinalizacionP` >= `Fecha_Hora_de_InicioP`)),
  CONSTRAINT `partida_chk_2` CHECK (((`Resultado` = _utf8mb4'2-0') or (`Resultado` = _utf8mb4'2-1') or (`Resultado` = _utf8mb4'1-2') or (`Resultado` = _utf8mb4'0-2')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of partida
-- ----------------------------
INSERT INTO `partida` VALUES ('TOR-01', '1', '1', 'alacran', 'susy', '0-2', '2021-05-21 12:23:00', '2021-05-21 13:40:00');

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `IDP` int NOT NULL,
  `NombreP` char(100) NOT NULL,
  PRIMARY KEY (`IDP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO `provincia` VALUES ('1', 'Artemisa');
INSERT INTO `provincia` VALUES ('2', 'Mayabeque');
INSERT INTO `provincia` VALUES ('3', 'La Habana');
INSERT INTO `provincia` VALUES ('4', 'La Hab');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `IDA` int NOT NULL,
  `Cantidad_de_Torneos` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('1', '1');

-- ----------------------------
-- Table structure for torneo
-- ----------------------------
DROP TABLE IF EXISTS `torneo`;
CREATE TABLE `torneo` (
  `IDT` char(10) NOT NULL,
  `NombreT` char(100) NOT NULL,
  `DireccionT` char(100) NOT NULL,
  `Fecha_Hora_de_InicioT` datetime NOT NULL,
  PRIMARY KEY (`IDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of torneo
-- ----------------------------
INSERT INTO `torneo` VALUES ('TOR-01', 'FACULTAD', 'MATCOM', '2021-04-23 12:30:00');
INSERT INTO `torneo` VALUES ('TOR-02', 'FACULTAD', 'MATCOM', '2021-06-23 12:40:00');
INSERT INTO `torneo` VALUES ('TOR-03', 'UNIVERSIDAD', 'UH', '2021-07-24 12:40:00');

-- ----------------------------
-- Table structure for users_jugador
-- ----------------------------
DROP TABLE IF EXISTS `users_jugador`;
CREATE TABLE `users_jugador` (
  `user_ptr_id` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `users_jugador_user_ptr_id_0b79bc0e_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_jugador
-- ----------------------------

-- ----------------------------
-- Table structure for users_jugadoruser
-- ----------------------------
DROP TABLE IF EXISTS `users_jugadoruser`;
CREATE TABLE `users_jugadoruser` (
  `user_ptr_id` int NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  CONSTRAINT `users_jugadoruser_user_ptr_id_9e569706_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_jugadoruser
-- ----------------------------
INSERT INTO `users_jugadoruser` VALUES ('3');
INSERT INTO `users_jugadoruser` VALUES ('4');
INSERT INTO `users_jugadoruser` VALUES ('5');
INSERT INTO `users_jugadoruser` VALUES ('6');
INSERT INTO `users_jugadoruser` VALUES ('7');

-- ----------------------------
-- View structure for torneo_arquetipo
-- ----------------------------
DROP VIEW IF EXISTS `torneo_arquetipo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `torneo_arquetipo` AS select distinct `participante`.`IDT` AS `IDT`,`deck`.`IDA_Principal` AS `IDA_Principal` from (`participante` join `deck` on((`participante`.`IDD` = `deck`.`IDD`))) ;

-- ----------------------------
-- Procedure structure for ArquetipoMasRepresentado
-- ----------------------------
DROP PROCEDURE IF EXISTS `ArquetipoMasRepresentado`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ArquetipoMasRepresentado`(IN torneo_entrada CHAR(4), IN ronda_entrada CHAR(4))
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDT CHAR(4);
DECLARE var_IDJ1 CHAR(4);
DECLARE var_IDJ2 CHAR(4);

DECLARE partida_cursor CURSOR
FOR SELECT IDT,IDJ1,IDJ2
FROM partida
WHERE IDT=torneo_entrada AND IDR=ronda_entrada;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish=1;

DROP TABLE IF EXISTS result;
CREATE TABLE result
(
    IDT CHAR(4) NOT NULL,
    IDJ CHAR(4) NOT NULL
);

OPEN partida_cursor;

p_loop: LOOP
     FETCH partida_cursor INTO var_IDT, var_IDJ1, var_IDJ2;
     IF finish=1 THEN
         LEAVE p_loop;
     ELSE
         INSERT INTO result(IDT,IDJ) VALUES(var_IDT,var_IDJ1), (var_IDT,var_IDJ2);
     END IF;
END LOOP p_loop;

CLOSE partida_cursor;

DROP VIEW IF EXISTS jugadores_ronda;
CREATE VIEW jugadores_ronda(IDJ,IDA)
AS SELECT DISTINCT participante.IDJ,IDA_Principal
FROM (result JOIN participante ON result.IDT=participante.IDT AND result.IDJ=participante.IDJ) JOIN deck ON deck.IDD=participante.IDD;

DROP VIEW IF EXISTS contador_arquetipos;
CREATE VIEW contador_arquetipos(IDA, Cantidad_de_jugadores)
AS SELECT IDA,COUNT(*)
FROM jugadores_ronda
GROUP BY IDA;

DROP VIEW IF EXISTS maximo;
CREATE VIEW maximo(Cantidad_de_jugadores)
AS SELECT MAX(Cantidad_de_jugadores)
FROM contador_arquetipos;

SELECT IDA,NombreA,Cantidad_de_jugadores
FROM (contador_arquetipos NATURAL JOIN maximo) NATURAL JOIN arquetipo;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ArquetipoMasUsadoTorneo
-- ----------------------------
DROP PROCEDURE IF EXISTS `ArquetipoMasUsadoTorneo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ArquetipoMasUsadoTorneo`(IN torneo_entrada CHAR(4))
BEGIN

SELECT IDA,NombreA,MAX(contador)as CantidadDeJugadores
FROM (SELECT IDA_Principal,COUNT(*) as contador
      FROM participante JOIN deck on participante.IDD=deck.IDD
      WHERE IDT=torneo_entrada
      GROUP BY IDA_Principal
      ORDER BY contador DESC) deck_torneo JOIN arquetipo ON deck_torneo.IDA_Principal=arquetipo.IDA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ArquetiposMasPopulares
-- ----------------------------
DROP PROCEDURE IF EXISTS `ArquetiposMasPopulares`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ArquetiposMasPopulares`(IN n int)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE done INT DEFAULT 0;
DECLARE var_IDA INT;
DECLARE var_Cantidad_Jugadores INT;

DECLARE deck_cursor CURSOR FOR
SELECT IDA_Principal,COUNT(DISTINCT IDJ) AS Cantidad_Jugadores
FROM deck
GROUP BY IDA_Principal
ORDER BY Cantidad_Jugadores DESC;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP TABLE IF EXISTS result;
CREATE TABLE IF NOT EXISTS result
	(
    IDA INT NOT NULL,
		Cantidad_Jugadores INT
	);

OPEN deck_cursor;

p_loop: LOOP	
     FETCH deck_cursor INTO var_IDA, var_Cantidad_Jugadores;
		IF done=n or finish THEN
			LEAVE p_loop;
		ELSE
       SET done=done+1;
			INSERT INTO result(IDA, Cantidad_Jugadores) VALUES
			(var_IDA, var_Cantidad_Jugadores);
		END IF;

END LOOP p_loop;

CLOSE deck_cursor;

SELECT arquetipo.IDA,NombreA,Cantidad_Jugadores FROM result NATURAL JOIN arquetipo;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ArquetiposMasPresenciasEnTorneos
-- ----------------------------
DROP PROCEDURE IF EXISTS `ArquetiposMasPresenciasEnTorneos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ArquetiposMasPresenciasEnTorneos`(IN n INT)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE done INT DEFAULT 0;
DECLARE var_IDA INT;
DECLARE var_cantidad_de_torneos INT;

DECLARE arquetipo_cursor CURSOR
FOR SELECT IDA_Principal,COUNT(*) AS Cantidad_de_Torneos
FROM torneo_arquetipo
GROUP BY IDA_Principal
ORDER BY Cantidad_de_Torneos DESC;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish=1;

DROP VIEW IF EXISTS torneo_arquetipo;
CREATE VIEW torneo_arquetipo
AS SELECT DISTINCT IDT,IDA_Principal
FROM participante JOIN deck ON participante.IDD=deck.IDD;

DROP TABLE IF EXISTS result;
CREATE TABLE result
(
    IDA INT NOT NULL,
    Cantidad_de_Torneos INT NOT NULL
);

OPEN arquetipo_cursor;

p_loop: LOOP

        FETCH arquetipo_cursor INTO var_IDA,var_cantidad_de_torneos;
        IF done=n OR finish THEN
           LEAVE p_loop;
        ELSE
            SET done=done+1;
            INSERT INTO result(IDA,Cantidad_de_torneos) VALUES(var_IDA,var_cantidad_de_torneos);
        END IF;
END LOOP p_loop;

CLOSE arquetipo_cursor;

SELECT IDA,NombreA,Cantidad_de_Torneos FROM result NATURAL JOIN arquetipo;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for Campeon
-- ----------------------------
DROP PROCEDURE IF EXISTS `Campeon`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Campeon`(IN torneo_entrada CHAR(10))
BEGIN

SELECT participante.IDJ,NombreJ,IDD,NombreD
FROM (participante NATURAL JOIN deck) NATURAL JOIN jugador
WHERE IDT=torneo_entrada AND participante.Lugar_Alcanzado='Campeon';

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for CantTorneosArquetipoCampeon
-- ----------------------------
DROP PROCEDURE IF EXISTS `CantTorneosArquetipoCampeon`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CantTorneosArquetipoCampeon`(IN fecha_hora_inicio DATETIME, IN fecha_hora_finalizacion DATETIME)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDT CHAR(4);
DECLARE var_IDA INT;


DECLARE torneo_cursor CURSOR
FOR SELECT * FROM arquetipo_campeon;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP VIEW IF EXISTS arquetipo_campeon;
CREATE VIEW arquetipo_campeon(IDT, Arquetipo_campeon)
AS SELECT IDT,IDA_Principal
FROM participante JOIN deck ON participante.IDD=deck.IDD
WHERE Lugar_Alcanzado='Campeon';

DROP TABLE IF EXISTS result;
CREATE TABLE result
(
   IDT CHAR(4) NOT NULL,
   IDA CHAR(4) NOT NULL
);

OPEN torneo_cursor;

p_loop: LOOP

		FETCH torneo_cursor INTO var_IDT, var_IDA;
    IF finish=1 THEN
       LEAVE p_loop;
    ELSE
        IF (SELECT MAX(fecha_hora_de_finalizacionp) FROM partida WHERE IDT=var_IDT) BETWEEN fecha_hora_inicio AND fecha_hora_finalizacion THEN
           INSERT INTO result(IDT, IDA) VALUES(var_IDT,var_IDA);
        END IF;
    END IF;
        
END LOOP p_loop;

CLOSE torneo_cursor;


SELECT IDA,NombreA,COUNT(*) AS Cantidad_de_Torneos_Ganados
FROM result NATURAL JOIN arquetipo
GROUP BY IDA
ORDER BY Cantidad_de_Torneos_Ganados DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for JugadoresMasVictorias
-- ----------------------------
DROP PROCEDURE IF EXISTS `JugadoresMasVictorias`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `JugadoresMasVictorias`(IN n INT, IN fecha_hora_inicio DATETIME, IN fecha_hora_finalizacion DATETIME)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDT CHAR(4);
DECLARE var_IDR CHAR(4);
DECLARE var_IDP CHAR(4);
DECLARE var_IDJ1 CHAR(4);
DECLARE var_IDJ2 CHAR(4);
DECLARE var_resultado CHAR(4);
DECLARE jugador1 CHAR(1);
DECLARE finish2 INT DEFAULT 0;
DECLARE done INT DEFAULT 0;
DECLARE victorias INT;
DECLARE var_IDJ CHAR(4);

DECLARE partida_cursor CURSOR
FOR SELECT IDT,IDR,IDP,IDJ1,IDJ2,Resultado
FROM partida
WHERE fecha_hora_de_finalizacionP BETWEEN fecha_hora_inicio AND fecha_hora_finalizacion;

DECLARE jugador_cursor CURSOR
FOR SELECT * FROM ganadores_victorias;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP TABLE IF EXISTS ganadores;
CREATE TABLE IF NOT EXISTS ganadores
(
   IDT CHAR(4) NOT NULL,
   IDR CHAR(4) NOT NULL,
   IDP CHAR(4) NOT NULL,
   IDJ CHAR(4) NOT NULL
);

OPEN partida_cursor;

p_loop: LOOP

	FETCH partida_cursor INTO var_IDT,var_IDR,var_IDP,var_IDJ1,var_IDJ2,var_resultado;
  IF finish=1 THEN
     LEAVE p_loop;
  ELSE
     SET jugador1=SUBSTRING(var_resultado,1,1);
     IF jugador1='2' THEN
        INSERT INTO ganadores(IDT,IDR,IDP,IDJ) VALUES(var_IDT,var_IDR,var_IDP,var_IDJ1);
     ELSE
        INSERT INTO ganadores(IDT,IDR,IDP,IDJ) VALUES(var_IDT,var_IDR,var_IDP,var_IDJ2);
     END IF;
  END IF;
     
END LOOP p_loop;

CLOSE partida_cursor;

DROP VIEW IF EXISTS ganadores_victorias;
CREATE VIEW ganadores_victorias(IDJ, cantidad_victorias)
AS SELECT IDJ,COUNT(*) AS contador
FROM ganadores
GROUP BY IDJ
ORDER BY contador DESC;

DROP TABLE IF EXISTS result;
CREATE TABLE IF NOT EXISTS result
(
    IDJ CHAR(4) NOT NULL,
    Cantidad_Victorias INT NOT NULL
);

SET finish=0;

OPEN jugador_cursor;

q_loop: LOOP

	FETCH jugador_cursor INTO var_IDJ,victorias;
  IF done=n or finish THEN
     LEAVE q_loop;
  ELSE
      SET done=done+1;
      INSERT INTO result(IDJ,Cantidad_Victorias) VALUES (var_IDJ,victorias);
  END IF;
     
END LOOP q_loop;

CLOSE jugador_cursor;

SELECT result.IDJ,NombreJ,Cantidad_Victorias
FROM result NATURAL JOIN jugador;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for MasDecks
-- ----------------------------
DROP PROCEDURE IF EXISTS `MasDecks`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MasDecks`(IN n INT)
BEGIN

DECLARE done INT DEFAULT 0;
DECLARE finish INT DEFAULT 0;
DECLARE var_IDJ CHAR(4);
DECLARE var_NombreJ CHAR(25);
DECLARE var_Cantidad_Decks int;

DECLARE deck_cursor CURSOR FOR
SELECT IDJ,NombreJ,COUNT(*) as Cantidad_Decks
FROM deck NATURAL JOIN jugador
GROUP BY deck.IDJ
ORDER BY Cantidad_Decks DESC;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP TABLE IF EXISTS result;
CREATE TABLE IF NOT EXISTS result
	(
		IDJ CHAR(4) NOT NULL,
    NombreJ char(25) NOT NULL,
		Cantidad_Decks int
	);

OPEN deck_cursor;

p_loop: LOOP
    FETCH deck_cursor INTO var_IDJ,var_NombreJ, var_Cantidad_Decks;	
		IF done=n or finish THEN
			LEAVE p_loop;
		ELSE
       SET done=done+1;      
			INSERT INTO result(IDJ,NombreJ, Cantidad_Decks) VALUES
			(var_IDJ,var_NombreJ, var_Cantidad_Decks);
		END IF;

END LOOP p_loop;

CLOSE deck_cursor;

SELECT * FROM result;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for MunicipioArquetipoMasPopular
-- ----------------------------
DROP PROCEDURE IF EXISTS `MunicipioArquetipoMasPopular`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MunicipioArquetipoMasPopular`(IN arquetipo_entrada INT)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDJ CHAR(150);
DECLARE var_IDP CHAR(4);
DECLARE var_IDM CHAR(4);

DECLARE jugador_cursor CURSOR FOR
SELECT DISTINCT jugador.IDJ,IDM,IDP
FROM deck NATURAL JOIN jugador
WHERE IDA_Principal=arquetipo_entrada;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;


DROP TABLE IF EXISTS result;
CREATE TABLE IF NOT EXISTS result
	(
		IDJ CHAR(150) NOT NULL,
    IDM CHAR(4) NOT NULL,
    IDP CHAR(4) NOT NULL
	);

OPEN jugador_cursor;

p_loop: LOOP

		FETCH jugador_cursor INTO var_IDJ,var_IDM, var_IDP;
		IF finish THEN
			LEAVE p_loop;
		ELSE
			INSERT INTO result(IDJ, IDM, IDP) VALUES
			(var_IDJ, var_IDM, var_IDP);
		END IF;

END LOOP p_loop;


CLOSE jugador_cursor;

SELECT IDM,NombreM,IDP,NombreP,MAX(contador) as Cantidad_de_Jugadores
FROM (SELECT municipio.IDM, NombreM, provincia.IDP, NombreP, COUNT(IDJ) AS contador
FROM (result JOIN municipio ON result.IDM=municipio.IDM AND result.IDP=municipio.IDP) JOIN provincia ON municipio.IDP=provincia.IDP
GROUP BY IDM,municipio.IDP 
ORDER BY contador DESC) MUN;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for MunicipioMasCampeones
-- ----------------------------
DROP PROCEDURE IF EXISTS `MunicipioMasCampeones`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MunicipioMasCampeones`(IN fecha_hora_inicio DATETIME, IN fecha_hora_finalizacion DATETIME)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDT CHAR(4);
DECLARE var_IDM CHAR(4);
DECLARE var_IDP CHAR(4);


DECLARE torneo_cursor CURSOR
FOR SELECT * FROM municipio_campeon;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP VIEW IF EXISTS municipio_campeon;
CREATE VIEW municipio_campeon(IDT,IDM,IDP)
AS SELECT IDT,IDM,IDP
FROM participante JOIN jugador ON participante.IDJ=jugador.IDJ
WHERE Lugar_Alcanzado='Campeon';

DROP TABLE IF EXISTS result;
CREATE TABLE result
(
   IDT CHAR(4) NOT NULL,
   IDM CHAR(20) NOT NULL,
   IDP CHAR(20) NOT NULL
);

OPEN torneo_cursor;

p_loop: LOOP

		FETCH torneo_cursor INTO var_IDT, var_IDM, var_IDP;
    IF finish=1 THEN
       LEAVE p_loop;
    ELSE
        IF (SELECT MAX(fecha_hora_de_finalizacionp) FROM partida WHERE IDT=var_IDT) BETWEEN fecha_hora_inicio AND fecha_hora_finalizacion THEN
           INSERT INTO result(IDT, IDM, IDP) VALUES(var_IDT, var_IDM, var_IDP);
        END IF;
    END IF;
        
END LOOP p_loop;

CLOSE torneo_cursor;

SELECT IDM,NombreM,IDP,NombreP,MAX(contador) AS Cantidad_de_Campeones
FROM (SELECT municipio.IDM,NombreM,provincia.IDP,NombreP,COUNT(*) AS contador
FROM (result JOIN municipio ON result.IDM=municipio.IDM AND result.IDP=municipio.IDP) JOIN provincia ON municipio.IDP=provincia.IDP
GROUP BY IDM,municipio.IDP
ORDER BY contador DESC) mun_camp;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ProvinciaArquetipoMasPopular
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProvinciaArquetipoMasPopular`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProvinciaArquetipoMasPopular`(IN arquetipo_entrada INT)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDJ CHAR(150);
DECLARE var_IDP INT;

DECLARE jugador_cursor CURSOR FOR
SELECT DISTINCT jugador.IDJ,IDP
FROM deck NATURAL JOIN jugador
WHERE IDA_Principal=arquetipo_entrada;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP TABLE IF EXISTS result;
CREATE TABLE IF NOT EXISTS result
	(
		IDJ CHAR(150) NOT NULL,
    IDP INT NOT NULL
	);

OPEN jugador_cursor;

p_loop: LOOP

		FETCH jugador_cursor INTO var_IDJ, var_IDP;
		IF finish THEN
			LEAVE p_loop;
		ELSE
			INSERT INTO result(IDJ, IDP) VALUES
			(var_IDJ, var_IDP);
		END IF;

END LOOP p_loop;


CLOSE jugador_cursor;

SELECT IDP,NombreP,MAX(contador) as Cantidad_de_Jugadores
FROM ( SELECT provincia.IDP,NombreP, COUNT(*) as contador FROM result NATURAL JOIN provincia GROUP BY IDP ORDER BY contador DESC) PROV;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ProvinciaMasCampeones
-- ----------------------------
DROP PROCEDURE IF EXISTS `ProvinciaMasCampeones`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProvinciaMasCampeones`(IN fecha_hora_inicio DATETIME, IN fecha_hora_finalizacion DATETIME)
BEGIN

DECLARE finish INT DEFAULT 0;
DECLARE var_IDT CHAR(4);
DECLARE var_IDP CHAR(4);


DECLARE torneo_cursor CURSOR
FOR SELECT * FROM provincia_campeon;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET finish = 1;

DROP VIEW IF EXISTS provincia_campeon;
CREATE VIEW provincia_campeon(IDT, IDP)
AS SELECT IDT,IDP
FROM participante JOIN jugador ON participante.IDJ=jugador.IDJ
WHERE Lugar_Alcanzado='Campeon';

DROP TABLE IF EXISTS result;
CREATE TABLE result
(
   IDT CHAR(4) NOT NULL,
   IDP CHAR(20) NOT NULL
);

OPEN torneo_cursor;

p_loop: LOOP

		FETCH torneo_cursor INTO var_IDT, var_IDP;
    IF finish=1 THEN
       LEAVE p_loop;
    ELSE
        IF (SELECT MAX(fecha_hora_de_finalizacionp) FROM partida WHERE IDT=var_IDT) BETWEEN fecha_hora_inicio AND fecha_hora_finalizacion THEN
           INSERT INTO result(IDT, IDP) VALUES(var_IDT,var_IDP);
        END IF;
    END IF;
        
END LOOP p_loop;

CLOSE torneo_cursor;

SELECT IDP,NombreP,MAX(contador) AS Cantidad_de_Campeones
FROM (SELECT IDP,NombreP,COUNT(*) AS contador
FROM result NATURAL JOIN provincia
GROUP BY IDP
ORDER BY contador DESC) pro_camp;

END
;;
DELIMITER ;
