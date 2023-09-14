#!/bin/bash

# Run the leafcutter_ds.R script from the Leafcutter package.
/path/to/leafcutter/scripts/leafcutter_ds.R \
    # Set the number of threads (CPU cores) to use to 4.
    --num_threads 4 \
    # Provide the input file containing count data
    /path/to/population_perind_numers.counts.gz \
    # Specify the groups file (NHVTvFL_groups.txt).
    /path/to/population_groups.txt \
    # Redirect standard output to NHVTvFL_DSanalysis.out. The standard out contains a summary of the differential splicing analysis
    > DSanalysis.out

# This has two outputs, leafcutter_ds_cluster_significance.txt and leafcutter_ds_effect_sizes.txt.  Refer to https://davidaknowles.github.io/leafcutter/articles/Usage.html for more information on the content of these files.
