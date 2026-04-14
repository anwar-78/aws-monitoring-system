#!/bin/bash

source config.sh
mkdir -p $LOG_DIR

TIME=$(date)

CPU=$(bash scripts/cpu.sh)
MEM=$(bash scripts/memory.sh)
DISK=$(bash scripts/disk.sh)
FAILED=$(bash scripts/logs.sh)

echo "$TIME | CPU:$CPU% MEM:$MEM% DISK:$DISK% FAILED:$FAILED" >> $LOG_DIR/system.log

if [ $CPU -gt $CPU_THRESHOLD ]; then
 echo "$TIME ALERT: High CPU ($CPU%)" >> $LOG_DIR/alerts.log
fi

if [ $MEM -gt $MEMORY_THRESHOLD ]; then
 echo "$TIME ALERT: High Memory ($MEM%)" >> $LOG_DIR/alerts.log
fi

if [ $DISK -gt $DISK_THRESHOLD ]; then
 echo "$TIME ALERT: High Disk ($DISK%)" >> $LOG_DIR/alerts.log
fi
