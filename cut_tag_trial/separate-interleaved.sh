#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: separate_and_compress_fastq <input_interleaved.fastq.gz>"
    return 1
fi

zcat "$1" | awk 'NR%8==1 || NR%8==2 || NR%8==4 || NR%8==5 {print}' | gzip > output_R1.fastq.gz
zcat "$1" | awk 'NR%8==3 || NR%8==6 || NR%8==7 || NR%8==0 {print}' | gzip > output_R2.fastq.gz

echo "Interleaved FASTQ file separated into R1 and R2 files: output_R1.fastq.gz and output_R2.fastq.gz"


