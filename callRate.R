# ABOUT:
# KEYWORDS:
# USAGE: Rscript templateR
suppressMessages(library('getopt'));

# Args
params = c(
  'genotypicFile'   , 'g', 0, "character"
);
spec = matrix(params, byrow=TRUE, ncol=4);
prog_name = sub(".*=", "", commandArgs()[4]);
opt = getopt(spec,command=paste("Rscript", prog_name));

input = read.csv(opt$genotypicFile,na.strings = "-",row.names = 1,header = T);
write.csv(data.frame(row.names = colnames(input), callRate = apply(input,2,function(x)mean(!is.na(x)))),
          file = "call_rates.csv")
     