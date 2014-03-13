use VentasPrestamos
go

--select *,VtaCred=cast(importe+interesesFinanciar+SaldoPrestamoAnterior as bigint)
--into VentasCreditoPrestamos01
--from dbo.VentasCreditoPrestamos

select distinct NumeroCliente
into VentasCreditoPrestamos02
from VentasCreditoPrestamos01

SELECT a.*, b.Sexo, b.FechadeNacimiento, b.TipodeCasa, b.NumDeDependientes, b.DesdeCuandoVive, b.AntiguedaddelTrabajo, b.IngresoMensual,b.EstadoCivil, b.Escolaridad
INTO VentasCreditoPrestamos03
FROM VentasCreditoPrestamos02 a
LEFT JOIN ODS.Dic2013.dbo.MaeDirectorio b
	ON (a.NumeroCliente=b.NumeroCliente)
GO

SELECT a.*, b.FechaDelPrimerPrestamo
INTO VentasCreditoPrestamos04
FROM VentasCreditoPrestamos03 a
LEFT JOIN ODS.Dic2013.dbo.CreHistoricoCredSem5  b
	ON (a.NumeroCliente=b.NumeroCliente)

select a.*,
b.Sexo,
b.FechadeNacimiento,
b.TipodeCasa,
b.NumDeDependientes,
b.DesdeCuandoVive,
b.AntiguedaddelTrabajo,
b.IngresoMensual,
b.EstadoCivil,
b.Escolaridad,
b.FechaDelPrimerPrestamo
into VentasCreditoPrestamos_Final
from VentasCreditoPrestamos01 a
left join VentasCreditoPrestamos04 b
 on (a.NumeroCliente=b.NumeroCliente)
 
 select top 1 * from VentasCreditoPrestamos_Final