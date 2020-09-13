x=factor(c("yes","no","yes","yes","no","rocket","science"),levels = c("no","yes","rocket","science"))
x
table(x)
unclass(x)
y=c(1,2,3,4,5)
y=factor(c(1,2,3,4,5,2,3,4,2,4,2,2,3))
y
table(y)
unclass(y)