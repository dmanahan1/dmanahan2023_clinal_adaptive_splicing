#!/bin/bash
## Create a directory with annotation files built from a .gtf.  Used for read mapping with Bowtie2.

  bowtie2-build /path/to/GRCm39.primary_assemby.genome.fa \
  # Specify where Bowtie2 should create the genome index files.
  /path/to/mg39_bowtie2index
