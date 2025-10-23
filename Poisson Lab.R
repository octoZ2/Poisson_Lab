set.seed(47)

lambda <- 5 # Poisson Distribution. 

n <- 40 # Sample Size. 

rows <- 1000 # Number of Trials.

sim <- rpois(n*rows, lambda)
m <- matrix(sim,rows)


sample.means <- rowMeans(m)



sm.avg <- mean(sample.means)

sm.sd <- sd(sample.means)
  
sm.sd.clt <- sqrt(lambda/n)

hist(sample.means)