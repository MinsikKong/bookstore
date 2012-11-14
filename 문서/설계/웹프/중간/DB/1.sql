SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `bookstore` ;
CREATE SCHEMA IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8 ;
USE `bookstore` ;

-- -----------------------------------------------------
-- Table `bookstore`.`USER_INFO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`USER_INFO` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`USER_INFO` (
  `ID` VARCHAR(30) NOT NULL ,
  `Password` VARCHAR(30) NOT NULL ,
  `Name` VARCHAR(30) NOT NULL ,
  `Email` VARCHAR(50) NOT NULL ,
  `Sex` CHAR(1) NOT NULL ,
  `Phone_number` VARCHAR(11) NULL ,
  `Zip_code` CHAR(6) NOT NULL ,
  `Address_base` VARCHAR(50) NULL ,
  `Address_detail` VARCHAR(50) NULL ,
  `Introduction` VARCHAR(1000) NULL ,
  `Pic_url` VARCHAR(255) NULL ,
  PRIMARY KEY (`ID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`FRIEND_INFO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`FRIEND_INFO` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`FRIEND_INFO` (
  `Friend1` VARCHAR(30) NOT NULL ,
  `Friend2` VARCHAR(30) NOT NULL ,
  `Flag` CHAR(1) NOT NULL ,
  INDEX `friend1_idx` (`Friend1` ASC) ,
  CONSTRAINT `FRIEND_INFO_id_fk`
    FOREIGN KEY (`Friend1` )
    REFERENCES `bookstore`.`USER_INFO` (`ID` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`ARTICLE_MAIN`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`ARTICLE_MAIN` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`ARTICLE_MAIN` (
  `IDX` INT NOT NULL AUTO_INCREMENT ,
  `ID` VARCHAR(30) NOT NULL ,
  `Title` VARCHAR(50) NOT NULL ,
  `Contents` LONGTEXT NOT NULL ,
  `Reg_date` TIMESTAMP NOT NULL ,
  `Flag` CHAR(1) NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `id_fk_idx` (`ID` ASC) ,
  CONSTRAINT `ARTICLE_MAIN_id_fk`
    FOREIGN KEY (`ID` )
    REFERENCES `bookstore`.`USER_INFO` (`ID` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`ARTICLE_TAIL`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`ARTICLE_TAIL` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`ARTICLE_TAIL` (
  `IDX` INT NOT NULL AUTO_INCREMENT ,
  `Article_idx` INT NOT NULL ,
  `ID` VARCHAR(30) NULL ,
  `Contents` VARCHAR(255) NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `Article_idx_fk_idx` (`Article_idx` ASC) ,
  CONSTRAINT `ARTICLE_MAIN_idx_fk`
    FOREIGN KEY (`Article_idx` )
    REFERENCES `bookstore`.`ARTICLE_MAIN` (`IDX` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`ARTICLE_MAIN_PIC`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`ARTICLE_MAIN_PIC` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`ARTICLE_MAIN_PIC` (
  `IDX` INT NOT NULL AUTO_INCREMENT ,
  `Article_idx` INT NOT NULL ,
  `URL` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `article_idx_fk_idx` (`Article_idx` ASC) ,
  CONSTRAINT `ARTICLE_MAIN_PIC_idx_fk`
    FOREIGN KEY (`Article_idx` )
    REFERENCES `bookstore`.`ARTICLE_MAIN` (`IDX` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`ARTICLE_TAIL_PIC`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`ARTICLE_TAIL_PIC` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`ARTICLE_TAIL_PIC` (
  `IDX` INT NOT NULL AUTO_INCREMENT ,
  `Tail_idx` INT NOT NULL ,
  `URL` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `tail_idx_idx` (`Tail_idx` ASC) ,
  CONSTRAINT `ARTICLE_TAIL_idx_fk`
    FOREIGN KEY (`Tail_idx` )
    REFERENCES `bookstore`.`ARTICLE_TAIL` (`IDX` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`BOOK_INFO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`BOOK_INFO` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`BOOK_INFO` (
  `ISBN` CHAR(13) NOT NULL ,
  `Title` VARCHAR(50) NOT NULL ,
  `Author` VARCHAR(30) NOT NULL ,
  `Translator` VARCHAR(30) NULL ,
  `Publisher` VARCHAR(30) NOT NULL ,
  `Published_date` DATE NOT NULL ,
  `Price` INT NULL ,
  PRIMARY KEY (`ISBN`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`SELL_BOOK_LIST`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`SELL_BOOK_LIST` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`SELL_BOOK_LIST` (
  `IDX` INT NOT NULL ,
  `ID` VARCHAR(30) NOT NULL ,
  `ISBN` CHAR(13) NOT NULL ,
  `Title` VARCHAR(50) NOT NULL ,
  `Contents` TEXT NOT NULL ,
  `reg_date` TIMESTAMP NOT NULL ,
  `Sell_price` INT NOT NULL ,
  `Book_status` CHAR(1) NOT NULL ,
  `Book_Quantity` INT NOT NULL ,
  `Flag` CHAR(1) NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `SELL_BOOK_LIST_id_fk_idx` (`ID` ASC) ,
  INDEX `SELL_BOOK_LIST_isbn_fk_idx` (`ISBN` ASC) ,
  CONSTRAINT `SELL_BOOK_LIST_id_fk`
    FOREIGN KEY (`ID` )
    REFERENCES `bookstore`.`USER_INFO` (`ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `SELL_BOOK_LIST_isbn_fk`
    FOREIGN KEY (`ISBN` )
    REFERENCES `bookstore`.`BOOK_INFO` (`ISBN` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`SELL_BOOK_LIST_PIC`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`SELL_BOOK_LIST_PIC` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`SELL_BOOK_LIST_PIC` (
  `IDX` INT NOT NULL ,
  `SELL_BOOK_LIST_idx` INT NOT NULL ,
  `URL` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `SELL_BOOK_LIST_idx_fk_idx` (`IDX` ASC) ,
  CONSTRAINT `SELL_BOOK_LIST__PIC_idx_fk`
    FOREIGN KEY (`IDX` )
    REFERENCES `bookstore`.`SELL_BOOK_LIST` (`IDX` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`CART_LIST`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`CART_LIST` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`CART_LIST` (
  `IDX` INT NOT NULL AUTO_INCREMENT ,
  `ID` VARCHAR(30) NOT NULL ,
  `SELL_BOOK_LIST_IDX` INT NOT NULL ,
  `Quantity` INT NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `CART_LIST_id_fk_idx` (`ID` ASC) ,
  INDEX `SELL_BOOK_LIST_IDX_fk_idx` (`IDX` ASC) ,
  CONSTRAINT `CART_LIST_id_fk`
    FOREIGN KEY (`ID` )
    REFERENCES `bookstore`.`USER_INFO` (`ID` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `CART_LIST_IDX_fk`
    FOREIGN KEY (`IDX` )
    REFERENCES `bookstore`.`SELL_BOOK_LIST` (`IDX` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -------------------------------------------n----------
-- Table `bookstore`.`PURCHASED_BOOK_LIST`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bookstore`.`PURCHASED_BOOK_LIST` ;

CREATE  TABLE IF NOT EXISTS `bookstore`.`PURCHASED_BOOK_LIST` (
  `IDX` INT NOT NULL ,
  `ID` VARCHAR(30) NOT NULL ,
  `SELL_BOOK_LIST_idx` INT NOT NULL ,
  `Quantity` INT NOT NULL ,
  `Reg_date` TIMESTAMP NOT NULL ,
  `Phone_number` VARCHAR(11) NOT NULL ,
  `Zip_code` CHAR(6) NOT NULL ,
  `Address_base` VARCHAR(50) NOT NULL ,
  `Address_datail` VARCHAR(50) NOT NULL ,
  `To_postman` VARCHAR(50) NULL ,
  `Card_no` CHAR(16) NOT NULL ,
  `Flag` CHAR(1) NOT NULL ,
  PRIMARY KEY (`IDX`) ,
  INDEX `PURCHASED_BOOK_LIST_id_fk_idx` (`ID` ASC) ,
  CONSTRAINT `PURCHASED_BOOK_LIST_id_fk`
    FOREIGN KEY (`ID` )
    REFERENCES `bookstore`.`USER_INFO` (`ID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `PURCHASED_BOOK_LIST_idx_fk`
    FOREIGN KEY (`IDX` )
    REFERENCES `bookstore`.`SELL_BOOK_LIST` (`IDX` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
