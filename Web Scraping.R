##Intro to Web Scraping
install.packages("rvest")
install.packages("tidyverse")
library('rvest')

# Using Le Monde
url = 'https://www.lemonde.fr' #Loading the website to be scraped
webpage <- read_html(url) # Reading the HTML Code from the webpage

#To get the totle of 10 most read pages
title = html_nodes(webpage, '..old__top-article.article__title')
text_title = html_text(title)
text_title


#Using NYT
url2 = 'https://nytimes.com'
webpage <- read_html(url2)

title = html_nodes(webpage, '.css-1yxzums')
text_title = html_text(title)
text_title


#IMDB

url3 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'

webpage <- read_html(url3)

rank = html_nodes(webpage, '.text-primary')
text_rank = html_text(rank)
text_rank
as.numeric(text_rank)


#For Runtime

url3 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'

webpage <- read_html(url3)

runtime = html_nodes(webpage, '.runtime')
text_runtime = html_text(runtime)
text_runtime
as.numeric(runtime)


#For Title
url3 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'

webpage <- read_html(url3)

title = html_nodes(webpage, '.lister-item-header a')
text_title = html_text(title)
text_title

# Gross Revenue made:
url4 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'
webpage <- read_html(url4)

gross= html_nodes(webpage, ' .ghost~ .text-muted+ span')
gross = html_text(gross)


text_gross = html_text(gross)
text_gross
#as.numeric(gross)
#webpage

#Now we clean the above Gross Revenue Mode: (Remove $ and M signs)

gross <- gsub("M","",gross) #Removes M
gross <- substring(gross,2,6) #Only takes in values from the '2nd' character
gross= as.numeric(gross)
gross

#Similarly Cleaning Run-time:
url3 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'

webpage <- read_html(url3)

runtime = html_nodes(webpage, '.runtime')
text_runtime = html_text(runtime)
text_runtime
runtime <-gsub(" min ","", runtime)

gross <- substring(gross,1,3)
as.numeric(runtime)

#Now for Rating:
url5 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'

webpage <- read_html(url5)

rating = html_nodes(webpage, '.ratings-imdb-rating strong')
text_rating = html_text(rating)
text_rating
as.numeric(text_rating)

#Genre
url5 = 'https://www.imdb.com/search/title/?title_type=feature&release_date=1998-01-01,1998-12-31&sort=boxoffice_gross_us,desc'

webpage <- read_html(url5)
genre = html_nodes(webpage, '.genre')
text_genre = html_text(genre)
text_genre

genre <- gsub("\n","",text_genre) #Remove '\n'
genre <- gsub(" ","",genre) #Remove Excess Space
genre <- gsub(",.*","",genre) #Taking only first genre of each movie
genre <- as.factor(genre)
head(text_genre)

movies_df = data.frame(Rank=text_rank,
                       Runtime=runtime,
                       Genre=text_genre,
                       Rating=text_rating,
                       Revenue=gross)
str(movies_df)
movies_df

#Regression of all
rank <- movies_df$Rank
rating <- movies_df$Rating
revenue <- movies_df$Revenue

Rankings = lm(rank~rating+revenue, data=movies_df)
summary(Rankings)











