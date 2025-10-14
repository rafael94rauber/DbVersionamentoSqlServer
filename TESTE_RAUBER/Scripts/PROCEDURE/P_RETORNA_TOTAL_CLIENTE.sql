
create or alter procedure P_RETORNA_TOTAL_CLIENTE
as 
begin 
	select COUNT(1) AS 'Total Clientes'
	from CLIENTE
end
