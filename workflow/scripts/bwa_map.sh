#!/usr/bin/env bash

exec 2> "${snakemake_log[0]}"

read="${snakemake_input[in_read]}" 
reference="${snakemake_input[in_reference]}"
outfile="${snakemake_output[mapped_reads]}"
stdout="${snakemake_log[stdout]}"
stderr="${snakemake_log[stderr]}"
bwalog="${snakemake_output[bwalog]}"


bwa mem $reference $read | samtools view -Sb - > $outfile