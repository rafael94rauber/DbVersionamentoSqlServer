
ALTER   procedure [dbo].[P_RETORNA_TOTAL_CLIENTE]
as 
begin 
	select 
		COUNT(1) AS 'Total Clientes'
	,	MAX(DATA_HORA) AS 'ultimo Cadastro Realizado'
	,	MIN(DATA_HORA) AS 'PRIMEIRO REGISTRO'	
	,	'TESTE' AS 'COLUNA NOVA'
	from CLIENTE
end
