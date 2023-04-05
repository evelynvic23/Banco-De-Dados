SELECT * FROM DimEmployee





	-- //////////////////////////////////////////////////////////////////////
	
SELECT
DISTINCT DepartmentName -- N�o deixa os valores se repetirem
FROM
	DimEmployee
ORDER BY DepartmentName ASC -- Os valores ficam agrupados e crescente


	-- //////////////////////////////////////////////////////////////////////

SELECT 
	COUNT(*) AS 'Total de Funcion�rios da Contoso'
FROM
	DimEmployee


-- //////////////////////////////////////////////////////////////////////


SELECT
DepartmentName,
	COUNT(*) 'Funcion�rios por Departamento'
FROM
	DimEmployee
GROUP BY DepartmentName




-- //////////////////////////////////////////////////////////////////////


SELECT
	DepartmentName,
	COUNT(*) 'Funcion�rios por Departamento em ordem crescente'
FROM
	DimEmployee
GROUP BY DepartmentName 
ORDER BY 'Funcion�rios por Departamento em ordem crescente' ASC -- Os valores ficam agrupados e crescente



-- //////////////////////////////////////////////////////////////////////



SELECT
	COUNT(*) 'N�mero de Funcion�rios do sexo Masculino e Feminino'
FROM
	DimEmployee
ORDER BY
	Gender ASC
	
	-- ASC (Crescente) 

