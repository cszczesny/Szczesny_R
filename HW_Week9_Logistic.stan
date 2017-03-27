//Estimate the parameters of a Logistic distribution
data {
  int N;                       //number of data points
  real y[N];         //observed data values
}
parameters {
  real mu;                     //mu all real is shape parameter 1
  real<lower=0> sigma;         //sigma > 0 is shape parameter 2
}
model {
  mu ~ normal(0,20);           //normal prior for mu
  sigma  ~ uniform(0,10);      //uniform prior for sigma
  y ~logistic(mu,sigma);       //conditional logistic likelihood given mu and sigma
}
