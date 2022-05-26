library(pointblank)

items_df %>%
  create_informant(tbl_name = "items_df", label = "All known items in Valheim") %>%
  info_tabular(
    description = "The `items` data frame contains all of the in-game items from [**Valheim**](https://www.valheimgame.com/), which is currently in early release. The data is packaged and presented in a tidy format."
  ) %>%
  info_columns(
    columns = "prefab",
    info = "A collection of game objects used in multiple places across the game.") %>%
  info_columns(
    columns = "token",
    info = "Reference token for a given game item. The `$item_` and `$customization_` prefixes have been removed."
  ) %>%
  info_columns(
    columns = "name",
    info = "In-game name of a given item."
  ) %>%
  info_columns(
    columns = "type",
    info = "An item's type, which falls into one of the following categories:
    `Ammo`, `Armor`, `Chest`, `Consumable`, `Customization`, `Material`, `Misc`,
    `Tool`, `Torch`, `Trophie`, `Weapon`, `Utility`"
  ) %>%
  info_columns(
    columns = "description",
    info = "In-game flavor text, where provided."
  ) %>%
  info_section(
    section_name = "API documentation",
    info = "Data was originally collected from [**Jotunn: The Valheim Library**](https://valheim-modding.github.io/Jotunn/index.html)") %>%
  get_informant_report(
    title = "Valheim Items"
  )

recipes_df %>%
  create_informant(tbl_name = "recipes_df", label = "All known recipes in Valheim") %>%
  info_tabular(
    description = "The `recipes` data frame contains all of the in-game recipes from [**Valheim**](https://www.valheimgame.com/), which is currently in early release. The data is packaged and presented in a tidy format."
  ) %>%
  info_columns(
    columns = "recipe_name",
    info = "Internal name of the recipe.") %>%
  info_columns(
    columns = "item_name",
    info = "In-game name of the item created by a recipe.") %>%
  info_columns(
    columns = "amount_created",
    info = "The amount of an item created by a recipe.") %>%
  info_columns(
    columns = "item_index",
    info = "A chronological numbering system for each item within a given recipe.") %>%
  info_columns(
    columns = "amount_required",
    info = "The amount of a given material required to make an item.") %>%
  info_columns(
    columns = "component_required",
    info = "The name of the item needed for a given recipe.") %>%
  info_section(
    section_name = "API documentation",
    info = "Data was originally collected from [**Jotunn: The Valheim Library**](https://valheim-modding.github.io/Jotunn/index.html)") %>%
  get_informant_report(
    title = "Valheim Recipes"
  )
