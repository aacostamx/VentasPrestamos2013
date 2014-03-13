---Genera las operaciones e importe de Prestamos
select count(*) from ods.dic2013.dbo.movMensualMovtosPrestamos where Clavemovimiento = 'S' AND TipoMovimiento = 'A'

select sum(cast(importe+interesesFinanciar+SaldoPrestamoAnterior as bigint)) from ods.dic2013.dbo.movMensualMovtosPrestamos where Clavemovimiento = 'S'  AND TipoMovimiento = 'A'
