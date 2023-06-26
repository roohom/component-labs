#!/bin/bash

host="localhost"
port="9200"
index="example"


# 创建索引
curl -X PUT "http://${host}:${port}/${index}"

# 删除指定索引
curl -X DELETE "${host}:${port}/${index}?pretty"

# 查询索引具体信息
crul -X GET "http://${host}:${port}/${index}?pretty"

# 打开/关闭索引
crul -X GET "http://${host}:${port}/${index}/_close?pretty"
crul -X GET "http://${host}:${port}/${index}/_open?pretty"