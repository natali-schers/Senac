-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema projetointegrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema projetointegrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projetointegrador` DEFAULT CHARACTER SET utf8mb3 ;
USE `projetointegrador`;
-- -----------------------------------------------------
-- Table `projetointegrador`.`instituicaoensino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`instituicaoensino` (
  `idInstituicaoEnsino` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `documento` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `telefoneSecundario` VARCHAR(11) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `emailSecundario` VARCHAR(255) NULL DEFAULT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(255) NOT NULL,
  `logradouro` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(10) NOT NULL,
  `complemento` VARCHAR(100) NULL DEFAULT NULL,
  `site` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idInstituicaoEnsino`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `projetointegrador`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`empresa` (
  `idEmpresa` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `documento` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `telefoneSecundario` VARCHAR(11) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `emailSecundario` VARCHAR(255) NULL DEFAULT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(255) NOT NULL,
  `logradouro` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(10) NOT NULL,
  `complemento` VARCHAR(100) NULL DEFAULT NULL,
  `site` VARCHAR(255) NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `projetointegrador`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`aluno` (
  `idAluno` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `sobrenome` VARCHAR(255) NOT NULL,
  `documento` VARCHAR(45) NOT NULL,
  `dataNascimento` DATE NULL DEFAULT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `telefoneSecundario` VARCHAR(11) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `emailSecundario` VARCHAR(255) NULL DEFAULT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(255) NOT NULL,
  `logradouro` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(10) NOT NULL,
  `complemento` VARCHAR(100) NULL DEFAULT NULL,
  `areaAtuacao` VARCHAR(255) NOT NULL,
  `linkedin` VARCHAR(255) NULL DEFAULT NULL,
  `github` VARCHAR(255) CHARACTER SET 'armscii8' NULL DEFAULT NULL,
  `status` VARCHAR(15) NULL DEFAULT NULL,
  `imagemPerfil` BLOB NULL DEFAULT NULL,
  `imagemBanner` BLOB NULL DEFAULT NULL,
  `idInstituicaoEnsino` INT NOT NULL,
  `idEmpresa` INT NOT NULL,
  PRIMARY KEY (`idAluno`),
  INDEX `fk_aluno_instituicaoensino1_idx` (`idInstituicaoEnsino` ASC) VISIBLE,
  INDEX `fk_aluno_empresa1_idx` (`idEmpresa` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_instituicaoensino1`
    FOREIGN KEY (`idInstituicaoEnsino`)
    REFERENCES `projetointegrador`.`instituicaoensino` (`idInstituicaoEnsino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_empresa1`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `projetointegrador`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `projetointegrador`.`estagio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`estagio` (
  `idEstagio` INT NOT NULL AUTO_INCREMENT,
  `dataInicio` DATE NULL DEFAULT NULL,
  `dataFimPrevista` DATE NULL DEFAULT NULL,
  `dataFim` DATE NULL DEFAULT NULL,
  `idAluno` INT NOT NULL,
  PRIMARY KEY (`idEstagio`),
  INDEX `fk_estagio_aluno1_idx` (`idAluno` ASC) VISIBLE,
  CONSTRAINT `fk_estagio_aluno1`
    FOREIGN KEY (`idAluno`)
    REFERENCES `projetointegrador`.`aluno` (`idAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `projetointegrador`.`relatorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`relatorio` (
  `idRelatorio` INT NOT NULL AUTO_INCREMENT,
  `tipoRelatorio` VARCHAR(255) NOT NULL,
  `relatorio` LONGBLOB NOT NULL,
  `idAluno` INT NOT NULL,
  PRIMARY KEY (`idRelatorio`),
  INDEX `fk_relatorio_aluno1_idx` (`idAluno` ASC) VISIBLE,
  CONSTRAINT `fk_relatorio_aluno1`
    FOREIGN KEY (`idAluno`)
    REFERENCES `projetointegrador`.`aluno` (`idAluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `projetointegrador`.`responsavelempresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`responsavelempresa` (
  `idRespEmpresa` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(9) NULL DEFAULT NULL,
  `telefoneSecundario` VARCHAR(9) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `emailSecundario` VARCHAR(255) NULL DEFAULT NULL,
  `cargo` VARCHAR(255) NOT NULL,
  `imagemPerfil` BLOB NULL DEFAULT NULL,
  `idEmpresa` INT NOT NULL,
  PRIMARY KEY (`idRespEmpresa`),
  INDEX `fk_responsavelempresa_empresa1_idx` (`idEmpresa` ASC) VISIBLE,
  CONSTRAINT `fk_responsavelempresa_empresa1`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `projetointegrador`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `projetointegrador`.`responsavelinstituicaoensino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`responsavelinstituicaoensino` (
  `idRespInstEnsino` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(9) NULL DEFAULT NULL,
  `telefoneSecundario` VARCHAR(9) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `emailSecundario` VARCHAR(255) NULL DEFAULT NULL,
  `cargo` VARCHAR(255) NOT NULL,
  `imagemPerfil` BLOB NULL DEFAULT NULL,
  `idInstituicaoEnsino` INT NOT NULL,
  PRIMARY KEY (`idRespInstEnsino`),
  INDEX `fk_responsavelinstituicaoensino_instituicaoensino1_idx` (`idInstituicaoEnsino` ASC) VISIBLE,
  CONSTRAINT `fk_responsavelinstituicaoensino_instituicaoensino1`
    FOREIGN KEY (`idInstituicaoEnsino`)
    REFERENCES `projetointegrador`.`instituicaoensino` (`idInstituicaoEnsino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Table `projetointegrador`.`modeloRelatorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projetointegrador`.`modeloRelatorio` (
  `idModeloRelatorio` INT NOT NULL AUTO_INCREMENT,
  `tipoRelatorio` VARCHAR(255) NOT NULL,
  `relatorio` LONGBLOB NOT NULL,
  `idInstituicaoEnsino` INT NOT NULL,
  PRIMARY KEY (`idModeloRelatorio`),
  INDEX `fk_modeloRelatorio_instituicaoensino1_idx` (`idInstituicaoEnsino` ASC) VISIBLE,
  CONSTRAINT `fk_modeloRelatorio_instituicaoensino1`
    FOREIGN KEY (`idInstituicaoEnsino`)
    REFERENCES `projetointegrador`.`instituicaoensino` (`idInstituicaoEnsino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;