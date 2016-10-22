# 思考下如何通过原始表，计算存活率
titanic2 <-read.csv("data/titanic2.csv",stringsAsFactors = FALSE)
head(titanic2)
# 计算不同类别的存活率 = 存活人数/（存活人数 + 死亡人数）
#Step 1
tidy <- melt(titanic2, id = c("class", "age", "fate"),variable.name = "gender")
step1 = tidy
head(tidy)
#Step 2
tidy <- dcast(tidy, class + age + gender ~ fate,value.var = "value")
step2 = tidy
head(tidy)
#Step 3
tidy$rate <- round(tidy$survived /(tidy$survived + tidy$perished), 2)
step3 = tidy
head(tidy)

