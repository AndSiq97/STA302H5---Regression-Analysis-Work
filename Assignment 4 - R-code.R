lstocks_url = "https://mcs.utm.utoronto.ca/~nosedal/data/stocks.txt"
lstocks = read.table(lstocks_url, header = TRUE, fill = TRUE)
names(lstocks)


EarlyMiddleAge = lstocks$EarlyMiddleAge
EarlyMiddleAge
LateMiddleAge = lstocks$LateMiddleAge
LateMiddleAge
Young = lstocks$Young
Young
Senior = lstocks$Senior
Senior



differences=c(EarlyMiddleAge,LateMiddleAge,Young,Senior);
differences
age=c(rep(1,131),rep(2,131),rep(3,131),rep(4,131));
age

oneway.test(differences~age,data=lstocks,var.equal=TRUE)

lstocks.lm = lm(differences~age,data=lstocks)
lstocks.res = resid(lstocks.lm)
plot(lstocks.res)

boxplot(cbind(EarlyMiddleAge,LateMiddleAge,Young,Senior))

qqnorm(lstocks.res,ylab="Standardized Residuals",xlab="Normal Scores",main="Stock Ownership Q-Q Plot") 
qqline(lstocks.res)

hist(lstocks.res)



