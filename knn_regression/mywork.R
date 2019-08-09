library(Metrics)

train <- read.csv("AutoTrain.csv")[ ,c('mpg', 'weight')]
test <- read.csv("AutoTest.csv")[ ,c('mpg', 'weight')]

#No need to do data normalization since there is only one feature needed for this assignment
# min_weight <- min(train$weight)
# max_weight <- max(train$weight)
# min_mpg <- min(train$mpg)
# max_mpg <- max(train$mpg)
# 
# train$weight <- (train$weight - min_weight) / (max_weight - min_weight)
# test$weight <- (test$weight - min_weight) / (max_weight - min_weight)
# train$mpg <- (train$mpg - min_mpg) / (max_mpg - min_mpg)
# test$mpg <- (test$mpg - min_mpg) / (max_mpg - min_mpg)

train_weight <- train$weight
test_weight <- test$weight
train_label <- train$mpg
test_label <- test$mpg

#k=2
result_k2 <- kNN(2, train_weight, train_label, test_weight)
MSE_k2 <- mse(result_k2, test_label)

#k=5
result_k5 <- kNN(5, train_weight, train_label, test_weight)
MSE_k5 <- mse(result_k5, test_label)

#k=10
result_k10 <- kNN(10, train_weight, train_label, test_weight)
MSE_k10 <- mse(result_k10, test_label)

#k=20
result_k20 <- kNN(20, train_weight, train_label, test_weight)
MSE_k20 <- mse(result_k20, test_label)

#k=30
result_k30 <- kNN(30, train_weight, train_label, test_weight)
MSE_k30 <- mse(result_k30, test_label)

#k=50
result_k50 <- kNN(50, train_weight, train_label, test_weight)
MSE_k50 <- mse(result_k50, test_label)

#k=100
result_k100 <- kNN(100, train_weight, train_label, test_weight)
MSE_k100 <- mse(result_k100, test_label)

plot(train_weight, train_label, xlab="weight",ylab="mpg",col="red")
points(test_weight, test_label, col="blue")
points(test_weight, result_k30, col="green")

