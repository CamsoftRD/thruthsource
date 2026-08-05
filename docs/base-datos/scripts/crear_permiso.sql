BEGIN TRY
    BEGIN TRANSACTION;

    /*
    ====================================================
    PERMISO
    ====================================================
    Código      : REPGENEMP_HORAEXT
    Nombre      : Acción: Listado de Horas Extras
    GUID        : 9FD40243-F60D-4333-95B2-07BCFBAF99E0
    Padre (GUID): A3F2D8C1-74B6-4E91-B3D7-C8F150294E6A
    Módulo      : 4 (EMPLEADOS)
    Proyecto    : 6 (SRH Web)
    Tipo        : 2 (Web API Method)
    ScreenType  : 2 (Child)
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

    /*
    ====================================================
    TIPOS DE PERMISOS
    ====================================================
    1 = Programa
    2 = Web API Method
    3 = DLL API Method
    4 = Acción para una cola
    5 = Acción básica de alta y baja (insert, update, ver y delete)
    ====================================================
    */
    DECLARE @Tipo INT = 2;
    
    /*
    ====================================================
    MÓDULOS DISPONIBLES (Proyecto 6)
    ====================================================
    ID  | Siglas | Nombre
    ----|--------|----------------
    2   | ADM    | ADMINISTRACION
    4   | EMP    | EMPLEADOS
    5   | RCL    | RECLUTAMIENTO
    6   | APR    | APROBACIONES
    7   | NOM    | NOMINA
    8   | ANL    | ANALITICA
    ====================================================
    */
    DECLARE @ModuloId INT = 4; 
    
    /*
    ====================================================
    PROYECTOS DISPONIBLES
    ====================================================
    ID  | Siglas | Nombre
    ----|--------|----------------------
    -1  | FMK    | Cam.Framework
    1   | BNK    | EasyBank
    2   | BAS    | BAS
    3   | ONK    | OneClick
    4   | FTW    | Factoring Web
    5   | COB    | COBROS M
    6   | SRH    | SRH Web
    7   | PTA    | Portal ADM Neg
    8   | PCC    | Portal de Capacitación
    ====================================================
    */
    DECLARE @ProyectoId INT = 6;

    DECLARE @RequiereAutorizacion BIT = 0;

    /*
    ====================================================
    TIPO DE PANTALLA (ScreenType)
    ====================================================
    Sirve para diferenciar si es una pantalla padre (ej: "Trabajar empleados")
    o una sub-pantalla hija cualquiera.
    1 = Padre
    2 = Child
    ====================================================
    */
    DECLARE @ScreenType INT = 2;

    -- AHORA ESTA VARIABLE ES EL GUID EN LUGAR DEL ID NUMÉRICO
    DECLARE @PermisoPadreGuid VARCHAR(50) = 'A3F2D8C1-74B6-4E91-B3D7-C8F150294E6A';

    --------------------------------------------------
    -- VARIABLES INTERNAS
    --------------------------------------------------
    DECLARE @NuevoPermisoId INT;
    DECLARE @PermisoPadreNumId INT; -- NUEVA VARIABLE PARA ALMACENAR EL ID NUMÉRICO

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
    -- OBTENER Y VALIDAR PERMISO PADRE
    --------------------------------------------------
    -- Buscamos el ID numérico del padre a partir de su GUID
    SELECT @PermisoPadreNumId = sdaacc_numid
    FROM xsdaaccmst
    WHERE sdaacc_guid = @PermisoPadreGuid;

    -- Si es nulo, significa que no encontró el GUID
    IF @PermisoPadreNumId IS NULL
    BEGIN
        THROW 50001, 'No existe el permiso padre especificado por el GUID.', 1;
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
        @PermisoPadreNumId -- AQUÍ USAMOS EL ID NUMÉRICO QUE OBTUVIMOS, NO EL GUID
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
