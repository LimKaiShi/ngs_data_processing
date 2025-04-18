# NGS data processing (current stage: Cram to fastq)

This pipeline last updated on 18-04-2025 is just developed specifically for cram to fastq conversion due to the team interest at the moment.

## Clone or install this repository
```
# Clone this repository into your local machine
git clone

# Change into the workflow directory
cd
```
The folder structure should look like this
```
    .
    ├── gp2_monogenic_wgs
        └── data
        |   └── cram
        |   └── fastq
        └── samples.csv
        └── reference
        |   └── Homo_sapiens_assembly38.dict
        |   └── Homo_sapiens_assembly38.fasta
        |   └── Homo_sapiens_assembly38.fasta.fai
        └── env
        |   └── env.yaml
        └── logs
        |   └── cram_to_fastq
        |   └── cellranger-atac
        |   |    └── bin
        |   |       └── cellranger-arc
        |   └── genome
        └── scripts
        |   └── cram_to_fastq.sh
        └── run_all.sh
```

## Ensure package manager (either conda, miniconda or mamba) has been installed before hand, if not please refer to:
| Package manager  |Link                                                                       |
|:--------------|:-------------------------------------------------------------------       |
| Conda |https://www.10xgenomics.com/support/software/cell-ranger-arc/latest](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html        |
| Miniconda|https://support.10xgenomics.com/single-cell-atac/software/downloads/latest](https://www.anaconda.com/docs/getting-started/miniconda/install |
| Mamba   |https://github.com/ncbi/sra-tools/wiki/01.-Downloading-SRA-Toolkit  ](https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html       |
Personally I would prefer using mamba due to easy and lighter installation




