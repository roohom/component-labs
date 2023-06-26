
--HIVE CATALOG
CREATE CATALOG hive_cata WITH (
    'type' = 'hive',
    'default-database' = 'dw_unicdata',
    'hive-conf-dir' = '/etc/hive/conf'
);
-- set the HiveCatalog as the current catalog of the session
USE CATALOG hive_cata;

SHOW DATABASES ;

USE dw_unicdata;

SHOW TABLES;

SELECT *
FROM hive_cata.dw_unicdata.online_all
LIMIT 10;