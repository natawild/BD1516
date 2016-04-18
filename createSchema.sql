-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema belapadaria
-- -----------------------------------------------------
drop Schema if exists belapadaria; 
-- -----------------------------------------------------
-- Schema belapadaria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `belapadaria` DEFAULT CHARACTER SET utf8 ;
USE `belapadaria` ;

-- -----------------------------------------------------
-- Table `belapadaria`.`Funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`Funcionarios` (
  `idFuncionario` INT NOT NULL AUTO_INCREMENT,
  `horario` INT NOT NULL,
  `nib` DECIMAL(22) NOT NULL UNIQUE,
  `salario` DECIMAL(8,2) NOT NULL CHECK (salario>0),
  `nome` VARCHAR(75) NOT NULL,
  `nrContribuinte` INT(9) NOT NULL UNIQUE,
  `dataNascimento` DATE NOT NULL,
  `nrCartaoCidadao` INT(8) NOT NULL UNIQUE,
  `nrPorta` VARCHAR(10) NULL,
  `rua` VARCHAR(75) NULL,
  `freguesia` VARCHAR(75) NOT NULL,
  `concelho` VARCHAR(75) NOT NULL,
  `distrito` VARCHAR(75) NOT NULL,
  `codPostal` VARCHAR(8) NOT NULL,
  `telemovel` INT(9) NOT NULL,
  `telefone` INT(9) NULL,
  `facebook` VARCHAR(75) NULL UNIQUE,
  `email` VARCHAR(75) NULL UNIQUE,
  `Funcionario` INT NULL,
  PRIMARY KEY (`idFuncionario`),
  INDEX `fk_Funcionarios_Funcionarios_idx` (`Funcionario` ASC),
  CONSTRAINT `fk_Funcionarios_Funcionarios`
    FOREIGN KEY (`Funcionario`)
    REFERENCES `belapadaria`.`Funcionarios` (`idFuncionario`)
    ON UPDATE CASCADE
    ON DELETE SET NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`Clientes` (
  `idCliente` INT NOT NULL AUTO_INCREMENT ,
  `nrCartaoCidadao` INT(8) NULL UNIQUE,
  `nome` VARCHAR(75) NULL,
  `nrContribuinte` INT(9) NULL UNIQUE,
  `dataNascimento` DATE NULL,
  `codPostal` VARCHAR(8) NULL,
  `rua` VARCHAR(75) NULL,
  `concelho` VARCHAR(75) NULL,
  `telemovel` INT(9) NULL,
  `email` VARCHAR(75) NULL UNIQUE,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`Pedidos` (
  `idPedido` INT NOT NULL AUTO_INCREMENT ,
  `valor` DECIMAL(7,2) NOT NULL CHECK (valor>0),
  `dataHora` DATETIME NOT NULL,
  `Cliente` INT NOT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `fk_Pedidos_Clientes1_idx` (`Cliente` ASC),
  CONSTRAINT `fk_Pedidos_Clientes1`
    FOREIGN KEY (`Cliente`)
    REFERENCES `belapadaria`.`Clientes` (`idCliente`)
    ON UPDATE CASCADE
    ON DELETE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`Produtos` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(75) NOT NULL,
  `preco` DECIMAL(7,2) NOT NULL CHECK (preco>0),
  `duracao` TIME NULL,
  `stock` INT(10) NOT NULL CHECK (stock>=0),
  PRIMARY KEY (`idProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`FuncionariosPedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`FuncionariosPedidos` (
  `Funcionario` INT NOT NULL,
  `Pedido` INT NOT NULL,
  PRIMARY KEY (`Funcionario`, `Pedido`),
  INDEX `fk_Funcionarios_has_Pedidos_Pedidos1_idx` (`Pedido` ASC),
  INDEX `fk_Funcionarios_has_Pedidos_Funcionarios1_idx` (`Funcionario` ASC),
  CONSTRAINT `fk_Funcionarios_has_Pedidos_Funcionarios1`
    FOREIGN KEY (`Funcionario`)
    REFERENCES `belapadaria`.`Funcionarios` (`idFuncionario`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT `fk_Funcionarios_has_Pedidos_Pedidos1`
    FOREIGN KEY (`Pedido`)
    REFERENCES `belapadaria`.`Pedidos` (`idPedido`)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`PedidosProdutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`PedidosProdutos` (
  `Pedido` INT NOT NULL,
  `Produto` INT NOT NULL,
  `quantidade` INT(7) NOT NULL,
  PRIMARY KEY (`Pedido`, `Produto`),
  INDEX `fk_Pedidos_has_Produtos_Produtos1_idx` (`Produto` ASC),
  INDEX `fk_Pedidos_has_Produtos_Pedidos1_idx` (`Pedido` ASC),
  CONSTRAINT `fk_Pedidos_has_Produtos_Pedidos1`
    FOREIGN KEY (`Pedido`)
    REFERENCES `belapadaria`.`Pedidos` (`idPedido`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT `fk_Pedidos_has_Produtos_Produtos1`
    FOREIGN KEY (`Produto`)
    REFERENCES `belapadaria`.`Produtos` (`idProduto`)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`ClientesProdutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`ClientesProdutos` (
  `Cliente` INT NOT NULL,
  `Produto` INT NOT NULL,
  PRIMARY KEY (`Cliente`, `Produto`),
  INDEX `fk_Clientes_has_Produtos_Produtos1_idx` (`Produto` ASC),
  INDEX `fk_Clientes_has_Produtos_Clientes1_idx` (`Cliente` ASC),
  CONSTRAINT `fk_Clientes_has_Produtos_Clientes1`
    FOREIGN KEY (`Cliente`)
    REFERENCES `belapadaria`.`Clientes` (`idCliente`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT `fk_Clientes_has_Produtos_Produtos1`
    FOREIGN KEY (`Produto`)
    REFERENCES `belapadaria`.`Produtos` (`idProduto`)
	ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belapadaria`.`FuncionariosProdutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belapadaria`.`FuncionariosProdutos` (
  `Funcionario` INT NOT NULL,
  `Produto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `dataConfe` DATE NULL,
  PRIMARY KEY (`Funcionario`, `Produto`),
  INDEX `fk_Funcionarios_has_Produtos_Produtos2_idx` (`Produto` ASC),
  INDEX `fk_Funcionarios_has_Produtos_Funcionarios2_idx` (`Funcionario` ASC),
  CONSTRAINT `fk_Funcionarios_has_Produtos_Funcionarios2`
    FOREIGN KEY (`Funcionario`)
    REFERENCES `belapadaria`.`Funcionarios` (`idFuncionario`)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT `fk_Funcionarios_has_Produtos_Produtos2`
    FOREIGN KEY (`Produto`)
    REFERENCES `belapadaria`.`Produtos` (`idProduto`)
    ON UPDATE CASCADE
    ON DELETE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
