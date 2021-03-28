
# Some statistics with matrix operations ----------------------------------

# Sample mean -------------------------------------------------------------

# data
set.seed(5)
y <- runif(100, min = 10, max = 35)

# mean function
mean(y)

# Sample mean with matrix multiplication

# Sample size
s_size <- length(y) 

# 1's vector
v_1 <- rep(1, s_size)

# y mean 
y_mean <- v_1 %*% y / s_size

# Sample variance --------------------------------------------------------

# var function
var(y)

# sample variance with matrix multiplication

# differences between the observations and the sample mean
r <- y - as.numeric(y_mean)

# y variance
r %*% r / (s_size - 1)
