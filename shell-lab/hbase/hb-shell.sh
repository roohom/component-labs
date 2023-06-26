

## 预先进入Hbase shell命令行
## hbase-shell
# 建表
create 'car_info', {NAME=>'info',REPLICATION_SCOPE => '1'}

# 创建复制链路
add_peer '111', ENDPOINT_CLASSNAME => 'me.roohom.replica.KafkaInterClusterReplicationEndpoint',CONFIG => { "bootstrapServers" => "192.168.137.46:9092", "topicName" => "hbase-wal", "replicationMode"=>"perRow"},TABLE_CFS => { "car_info" => ["info"]}
add_peer '111', ENDPOINT_CLASSNAME => 'me.roohom.replica.KafkaInterClusterReplicationEndpoint',CONFIG => { "bootstrapServers" => "192.168.137.243:9092", "topicName" => "hbase-wal", "replicationMode"=>"perTable"}, TABLE_CFS => { "car_info" => ["info"]}

add_peer '111', ENDPOINT_CLASSNAME => 'me.roohom.replica.KafkaInterClusterReplicationEndpoint',CONFIG => { "bootstrapServers" => "172.18.0.2:9092", "topicName" => "hbase-wal", "replicationMode"=>"perRow"},TABLE_CFS => { "car_info" => ["info"]}
add_peer '111', ENDPOINT_CLASSNAME => 'me.roohom.replica.KafkaInterClusterReplicationEndpoint',CONFIG => { "bootstrapServers" => "192.168.0.103:9092", "topicName" => "hbase-wal", "replicationMode"=>"perRow"},TABLE_CFS => { "car_info" => ["info"]}
add_peer '111', ENDPOINT_CLASSNAME => 'me.roohom.replica.HbaseEndpoint'

# 设置串行复制
set_peer_serial '111',true


put 'car_info', 'vin', 'info:vin', 'LSVN81818181881'
put 'car_info', 'vin', 'info:mile', 200
put 'car_info', 'LSVN81818181881', 'info:duration', 3.5
put 'car_info', 'LSVN81818181881', 'info:time', '2023-12-01 12:00:00'
put 'car_info', 'LSVN81818181881', 'info:update_time', '2023-12-01 12:00:00'

# 删除复制链路
remove_peer '111'