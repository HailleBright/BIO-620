# BIO 620 - Week 2
# CO2 Data Exploration
# Haille Bright

# Explore the built-in CO2 dataset
head(CO2)
str(CO2)
summary(CO2)

# Check the number of observations in each group
table(CO2$Type, CO2$Treatment)

# Examine treatment levels
levels(CO2$Treatment)

# Calculate mean uptake by geographic type
aggregate(uptake ~ Type, data = CO2, mean)

# Calculate mean uptake by type and treatment
aggregate(uptake ~ Type + Treatment, data = CO2, mean)

# Final figure
plot(CO2$conc, CO2$uptake,
     xlab = expression("CO"[2]~"concentration ("*mu*"L/L)"),
     ylab = expression("CO"[2]~"uptake ("*mu*"mol/m"^2*"/s)"),
     main = expression("CO"[2]~"Uptake in Grass Plants"),
     pch = ifelse(CO2$Treatment == "nonchilled", 1, 2),
     col = ifelse(CO2$Type == "Quebec", "blue", "red"),
     cex = 1.2)