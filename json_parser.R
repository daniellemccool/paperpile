# library(jsonlite)
# library(stringr)

readJsonPaperpile <- function(dir = "json"){
  cur <- getwd()
  setwd(dir = dir)
  filenames <- dir(pattern = ".json")
  json      <- lapply(filenames, jsonlite::fromJSON)
  setwd(cur)
  paperTitles <- stringr::str_sub(filenames, start = 15, end = -6)
  names(json) <- paperTitles
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
  paperJson <- namedPaperJson[[1]]
  
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
    cat("##", names(jsonList[paper]))
    cat(layoutPaperInHTML(jsonList[paper]))
  }
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





