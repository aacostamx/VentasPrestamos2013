use VentasPrestamos
go

--Total de Movimientos de por mes de Muebles Ventas a CREDITO
SELECT MONTH(FechaMovimiento) AS Mes, 
       COUNT(*) AS Totalmovimientos,
       SUM(CAST(importe+interesesFinanciar+SaldoPrestamoAnterior AS BIGINT)) PrestImpo
FROM VentasCreditoPrestamos
GROUP BY MONTH(FechaMovimiento)
ORDER BY MONTH(FechaMovimiento)

