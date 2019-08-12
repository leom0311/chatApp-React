CREATE TABLE IF NOT EXISTS `chat`.`user`(
    `id` INT(10) NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(100) NULL DEFAULT NULL,
    `lastName` VARCHAR(100) NULL DEFAULT NULL,
    `companyName VARCHAR(100) NOT NULL`,
    `companyId` INT(10) NOT NULL,
    `email` VARCHAR(200) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `avatar` TEXT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP,
    PRIMARY KEY(`id`) USING BTREE
);

CREATE TABLE `chat`.`messages`(
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `messageType` ENUM('link', 'attachment', 'text', 'other') NULL,
    `content` TEXT NULL,
    `fromId` INT NOT NULL,
    `toId` INT NOT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NULL,
    PRIMARY KEY(`id`) USING BTREE
);

CREATE TABLE `chat`.`messages`(
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `messageType` ENUM('link', 'attachment', 'text', 'other') NULL,
    `content` TEXT NULL,
    `fromId` INT NOT NULL,
    `toId` INT NOT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NULL,
    PRIMARY KEY(`id`) USING BTREE
);

CREATE TABLE `chat`.`friends`(
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `active` ENUM('true', 'false') DEFAULT 'false',
    `message` TEXT NULL,
    `fromId` INT NOT NULL,
    `toId` INT NOT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NULL,
    PRIMARY KEY(`id`) USING BTREE
);