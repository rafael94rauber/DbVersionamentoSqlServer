create procedure [dbo].[P_RETORNA_TOTAL_CLIENTE_NOVA_VERSAO_99677669]
as 
begin 
	select 
		COUNT(1) AS 'Total Clientes'
	,	MAX(DATA_HORA) AS 'ultimo cliente'
	,	MIN(DATA_HORA) AS 'ultimo cliente'
	from CLIENTE
end