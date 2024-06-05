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
-- Table `mydb`.`Paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paciente` (
  `Id_paciente` INT NOT NULL AUTO_INCREMENT,
  `dt_nascimento` DATE NOT NULL,
  `nm_paciente` VARCHAR(100) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `telefone` VARCHAR(11) NULL,
  `email` VARCHAR(50) NULL,
  PRIMARY KEY (`Id_paciente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Especialidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Especialidade` (
  `cd_especialidade` INT NOT NULL AUTO_INCREMENT,
  `especialidade` VARCHAR(45) NOT NULL,
  `ie_situacao` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`cd_especialidade`),
  UNIQUE INDEX `cd_especialidade_UNIQUE` (`cd_especialidade` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Medico` (
  `id_medico` INT NOT NULL AUTO_INCREMENT,
  `crm` VARCHAR(11) NOT NULL,
  `Nm_medico` VARCHAR(100) NOT NULL,
  `cd_especialidade` INT NOT NULL,
  `telefone` VARCHAR(45) NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE INDEX `crm_UNIQUE` (`crm` ASC) VISIBLE,
  INDEX `cd_especialidade_idx` (`cd_especialidade` ASC) VISIBLE,
  CONSTRAINT `cd_especialidade`
    FOREIGN KEY (`cd_especialidade`)
    REFERENCES `mydb`.`Especialidade` (`cd_especialidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipo_atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_atendimento` (
  `idtipo_atendimento` VARCHAR(2) NOT NULL,
  `Desc_tipo_atendimento` VARCHAR(120) NOT NULL,
  `ie_situacao` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`idtipo_atendimento`),
  UNIQUE INDEX `idtipo_atendimento_UNIQUE` (`idtipo_atendimento` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Atendimento_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Atendimento_paciente` (
  `Nr_atendimento` INT NOT NULL AUTO_INCREMENT,
  `id_paciente` INT NOT NULL,
  `id_medico` INT NOT NULL,
  `Dt_entrada` DATETIME NOT NULL,
  `Dt_alta` DATETIME NOT NULL,
  `tipo_atendimento` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`Nr_atendimento`),
  INDEX `id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `id_medico_idx` (`id_medico` ASC) VISIBLE,
  INDEX `idtipo_atendimento_idx` (`tipo_atendimento` ASC) VISIBLE,
  CONSTRAINT `id_paciente`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `mydb`.`Paciente` (`Id_paciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `mydb`.`Medico` (`id_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idtipo_atendimento`
    FOREIGN KEY (`tipo_atendimento`)
    REFERENCES `mydb`.`tipo_atendimento` (`idtipo_atendimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
