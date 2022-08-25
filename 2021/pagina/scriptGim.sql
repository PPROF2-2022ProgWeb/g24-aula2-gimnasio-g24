/*   SCRIPT SQL  - Tablas con Restricciones -   */

CREATE TABLE USUARIO
       (
       ID_USUARIO INT NOT NULL AUTO_INCREMENT,                              
       NOMBRE_USUARIO VARCHAR(50) NOT NULL,                              
       CLAVE VARCHAR(100) NOT NULL,                              
       PRIMARY KEY
               (
               ID_USUARIO
               )
       );



CREATE TABLE MAQUINA
       (
       ID_MAQUINA INT NOT NULL AUTO_INCREMENT,                              
       DESCRIPCION VARCHAR(100) NOT NULL,                              
       PRIMARY KEY
               (
               ID_MAQUINA
               )
       );



CREATE TABLE TIPO_PLAN
       (
       ID_TIPO_PLAN INT NOT NULL AUTO_INCREMENT,                              
       DESCRIPCION VARCHAR(100) NOT NULL,                              
       EDAD_ACEPTADA_DESDE INT NOT NULL,                              
       EDAD_ACEPTADA_HASTA INT NOT NULL,                              
       PESO_ACEPTADO_DESDE INT NOT NULL,                              
       PESO_ACEPTADO_HASTA INT NOT NULL,                              
       PRIMARY KEY
               (
               ID_TIPO_PLAN
               )
       );



CREATE TABLE TIPO_RUTINA
       (
       ID_TIPO_RUTINA INT NOT NULL AUTO_INCREMENT,                              
       DESCRIPCION VARCHAR(100) NOT NULL,                              
       PRIMARY KEY
               (
               ID_TIPO_RUTINA
               )
       );



CREATE TABLE MUSCULO
       (
       ID_MUSCULO INT NOT NULL AUTO_INCREMENT,                              
       DESCRIPCION VARCHAR(100) NOT NULL,                              
       PRIMARY KEY
               (
               ID_MUSCULO
               )
       );



CREATE TABLE LOCALIDAD
       (
       ID_LOCALIDAD INT NOT NULL AUTO_INCREMENT,                              
       DESCRIPCION VARCHAR(100) NOT NULL,                              
       PRIMARY KEY
               (
               ID_LOCALIDAD
               )
       );



CREATE TABLE SALUD
       (
       ID_SALUD INT NOT NULL AUTO_INCREMENT,                              
       DESCRIPCION VARCHAR(200) NOT NULL,                              
       PRIMARY KEY
               (
               ID_SALUD
               )
       );



CREATE TABLE CLIENTE
       (
       ID_CLIENTE INT NOT NULL AUTO_INCREMENT,                              
       ID_USUARIO INT NOT NULL,                              
       ID_LOCALIDAD INT NOT NULL,                              
       DNI BIGINT NOT NULL,                              
       NOMBRE VARCHAR(100) NOT NULL,                              
       APELLIDO VARCHAR(100) NOT NULL,                              
       CORREO_ELECTRONICO VARCHAR(100) NOT NULL,                              
       FECHA_NAC DATETIME NOT NULL,                              
       PESO DECIMAL(4,1) NOT NULL,                              
       ESTATURA DECIMAL(4,1) NOT NULL,                              
       IMC DECIMAL(4,1) NOT NULL,                              
       PRIMARY KEY
               (
               ID_CLIENTE
               ),
       FOREIGN KEY
               (
               ID_USUARIO
               )
          REFERENCES USUARIO
               (
               ID_USUARIO
               ),
       FOREIGN KEY
               (
               ID_LOCALIDAD
               )
          REFERENCES LOCALIDAD
               (
               ID_LOCALIDAD
               )
       );



CREATE TABLE ADMINISTRADOR
       (
       ID_ADMINISTRADOR INT NOT NULL AUTO_INCREMENT,                              
       ID_USUARIO INT NOT NULL,                              
       ID_LOCALIDAD INT NOT NULL,                              
       NOMBRE VARCHAR(100) NOT NULL,                              
       APELLIDO VARCHAR(100) NOT NULL,                              
       DNI BIGINT NOT NULL,                              
       PRIMARY KEY
               (
               ID_ADMINISTRADOR
               ),
       FOREIGN KEY
               (
               ID_USUARIO
               )
          REFERENCES USUARIO
               (
               ID_USUARIO
               ),
       FOREIGN KEY
               (
               ID_LOCALIDAD
               )
          REFERENCES LOCALIDAD
               (
               ID_LOCALIDAD
               )
       );



CREATE TABLE PLAN_ENTRENAMIENTO
       (
       ID_PLAN_ENTRENAMIENTO INT NOT NULL AUTO_INCREMENT,                              
       ID_ADMINISTRADOR INT NOT NULL,                              
       ID_CLIENTE INT NOT NULL,                              
       ID_TIPO_PLAN INT NOT NULL,                              
       OBSERVACION VARCHAR(500) NULL,                              
       ACEPTADO INT NOT NULL,                              
       FECHA_ALTA DATETIME NOT NULL,                              
       PRIMARY KEY
               (
               ID_PLAN_ENTRENAMIENTO
               ),
       FOREIGN KEY
               (
               ID_ADMINISTRADOR
               )
          REFERENCES ADMINISTRADOR
               (
               ID_ADMINISTRADOR
               ),
       FOREIGN KEY
               (
               ID_CLIENTE
               )
          REFERENCES CLIENTE
               (
               ID_CLIENTE
               ),
       FOREIGN KEY
               (
               ID_TIPO_PLAN
               )
          REFERENCES TIPO_PLAN
               (
               ID_TIPO_PLAN
               )
       );



CREATE TABLE RUTINA
       (
       ID_RUTINA INT NOT NULL AUTO_INCREMENT,                              
       ID_PLAN_ENTRENAMIENTO INT NOT NULL,                              
       ID_TIPO_RUTINA INT NOT NULL,                              
       FECHA_DESDE DATETIME NOT NULL,                              
       FECHA_HASTA DATETIME NOT NULL,                              
       PLANIFICACION VARCHAR(200) NOT NULL,                              
       OBSERVACION VARCHAR(200) NULL,                              
       PRIMARY KEY
               (
               ID_RUTINA
               ),
       FOREIGN KEY
               (
               ID_PLAN_ENTRENAMIENTO
               )
          REFERENCES PLAN_ENTRENAMIENTO
               (
               ID_PLAN_ENTRENAMIENTO
               ),
       FOREIGN KEY
               (
               ID_TIPO_RUTINA
               )
          REFERENCES TIPO_RUTINA
               (
               ID_TIPO_RUTINA
               )
       );



CREATE TABLE DIA_ENTRENAMIENTO
       (
       ID_DIA_ENTRENAMIENTO INT NOT NULL AUTO_INCREMENT,                              
       ID_RUTINA INT NOT NULL,                              
       DESCRIPCION VARCHAR(100) NOT NULL,                              
       NUMERO_DIA INT NOT NULL,                              
       HORARIO_DESDE BIGINT NOT NULL,                              
       HORARIO_HASTA BIGINT NOT NULL,                              
       PERIODO VARCHAR(2) NOT NULL,                              
       PRIMARY KEY
               (
               ID_DIA_ENTRENAMIENTO
               ),
       FOREIGN KEY
               (
               ID_RUTINA
               )
          REFERENCES RUTINA
               (
               ID_RUTINA
               )
       );



CREATE TABLE EJERCICIO
       (
       ID_EJERCICIO INT NOT NULL AUTO_INCREMENT,                              
       ID_MUSCULO INT NOT NULL,                              
       ID_DIA_ENTRENAMIENTO INT NOT NULL,                              
       ID_MAQUINA INT NOT NULL,                              
       TIEMPO_USO_MAQUINA INT NOT NULL,                              
       DESCANSO VARCHAR(50) NOT NULL,                              
       UNIDAD_DESCANSO VARCHAR(50) NOT NULL,                              
       CANTIDAD_REPETICIONES INT NOT NULL,                              
       UNIDAD_REPETICIONES VARCHAR(50) NOT NULL,                              
       ESTADO_MAQUINA INT NOT NULL,                              
       EJERCICIO_REALIZADO INT NOT NULL,                              
       UNIDAD_TIEMPO_USO VARCHAR(50) NOT NULL,                              
       CANTIDAD_SERIES INT NOT NULL,                              
       PRIMARY KEY
               (
               ID_EJERCICIO
               ),
       FOREIGN KEY
               (
               ID_MUSCULO
               )
          REFERENCES MUSCULO
               (
               ID_MUSCULO
               ),
       FOREIGN KEY
               (
               ID_DIA_ENTRENAMIENTO
               )
          REFERENCES DIA_ENTRENAMIENTO
               (
               ID_DIA_ENTRENAMIENTO
               ),
       FOREIGN KEY
               (
               ID_MAQUINA
               )
          REFERENCES MAQUINA
               (
               ID_MAQUINA
               )
       );



CREATE TABLE MUSCULO_MAQUINA
       (
       ID_MAQUINA INT NOT NULL,                              
       ID_MUSCULO INT NOT NULL,                              
       PRIMARY KEY
               (
               ID_MAQUINA,
               ID_MUSCULO
               ),
       FOREIGN KEY
               (
               ID_MAQUINA
               )
          REFERENCES MAQUINA
               (
               ID_MAQUINA
               ),
       FOREIGN KEY
               (
               ID_MUSCULO
               )
          REFERENCES MUSCULO
               (
               ID_MUSCULO
               )
       );



CREATE TABLE SALUD_CLIENTE
       (
       ID_SALUD INT NOT NULL,                              
       ID_CLIENTE INT NOT NULL,                              
       PRIMARY KEY
               (
               ID_SALUD,
               ID_CLIENTE
               ),
       FOREIGN KEY
               (
               ID_SALUD
               )
          REFERENCES SALUD
               (
               ID_SALUD
               ),
       FOREIGN KEY
               (
               ID_CLIENTE
               )
          REFERENCES CLIENTE
               (
               ID_CLIENTE
               )
       );




