#!/bin/bash

# Exit if pipeline failed
set -euo pipefail

cramfile=$1
sample=$2

gatk SamToFastq \
--java-options "-Xmx30G -XX:-UsePerfData" \
--INPUT "${cramfile}" \
--REFERENCE_SEQUENCE "reference/Homo_sapiens_assembly38.fasta" \
--FASTQ "data/fastq/${sample}_R1.fastq" \
--SECOND_END_FASTQ "data/fastq/${sample}_R2.fastq"

echo "[INFO] Completed conversion of CRAM to FASTQ for sample: $sample"