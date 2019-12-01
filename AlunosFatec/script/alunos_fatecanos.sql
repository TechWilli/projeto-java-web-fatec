create database alunos_fatecanos;

create table alunos_fatecanos.alunos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  login VARCHAR(255),
  senha VARCHAR(255),
  curso VARCHAR(255),
  ra VARCHAR(255),
  primary key (id));
  
create table alunos_fatecanos.disciplinas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  turma VARCHAR(255),
  nomeDis VARCHAR(255),
  periodo VARCHAR(255),
  prof VARCHAR(255),
  primary key (idDis));

create table alunos_fatecanos.alunos_disciplinas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idAluno BIGINT,
  idDis BIGINT,
  p1 FLOAT,
  P2 FLOAT,
  situacaoFinal VARCHAR(255),
  primary key (id));

ALTER TABLE alunos_fatecanos.alunos_disciplinas ADD CONSTRAINT FK_ALU_DIS_ID FOREIGN KEY (IDALUNO) REFERENCES alunos_fatecanos.ALUNOS (ID);
ALTER TABLE alunos_fatecanos.alunos_disciplinas ADD CONSTRAINT FK_DIS_ALU_ID FOREIGN KEY (IDDIS) REFERENCES alunos_fatecanos.DISCIPLINAS (ID);

INSERT INTO `alunos_fatecanos`.`alunos` (`login`, `senha`, `curso`, `ra`) VALUES ('WILL', '1234', 'ADM', '123456');
INSERT INTO `alunos_fatecanos`.`alunos` (`login`, `senha`, `curso`, `ra`) VALUES ('ROBSON', '1234', 'ATIVO', '654321');

INSERT INTO `alunos_fatecanos`.`disciplinas` (`turma`, `nomeDis`, `periodo`, `prof`) VALUES ('ADS', 'EDS', 'NOITE', 'Denise');
INSERT INTO `alunos_fatecanos`.`disciplinas` (`turma`, `nomeDis`, `periodo`, `prof`) VALUES ('ADS', 'Inteligencia Artifical', 'NOITE', 'Ceroni');
INSERT INTO `alunos_fatecanos`.`disciplinas` (`turma`, `nomeDis`, `periodo`, `prof`) VALUES ('ADS', 'Sistemas de Informação', 'NOITE', 'Ceroni');
INSERT INTO `alunos_fatecanos`.`disciplinas` (`turma`, `nomeDis`, `periodo`, `prof`) VALUES ('ADS', 'Comunicação e Expressão', 'NOITE', 'Silas');

INSERT INTO `alunos_fatecanos`.`alunos_disciplinas` (`id`, `idAluno`, `idDis`, `p1`, `p2`, `situacaoFinal`) VALUES ('1', '1', '1', '9.5', '7' , 'APROVADO');
INSERT INTO `alunos_fatecanos`.`alunos_disciplinas` (`id`, `idAluno`, `idDis`, `p1`, `p2`, `situacaoFinal`) VALUES ('1', '1', '2', '9.0', '8', 'APROVADO');
