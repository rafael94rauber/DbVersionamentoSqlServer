create procedure P_RETORNA_TOTAL_CLIENTE
as 
begin 
	select COUNT(1)
	from CLIENTE
end