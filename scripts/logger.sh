#!/usr/bin/env bash

logger() {
    local level="$1"
    local message="$2"
    local log_file="$3"
    message="${message//$'\n'/ }"
    message="${message//$'\r'/ }"
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] [$level] $message" >> "$log_file"
}
