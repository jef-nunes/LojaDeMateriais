-- [Editado]
-- Script gerado pelo MySQL Workbench
-- Sun 17 Nov 2024 03:25:39 PM -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LojaDeMateriais
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LojaDeMateriais` DEFAULT CHARACTER SET utf8 ;
USE `LojaDeMateriais` ;

-- -----------------------------------------------------
-- Table `LojaDeMateriais`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LojaDeMateriais`.`fornecedor` (
  `fornecedor_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `email` VARCHAR(255) NULL,
  `telefone` VARCHAR(11) NULL,
  `estado` CHAR(2) NULL,
  `cidade` VARCHAR(100) NULL,
  PRIMARY KEY (`fornecedor_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `LojaDeMateriais`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LojaDeMateriais`.`cliente` (
  `cliente_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `email` VARCHAR(255) NULL,
  `telefone` VARCHAR(11) NULL,
  `estado` CHAR(2) NULL,
  `cidade` VARCHAR(100) NULL,
  PRIMARY KEY (`cliente_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `LojaDeMateriais`.`categoria_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LojaDeMateriais`.`categoria_produto` (
  `categoria_produto_id` INT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(255) NULL,
  `codigo` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`categoria_produto_id`),
  UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC) VISIBLE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `LojaDeMateriais`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LojaDeMateriais`.`produto` (
  `produto_id` INT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(255) NULL,
  `disponivel` INT UNSIGNED NOT NULL,
  `valor` FLOAT UNSIGNED NOT NULL,
  `fk_categoria_produto_id` INT UNSIGNED NOT NULL,
  `fk_fornecedor_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`produto_id`, `fk_categoria_produto_id`, `fk_fornecedor_id`),
  INDEX `fk_produto_categoria_produto_idx` (`fk_categoria_produto_id` ASC) VISIBLE,
  INDEX `fk_produto_fornecedor1_idx` (`fk_fornecedor_id` ASC) VISIBLE,
  CONSTRAINT `fk_produto_categoria_produto`
    FOREIGN KEY (`fk_categoria_produto_id`)
    REFERENCES `LojaDeMateriais`.`categoria_produto` (`categoria_produto_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_produto_fornecedor1`
    FOREIGN KEY (`fk_fornecedor_id`)
    REFERENCES `LojaDeMateriais`.`fornecedor` (`fornecedor_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `LojaDeMateriais`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LojaDeMateriais`.`venda` (
  `venda_id` INT UNSIGNED NOT NULL,
  `valor_total` FLOAT NULL,
  `fk_produto_id` INT UNSIGNED NOT NULL,
  `fk_produto_categoria_produto_id` INT UNSIGNED NOT NULL,
  `fk_produto_fornecedor_id` INT UNSIGNED NOT NULL,
  `fk_cliente_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`venda_id`, `fk_produto_id`, `fk_produto_categoria_produto_id`, `fk_produto_fornecedor_id`, `fk_cliente_id`),
  INDEX `fk_venda_produto1_idx` (`fk_produto_id` ASC, `fk_produto_categoria_produto_id` ASC, `fk_produto_fornecedor_id` ASC) VISIBLE,
  INDEX `fk_venda_cliente1_idx` (`fk_cliente_id` ASC) VISIBLE,
  CONSTRAINT `fk_venda_produto1`
    FOREIGN KEY (`fk_produto_id`, `fk_produto_categoria_produto_id`, `fk_produto_fornecedor_id`)
    REFERENCES `LojaDeMateriais`.`produto` (`produto_id`, `fk_categoria_produto_id`, `fk_fornecedor_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_venda_cliente1`
    FOREIGN KEY (`fk_cliente_id`)
    REFERENCES `LojaDeMateriais`.`cliente` (`cliente_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
