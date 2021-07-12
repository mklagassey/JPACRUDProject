-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema falloutdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `falloutdb` ;

-- -----------------------------------------------------
-- Schema falloutdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `falloutdb` DEFAULT CHARACTER SET utf8 ;
USE `falloutdb` ;

-- -----------------------------------------------------
-- Table `fallout_character`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fallout_character` ;

CREATE TABLE IF NOT EXISTS `fallout_character` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT 'Lone Wanderer',
  `primary_skill` ENUM('Strength', 'Perception', 'Endurance', 'Charisma', 'Intelligence', 'Agility', 'Luck') NULL,
  `faction` VARCHAR(45) NULL,
  `alive` TINYINT NULL DEFAULT 1,
  `date` DATETIME NULL,
  `caps` INT NULL DEFAULT 0,
  `born` VARCHAR(50) NULL,
  `photo` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS loneuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'loneuser'@'localhost' IDENTIFIED BY 'loneuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'loneuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fallout_character`
-- -----------------------------------------------------
START TRANSACTION;
USE `falloutdb`;
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (1, 'Lone Wanderer', 'Intelligence', 'Vault Dweller', 1, '01-01-01 10:10:10', 100, '01-13-2060', 'lone-wanderer.jpg');
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (2, 'Dogmeat', 'Charisma', 'Good Boy', 1, NULL, 0, '2077', 'dogmeat.png');
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (3, 'Nick Valentine', 'Perception', 'Diamond City', 1, NULL, 100, 'Unknown', 'valentine.png');
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (4, 'Hancock', 'Endurance', 'Goodneighbor', 1, NULL, 1000, 'Unknown', 'hancock.png');
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (5, 'Liberty Prime', 'Strength', 'Brotherhood', 0, NULL, 0, 'NA', 'liberty-prime.png');
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (6, 'Preston Garvery', 'Luck', 'Minutemen', 1, NULL, 150, 'Unknown', 'preston-garvey.png');
INSERT INTO `fallout_character` (`id`, `name`, `primary_skill`, `faction`, `alive`, `date`, `caps`, `born`, `photo`) VALUES (7, 'Vault Salesman', 'Charisma', 'Vault-Tec', 0, NULL, 0, '04-07-2043', 'vault-salesman.png');

COMMIT;

