###############################
# Data sampling
###############################
  
# create a vector with values from 1 to 10
x <- 1:10

# create a sample of size 5 from the vector
sample(x, size = 5)

# create a sample of size 20 from the vector, where duplicates are allowed
sample(x, size = 20, replace = TRUE)

# set seed and create two sample of size 20 from the vector, where duplicates are allowed
set.seed(10)
sample(x, size = 20, replace = TRUE)
set.seed(10)
sample(x, size = 20, replace = TRUE)

###############################
# Matrices
###############################

# create a 2 x 4 matrix with values from 8 to 1, filled by rows
a <- matrix(8:1, nrow = 2, ncol = 4, byrow = TRUE)
a

# get the first row
a[1, ]

# get the element from row 1, column 2
a[1,2]

# get number of rows
nrow(a)

# get number of columns
ncol(a)

# create two matrices of the same dimension
matrix1 <- matrix(c(3, 9, -1, 4), nrow = 2)
matrix1
matrix2 <- matrix(c(5, 2, 0, 9), nrow = 2)
matrix2

# add matrix2 to matrix1
matrix1 + matrix2

# transpose a matrix
t(matrix1)

###############################
# Lists
###############################

# create a new list with attributes: passport, age, diplomatic
traveler1 <- list(passport = "P123123", age = 34, diplomatic=TRUE)
traveler1

# get the 2nd element
traveler1[2]

# get the value of the 2nd element
traveler1[[2]]

# get the value of the age element
traveler1$age

# get the list length
length(traveler1)

# add new list after the 2nd element
traveler1 <- append(traveler1, list(country = "AUS"), after=2)
length(traveler1)
traveler1

# delete 3rd element
traveler1[[3]] <- NULL
length(traveler1)
traveler1

# concatinate two lists
traveler2 <- list(passport = "P456456", age = 14, diplomatic = FALSE)
travelers <- c(traveler1, traveler2)
travelers

# check if travelers is a list
is.list(travelers)

# get names of all list elements
names(travelers)

# get elements with 'age' in their name
travelers[grepl('age', names(travelers))]


###############################
# Foreach loop
###############################

# print all odd numbers from 1 to 10 using for each loop
for (i in 1:10) {
  if (i %% 2 == 1) {
    print(paste(i,"is odd number"))
  }
}

###############################
# While loop
###############################

# print all odd numbers from 1 to 10 using while loop
i <- 1
while (i <= 10) {
  if (i %% 2 == 1) {
    print(paste(i,"is odd number"))
  }
  i <- i + 1
}

###############################
# Task 1
###############################
#Create a 2 x 3 matrix with the following elements: 3, 9, -1, 4, 2, 6 (by row). Print only the positive values from the first row.

# Answer:
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)

for (i in matrix1[1,]) {
  if (i > 0) {
    print(i)
  }
}

###############################
## if-else
###############################

# use ifelse function to create a new attribute called 'request' with the value 'assistance required' if a traveler is younger than 10 years, and the value 'no special requests' otherwise
traveler1$request <- ifelse(test = traveler1$age < 10,
                            yes = "assistance required",
                            no = "no special requests")
traveler1

########################################
# User-defined functions and apply
########################################

# create a function that adds two numbers. The default value for the second argument is 1
add <- function(x, y = 1){
  x + y
}

add(2)
add(2, 3)


# create a function returning an absolute value of x. Return the result using the return() function
my_abs <- function(x) {
  if (x > 0) {
    return(x)
  }
  return(-x)
}

my_abs(5)
my_abs(-5)

##############################################################
# Applying a function over rows and columns in data frame
##############################################################

# load the data "data/beatles_v2.csv"
beatles <- read.csv("data/beatles_v2.csv")

# get the number of characters in the song title "Yellow Submarine"
nchar("Yellow Submarine")

# get the number of characters of the first 10 songs
sapply(beatles$Title[1:10], nchar)

# calculate the mean value of the duration and Top.50.Billboard values of all songs from 1963
apply(beatles[beatles$Year == 1963, c(4,9)], 2, mean)

# calculate the mean value of the duration and Top.50.Billboard values that are not NAs of all songs from 1963
mean.with.na <- function(x) {
  mean(x, na.rm = TRUE)
}

apply(beatles[beatles$Year == 1963, c(4,9)], 2, mean.with.na)

###############################
# Working with tables
###############################

# create a contingency table of column Year values
year.counts <- table(beatles$Year)
year.counts

# get the 4th element from the table
year.counts[4]

# store the 4th element from the table in a variable
x <- year.counts[4]
x

# convert the variable to numeric 
y <- as.numeric(x)
y

# sort the table in the descending order
sort(year.counts, decreasing = T)

# get the proportions table for the values of the Year column
year.counts.prop <- prop.table(year.counts)
year.counts.prop

# sort the proportions table in the descending order
sort(year.counts.prop, decreasing = T)

# get the proportions table for the values of the Year column, but limiting number of digits to 2
round(year.counts.prop, digits = 2)

# create a contingency table Top.50.Billboard vs. Year
xtabs(~Top.50.Billboard + Year, beatles)

###############################
# Manipulating data frames
###############################

###############################
## Adding new rows and columns
###############################

# create a new column On.album and set FALSE for all songs
beatles$On.album <- FALSE
head(beatles)

# create a new data frame with two columns (with sample data)
additional.columns <- data.frame(
  Platinum = sample(c(TRUE, FALSE), 310, replace = TRUE),
  Score = sample(5:10, 310, replace = TRUE)
)

# combine two data frames
beatles <- cbind(beatles, additional.columns)
head(beatles)

# get the first song
new.song <- beatles[1, ]

# add the song to the end of the data frame
beatles <- rbind(beatles, new.song)
tail(beatles)

# add the song after the 3rd song in the data frame 
beatles <- rbind(beatles[1:3, ],
                           new.song, 
                           beatles[4:nrow(beatles), ])
head(beatles)

###############################
## Removing columns and rows
###############################

# remove the attribute On.album
beatles$On.album <- NULL
names(beatles)

# remove columns Platinum (at index 10) and Score (at index 11)
beatles <- beatles[,-c(10, 11)]
names(beatles)

# create a subset of the data frame without songs in rows 2, 4 and 6 
beatles1 <- beatles[-c(2, 4, 6), ]
head(beatles1)

# create a subset of the data frame without songs in rows from 1 to 8 
beatles2 <- beatles[-(1:8), ]
head(beatles2)

##################################
## Updating column and row names
#################################

# get column names
colnames(beatles)

# change name of the column that starts with 'Genre' to 'Song.genre'
genreIndex <- which(startsWith(colnames(beatles), "Genre"))
colnames(beatles)[genreIndex] <- "Song.genre"
colnames(beatles)

# change name of the column at the index 6 to 'Genre'
colnames(beatles)[6] <- "Genre"
colnames(beatles)

# change row names to a string containing word 'song' and a song order number
rownames(beatles) <- paste("song", 1:nrow(beatles))
head(beatles)

# change row names to a string containing order number
rownames(beatles) <- c(1:nrow(beatles))
head(beatles)

##################################
## Retrieving and changing values
##################################

# get songs in rows from 1 to 5, but only attributes Title and Album.debut
first.songs <- beatles[1:5, c("Title", "Album.debut")]
first.songs

# get the songs from year 1964 not having McCartney as a lead vocal
indexes <- which((beatles$Year == "1964") & (!grepl('McCartney', beatles$Lead.vocal)))
selected.songs <- beatles[indexes, ]
head(selected.songs)

# get the songs from year 1958, but only attributes Title and Album.debut
songs.1958 <- subset(beatles, Year == 1958, c("Title", "Album.debut"))
head(songs.1958)

# create a vector of logical values denoting whether the attribute Album.debut has a value or not
empty.album.debut <- beatles$Album.debut == ""

# compute how many songs lack the data about the debut album
sum(empty.album.debut)

# for songs without debut album data, set the value of the Album.debut attribute to 'empty'
beatles$Album.debut[empty.album.debut] <- "empty"

# set the value back to empty string
beatles$Album.debut[empty.album.debut] <- ""

###############################
## Saving dataset
###############################

# save dataset to a CSV file, but without the row names (row numbers) column
write.csv(beatles, "data/beatles_v3.csv", row.names = F)

# save R object for the next session into file "data/beatles_v3.RData"
saveRDS(beatles, "data/beatles_v3.RData")

# restore R object from the file "data/beatles_v3.RData" in the next session
b3 <- readRDS("data/beatles_v3.RData")

###############################
# Task 2
###############################

# Create a new column in the *beatles* data frame called *Billboard.hit* having TRUE for all songs that were in the Top 50 Billboard (songs that have the Top.50.Billboard defined), and FALSE for all other songs (not having this value set).

# Answer:
beatles$Billboard.hit <- FALSE
beatles$Billboard.hit[!is.na(beatles$Top.50.Billboard)] <- TRUE
head(beatles)
