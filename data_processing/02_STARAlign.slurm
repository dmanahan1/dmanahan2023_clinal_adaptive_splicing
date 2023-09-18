#!/bin/bash
## Align trimmed reads to the mg39 reference genome.  STAR is designed to detect junction from RNA-Seq data.  The twopassMode option maps the reads twice: the second run uses junctions identified in the first run as annotations to improve identification of novel junctions in the 2nd run.

# Set the path to the reference genome directory
ref_genome=/path/to/mg39_STARindex/

# Run STAR with the specified options
STAR  --outFileNamePrefix ${prefix} \ # Prefix for output files.  Recommended to match the prefix with the input's name.
      --quantMode GeneCounts \    # Count gene expression
      --readFilesCommand cat \    # Concatenate reads
      --outSAMtype BAM SortedByCoordinate \  # Output sorted BAM files
      --runThreadN 14 \           # Number of threads
      --outBAMsortingThreadN 14 \ # Number of threads for sorting BAM files
      --outWigType wiggle \       # Output bigWig files
      --outWigStrand Unstranded \ # Strand information for bigWig files
      --outWigNorm None \         # Normalization method for bigWig files
      --genomeDir ${ref_genome} \ # Path to the reference genome directory
      --readFilesIn /path/to/first/PE/read/.fastq /path/to/second/PE/read/.fastq \ # Input read files
      --outFilterMultimapNmax 1 \ # Maximum number of multi-mapped reads
      --outFilterMismatchNmax 3 \ # Maximum number of mismatches
      --twopassMode Basic \       # Run in two-pass mode
      --outSAMstrandField intronMotif # Include intron motif in SAM output
done
