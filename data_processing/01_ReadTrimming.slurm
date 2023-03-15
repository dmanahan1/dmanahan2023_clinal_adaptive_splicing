#!/bin/bash
## TrimGalore! is a wrapper script around Cutadapt and FastQC to automate quality and adapter trimming in the same step.

# loop through each line of the file "accession_list"
for IN in $(cat accession_list); do

    # trim paired-end reads using Trim Galore!
    # --fastqc: generate quality reports using FastQC
    # --paired: indicate that input files are paired-end reads
    # /path/to/file/${IN}_1.fastq: specify the path to the first read file
    # /path/to/file/${IN}_2.fastq: specify the path to the second read file
    trim_galore --fastqc --paired /path/to/file/${IN}_1.fastq /path/to/file/${IN}_2.fastq;

done
