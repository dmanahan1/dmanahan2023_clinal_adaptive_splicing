#!/bin/bash
## Converts bam files to junc files.  junc files are human readable and only contain exon-exon junctions from the RNA-Seq BAM file.
## For more information, including column content: https://regtools.readthedocs.io/en/latest/commands/junctions-extract/

# loop through all bam files in the current directory
for bamfile in `ls *bam`; do

    # print a message indicating which file is being converted
    echo Converting $bamfile to $bamfile.junc

    # index the bam file using samtools
    samtools index $bamfile

    # extract junctions using regtools
    regtools junctions extract -s 0 -a 8 -m 50 -M 500000 $bamfile -o $bamfile.junc

    # add the path to the junction file to a text file
    echo $bamfile.junc >> population_juncfiles.txt

done
