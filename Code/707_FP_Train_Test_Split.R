library(tidyverse)
library(caTools) #sample.split()

# Change the outcome variable into categorical variable
data <- read.csv("C:/lucy/Duke/Biostats-707/Final Project/707_Project_EDA.csv")
data <- data[,5:29]
data$Smoke_Dependence_new <- ifelse(data$Smoke_Dependence_Dif>=0, 0, 1)

#Split the dataset into 80% training dataset and 20% test dataset.
set.seed(2021)
Y <-  data$Smoke_Dependence_new
data$split = sample.split(Y, SplitRatio = 0.8)
train <- data %>% 
  filter(split == TRUE) %>% 
  select(-split)

test <- data %>% 
  filter(split == FALSE) %>% 
  select(-split)

idx <- createFolds(train$Smoke_Dependence_new, k = 5)
sapply(idx, length)

list1 <- idx$Fold1
list2 <- idx$Fold2
list3 <- idx$Fold3
list4 <- idx$Fold4
list5 <- idx$Fold5
Fold1 <- train[list1,]
Fold2 <- train[list2,]
Fold3 <- train[list3,]
Fold4 <- train[list4,]
Fold5 <- train[list5,]
Fold1$Fold <- 'Fold1'
Fold2$Fold <- 'Fold2'
Fold3$Fold <- 'Fold3'
Fold4$Fold <- 'Fold4'
Fold5$Fold <- 'Fold5'
train_new <- rbind(Fold1,Fold2,Fold3,Fold4,Fold5)
write.csv(train_new,'707_FP_Train.csv')
write.csv(test,'707_FP_Test.csv')