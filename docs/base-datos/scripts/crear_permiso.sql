BEGIN TRY
    BEGIN TRANSACTION;

    /*
    ====================================================
    PERMISO
    ====================================================
    Código      : REPGENEMP_HORAEXT
    Nombre      : Acción: Listado de Horas Extras
    GUID        : 9FD40243-F60D-4333-95B2-07BCFBAF99E0
    Padre       : 6399
    Módulo      : 4
    Proyecto    : 6
    ====================================================
    */

    --------------------------------------------------
    -- CONFIGURACIÓN
    --------------------------------------------------
    DECLARE @Guid VARCHAR(50) = '9FD40243-F60D-4333-95B2-07BCFBAF99E0';
    DECLARE @Codigo VARCHAR(50) = 'REPGENEMP_HORAEXT';
    DECLARE @NombreES VARCHAR(200) = 'Acción: Listado de Horas Extras';
    DECLARE @TooltipES VARCHAR(500) = 'Permite imprimir el listado de horas extras.';

    DECLARE @NombreEN VARCHAR(200) = 'Action: Overtime Hours List';
    DECLARE @TooltipEN VARCHAR(500) = 'Allows printing the overtime hours list.';

    DECLARE @Tipo INT = 2;
    DECLARE @ModuloId INT = 4;
    DECLARE @ProyectoId INT = 6;
    DECLARE @RequiereAutorizacion BIT = 0;
    DECLARE @ScreenType INT = 2;
    DECLARE @PermisoPadreId INT = 6399;

    --------------------------------------------------
    -- VARIABLES INTERNAS
    --------------------------------------------------
    DECLARE @NuevoPermisoId INT;

    --------------------------------------------------
    -- VALIDAR SI YA EXISTE
    --------------------------------------------------
    IF EXISTS (
        SELECT 1
        FROM xsdaaccmst
        WHERE sdaacc_codigo = @Codigo
           OR sdaacc_guid = @Guid
    )
    BEGIN
        PRINT 'El permiso ya existe. Código: ' + @Codigo;
        COMMIT TRANSACTION;
        RETURN;
    END

    --------------------------------------------------
    -- VALIDAR PERMISO PADRE
    --------------------------------------------------
    IF NOT EXISTS (
        SELECT 1
        FROM xsdaaccmst
        WHERE sdaacc_numid = @PermisoPadreId
    )
    BEGIN
        THROW 50001, 'No existe el permiso padre especificado.', 1;
    END

    --------------------------------------------------
    -- INSERTAR PERMISO
    --------------------------------------------------
    INSERT INTO xsdaaccmst
    (
        sdaacc_guid,
        sdaacc_tipo,
        sdaacc_codigo,
        sdamod_numid,
        sdapry_codigo,
        sdaacc_reqaut,
        sdaacc_nombre,
        sdaacc_tooltip,
        sdaacc_screentype
    )
    VALUES
    (
        @Guid,
        @Tipo,
        @Codigo,
        @ModuloId,
        @ProyectoId,
        @RequiereAutorizacion,
        @NombreES,
        @TooltipES,
        @ScreenType
    );

    SET @NuevoPermisoId = SCOPE_IDENTITY();

    --------------------------------------------------
    -- RELACIÓN JERÁRQUICA
    --------------------------------------------------
    INSERT INTO xsdaaccdet
    (
        sdaacc_numid,
        sdaacc_master
    )
    VALUES
    (
        @NuevoPermisoId,
        @PermisoPadreId
    );

    --------------------------------------------------
    -- TRADUCCIONES
    --------------------------------------------------
    INSERT INTO xsdaaccmstlan
    (
        sdaacc_numid,
        sdalan_codigo,
        sdaacc_nombre,
        sdaacc_tooltip
    )
    VALUES
    (
        @NuevoPermisoId,
        'es-DO',
        @NombreES,
        @TooltipES
    ),
    (
        @NuevoPermisoId,
        'en-US',
        @NombreEN,
        @TooltipEN
    );

    PRINT 'Permiso creado correctamente.';
    PRINT 'ID: ' + CAST(@NuevoPermisoId AS VARCHAR(20));

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH

    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    DECLARE @ErrorMensaje NVARCHAR(4000) = ERROR_MESSAGE();

    PRINT 'Error al crear el permiso:';
    PRINT @ErrorMensaje;

    THROW;
END CATCH;
