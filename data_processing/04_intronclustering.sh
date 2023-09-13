#!/usr/bin/env python
## Uses junction counts to define alternatively spliced intron clusters.

# Run the leafcutter_cluster_regtools.py script from the leafcutter package
python ~/leafcutter/clustering/leafcutter_cluster_regtools.py \
    # Specify the input junction file name
    -j population_juncfiles.txt \
    # Set the minimum intron size to 50 bases
    -m 50 \
    # Set the maximum intron size to 500000 bases
    -l 500000 \
    # Specify the output directory prefix.  In this case, we'll name it "population."
    -o population \
    # Check if the chromosome names in the input junction file match the ones in the reference genome
    --checkchrom

## Output includes two files, population_perind_counts.gz and population_perind_numers.counts.gz.  These files list an intron's genomic coordinates and cluster ID.  Former lists counts as a fraction of the total counts in a cluster, latter lists just the number of counts per intron. 
