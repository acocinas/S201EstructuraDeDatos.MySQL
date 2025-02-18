-- MySQL Script generated by MySQL Workbench
-- Tue Feb 18 11:28:31 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee` (
  `id_employee` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(15) NOT NULL,
  `email` VARCHAR(100) NULL,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  PRIMARY KEY (`id_employee`));


-- -----------------------------------------------------
-- Table `mydb`.`contact_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`contact_info` (
  `id_contact` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phone` INT NOT NULL,
  `street` VARCHAR(100) NULL,
  `number` INT NULL,
  `floor` VARCHAR(10) NULL,
  `door` VARCHAR(10) NULL,
  `city` VARCHAR(100) NULL,
  `postal_code` VARCHAR(10) NULL,
  `country` VARCHAR(100) NULL,
  PRIMARY KEY (`id_contact`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `id_customer` INT NOT NULL AUTO_INCREMENT,
  `contact_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  `registration_date` DATETIME NULL,
  `recommended_by` INT NOT NULL,
  PRIMARY KEY (`id_customer`),
  INDEX `recommended_by_idx` (`recommended_by` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `contact_id_idx` (`contact_id` ASC) VISIBLE,
  CONSTRAINT `recommended_by`
    FOREIGN KEY (`recommended_by`)
    REFERENCES `mydb`.`customer` (`id_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `contact_id`
    FOREIGN KEY (`contact_id`)
    REFERENCES `mydb`.`contact_info` (`id_contact`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`supplier` (
  `id_supplier` INT NOT NULL AUTO_INCREMENT,
  `contact_id` INT NOT NULL,
  `fax` VARCHAR(15) NULL,
  `nif` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`id_supplier`),
  INDEX `contact_id_idx` (`contact_id` ASC) VISIBLE,
  UNIQUE INDEX `nif_UNIQUE` (`nif` ASC) VISIBLE,
  CONSTRAINT `contact_id`
    FOREIGN KEY (`contact_id`)
    REFERENCES `mydb`.`contact_info` (`id_contact`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`brand`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`brand` (
  `id_brand` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `supplier_id` INT NOT NULL,
  PRIMARY KEY (`id_brand`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  INDEX `supplier_id_idx` (`supplier_id` ASC) VISIBLE,
  CONSTRAINT `supplier_id`
    FOREIGN KEY (`supplier_id`)
    REFERENCES `mydb`.`supplier` (`id_supplier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`glasses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`glasses` (
  `id_glasses` INT NOT NULL AUTO_INCREMENT,
  `brand_id` INT NOT NULL,
  `left_lens_prescription` DECIMAL(5,2) NULL,
  `right_lens_prescroption` DECIMAL(5,2) NULL,
  `frame_type` ENUM('floating', 'plastic', 'metal') NULL,
  `frame_color` VARCHAR(45) NULL,
  `left_lens_color` VARCHAR(45) NULL,
  `right_lens_color` VARCHAR(45) NULL,
  `price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`id_glasses`),
  INDEX `brand_id_idx` (`brand_id` ASC) VISIBLE,
  CONSTRAINT `brand_id`
    FOREIGN KEY (`brand_id`)
    REFERENCES `mydb`.`brand` (`id_brand`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sale` (
  `id_sale` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  `glasses_id` INT NOT NULL,
  `sale_date` DATETIME NULL,
  `salecol` VARCHAR(45) NULL,
  PRIMARY KEY (`id_sale`),
  INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  INDEX `glasses_id_idx` (`glasses_id` ASC) VISIBLE,
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mydb`.`customer` (`id_customer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `mydb`.`employee` (`id_employee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `glasses_id`
    FOREIGN KEY (`glasses_id`)
    REFERENCES `mydb`.`glasses` (`id_glasses`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
