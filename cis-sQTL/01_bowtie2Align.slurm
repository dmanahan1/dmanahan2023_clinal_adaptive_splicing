#!/bin/bash
## Aligned trimmed reads to the mg39 genome with Bowtie2, which outputs SAM files.  These need to be converted to BAM and then indexed.  This needs to be executed for each individual.

# Set the path to the reference genome directory
ref_genome=/path/to/mg39_bowtie2index/

# Run Bowtie2 with the specified options
bowtie2  -X ${ref_genome} \ # Path to the reference genome directory
         -1 /path/to/first/PE/read/.fastq \
         -2 /path/to/second/PE/read/.fastq \
         -S ${prefix}_exome_mg39.sam && # Specify the output SAM name.  Recommended to match the name to the prefix of the input file's name.

samtools view -S -b ${prefix}_exome_mg39.sam > ${prefix}_exome_mg39.bam # Convert SAM to BAM
samtools sort ${prefix}_exome_mg39.bam -o ${prefix}_exome_mg39_sorted.bam # Index the BAM
