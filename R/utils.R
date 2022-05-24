man_get_image_tag <- function(file, dir = "images") {

  repo_url <- "https://raw.githubusercontent.com/kierisi/valheimr/main"

  image_url <- file.path(repo_url, dir, file)

  paste0("<img src=\"", image_url, "\" style=\"width:100\\%;\">")
}
