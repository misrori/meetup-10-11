
library(rvest)
# it is not working 403
# t <- read_html('https://www.pexels.com/search/dog/')
# open the site, scroll down a lot, save the html.

# Pexels birds
t <- read_html('pexels_birds.html')

links <- t %>% html_nodes('img') %>%  html_attr('srcset')
links <- links[startsWith(links, 'https://images.pexels.com/photos/')] 
links <-links[!is.na(links)]
links <- sapply(strsplit(links, '?', fixed = T), '[[', 1)

for (i in 1:10) {
  tryCatch({
    extension <- tail(strsplit(links[i], '.', fixed = T)[[1]],1  )
    download.file(url = links[i], destfile = paste0('pictures/birds_', i,'.', extension))
  }, eror=function(e){
    print(e)
  })

}





# Pexels bikes
t <- read_html('pexels_bikes.html')
links <- t %>% html_nodes('img') %>%  html_attr('srcset')
links <- links[startsWith(links, 'https://images.pexels.com/photos/')] 
links <-links[!is.na(links)]
links <- sapply(strsplit(links, '?', fixed = T), '[[', 1)

for (i in 1:10) {
  tryCatch({
    extension <- tail(strsplit(links[i], '.', fixed = T)[[1]],1  )
    download.file(url = links[i], destfile = paste0('pictures/bikes_', i,'.', extension))
  }, eror=function(e){
    print(e)
  })
}



# shutterstock.com
keyword <- 'human'

t <- read_html(paste0('https://www.shutterstock.com/hu/search/',keyword,'?image_type=photo&page=1'))
links <- t %>% html_nodes('img') %>%  html_attr('src')
links <- links[startsWith(links, 'https://image.shutterstock.com/image-photo/')] 
links <-links[!is.na(links)]


for (i in 1:10) {
  tryCatch({
    extension <- tail(strsplit(links[i], '.', fixed = T)[[1]],1  )
    download.file(url = links[i], destfile = paste0('pictures/',keyword,'_', i,'.', extension))  
  }, eror=function(e){
    print(e)
  })
  
}






