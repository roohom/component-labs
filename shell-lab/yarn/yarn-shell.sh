#!/bin/bash

# 批量KILL

# KILL ACCEPTED类型的任务
# shellcheck disable=SC2006
for appid in `yarn application -list | grep -w ACCEPTED | awk '{print $1}'`;do yarn application -kill $appid;done


# KILL RUNNING 类型任务
for appid in `yarn application -list | grep -w RUNNING| awk '{print $1}'`;do yarn application -kill $appid;done


# 根据任务名称KILL
for appid in `yarn application -list | grep 关键字| awk '{print $1}'`;do yarn application -kill $appid;done


# KILL所有任务 谨慎使用
for appid in `yarn application -list | awk '{print $1}' | grep application_`;do yarn application -kill $appid;done
