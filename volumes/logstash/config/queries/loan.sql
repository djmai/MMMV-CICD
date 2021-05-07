SELECT
	L.NO_CREDITO, 
	L.RELACION, 
	L.TIPO_CREDITO, 
	L.NOMBRE_PRODUCTO, 
	L.PROD_ICBS, 
	L.PLAZO, 
	L.TASA_INT, 
	L.MONTO_CONTRATADO, 
	L.TIPO_PRODUCTO, 
	L.SALDO_CREDITO, 
	L.TIPO_CARTERA, 
	L.FINALIDAD, 
	L.`DESCRIPCION FINALIDAD`, 
	L.ESTATUS_CREDITO, 
	L.FEC_CONTRATACION_D, 
	L.FEC_TERMINO_D, 
	L.FEC_VENCIMIENTO, 
	S.NO_SOCIO, 
	S.SUCURSAL, 
	S.COLONIA, 
	S.CIUDAD, 
	S.ESTADO, 
	S.REGION, 
	S.EMPLEO, 
	S.GENERO, 
	S.`DEPENDIENTES ECON`, 
	S.`ACTIVIDAD ECONOMICA`, 
	S.`ESTADO CIVIL`, 
	S.`FECHA DE NACIMIENTO`, 
	S.`FECHA DE ALTA`, 
	S.`NO CREDITOS`, 
	S.CODIGO_POSTAL, 
	S.`MEDIO POR ENTERADO`, 
	S.`MOTIVO DE INGRESO`, 
	S.`TIPO DE VIVIENDA`, 
	S.`VIVE DESDE`, 
	S.`INGRESO MENSUAL`, 
	S.`NIVEL ACADEMICO`
FROM
	prestamos.loan AS L
	LEFT JOIN
	prestamos.socios AS S
	ON 
		L.NO_SOCIO = S.NO_SOCIO
ORDER BY L.NO_CREDITO