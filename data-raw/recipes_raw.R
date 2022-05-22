recipes_raw <- rvest::read_html(
  "https://valheim-modding.github.io/Jotunn/data/objects/recipe-list.html"
  ) %>%
  rvest::html_element("table") |>
  rvest::html_table()

usethis::use_data(recipes_raw, overwrite = TRUE)
