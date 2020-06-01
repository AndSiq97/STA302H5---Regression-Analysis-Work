install.packages("swirl")
library("swirl") 
swirl()




lobster_url = "https://mcs.utm.utoronto.ca/~nosedal/data/lobster.txt"
lobster = read.table(lobster_url, header = TRUE);

Traps.Fisher = lobster$Traps.Fisher
Year = lobster$Year

plot(Year,Traps.Fisher,main = "1 a) Siqueira")

fit.lobster1 <- lm(Traps.Fisher ~ Year)

summary(fit.lobster1)

plot(fit.lobster1, main = "1 a) Siqueira")

cooks.distance(fit.lobster1)



Year_squared <- Year^2

fit.lobster2 <- lm(Traps.Fisher ~ Year + Year_squared)

summary(fit.lobster2)

plot(fit.lobster2, main = "1 b) Siqueira")

cooks.distance(fit.lobster2)

plot(fit.lobster2, main = "1 c) Siqueira")

#qqnorm(fit.lobster2$residuals, datax = TRUE)
#qqline(fit.lobster2$residuals, datax = TRUE)
