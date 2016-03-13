#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"


sed '1d' big5_data.csv > no_header_people.csv

awk -F, '{$1=++i "\t" $1;}1' OFS=, no_header_people.csv > output_people_data.csv

cut -f1,3,5,8 -d$'\t' output_people_data.csv 
