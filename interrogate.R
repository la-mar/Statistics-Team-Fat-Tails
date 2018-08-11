require(tidyverse)
require(summarytools)


train <- read.csv("C:\\Repositories\\Statistics-Team-Fat-Tails\\data\\train.csv")

train2 <- train %>% select(Id, MSSubClass, SalePrice, GrLivArea)

descr(train2)

colnames(train)



