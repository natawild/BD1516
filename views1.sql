-- 

-- Criação de view mostra lista de produtos e preço ; 
-- DELETE FROM Preçario
CREATE VIEW Preçario AS 
SELECT nome, preco AS 'Preço por unidade'
FROM Produtos
order by nome; 
-- SELECT * FROM Preçario; 


-- Lista de Funcionário com respetivos horarios
CREATE VIEW Horarios AS 
SELECT nome, horario 
FROM Funcionarios; 
-- SELECT * FROM Horarios; 


-- Informação dos Clientes 
-- drop view InformacaoCliente
CREATE VIEW InformacaoCliente AS 
SELECT nome AS 'Nome', nrCartaoCidadao AS 'CC', nrContribuinte as 'NIF', concelho, telemovel
FROM Clientes; 
-- Select * from InformacaoCliente



-- Compras dos clientes 
-- drop view compraCliente
create view compraCliente as 
select distinct idCliente, c.nome as 'Nome Cliente', pp.quantidade, p.nome as 'Nome Produto', 
p.preco, pe.idPedido as 'Pedido'
from Clientes c  inner join Pedidos pe on pe.Cliente=c.idCliente
                inner join PedidosProdutos pp on pp.Pedido=pe.idPedido
                inner join Produtos p on pp.Produto=p.idProduto
				Order by pe.idPedido; 
-- Select * from compraCliente; 
    

                
                
                


