rule samtools_index:
    input:
        sorted_reads = rules.samtools_sort.output.sorted_reads        
    output:
        sorted_index = f'{OUTPUT_PATH}/sorted_reads/{{sample}}.bam.bai'
    shell:
        "samtools index {input.sorted_reads} {output.sorted_index}"
