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

