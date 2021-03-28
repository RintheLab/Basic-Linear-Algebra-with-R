
# Vector operations -------------------------------------------------------

# Define two vectors
x <- c(30, 20, 40, 10)
y <- c(20, 15, 18, 40)

# Sum 
x + y 

# Dot or inner product (default behavior returns a matrix object) 
x %*% y

# Norm
sqrt(x %*% x) # returns matrix object
sqrt(y %*% y)

# Multiplying by a scalar
10 * x
10 * y

# Scalar projection of s onto r
r <- c(3, -4, 0)
s <- c(10, 5, -6)

r %*% s / sqrt(r %*% r) # returns a matrix object

# Vector projections of s onto r
(r %*% s / r %*% r) %*% r