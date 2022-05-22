
<!-- README.md is generated from README.Rmd. Please edit that file -->

# valheimr

<!-- badges: start -->
<!-- badges: end -->

The goal of `{valheimr}` is to provide a tidy format of item and recipe
information from the [Valheim](https://www.valheimgame.com/) video game.
The data was originally collected from [Jotunn: The Valheim
Library](https://valheim-modding.github.io/Jotunn/index.html), and
reflects data scraped on Sunday, 22 May 2022.

## Installation

You can install the development version of `{valheimr}` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kierisi/valheimr")
```

## Provided datasets

`{valheimr}` currently consists of two data frames: `items_df` and
`recipes_df`. After installing `{valheimr}`, you can access each of the
data frames as follows:

``` r
library(valheimr)
#items_df    # uncomment and run to print the items_df data frame to the Console
#recipes_df  # uncomment and run to print the recipes_df data frame to the Console

items <- items_df      # stores the items_df data frame as `items`
recipes <- recipes_df  # stores the recipes_df data frame as `recipes`
```

### The items dataset

The `items` dataset is a data frame with 434 rows and 5 variables. Items
fall into one of the following types:

-   Ammo
-   Armor: Helmet, Legs
-   Chest
-   Consumable
-   Customization
-   Material
-   Misc
-   Tool
-   Torch
-   Trophie
-   Weapon: Bow, One Handed Weapon,Two Handed Weapon, Shield, Shoulder
-   Utility

``` r
library(valheimr)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(gt)

items <- items_df
glimpse(items) %>% 
  head() %>% 
  gt()
#> Rows: 434
#> Columns: 5
#> $ prefab      <chr> "Abomination_attack1", "Abomination_attack2", "Abomination…
#> $ token       <chr> "Swing attack", "Slam attack", "Stub to the ground", "oaks…
#> $ name        <chr> "Swing attack", "Slam attack", "Stub to the ground", "Acor…
#> $ type        <chr> "One Handed Weapon", "One Handed Weapon", "One Handed Weap…
#> $ description <chr> "NULL", "NULL", "NULL", "Plant them to grow an oak tree.",…
```

<div id="gajumhkzpr" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#gajumhkzpr .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#gajumhkzpr .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gajumhkzpr .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#gajumhkzpr .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#gajumhkzpr .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gajumhkzpr .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gajumhkzpr .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#gajumhkzpr .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#gajumhkzpr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#gajumhkzpr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#gajumhkzpr .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#gajumhkzpr .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#gajumhkzpr .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#gajumhkzpr .gt_from_md > :first-child {
  margin-top: 0;
}

#gajumhkzpr .gt_from_md > :last-child {
  margin-bottom: 0;
}

#gajumhkzpr .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#gajumhkzpr .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#gajumhkzpr .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#gajumhkzpr .gt_row_group_first td {
  border-top-width: 2px;
}

#gajumhkzpr .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gajumhkzpr .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#gajumhkzpr .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#gajumhkzpr .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gajumhkzpr .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gajumhkzpr .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#gajumhkzpr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#gajumhkzpr .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gajumhkzpr .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gajumhkzpr .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#gajumhkzpr .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gajumhkzpr .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#gajumhkzpr .gt_left {
  text-align: left;
}

#gajumhkzpr .gt_center {
  text-align: center;
}

#gajumhkzpr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#gajumhkzpr .gt_font_normal {
  font-weight: normal;
}

#gajumhkzpr .gt_font_bold {
  font-weight: bold;
}

#gajumhkzpr .gt_font_italic {
  font-style: italic;
}

#gajumhkzpr .gt_super {
  font-size: 65%;
}

#gajumhkzpr .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#gajumhkzpr .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#gajumhkzpr .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#gajumhkzpr .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#gajumhkzpr .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">prefab</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">token</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">description</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Abomination_attack1</td>
<td class="gt_row gt_left">Swing attack</td>
<td class="gt_row gt_left">Swing attack</td>
<td class="gt_row gt_left">One Handed Weapon</td>
<td class="gt_row gt_left">NULL</td></tr>
    <tr><td class="gt_row gt_left">Abomination_attack2</td>
<td class="gt_row gt_left">Slam attack</td>
<td class="gt_row gt_left">Slam attack</td>
<td class="gt_row gt_left">One Handed Weapon</td>
<td class="gt_row gt_left">NULL</td></tr>
    <tr><td class="gt_row gt_left">Abomination_attack3</td>
<td class="gt_row gt_left">Stub to the ground</td>
<td class="gt_row gt_left">Stub to the ground</td>
<td class="gt_row gt_left">One Handed Weapon</td>
<td class="gt_row gt_left">NULL</td></tr>
    <tr><td class="gt_row gt_left">Acorn</td>
<td class="gt_row gt_left">oakseeds</td>
<td class="gt_row gt_left">Acorns</td>
<td class="gt_row gt_left">Material</td>
<td class="gt_row gt_left">Plant them to grow an oak tree.</td></tr>
    <tr><td class="gt_row gt_left">Amber</td>
<td class="gt_row gt_left">amber</td>
<td class="gt_row gt_left">Amber</td>
<td class="gt_row gt_left">Material</td>
<td class="gt_row gt_left">Valuable</td></tr>
    <tr><td class="gt_row gt_left">Amber Pearl</td>
<td class="gt_row gt_left">amberpearl</td>
<td class="gt_row gt_left">Amber pearl</td>
<td class="gt_row gt_left">Material</td>
<td class="gt_row gt_left">Valuable</td></tr>
  </tbody>
  
  
</table>
</div>

### The recipes dataset

The `recipes` dataset is a data frame with 368 rows and 6 variables,
broken down into the item crafted, amount of the item crafted, and the
amount and type of each component of a recipe.

``` r
library(valheimr)
library(dplyr)
library(gt)

recipes <- recipes_df
glimpse(recipes) %>% 
  head() %>% 
  gt()
#> Rows: 368
#> Columns: 6
#> $ recipe_name        <chr> "Adze", "Adze", "Armor Bronze Chest", "Armor Bronze…
#> $ item_name          <chr> "NULL", "NULL", "Bronze plate cuirass", "Bronze pla…
#> $ amount_created     <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ item_id            <chr> "item_1", "item_2", "item_1", "item_2", "item_1", "…
#> $ amount_required    <chr> "3", "2", "5", "2", "5", "2", "20", "5", "10", "20"…
#> $ component_required <chr> "Wood", "Stone", "Bronze", "Deer hide", "Bronze", "…
```

<div id="sgtkqrqkug" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#sgtkqrqkug .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#sgtkqrqkug .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#sgtkqrqkug .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#sgtkqrqkug .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#sgtkqrqkug .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#sgtkqrqkug .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#sgtkqrqkug .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#sgtkqrqkug .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#sgtkqrqkug .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#sgtkqrqkug .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#sgtkqrqkug .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#sgtkqrqkug .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#sgtkqrqkug .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#sgtkqrqkug .gt_from_md > :first-child {
  margin-top: 0;
}

#sgtkqrqkug .gt_from_md > :last-child {
  margin-bottom: 0;
}

#sgtkqrqkug .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#sgtkqrqkug .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#sgtkqrqkug .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#sgtkqrqkug .gt_row_group_first td {
  border-top-width: 2px;
}

#sgtkqrqkug .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#sgtkqrqkug .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#sgtkqrqkug .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#sgtkqrqkug .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#sgtkqrqkug .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#sgtkqrqkug .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#sgtkqrqkug .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#sgtkqrqkug .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#sgtkqrqkug .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#sgtkqrqkug .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#sgtkqrqkug .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#sgtkqrqkug .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#sgtkqrqkug .gt_left {
  text-align: left;
}

#sgtkqrqkug .gt_center {
  text-align: center;
}

#sgtkqrqkug .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#sgtkqrqkug .gt_font_normal {
  font-weight: normal;
}

#sgtkqrqkug .gt_font_bold {
  font-weight: bold;
}

#sgtkqrqkug .gt_font_italic {
  font-style: italic;
}

#sgtkqrqkug .gt_super {
  font-size: 65%;
}

#sgtkqrqkug .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#sgtkqrqkug .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#sgtkqrqkug .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#sgtkqrqkug .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#sgtkqrqkug .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">recipe_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">item_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">amount_created</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">item_id</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">amount_required</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">component_required</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Adze</td>
<td class="gt_row gt_left">NULL</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_left">item_1</td>
<td class="gt_row gt_left">3</td>
<td class="gt_row gt_left">Wood</td></tr>
    <tr><td class="gt_row gt_left">Adze</td>
<td class="gt_row gt_left">NULL</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_left">item_2</td>
<td class="gt_row gt_left">2</td>
<td class="gt_row gt_left">Stone</td></tr>
    <tr><td class="gt_row gt_left">Armor Bronze Chest</td>
<td class="gt_row gt_left">Bronze plate cuirass</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_left">item_1</td>
<td class="gt_row gt_left">5</td>
<td class="gt_row gt_left">Bronze</td></tr>
    <tr><td class="gt_row gt_left">Armor Bronze Chest</td>
<td class="gt_row gt_left">Bronze plate cuirass</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_left">item_2</td>
<td class="gt_row gt_left">2</td>
<td class="gt_row gt_left">Deer hide</td></tr>
    <tr><td class="gt_row gt_left">Armor Bronze Legs</td>
<td class="gt_row gt_left">Bronze plate leggings</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_left">item_1</td>
<td class="gt_row gt_left">5</td>
<td class="gt_row gt_left">Bronze</td></tr>
    <tr><td class="gt_row gt_left">Armor Bronze Legs</td>
<td class="gt_row gt_left">Bronze plate leggings</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_left">item_2</td>
<td class="gt_row gt_left">2</td>
<td class="gt_row gt_left">Deer hide</td></tr>
  </tbody>
  
  
</table>
</div>
