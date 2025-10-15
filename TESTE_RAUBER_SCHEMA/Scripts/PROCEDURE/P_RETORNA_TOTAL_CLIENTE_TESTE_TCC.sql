alter   procedure [dbo].[P_RETORNA_TOTAL_CLIENTE_TESTE_TCC]
as 
begin 
	select 
		COUNT(1) AS 'Total Clientes'
	,	MAX(DATA_HORA) AS 'ultimo cliente'
	,	len(NOME) as 'tamanho do nome'
	from CLIENTE
	group by NOME
end
