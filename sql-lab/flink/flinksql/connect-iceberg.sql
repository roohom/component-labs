CREATE CATALOG iceberg_hive_catalog with (
    'type'='iceberg',
    'catalog_type'='hive',
    'uri'='thrift://cdh001:9083',
    'clients'='5',
    'property-version'='1',
    'warehouse'='hdfs://cdh001:8020/user/hive/warehouse'
);

USE CATALOG iceberg_hive_catalog;

SHOW DATABASES ;

USE iceberg_db;

SHOW TABLES;

SELECT *
FROM t_iceberg_sample_1;


SELECT * FROM iceberg_hive_catalog.iceberg_db.t_iceberg_sample_1;

-----------------------------------------------------------------
CREATE TABLE `hive_catalog`.`default`.`sample`
(
    `id`   INT UNIQUE COMMENT 'unique id',
    `data` STRING NOT NULL,
    PRIMARY KEY (`id`) NOT ENFORCED
) with (
    'format-version'='2',
    'write.upsert.enabled'='true'
);

