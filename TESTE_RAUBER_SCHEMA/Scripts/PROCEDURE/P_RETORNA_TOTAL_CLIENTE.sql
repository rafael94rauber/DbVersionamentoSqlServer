ALTER   procedure [dbo].[P_RETORNA_TOTAL_CLIENTE]
as 
begin 
	select 
		'TESTE' AS 'COLUNA NOVA'
	,	MIN(DATA_HORA) AS 'PRIMEIRO REGISTRO'		
	,	COUNT(1) AS 'Total Clientes'
	,	MAX(DATA_HORA) AS 'ultimo Cadastro Realizado'	
	from CLIENTE
end
