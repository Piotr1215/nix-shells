#!/usr/bin/env bash

set -eo pipefail

# Add source and line number wher running in debug mode: __run_with_xtrace.sh gdateexp.sh
# Set new line and tab for word splitting
IFS=$'\n\t'

echo "Setting up maintenance window for the cluster"
current_date=$(date +%Y-%m-%d)
echo "Current date: $current_date"
next_saturday=$(date -d "next Saturday" +%Y-%m-%d)
maintenance_window_start="${next_saturday}T02:00:00Z"
echo "Maintenance window start: $maintenance_window_start"
maintenance_window_end=$(date -d "next Saturday + 1 day" +%Y-%m-%d)T08:00:00Z
echo "Maintenance window end: $maintenance_window_end"

echo "NOW WITH Gdate"
echo "Setting up maintenance window for the cluster"
current_gdate=$(gdate +%Y-%m-%d)
echo "Current gdate: $current_gdate"
next_saturday=$(gdate -d "next Saturday" +%Y-%m-%d)
maintenance_window_start="${next_saturday}T02:00:00Z"
echo "Maintenance window start: $maintenance_window_start"
maintenance_window_end=$(gdate -d "next Saturday + 1 day" +%Y-%m-%d)T08:00:00Z
echo "Maintenance window end: $maintenance_window_end"
