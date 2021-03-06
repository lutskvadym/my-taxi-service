CREATE SCHEMA IF NOT EXISTS `taxi` DEFAULT CHARACTER SET utf8;
USE `taxi`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers`  (
                            `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `license_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `is_deleted` bit(1) NOT NULL DEFAULT b'0',
                            `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
                                  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
                                  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
                         `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT,
                         `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `manufacturer_id` bigint(0) UNSIGNED NOT NULL,
                         `is_deleted` bit(1) NOT NULL DEFAULT b'0',
                         PRIMARY KEY (`id`) USING BTREE,
                         INDEX `FK_manufacturer_id`(`manufacturer_id`) USING BTREE,
                         CONSTRAINT `FK_manufacturer_id` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cars_drivers
-- ----------------------------
DROP TABLE IF EXISTS `cars_drivers`;
CREATE TABLE `cars_drivers`  (
                                 `car_id` bigint(0) UNSIGNED NOT NULL,
                                 `driver_id` bigint(0) UNSIGNED NOT NULL,
                                 PRIMARY KEY (`car_id`, `driver_id`) USING BTREE,
                                 INDEX `driver_id`(`driver_id`) USING BTREE,
                                 INDEX `car_id`(`car_id`) USING BTREE,
                                 CONSTRAINT `car_id` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                 CONSTRAINT `driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `taxi`.`drivers` (`id`, `name`, `license_number`, `is_deleted`, `login`, `password`) VALUES ('1', 'Bob', '344-554', b'0', 'bob', '1234');
INSERT INTO `taxi`.`drivers` (`id`, `name`, `license_number`, `is_deleted`, `login`, `password`) VALUES ('2', 'Alice', '856-121', b'0', 'alice', '1234');
INSERT INTO `taxi`.`drivers` (`id`, `name`, `license_number`, `is_deleted`, `login`, `password`) VALUES ('3', 'Katie', '003-879', b'0', 'katie', '1234');
INSERT INTO `taxi`.`cars` (`id`, `model`, `manufacturer_id`, `is_deleted`) VALUES ('1', 'Passat', '2', b'0');
INSERT INTO `taxi`.`cars` (`id`, `model`, `manufacturer_id`, `is_deleted`) VALUES ('2', 'Camry', '1', b'0');
INSERT INTO `taxi`.`cars` (`id`, `model`, `manufacturer_id`, `is_deleted`) VALUES ('3', 'Jetta', '2', b'0');
INSERT INTO `taxi`.`cars` (`id`, `model`, `manufacturer_id`, `is_deleted`) VALUES ('4', '308 GTI', '3', b'0');
INSERT INTO `taxi`.`manufacturers` (`id`, `name`, `country`, `is_deleted`) VALUES ('1', 'Toyota', 'Japan', b'0');
INSERT INTO `taxi`.`manufacturers` (`id`, `name`, `country`, `is_deleted`) VALUES ('2', 'Volkswagen', 'Germany', b'0');
INSERT INTO `taxi`.`manufacturers` (`id`, `name`, `country`, `is_deleted`) VALUES ('3', 'Peugeot', 'France', b'0');
INSERT INTO `taxi`.`cars_drivers` (`car_id`, `driver_id`) VALUES ('1', '1');
INSERT INTO `taxi`.`cars_drivers` (`car_id`, `driver_id`) VALUES ('1', '3');
INSERT INTO `taxi`.`cars_drivers` (`car_id`, `driver_id`) VALUES ('2', '2');
INSERT INTO `taxi`.`cars_drivers` (`car_id`, `driver_id`) VALUES ('3', '1');