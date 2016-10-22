#Collected by Pew Research Center
#Examines the relationship between income and religion in the US
#i.e, which religions have the wealthiest adherents?
# 计算不同宗教哪个水平工资的人数最多
library(reshape2)
raw <- read.csv("data/pew.csv", check.names = F)
tidy <- melt(raw, id = "religion")
View(tidy)
# We can now fix the column names
names(tidy) <- c("religion", "income", "n")
# Alternatively
tidy <- melt(raw, id = "religion",variable.name = "income", value.name = "n")
View(tidy)

