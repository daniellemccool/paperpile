# library(jsonlite)
# library(stringr)

# readJsonPaperpile <- function(dir = "json", md = FALSE){
#   cur <- getwd()
#   setwd(dir = dir)
#   filenames <- dir(pattern = ".json")
#   json      <- lapply(filenames, jsonlite::fromJSON)
#   setwd(cur)
#   sourceTitles <- stringr::str_sub(filenames, start = 15, end = -6)
#   newNames <- sourceTitles
#   
#   if (isTRUE(md)) {
#     source("md_parser.R")
#     md <- extractTitlesFromMds()
#     df <- lookForArticleTitles(sourceTitles, md)
#     matchedTitles <- df[match(sourceTitles, df[, "sourceTitle"]), "articleTitle"]
#     newNames[!is.na(matchedTitles)] <- matchedTitles[!is.na(matchedTitles)]
#   }
#   
#   names(json) <- newNames
#   json
# }

extractMetadataFromFilename <- function(filename){
  metainfo <- unlist(strsplit(stringr::str_sub(filename, start = 15, end = -6), split = " - "))
  pubTitle <- metainfo[2]
  year     <- stringr::str_sub(metainfo[1], start = -4)
  author   <- stringr::str_sub(metainfo[1], end = -6)
  
  list(author,
      year,
       pubTitle)
}
readJsonPaperpile <- function(dir = "json", md = FALSE){
  cur <- getwd()
  setwd(dir = "json")
  filenames <- dir(pattern = ".json")
  json      <- lapply(filenames, function(x){
    metadata <- unlist(extractMetadataFromFilename(x))
    list(data = jsonlite::fromJSON(x),
         author = metadata[1],
         year = metadata[2],
         pubTitle = metadata[3],
         sharedfilename = stringr::str_sub(x, start = 15, end = -6))
  })
  setwd(cur)
  
  if (isTRUE(md)) {
    source("md_parser.R")
    md <- extractTitlesFromMds()
    pubTitles <- sapply(json, `[[`, "sharedfilename")
    df <- lookForArticleTitles(pubTitles, md)
    matchedTitles <- df[match(pubTitles, df[, "sourceTitle"]), "articleTitle"]
    for (i in seq_along(json)) {
      json[[i]][["articleTitle"]] <- matchedTitles[i]
    }
  }
  json
}

blockquoteFromHighlight <- function(q, color, page){
  sprintf(
    '<blockquote class="highlight"
                 style="border-left-color: %s;"
                 pagenum="[p%s]">
            %s
    </blockquote>', color, page, q)
}


blockquoteFromComment <- function(q, color){
  sprintf(
    '<blockquote class="comment"
                 style="border-left-color: %s;">
            %s
    </blockquote>', color, q)
}

# Accepts a single list from the Paperpile json objects
# Returns raw HTML with the filename, comments and quotes

layoutPaperInHTML <- function(namedPaperJson){
  
  # Create the headers
  # headingTitle <- paste0("<h2> ", names(namedPaperJson),  "</h2> \n")
  headingComments <- "<h3> Comments </h3> \n"
  headingQuotes <- "<h3> Direct quotes </h3> \n"
  
  # Shed the filename
  paperJson <- namedPaperJson$data
  
  # Filter for different layout type
  isComment <- paperJson[, "Subtype"] == "Comment"
  isHighlight <- paperJson[, "Subtype"] == "Highlight"
  
  
  knitr::raw_html(
    paste(
      # headingTitle,
      headingComments,
      paste0(blockquoteFromComment(paperJson[isComment, "Text"],
                                   paperJson[isComment, "Color"]), collapse = "\n"),
      headingQuotes,
      paste0(blockquoteFromHighlight(paperJson[isHighlight, "MarkupText"],
                                     paperJson[isHighlight, "Color"],
                                     paperJson[isHighlight, "PageNumber"]), collapse = "\n")))
}

layoutPapersInHTML <- function(jsonList){
  for (paper in seq_along(jsonList)) {
    # cat("##", jsonList[[paper]]$articleTitle)
    header <- buildMarkdownHeader(jsonList[[paper]])
    cat(header)
    cat(layoutPaperInHTML(jsonList[[paper]]))
  }
}

buildMarkdownHeader <- function(jsonPaper){
  title <- jsonPaper$pubTitle
  if(!is.na(jsonPaper$articleTitle)) title <- jsonPaper$articleTitle
  
  sprintf("## %s (%s) - %s", jsonPaper$author, jsonPaper$year, title)
}



# generateSvgBox <- function(color) {
#   sprintf(
#     '<svg width="10" height="100">
#         <rect x="5" y="5" rx="5" ry="5" width="5" height="95" style="fill:#eb749d;" />
#     </svg>',
#     color) 
# }

# colorize <- function(x, color) {
#   sprintf("<span style='color: %s;'>%s</span>", color, x)
# }





