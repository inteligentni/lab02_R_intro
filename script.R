###############################
# Data sampling
###############################
  
# create a vector with values from 1 to 10


# create a sample of size 5 from the vector


# create a sample of size 20 from the vector, where duplicates are allowed


# set seed and create two sample of size 20 from the vector, where duplicates are allowed


###############################
# Matrices
###############################

# create a 2 x 4 matrix with values from 8 to 1, filled by rows


# get the first row


# get the element from row 1, column 2


# get number of rows


# get number of columns


# create two matrices of the same dimension


# add matrix2 to matrix1


# transpose a matrix

###############################
# Lists
###############################

# create a new list with attributes: passport, age, diplomatic


# get the 2nd element


# get the value of the 2nd element


# get the value of the age element


# get the list length


# add new list after the 2nd element


# delete 3rd element


# concatinate two lists


# check if travelers is a list


# get names of all list elements



# get elements with 'age' in their name



###############################
# Foreach loop
###############################

# print all odd numbers from 1 to 10 using for each loop


###############################
# While loop
###############################

# print all odd numbers from 1 to 10 using while loop


###############################
# Task 1
###############################
#Create a 2 x 3 matrix with the following elements: 3, 9, -1, 4, 2, 6 (by row). Print only the positive values from the first row.


# Answer:


###############################
## if-else
###############################

# use ifelse function to create a new attribute called 'request' with the value 'assistance required' if a traveler is younger than 10 years, and the value 'no special requests' otherwise

########################################
# User-defined functions and apply
########################################

# create a function that adds two numbers. The default value for the second argument is 1


# create a function returning an absolute value of x. Return the result using the return() function


##############################################################
# Applying a function over rows and columns in data frame
##############################################################

# load the data "data/beatles_v2.csv"


# get the number of characters in the song title "Yellow Submarine"


# get the number of characters of the first 10 songs


# calculate the mean value of the duration and Top.50.Billboard values of all songs from 1963


# calculate the mean value of the duration and Top.50.Billboard values that are not NAs of all songs from 1963


###############################
# Working with tables
###############################

# create a contingency table of column Year values


# get the 4th element from the table


# store the 4th element from the table in a variable


# convert the variable to numeric 


# sort the table in the descending order


# get the proportions table for the values of the Year column


# sort the proportions table in the descending order


# get the proportions table for the values of the Year column, but limiting number of digits to 2


# create a contingency table Top.50.Billboard vs. Year


###############################
# Manipulating data frames
###############################

###############################
## Adding new rows and columns
###############################

# create a new column On.album and set FALSE for all songs


# create a new data frame with two columns (with sample data)


# combine two data frames


# get the first song


# add the song to the end of the data frame


# add the song after the 3rd song in the data frame 


###############################
## Removing columns and rows
###############################

# remove the attribute On.album


# remove columns Platinum (at index 10) and Score (at index 11)


# create a subset of the data frame without songs in rows 2, 4 and 6 


# create a subset of the data frame without songs in rows from 1 to 8 


##################################
## Updating column and row names
#################################

# get column names


# change name of the column that starts with 'Genre' to 'Song.genre'


# change name of the column at the index 6 to 'Genre'


# change row names to a string containing word 'song' and a song order number


# change row names to a string containing order number


##################################
## Retrieving and changing values
##################################

# get songs in rows from 1 to 5, but only attributes Title and Album.debut


# get the songs from year 1964 not having McCartney as a lead vocal


# get the songs from year 1958, but only attributes Title and Album.debut


# create a vector of logical values denoting whether the attribute Album.debut has a value or not


# compute how many songs lack the data about the debut album


# for songs without debut album data, set the value of the Album.debut attribute to 'empty'


# set the value back to empty string


###############################
## Saving dataset
###############################

# save dataset to a CSV file, but without the row names (row numbers) column


# save R object for the next session into file "data/beatles_v3.RData"


# restore R object from the file "data/beatles_v3.RData" in the next session


###############################
# Task 2
###############################

# Create a new column in the *beatles* data frame called *Billboard.hit* having TRUE for all songs that were in the Top 50 Billboard (songs that have the Top.50.Billboard defined), and FALSE for all other songs (not having this value set).

# Answer:

