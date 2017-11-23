#PROBLEMA 1:
alter table cliente add email varchar(30) after endereco;

select * from cliente;

#PROBLEMA 2:

select numero_agencia, endereco, cod_banco from agencia
where cod_banco='1'
order by numero_agencia;


#PROBLEMA 3:

select numero_conta, num_agencia, nome
from cliente as c join historico as h
on c.cpf = h.cpf_cliente
join conta as x
on h.num_conta = x.numero_conta;


#PROBLEMA 4: 

select * from cliente 
where cpf= '666.777.888-99'
order by nome;


#PROBLEMA 5:

select * from agencia as a inner join banco as b
on a.cod_banco = b.codigo
where numero_agencia = 0562;




select * from agencia;

#PROBLEMA 6:

delete from conta
where numero_conta = '86340.2';

select * from agencia;


# PROBLEMA 7:
update cliente set email= 'caetanolima@gmail.com' where cpf = '666.777.888-99';

#PROBLEMA 8:
select numero_conta,saldo, floor(saldo * 10/100 + 3879) as 'aumentado' from conta where tipo_conta = '1';

select * from conta;
