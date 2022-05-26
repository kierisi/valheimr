
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

items <- items_df
glimpse(items) %>% 
  head() 
#> Rows: 434
#> Columns: 5
#> $ prefab      <chr> "Abomination_attack1", "Abomination_attack2", "Abomination…
#> $ token       <chr> "Swing attack", "Slam attack", "Stub to the ground", "oaks…
#> $ name        <chr> "Swing attack", "Slam attack", "Stub to the ground", "Acor…
#> $ type        <chr> "One Handed Weapon", "One Handed Weapon", "One Handed Weap…
#> $ description <chr> "NULL", "NULL", "NULL", "Plant them to grow an oak tree.",…
#>                prefab              token               name              type
#> 1 Abomination_attack1       Swing attack       Swing attack One Handed Weapon
#> 2 Abomination_attack2        Slam attack        Slam attack One Handed Weapon
#> 3 Abomination_attack3 Stub to the ground Stub to the ground One Handed Weapon
#> 4               Acorn           oakseeds             Acorns          Material
#> 5               Amber              amber              Amber          Material
#> 6         Amber Pearl         amberpearl        Amber pearl          Material
#>                       description
#> 1                            NULL
#> 2                            NULL
#> 3                            NULL
#> 4 Plant them to grow an oak tree.
#> 5                        Valuable
#> 6                        Valuable
```

<img src="https://raw.githubusercontent.com/kierisi/valheimr/main/images/pb_items_df.png">

### The recipes dataset

The `recipes` dataset is a data frame with 368 rows and 6 variables,
broken down into the item crafted, amount of the item crafted, and the
amount and type of each component of a recipe.

``` r
library(valheimr)
library(dplyr)

recipes <- recipes_df
glimpse(recipes) %>% 
  head() 
#> Rows: 368
#> Columns: 6
#> $ recipe_name        <chr> "Adze", "Adze", "Armor Bronze Chest", "Armor Bronze…
#> $ item_name          <chr> "NULL", "NULL", "Bronze plate cuirass", "Bronze pla…
#> $ amount_created     <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ item_id            <chr> "item_1", "item_2", "item_1", "item_2", "item_1", "…
#> $ amount_required    <chr> "3", "2", "5", "2", "5", "2", "20", "5", "10", "20"…
#> $ component_required <chr> "Wood", "Stone", "Bronze", "Deer hide", "Bronze", "…
#>          recipe_name             item_name amount_created item_id
#> 1               Adze                  NULL              1  item_1
#> 2               Adze                  NULL              1  item_2
#> 3 Armor Bronze Chest  Bronze plate cuirass              1  item_1
#> 4 Armor Bronze Chest  Bronze plate cuirass              1  item_2
#> 5  Armor Bronze Legs Bronze plate leggings              1  item_1
#> 6  Armor Bronze Legs Bronze plate leggings              1  item_2
#>   amount_required component_required
#> 1               3               Wood
#> 2               2              Stone
#> 3               5             Bronze
#> 4               2          Deer hide
#> 5               5             Bronze
#> 6               2          Deer hide
```
