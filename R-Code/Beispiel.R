J_erzeugen <- function(n,k) {
  J <- matrix(nrow=n^k, ncol=k)
  for(j in 1:n^k){
    j_quer <- j-1
    for(s in 1:k) {
      J[j,k+1-s] <- j_quer %% n + 1
      j_quer <- j_quer %/% n
    }
  }
  return(J)
}


#############################################

profit1 <- function(strat_i, strat_j) {
  p <- strat_j[length(strat_j)]
  for(s in  1:length(strat_i)) {
    if(strat_j[s] >= strat_i[s]) {
      p <- strat_j[s]
      break;
    }
  }
  return(p)
}


profit <- function(strat_i, strat_j) {
  return(profit1(strat_i,strat_j)/max(strat_j))
}

H_erzeugen <- function(H,I,J) {
  for(i in 1:nrow(H)) {
    for(j in 1:ncol(H)) {
      H[i,j] <- profit(I[i,], J[j,])
    }
  }
  return(H)
}


#################################################

n = 4
k = 2

###########


J <- J_erzeugen(n,k)
J <- permutations(n,k,1:n)

I <- J_erzeugen(n,k-1)
I


H = matrix(nrow=nrow(I), ncol=nrow(J))

J_names = array(dim=nrow(J))
for(j in 1:nrow(J)) {
  J_names[j] <- toString(J[j,])
}

colnames(H) <- J_names

I_names = array(dim=n^(k-1))
for(i in 1:n^(k-1)) {
  I_names[i] <- toString(I[i,])
}

rownames(H) <- I_names

H <- H_erzeugen(H,I,J)

H

rowSums(H)


######################################

library(plot3D)

f <- function(p,q) {
  return((p*q+p*(1-q)*4+(1-p)*q*2+(1-p)*(1-q)*2)/(q+(1-q)*2))
}

n = 500
H = array(dim=c(n,n))
for(i in 1:n) {
  for(j in 1:n) {
    H[i,j] = f(j/n,i/n)
  }
}

image2D(H, xlab = "q", ylab = "p", xlim=c(1,0),
        shade = 0.1, main = "Hypsometry data set", clab = "m", contour=TRUE)

abline(0,0,h=0.5)
abline(0,0,v=2/3)

############


x = matrix(rep(seq(1/n,1,1/n),n), nrow=n, byrow=TRUE)
y = matrix(rep(seq(1/n,1,1/n),n), nrow=n, byrow=FALSE)

surf3D(x,y,H,resfac=10, contour = "black", theta=25, phi=20, shade=0.3)


persp3d(x,y,H, col="grey", shade=0.75, col.lab="white")
