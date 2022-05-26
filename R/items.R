#' A tidy format of all current items for Valheim as collected from Jotunn: The Valheim Library
#'
#' Token identifiers ($item_, $customization_) have been removed and variable
#' names converted to lowercase.
#'
#' Items fall into one of the following types: Ammo, Bow, Chest, Consumable,
#' Customization, Helmet, Legs, Material, Misc, One Handed Weapon, Shield, Shoulder,
#' Tool, Torch, Trophie, Two Handed Weapon, or Utility.
#'
#' @format a tibble with 434 rows and 5 variables:
#' \describe{
#'   \item{prefab}{A collection of game objects used in multiple places across the game.}
#'   \item{token}{Reference token for a given item.}
#'   \item{name}{In-game name of the item.}
#'   \item{type}{The given type of an item.}
#'   \item{description}{In game flavor text, where provided.}
#' }
#'
#' @source {Jotunn: The Valheim Library, item list} \url{https://valheim-modding.github.io/Jotunn/data/objects/item-list.html}
"items_df"
