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
