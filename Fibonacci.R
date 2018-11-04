length <- readline(prompt = "How long do you want your sequence to be?")
fibo <- numeric(length)
fibo[c(1:2)] <- 1
for (i in c(3:length)) {
  fibo[i] <- fibo[i-2] + fibo[i-1]
}
fibo