# Samtools > http://www.htslib.org/

# Samtools is a suite of programs for interacting with high-throughput sequencing data. It consists of three separate repositories:

# Samtools > Reading/writing/editing/indexing/viewing SAM/BAM/CRAM format
# BCFtools > Reading/writing BCF2/VCF/gVCF files and calling/filtering/summarising SNP and short indel sequence variants
# HTSlib > A C library for reading/writing high-throughput sequencing data
# Samtools and BCFtools both use HTSlib internally, but these source packages contain their own copies of htslib so they can be built independently.


# BAM is a common file format for storing aligned reads from a gene sequencing machine.
# These files can get enormous (100+ GB), so it's helpful to have an index to support fast lookup.
