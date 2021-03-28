
# Matrix operations -------------------------------------------------------

# Define a matrix
m <- c(7, -6, 12, 8)
m <- matrix(m, nrow = 2, byrow = TRUE)

# Matrix multiplication by a vector
v <- c(5, 6)
m %*% v

# Matrix multiplication
A <- matrix(c(1, 2, 3, 4, 0, 1), nrow = 2, byrow = TRUE)
B <- matrix(c(1, 1, 0, 0, 1, 1, 1, 0, 1), nrow = 3, byrow = TRUE)

A %*% B

# Matrix multiplication by a scalar
100 * A

# Rank of a Matrix
C <- matrix(c(1, 0, 1, -2, -3, 1, 3, 3, 0), nrow = 3, byrow = TRUE)
qr(C)$rank

D <- matrix(c(1, 1, 0, 2, -1, -1, 0, -2), nrow = 2, byrow = TRUE)
qr(D)$rank

# Solving linear equations

# Equations:
# (1): a + b + c = 15
# (2): 3a + 2b + c = 28
# (3): 2a + b + 2c = 23

# Coefficient matrix
C <- matrix(c(1, 1, 1, 3, 2, 1, 2, 1, 2), nrow = 3, byrow = TRUE)

# Results vector 
r <- c(15, 28, 23)

# Coefficient matrix inverse
C_inv <- solve(C)

# Solution
s <- C_inv %*% r
s

# Determinant of a matrix
det(C)

# Matrix transpose
t(C)

# Identity matrix
diag(5) # 5 X 5

# Eigenvalues and eigenvectors
A <- matrix(c(3, 4, 0, 5), nrow = 2, byrow = TRUE)
e_A <- eigen(A)

# Values
e_vls <- eA$values

# Vectors
e_vects <- eA$vectors

# A matrix can be decomposed as:
e_vects %*% diag(e_vls) %*% solve(e_vects)

# Gram-Schmidt process with pracma package
library(pracma)

A <- matrix(c(2, -2, 18, 2, 1, 0, 1, 2, 0), nrow = 3, byrow = TRUE)
GS_A <- gramSchmidt(A)

# Q orthogonalized matrix 
GS_A$Q

# R upper triangular matrix
GS_A$R

# A can be decomposed as:
GS_A$Q %*% GS_A$R
