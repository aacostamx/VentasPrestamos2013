use Pruebas
go

/*--------------------------Prestamos Dic2013----------------------*/

--Numero de operaciones Ventas a credito Prestamos
select count(*)PrestOpe from ODS.Dic2013.dbo.movMensualMovtosPrestamos where Clavemovimiento = 'S' AND TipoMovimiento = 'A' and numeroTienda not in (0,8003,8002) and FlagNafinsa = 0
--134,899

--Ventas a credito Prestamos Importe
select sum(cast(importe+interesesFinanciar+SaldoPrestamoAnterior as bigint)) PrestImpo from ODS.Dic2013.dbo.movMensualMovtosPrestamos where Clavemovimiento = 'S'  AND TipoMovimiento = 'A' and FlagNafinsa = 0
--1,323,285,682

--select top 1 NumeroCliente,importe,interesesFinanciar,SaldoPrestamoAnterior,fechamovimiento from ODS.Dic2013.dbo.movMensualMovtosPrestamos
