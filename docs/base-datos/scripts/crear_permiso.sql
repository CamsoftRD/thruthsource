/*SE DEBE DEFINIR EL REPORTE EN ESTA TABLA xsdareportmst y hadmreportemst, ARQ DEBE DAR EL NOMBRE DEL FRX EN LA DOCUMENTACION*/
INSERT INTO xsdareportmst VALUES ('A18F5E2C-9D34-4B67-8E12-6F3A9C7D4B01','listadoEmpVac.frx','Data', 'Data1', 1) 

BEGIN TRY
    BEGIN TRANSACTION;

    /*
    ====================================================
    PERMISO
    ====================================================
    Código      : REPGENEMP_VACACIONES
    Nombre      : Acción: Listado de Empleado y Vacaciones
    GUID        : A18F5E2C-9D34-4B67-8E12-6F3A9C7D4B01
    Padre (GUID): [REEMPLAZAR_POR_GUID_PADRE]
    Módulo      : 4 (EMPLEADOS)
    Proyecto    : 6 (SRH Web)
    Tipo        : 2 (Web API Method)
    ScreenType  : 2 (Child)
    ====================================================
    */

    --------------------------------------------------
    -- CONFIGURACIÓN
    --------------------------------------------------
    DECLARE @Guid VARCHAR(50) = 'A18F5E2C-9D34-4B67-8E12-6F3A9C7D4B01';
    DECLARE @Codigo VARCHAR(50) = 'REPGENEMP_VACACIONES';
    
    DECLARE @NombreES VARCHAR(200) = 'Acción: Listado de Empleado y Vacaciones';
    DECLARE @TooltipES VARCHAR(500) = 'Genera el listado de empleados con el detalle de sus vacaciones tomadas y pendientes.';

    DECLARE @NombreEN VARCHAR(200) = 'Action: Employee and Vacations List';
    DECLARE @TooltipEN VARCHAR(500) = 'Generates the employee list with their taken and pending vacations details.';

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
    DECLARE @ModuloId INT = 4; -- EMPLEADOS
    
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
    DECLARE @ProyectoId INT = 6; -- SRH Web / TRIPLE

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

    -- IMPORTANTE: Colocar aquí el GUID de la opción de menú "Reportes Generales de Empleados"
    DECLARE @PermisoPadreGuid VARCHAR(50) = 'A3F2D8C1-74B6-4E91-B3D7-C8F150294E6A';

    --------------------------------------------------
    -- VARIABLES INTERNAS
    --------------------------------------------------
    DECLARE @NuevoPermisoId INT;
    DECLARE @PermisoPadreNumId INT;

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
        @PermisoPadreNumId
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

    PRINT 'Permiso creado correctamente para el Listado de Empleado y Vacaciones.';
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
