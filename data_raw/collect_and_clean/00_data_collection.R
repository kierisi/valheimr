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
locations_raw <- retrieve_tibble(
  locations, "https://valheim-modding.github.io/Jotunn/data/zones/location-list.html"
  )
vegetation_raw <- retrieve_tibble(
  vegetation, "https://valheim-modding.github.io/Jotunn/data/zones/vegetation-list.html"
  )
materials_raw <- retrieve_tibble(
  materials, "https://valheim-modding.github.io/Jotunn/data/prefabs/material-list.html"
  )
pieces_raw <- retrieve_tibble(
  pieces, "https://valheim-modding.github.io/Jotunn/data/pieces/piece-list.html"
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

# vegetation ----
glimpse(vegetation_raw)
vegetation_raw %>%
  janitor::clean_names()

# locations ----
glimpse(locations_raw)
locations_raw %>%
  janitor::clean_names()

# materials ----
glimpse(materials_raw)
materials_raw %>%
  janitor::clean_names()

# pieces ----
glimpse(pieces_raw)
pieces_raw %>%
  janitor::clean_names()
