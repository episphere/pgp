# read data from PGP
library(stringr)

fetch23=function(n){
  #n=4142
  # system(sprintf("wget %s -O %s", "https://my.pgp-hms.org/user_file/download/4142", "./temp.txt"))
  system(sprintf("wget %s -O %s", str_replace(paste("https://my.pgp-hms.org/user_file/download/",n),' ',''), "./temp.txt"))
  txt <- readLines('./temp.txt')
  
  # extract base URL
  i1 <- grep('arvadosapi.com',txt)
  ln1 <- txt[i1]
  baseURL <- str_extract(ln1,'https://.*arvadosapi.com')
  
  # extract the line with .zip link
  i2 <- grep("zip",txt)
  ln2 <- txt[i2]
  genFname = substr(str_extract(ln2,'>[^<]*zip'),2,777) # genome file name
  # assemble URL
  # url3 <- paste(baseURL,genFname)
  fileURL = str_replace(paste(baseURL,genFname),' ','/')
  system(sprintf("wget %s -O %s", fileURL,str_replace(paste('./23andme/pgp_',n),' ','')))
}