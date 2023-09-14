#!/bin/bash
## Converts bam files to junc files.  junc files are human readable and only contain exon-exon junctions from the RNA-Seq BAM file.
## For more information, e.g. understanding what data is in each column: https://regtools.readthedocs.io/en/latest/commands/junctions-extract/

# Loop through all bam files in the current directory.
for bamfile in `ls *bam`; do

    # Print a message indicating which file is being converted
    echo Converting $bamfile to $bamfile.junc

    # Index the bam file using samtools
    samtools index $bamfile

    # Extract junctions using regtools
    regtools junctions extract -s 0 -a 8 -m 50 -M 500000 $bamfile -o $bamfile.junc

    # Add the path to each junction file to one text file.  Important for the subsequent intron clustering step.
    echo $bamfile.junc >> population_juncfiles.txt

done
