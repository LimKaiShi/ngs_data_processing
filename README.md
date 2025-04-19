# NGS data processing (current stage: Cram to fastq)

This pipeline last updated on 18-04-2025 is just developed specifically for cram to fastq conversion due to the team interest at the moment.

## Clone or install this repository
```
# Clone this repository into your local machine
git clone https://github.com/LimKaiShi/ngs_data_processing.git

# Change into the workflow directory
cd ngs_data_processing/gp2_monogenic_wgs
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
        └── scripts
        |   └── cram_to_fastq.sh
        └── run_all.sh
```

## Ensure package manager (either conda, miniconda or mamba) has been installed before hand, if not please refer to:
| Package manager  |Link                                                                       |
|:--------------|:-------------------------------------------------------------------       |
| Conda |https://www.10xgenomics.com/support/software/cell-ranger-arc/latest](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html        |
| Miniconda|https://support.10xgenomics.com/single-cell-atac/software/downloads/latest](https://www.anaconda.com/docs/getting-started/miniconda/install |
| Mamba   |https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html       |

Personally I would prefer using mamba due to easy and lighter installation

## Upload your cram file to the cram folder created

## Prepare your samples.csv file
You can create 2 columns table on excel and convert it to csv and upload here, the csv file should looks like:
```
sample_id,cram_path
HG00157,data/cram/HG00157.alt_bwamem_GRCh38DH.20150718.GBR.low_coverage.cram
```
it should consist of the name of the sample and the path to the cram file

## Running the pipeline
### Activate the environment
```
# Initiate your conda if you haven't before
conda init

# Refresh it
source ~/.bashrc

# Create the environment
conda env create -f env/env.yaml #IfYouUseMamba mamba env create -f env/env.yaml

# Activate the environment
conda activate ngs_pipeline
```

### Start converting!
```
# Run the code
./run_all.sh
```

### Debug and look into processing 
After the code run, any output or error will be shown in the log files. Can view it by:
```
tail logs/cram_to_fastq/{sample}.logs
```

## Dependencies and reference file
| Tools |Link                                                                       |
|:--------------|:-------------------------------------------------------------------       |
| gatk       | https://gatk.broadinstitute.org/hc/en-us/articles/360036194592-Getting-started-with-GATK4
| htslib|http://www.htslib.org/download/ |
| hg38 fasta | https://ddbj.nig.ac.jp/public/public-human-genomes/GRCh38/fasta/ |


