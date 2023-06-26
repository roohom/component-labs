#!/bin/bash

topicName=''
bootstrapServer=""
groupId=""

# 查看topic信息
/opt/cloudera/parcels/CDH/bin/kafka-topics --describe --topic "${topicName}" --bootstrap-server "${bootstrapServer}"

# 列出所有的topic
/opt/cloudera/parcels/CDH/bin/kafka-topics --list --bootstrap-server "${bootstrapServer}"

# 列举消费者组情况
/opt/cloudera/parcels/CDH/bin/kafka-consumer-groups --bootstrap-server "${bootstrapServer}" --group "${groupId}" --describe

# 命令行消费数据
/opt/cloudera/parcels/CDH/bin/kafka-console-consumer --topic "${topicName}" --bootstrap-server "${bootstrapServer}"
# 命令行消费数据 从最初开始
/opt/cloudera/parcels/CDH/bin/kafka-console-consumer --topic "${topicName}" --bootstrap-server "${bootstrapServer}" --from-beginning
# 命令行消费数据 打印时间戳
/opt/cloudera/parcels/CDH/bin/kafka-console-consumer --topic "${topicName}" --bootstrap-server "${bootstrapServer}" --from-beginning --property print.timestamp=true

# 查询topic的offset情况
/opt/cloudera/parcels/CDH/bin/kafka-run-class kafka.tools.GetOffsetShell --broker-list "${bootstrapServer}" -topic "${topicName}" --time -2



############################################################################################################################################

