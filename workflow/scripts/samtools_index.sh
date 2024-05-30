#!/bin/bash

sorted_reads="${snakemake_input[sorted_reads]}" 
sorted_index="${snakemake_output[sorted_index]}"
stdout="${snakemake_log[stdout]}"
stderr="${snakemake_log[stderr]}"
sorted_log="${snakemake_output[sorted_log]}"
sample="${snakemake_wildcards[sample]}"

samtools index $sorted_reads -o $sorted_index