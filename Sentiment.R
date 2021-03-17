Library(rvest)
Library(dplyr)
Library(sentimentr)

source <- read_html("http://arka.am/en/news/economy/")

## source %>% html_nodes("span.date") %>% html_text()

barplot(sentiment(tail(source %>% html_nodes("h4") %>% html_text(),20))$sentiment,xlim=c(24,1))
