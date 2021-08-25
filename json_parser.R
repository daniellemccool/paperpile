library(jsonlite)
library(stringr)

cur <- getwd()
setwd(dir = "json")
filenames <- dir(pattern = ".json")
json <- lapply(filenames, fromJSON)

paperTitles <- str_sub(filenames, start = 15, end = -6)
names(json) <- paperTitles
# lapply(seq_along(json), function(x){layoutPaper(json[x])})

# rmdQuoteNonEmpty <- function(vector) {
#   sprintf("> %s \n", vector[!is.na(vector)])
# }

# colorize <- function(x, color) {
#   sprintf("<span style='color: %s;'>%s</span>", color, x)
# }

quoteFromHighlight <- function(q, color, page){
  sprintf(
    '<blockquote class="highlight"
                 style="border-left-color: %s;"
                 pagenum="[p%s]">
            %s
    </blockquote>', color, page, q)
}


quoteFromComment <- function(q, color){
  sprintf(
    '<blockquote class="comment"
                 style="border-left-color: %s;">
            %s
    </blockquote>', color, q)
}
# sapply(json, layoutPaper, simplify = FALSE)
# paperJson <- json[1]
# sapply(json, names)
# sapply(json, attributes, simplify = FALSE, USE.NAMES = TRUE)
# layoutPaper(json)

# lapply(seq_along(json), function(x){layoutPaper(json[x])})
# namedPaperJson <- json[1]
layoutPaper <- function(namedPaperJson){
  title <- paste0("<h2> ", names(namedPaperJson),  "</h2> \n")
  commentsec <- "<h3> Comments </h3> \n"
  quotesec <- "<h3> Direct quotes </h3> \n"
  
  
  # Shed the filename
  paperJson <- namedPaperJson[[1]]
  
  # Filter for different layout type
  isComment <- paperJson[, "Subtype"] == "Comment"
  isHighlight <- paperJson[, "Subtype"] == "Highlight"
  
  
  
  
  knitr::raw_html(
    paste(title,
    commentsec,
    paste0(quoteFromComment(paperJson[isComment, "Text"],
                     paperJson[isComment, "Color"]), collapse = "\n"),
    quotesec,
    paste0(quoteFromHighlight(paperJson[isHighlight, "MarkupText"],
                       paperJson[isHighlight, "Color"],
                       paperJson[isHighlight, "PageNumber"]), collapse = "\n")))
  
  # cat("### Direct quotes \n")
  # 
  # knitr::raw_html(quoteFromHighlight(paperJson[isHighlight, "MarkupText"],
  #                                    paperJson[isHighlight, "Color"],
  #                                    paperJson[isHighlight, "PageNumber"]))
}



# knitr::raw_html(colorizeBlockquote(json1[2, "MarkupText"], json1[2, "Color"]))

# generateSvgBox <- function(color) {
#   sprintf(
#     '<svg width="10" height="100">
#         <rect x="5" y="5" rx="5" ry="5" width="5" height="95" style="fill:#eb749d;" />
#     </svg>',
#     color) 
# }



# data.frame(color = generateSvgBox(json1[1, "Color"]), text = json1[1, "Text"])

# generateCommentTables <- function(comments, color, page){
#   sprintf(
#     "<style type='text/css'>
#     .tg  {border-collapse:collapse;border-color:black;border-spacing:0;border-style:solid;border-width:1px;}
#   .tg td{border-style:solid;border-width:0px;font-family:Arial, sans-serif;font-size:14px;overflow:hidden;
#     padding:10px 5px;word-break:normal;}
#   .tg th{border-style:solid;border-width:0px;font-family:Arial, sans-serif;font-size:14px;font-weight:normal;
#     overflow:hidden;padding:10px 5px;word-break:normal;}
#   .tg .tg-31ua{background-color:%s;border-color:inherit;text-align:left;vertical-align:top}
#       .tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
#     </style>
#       <table class='tg'>
#         <thead>
#         <tr>
#         <th class='tg-31ua'>%s</th>
#           </tr>
#           </thead>
#           <tbody>
#           <tr>
#           <td class='tg-0pky'>%s</td>
#             </tr>
#             </tbody>
#             </table>",
#     color, comments, page)
# }

# # names(json[3])
# json2[[1]]
# json2 <- json[2]
# cat(generateCommentTables(json1[1, "Text"], json1[1, "Color"], json1[1, "PageNumber"]))
setwd(cur)
