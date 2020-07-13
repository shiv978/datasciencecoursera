x <- 2

{if (x >3)
{ y<- 10}
else
{
  y <- 7
}}
y


#Or we can write it in this following way

y <- if(x>3) {10} else { 0 }
y


## The For loops
#1- Basic
for( i in 1:10) { print (i) }

k <- c("a", "b", "c", "d", "e", "f")

for (i in seq_along(k))  { print (k[i]) } # Very elegant way of doing when you dont know                                            #how many elements are in k 

for (m in k) { print(m)}      ##EXTREMELY ELEGANT, dont even need seq_along



## For loops in Matrix

q <- matrix(1:48 , 6, 8)
q
for( i in seq_len(nrow(q)))
         {
                for(j in seq_len(ncol(q))) 
                {   print(q[i,j])  }
}

# prints out 1,7,13,19 etc as it is printing (1,1) (1,2) (1,3) elements which are 1,7 and 13 respectively


# Adding while loops now - They are much much more readable than for loops

count <- 0
while (count < 20) 
  { print(count)
      count <- count+2
  }


#Random Number generator

z <- 5

while(z>3 && z <10)
         {   
              coin <- rbinom(1,1, 0.5)
              
              z <- if(coin==1) {z+1} else {z-1}
              print(z)
          }


#Now we are going to run repeat loop which can only be exited by break commandj

x0 <- 1
tol <- 1e-8    #this means 10^-8

repeat{ x1 <- computeEstimate ()  #not a real funciton, used in optimisation algos to see if a fun converges
           if (abs(x1-x0) <tol) { break } else {  x0 <- x1  }
}


## Next and Return functions


for (i in 1:100) { if(i<=20){ next }  else print(i) }   #skips first 20 iterations



####      First Function in R

add2 <- function(x,y) { x+y }  #No need to explicitly return as the last evlauated                                         expression is always returned. Run & see console for                                  magic


#Take a subset of numbers and return greater than 10
x <- c(1,5,54,64,4,7,12,435,5,3,2,8,9,7,5,342,54,32,87,56,4,12,5,8,56,3,1,0,0,5,3,2,1,2)

ret10 <- function( y ) 
        {  for(i in seq_along(y))
                {     if(y[i]>10) (print(y[i]))   }
        }
ret10(x)
print(ret10(x))

#### for returning the means of the columns
q <- matrix(1:48 , 6, 8)

colmean <- function(y) {        
                       nc <- ncol(y)
                    means <- numeric(nc) #Initialise means vector with size of column
                       for( i in 1:nc) { means[i] <- mean(y[,i])  }
                       (return(means))  #return the means vector     
                        print(means)
}


## Functions- TO remove the missing values in data
# so suppose you create the data

mydata <- rnorm(100)
sd(mydata, na.rm = FALSE)    #na.rm sets the missing values in data set to false

sd( x= mydata, na.rm= FALSE)  #this is How you name the arguments explicitly

#For Plotting the Named arguments are really important - as in you have to tweak 1-2 things in a long argument lists of plot function


## lazy evalualtion- Arguments will be activated only when needed, else asleep

f <-function(a,b)  {  a^2  }
f(2)  #This wont result in error as 2 assigned to a^2, B is asleep, as it is not need it is not activated


g <- function(a,b)   
{print(a)           
 print(b)}

g(45)   #Here it fails as you activate both A,B but assign only A



#Now suppose if you want to extend the functionality of plot function by creating a plot function but dont want to like spend time copying all the argument list again and then doing it so you use ... operator



myplotTweak <- function(x,y, type="1", ...)
{
        plot(x,y,type = type, ...) #you are keeping features of plot but adding x,y and saying type should be 1
}

#so myplot is a my own modified version of plot 



#Now one more use of ... operator

args(paste)
m <- function(..., sep=" ", collapse= NULL)
  #This will like paste some unknown 20-30 or whatever number of strings that come in with the seperator ""
  
  