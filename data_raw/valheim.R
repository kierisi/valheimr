# https://valheim-modding.github.io/Jotunn/data/intro.html
# setup ----
library(tidyverse)
library(janitor)
library(rvest)

# web scraping ----
retrieve_tibble <- function(var_name, url) {
  temp <- rvest::read_html(url)
  var_name <- temp %>%
    html_element("table") %>%
    html_table()
}

items_raw <- retrieve_tibble(
  items, "https://valheim-modding.github.io/Jotunn/data/objects/item-list.html"
  )
recipes_raw <- retrieve_tibble(
  recipes, "https://valheim-modding.github.io/Jotunn/data/objects/recipe-list.html"
  )

# items ----
items_raw$Prefab <- gsub("([[:upper:]])", " \\1", items_raw$Prefab)
items_raw$Type <- gsub("([[:upper:]])", " \\1", items_raw$Type)

items_df <- items_raw %>%
  clean_names() %>%
  mutate(
    prefab = str_trim(prefab),
    token = str_remove_all(token, pattern = coll("$item_")),
    token = str_remove_all(token, pattern = coll("$customization_")),
    type = str_trim(type),
    description = str_remove_all(description, pattern = coll("<color=yellow>"))) %>%
  as.data.frame()

# recipes ----
recipes_raw$Name <- gsub("([[:upper:]])", " \\1", recipes_raw$Name)
recipes_df <- recipes_raw %>%
  clean_names() %>%
  mutate(name = str_trim(str_remove_all(name, pattern = coll(" Recipe_")))) %>%
  separate(resources_required,
    into = c("item_1", "item_2", "item_3", "item_4"),
    sep = "(?<=[A-Za-z])(?=[0-9])") %>%
  pivot_longer(
    cols = c(item_1:item_4),
    names_to = "item_id",
    values_to = "amount_item",
    values_drop_na = TRUE) %>%
  separate(amount_item,
    into = c("amount", "item"),
    sep = "\\s",
    extra = "merge") %>%
  rename(recipe_name = name) %>%
  as.data.frame()

# askjdhakjshd ----
#usethis::use_data(penguins_df, penguins_raw_df, internal = TRUE, overwrite = TRUE)
#write_csv(penguins_df, here::here("inst", "extdata", "penguins.csv"))
