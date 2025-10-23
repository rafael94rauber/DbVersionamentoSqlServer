create or alter   procedure [dbo].[P_RETORNA_TOTAL_CLIENTE55555]
as 
begin 
	select 
		COUNT(1) AS 'Total Clientes'
	,	MAX(DATA_HORA) AS 'ultimo cliente'
	from CLIENTE
end
