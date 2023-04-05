SELECT * FROM ComprasDevolu��o


-- Calcular valor total em compras 
SELECT 
	SUM(total_compra) AS 'Total Compras' -- Este comando AS serve para identificar a coluna
FROM
	ComprasDevolu��o


	
-- Calcular valor total em devolu��es
SELECT 
	SUM(total_devolu��o) AS 'Total Devolu��o' -- Este comando AS serve para identificar a coluna
FROM
	ComprasDevolu��o



-- Contar o total de pedidos de compras ou devolu��o

SELECT 
	COUNT(*) AS 'Total Devolu��es'
FROM
	ComprasDevolu��o





-- Total de compras efetuadas 

SELECT
	COUNT(total_compra) AS 'Compra'
FROM
	ComprasDevolu��o




-- Total de devolu��es 

SELECT
	COUNT(total_devolu��o) AS 'Devolu��o'
FROM
	ComprasDevolu��o



-- Exibir faixa de valores unit�rios dos produtos

SELECT
DISTINCT valor_unit�rio -- Retorna os valores
FROM
	ComprasDevolu��o
ORDER BY valor_unit�rio ASC -- Os valores ficam agrupados e crescente



-- Exibir o valor m�ximo

SELECT
	MAX(valor_unit�rio) AS 'Valor M�ximo'
FROM
	ComprasDevolu��o



-- Exibir o valor m�nimo

SELECT
	MIN(valor_unit�rio) AS 'Valor M�nimo'
FROM
	ComprasDevolu��o


-- Exibir o valor m�ximo e m�nimo

SELECT
	MAX(valor_unit�rio) AS 'Valor m�ximo',
	MIN(valor_unit�rio) AS 'Valor m�nimo'
FROM
	ComprasDevolu�ao



-- Exibir m�dia

SELECT
	 AVG(valor_unit�rio) AS 'M�dia de Pre�o'
FROM
 ComprasDevolu��o


 -- Quantidade de compra ou devolu��o de pedido

 SELECT
	COUNT(*) 'Qde Compra/Devolu��o'
FROM
	ComprasDevolu��o
GROUP BY nome_produto

-- Quantidade de compra ou devolu��o por pedido

SELECT 
	nome_produto,
	COUNT(*) AS 'Qde compra/devolu��o'
FROM
	ComprasDevolu��o
GROUP BY nome_produto



-- Valor total de cada produto comprado

SELECT
	nome_produto,
	SUM(total_compra) AS 'Tot.compra'
FROM
	ComprasDevolu��o
GROUP BY nome_produto



-- Valor total de cada produto devolvido

SELECT
	nome_produto,
	SUM(total_devolu��o) AS 'Tot.Devolu��o'
FROM
	ComprasDevolu��o

WHERE total_devolu��o > 0
GROUP BY nome_produto


-- Valor total de compra por departamento

SELECT
	departamento,
	SUM(total_compra) AS 'Tot.Compra'
FROM
ComprasDevolu��o
GROUP BY departamento


-- Valor total de devolu��o por departamento

SELECT
	departamento,
	SUM(total_devolu��o) AS 'Tot.Devolu��o'
FROM
	ComprasDevolu��o
GROUP BY departamento



-- M�dia de compra por produto

SELECT
	nome_produto,
	AVG(total_compra)
FROM
	ComprasDevolu��o
GROUP BY nome_produto



-- Valor m�ximo de pedido por departamento

SELECT
	departamento,
	MAX(total_compra) AS 'M�ximo valor de compra'
FROM
	ComprasDevolu��o
GROUP BY departamento


-- M�ximo e M�nimo valor de pedido por departamento

SELECT
	departamento,
	MAX(total_compra) AS 'M�ximo valor de compra',
	MIN(total_compra) AS 'M�nimo valor de compra'
FROM
	ComprasDevolu��o
GROUP BY departamento


-- Valor total de compra por departamento por ordem  decrescente

SELECT
	departamento,
	SUM(total_compra) AS 'Tot.Compra'
FROM
	ComprasDevolu��o
GROUP BY departamento
ORDER BY SUM(total_compra) DESC


-- Quantidade de compra ou devolu��o por pedido maior que 2

SELECT
	nome_produto,
	COUNT(nome_produto) AS 'Total por Compra/Devolu��o'
FROM
	ComprasDevolu��o
GROUP BY nome_produto
HAVING COUNT(nome_produto) > 2


-- Contar total de pedidos de compras ou devolu��es



SELECT
	nome_produto,
	COUNT(*) AS 'Total compras/devolu��es'
FROM
	ComprasDevolu��o
WHERE departamento = 'El�trica'
GROUP BY nome_produto
HAVING COUNT(*) > 1 -- Condi��o depois que eu fiz o agrupamento




