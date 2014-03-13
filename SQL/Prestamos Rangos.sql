select *,
Edad=DATEDIFF(Year,FechadeNacimiento,'20131231'), 
AntiguedadDomicilio=DATEDIFF(month,Desdecuandovive,'20131231'),
AntiguedadTrabajo=DATEDIFF(month,AntiguedadDelTrabajo,'20131231'),
AntiguedadCompra=DATEDIFF(month,FechaDelPrimerPrestamo,'20131231')
into VentasCreditoPrestamos_Final01
from VentasCreditoPrestamos_Final

select *,
	case 
	sexo when 'M' then '1 Hombre' 
	when 'F' then '2 Mujer'
	else '3 Invalido' end RangoSexo,
	case 
	when Edad <=22 then '1 <=22' 
	when Edad between 23 and 25 then '2 23-25'
	when Edad between 26 and 30 then '3 26-30'
	when Edad between 31 and 35 then '4 31-35'
	when Edad between 36 and 40 then '5 36-40'
	when Edad between 41 and 50 then '6 41-50'
	when Edad between 51 and 60 then '7 51-60'
	else '8 >=61' end as RangoEdad,
	case 
	TipodeCasa when 'P' then '1 Propia' 
	when 'R' then '2 Rentada' 
	when 'F' then '3 Familiar' 
	when 'H' then '4 Husped' 
	else '5 Otros' end RangoTipodeCasa,
	case 
	when AntiguedadDomicilio <6	then '1 <6'
	when AntiguedadDomicilio between 6 and 12  then '2 6-12'
	when AntiguedadDomicilio between 12 and 24 then '3 12-24'
	when AntiguedadDomicilio between 24 and 36 then '4 24-36'
	when AntiguedadDomicilio between 36 and 48 then '5 36-48'
	else '6 >48' end as RangoAntiguedadDom,
	case 
    when AntiguedadTrabajo <6	then '1 <6'
	when AntiguedadTrabajo between 6 and 12  then '2 6-12'
	when AntiguedadTrabajo between 12 and 24 then '3 12-24'
	when AntiguedadTrabajo between 24 and 36 then '4 24-36'
	when AntiguedadTrabajo between 36 and 48 then '5 36-48'
	else '6 >48' end as RangoAntiguedadTrab,
	case
	when IngresoMensual between 0 and 3 then '1 0-3'
	when IngresoMensual between 4 and 6 then '2 4-6'
	when IngresoMensual between 7 and 9 then '3 7-9'
	when IngresoMensual between 10 and 12 then '4 10-12'
	when IngresoMensual between 13 and 15 then '5 13-15'
	when IngresoMensual between 16 and 20 then '6 16-20'
	else '7 >=21' end as RangoIngresoMens,
	case
	EstadoCivil when 'S' then '1 S'
	when 'C' then '2 C'
	when 'V' then '3 V'
	when 'D' then '4 D'
	when 'U' then '5 U'
	else 'Otros' end RangoEstadoCivil,
	case
	when Escolaridad in (1,2,3,4,5,6) then cast (Escolaridad as char(2)) 
	else 'Invalido' end RangoEscolaridad,
	case 
    when AntiguedadCompra <6	then '1 <6'
	when AntiguedadCompra between 6 and 12  then '2 6-12'
	when AntiguedadCompra between 12 and 24 then '3 12-24'
	when AntiguedadCompra between 24 and 36 then '4 24-36'
	when AntiguedadCompra between 36 and 48 then '5 36-48'
	else '6 >48' end as RangoAntiguedadCompra
	into VentasCreditoPrestamos_Final03
	from VentasCreditoPrestamos_Final01
	
	select count(*) from VentasCreditoPrestamos_Final03
	--4,989,549s