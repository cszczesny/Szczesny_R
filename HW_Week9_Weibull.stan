//Estimate the parameters of a Weibull distribution
data {
  int N;                    //number of data points
  real<lower=0 > y[N];      //observed data values
}
parameters {
  real<lower=0> alpha;            //alpha > 0 is shape parameter 1
  real<lower=0> sigma;            //sigma > 0 is shape parameter 2
}
model {
  alpha ~ uniform(0,8);          //half-normal prior for alpha
  sigma  ~ uniform(0,8);         //half-normal prior for beta
  y ~weibull(alpha,sigma);       //conditional Weibull likelihood given alpha and sigma
}
