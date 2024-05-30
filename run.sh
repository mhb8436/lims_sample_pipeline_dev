source ~/.zshrc
mamba activate py312
snakemake -j 4 -c 4 --config data_path='$1' output_path='$2'
