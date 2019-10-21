rmr<-read.table("rmr.txt",header=T)
# Fill in line here
model<-lm(metabolic.rate~body.weight, data=rmr)
sum.model<-summary(model)
# Fill in 2 lines here
R2<-sum.model$r.squared
f<-sum.model$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
# Fill in 2 lines here

intercept<-model$coefficients[1]
slope<-model$coefficients[2]

output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)
png("graph.png")
# Fill in 2 lines here
plot(metabolic.rate~body.weight, data=rmr)
abline(model)
dev.off()

