length <- readline(prompt = "How long do you want your sequences to be?")
fibo <- numeric(length)
fibo[c(1:2)] <- 1
for (i in c(3:length)) {
  fibo[i] <- fibo[i-2] + fibo[i-1]
}

fibofibo <- numeric(length)
##Now I need to make the fibo vector long enough to have all elements for the
##Fibo-Fibo sequence
fibo <- numeric(fibo[as.numeric(length)])
##Repeat the cycle
fibo[c(1:2)] <- 1
for (i in c(3:length(fibo))) {
  fibo[i] <- fibo[i-2] + fibo[i-1]
}

##Now I take the Fibo elements of the Fibo vector
for (i in c(1:length)) {
  fibofibo[i] <- fibo[fibo[i]]
}
fibofibo
