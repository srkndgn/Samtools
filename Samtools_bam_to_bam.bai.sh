# Samtools > http://www.htslib.org/
# Samtools is a suite of programs for interacting with high-throughput sequencing data. It consists of three separate repositories:

# Samtools > Reading/writing/editing/indexing/viewing SAM/BAM/CRAM format
# BCFtools > Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence variants
# HTSlib > A C library for reading/writing high-throughput sequencing data
# Samtools and BCFtools both use HTSlib internally, but these source packages contain their own copies of htslib so they can be built independently.


# BAM is a common file format for storing aligned reads from a gene sequencing machine.
# These files can get enormous (100+ GB), so it's helpful to have an index to support fast lookup.

# To execute the contents of the .bashrc file in the current shell session (necessary to start conda)
    source ~/.bashrc

# To create bam.bai files (Generic indexer for TAB-delimited genome position files) install Samptools, bcftools and HTSlib 
# If you are working on Shark CentOS Slurm cluster, use shark terminal window to load these modules

module load library/htslib/1.16/gcc-8.5.0
module load genomics/ngs/bcftools/1.11/gcc-8.3.1
module load genomics/ngs/samtools/1.16.1/gcc-8.5.0

# To check installed modules
module li

# To change the file permissions of a file to -rw-r--r--, you can use the chmod command in a Unix-like operating system such as Linux or macOS.
chmod 644 sample_1.bam

# if bam file is not sorted, then
samtools sort sample_1.bam -o sample_1_sorted.bam

# Samtools defines a file format for a BAM index and provides a simple command for generating one:
samtools index sample_1_sorted.bam sample_1_sorted.bam.bai

# Or directly
samtools index sample_1_sorted.bam