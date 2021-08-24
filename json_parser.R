library(jsonlite)
cur <- getwd()
setwd(dir = "json")
files <- dir(pattern = ".json")
json <- lapply(files, fromJSON)
rmd <- data.frame(files, header="", comments="")
for (i in seq_along(files)) {
  rmd[i, "header"] <- paste0("## ", files[i])
  rmd[i, "comments"] <- paste0("> ", json[[i]]$Text, collapse = "\n")
}
paste0("> ", json[[1]]$Text, collapse = "\n")

setwd(cur)