#!/bin/bash
## Create a directory with annotation files built from a .gtf.  Used for read mapping with STAR.

    # Set the number of CPU threads to use during alignment to 14.
    STAR --runThreadN 14 \
    # Specify the run mode as "genomeGenerate," which means we are generating a genome index.
    --runMode genomeGenerate \
    # Set the sjdbOverhang parameter to 100.
    # This controls the length of overhangs used for spliced junctions.
    --sjdbOverhang 100 \
    # Provide the path to the reference genome FASTA file.
     --genomeFastaFiles /path/to/GRCm39.primary_assembly.genome.fa \
    # Specify the directory where STAR should create or access genome index files.
    --genomeDir /path/to/mg39_index/ \
    # Provide the path to the gene annotation file (GTF format).
    # This file contains information about gene features, such as exons and introns.
    --sjdbGTFfile /path/to/gencode.vM29.annotation.gtf \
