install.packages("swirl")

library("swirl")

swirl()

swirl::install_course("Regression Models")



oil_url = "https://mcs.utm.utoronto.ca/~nosedal/datasets/oil-production.txt"

crude_oil = read.table(oil_url, header = TRUE);

names(crude_oil)

energy.consumption = crude_oil$energy.consumption;
oil.production = crude_oil$oil.production
oil.reg_1 = lm(oil.production~energy.consumption);
oil.reg_1
summary(oil.reg_1)

nuclear.electricity = crude_oil$nuclear.electricity;
oil.production = crude_oil$oil.production
oil.reg_2 = lm(oil.production~nuclear.electricity);
oil.reg_2
summary(oil.reg_2)


coal.production = crude_oil$coal.production;
oil.production = crude_oil$oil.production
oil.reg_3 = lm(oil.production~coal.production);
oil.reg_3
summary(oil.reg_3)


gas.production = crude_oil$gas.production;
oil.production = crude_oil$oil.production
oil.reg_4 = lm(oil.production~gas.production);
oil.reg_4
summary(oil.reg_4)


fuel.rate = crude_oil$fuel.rate;
oil.production = crude_oil$oil.production
oil.reg_5 = lm(oil.production~fuel.rate);
oil.reg_5
summary(oil.reg_5)













energy.consumption = crude_oil$energy.consumption;
nuclear.electricity = crude_oil$nuclear.electricity;
oil.production = crude_oil$oil.production
oil.reg_12 = lm(oil.production~energy.consumption+nuclear.electricity);
oil.reg_12
summary(oil.reg_12)


energy.consumption = crude_oil$energy.consumption;
coal.production = crude_oil$coal.production;
oil.production = crude_oil$oil.production
oil.reg_13 = lm(oil.production~energy.consumption+coal.production);
oil.reg_13
summary(oil.reg_13)


energy.consumption = crude_oil$energy.consumption;
gas.production = crude_oil$gas.production;
oil.production = crude_oil$oil.production
oil.reg_14 = lm(oil.production~energy.consumption+gas.production);
oil.reg_14
summary(oil.reg_14)


energy.consumption = crude_oil$energy.consumption;
fuel.rate = crude_oil$fuel.rate;
oil.production = crude_oil$oil.production
oil.reg_15 = lm(oil.production~energy.consumption+fuel.rate);
oil.reg_15
summary(oil.reg_15)










energy.consumption = crude_oil$energy.consumption;
fuel.rate = crude_oil$fuel.rate;
nuclear.electricity = crude_oil$nuclear.electricity;
oil.production = crude_oil$oil.production
oil.reg_152 = lm(oil.production~energy.consumption+fuel.rate+nuclear.electricity);
oil.reg_152
summary(oil.reg_152)


energy.consumption = crude_oil$energy.consumption;
fuel.rate = crude_oil$fuel.rate;
coal.production = crude_oil$coal.production;
oil.production = crude_oil$oil.production
oil.reg_153 = lm(oil.production~energy.consumption+fuel.rate+coal.production);
oil.reg_153
summary(oil.reg_153)


energy.consumption = crude_oil$energy.consumption;
fuel.rate = crude_oil$fuel.rate;
gas.production = crude_oil$gas.production;
oil.production = crude_oil$oil.production
oil.reg_154 = lm(oil.production~energy.consumption+fuel.rate+gas.production);
oil.reg_154
summary(oil.reg_154)


