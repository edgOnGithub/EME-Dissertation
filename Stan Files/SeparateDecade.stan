data {
  int<lower = 0> N; // Event E
  int<lower = 0, upper = 1> Y[N]; // Binary dependent variable Y in event E
  vector[N] returns; // Independent variable, returns
  real terror_return;
}
parameters {
  real alpha; // intercept
  real b_returns; // beta for returns
}
model {
  alpha ~ normal(0, 1); // Intercept with weak prior
  b_returns ~ student_t(3, 0, 2.5); // Another weak prior
  Y ~ bernoulli_logit(alpha + b_returns * returns); // The model
}
generated quantities {
  real y_hat;
  y_hat = inv_logit(alpha + b_returns*terror_return);
}