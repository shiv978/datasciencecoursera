x<-1
print(x)
msg <- "hello"  ##This is how you create comments in R
print(msg)
msg
msg
y <- 1:20 ##Creating a object with 20 elements from 1 to 20
y

a <- c(0.5,0.6)      ## Using C to Create Vectors and/or Objects , c stands for concatenate, here a numeric vector is created where the first element is .5 and next is .6

b <- c ("a","b","c")   ## Creating character vector using concatenate 
c <- c( T, F)    ## Creating a logical vector 
d <- c(1+0i, 2+4i)  ##Creating a complex vector 

e <- 9:29  ## Creates integer vector from 9 to 29


f <- c(1.5, "y")  ## Coerce the vector datatype into least common denominator class,
                  ## so here you get 1.5 not as real number but as a string so y is a character vector 

## Character <  Numeric  < logical 



##Explicit coercion 

k <- 0:6

as.numeric(k)

as.logical(k)        ## coerces K into a logical vector where 0 is false and rest all are true

as.character(k)       ## coerces K into character where 0,1,2.. are characters and not integers

as.complex(x)

##nonsensical coercions result in NA values example:

j <- c("a", "b", "c")

as.numeric(j)   ## Cant coerce, you get a NA on j, thus a NA vector lolll

#lists are vectors where you can put objects of different classes together, kinda like Indian clasrooms where GM, SC, ST all come together 

l <- list("a", 6, TRUE, 9+8i, "wow this is cool")
l   ## doesnt print like vector because all ojects are differnet, elements are indexed by double brackets, and list also have double brackets around them, hece you can know that they are lists


