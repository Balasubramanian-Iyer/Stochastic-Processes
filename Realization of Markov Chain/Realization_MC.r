a = c(0.6, 0.3, 0.1, 0.2, 0.6, 0.2, 0.3, 0.1, 0.6)
p = matrix(a, nrow = 3, ncol = 3)
i = c(0.3, 0.3, 0.4)
r1 = c()
cum = c(0.3, 0.6, 1)
rn = runif(12, 0, 1)

for (i in 1:12) {
  if (rn[i] <= cum[1]) {
    r1[i] <- 1
  } else if (rn[i] <= cum[2] && rn[i] > cum[1]) {
    r1[i] <- 2
  } else {
    r1[i] <- 3
  }
}
r1
m = matrix(rep(0,120),nrow = 10, ncol = 12)
m[1,] = r1
m

b = c(0.6,0.9,1,0.2,0.8,1,0.3,0.4,1)
cmat = matrix(b ,nrow=3,ncol = 3)
cmat
cmat=t(cmat)
cmat

for (i in seq(2, 10)) {
  for (j in seq(1, 12)) {
    r = runif(1, 0, 1)
    pstate = m[i - 1, j]
    if (r <= cmat[pstate, 1]) {
      m[i, j] = 1
    } else if (r <= cmat[pstate, 2] && r > cmat[pstate, 1]) {
      m[i, j] = 2
    } else {
      m[i, j] = 3
    }
  }
}
m

pmf = matrix(rep(0,30), nrow = 10, ncol=3)
pmf

for(i in seq(1,10)){
  c1 = c2 = c3 = 0
  for(j in seq(1,12)){
    if(m[i,j]==1){
      c1 = c1+1}
   if(m[i,j]==2){
      c2 = c2+1}
    if(m[i,j]==3){
      c3 = c3+1
    }
  }
  pmf[i,1]=c1/12
  pmf[i,2]=c2/12
  pmf[i,3]=c3/12
}
pmf
