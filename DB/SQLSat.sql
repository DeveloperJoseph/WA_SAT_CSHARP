---------------------------------------------------------------------------
			              --	DATABASE OF SAT	--
---------------------------------------------------------------------------

DROP DATABASE  DBSatPraco
CREATE DATABASE DBSatPraco
GO
USE DBSatPraco
GO

---------------------------------------------------------------------------
			              --  SAT TABLES --
---------------------------------------------------------------------------

CREATE TABLE CARGO(
ID_CARGO INT PRIMARY KEY NOT NULL IDENTITY,
NOMBRE_CARGO VARCHAR(50) NOT NULL,
);
GO

CREATE TABLE DOCUMENTO(
ID_DOCUMENTO INT PRIMARY KEY NOT NULL IDENTITY,
NOMBRE_DOCUMENTO VARCHAR(30) NOT NULL);
GO

CREATE TABLE ESTADO_CIVIL(
ID_ESTADOCIVIL INT PRIMARY KEY NOT NULL IDENTITY,
DESCRIPCION VARCHAR(30) NOT NULL);
GO


CREATE TABLE NACIONALIDAD(
ID_NACIONALIDAD INT PRIMARY KEY NOT NULL IDENTITY,
NOMBRE_NACIONALIDAD VARCHAR(50) NOT NULL);
GO


CREATE TABLE SEXO(
ID_SEXO INT PRIMARY KEY NOT NULL IDENTITY,
DESCRIPCION VARCHAR(30))
GO

CREATE TABLE Usuario(
ID_USUARIO int primary key NOT NULL IDENTITY,
ID_CARGO INT NOT NULL,
NOMBRE_USUARIO VARCHAR(50) NOT NULL ,
APELLIDO_PATERNO VARCHAR(50) NOT NULL,
APELLIDO_MATERNO VARCHAR(50) NOT NULL,
FECHA_NACIMIENTO DATE NOT NULL,
ID_ESTADOCIVIL INT NOT NULL,
ID_DOCUMENTO INT NOT NULL,
NRO_DOCUMENTO VARCHAR(50) NOT NULL,
ID_SEXO INT NOT NULL,
ID_NACIONALIDAD INT NOT NULL,
DOMICILIO VARCHAR(200) NOT NULL,
CONTACTO BIGINT NOT NULL,
EMAIL VARCHAR(100) NOT NULL,
PWD VARBINARY(8000) NOT NULL);
GO


CREATE TABLE TareaUser(
ID_TAREAUSER int primary key NOT NULL IDENTITY,
ID_SUPERVISOR INT NOT NULL,
ID_USUARIO INT NOT NULL,
FECHA_INICIO DATETIME NOT NULL,
FECHA_FIN DATETIME NOT NULL,
DESCRIPCION VARCHAR(100) NOT NULL)
go

CREATE TABLE RegistroIngreso(
ID_REGISTROINGRESO int primary key NOT NULL IDENTITY,
ID_USUARIO INT,
HORA_INGRESO DATETIME)
GO

CREATE TABLE RegistroSalida(
ID_REGISTROSALIDA int primary key NOT NULL IDENTITY,
ID_USUARIO INT,
HORA_SALIDA DATETIME)
GO


---------------------------------------------------------------------------
			              --  SAT ALTER TABLES --
---------------------------------------------------------------------------


ALTER TABLE Usuario
ADD CONSTRAINT PK_CARGO
FOREIGN KEY(ID_CARGO) REFERENCES CARGO(ID_CARGO);
GO

ALTER TABLE Usuario
ADD CONSTRAINT PK_ESTADO_CIVIL
FOREIGN KEY(ID_ESTADOCIVIL) REFERENCES ESTADO_CIVIL(ID_ESTADOCIVIL);
GO

ALTER TABLE Usuario
ADD CONSTRAINT PK_DOCUMENTO
FOREIGN KEY(ID_DOCUMENTO) REFERENCES DOCUMENTO(ID_DOCUMENTO);
GO

ALTER TABLE USUARIO
ADD CONSTRAINT PK_SEXO
FOREIGN KEY(ID_SEXO) REFERENCES SEXO(ID_SEXO);
GO

ALTER TABLE USUARIO
ADD CONSTRAINT PK_NACIONALIDAD
FOREIGN KEY(ID_NACIONALIDAD) REFERENCES NACIONALIDAD(ID_NACIONALIDAD);
GO


ALTER TABLE RegistroIngreso
ADD CONSTRAINT PK_REGISTROINGRESO
FOREIGN KEY(ID_USUARIO) REFERENCES Usuario(ID_USUARIO);
GO

ALTER TABLE RegistroSalida
ADD CONSTRAINT PK_REGISTRO_SALIDA
FOREIGN KEY(ID_USUARIO) REFERENCES Usuario(ID_USUARIO);
GO

ALTER TABLE TareaUser
ADD CONSTRAINT PK_TAREAUSER_SUPERVISOR
FOREIGN KEY(ID_SUPERVISOR) REFERENCES Usuario(ID_USUARIO);

ALTER TABLE TareaUser
ADD CONSTRAINT PK_TAREAUSER_EMPLEADO
FOREIGN KEY(ID_USUARIO) REFERENCES Usuario(ID_USUARIO);
go

---------------------------------------------------------------------------
			        --  STORE PROCEDURES SAT --
---------------------------------------------------------------------------

---- MANTENIMINETO CARGO ---
CREATE proc sp_ListarCargo
as
declare @success  bit
select @success = 0
begin transaction
	select [ID_CARGO],[NOMBRE_CARGO]
	from CARGO
	order by ID_CARGO ASC;
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_AddCargo
@NOMBRE_CARGO varchar(50)
as
declare @success  bit
select @success = 0
begin transaction
	INSERT INTO CARGO(NOMBRE_CARGO)values(@NOMBRE_CARGO);	
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_UpdateCargo
@ID_CARGO INT,
@NOMBRE_CARGO varchar(50)
as
declare @success  bit
select @success = 0
begin transaction
	UPDATE CARGO SET NOMBRE_CARGO=@NOMBRE_CARGO
	WHERE ID_CARGO=@ID_CARGO;
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
go

create proc sp_DeleteCargo
@ID_CARGO INT
as
declare @success  bit
select @success = 0
begin transaction
	DELETE FROM  CARGO WHERE ID_CARGO=@ID_CARGO;
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
go
------------------------------------------------------
		-- DOCUMENTO --

create proc  sp_AddDocumento
@NOMBRE_DOCUMENTO varchar(30)
as
declare @success  bit
select @success = 0
begin transaction
	INSERT INTO Documento(NOMBRE_DOCUMENTO)
	values(@NOMBRE_DOCUMENTO);	
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_UpdateDocumento
@ID_DOCUMENTO INT,
@NOMBRE_DOCUMENTO varchar(30)
as
declare @success  bit
select @success = 0
begin transaction
	UPDATE Documento SET NOMBRE_DOCUMENTO=@NOMBRE_DOCUMENTO
	WHERE ID_DOCUMENTO=@ID_DOCUMENTO
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_DeleteDocumento
@ID_DOCUMENTO INT
AS
declare @success  bit
select @success = 0
begin transaction
   DELETE FROM DOCUMENTO
   WHERE ID_DOCUMENTO=@ID_DOCUMENTO
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_ListarDocumento
AS
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_DOCUMENTO, NOMBRE_DOCUMENTO 
	FROM DOCUMENTO
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

select * from DOCUMENTO;
go
------------------------------------------------------
		-- ESTADO CIVIL --

create proc sp_ListarEstadoCivil
AS
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_ESTADOCIVIL,DESCRIPCION
	FROM ESTADO_CIVIL;
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc  sp_AddEstadoCivil 
@DESCRIPCION varchar(30)
as
declare @success  bit
select @success = 0
begin transaction
	INSERT INTO ESTADO_CIVIL(DESCRIPCION)
	values(@DESCRIPCION);	
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc  sp_UpdateEstadoCivil
@ID_ESTADOCIVIL INT,
@DESCRIPCION varchar(30)
as
declare @success  bit
select @success = 0
begin transaction
	UPDATE ESTADO_CIVIL SET DESCRIPCION=@DESCRIPCION 
	WHERE ID_ESTADOCIVIL=@ID_ESTADOCIVIL;	
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc  sp_DeleteEstadoCivil
@ID_ESTADOCIVIL INT
as
declare @success  bit
select @success = 0
begin transaction
	DELETE FROM ESTADO_CIVIL 
	WHERE ID_ESTADOCIVIL=@ID_ESTADOCIVIL;
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO


------------------------------------------------------
		-- SEXO --

create proc  sp_ListSexo
as
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_SEXO,DESCRIPCION
	FROM SEXO;
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc  sp_addSexo 
@DESCRIPCION VARCHAR(30)
as
declare @success  bit
select @success = 0
begin transaction
	INSERT INTO SEXO (DESCRIPCION)
	VALUES(@DESCRIPCION);
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO


create proc  sp_UpdateSexo
@ID_SEXO INT,
@DESCRIPCION VARCHAR(30)
as
declare @success  bit
select @success = 0
begin transaction
	UPDATE SEXO SET DESCRIPCION=@DESCRIPCION
	WHERE ID_SEXO=@ID_SEXO
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO


create proc  sp_DeleteSexo
@ID_SEXO INT
as
declare @success  bit
select @success = 0
begin transaction
	DELETE FROM SEXO 
	WHERE ID_SEXO=@ID_SEXO;
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

------------------------------------------------------
		-- NACIONALIDAD --

create proc  sp_ListNacionalidad
as
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_NACIONALIDAD,NOMBRE_NACIONALIDAD
	FROM NACIONALIDAD;
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc  sp_AddNacionalidad
@NOMBRE_NACIONALIDAD VARCHAR(50)
as
declare @success  bit
select @success = 0
begin transaction
	INSERT INTO NACIONALIDAD(NOMBRE_NACIONALIDAD)
	VALUES(@NOMBRE_NACIONALIDAD);
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

 create  proc  sp_UpdateNacionalidad
@ID_NACIONALIDAD INT,
@NOMBRE_NACIONALIDAD VARCHAR(50)
as
declare @success  bit
select @success = 0
begin transaction
	UPDATE NACIONALIDAD SET NOMBRE_NACIONALIDAD=@NOMBRE_NACIONALIDAD
	WHERE ID_NACIONALIDAD=@ID_NACIONALIDAD;
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc  sp_DeleteNacionalidad
@ID_NACIONALIDAD INT
as
declare @success  bit
select @success = 0
begin transaction
	DELETE FROM NACIONALIDAD
	WHERE ID_NACIONALIDAD=@ID_NACIONALIDAD;
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO
------------------------------------------------------
		-- USUARIO --

SELECT ID_CARGO,EMAIL,CONVERT(varchar(100), DECRYPTBYPASSPHRASE('PWD',PWD))
FROM Usuario;
GO

create proc sp_AddUsuario
@ID_CARGO INT,
@NOMBRE_USUARIO VARCHAR(50),
@APELLIDO_PATERNO VARCHAR(50),
@APELLIDO_MATERNO VARCHAR(50),
@FECHA_NACIMIENTO DATE,
@ID_ESTADOCIVIL INT,
@ID_DOCUMENTO INT,
@NRO_DOCUMENTO VARCHAR(50),
@ID_SEXO INT,
@ID_NACIONALIDAD INT,
@DOMICILIO VARCHAR(200),
@CONTACTO BIGINT,
@EMAIL VARCHAR(100),
@PWD VARCHAR(100)
as
declare @success  bit
select @success = 0
begin transaction
	INSERT INTO Usuario(ID_CARGO,NOMBRE_USUARIO,APELLIDO_PATERNO,APELLIDO_MATERNO,FECHA_NACIMIENTO,ID_ESTADOCIVIL,
	ID_DOCUMENTO,NRO_DOCUMENTO,ID_SEXO,ID_NACIONALIDAD,DOMICILIO,CONTACTO,EMAIL,PWD)
	VALUES(@ID_CARGO,@NOMBRE_USUARIO,@APELLIDO_PATERNO,@APELLIDO_MATERNO,@FECHA_NACIMIENTO,@ID_ESTADOCIVIL,@ID_DOCUMENTO,
	@NRO_DOCUMENTO,@ID_SEXO,@ID_NACIONALIDAD,@DOMICILIO,@CONTACTO,@EMAIL,ENCRYPTBYPASSPHRASE('PWD',@PWD));
 BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_UpdateUsuario
@ID_USUARIO INT,
@ID_CARGO INT,
@NOMBRE_USUARIO VARCHAR(50),
@APELLIDO_PATERNO VARCHAR(50),
@APELLIDO_MATERNO VARCHAR(50),
@FECHA_NACIMIENTO DATE,
@ID_ESTADOCIVIL INT,
@ID_DOCUMENTO INT,
@NRO_DOCUMENTO VARCHAR(50),
@ID_SEXO INT,
@ID_NACIONALIDAD INT,
@DOMICILIO VARCHAR(200),
@CONTACTO BIGINT,
@EMAIL VARCHAR(100),
@PWD VARCHAR(100)
as
declare @success  bit
select @success = 0
begin transaction
		UPDATE Usuario SET ID_CARGO=@ID_CARGO, NOMBRE_USUARIO=@NOMBRE_USUARIO,APELLIDO_PATERNO=@APELLIDO_PATERNO,
		APELLIDO_MATERNO=@APELLIDO_MATERNO,FECHA_NACIMIENTO=@FECHA_NACIMIENTO,ID_ESTADOCIVIL=@ID_ESTADOCIVIL,
		ID_DOCUMENTO=@ID_DOCUMENTO,NRO_DOCUMENTO=@NRO_DOCUMENTO,ID_SEXO=@ID_SEXO,ID_NACIONALIDAD=@ID_NACIONALIDAD,
		DOMICILIO=@DOMICILIO,CONTACTO=@CONTACTO,EMAIL=@EMAIL,PWD=ENCRYPTBYPASSPHRASE('PWD',@PWD)
		WHERE ID_USUARIO=@ID_USUARIO;
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_DeleteUsuario
@ID_USUARIO INT
as
declare @success  bit
select @success = 0
begin transaction
		DELETE FROM Usuario
		WHERE ID_USUARIO=@ID_USUARIO
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO


create proc sp_ListaUsuario
as
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_USUARIO,ID_CARGO,NOMBRE_USUARIO,APELLIDO_PATERNO,APELLIDO_MATERNO,
	FECHA_NACIMIENTO,ID_ESTADOCIVIL, ID_DOCUMENTO,NRO_DOCUMENTO,ID_SEXO,ID_NACIONALIDAD,
	DOMICILIO,CONTACTO , EMAIL
	FROM Usuario;
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_ListaSupervisores
as
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_USUARIO AS USUARIO,NOMBRE_USUARIO AS NAME
	FROM Usuario 
	WHERE ID_CARGO = 2
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

create proc sp_ListaEmpleados
as
declare @success  bit
select @success = 0
begin transaction
	SELECT ID_USUARIO,NOMBRE_USUARIO
	FROM Usuario 
	WHERE ID_CARGO = 3
BEGIN
	if(@@ERROR=0 and @@ROWCOUNT>=1)
		select @success=1
	end
if @success = 1
	commit transaction
  else
	rollback transaction
return
GO

 
CREATE proc LoginSystem 
@ID_CARGO INT,
@EMAIL VARCHAR(100),
@PWD VARCHAR(100)
as
 declare @success bit
 select @success=0
   begin transaction 
      select ID_CARGO,EMAIL,PWD
      from Usuario
      where ID_CARGO=@ID_CARGO and EMAIL=@EMAIL
	  and Convert(varchar(100),DECRYPTBYPASSPHRASE('PWD',PWD))=@PWD
   begin 
		if(@@ERROR=0 and @@ROWCOUNT=1)
			select @success=1
		end
if @success=1
	commit transaction
  else
	 rollback transaction
return
GO

------------------------------------------------------
		-- TAREA USUARIO --
		 
CREATE proc sp_AddTareaUser 
@ID_SUPERVISOR INT,
@ID_USUARIO INT,
@FECHA_INICIO DATETIME,
@FECHA_FIN DATETIME,
@DESCRIPCION VARCHAR(100)
as
 declare @success bit
 select @success=0
   begin transaction 
      INSERT INTO TareaUser(ID_SUPERVISOR,ID_USUARIO,FECHA_INICIO,FECHA_FIN,DESCRIPCION)
	  VALUES(@ID_SUPERVISOR,@ID_USUARIO,@FECHA_INICIO,@FECHA_FIN,@DESCRIPCION);
   begin 
		if(@@ERROR=0 and @@ROWCOUNT=1)
			select @success=1
		end
if @success=1
	commit transaction
  else
	 rollback transaction
return
go

CREATE proc sp_ListTareaUser 
as
 declare @success bit
 select @success=0
   begin transaction 
     SELECT ID_TAREAUSER,ID_SUPERVISOR,ID_USUARIO,FECHA_INICIO,FECHA_FIN,DESCRIPCION
	 FROM TareaUser 
   begin 
		if(@@ERROR=0 and @@ROWCOUNT>=1)
			select @success=1
		end
if @success=1
	commit transaction
  else
	 rollback transaction
return
GO


CREATE proc sp_ListTareaPorCodigoUser 
@ID_USUARIO INT
as
 declare @success bit
 select @success=0
   begin transaction 
     SELECT ID_TAREAUSER,ID_SUPERVISOR,ID_USUARIO,FECHA_INICIO,FECHA_FIN,DESCRIPCION
	 FROM TareaUser
	 WHERE ID_USUARIO = @ID_USUARIO; 
   begin 
		if(@@ERROR=0 and @@ROWCOUNT>=1)
			select @success=1
		end
if @success=1
	commit transaction
  else
	 rollback transaction
return
GO

 select EMAIL,CONVERT(varchar(30), DECRYPTBYPASSPHRASE('PWD',PWD))
 from Usuario;
go

CREATE  PROC sp_RegistrarIngreso
@ID_USUARIO INT
as
 declare @success bit
 select @success=0
   begin transaction 
     INSERT INTO RegistroIngreso(ID_USUARIO,HORA_INGRESO)
	 VALUES(@ID_USUARIO,SYSDATETIME())
   begin 
		if(@@ERROR=0 and @@ROWCOUNT=1)
			select @success=1
		end
if @success=1
	commit transaction
  else
	 rollback transaction
return
GO

CREATE PROC sp_RegistrarSalida
@ID_USUARIO INT
as
 declare @success bit
 select @success=0
   begin transaction 
     INSERT INTO RegistroSalida(ID_USUARIO,HORA_SALIDA)
	 VALUES(@ID_USUARIO,SYSDATETIME())
   begin 
		if(@@ERROR=0 and @@ROWCOUNT=1)
			select @success=1
		end
if @success=1
	commit transaction
  else
	 rollback transaction
return
GO

