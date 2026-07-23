
SET NOCOUNT ON;
SELECT name, type_desc FROM sys.objects WHERE type IN ('V', 'P') AND is_ms_shipped = 0 ORDER BY type_desc, name;
