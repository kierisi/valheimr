
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

The `items` dataset is a data frame with 434 rows and 5 variables.

<img src="https://raw.githubusercontent.com/kierisi/valheimr/main/images/pb_items_df.png" style="width:100%;">

### The recipes dataset

The `recipes` dataset is a data frame with 368 rows and 6 variables,
broken down into the item crafted, amount of the item crafted, and the
amount and type of each component of a recipe.

<img src="https://raw.githubusercontent.com/kierisi/valheimr/main/images/pb_recipes_df.png" style="width:100%;">
