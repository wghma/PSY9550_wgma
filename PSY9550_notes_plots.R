

#define grid 
p_grid <- seq( from=0 , to=1 , length.out=20 ) 
# define prior, p for water
prior <- rep( 1 , 20 ) 

# compute likelihood at each value in grid 
likelihood <- dbinom( 6 , size=9 , prob=p_grid ) 

# compute product of likelihood and prior 

unstd.posterior <- likelihood * prior 
# standardize the posterior, so it sums to 1 

posterior <- unstd.posterior / sum(unstd.posterior)





curve(dbinom(x, size = 40, prob = 0.4), 
      from = 0, 
      to = 40, 
      n = 30, 
      main = "Probability density for the binomial distribution")

# dette plottet ser bedre ut
n <- 100
plot(dbinom(1:n, size = n, prob = 0.3))

dbinom(30, n, prob = 0.3)

max(dbinom(1:n, size = n, prob = 0.3))
