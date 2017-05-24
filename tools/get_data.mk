all_hg19: kaviar_hg19 \
	clinvar_2.0_hg19 \
	dbsnp_hg19 \
	ExAC_nonTCGA_hg19

kaviar_hg19: Kaviar-160204-Public-hg19.vcf.tar

Kaviar-160204-Public-hg19.vcf.tar:
	wget -N http://s3-us-west-2.amazonaws.com/kaviar-160204-public/Kaviar-160204-Public-hg19.vcf.tar

clinvar_2.0_hg19: clinvar.vcf.gz

clinvar.vcf.gz: 
	wget -N ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/vcf_2.0/clinvar.vcf.gz

dbsnp_hg19: 00-All.vcf.gz

00-All.vcf.gz:
	wget -N ftp://ftp.ncbi.nih.gov/snp/organisms/human_9606_b150_GRCh37p13/VCF/00-All.vcf.gz

ExAC_nonTCGA_hg19: ExAC_nonTCGA.r0.3.1.sites.vep.vcf.gz

ExAC_nonTCGA.r0.3.1.sites.vep.vcf.gz:
	wget -N ftp://ftp.broadinstitute.org/pub/ExAC_release/release0.3.1/subsets/ExAC_nonTCGA.r0.3.1.sites.vep.vcf.gz
