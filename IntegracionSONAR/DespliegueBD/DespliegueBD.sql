
-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25-ene-2016
-- Description:	Procedimiento que retorna las secciones 
-- =============================================
alter PROCEDURE [dbo].[sp_SeccionesPorDocumento_Select]
@idDocumento int,
@idTarea int,
@idQuery int

AS
BEGIN

	SET NOCOUNT ON;
	if (@idQuery = 0) 	
	begin
		select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where idDocumento = @idDocumento and idseccion not in (select idseccion from query where idtarea=@idTarea)
			and exists (select 1 from Campo , seccionversion 
						where Seccion.idSeccion = SeccionVersion.idSeccion 
						and Campo.idSeccionVersion=SeccionVersion.idSeccionVersion
						and (Not (Campo.Fuente Is NULL) And Campo.Fuente <> '')
						);
	end
	else
		select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where idDocumento = @idDocumento and idseccion not in (select idseccion from query where idtarea=@idTarea)
			and exists (select 1 from Campo , seccionversion 
						where Seccion.idSeccion = SeccionVersion.idSeccion 
						and Campo.idSeccionVersion=SeccionVersion.idSeccionVersion
						and (Not (Campo.Fuente Is NULL) And Campo.Fuente <> '')
						)
		union
		select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where idDocumento = @idDocumento and idseccion in (select idseccion from query where idQuery=@idQuery)
		and exists (select 1 from Campo , seccionversion 
						where Seccion.idSeccion = SeccionVersion.idSeccion 
						and Campo.idSeccionVersion=SeccionVersion.idSeccionVersion
						and (Not (Campo.Fuente Is NULL) And Campo.Fuente <> '')
						);

								 

END
GO


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 01-mar-2016
-- Description:	Procedimiento que retorna las secciones y los campos de un documento 
-- =============================================
CREATE PROCEDURE [dbo].[sp_ConsultarseccionesCamposPorDocumento]
@idDocumento int,
@idCompania int

AS
BEGIN

	 Select  dbo.Seccion.Descripcion, dbo.Campo.Fuente,dbo.Seccion.idDocumento,dbo.campo.idcampo
        From dbo.Documento 
		INNER Join dbo.Seccion ON dbo.Documento.idDocumento = dbo.Seccion.idDocumento 
		INNER Join dbo.SeccionVersion ON dbo.Seccion.idSeccion = dbo.SeccionVersion.idSeccion 
		INNER Join  dbo.Campo ON dbo.SeccionVersion.idSeccionVersion = dbo.Campo.idSeccionVersion
        Where (Not (dbo.Campo.Fuente Is NULL) And dbo.Campo.Fuente <> '')
		 AND (dbo.Documento.idDocumento = @idDocumento and dbo.Documento.idCompania=@idCompania)
        ORDER BY dbo.SeccionVersion.Orden,dbo.campo.orden;

	

END


alter PROCEDURE [dbo].[sp_Propiedades_Actualizar]
@idPropiedad int
,@nombrePropiedad varchar(50)
,@valorTexto1 varchar(500)
,@valorTexto2 varchar(500)
,@valorEntero int
,@valorDecimal numeric(18,4)
,@valorBooleano bit

AS
BEGIN
	

	UPDATE [dbo].[Propiedades]
   SET [nombrePropiedad] = @nombrePropiedad
      ,[valorTexto1] = @valorTexto1
      ,[valorTexto2] = @valorTexto2
      ,[valorEntero] = @valorEntero
      ,[valorDecimal] = @valorDecimal
      ,[valorBooleano] = @valorBooleano
 WHERE [idPropiedad] = @idPropiedad
   
END;


-- =============================================
-- Author:		Victor Andre Navarro
-- Create date: 27/02/2016
-- Description:	Actualiza una tarea
-- =============================================
ALTER PROCEDURE [dbo].[sp_TareaActualizar]
@idTarea	int,
@idDocumento	int,
@Nombre	varchar(200),
@CadenaConexion	varchar(1000),
@RutaGeneracionPlano	varchar(1000),
@InvocarWebService	int,
@EnviarNotificaciones	int,
@Destinatarios	varchar(500),
@NombreConexionWsSiesa	varchar(100),
@CiaWsSiesa	varchar(10),
@UsuarioWsSiesa	varchar(100),
@ClaveWsSiesa	varchar(100)

AS
BEGIN
	

	update [dbo].[Tarea]
	set 
	idDocumento	=@idDocumento,
	Nombre	=@Nombre,
	CadenaConexion	=@CadenaConexion,
	RutaGeneracionPlano	=@RutaGeneracionPlano,
	InvocarWebService	=@InvocarWebService,
	EnviarNotificaciones	=@EnviarNotificaciones,
	Destinatarios	=@Destinatarios,
	NombreConexionWsSiesa	=@NombreConexionWsSiesa,
	CiaWsSiesa	=@CiaWsSiesa,
	UsuarioWsSiesa	=@UsuarioWsSiesa,
	ClaveWsSiesa	=@ClaveWsSiesa
	where idTarea = @idTarea

END



insert into perfilopciones values( 1,'Configuracion','Administracion/propiedades.aspx',0,0,0,25)

insert into perfilopciones values( 1,'Administrar tareas','Administracion/Tarea.aspx',0,0,0,25)


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25-ene-2016
-- Description:	Procedimiento que retorna un query por Id
-- =============================================
create PROCEDURE [dbo].[sp_Query_Select]
@idQuery  int
AS
BEGIN

	
	
	select idQuery, idTarea, idSeccion, Query
	from query 
	where idQuery = @idQuery;

END
GO


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25-ene-2016
-- Description:	Procedimiento que retorna las secciones 
-- =============================================
alter PROCEDURE [dbo].[sp_SeccionesPorDocumento_Select]
@idDocumento int,
@idTarea int,
@idQuery int

AS
BEGIN

	SET NOCOUNT ON;
	if (@idQuery = 0) 	
	begin
		select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where idDocumento = @idDocumento and idseccion not in (select idseccion from query where idtarea=@idTarea);
	end
	else
		select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where idDocumento = @idDocumento and idseccion not in (select idseccion from query where idtarea=@idTarea)
		union
		select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where idDocumento = @idDocumento and idseccion in (select idseccion from query where idQuery=@idQuery);


END
GO


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25/02/2016
-- Description:	Elimina una consulta 
-- =============================================
create PROCEDURE [dbo].[sp_Query_Eliminar]

@idQuery int

AS
BEGIN

	

	delete from [dbo].[Query]  where idQuery =  @idQuery;
   
END




-- =============================================
-- Author:		Victor Andre Navarro
-- Create date: 27/02/2016
-- Description:	Actualiza una tarea
-- =============================================
create PROCEDURE [dbo].[sp_Query_Insertar]
@idTarea	int,
@idSeccion	int,
@query	varchar(1000)

AS
BEGIN
	

	insert into query (idTarea,
	idSeccion,
	query) 
	 values(	@idTarea,
	 @idSeccion,
	@query);


END
GO



-- =============================================
-- Author:		Victor Andre Navarro
-- Create date: 27/02/2016
-- Description:	Actualiza una tarea
-- =============================================
create PROCEDURE [dbo].[sp_Query_Actualizar]
@idQuery	int,
@query	varchar(1000)

AS
BEGIN
	
	update query set query=@query
	where idQuery = @idQuery;

END
GO


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25/02/2016
-- Description:	Elimina una tarea de configuracion
-- =============================================
alter PROCEDURE [dbo].[sp_Tarea_Eliminar]

@idTarea int

AS
BEGIN

	delete from [dbo].[Tarea] where idTarea =  @idTarea;

	delete from [dbo].[Query]  where idTarea =  @idTarea;
   
END



-- =============================================
-- Author:		Victor Andre Navarro
-- Create date: 27/02/2016
-- Description:	Actualiza una tarea
-- =============================================
create PROCEDURE [dbo].[sp_Tarea_Insertar]
@idDocumento	int,
@Nombre	varchar(200),
@CadenaConexion	varchar(1000),
@RutaGeneracionPlano	varchar(1000),
@InvocarWebService	int,
@EnviarNotificaciones	int,
@Destinatarios	varchar(500),
@NombreConexionWsSiesa	varchar(100),
@CiaWsSiesa	varchar(10),
@UsuarioWsSiesa	varchar(100),
@ClaveWsSiesa	varchar(100)

AS
BEGIN
	

	insert into tarea(idDocumento,
	Nombre,
	CadenaConexion,
	RutaGeneracionPlano,
	InvocarWebService,
	EnviarNotificaciones,
	Destinatarios,
	NombreConexionWsSiesa,
	CiaWsSiesa,
	UsuarioWsSiesa,
	ClaveWsSiesa) 
	 values(	@idDocumento,
	@Nombre,
	@CadenaConexion,
	@RutaGeneracionPlano,
	@InvocarWebService,
	@EnviarNotificaciones,
	@Destinatarios,
	@NombreConexionWsSiesa,
	@CiaWsSiesa,
	@UsuarioWsSiesa,
	@ClaveWsSiesa);


END
GO


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 18/01/2016
-- Description:	Procedimiento que devuelve todas los registros de la tabla propiedades por empresa y  nombre de propiedad
-- =============================================
ALTER PROCEDURE [dbo].[sp_consultarPropiedadesPorEmpresa]
@nombrePropiedad varchar(50),
@idCompania int,
@SortExpr varchar(50),
@SortDir varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	SELECT [idPropiedad],
	[nombrePropiedad]
      ,[valorTexto1]
      ,[valorTexto2]
      ,[valorEntero]
      ,[valorDecimal]
      ,[valorBooleano]
  FROM [dbo].[Propiedades]

  where lower([nombrePropiedad]) like '%' + lower(@nombrePropiedad) + '%'
  and idCompania= @idCompania
  ORDER BY
  case when @SortExpr = 'idPropiedad' and @SortDir = 'ASC' 
    then idPropiedad end asc, 
  case when @SortExpr = 'idPropiedad' and @SortDir = 'DESC' 
    then idPropiedad end desc,
  case when @SortExpr = 'nombrePropiedad' and @SortDir = 'ASC' 
    then nombrePropiedad end ASC,
  case when @SortExpr = 'nombrePropiedad' and @SortDir = 'DESC' 
    then nombrePropiedad end desc,
	  case when @SortExpr = 'valorTexto1' and @SortDir = 'ASC' 
    then valorTexto1 end asc, 
  case when @SortExpr = 'valorTexto1' and @SortDir = 'DESC' 
    then valorTexto1 end desc,
  case when @SortExpr = 'valorTexto2' and @SortDir = 'ASC' 
    then valorTexto2 end ASC,
  case when @SortExpr = 'valorTexto2' and @SortDir = 'DESC' 
    then valorTexto2 end desc,
	  case when @SortExpr = 'valorEntero' and @SortDir = 'ASC' 
    then valorEntero end asc, 
  case when @SortExpr = 'valorEntero' and @SortDir = 'DESC' 
    then valorEntero end desc,
  case when @SortExpr = 'valorDecimal' and @SortDir = 'ASC' 
    then valorDecimal end ASC,
  case when @SortExpr = 'valorDecimal' and @SortDir = 'DESC' 
    then valorDecimal end desc,
	 case when @SortExpr = 'valorBooleano' and @SortDir = 'ASC' 
    then valorBooleano end ASC,
  case when @SortExpr = 'valorBooleano' and @SortDir = 'DESC' 
    then valorBooleano end desc

END



-- =============================================
-- Author:		<Jorge Luis Perez>
-- Create date: <17-04-2014>
-- Description:	<Seleccion de secciones variables>
-- =============================================
alter PROCEDURE [dbo].[sp_TareaSeccionesSeleccionar]
@idTarea int
AS
BEGIN

	SET NOCOUNT ON;
	
	
	select Q.idSeccion, S.Descripcion , Query ,idQuery
	from Query Q
	inner join Seccion S
	on Q.idSeccion = S.idSeccion
	where idTarea = @idTarea


END

GO



-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25/02/2016
-- Description:	Elimina una tarea de configuracion
-- =============================================
CREATE PROCEDURE [dbo].[sp_Tarea_Eliminar]

@idTarea int

AS
BEGIN
	SET NOCOUNT ON;

	delete from [dbo].[Tareas] where idTarea =  @idTarea
   
END

GO


-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25-ene-2016
-- Description:	Procedimiento que retorna una tarea especifica
-- =============================================
CREATE PROCEDURE [dbo].[sp_consultarTareasPorEmpresa]
@nombreTarea varchar(50),
@idCompania int
AS
BEGIN

	SET NOCOUNT ON;
	
	select Tarea.idTarea,Tarea.idDocumento, Tarea.Nombre, Tarea.CadenaConexion,  Tarea.EnviarNotificaciones,		  
	 Tarea.Destinatarios, Tarea.RutaGeneracionPlano, Tarea.InvocarWebService,Tarea.NombreConexionWsSiesa,
	 Tarea.CiaWsSiesa,Tarea.UsuarioWsSiesa,Tarea.ClaveWsSiesa,tarea.fechacreacion,documento.nombre nombreDocumento
	from Tarea 
	inner join documento on documento.idDocumento=tarea.idDocumento	
	where lower(tarea.nombre) like '%' + lower(@nombreTarea) + '%'	
	 and documento.idCompania= @idCompania

	

END




-- =============================================
-- Author:		Victor Andre Navarro
-- Create date: 27/02/2016
-- Description:	Actualiza una tarea
-- =============================================
alter PROCEDURE [dbo].[sp_TareaActualizar]
@idTarea	int,
@idDocumento	int,
@Nombre	varchar(200),
@CadenaConexion	varchar(1000),
@RutaGeneracionPlano	varchar(1000),
@InvocarWebService	int,
@EnviarNotificaciones	int,
@Destinatarios	varchar(500),
@NombreConexionWsSiesa	varchar(100),
@CiaWsSiesa	varchar(10),
@UsuarioWsSiesa	varchar(100),
@ClaveWsSiesa	varchar(100)

AS
BEGIN
	SET NOCOUNT ON;

	update [dbo].[Tarea]
	set 
	idDocumento	=@idDocumento,
	Nombre	=@Nombre,
	CadenaConexion	=@CadenaConexion,
	RutaGeneracionPlano	=@RutaGeneracionPlano,
	InvocarWebService	=@InvocarWebService,
	EnviarNotificaciones	=@EnviarNotificaciones,
	Destinatarios	=@Destinatarios,
	NombreConexionWsSiesa	=@NombreConexionWsSiesa,
	CiaWsSiesa	=@CiaWsSiesa,
	UsuarioWsSiesa	=@UsuarioWsSiesa,
	ClaveWsSiesa	=@ClaveWsSiesa
	where idTarea = @idTarea

END
GO
-- Author:		Victor Andres Navarro
-- Create date: 18/01/2016
-- Description:	Procedimiento que devuelve todas los registros de la tabla propiedades por empresa y  nombre de propiedad
-- =============================================
alter PROCEDURE [dbo].[sp_consultarDocumentosPorEmpresa]

@idCompania int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	SELECT [idDocumento],
	[idCompania]
      ,[nombre]
      ,[ubicacion]
      ,[erp]
      ,[moduloPrincipal]
      ,[subModulo]
	  ,[idDocumentoPadre]
	  ,[ts]

  FROM [dbo].[documento]

  where  idCompania= @idCompania

END



-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25-ene-2016
-- Description:	Procedimiento que retorna una tarea especifica
-- =============================================
alter PROCEDURE [dbo].[sp_Tarea_Select]
@idTarea int
AS
BEGIN

	SET NOCOUNT ON;
	
	select Tarea.idTarea,Tarea.idDocumento, Tarea.Nombre, Tarea.CadenaConexion,  Tarea.EnviarNotificaciones,		  
	 Tarea.Destinatarios, Tarea.RutaGeneracionPlano, Tarea.InvocarWebService,Tarea.NombreConexionWsSiesa,
	 Tarea.CiaWsSiesa,Tarea.UsuarioWsSiesa,Tarea.ClaveWsSiesa,tarea.fechacreacion,documento.nombre nombreDocumento
	from Tarea 
	inner join documento on documento.idDocumento=tarea.idDocumento
	where idTarea = @idTarea

	

END
GO

-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25-ene-2016
-- Description:	Procedimiento que retorna una tarea especifica
-- =============================================
CREATE PROCEDURE [dbo].[sp_Tarea_Select]
@idTarea int
AS
BEGIN

	SET NOCOUNT ON;
	
	select idTarea,idDocumento, Nombre, CadenaConexion,  EnviarNotificaciones,		   Destinatarios, RutaGeneracionPlano, InvocarWebService,NombreConexionWsSiesa,CiaWsSiesa,UsuarioWsSiesa,ClaveWsSiesa
	from Tarea
	where idTarea = @idTarea

	

END
GO




-- Author:		Victor Andres Navarro
-- Create date: 18/01/2016
-- Description:	Procedimiento que devuelve todas los registros de la tabla propiedades por empresa y  nombre de propiedad
-- =============================================
CREATE PROCEDURE [dbo].[sp_consultarDocumentosPorEmpresa]

@idCompania int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	SELECT [idDocumento],
	[idCompania]
      ,[nombre]
      ,[ubicacion]
      ,[erp]
      ,[moduloPrincipal]
      ,[subModulo]
	  ,[idDocumentoPadre]
	  ,[ts]

  FROM [dbo].[documentos]

  where  idCompania= @idCompania

END

-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 25/02/2016
-- Description:	Elimina una propiedad de configuracion
-- =============================================
alter PROCEDURE [dbo].[sp_Propiedades_Eliminar]

@idPropiedad int

AS
BEGIN
	

	delete from [dbo].[Propiedades] where idPropiedad =  @idPropiedad
   
END
GO



alter  PROCEDURE [dbo].[sp_Propiedades_Insertar]
@idCompania int,
@nombrePropiedad varchar(50)
,@valorTexto1 varchar(500)
,@valorTexto2 varchar(5000)
,@valorEntero int
,@valorDecimal numeric(18,2)
,@valorBooleano bit

AS
BEGIN
	

	INSERT INTO [dbo].[Propiedades]
           ([idCompania]
		   ,[nombrePropiedad]
           ,[valorTexto1]
           ,[valorTexto2]
           ,[valorEntero]
           ,[valorDecimal]
           ,[valorBooleano])
     VALUES
           (@idCompania
		   ,@nombrePropiedad
			,@valorTexto1
			,@valorTexto2
			,@valorEntero
			,@valorDecimal
			,@valorBooleano)
   
END




-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 18/01/2016
-- Description:	Procedimiento que devuelve todas los registros de la tabla propiedades por empresa y  nombre de propiedad
-- =============================================
CREATE PROCEDURE [dbo].[sp_consultarPropiedadesPorEmpresa]
@nombrePropiedad varchar(50),
@idCompania int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	SELECT [idPropiedad],
	[nombrePropiedad]
      ,[valorTexto1]
      ,[valorTexto2]
      ,[valorEntero]
      ,[valorDecimal]
      ,[valorBooleano]
  FROM [dbo].[Propiedades]

  where lower([nombrePropiedad]) like '%' + lower(@nombrePropiedad) + '%'
  and idCompania= @idCompania

END;

-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 20/02/2016
-- Description:	Seleciona una propiedad de acuerdo al idPropiedad enviado
-- =============================================
CREATE PROCEDURE [dbo].[sp_Propiedad_Select]
	@idPropiedad int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT  [idPropiedad]
      ,[nombrePropiedad]
      ,[valorTexto1]
      ,[valorTexto2]
      ,[valorEntero]
      ,[valorDecimal]
      ,[valorBooleano]
  FROM [dbo].[Propiedades]
  where idPropiedad=@idPropiedad
   
END;

alter PROCEDURE [dbo].[sp_Propiedades_Actualizar]
@idPropiedad int
,@nombrePropiedad varchar(50)
,@valorTexto1 varchar(500)
,@valorTexto2 varchar(500)
,@valorEntero int
,@valorDecimal numeric(18,4)
,@valorBooleano bit

AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[Propiedades]
   SET [nombrePropiedad] = @nombrePropiedad
      ,[valorTexto1] = @valorTexto1
      ,[valorTexto2] = @valorTexto2
      ,[valorEntero] = @valorEntero
      ,[valorDecimal] = @valorDecimal
      ,[valorBooleano] = @valorBooleano
 WHERE [idPropiedad] = @idPropiedad
   
END;

-- =============================================
-- Author:		Victor Andres Navarro
-- Create date: 22/01/2016
-- Description:	Inserta las propiedades de configuracion
-- =============================================
alter  PROCEDURE [dbo].[sp_Propiedades_Insertar]
@idCompania int,
@nombrePropiedad varchar(50)
,@valorTexto1 varchar(500)
,@valorTexto2 varchar(5000)
,@valorEntero int
,@valorDecimal numeric(18,2)
,@valorBooleano bit

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Propiedades]
           ([idCompania]
		   ,[nombrePropiedad]
           ,[valorTexto1]
           ,[valorTexto2]
           ,[valorEntero]
           ,[valorDecimal]
           ,[valorBooleano])
     VALUES
           (@idCompania
		   ,@nombrePropiedad
			,@valorTexto1
			,@valorTexto2
			,@valorEntero
			,@valorDecimal
			,@valorBooleano)
   
END;