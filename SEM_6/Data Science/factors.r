# define a function to print factors
print_factors <- function(x) {
print(paste("The factors of", x, "are:"))
for (i in 1:x) {
if ((x %% i) == 0) {
print(i)
}
}
}

# take input from the user
num <- as.integer(readline(prompt = "Enter a number: "))
print_factors(num)