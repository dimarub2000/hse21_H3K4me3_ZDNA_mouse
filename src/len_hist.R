
source('lib.R')

###

# NAME <- 'H3K4me3_MEL.ENCFF825RVT.mm10'
# NAME <- 'H3K4me3_MEL.ENCFF176QEY.mm10'
# NAME <- 'mouseZ-DNA1'
NAME <- 'H3K4me3_MEL.intersect_with_mouseZ-DNA1'
###

bed_df <- read.delim(paste0(DATA_DIR, NAME, '.bed'), as.is = TRUE, header = FALSE)

colnames(bed_df) <- c('chrom', 'start', 'end')
bed_df$len <- bed_df$end - bed_df$start

ggplot(bed_df) +
  aes(x = len) +
  geom_histogram() +
  ggtitle(NAME, subtitle = sprintf('Number of peaks = %s', nrow(bed_df))) +
  theme_bw()

print(OUT_DIR)
print(paste0('len_hist.', NAME, '.pdf'))
ggsave(paste0('len_hist.', NAME, '.pdf'), path = OUT_DIR)

