SELECT * FROM ComprasDevolução


-- Calcular valor total em compras 
SELECT 
	SUM(total_compra) AS 'Total Compras' -- Este comando AS serve para identificar a coluna
FROM
	ComprasDevolução


	
-- Calcular valor total em devoluções
SELECT 
	SUM(total_devolução) AS 'Total Devolução' -- Este comando AS serve para identificar a coluna
FROM
	ComprasDevolução



-- Contar o total de pedidos de compras ou devolução

SELECT 
	COUNT(*) AS 'Total Devoluções'
FROM
	ComprasDevolução





-- Total de compras efetuadas 

SELECT
	COUNT(total_compra) AS 'Compra'
FROM
	ComprasDevolução




-- Total de devoluções 

SELECT
	COUNT(total_devolução) AS 'Devolução'
FROM
	ComprasDevolução



-- Exibir faixa de valores unitários dos produtos

SELECT
DISTINCT valor_unitário -- Retorna os valores
FROM
	ComprasDevolução
ORDER BY valor_unitário ASC -- Os valores ficam agrupados e crescente



-- Exibir o valor máximo

SELECT
	MAX(valor_unitário) AS 'Valor Máximo'
FROM
	ComprasDevolução



-- Exibir o valor mínimo

SELECT
	MIN(valor_unitário) AS 'Valor Mínimo'
FROM
	ComprasDevolução


-- Exibir o valor máximo e mínimo

SELECT
	MAX(valor_unitário) AS 'Valor máximo',
	MIN(valor_unitário) AS 'Valor mínimo'
FROM
	ComprasDevoluçao



-- Exibir média

SELECT
	 AVG(valor_unitário) AS 'Média de Preço'
FROM
 ComprasDevolução


 -- Quantidade de compra ou devolução de pedido

 SELECT
	COUNT(*) 'Qde Compra/Devolução'
FROM
	ComprasDevolução
GROUP BY nome_produto

-- Quantidade de compra ou devolução por pedido

SELECT 
	nome_produto,
	COUNT(*) AS 'Qde compra/devolução'
FROM
	ComprasDevolução
GROUP BY nome_produto



-- Valor total de cada produto comprado

SELECT
	nome_produto,
	SUM(total_compra) AS 'Tot.compra'
FROM
	ComprasDevolução
GROUP BY nome_produto



-- Valor total de cada produto devolvido

SELECT
	nome_produto,
	SUM(total_devolução) AS 'Tot.Devolução'
FROM
	ComprasDevolução

WHERE total_devolução > 0
GROUP BY nome_produto


-- Valor total de compra por departamento

SELECT
	departamento,
	SUM(total_compra) AS 'Tot.Compra'
FROM
ComprasDevolução
GROUP BY departamento


-- Valor total de devolução por departamento

SELECT
	departamento,
	SUM(total_devolução) AS 'Tot.Devolução'
FROM
	ComprasDevolução
GROUP BY departamento



-- Média de compra por produto

SELECT
	nome_produto,
	AVG(total_compra)
FROM
	ComprasDevolução
GROUP BY nome_produto



-- Valor máximo de pedido por departamento

SELECT
	departamento,
	MAX(total_compra) AS 'Máximo valor de compra'
FROM
	ComprasDevolução
GROUP BY departamento


-- Máximo e Mínimo valor de pedido por departamento

SELECT
	departamento,
	MAX(total_compra) AS 'Máximo valor de compra',
	MIN(total_compra) AS 'Mínimo valor de compra'
FROM
	ComprasDevolução
GROUP BY departamento


-- Valor total de compra por departamento por ordem  decrescente

SELECT
	departamento,
	SUM(total_compra) AS 'Tot.Compra'
FROM
	ComprasDevolução
GROUP BY departamento
ORDER BY SUM(total_compra) DESC


-- Quantidade de compra ou devolução por pedido maior que 2

SELECT
	nome_produto,
	COUNT(nome_produto) AS 'Total por Compra/Devolução'
FROM
	ComprasDevolução
GROUP BY nome_produto
HAVING COUNT(nome_produto) > 2


-- Contar total de pedidos de compras ou devoluções



SELECT
	nome_produto,
	COUNT(*) AS 'Total compras/devoluções'
FROM
	ComprasDevolução
WHERE departamento = 'Elétrica'
GROUP BY nome_produto
HAVING COUNT(*) > 1 -- Condição depois que eu fiz o agrupamento




