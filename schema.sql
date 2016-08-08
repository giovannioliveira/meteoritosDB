SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo` (
  `id` INT NOT NULL,
  `tipo` VARCHAR(30) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`classe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`classe` (
  `id` INT NOT NULL,
  `classe` VARCHAR(30) NULL,
  `tipo` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_classe_1_idx` (`tipo` ASC),
  CONSTRAINT `fk_classe_1`
    FOREIGN KEY (`tipo`)
    REFERENCES `mydb`.`tipo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`grupo` (
  `id` INT NOT NULL,
  `grupo` VARCHAR(10) NULL,
  `classe` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_grupo_1_idx` (`classe` ASC),
  CONSTRAINT `fk_grupo_1`
    FOREIGN KEY (`classe`)
    REFERENCES `mydb`.`classe` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pais` (
  `id` INT NOT NULL,
  `nome` VARCHAR(30) NULL,
  `sigla` VARCHAR(3) NULL,
  `lat` FLOAT NULL,
  `lon` FLOAT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`estado` (
  `id` INT NOT NULL,
  `pais` INT NULL,
  `nome` VARCHAR(30) NULL,
  `sigla` VARCHAR(3) NULL,
  `lat` FLOAT NULL,
  `lon` FLOAT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_estado_1_idx` (`pais` ASC),
  CONSTRAINT `fk_estado_1`
    FOREIGN KEY (`pais`)
    REFERENCES `mydb`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cidade` (
  `id` INT NOT NULL,
  `estado` INT NULL,
  `nome` VARCHAR(30) NULL,
  `lat` FLOAT NULL,
  `lon` FLOAT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cidade_1_idx` (`estado` ASC),
  CONSTRAINT `fk_cidade_1`
    FOREIGN KEY (`estado`)
    REFERENCES `mydb`.`estado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`meteorito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`meteorito` (
  `id` INT NOT NULL,
  `cod` VARCHAR(10) NULL,
  `nome` VARCHAR(30) NULL,
  `fato` TINYINT(1) NULL,
  `grupo` INT NULL,
  `cidade` INT NULL,
  `mtc` FLOAT NULL,
  `lat` FLOAT NULL,
  `lon` FLOAT NULL,
  `info` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_grupo_idx` (`grupo` ASC),
  INDEX `fk_cidade_idx` (`cidade` ASC),
  CONSTRAINT `fk_grupo`
    FOREIGN KEY (`grupo`)
    REFERENCES `mydb`.`grupo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cidade`
    FOREIGN KEY (`cidade`)
    REFERENCES `mydb`.`cidade` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sinonimo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sinonimo` (
  `id` INT NOT NULL,
  `sinonimo` VARCHAR(30) NULL,
  `meteorito` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_sinonimo_1_idx` (`meteorito` ASC),
  CONSTRAINT `fk_sinonimo_1`
    FOREIGN KEY (`meteorito`)
    REFERENCES `mydb`.`meteorito` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`codigo_externo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`codigo_externo` (
  `id` INT NOT NULL,
  `cod` VARCHAR(10) NULL,
  `meteorito` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_codigo_externo_1_idx` (`meteorito` ASC),
  CONSTRAINT `fk_codigo_externo_1`
    FOREIGN KEY (`meteorito`)
    REFERENCES `mydb`.`meteorito` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`analise`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`analise` (
  `id` INT NOT NULL,
  `meteorito` INT NULL,
  `info` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_analise_1_idx` (`meteorito` ASC),
  CONSTRAINT `fk_analise_1`
    FOREIGN KEY (`meteorito`)
    REFERENCES `mydb`.`meteorito` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`elem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`elem` (
  `id` INT NOT NULL,
  `nome` VARCHAR(30) NULL COMMENT 'angra dos reis II',
  `simbolo` VARCHAR(3) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`elem_analise`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`elem_analise` (
  `id` INT NOT NULL,
  `elem` INT NULL,
  `analise` INT NULL,
  `valor` FLOAT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_elem_analise_1_idx` (`analise` ASC),
  INDEX `fk_elem_analise_2_idx` (`elem` ASC),
  CONSTRAINT `fk_elem_analise_1`
    FOREIGN KEY (`analise`)
    REFERENCES `mydb`.`analise` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_elem_analise_2`
    FOREIGN KEY (`elem`)
    REFERENCES `mydb`.`elem` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipo_imagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_imagem` (
  `id` INT NOT NULL,
  `tipo_imagem` VARCHAR(30) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`imagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`imagem` (
  `id` INT NOT NULL,
  `meteorito` INT NULL,
  `tipo_imagem` INT NULL,
  `imagem` BLOB NULL,
  `info` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_imagem_1_idx` (`meteorito` ASC),
  INDEX `fk_imagem_2_idx` (`tipo_imagem` ASC),
  CONSTRAINT `fk_imagem_1`
    FOREIGN KEY (`meteorito`)
    REFERENCES `mydb`.`meteorito` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_imagem_2`
    FOREIGN KEY (`tipo_imagem`)
    REFERENCES `mydb`.`tipo_imagem` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
