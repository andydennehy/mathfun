## Slower method

primes <- function(n)
{
  n <- as.integer(n)
  if(n > 1e6) stop("n too large")
  primes <- rep(TRUE, n)
  primes[1] <- FALSE
  last.prime <- 2L
  for(i in last.prime:floor(sqrt(n)))
  {
    primes[seq.int(2L*last.prime, n, last.prime)] <- FALSE
    last.prime <- last.prime + min(which(primes[(last.prime+1):n]))
  }
  which(primes)
}

primes(readline(prompt="How many prime numbers do you want?"))

## Fastest method
primest <- function(n){
  ## I create a vector of numbers from 2 to the specified n number of desired primes.
  ## These are all "prime candidates".
  p <- 2:n
  
  ##This is my counting variable. As 
  i <- 1
  while (p[i] <= sqrt(n)) {
    p <- p[p %% p[i] != 0 | p==p[i]]
    i <- i+1
  }
  p
}

n<-as.integer(readline("How many prime numbers do you want?"))

primest(n)