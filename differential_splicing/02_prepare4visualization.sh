#!/bin/bash
## Prepare the differential splicing results for visualization in R.

/path/to/leafcutter/leafviz/prepare_results.R \
    # Set the output file name. e.g.,
    -o populations.Rdata \
    # Specify the groups file for the analysis (NHVTvFL_groups.txt).
    -m /path/to/populations_groups.txt \
    # Provide a custom description for the analysis.
    -c "Differential splicing between the northernmost and southernmost ends of the latitudinal transect in Eastern US" \
    # Input data files for the analysis.  i.e., junction counts, and differential splicing output.
    /path/to/populations_perind_numers.counts.gz \
    /path/to/leafcutter_ds_cluster_significance.txt \
    /path/to/leafcutter_ds_effect_sizes.txt \
    # Specify the path to the annotation file.
    /path/to/mg39_annotation \

# This outputs a file with extension .RData that needs to be executed in the Leafviz software.
