CREATE OR ALTER procedure [dbo].[P_RETORNA_TOTAL_CLIENTE_TESTE_TCC]
as 
begin 
	select 
		COUNT(1) AS 'Total Clientes'
	,	MAX(DATA_HORA) AS 'ultimo cliente'
	from CLIENTE
end
