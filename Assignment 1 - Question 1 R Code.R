real_estate_url = "http://www.math.unm.edu/~alvaro/real_estate.txt"
real.estate = read.table(real_estate_url, header = TRUE)
names(real.estate)
explanatory = real.estate$Living.Area
response = real.estate$Price
real_estate.reg=lm(response~explanatory);
names(real_estate.reg)
real_estate.reg$coef;
plot(explanatory,response, pch=19,col="blue", xlab="Living Area", ylab="Price", main = "Siqueira");
abline(real_estate.reg$coef, col="red");

real_estate.reg$coef;

summary(real_estate.reg)



n = 1063
b<-summary(real_estate.reg)$coef[2,1];
SEb<-summary(real_estate.reg)$coef[2,2];


t.statistic<-b/SEb;
t.statistic
p.value<-2*(1-pt(t.statistic,n-2));
p.value



LCL = b-qt(0.95,df=n-2)*SEb;
UCL = b+qt(0.95,df=n-2)*SEb;
LCL
UCL
CL = c(LCL, UCL)
CL



real_estate.reg = lm(Price~Living.Area)
newdata = data.frame(Living.Area=4000)
predict(real_estate.reg,newdata,interval="predict") 



real_estate.reg = lm(Price~Living.Area)
newdata = data.frame(Living.Area=2000)
predict(real_estate.reg,newdata,interval="predict") 






