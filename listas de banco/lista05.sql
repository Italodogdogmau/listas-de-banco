create database if not exists pratica06;
use pratica06;

CREATE TABLE IF NOT EXISTS exemplo1(
C1 integer not null,
C2 integer,
C3 integer,
C4 integer
);

select * from exemplo1;

# o tempo de execução foi de  0.016 sec 
select * from exemplo1 where c3 = 4801 and c2 = 4899 and c4= 4750;

#criação dos indiceS 
create index idx_c2 on exemplo1(c2);

create index idx_c3 on exemplo1(c3);

create index idx_c4 on exemplo1(c4);

analyze table exemplo1;

# Após a criaçao de indices o tempo de execução foi 0.000sec
select * from exemplo1 where c3 = 4801 and c2 = 4899 and c4= 4750;

# select campo nao indexado duraçao 0.000 sec.
SELECT * FROM exemplo1 WHERE c1 = 5020;

# select campo indexado duraçao 0.000 sec.
SELECT * FROM exemplo1 WHERE c2 = 5020;

## Eu acho que a duraçao da consulta deu igual por que o computador tem o processamento rápido.