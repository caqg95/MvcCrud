USE [BDAsistenciaMVC]
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteDepartamento]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_DeleteDepartamento]
( @IdDepartamento INT )
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblDepartamento WHERE IdDepartamento = @IdDepartamento
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    
	/* 
		SELECT
			ERROR_NUMBER() AS ErrorNumber,
			ERROR_SEVERITY() AS ErrorSeverity,
			ERROR_STATE() AS ErrorState,
			ERROR_PROCEDURE() AS ErrorProcedure,
			ERROR_LINE() AS ErrorLine,
			ERROR_MESSAGE() AS ErrorMessage
	*/
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteDias]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- ---------------------------------------
CREATE PROCEDURE [dbo].[Usp_DeleteDias]
( @IdDias INT )
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblDias WHERE IdDias = @IdDias
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    

END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteEmpleados]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---5.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_DeleteEmpleados]
( @IdEmpleados INT )
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblEmpleados WHERE IdEmpleados = @IdEmpleados
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    

END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteJustificacionPersonal]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---5.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_DeleteJustificacionPersonal]
( @IdEmpleados	int
,@IdJustificacion	int
,@FechaI	datetime	
,@FechaF	datetime	
,@IdDias	int	
,@Observaciones	varchar	(50) )
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblJustificacionPersonal WHERE IdEmpleados = @IdEmpleados
    And IdJustificacion = @IdJustificacion
	And FechaI = @FechaI
	And FechaF = @FechaF
	And IdDias = @IdDias
	And Observaciones = @Observaciones
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    

END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteRegistroMarcas]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
---4.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_DeleteRegistroMarcas]
( @IdEmpleados	int
,@Fecha  datetime
,@H_Ent1 datetime
,@H_Sal1 datetime
,@H_Ent2 datetime
,@H_Sal2 datetime)
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblRegistroMarcas WHERE IdEmpleados = @IdEmpleados
    And Fecha  = @Fecha 
	And	H_Ent1 = @H_Ent1
	And	H_Sal1 = @H_Sal1
	And	H_Ent2 = @H_Ent2
	And	H_Sal2 = @H_Sal2
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    

END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteTipoJustificacion]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---5.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_DeleteTipoJustificacion]
( @IdJustificacion INT )
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblTipoJustificacion WHERE IdJustificacion = @IdJustificacion
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    
	
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteTurnos]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---5.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_DeleteTurnos]
( @IdTurno INT )
AS 
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
	DELETE FROM tblTurnos WHERE IdTurno = @IdTurno
	COMMIT TRANSACTION	
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
    
	
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertDepartamento]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_InsertDepartamento]
(@Departamento VARCHAR(75) )
AS
SET NOCOUNT ON
INSERT INTO tblDepartamento
(
	Departamento)
	VALUES (
	@Departamento
		
	)
	SELECT SCOPE_IDENTITY() AS IdDepartamento
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertDias]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- ---------------------------------------	 
 CREATE PROCEDURE [dbo].[Usp_InsertDias]
(@Dias FLOAT) 
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT

BEGIN TRY
    BEGIN TRANSACTION

	INSERT INTO tblDias
	(
		Dias)
		VALUES (
		@Dias
		
		)
	SELECT SCOPE_IDENTITY() AS IdDias
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertEmpleados]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---3.---------------------------------------
 CREATE PROCEDURE [dbo].[Usp_InsertEmpleados]
(@Nombres	varchar(100) 
,@Activo	bit	
,@IdDepartamento	int
,@IdTurno	int	
,@Salario	float	
,@DiaLibre	varchar	(20)) 
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT

BEGIN TRY
    BEGIN TRANSACTION

	INSERT INTO tblEmpleados
	(
		Nombres
		,Activo
		,IdDepartamento
		,IdTurno
		,Salario
		,DiaLibre
		)
		VALUES (
		@Nombres
		,@Activo
		,@IdDepartamento
		,@IdTurno
		,@Salario
		,@DiaLibre
		
		)
	SELECT SCOPE_IDENTITY() AS IdEmpleados
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertJustificacionPersonal]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---3.---------------------------------------
 CREATE PROCEDURE [dbo].[Usp_InsertJustificacionPersonal]
(@IdEmpleados INT = NULL    
,@IdJustificacion	int
,@FechaI	datetime
,@FechaF	datetime
,@IdDias   	int
,@Observaciones	varchar(50)) 
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT

BEGIN TRY
    BEGIN TRANSACTION

	INSERT INTO tblJustificacionPersonal
	(    IdEmpleados
		,IdJustificacion
		,FechaI
		,FechaF
		,IdDias
		,Observaciones
		)
		VALUES (
		 @IdEmpleados	
		,@IdJustificacion
		,@FechaI
		,@FechaF
		,@IdDias
		,@Observaciones
		)
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertRegistroMarcas]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---3.---------------------------------------
 CREATE PROCEDURE [dbo].[Usp_InsertRegistroMarcas]
(@IdEmpleados INT       
,@Fecha		datetime
,@H_Ent1	datetime
,@H_Sal1	datetime
,@H_Ent2	datetime
,@H_Sal2	datetime) 
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT

BEGIN TRY
    BEGIN TRANSACTION

	INSERT INTO tblRegistroMarcas
	(   IdEmpleados
		,Fecha
		,H_Ent1
		,H_Sal1
		,H_Ent2
		,H_Sal2
		)
		VALUES (
		 @IdEmpleados
		,@Fecha
		,@H_Ent1
		,@H_Sal1
		,@H_Ent2
		,@H_Sal2
		)
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertTipoJustificacion]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---3.---------------------------------------
 CREATE PROCEDURE [dbo].[Usp_InsertTipoJustificacion]
(@Justificacion VARCHAR(75) )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT

BEGIN TRY
    BEGIN TRANSACTION

	INSERT INTO tblTipoJustificacion
	(
		Justificacion)
		VALUES (
		@Justificacion
		
		)
	SELECT SCOPE_IDENTITY() AS IdJustificacion
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertTurnos]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---3.---------------------------------------
 CREATE PROCEDURE [dbo].[Usp_InsertTurnos]  
(@Turno				  VARCHAR(75)
,@Lunes_Sabado_Inicio datetime
,@Lunes_Sabado_Fin	  datetime
,@HorasAlmuerzo	      float	
,@Almuerzo_Inicio	  datetime
,@Almuerzo_Fin	      datetime )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT

BEGIN TRY
    BEGIN TRANSACTION

	INSERT INTO tblTurnos
	(	 Turno
		,Lunes_Sabado_Inicio
		,Lunes_Sabado_Fin
		,HorasAlmuerzo
		,Almuerzo_Inicio
		,Almuerzo_Fin )
		VALUES (
		 @Turno	
		,@Lunes_Sabado_Inicio
		,@Lunes_Sabado_Fin
		,@HorasAlmuerzo
		,@Almuerzo_Inicio
		,@Almuerzo_Fin
		)
	SELECT SCOPE_IDENTITY() AS IdTurno
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
	
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarDepartamento]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_ListarDepartamento]
AS
SET NOCOUNT ON
SELECT * FROM tblDepartamento AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarDias]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- ---------------------------------------	
CREATE PROCEDURE [dbo].[Usp_ListarDias]
AS
SET NOCOUNT ON
SELECT * FROM tblDias AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarEmpleados]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---1.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ListarEmpleados]
AS
SET NOCOUNT ON
SELECT * FROM tblEmpleados AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarJustificacionPersonal]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---1.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ListarJustificacionPersonal]
AS
SET NOCOUNT ON
SELECT * FROM tblJustificacionPersonal AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarRegistroMarcas]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---1.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ListarRegistroMarcas]
AS
SET NOCOUNT ON
SELECT * FROM tblRegistroMarcas AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarRegistroMarcasEmpleado]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Usp_ListarRegistroMarcasEmpleado]
AS
BEGIN
	    SELECT  EM.IdEmpleados,EM.Nombres,
		     	DT.Departamento,
			    RG.Fecha,RG.H_Ent1 AS 'HoraEntrada',RG.H_Sal1 AS 'HoraInicioAlmuerzo',RG.H_Ent2 AS 'HoraFinAlmuerzo',RG.H_Sal2 AS 'HoraSalida'
		
		FROM    tblRegistroMarcas RG                                        INNER JOIN
			    tblEmpleados      EM ON RG.IdEmpleados=EM.IdEmpleados       INNER JOIN
			    tblDepartamento   DT ON DT.IdDepartamento=EM.IdDepartamento 
		WHERE EM.Activo=1
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarTipoJustificacion]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---1.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ListarTipoJustificacion]
AS
SET NOCOUNT ON
SELECT * FROM tblTipoJustificacion AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarTurnos]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---1.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ListarTurnos]
AS
SET NOCOUNT ON
SELECT * FROM tblTurnos AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerDepartamento]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_ObtenerDepartamento]
( @IdDepartamento INT)
AS
SET NOCOUNT ON
SELECT * FROM tblDepartamento AS td
WHERE td.IdDepartamento = @IdDepartamento
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerDias]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- ---------------------------------------	
CREATE PROCEDURE [dbo].[Usp_ObtenerDias]
( @IdDias INT)
AS
SET NOCOUNT ON
SELECT * FROM tblDias AS td
WHERE td.IdDias = @IdDias
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerEmpleados]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---2.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ObtenerEmpleados]
( @IdEmpleados INT)
AS
SET NOCOUNT ON
SELECT * FROM tblEmpleados AS td
WHERE td.IdEmpleados = @IdEmpleados
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerJustificacionPersonal]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---2.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ObtenerJustificacionPersonal]
( @IdEmpleados INT)
AS
SET NOCOUNT ON
SELECT * FROM tblJustificacionPersonal AS td
WHERE td.IdEmpleados = @IdEmpleados
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerRegistroMarcas]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---2.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ObtenerRegistroMarcas]
( @IdEmpleados INT 
,@Fecha_I DATETIME
,@Fecha_F DATETIME
)
AS
SET NOCOUNT ON
SELECT * FROM tblRegistroMarcas AS td
WHERE td.IdEmpleados = @IdEmpleados
AND td.Fecha BETWEEN @Fecha_I AND @Fecha_F
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerTipoJustificacion]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---2.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ObtenerTipoJustificacion]
( @IdJustificacion INT)
AS
SET NOCOUNT ON
SELECT * FROM tblTipoJustificacion AS td
WHERE td.IdJustificacion = @IdJustificacion
GO
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerTurnos]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---2.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_ObtenerTurnos]
( @IdTurno INT)
AS
SET NOCOUNT ON
SELECT * FROM tblTurnos AS td
WHERE td.IdTurno = @IdTurno
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateDepartamento]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_UpdateDepartamento]
(@IdDepartamento INT ,
 @Departamento VARCHAR (75) )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
		UPDATE tblDepartamento
		SET Departamento = @Departamento
		WHERE IdDepartamento = @IdDepartamento	
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateDias]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
--- ---------------------------------------	
CREATE PROCEDURE [dbo].[Usp_UpdateDias]
(@IdDias INT ,
 @Dias FLOAT )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
		UPDATE tblDias
		SET Dias = @Dias
		WHERE IdDias = @IdDias	
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateEmpleados]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
---4.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_UpdateEmpleados]
(@IdEmpleados INT = NULL    
,@Nombres	varchar(100) 
,@Activo	bit	
,@IdDepartamento	int
,@IdTurno	int	
,@Salario	float	
,@DiaLibre	varchar	(20) )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
		UPDATE tblEmpleados
		SET Nombres = @Nombres
		,Activo = @Activo 
		,IdDepartamento = @IdDepartamento
		,IdTurno = @IdTurno
		,Salario = @Salario
		,DiaLibre = @DiaLibre 
		WHERE IdEmpleados = @IdEmpleados	
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateJustificacionPersonal]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
---4.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_UpdateJustificacionPersonal]
(@IdEmpleados	int
,@IdJustificacion	int
,@FechaI	datetime
,@FechaF	datetime
,@IdDias	int
,@Observaciones	VARCHAR(50) )
AS
-- Este procedimiento no es valido ya que esta tabla es transaccional
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
		UPDATE tblJustificacionPersonal
		SET FechaI = @FechaI
			,FechaF = @FechaF
			,IdDias = @IdDias
			,Observaciones = @Observaciones
		WHERE IdEmpleados = @IdEmpleados
          And IdJustificacion = @IdJustificacion
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateTipoJustificacion]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
---4.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_UpdateTipoJustificacion]
(@IdJustificacion INT ,
 @Justificacion VARCHAR (75) )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
		UPDATE tblTipoJustificacion
		SET Justificacion = @Justificacion
		WHERE IdJustificacion = @IdJustificacion	
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateTurnos]    Script Date: 03/06/2019 0:58:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		
---4.---------------------------------------
CREATE PROCEDURE [dbo].[Usp_UpdateTurnos]
(@IdTurno INT = NULL
,@Turno				  VARCHAR(75)
,@Lunes_Sabado_Inicio datetime
,@Lunes_Sabado_Fin	  datetime
,@HorasAlmuerzo	      float	
,@Almuerzo_Inicio	  datetime
,@Almuerzo_Fin	      datetime  )
AS
SET NOCOUNT ON
DECLARE @MSG VARCHAR(255) 
DECLARE @Severity INT 
DECLARE @ErrorCode INT 

BEGIN TRY
    BEGIN TRANSACTION
		UPDATE tblTurnos
		SET Turno = @Turno
			,Lunes_Sabado_Inicio = @Lunes_Sabado_Inicio
			,Lunes_Sabado_Fin = @Lunes_Sabado_Fin
			,HorasAlmuerzo = @HorasAlmuerzo
			,Almuerzo_Inicio = @Almuerzo_Inicio
			,Almuerzo_Fin = @Almuerzo_Fin
		WHERE IdTurno = @IdTurno	
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
       ROLLBACK TRANSACTION
       
		SET @ErrorCode = Error_Number() 
		SET @Severity = Error_Severity() 
		SET @MSG = 'An error was thrown: ' 
			+ 'Error(' + @ErrorCode + '):' + ERROR_MESSAGE() 
			+ ' Severity = ' + ERROR_SEVERITY()  
			+ ' State = ' + ERROR_STATE() 
			+ ' Procedure = ' + ERROR_PROCEDURE() 
			+ ' Line Number = ' + ERROR_LINE()     
		RAISERROR(@MSG, @Severity, 2) 
END CATCH
GO
