#!/bin/bash

# List of URLs to check
URLS=(
  "http://example.com"
  "http://example.org"
  "http://example.net"
)

# Report file
REPORT_FILE="load_time_report.txt"

# Checking the loading time of websites
check_load_time() {
  echo "Website Load Time Report - $(date)" > $REPORT_FILE
  echo "-----------------------------------" >> $REPORT_FILE
  
  for url in "${URLS[@]}"; do
    LOAD_TIME=$(curl -o /dev/null -s -w '%{time_total}\n' $url)
    echo "Load time for $url: ${LOAD_TIME}s" >> $REPORT_FILE
  done
  
  echo "Report has been saved to $REPORT_FILE."
}

check_load_time
