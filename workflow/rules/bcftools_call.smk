rule bcftools_call:
    input:
        in_reference = ancient(f'{BWA_REFERENCE}'),
        in_bam = expand(f'{OUTPUT_PATH}/sorted_reads/{{sample}}.bam', sample=SAMPLES),
        in_bai = expand(f'{OUTPUT_PATH}/sorted_reads/{{sample}}.bam.bai', sample=SAMPLES)
    output:
        out_calls = f'{OUTPUT_PATH}/calls/all.vcf'
    shell:
        "bcftools mpileup -f {input.in_reference} {input.in_bam} | "
        "bcftools call -mv - > {output.out_calls}"