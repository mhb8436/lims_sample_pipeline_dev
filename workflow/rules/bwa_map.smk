rule bwa_map:
    input:
        in_read = ancient(read),
        in_reference = ancient(f'{BWA_REFERENCE}')
    output:
        mapped_reads = f'{OUTPUT_PATH}/mapped_reads/{{sample}}.bam'
    conda: f'{ENVS_DIR}/sample_env.yaml'
    shell:
        "bwa mem {input.in_reference}  {input.in_read} | samtools view -Sb - > {output.mapped_reads}"