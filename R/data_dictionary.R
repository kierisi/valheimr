library(pointblank)
library(valheimr)

items_df %>%
  create_informant(tbl_name = "items_df", label = "All known items in Valheim") %>%
  info_tabular(
    description = "This two-column table is nothing all that
    interesting, but, it's fine for examples on **GitHub**
    `README` pages. Column names are `a` and `b`. ((Cool stuff))"
  ) %>%
  info_columns(
    columns = "prefab",
    emoji = "((cool stuff))") %>%
  info_columns(
    columns = "token",
    `💁` = "(((cooler stuff)))"
  )

