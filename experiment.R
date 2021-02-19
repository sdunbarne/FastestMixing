r <- 0
p <- 1/2
q <- 1 - p

for (n in 2:8) {

   P <- diag(r, n, n)
   P[ row(P) - col(P)  == 1] <- p
   P[ row(P) - col(P)  == -1] <- q
   P[1, 1] = q
   P[n, n] = p

   cat("Size of matrix: ", n , "Eigenvalues: ",
        unlist(eigen( P, only.values=TRUE )), "\n")
}


