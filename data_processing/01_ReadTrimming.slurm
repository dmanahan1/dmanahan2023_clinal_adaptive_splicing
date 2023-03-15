#!/bin/bash
## TrimGalore! is a wrapper script around Cutadapt and FastQC to automate quality and adapter trimming in the same step.

for IN in $(cat accession_list); do
    trim_galore --fastqc --paired /path/to/file/${IN}_1.fastq /path/to/file${IN}_2.fastq;
done
