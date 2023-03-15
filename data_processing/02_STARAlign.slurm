#!/bin/bash
## Align trimmed reads to the mg39 reference genome.  STAR is designed to detect junction from RNA-Seq data.  The twopassMode option maps the reads twice: the second run uses junctions identified in the first run as annotations to improve identification of novel junctions in the 2nd run.

for IN in $(cat accession_list); do

   ref_genome=/path/to/mg39_index/

   STAR  --outFileNamePrefix ${IN} \
         --quantMode GeneCounts \
         --readFilesCommand cat \
         --outSAMtype BAM SortedByCoordinate \
         --runThreadN 14 \
         --outBAMsortingThreadN 14 \
         --outWigType wiggle \
         --outWigStrand Unstranded \
         --outWigNorm None \
         --genomeDir ${ref_genome} \
         --readFilesIn ${IN}_1_val_1.fq ${IN}_2_val_2.fq \
         --outFilterMultimapNmax 1 \
         --outFilterMismatchNmax 3 \
         --twopassMode Basic \
         --outSAMstrandField intronMotif \;
done
