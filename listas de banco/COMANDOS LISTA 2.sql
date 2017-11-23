#VIEW

create view estudantes_portugues AS select  nome, matricula
from estudante as e 
inner join cursa as c
on c.matricula_est = e.matricula
and c.cod_disc = 2
ORDER BY nome  ;

select * from estudantes_portugues;

#CRIAÇAO DA TABELA LOG

create table log_funcionario(
cpf_func varchar(45) null,
comando varchar (15) NULL,
usuario varchar (20)NULL,
data_hora TIMESTAMP

);

#TRIGGER 1

DELIMITER $$
USE `escola`$$
CREATE DEFINER = CURRENT_USER TRIGGER `escola`.`log_funcionario_INSERT` BEFORE INSERT ON funcionario FOR EACH ROW
BEGIN
INSERT INTO log_funcionario
SET comando = 'INSERT',
cpf_func = NEW.cpf,
usuario = CURRENT_USER,
data_hora= CURRENT_TIMESTAMP;
END$$
DELIMITER ;

INSERT INTO funcionario (`cpf`, `cargo`, `nome`, `endereco`, `telefone`, `data_nasc`, `data_admin`, `salario`) VALUES ('88888888', 'LIXEIRO', 'BRYAN RICHERS', 'Rua dos alagados ', '!61)', '1992-01-01', '2000-01-02', '950');

select * from log_funcionario;

#TRIGGER 2

DELIMITER $$
USE `escola`$$
CREATE DEFINER = CURRENT_USER TRIGGER `escola`.`tg_funcionario_UPDATE` AFTER UPDATE ON funcionario FOR EACH ROW
BEGIN
INSERT INTO log_funcionario
SET comando = 'UPDATE',
cpf_func = OLD.cpf,
usuario = CURRENT_USER,
data_hora= CURRENT_TIMESTAMP;
END$$
DELIMITER ;

UPDATE FUNCIONARIO
SET nome = 'MESSI JOSE'
WHERE cpf = '0987654321';

SELECT * FROM LOG_FUNCIONARIO;