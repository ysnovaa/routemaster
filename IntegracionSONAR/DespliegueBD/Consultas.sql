
 Select dbo.Seccion.idseccion, dbo.Seccion.Descripcion, dbo.Campo.Fuente,dbo.Seccion.idDocumento,dbo.campo.idcampo,dbo.Documento.idCompania
        From dbo.Documento 
		INNER Join dbo.Seccion ON dbo.Documento.idDocumento = dbo.Seccion.idDocumento 
		INNER Join dbo.SeccionVersion ON dbo.Seccion.idSeccion = dbo.SeccionVersion.idSeccion 
		INNER Join  dbo.Campo ON dbo.SeccionVersion.idSeccionVersion = dbo.Campo.idSeccionVersion
        Where 
		(Not (dbo.Campo.Fuente Is NULL) And dbo.Campo.Fuente <> '')		 AND 
		(dbo.Documento.idDocumento =25154)
        ORDER BY dbo.SeccionVersion.Orden,dbo.campo.orden;



		25154,2


		update Campo set fuente='cuentas Cobrar' where idCampo=1
		


 Select  distinct dbo.Seccion.Descripcion, dbo.SeccionVersion.Orden
        From dbo.Documento INNER Join
        dbo.Seccion ON dbo.Documento.idDocumento = dbo.Seccion.idDocumento INNER Join
        dbo.SeccionVersion ON dbo.Seccion.idSeccion = dbo.SeccionVersion.idSeccion INNER Join
        dbo.Campo ON dbo.SeccionVersion.idSeccionVersion = dbo.Campo.idSeccionVersion
        Where (Not (dbo.Campo.Fuente Is NULL) And dbo.Campo.Fuente <> '') 
		AND (dbo.Documento.idDocumento = 1)
        ORDER BY dbo.SeccionVersion.Orden;

		
        Select  dbo.Seccion.Descripcion, dbo.Campo.Fuente,dbo.Seccion.idDocumento,dbo.campo.idcampo
        From dbo.Documento 
		INNER Join dbo.Seccion ON dbo.Documento.idDocumento = dbo.Seccion.idDocumento 
		INNER Join dbo.SeccionVersion ON dbo.Seccion.idSeccion = dbo.SeccionVersion.idSeccion 
		INNER Join  dbo.Campo ON dbo.SeccionVersion.idSeccionVersion = dbo.Campo.idSeccionVersion
        Where (Not (dbo.Campo.Fuente Is NULL) And dbo.Campo.Fuente <> '')
		 AND (dbo.Documento.idDocumento = 1)
        ORDER BY dbo.SeccionVersion.Orden,dbo.campo.orden;


		select * from campo;

		46,47
		41,42
		1,2

		update campo set fuente='idPrueba' where idcampo=41
		update campo set fuente='consecutivOrden' where idcampo=42

		select * from SeccionVersion;
				select * from seccion;

				select * from documento;




select * from PerfilOpciones

select * from propiedades;

insert into PerfilOpciones values (1,'Configuracion2','Administracion/propiedades.aspx',0,0,0,18);


SELECT [idSeccion], [Descripcion] 
FROM [Seccion] 
WHERE ([idDocumento] = @idDocumento)
and idSeccion in
(
select distinct S.idSeccion 
from [dbo].[Seccion] S
inner join [dbo].[SeccionVersion] SV
on S.idSeccion = SV.idSeccion
inner join [dbo].[Campo] C
on SV.idSeccionVersion = C.idSeccionVersion
where not Fuente is null
and [idDocumento] = @idDocumento
)


update PerfilOpciones set nombreFormulario='Tareas' where idPerfilOpciones=1079







 --idDocumento = @idDocumento and idseccion not in (select idseccion from query where idtarea=@idTarea) 			and
	select idseccion, idDocumento, descripcion, requerido, idseccionPadre
		from seccion 
		where exists (select 1 from Campo , seccionversion 
						where Seccion.idSeccion = SeccionVersion.idSeccion 
						and Campo.idSeccionVersion=SeccionVersion.idSeccionVersion
						and (Not (Campo.Fuente Is NULL) And Campo.Fuente <> '')
						);