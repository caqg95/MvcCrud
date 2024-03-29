USE [master]
GO
/****** Object:  Database [BDAsistenciaMVC]    Script Date: 03/06/2019 0:57:03 ******/
CREATE DATABASE [BDAsistenciaMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBAsistenciaMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDAsistenciaMVC.mdf' , SIZE = 4352KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBAsistenciaMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDAsistenciaMVC_0.LDF' , SIZE = 6400KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDAsistenciaMVC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDAsistenciaMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDAsistenciaMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDAsistenciaMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDAsistenciaMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDAsistenciaMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDAsistenciaMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET RECOVERY FULL 
GO
ALTER DATABASE [BDAsistenciaMVC] SET  MULTI_USER 
GO
ALTER DATABASE [BDAsistenciaMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDAsistenciaMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDAsistenciaMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDAsistenciaMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BDAsistenciaMVC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDAsistenciaMVC', N'ON'
GO
ALTER DATABASE [BDAsistenciaMVC] SET QUERY_STORE = OFF
GO
USE [BDAsistenciaMVC]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logTransacciones]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logTransacciones](
	[TipoTrn] [char](1) NULL,
	[Tabla] [varchar](128) NULL,
	[PK] [varchar](1000) NULL,
	[Campo] [varchar](128) NULL,
	[ValorOriginal] [varchar](1000) NULL,
	[ValorNuevo] [varchar](1000) NULL,
	[FechaTrn] [datetime] NULL,
	[Usuario] [varchar](128) NULL,
	[Fecha] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDepartamento]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](75) NOT NULL,
 CONSTRAINT [PK_Departmento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDias]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDias](
	[IdDias] [int] IDENTITY(1,1) NOT NULL,
	[Dias] [float] NOT NULL,
 CONSTRAINT [PK_Dias] PRIMARY KEY CLUSTERED 
(
	[IdDias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmpleados]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmpleados](
	[IdEmpleados] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[Activo] [bit] NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[IdTurno] [int] NOT NULL,
	[Salario] [float] NULL,
	[DiaLibre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[IdEmpleados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblJustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblJustificacionPersonal](
	[IdEmpleados] [int] NOT NULL,
	[IdJustificacion] [int] NOT NULL,
	[FechaI] [datetime] NOT NULL,
	[FechaF] [datetime] NOT NULL,
	[IdDias] [int] NOT NULL,
	[Observaciones] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRegistroMarcas]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRegistroMarcas](
	[IdEmpleados] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[H_Ent1] [datetime] NULL,
	[H_Sal1] [datetime] NULL,
	[H_Ent2] [datetime] NULL,
	[H_Sal2] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoJustificacion]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoJustificacion](
	[IdJustificacion] [int] IDENTITY(1,1) NOT NULL,
	[Justificacion] [varchar](75) NOT NULL,
 CONSTRAINT [PK_TipoJustificacion] PRIMARY KEY CLUSTERED 
(
	[IdJustificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTurnos]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTurnos](
	[IdTurno] [int] IDENTITY(1,1) NOT NULL,
	[Turno] [varchar](75) NOT NULL,
	[Lunes_Sabado_Inicio] [datetime] NOT NULL,
	[Lunes_Sabado_Fin] [datetime] NOT NULL,
	[HorasAlmuerzo] [float] NOT NULL,
	[Almuerzo_Inicio] [datetime] NOT NULL,
	[Almuerzo_Fin] [datetime] NOT NULL,
 CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED 
(
	[IdTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03/06/2019 0:57:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/06/2019 0:57:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/06/2019 0:57:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 03/06/2019 0:57:04 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/06/2019 0:57:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03/06/2019 0:57:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
CREATE NONCLUSTERED INDEX [IX_JustificacionPersonal] ON [dbo].[tblJustificacionPersonal]
(
	[IdEmpleados] ASC,
	[IdJustificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RegistrosMarcas]    Script Date: 03/06/2019 0:57:04 ******/
CREATE NONCLUSTERED INDEX [IX_RegistrosMarcas] ON [dbo].[tblRegistroMarcas]
(
	[IdEmpleados] ASC,
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEmpleados] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [PK_EmpleadosDepartamentos] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[tblDepartamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [PK_EmpleadosDepartamentos]
GO
ALTER TABLE [dbo].[tblEmpleados]  WITH CHECK ADD  CONSTRAINT [PK_EmpleadosTurnos] FOREIGN KEY([IdTurno])
REFERENCES [dbo].[tblTurnos] ([IdTurno])
GO
ALTER TABLE [dbo].[tblEmpleados] CHECK CONSTRAINT [PK_EmpleadosTurnos]
GO
ALTER TABLE [dbo].[tblJustificacionPersonal]  WITH CHECK ADD  CONSTRAINT [FK_JustificacionPersonal_Dias] FOREIGN KEY([IdDias])
REFERENCES [dbo].[tblDias] ([IdDias])
GO
ALTER TABLE [dbo].[tblJustificacionPersonal] CHECK CONSTRAINT [FK_JustificacionPersonal_Dias]
GO
ALTER TABLE [dbo].[tblJustificacionPersonal]  WITH CHECK ADD  CONSTRAINT [FK_JustificacionPersonal_Empleados] FOREIGN KEY([IdEmpleados])
REFERENCES [dbo].[tblEmpleados] ([IdEmpleados])
GO
ALTER TABLE [dbo].[tblJustificacionPersonal] CHECK CONSTRAINT [FK_JustificacionPersonal_Empleados]
GO
ALTER TABLE [dbo].[tblJustificacionPersonal]  WITH CHECK ADD  CONSTRAINT [FK_JustificacionPersonal_TipoJustificacion] FOREIGN KEY([IdJustificacion])
REFERENCES [dbo].[tblTipoJustificacion] ([IdJustificacion])
GO
ALTER TABLE [dbo].[tblJustificacionPersonal] CHECK CONSTRAINT [FK_JustificacionPersonal_TipoJustificacion]
GO
ALTER TABLE [dbo].[tblRegistroMarcas]  WITH CHECK ADD  CONSTRAINT [FK_RegistroMarcas_Empleados] FOREIGN KEY([IdEmpleados])
REFERENCES [dbo].[tblEmpleados] ([IdEmpleados])
GO
ALTER TABLE [dbo].[tblRegistroMarcas] CHECK CONSTRAINT [FK_RegistroMarcas_Empleados]
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteDepartamento]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_DeleteDias]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_DeleteEmpleados]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_DeleteJustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_DeleteRegistroMarcas]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_DeleteTipoJustificacion]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_DeleteTurnos]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertDepartamento]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertDias]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertEmpleados]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertJustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertRegistroMarcas]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertTipoJustificacion]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_InsertTurnos]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarDepartamento]    Script Date: 03/06/2019 0:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_ListarDepartamento]
AS
SET NOCOUNT ON
SELECT * FROM tblDepartamento AS td
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListarDias]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarEmpleados]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarJustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarRegistroMarcas]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarRegistroMarcasEmpleado]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarTipoJustificacion]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ListarTurnos]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerDepartamento]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerDias]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerEmpleados]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerJustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerRegistroMarcas]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerTipoJustificacion]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_ObtenerTurnos]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_UpdateDepartamento]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_UpdateDias]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_UpdateEmpleados]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_UpdateJustificacionPersonal]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_UpdateTipoJustificacion]    Script Date: 03/06/2019 0:57:04 ******/
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
/****** Object:  StoredProcedure [dbo].[Usp_UpdateTurnos]    Script Date: 03/06/2019 0:57:04 ******/
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
USE [master]
GO
ALTER DATABASE [BDAsistenciaMVC] SET  READ_WRITE 
GO
