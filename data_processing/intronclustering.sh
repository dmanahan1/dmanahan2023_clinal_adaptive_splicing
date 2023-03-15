# 

# Run the leafcutter_cluster_regtools.py script from the leafcutter package
python ~/leafcutter/clustering/leafcutter_cluster_regtools.py \
    # Specify the input junction file name
    -j population_juncfiles.txt \
    # Set the minimum intron size to 50 bases
    -m 50 \
    # Set the maximum intron size to 500000 bases
    -l 500000 \
    # Specify the output directory prefix
    -o <output_prefix> \
    # Check if the chromosome names in the input junction file match the ones in the reference genome
    --checkchrom
