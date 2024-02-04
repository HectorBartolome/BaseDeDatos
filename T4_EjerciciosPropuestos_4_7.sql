CREATE TABLE OFICINA(
    COD_OFICINA NUMBER (9) NOT NULL,
    DIRECCION VARCHAR (20) NOT NULL,
    TELEFONO NUMBER (11) NOT NULL,
    DNI_DIR NUMBER (9) NOT NULL,
    CONSTRAINT PK_OFICINA PRIMARY KEY (COD_OFICINA),
    CONSTRAINT FK_DIRECTOR FOREIGN KEY (DNI_DIR) REFERENCES DIRECTOR (DNI_DIR) ON DELETE CASCADE,
    CONSTRAINT CK_OFICINA CHECK (LENGHT (TELEFONO) =9)
);
CREATE TABLE COMERCIAL(
    DNI_COMERCIAL VARCHAR (20) NOT NULL,
    COMISION NUMBER (3) NOT NULL,
    COD_OFICINA NUMBER (9) NOT NULL,
    CONSTRAINT PK_COMERCIAL PRIMARY KEY (DNI_COMERCIAL),
    CONSTRAINT FK_DATOS_PERSONALES FOREIGN KEY (DNI_COMERCIAL) REFERENCES DATOS_PERSONALES (DNI) ON DELETE CASCADE,
    CONSTRAINT FK_OFICINA FOREIGN KEY (COD_OFICINA) REFERENCES OFICINA (COD_OFICINA) ON DELETE CASCADE,
    CONSTRAINT CK_COMISION CHECK (COMISION>0 AND COMISION<100)
);
ALTER TABLE OFICINA ADD CONSTRAINT FK_COMERCIAL FOREIGN KEY (DNI) REFERENCES COMERCIAL (DNI) ON DELETE CASCADE

CREATE TABLE VENDEDOR (
    DNI_VENDEDOR NUMBER (9),
    TURNO NUMBER (2) NOT NULL,
    COD_OFICINA NUMBER (9) NOT NULL,
    CONSTRAINT PK_VENDEDOR PRIMARY KEY (DNI_VENDEDOR),
    CONSTRAINT FK_DATOS_PERSONALES FOREIGN KEY (DNI_VENDEDOR) REFERENCES DATOS_PERSONALES (DNI) ON DELETE CASCADE,
    CONSTRAINT FK_OFICINA FOREIGN KEY (COD_OFICINA) REFERENCES OFICINA (COD_OFICINA) ON DELETE CASCADE,
    CONSTRAINT CK_VENDEDOR CHECK (TURNO IN ('MAÑANA','TARDE', 'NOCHE'))
);