BEGIN TRY
    BEGIN TRANSACTION;

    --------------------------------------------------
    -- 1. CONFIGURACIÓN DEL PERMISO Y REPORTE
    --------------------------------------------------
    DECLARE @Guid VARCHAR(50) = 'F2B6D8A4-7E31-4C9F-B056-3A18E9D4C7F2';
    DECLARE @Codigo VARCHAR(50) = 'REPGENEMP_DGT9';
    DECLARE @NombreES VARCHAR(200) = 'Acción: Reporte DGT9';
    DECLARE @TooltipES VARCHAR(500) = 'Genera el reporte DGT9 (Suspensión Contrato Laboral) para el Ministerio de Trabajo.';
    DECLARE @NombreEN VARCHAR(200) = 'Action: DGT9 Report';
    DECLARE @TooltipEN VARCHAR(500) = 'Generates the DGT9 Report (Labor Contract Suspension) for the Ministry of Labor.';
    
    DECLARE @Tipo INT = 2;
    DECLARE @ModuloId INT = 4; -- EMPLEADOS
    DECLARE @ProyectoId INT = 6; -- SRH Web / TRIPLE
    DECLARE @RequiereAutorizacion BIT = 0;
    DECLARE @ScreenType INT = 2;
    DECLARE @PermisoPadreGuid VARCHAR(50) = 'A3F2D8C1-74B6-4E91-B3D7-C8F150294E6A';

    -- VARIABLES DINÁMICAS PARA REPORTES
    DECLARE @EsReporte BIT = 1; -- 1 = Es un reporte (aplica inserts), 0 = Solo crear permiso
    DECLARE @NombreReporteFRX VARCHAR(100) = 'reporteDGT9.frx';
    DECLARE @FuenteDatos VARCHAR(100) = 'rptDGT9View'; 

    DECLARE @NuevoPermisoId INT;
    DECLARE @PermisoPadreNumId INT;

    --------------------------------------------------
    -- 2. OBTENER Y VALIDAR PERMISO PADRE
    --------------------------------------------------
    SELECT @PermisoPadreNumId = sdaacc_numid
    FROM xsdaaccmst
    WHERE sdaacc_guid = @PermisoPadreGuid;

    IF @PermisoPadreNumId IS NULL
        THROW 50001, 'No existe el permiso padre especificado por el GUID.', 1;

    --------------------------------------------------
    -- 3. INSERTAR O RECUPERAR PERMISO
    --------------------------------------------------
    IF EXISTS (SELECT 1 FROM xsdaaccmst WHERE sdaacc_guid = @Guid)
    BEGIN
        SELECT @NuevoPermisoId = sdaacc_numid FROM xsdaaccmst WHERE sdaacc_guid = @Guid;
        PRINT 'El permiso ya existe. ID: ' + CAST(@NuevoPermisoId AS VARCHAR(20));
    END
    ELSE
    BEGIN
        INSERT INTO xsdaaccmst (
            sdaacc_guid, sdaacc_tipo, sdaacc_codigo, sdamod_numid, sdapry_codigo,
            sdaacc_reqaut, sdaacc_nombre, sdaacc_tooltip, sdaacc_screentype
        )
        VALUES (
            @Guid, @Tipo, @Codigo, @ModuloId, @ProyectoId,
            @RequiereAutorizacion, @NombreES, @TooltipES, @ScreenType
        );

        SET @NuevoPermisoId = SCOPE_IDENTITY();

        INSERT INTO xsdaaccdet (sdaacc_numid, sdaacc_master)
        VALUES (@NuevoPermisoId, @PermisoPadreNumId);

        INSERT INTO xsdaaccmstlan (sdaacc_numid, sdalan_codigo, sdaacc_nombre, sdaacc_tooltip)
        VALUES 
        (@NuevoPermisoId, 'es-DO', @NombreES, @TooltipES),
        (@NuevoPermisoId, 'en-US', @NombreEN, @TooltipEN);
        
        PRINT 'Permiso creado correctamente. ID: ' + CAST(@NuevoPermisoId AS VARCHAR(20));
    END

    --------------------------------------------------
    -- 4 y 5. LÓGICA DE REPORTE (CONDICIONAL)
    --------------------------------------------------
    IF (@EsReporte = 1)
    BEGIN
        DECLARE @SdaReportNumId INT;

        -- DEFINICIÓN DEL ARCHIVO FRX
        IF NOT EXISTS (SELECT 1 FROM xsdareportmst WHERE sdareport_guid = @Guid)
        BEGIN
            INSERT INTO xsdareportmst (
                sdareport_guid, 
                sdareport_filename, 
                sdareport_datasourcename, 
                sdareport_databandname, 
                sdareport_datasourcetype
            )
            VALUES (@Guid, @NombreReporteFRX, 'Data', 'Data1', 1);
            
            SET @SdaReportNumId = SCOPE_IDENTITY();
        END
        ELSE
        BEGIN
            SELECT @SdaReportNumId = sdareport_numid FROM xsdareportmst WHERE sdareport_guid = @Guid;
        END

        -- DEFINICIÓN EN EL MÓDULO (FILTROS)
        IF NOT EXISTS (SELECT 1 FROM hadmreportemst WHERE admreporte_guid = @Guid)
        BEGIN
            INSERT INTO hadmreportemst (
                admreporte_guid, sdaacc_numid, admreporte_nombre, admreporte_descripcion,
                admreporte_tipo, sdareport_numid, admreporte_fuente, admreporte_tipofuente,
                admreporte_TipoNomina, admreporte_Periodo, admreporte_Fecha, admreporte_sucursal,
                admreporte_departamento, admreporte_puesto, admreporte_empleado, admreporte_concepto,
                admreporte_origenconcepto, admsts_codigo, admreporte_genero, admreporte_tipo_sangre,
                admreporte_estado_civil, admreporte_fecha_nacimiento, admreporte_fecha_inicio,
                admreporte_fecha_desvinc, admreporte_fecha_final, admreporte_salario,
                admreporte_tipo_salario, admreporte_tipo_contrato, admreporte_forma_pago,
                admreporte_mes, admreporte_anio
            )
            VALUES (
                @Guid, @NuevoPermisoId, @NombreES, @TooltipES, 
                1, @SdaReportNumId, @FuenteDatos, 1, 
                
                0, 0, 0, -- nomina, periodo, fecha
                1, 1, 1, 1, -- sucursal, depto, puesto, empleado
                0, 0, -- concepto, origenconcepto
                1, -- admsts_codigo (Filtro por estado)
                1, -- admreporte_genero (Filtro por sexo)
                0, 0, 0, 0, 0, 0, 0, 0, 
                1, -- admreporte_tipo_contrato
                0, 0, 0
            );
            PRINT 'Registro en hadmreportemst insertado exitosamente.';
        END
        ELSE
        BEGIN
            PRINT 'El reporte ya existe en hadmreportemst.';
        END
    END
    ELSE
    BEGIN
        PRINT 'No es un reporte (@EsReporte = 0). Omitiendo inserciones en xsdareportmst y hadmreportemst.';
    END

    COMMIT TRANSACTION;
    PRINT 'Transacción completada exitosamente.';

END TRY
BEGIN CATCH

    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    DECLARE @ErrorMensaje NVARCHAR(4000) = ERROR_MESSAGE();
    PRINT 'Error detectado:';
    PRINT @ErrorMensaje;

    THROW;
END CATCH;
