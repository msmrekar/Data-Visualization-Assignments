#Install and load stringr package
install.packages("stringr")
library("stringr")

#Install and load dplyr package
install.packages("dplyr")
library("dplyr")

#create varaible my.age
my.age<-28
#create variable my.name
my.name<-"Mathias"
#Define a function called MakeIntroduction
MakeIntroduction <- c(my.name, my.age)
MakeIntroduction <- paste("Hello, my name is", my.name, "and I am", my.age, "years old")
my.intro <- MakeIntroduction
print(my.intro)
#Create variable casual.intro
casual.intro <- sub("Hello, my name is","Hey, I'm", my.intro)
print(casual.intro)
#Create variable capital.intro
capital.intro <- str_to_title(my.intro, locale = "en")
print (capital.intro)
#Create variable into.e.count
intro.e.count <- str_count(my.intro,"e")
print(intro.e.count)

#Part 2: Books

#Create variable that is vector of 6 books
books <- c("Catcher in the Rye", "Where the Red Fern Grows", "Tangerine", "Holes", "The Bean Trees", "Their Eyes Were Watching God")
print(books)

#Create variable top.three.books
top.three.books<- books[c(1,2,3)]
print (top.three.books)

#Create varaible book.reviews
book.reviews<- paste(books,"is a great read!")
print (book.reviews)

#Create variable books.without.four
books.without.four <- books[-4]
print (books.without.four)

#Create  variable long.titles
long.titles.truefalse<-nchar(books)>15

books.df<-data.frame(books,long.titles.truefalse)

long.titles.df<-books.df%>%
  filter(long.titles.truefalse==TRUE)

long.titles<-long.titles.df$books
long.titles

#Part 3: Squares 

#Create variable with mumbers 1 to 201
numbers<-c(1:201)
numbers

#Create variable squared.numbers 
squared.numbers <- numbers^2
squared.numbers

#Create a variable squared.mean
squared.mean <- mean(squared.numbers)
squared.mean

#Create variable of whole number squares 
all.sqrt<-sqrt(numbers)
squares.truefalse<-all.sqrt==round(all.sqrt)

all.sqrt.df<-data.frame(numbers,all.sqrt,squares.truefalse)

just.squares.df<- all.sqrt.df %>%
  filter(squares.truefalse==TRUE)

squares<-just.squares.df$numbers
squares