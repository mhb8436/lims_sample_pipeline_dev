
rule plot_quals:
    input:
        in_vcf = rules.bcftools_call.output.out_calls
    output:
        out_plot = f'{OUTPUT_PATH}/plots/{{sample}}_quals.svg'
    script:
        f'{SCRIPT_PATH}/plot-quals.py'