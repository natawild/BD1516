-- drop trigger anoFuncionario

delimiter $$
create trigger anoFuncionario
before insert on Funcionarios
for each row 
begin
dECLARE msg varchar(255);

if((datediff(now(),new.DataNascimento))/365<18) 
Then 
 set msg= 'Não tem idade minima para Exercer funções';
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; 
          
elseif ((datediff(now(),new.DataNascimento))/365>65)
Then 
 set msg= 'EXECEDEU A IDADE PARA EXERCER FUNÇÕES';
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; 
end if; 
end 
$$

-- sempre que for inserido nos Pedidos Produtos na tabela vai multiplicar o preço pela quantidade
-- atualiza o campo valor

delimiter $$
create trigger atualizarValor 
after insert on PedidosProdutos
for each row 
begin
declare total decimal (7,2);
select (New.Quantidade*preco)into total
	from Produtos
	where idProduto=New.Produto;
 update Pedidos
 set Valor =total+valor
 where idPedido=New.Pedido;
end $$ 

-- select * from Pedidos 


-- TRIGER PARA VERIFICAR QUE A QUANTIDADE A INSERIR NO PEDIDO NÃO É MAIOR QUE A QUANTIDADE DO 
-- PRODUTO EXISTENTE 

-- Atualizar valor de stock, para atualizar o stock preciso de saber a quantidade do pedido do produto
-- VALOR do stock e se o pedido não é superior ao stock existente na loja


-- drop trigger verificarValor 
delimiter $$
create trigger verificarValor
before insert on PedidosProdutos
for each row 
begin
declare total decimal (7,2);
declare stocktmp int; 

select stock into stocktmp 
from Produtos 
where idProduto=new.Produto; 

if stocktmp>new.Quantidade
then 

select (New.Quantidade*preco)into total
	from Produtos
	where idProduto=New.Produto;
 update Pedidos
 set Valor =total+valor
 where idPedido=New.Pedido;
 update Produtos
 SET stock= stock-new.Quantidade 
 WHERE idProduto= new.Produto;
 end if ; 
end $$ 

select * From Produtos ;








 