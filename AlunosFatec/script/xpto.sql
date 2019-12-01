create database xpto;

create table xpto.usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));

create table xpto.pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  tipo VARCHAR(255),
  email VARCHAR(255),
  primary key (id));

create table xpto.pessoasfis (
  idFis BIGINT NOT NULL AUTO_INCREMENT,
  idPes BIGINT,
  cpf VARCHAR(255),
  primary key (idFis));

create table xpto.pessoasjur (
  idJur BIGINT NOT NULL AUTO_INCREMENT,
  idPes BIGINT,
  cnpj VARCHAR(255),
  primary key (idJur));
 
create table xpto.usuarios_pessoas (
id BIGINT NOT NULL AUTO_INCREMENT,
  idPessoa BIGINT,
  idUsuario BIGINT, 
  observacao VARCHAR(255),
  primary key (id));

ALTER TABLE xpto.usuarios_pessoas ADD CONSTRAINT FK_PES_USU_ID FOREIGN KEY (IDUSUARIO) REFERENCES xpto.USUARIOS (ID);
ALTER TABLE xpto.usuarios_pessoas ADD CONSTRAINT FK_USU_PES_ID FOREIGN KEY (IDPESSOA) REFERENCES xpto.PESSOAS (ID); 

ALTER TABLE xpto.pessoasfis ADD CONSTRAINT FK_PESF_ID FOREIGN KEY (IDPES) REFERENCES xpto.PESSOAS (ID);  
ALTER TABLE xpto.pessoasjur ADD CONSTRAINT FK_PESJ_ID FOREIGN KEY (IDPES) REFERENCES xpto.PESSOAS (ID);  

INSERT INTO `xpto`.`pessoas` (`nome`,`cpf`,`tipo`,`email`) VALUES ('Alexandre Bittencourt Faria','CPFXXX','TIPOXXX','abittencourtfaria@gmail.com');
INSERT INTO `xpto`.`pessoas` (`nome`,`cpf`,`tipo`,`email`) VALUES ('Lais Helena Scuracchio Bittencourt Faria','CPFyyy','TIPOyyy','lais.scuracchio@gmail.com');
INSERT INTO `xpto`.`pessoas` (`nome`,`cpf`,`tipo`,`email`) VALUES ('ABRInfo - Abrasil Informática','CPFzzz','TIPOzzz','abrinfo@gmail.com');
INSERT INTO `xpto`.`pessoas` (`nome`,`cpf`,`tipo`,`email`) VALUES ('I2PBR - Instituto de Inovação Profissional Brasileiro','CPFaaa','TIPOaaa','i2pbr@gmail.com');

INSERT INTO `xpto`.`pessoasfis` (`idPes`, `cpf`) VALUES ('1','135.081.228-59');
INSERT INTO `xpto`.`pessoasfis` (`idPes`, `cpf`) VALUES ('2','135.081.228-XX');
INSERT INTO `xpto`.`pessoasjur` (`idJur`, `cnpj`) VALUES ('3','08.321.182.001/04');
INSERT INTO `xpto`.`pessoasjur` (`idJur`, `cnpj`) VALUES ('4','08.321.182.001/XX');

INSERT INTO `xpto`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('WILLIAM', '1234', 'ATIVO', 'ADM');
INSERT INTO `xpto`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('ROBSON', '1234', 'ATIVO', 'VISITANTE');

INSERT INTO `xpto`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('1', '1', '1', 'Aluno com boas notas');
INSERT INTO `xpto`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('2', '2', '2', 'Aluno dedicado');
