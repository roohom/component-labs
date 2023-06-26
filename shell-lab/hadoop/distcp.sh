export destIp=127.0.0.1

hadoop distcp -D ipc.client.fallback-to-simple-auth-allowed=true -m 5 -bandwidth 69 hdfs://nameservice1:8020/user/hive/warehouse/dw_csvw.db/dim_vehicle_df/dt=2023-06-24 webhdfs://${destIp}:50070/tmp/dim_vehicle_df