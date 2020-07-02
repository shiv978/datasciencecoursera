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



##Matrices are also vectors in R, but special types of vectors with dimensions of row and columns 

# Matrix are filled column wise, ie left most column gets filled first from top to bottm and the it moves right till end of columns are reached 

m <- matrix(1:3, nrow =2 , ncol = 3)
m

n<- 1:10  ## take  vector
dim(n)<-c(5,2)  # Provide the vector the dimnesions and create a matrix
n


## matrix can also created by cbinding and row binding 

o <- 1:5
p <- 10:14

cbind(o,p)

rbind(o,p)


## Factors are used to represent categorical data - Çategory suçh as skin çolour - white blaçk brown çream etç 


# used a lot in regressions lm() etc, 

#it can also be ranked say assistant prof < associate prof < full prof

q <- factor(c("brown skin", "creamy skin", "white skin", "black skin", "brown skin", "brown skin"))
q
table(q)
unclass(q)

## You can order using a levels function and you want yes > no, saying that yes is the 1st level

q <- factor(c("yes","no","no", "yes", "yes","yes"), levels = c("yes","no"))
q
unclass(q)



## Missing values are special types of objects  NaN- mathematical operations resulting NaN

# we can use is.na() to decide whether our data set contains any missing values 
#is.nan() is used for detecting undefined mathematical ops

# Na can be character NA or interger NA, all NaN are NAs but vice versa is untrue


r<- c(1,2,3, NA, 5,6,7)
is.na(r)
is.nan(r)

## Data frames, used to store key data type in R and used to store tabular data

# Represented as speical type of list where every element of the list has same length

# in dataframes, every column is a list ie holds different data (think of your excel) and length of each list is the umber of rows 

# Each column need not be of same type

#crated by read.data() read.csv()

# can be converted to matrix using data.matrix() matrix will coerce differnet data types though

# foo is a integer vector 1:4, bar is a logical vector 

s <- data.frame(foo= 1:4, bar = c(T,T,F,T))
s


# Names are used to create a very readable code-- Very Important

  t <- 1:3 # this is a integer vector and you can name it
  
  names(t) <- c("mannu", "shiv", "aadya")
  names(t)   
  t
  