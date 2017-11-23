
# PROBLEMA 3

DELIMITER $$ 
create procedure NUM_CLIENTE(out codigocliente int)
begin

Select * from cliente
order by nomecliente;

END$$
DELIMITER ;

CALL NUM_CLIENTE(@a);

# PROBLEMA 4

DELIMITER $$ 
create procedure PRODUTOSBARATOS(inout codigoproduto integer)
begin

select * from produto
where precounitario < 1.50;

END$$
DELIMITER ;


set @valor = 3.00;
CALL PRODUTOSBARATOS(@valor);

# PROBLEMA 5

DELIMITER $$ 
create procedure ProdutosVendas(inout codigoproduto integer)
begin

select * from produto
where precounitario < 1.50;

END$$
DELIMITER ;


call Produtosvendas(@valor);

# PROBLEMA 6

DELIMITER $$ 
create procedure Produto_x 
(p_codigoproduto integer, p_unidade character(3), p_descricaoproduto varchar(30), p_precounitario real )

main: BEGIN

if (p_codigoproduto = '') then
select 'ERRO: o campo nao pode ficar vazio' as msg;
leave main;
end if;
 
 if(p_unidade = '') then
 select 'ERRO: o campo nao pode ficar vazio' as msg;
 leave main;
 end if;
 
 if (p_descricaoproduto = '') then
 select 'ERRO: o campo nao pode ficar vazio' as msg;
 leave main;
 end if; 
 
 if (p_precounitario = '') then
 select 'ERRO: o campo nao pode ficar vazio' as msg;
 leave main;
 end if;
 
 insert into produto (codigoproduto, unidade, descricaoproduto, precounitario )
 values
 (p_codigoproduto, p_unidade, p_descricaoproduto, p_precounitario);
 

END$$
DELIMITER ; 


CALL Produto_x('58','','','2.19');

select * from produto;

# PROBLEMA 7


CALL Produto_x('58','kg','Arroz','2.19');
CALL Produto_x('50','M','Fralda','5.05');
CALL Produto_x('10','','','1.19');
