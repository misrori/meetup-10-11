# BYC 10k pictures
#https://opensea.io/collection/boredapeyachtclub
library(jsonlite)
t <- readLines('https://raw.githubusercontent.com/skogard/apebase/main/db')
for (i in 1:10) {
  tryCatch({
    download.file(url = paste0('https://ipfs.io/',gsub(':/', '',fromJSON(t[i])$metadata$image)), destfile = paste0('pictures/BYC_',i, '.png'))
  }, eror=function(e){
    print(e)
  })
}

# Azuki 10k pictures
#https://opensea.io/collection/azuki
for (i in 1:10) {
  tryCatch({
    download.file(url = paste0('https://ikzttp.mypinata.cloud/ipfs/QmYDvPAXtiJg7s8JdRBSLWdgSphQdac8j1YuQNNxcGE1hg/',i,'.png'), destfile = paste0('pictures/azuki_',i, '.png'))
  }, eror=function(e){
    print(e)
  })
}

#Doge army 10k pictures
#https://opensea.io/collection/doge-army-shibadoge
for (i in 1:10) {
  tryCatch({
    download.file(url = paste0('https://cdn.realshibadoge.com/images/',i,'.png'), destfile = paste0('pictures/doge_army_',i, '.png'))
  }, eror=function(e){
    print(e)
  })
}

#Bored cats 10k pictures
#https://opensea.io/collection/bored-cat-origins
for (i in 1:10) {
  tryCatch({
    download.file(url = paste0('https://ipfs.io/ipfs/QmYBdDX3dTJDaQML4HG2ReAS2nLr7bDAM4ET3DCXUKq5JE/',i,'.png'), destfile = paste0('pictures/bored_cats_',i, '.png'))
  }, eror=function(e){
    print(e)
  })
}

#Looki 8.7K
# https://opensea.io/collection/looki
for (i in 1:10) {
  
  tryCatch({
    # get the location of the image
    img_url <- fromJSON(paste0('https://racawebsource.s3.us-east-2.amazonaws.com/metadata/2d/looki/', i) )$image
    # save it
    download.file(url = img_url, destfile = paste0('pictures/looki_',i, '.png'))
  }, eror=function(e){
    print(e)
  })
}




