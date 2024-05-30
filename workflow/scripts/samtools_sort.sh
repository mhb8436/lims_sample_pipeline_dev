#!/bin/bash
# For detailed syntax, refer to Bash Example2 in the https://snakemake.readthedocs.io/en/stable/snakefiles/rules.html#bash-example-2 page. 

in_bam="${snakemake_input[in_bam]}" 
sorted_reads="${snakemake_output[sorted_reads]}"
stdout="${snakemake_log[stdout]}"
stderr="${snakemake_log[stderr]}"
sorted_log="${snakemake_output[sorted_log]}"
sample="${snakemake_wildcards[sample]}"

samtools sort -T sorted_reads/$sample -O bam $in_bam > $sorted_reads