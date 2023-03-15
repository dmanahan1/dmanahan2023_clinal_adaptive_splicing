#!/bin/bash
## Converts .bam files to .junc files.  .junc files are human readable and only contain exon-exon junctions from the RNA-Seq BAM file.
## For more information, including column content: https://regtools.readthedocs.io/en/latest/commands/junctions-extract/

for bamfile in `ls *bam`; do
    echo Converting $bamfile to $bamfile.junc
    samtools index $bamfile
    regtools junctions extract -s 0 -a 8 -m 50 -M 500000 $bamfile -o $bamfile.junc
    echo $bamfile.junc >> population_juncfiles.txt
done
