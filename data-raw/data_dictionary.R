items_df %>%
  pointblank::create_informant(tbl_name = "items_df", label = "All known items in Valheim") %>%
  pointblank::info_tabular(
    description = "This two-column table is nothing all that
    interesting, but, it's fine for examples on **GitHub**
    `README` pages. Column names are `a` and `b`. ((Cool stuff))"
  ) %>%
  pointblank::info_columns(
    columns = "prefab",
    emoji = "((cool stuff))") %>%
  pointblank::info_columns(
    columns = "token",
    `💁` = "(((cooler stuff)))"
  )

