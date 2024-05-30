rule samtools_sort:
    input:
        in_bam = rules.bwa_map.output.mapped_reads        
    output:
        sorted_reads = f'{OUTPUT_PATH}/sorted_reads/{{sample}}.bam'
    shell:
        "samtools sort -T sorted_reads/{wildcards.sample} "
        "-O bam {input} > {output}"
