# https://valheim-modding.github.io/Jotunn/data/intro.html
# setup ----
library(tidyverse)
library(janitor)
library(rvest)

# web scraping ----
items_raw <- read_html(
  "https://valheim-modding.github.io/Jotunn/data/objects/item-list.html"
  ) %>%
  html_element("table") %>%
  html_table()

recipes_raw <- read_html(
  "https://valheim-modding.github.io/Jotunn/data/objects/recipe-list.html"
  ) %>%
  html_element("table") %>%
  html_table()

# items ----
items_df <- items_raw %>%
  clean_names() %>%
  mutate(
    prefab = gsub("([[:upper:]])", " \\1", prefab),
    prefab = str_trim(prefab),
    token = str_remove_all(token, pattern = coll("$item_")),
    token = str_remove_all(token, pattern = coll("$customization_")),
    type = gsub("([[:upper:]])", " \\1", type),
    type = str_trim(type),
    description = str_remove_all(description, pattern = coll("<color=yellow>"))) %>%
  as.data.frame()

# recipes ----
recipes_df <- recipes_raw %>%
  clean_names() %>%
  mutate(
    name = gsub("([[:upper:]])", " \\1", name),
    name = str_trim(str_remove_all(name, pattern = coll(" Recipe_")))) %>%
  separate(resources_required,
    into = c("item_1", "item_2", "item_3", "item_4"),
    sep = "(?<=[A-Za-z])(?=[0-9])",
    fill = "right") %>%
  pivot_longer(
    cols = c(item_1:item_4),
    names_to = "item_index",
    values_to = "amount_item",
    values_drop_na = TRUE) %>%
  separate(amount_item,
    into = c("amount_required", "component_required"),
    sep = "\\s",
    extra = "merge") %>%
  rename(
    recipe_name = name,
    amount_created = amount) %>%
  mutate(item_index = as.integer(gsub("item_", "", item_index))) %>%
  as.data.frame()

# write data to file ----
usethis::use_data(items_raw, overwrite = TRUE)
usethis::use_data(recipes_raw, overwrite = TRUE)
usethis::use_data(items_df, overwrite = TRUE)
usethis::use_data(recipes_df, overwrite = TRUE)
