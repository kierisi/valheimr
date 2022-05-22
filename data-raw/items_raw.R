items_raw <- rvest::read_html(
  "https://valheim-modding.github.io/Jotunn/data/objects/item-list.html"
) %>%
  rvest::html_element("table") %>%
  rvest::html_table()

usethis::use_data(items_raw, overwrite = TRUE)
