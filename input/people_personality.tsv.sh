#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"


sed '1d'  big5_data.csv > no_header_people_p.csv

awk -F, '{$1=++i "\t" $1;}1' OFS=, no_header_people_p.csv > output_people_data_p.csv

cut -f1,9,10,11,13,14,15,16,17,18 -d$'\t' output_people_data_p.csv 
