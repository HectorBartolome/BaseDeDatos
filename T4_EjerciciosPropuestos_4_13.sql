SELECT NOMBRE
FROM DATOS_PERSONALES, PROFESOR,IDIOMAPROF, IDIOMA 
WHERE TIPO='PROFESOR' 
AND DESCRIPCION='Español' 
AND DATOS_PERSONALES.DNI=PROFESOR.DNI_PROFESOR 
AND PROFESOR.DNI_PROFESOR=IDIOMAPROF.DNI_PROFESOR 
AND IDIOMAPROF.COD_IDIOMA=IDIOMA.COD_IDIOMA;

SELECT ASIGNATURAS.NOMBRE
FROM CICLOFORM, ASIGNATURA
WHERE CICLOFORM.NOMBRE='DAM'
AND CICLOFORM.COD_CICLO= ASIGNATURA.COD_ASIG;