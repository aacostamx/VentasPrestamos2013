USE VentasCreditoPrestamos
GO

SELECT MONTH(FechaMovimiento) AS Mes, 
       COUNT(*) AS Totalmovimientos,
       SUM(CAST(importe+interesesFinanciar+SaldoPrestamoAnterior AS BIGINT)) PrestImpo
FROM VentasCreditoPrestamos
GROUP BY MONTH(FechaMovimiento)
ORDER BY MONTH(FechaMovimiento)


--Numero de operaciones Ventas a credito Prestamos
select count(*)PrestOpe from ODS.Dic2013.dbo.movMensualMovtosPrestamos where Clavemovimiento = 'S' AND TipoMovimiento = 'A' and numeroTienda not in (0,8003,8002) and FlagNafinsa = 0
--134,899

--Ventas a credito Prestamos Importe
select sum(cast(importe+interesesFinanciar+SaldoPrestamoAnterior as bigint)) PrestImpo from ODS.Dic2013.dbo.movMensualMovtosPrestamos where Clavemovimiento = 'S'  AND TipoMovimiento = 'A' and FlagNafinsa = 0
--1,323,285,682

select distinct NumeroCliente
into VentasCreditoPrestamos01
from VentasCreditoPrestamos

SELECT a.*, b.Sexo, b.FechadeNacimiento, b.TipodeCasa, b.NumDeDependientes, b.DesdeCuandoVive, b.AntiguedaddelTrabajo, b.IngresoMensual,b.EstadoCivil, b.Escolaridad,c.FechaDelPrimerPrestamo
INTO VentasCreditoPrestamos02
FROM VentasCreditoPrestamos01 a
LEFT JOIN ODS.Dic2013.dbo.MaeDirectorio b
	ON (a.NumeroCliente=b.NumeroCliente)
LEFT JOIN ODS.Dic2013.dbo.CreHistoricoCredSem5  c
	ON (a.NumeroCliente=c.NumeroCliente)
