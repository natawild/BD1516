-- Inserir pedido, associar esse funcionário ao pedido e adicionar produtos ao pedido
-- DROP PROCEDURE registarPedido

SET foreign_key_checks = 1;

delimiter $$
create procedure registarPedido (IN Funcionario INT, IN Produto INT, IN Quantidade INT, in Cliente int)

BEGIN 
declare PedidoID int;
declare erro bool default 0;
declare continue handler for sqlexception set erro=1;

start transaction;

insert into Pedidos (idPedido,valor,dataHora, Cliente) 
		values (idPedido,0,now(), Cliente);        
select idPedido into PedidoID
from Pedidos
order by idPedido DESC 
LIMIT 1;

insert into FuncionariosPedidos (Funcionario,Pedido)
			values (Funcionario, PedidoID);

insert into PedidosProdutos (Pedido, Produto, quantidade)
			values (PedidoID, Produto, Quantidade); 

IF ERRO
THEN rollback;
ELSE COMMIT; 
END IF;
END $$

-- CALL registarPedido (2, 3, 3, 70); 
-- CALL registarPedido (6, 20, 10); 


-- SELECT * from Pedidos ; 
-- SELECT * FROM PedidosProdutos; 
-- SELECT * FROM FuncionariosPedidos 

-- Atualizar o stock quando o funcionário confeciona um produto

delimiter $$
create procedure atualizarStockFromFunc (in Funcionario int, in Produto int, in Quantidade int)
BEGIN 

declare erro bool default 0;
declare continue handler for sqlexception set erro=1;
start transaction;

Insert into FuncionariosProdutos 
(Funcionario, Produto, quantidade, dataConfe)
VALUES
	(Funcionario, Produto, Quantidade, now()); 
    
    Update Produtos set stock=stock+Quantidade 
    WHERE idProduto=Produto;

IF ERRO
THEN rollback;
ELSE COMMIT; 
END IF;
 end $$
 
 -- call atualizarStockFromFunc (6, 4, 10);
 -- select * from Produtos ;
 
 -- Vai substituir o funcionário despedido na tabela FuncionariosPedidos e eliminar o funcionário despedido da 
 -- tabela Funcionarios

-- drop procedure substiuFun
delimiter $$
create procedure substiuFun (in Funcionariodes int, in Funcionariosub int)

BEGIN 
declare erro bool default 0;
declare continue handler for sqlexception set erro=1;
start transaction;

Update FuncionariosPedidos set Funcionario=Funcionariosub
where Funcionario=Funcionariodes; 

delete from Funcionarios 
where idFuncionario=Funcionariodes; 

IF ERRO
THEN rollback;
ELSE COMMIT; 
END IF;
 end $$
 
 -- select * from Funcionarios;
--  SELECT * from FuncionariosPedidos;  
-- call substiuFun (4, 3); 


    