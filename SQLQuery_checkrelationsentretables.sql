SELECT 
    fk.name AS FK_Name,
    OBJECT_NAME(fk.parent_object_id) AS Table_Name,
    OBJECT_SCHEMA_NAME(fk.parent_object_id) AS Schema_Name
FROM sys.foreign_keys AS fk
WHERE OBJECT_NAME(fk.referenced_object_id) = 'SpecialOfferProduct'
    AND OBJECT_SCHEMA_NAME(fk.referenced_object_id) = 'Sales';