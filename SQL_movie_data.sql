# Box office movie data; 2012 to 2016

# Examine data structure
SELECT *
FROM
amaras-projects.project_1.movie_data

# Organize by Release Date
SELECT *
FROM
amaras-projects.project_1.movie_data
ORDER BY release_date

# Check for nulls in the Budget and Revenue columns
SELECT *
FROM amaras-projects.project_1.movie_data
WHERE budget____ is NULL

SELECT *
FROM amaras-projects.project_1.movie_data
WHERE Box_Office_Revenue____ is NULL

# Get new column 'Profit' from budget and revenue
# Save as a new table 'movie_data_new'
SELECT   
   Movie_Title,
   Release_Date,	
   Wikipedia_URL,
   Genre__1_,
   Genre__2_,	
   Director__1_,	
   Director__2_,	
   Cast__1_,	
   Cast__2_,	
   Cast__3_,	
   Cast__4_,	
   Cast__5_, 
   Box_Office_Revenue____, 
   budget____, 
   Box_Office_Revenue____ - budget____ AS Profit
FROM amaras-projects.project_1.movie_data

# Total movies in the dataset
SELECT COUNT(Movie_Title)
FROM amaras-projects.project_1.movie_data_new

# Top 50; Budget
SELECT *
FROM amaras-projects.project_1.movie_data_new
ORDER BY budget____
DESC
LIMIT 50

# Top 50; Revenue
SELECT *
FROM amaras-projects.project_1.movie_data_new
ORDER BY Box_Office_Revenue____
DESC
LIMIT 50

# Top 50; Profit
SELECT *
FROM amaras-projects.project_1.movie_data_new
ORDER BY Profit
DESC
LIMIT 50

# Genre List
SELECT Genre__1_ AS genre
FROM amaras-projects.project_1.movie_data_new
UNION DISTINCT
SELECT Genre__2_
FROM amaras-projects.project_1.movie_data_new
WHERE Genre__2_ IS NOT NULL

# Highest Revenue for each genre
SELECT Genre__1_, 
MAX(Box_Office_Revenue____) AS max_Revenue,
FROM amaras-projects.project_1.movie_data_new
GROUP BY Genre__1_
ORDER BY max_Revenue DESC

# Top 10; Revenue for each year
SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Release_Date BETWEEN '2012-01-01' AND '2012-12-31'
ORDER BY Box_Office_Revenue____
DESC
LIMIT 10

SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Release_Date BETWEEN '2013-01-01' AND '2013-12-31'
ORDER BY Box_Office_Revenue____
DESC
LIMIT 10

SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Release_Date BETWEEN '2014-01-01' AND '2014-12-31'
ORDER BY Box_Office_Revenue____
DESC
LIMIT 10

SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Release_Date BETWEEN '2015-01-01' AND '2015-12-31'
ORDER BY Box_Office_Revenue____
DESC
LIMIT 10

SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Release_Date BETWEEN '2016-01-01' AND '2016-12-31'
ORDER BY Box_Office_Revenue____
DESC
LIMIT 10

# Filter for conditions
SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Genre__1_ = 'Drama'
ORDER BY Box_Office_Revenue____ DESC

SELECT *
FROM amaras-projects.project_1.movie_data_new
WHERE Genre__1_ = 'Action'
AND Box_Office_Revenue____ > 300000000
ORDER BY Box_Office_Revenue____ DESC



