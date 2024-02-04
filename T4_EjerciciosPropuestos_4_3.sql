 CREATE TABLE FABRICANTE(
    COD_FABRICANTE NUMBER (9) NOT NULL,
    FABRICANTE VARCHAR (20) NOT NULL,
    CONSTRAINT PK_FABRICANTE PRIMARY KEY(COD_FABRICANTE)
 )
 ; 
  CREATE TABLE MARCA(
    COD_MARCA NUMBER (9) NOT NULL,
    MARCA VARCHAR (20) NOT NULL,
    CONSTRAINT PK_MARCA PRIMARY KEY(COD_MARCA)
 )
 ; 
 CREATE TABLE VEHICULO(
    COD_VEHICULO NUMBER (9) NOT NULL,
    MODELO VARCHAR (20) NOT NULL,
    TIPO VARCHAR (15) NOT NULL,
    COLOR VARCHAR (15) NOT NULL,
    DNI_PROFESOR VARCHAR (9) NOT NULL,
    COD_FABRICANTE NUMBER (9) NOT NULL,
    COD_MARCA NUMBER (9) NOT NULL,
    CONSTRAINT PK_VEHICULO PRIMARY KEY(COD_VEHICULO),
    CONSTRAINT FK_FABRICANTE FOREIGN KEY(DNI_PROFESOR) REFERENCES PROFESOR(DNI_PROFESOR),
    CONSTRAINT FK_MARCA FOREIGN KEY(COD_MARCA) REFERENCES CICLOFORM(COD_CICLO)
 )
 ; 
  CREATE TABLE CLIENTE(
    DNI_CLIENTE NUMBER (9) NOT NULL,
    NOMBRE VARCHAR (20) NOT NULL,
    AP1 VARCHAR (15) NOT NULL,
    AP2 VARCHAR (15) NULL,
    DOMICILIO VARCHAR (15) NOT NULL,
    NUM_TARJETA NUMBER (12) NOT NULL,
    CONSTRAINT PK_CLIENTE PRIMARY KEY(DNI_CLIENTE),
 )
 ; 
   CREATE TABLE CURSO(
    COD_CURSO NUMBER (9) NOT NULL,
    DESCRIPCION VARCHAR (200) NOT NULL,
    NUM_HORAS NUMBER (2) NOT NULL,
    FECHA NUMBER (6) NOT NULL,
    CONSTRAINT PK_CURSO PRIMARY KEY(COD_CURSO)
)
;
eJERCICIO3_3_T_3