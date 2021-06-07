
source('lib.R')

library(ChIPseeker)
library(TxDb.Mmusculus.UCSC.mm10.knownGene)
library(clusterProfiler)

NAME <- 'H3K4me3_MEL.ENCFF825RVT.mm10.filtered'
# NAME <- 'H3K4me3_MEL.ENCFF176QEY.mm10.filtered'

BED_FN <- paste0(DATA_DIR, NAME, '.bed')

txdb <- TxDb.Mmusculus.UCSC.mm10.knownGene
peakAnno <- annotatePeak(BED_FN, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Hs.eg.db")

pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.pdf'))

plotAnnoPie(peakAnno)
dev.off()
