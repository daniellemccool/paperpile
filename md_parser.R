require(RefManageR, quietly = TRUE)
require(bibtex, quietly = TRUE)

extractTitlesFromMds <- function(dir = "md/", bibloc = bibloc){
  cur <- getwd()
  setwd(dir)
  filenames <- dir(pattern = ".md")
  md <- do.call(rbind,
                lapply(filenames,
                       function(x){
                         sourceTitle = stringr::str_sub(x, start = 15, end = -4)
                         articleTitle = stringr::str_sub(readLines(x, n = 1), start = 4)
                         data.frame(sourceTitle, articleTitle)
                       }))
  setwd(cur)
  md$citekey <- findRefs(md, bibloc)
 md 
}

lookForArticleTitles <- function(sourceTitles, md){
  md[md[, "sourceTitle"] %in% sourceTitles, ]
}

findRefs <- function(md, bibloc = bibloc){
  names(SearchBib(ReadBib(bibloc), title = md$articleTitle))
}

