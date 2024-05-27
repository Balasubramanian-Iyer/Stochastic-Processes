#Q1
rate=2
arr_time=c()
arr_time[1]=rexp(1,rate)
i=2
while(arr_time[i-1]<=120)
{
  r=rexp(1,rate)
  arr_time[i]=r+arr_time[i-1]
  i=i+1
}
arr_time

#Q2
n=500
n
lambda=0.5
lambda
x=rep(0,n)
t=rep(0,n)
for(i in 1:n)
{
  x[i]=rexp(1,lambda)
  t[i]=sum(x)
}
print(x)
print(t)

t1=t[t<=10]
y=0:length(t1)
plot(stepfun(t1,y))
