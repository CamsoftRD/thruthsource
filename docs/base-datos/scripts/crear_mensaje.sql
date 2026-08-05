BEGIN TRY
    BEGIN TRANSACTION;

    /*
    ====================================================
    MENSAJE
    ====================================================
    Código (GUID) : 4A7E2F63-8B91-4C05-A6D8-1E9F5C3B7D42
    Proyecto      : 6
    Tipo          : 2
    Severidad     : 2

    Español       : Encuesta no encontrada.
    Inglés        : Survey not found.
    ====================================================
    */

    --------------------------------------------------
    -- CONFIGURACIÓN
    --------------------------------------------------
    DECLARE @Codigo VARCHAR(50) = 'D5FD43FB-4C8B-4A30-9C66-D1FF9C7CD8AE';

    DECLARE @MensajeES NVARCHAR(500) = 'Debe seleccionar el Año y el Mes para generar el reporte';
    DECLARE @MensajeEN NVARCHAR(500) = 'You must select the Year and Month to generate the report.';

    DECLARE @ProyectoId INT = 6;
    DECLARE @Tipo INT = 2;
    DECLARE @Severidad INT = 2;

    DECLARE @MensajeId INT;

    --------------------------------------------------
    -- VALIDAR CÓDIGO DUPLICADO
    --------------------------------------------------
    IF EXISTS (
        SELECT 1
        FROM xadmmsgmst
        WHERE admmsg_codigo = @Codigo
    )
    BEGIN
        PRINT 'El mensaje ya existe. Código: ' + @Codigo;
        COMMIT TRANSACTION;
        RETURN;
    END

    --------------------------------------------------
    -- INSERTAR MENSAJE
    --------------------------------------------------
    INSERT INTO xadmmsgmst
    (
        admmsg_codigo,
        sdapry_codigo,
        admmsg_tipo,
        admmsg_niveluso,
        admmsgg_numid
    )
    VALUES
    (
        @Codigo,
        @ProyectoId,
        @Tipo,
        @Severidad,
        NULL
    );

    SET @MensajeId = SCOPE_IDENTITY();

    --------------------------------------------------
    -- INSERTAR TRADUCCIONES
    --------------------------------------------------

    INSERT INTO xadmmsgdet
    (
        admmsg_numid,
        admmsg_cultura,
        admmsg_nombre,
        admmsg_nombrefinal
    )
    VALUES
    (
        @MensajeId,
        'es-DO',
        @MensajeES,
        NULL
    ),
    (
        @MensajeId,
        'en-US',
        @MensajeEN,
        NULL
    );

    PRINT 'Mensaje creado correctamente.';
    PRINT 'ID generado: ' + CAST(@MensajeId AS VARCHAR(20));
    PRINT 'Código GUID: ' + @Codigo;

    COMMIT TRANSACTION;

END TRY
BEGIN CATCH

    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    DECLARE @ErrorMensaje NVARCHAR(4000) = ERROR_MESSAGE();

    PRINT 'Error al crear el mensaje:';
    PRINT @ErrorMensaje;

    THROW;

END CATCH;
