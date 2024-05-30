#!/bin/bash

in_reference="${snakemake_input[in_reference]}" 
in_bam="${snakemake_input[in_bam]}"
in_bai="${snakemake_input[in_bai]}"
out_calls="${snakemake_output[out_calls]}"
stdout="${snakemake_log[stdout]}"
stderr="${snakemake_log[stderr]}"
calls_log="${snakemake_output[calls_log]}"
sample="${snakemake_wildcards[sample]}"

bcftools mpileup -f $in_reference $in_bam |  bcftools call -mv - > $out_calls