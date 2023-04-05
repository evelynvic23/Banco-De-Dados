SELECT * FROM DimEmployee





	-- //////////////////////////////////////////////////////////////////////
	
SELECT
DISTINCT DepartmentName -- Não deixa os valores se repetirem
FROM
	DimEmployee
ORDER BY DepartmentName ASC -- Os valores ficam agrupados e crescente


	-- //////////////////////////////////////////////////////////////////////

SELECT 
	COUNT(*) AS 'Total de Funcionários da Contoso'
FROM
	DimEmployee


-- //////////////////////////////////////////////////////////////////////


SELECT
DepartmentName,
	COUNT(*) 'Funcionários por Departamento'
FROM
	DimEmployee
GROUP BY DepartmentName




-- //////////////////////////////////////////////////////////////////////


SELECT
	DepartmentName,
	COUNT(*) 'Funcionários por Departamento em ordem crescente'
FROM
	DimEmployee
GROUP BY DepartmentName 
ORDER BY 'Funcionários por Departamento em ordem crescente' ASC -- Os valores ficam agrupados e crescente



-- //////////////////////////////////////////////////////////////////////



SELECT
	COUNT(*) 'Número de Funcionários do sexo Masculino e Feminino'
FROM
	DimEmployee
ORDER BY
	Gender ASC
	
	-- ASC (Crescente) 

